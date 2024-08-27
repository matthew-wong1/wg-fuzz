struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7>;

var<private> global1: array<Struct_2, 4>;

var<private> global2: Struct_2 = Struct_2(vec3<i32>(2147483647i, -1i, 0i), vec3<bool>(false, false, true));

var<private> global3: vec2<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> f32 {
    return 476f;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec4<i32>) -> vec3<bool> {
    global2 = Struct_2(arg_3.wyy, select(!vec3<bool>(any(global2.b.yx), arg_0.c != arg_0.c, any(global2.b.zy)), select(!arg_2.b, select(global2.b, select(vec3<bool>(arg_2.b.x, false, arg_2.b.x), vec3<bool>(true, arg_2.b.x, arg_2.b.x), false), global2.b), global2.b.x), select(vec3<bool>(global3.x != arg_0.c, select(arg_2.b.x, arg_2.b.x, true), true), vec3<bool>(true, true, any(vec4<bool>(global2.b.x, true, false, arg_2.b.x))), true)));
    global1 = array<Struct_2, 4>();
    let var_0 = global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(u_input.d.xx, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 44040u), u_input.e)), (u_input.c ^ 1u) ^ global3.x)), 4u)];
    var var_1 = select(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(var_0.a.x, -arg_0.a), -2147483647i), max(_wgslsmith_add_i32(arg_3.x, var_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, global2.a.x, arg_2.a.x, 2147483647i), vec4<i32>(-2308i, global2.a.x, arg_2.a.x, u_input.a))) << (~firstLeadingBit(arg_0.c) % 32u)), 546i, ~arg_0.c == ~arg_0.c);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) - 703f), arg_1.x));
    return !vec3<bool>(true, !(arg_2.b.x & (arg_2.b.x && var_0.b.x)), true);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_2 {
    global0 = array<vec3<u32>, 7>();
    var var_0 = Struct_2(firstTrailingBit(global2.a), !func_3(Struct_1(_wgslsmith_div_i32(40811i, arg_1.a.x), 1i, ~u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1521f, 377f, 1000f, 445f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(599f, 352f, arg_0.x, 619f)))), arg_1, vec4<i32>(max(arg_1.a.x, 0i), _wgslsmith_div_i32(-6614i, 23762i), -u_input.a, 79366i)));
    global1 = array<Struct_2, 4>();
    var var_1 = Struct_2(arg_1.a | -(select(arg_1.a, vec3<i32>(u_input.a, u_input.a, var_0.a.x), true) << ((vec3<u32>(u_input.c, 4104u, 4294967295u) >> (vec3<u32>(13441u, 27949u, global3.x) % vec3<u32>(32u))) % vec3<u32>(32u))), !(!select(var_0.b, select(global2.b, vec3<bool>(arg_1.b.x, global2.b.x, arg_1.b.x), true), func_3(Struct_1(2147483647i, 1i, 1u), vec4<f32>(-2203f, -181f, arg_0.x, arg_0.x), global1[_wgslsmith_index_u32(1u, 4u)], vec4<i32>(u_input.a, 14941i, 1i, 1i)).x)));
    let var_2 = ~u_input.d | _wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(13107u, _wgslsmith_dot_vec2_u32(u_input.d.xy, u_input.d.xz), _wgslsmith_sub_u32(u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, u_input.c, 1u), u_input.d))));
    return Struct_2(abs(~firstLeadingBit(vec3<i32>(-1i, var_0.a.x, 0i))), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_mod_vec2_u32(~firstLeadingBit(u_input.d.yz), max(_wgslsmith_mult_vec2_u32(firstLeadingBit(~u_input.d.zy), u_input.e), ~vec2<u32>(global3.x, u_input.d.x)));
    let var_0 = Struct_1(2147483647i, ~u_input.a, ~u_input.e.x);
    let var_1 = vec4<bool>(false, true, true, global2.b.x);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-188f * 1193f))) * -553f));
    var var_3 = func_2(var_2, Struct_2(global2.a, select(!global2.b, !global2.b, global2.b.x)));
    global2 = func_2(vec2<f32>(812f, 162f), global1[_wgslsmith_index_u32(~108974u, 4u)]);
    global0 = array<vec3<u32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

