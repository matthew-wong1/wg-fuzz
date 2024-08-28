struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: Struct_1 = Struct_1(2147483647i, vec3<bool>(true, false, false), 128f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(~(~(-8297i)));
    let var_1 = arg_1.b.x;
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = false;
    var var_1 = arg_1;
    var var_2 = var_1.a;
    global1 = func_2(arg_1.a, arg_2);
    global0 = array<Struct_1, 12>();
    return Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mult_i32((0i << (u_input.d.x % 32u)) >> (abs(u_input.d.x) % 32u), select(-1i, _wgslsmith_mod_i32(u_input.b, 1i), global1.b.x)), max(-10639i, firstTrailingBit(~2147483647i)), global1.a), !global1.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(585f + _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(979f + -664f))), _wgslsmith_f_op_f32(f32(-1f) * -1202f), all(vec3<bool>(-25688i == arg_0.a, true, true | arg_0.b.x)))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, ~(~(~u_input.d.x))) << ((_wgslsmith_div_u32(u_input.d.x, u_input.d.x) | ((_wgslsmith_mult_u32(23795u, u_input.d.x) & u_input.d.x) ^ 1u)) % 32u), 12u)];
    var var_0 = vec4<bool>(!(u_input.d.x >= ~(~4294967295u)), func_3(Struct_1(countOneBits(_wgslsmith_mod_i32(arg_0.a, 0i)), !(!vec3<bool>(arg_0.b.x, arg_0.b.x, true)), arg_0.c), Struct_1(-33126i, select(!vec3<bool>(arg_0.b.x, global1.b.x, false), func_3(global0[_wgslsmith_index_u32(u_input.d.x, 12u)], arg_0, Struct_1(u_input.c.x, global1.b, -1403f)).b, vec3<bool>(global1.b.x, global1.b.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + 104f))), Struct_1(1i, !global1.b, _wgslsmith_f_op_f32(-global1.c))).b.x, arg_0.b.x, true);
    let var_1 = _wgslsmith_f_op_f32(arg_0.c - -207f);
    var_0 = vec4<bool>(var_0.x, func_2(~min(1i, func_3(Struct_1(-17204i, vec3<bool>(var_0.x, true, global1.b.x), -828f), Struct_1(22406i, arg_0.b, 884f), arg_0).a), func_3(global0[_wgslsmith_index_u32(u_input.d.x, 12u)], func_2(firstLeadingBit(26604i), Struct_1(arg_0.a, var_0.ywz, 410f)), arg_0)).b.x, global1.b.x, !global1.b.x);
    let var_2 = func_2(1i, Struct_1(global1.a, vec3<bool>(reverseBits(5530u) <= u_input.d.x, var_0.x, all(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(global1.b.x, false, true, true), vec4<bool>(global1.b.x, true, true, global1.b.x)))), 1974f));
    return func_2(-u_input.a.x, global0[_wgslsmith_index_u32(0u, 12u)]);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    var var_0 = false;
    var var_1 = func_4(func_3(func_2(countOneBits(min(arg_0.a, global1.a)), Struct_1(51904i, select(global1.b, global1.b, vec3<bool>(false, arg_1.x, false)), -1503f)), Struct_1(-34978i, arg_1.wwx, _wgslsmith_f_op_f32(-186f + _wgslsmith_f_op_f32(step(arg_0.c, arg_0.c)))), arg_0));
    var var_2 = ~abs(~u_input.d.x);
    var_0 = !(var_1.b.x | any(vec3<bool>(arg_1.x, false, any(arg_1))));
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(~u_input.d.x, _wgslsmith_div_u32(4294967295u, u_input.d.x)), ~(~_wgslsmith_div_u32(u_input.d.x, 20870u)), (~1u | u_input.d.x) << (u_input.d.x % 32u), 1u) << ((reverseBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(20438u, u_input.d.x, 1u, 0u) ^ vec4<u32>(1u, 364u, 28915u, u_input.d.x))) | reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 19962u, 0u, u_input.d.x) & vec4<u32>(1u, 1u, u_input.d.x, u_input.d.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 4356u, 4294967295u, 4294967295u), vec4<u32>(u_input.d.x, 53249u, 0u, 5630u))))) % vec4<u32>(32u));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    let var_1 = _wgslsmith_mod_i32(~73479i, u_input.c.x << (func_1(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.d.x, var_0)), 12u)], vec4<bool>(all(global1.b.yy), global1.b.x, true, u_input.d.x >= var_0)) % 32u));
    var var_2 = Struct_1(func_2(i32(-1i) * -(~(-20622i)), func_3(Struct_1(0i, global1.b, _wgslsmith_f_op_f32(-583f + global1.c)), func_3(global0[_wgslsmith_index_u32(u_input.d.x, 12u)], Struct_1(-1i, global1.b, global1.c), Struct_1(-47614i, vec3<bool>(global1.b.x, false, global1.b.x), global1.c)), Struct_1(_wgslsmith_mod_i32(-1i, global1.a), global1.b, global1.c))).a, global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_3 = global1.b;
    var var_4 = (u_input.d.x ^ func_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(16560u, 1u), 12u)], select(vec4<bool>(false, global1.b.x, true, false), !vec4<bool>(false, true, var_3.x, var_2.b.x), !vec4<bool>(global1.b.x, var_3.x, false, global1.b.x)))) << (abs((1u >> (var_0 % 32u)) ^ 0u) % 32u);
    var var_5 = Struct_1(u_input.c.x, vec3<bool>(!(u_input.a.x >= u_input.a.x), true || func_2(i32(-1i) * -1i, func_3(Struct_1(global1.a, global1.b, 1776f), Struct_1(u_input.c.x, vec3<bool>(true, global1.b.x, var_2.b.x), var_2.c), global0[_wgslsmith_index_u32(44685u, 12u)])).b.x, var_3.x | ((1u >> (var_0 % 32u)) <= 0u)), _wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-157f - global1.c) + _wgslsmith_f_op_f32(254f + global1.c))))));
    var var_6 = Struct_1(_wgslsmith_div_i32(reverseBits(-var_2.a), -2147483647i) >> (_wgslsmith_div_u32(1u, var_0) % 32u), var_5.b, -851f);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -588f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.c) - var_2.c)), ~1u);
}

