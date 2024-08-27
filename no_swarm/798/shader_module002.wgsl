struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_4, 19>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global0 = Struct_3(0u, Struct_2(Struct_1(1i >> (_wgslsmith_sub_u32(4294967295u, u_input.b) % 32u))), ~25347u);
    global1 = array<Struct_4, 19>();
    let var_0 = global0.c;
    let var_1 = any(select(!vec2<bool>(false, all(vec2<bool>(false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false)), any(vec2<bool>(true, true))), vec2<bool>(true, true)));
    let var_2 = _wgslsmith_dot_vec4_u32(u_input.e, u_input.e) ^ ~u_input.c.x;
    return ~(~(~(~u_input.c.x)));
}

fn func_4(arg_0: Struct_3) -> u32 {
    let var_0 = ~(~max(_wgslsmith_sub_i32(firstTrailingBit(231i), -101993i), global0.b.a.a | (global0.b.a.a | arg_0.b.a.a)));
    var var_1 = false;
    let var_2 = Struct_1(-1i);
    global0 = arg_0;
    global1 = array<Struct_4, 19>();
    return 64551u;
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    let var_0 = global0.b.a;
    var var_1 = vec2<u32>(func_4(Struct_3(_wgslsmith_mult_u32(select(global0.c, global0.a, true), 0u), global0.b, ~func_3())), u_input.d);
    let var_2 = Struct_2(Struct_1(var_0.a));
    var var_3 = var_2;
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2152f + -1523f))), _wgslsmith_f_op_f32(sign(530f))))));
    return Struct_2(var_3.a);
}

fn func_1() -> vec3<i32> {
    global0 = Struct_3(global0.a, func_2(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.yz, u_input.a.zz), _wgslsmith_sub_vec2_u32(u_input.e.yw, u_input.a.yx)), 19u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.e.x, ~14338u) << (u_input.a.zx % vec2<u32>(32u)), ~(~select(u_input.c.xz, u_input.e.yx, false))));
    var var_0 = select(select(vec2<bool>(select(true, all(vec4<bool>(false, false, true, false)), select(true, false, false)), true), vec2<bool>(all(vec2<bool>(true, true)) && all(vec3<bool>(false, false, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true))), vec2<bool>(any(vec4<bool>(true, true, true, true)), true)), select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec2<bool>(true, any(vec4<bool>(true, true, true, false))), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, false), true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), all(vec2<bool>(false, false))), true)), vec2<bool>(true, true));
    var var_1 = global0.b;
    let var_2 = global1[_wgslsmith_index_u32(max(global0.a, 4978u), 19u)];
    let var_3 = Struct_3(max(_wgslsmith_mod_u32(4294967295u, 4294967295u), 14052u), global0.b, select(38487u, global0.c, true));
    return ~(~(-(vec3<i32>(var_3.b.a.a, -2147483647i, 1i) ^ vec3<i32>(var_3.b.a.a, 48137i, global0.b.a.a)))) << (vec3<u32>(21275u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(45124u, 4294967295u)), vec2<u32>(global0.c, 1916u) | ~u_input.a.xz), 1u) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_4, 19>();
    global1 = array<Struct_4, 19>();
    var var_1 = func_2(global1[_wgslsmith_index_u32(147562u, 19u)]);
    var var_2 = ~(~_wgslsmith_mod_u32(global0.c, abs(4294967295u)));
    var var_3 = select(!vec3<bool>(false, !any(vec2<bool>(true, true)), !any(vec2<bool>(false, true))), !(!vec3<bool>(all(vec3<bool>(false, true, false)), true, false)), !vec3<bool>(true, true, all(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-func_2(global1[_wgslsmith_index_u32(abs(~u_input.a.x), 19u)]).a.a, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.c, ~vec3<u32>(26977u, u_input.d, global0.c)), abs(u_input.e.xxx)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-612f * -479f))))));
}

