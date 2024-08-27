struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(24459i, 1i, -1i);

var<private> global1: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(-157f, -584f), vec2<f32>(1666f, 1206f), vec2<f32>(2033f, 801f), vec2<f32>(-819f, 159f), vec2<f32>(-1000f, 1238f), vec2<f32>(-2650f, 918f), vec2<f32>(-527f, -2313f), vec2<f32>(-210f, 141f), vec2<f32>(1009f, 581f));

var<private> global2: Struct_1;

var<private> global3: array<vec3<u32>, 5>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> u32 {
    global0 = u_input.a;
    var var_0 = ~arg_1.x;
    global0 = max(abs(u_input.a), vec3<i32>(_wgslsmith_mult_i32(24061i, ~arg_1.x), ~(~(~arg_1.x)), -2147483647i));
    global3 = array<vec3<u32>, 5>();
    let var_1 = Struct_1(min(_wgslsmith_mod_vec2_i32(min(arg_1, arg_1) << ((u_input.b | vec2<u32>(18192u, 1u)) % vec2<u32>(32u)), global0.zy), arg_0.d.a), _wgslsmith_f_op_f32(select(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d.b, 620f) + -271f)), !arg_0.c.x)));
    return u_input.b.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(global2.b, ~_wgslsmith_mod_vec3_u32(vec3<u32>(func_3(Struct_2(-419f, global3[_wgslsmith_index_u32(u_input.b.x, 5u)], vec4<bool>(true, true, false, true), Struct_1(vec2<i32>(u_input.c.x, 76928i), -617f)), global0.zx), 4294967295u, ~u_input.b.x), select(global3[_wgslsmith_index_u32(~u_input.b.x, 5u)], firstLeadingBit(global3[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec3<bool>(true, false, true))), !vec4<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), all(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), Struct_1(~(vec2<i32>(2147483647i, global0.x) << ((u_input.b ^ u_input.b) % vec2<u32>(32u))), global2.b));
    var var_1 = var_0.d;
    let var_2 = var_0.b;
    var var_3 = var_0.d;
    global0 = countOneBits(-(u_input.a ^ ~select(u_input.a, vec3<i32>(-45606i, 74311i, var_1.a.x), var_0.c.x)));
    return var_0.d;
}

fn func_1(arg_0: u32) -> vec3<u32> {
    global2 = func_2();
    var var_0 = all(vec4<bool>(all(vec3<bool>(true, true, any(vec4<bool>(false, true, true, false)))), true, true, false));
    let var_1 = global1[_wgslsmith_index_u32(~(~(~u_input.b.x)), 9u)];
    let var_2 = func_2();
    return _wgslsmith_mod_vec3_u32(firstLeadingBit(abs(abs(min(vec3<u32>(u_input.b.x, arg_0, u_input.b.x), global3[_wgslsmith_index_u32(50218u, 5u)])))), ~(~_wgslsmith_mod_vec3_u32(global3[_wgslsmith_index_u32(arg_0 | 9996u, 5u)], global3[_wgslsmith_index_u32(~0u, 5u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 9>();
    global1 = array<vec2<f32>, 9>();
    var var_0 = Struct_2(global2.b, abs(func_1(4294967295u)), vec4<bool>(all(vec4<bool>(true, true, true, any(vec3<bool>(true, true, true)))), select(true, select(true, all(vec4<bool>(true, true, false, false)), all(vec2<bool>(false, true))), false && all(vec3<bool>(false, true, true))), !(any(vec2<bool>(false, true)) || true), true), func_2());
    var var_1 = max(reverseBits(global0.zy), global0.yz);
    global2 = Struct_1(~select(var_0.d.a, firstLeadingBit(abs(global2.a)), var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.b - _wgslsmith_f_op_f32(sign(1043f))))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, u_input.b.x), 1u, u_input.b.x), select(vec3<u32>(var_0.b.x, 123552u, var_0.b.x), global3[_wgslsmith_index_u32(49443u, 5u)], var_0.c.yzw) | global3[_wgslsmith_index_u32(~var_0.b.x, 5u)]), select(!vec4<bool>(38165u > u_input.b.x, all(vec3<bool>(var_0.c.x, true, false)), true, all(vec3<bool>(true, var_0.c.x, var_0.c.x))), select(var_0.c, vec4<bool>(var_0.c.x, u_input.b.x >= u_input.b.x, var_0.c.x && var_0.c.x, var_0.c.x), var_0.c.x), (_wgslsmith_mod_i32(var_1.x, global0.x) != var_1.x) || true), func_2());
    global3 = array<vec3<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-647f, var_0.d.b, global2.b));
}

