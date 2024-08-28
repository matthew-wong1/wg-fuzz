struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 23>;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<f32>(-220f, -1065f, -476f), vec3<bool>(false, true, false), vec2<bool>(true, true)), Struct_1(vec3<f32>(-1422f, 720f, -248f), vec3<bool>(true, true, true), vec2<bool>(true, false)), Struct_1(vec3<f32>(-103f, 1378f, 2885f), vec3<bool>(true, false, false), vec2<bool>(true, true)), Struct_1(vec3<f32>(-351f, -200f, 2925f), vec3<bool>(false, false, false), vec2<bool>(true, false)), Struct_1(vec3<f32>(270f, 1347f, 197f), vec3<bool>(true, false, true), vec2<bool>(true, true)), Struct_1(vec3<f32>(1000f, -1889f, 686f), vec3<bool>(true, false, false), vec2<bool>(false, true)), Struct_1(vec3<f32>(-1365f, 1536f, 534f), vec3<bool>(true, true, false), vec2<bool>(false, false)), Struct_1(vec3<f32>(659f, 1281f, 287f), vec3<bool>(false, false, true), vec2<bool>(false, false)), Struct_1(vec3<f32>(-776f, 268f, 747f), vec3<bool>(false, true, true), vec2<bool>(false, true)), Struct_1(vec3<f32>(-501f, 639f, 501f), vec3<bool>(true, true, false), vec2<bool>(true, false)), Struct_1(vec3<f32>(1813f, -352f, 1077f), vec3<bool>(false, false, true), vec2<bool>(false, false)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = 2100f;
    global2 = array<Struct_1, 11>();
    let var_1 = any(vec3<bool>(select(u_input.b, ~0u, true) != ~_wgslsmith_add_u32(28378u, 0u), select(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false)), !all(vec2<bool>(true, false)), true), false));
    let var_2 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x >> (39309u % 32u), u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, select(u_input.a.x, u_input.a.x, var_1), u_input.a.x)) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~u_input.b, ~9203u), select(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 4294967295u, u_input.b), vec3<u32>(51993u, arg_0, 1u)), ~vec3<u32>(61173u, arg_0, u_input.b), select(vec3<bool>(false, var_1, var_1), vec3<bool>(false, true, var_1), vec3<bool>(true, true, false)))) ^ _wgslsmith_sub_u32(~24581u, 934u)) % 32u);
    let var_3 = -(~_wgslsmith_add_i32(var_2, _wgslsmith_sub_i32(i32(-1i) * -4988i, -31063i)));
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 0u), 23u)];
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    global2 = array<Struct_1, 11>();
    let var_0 = vec4<bool>(all(select(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(4294967295u, u_input.b)), 23u)], arg_2.c, global0[_wgslsmith_index_u32(~1u, 23u)])), arg_2.c.x & false, all(!arg_2.b) | !(_wgslsmith_f_op_f32(trunc(-1860f)) <= _wgslsmith_f_op_f32(238f + arg_2.a.x)), false);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(arg_2.a, arg_2.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1175f, arg_0, -242f), vec3<f32>(1000f, arg_2.a.x, 1125f), vec3<bool>(arg_2.b.x, arg_2.b.x, var_0.x))), var_0.yxz))))), vec3<bool>(var_0.x, true, arg_2.c.x), select(!(!func_3(arg_1)), select(vec2<bool>(arg_2.b.x, false), select(func_3(arg_1), global0[_wgslsmith_index_u32(~0u, 23u)], func_3(arg_1)), all(select(var_0, vec4<bool>(var_0.x, false, arg_2.c.x, arg_2.b.x), false))), global0[_wgslsmith_index_u32(1u, 23u)]));
    var var_2 = _wgslsmith_f_op_f32(step(-857f, -753f));
    var var_3 = -13421i;
    return true;
}

fn func_1() -> vec3<bool> {
    let var_0 = min(vec2<u32>(u_input.b, ~u_input.b | select(0u, 64195u, false)), firstLeadingBit(~vec2<u32>(0u, u_input.b) & ~vec2<u32>(u_input.b, u_input.b))) << (vec2<u32>(~_wgslsmith_sub_u32(firstTrailingBit(69284u), ~17480u), firstLeadingBit(~1u)) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(376f, 1339f)) - _wgslsmith_f_op_f32(-769f - -1334f)), _wgslsmith_f_op_f32(f32(-1f) * -230f), any(select(global0[_wgslsmith_index_u32(var_0.x, 23u)], global0[_wgslsmith_index_u32(var_0.x, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)])))))) > -2726f;
    var var_2 = select(all(select(select(vec2<bool>(var_1, true), vec2<bool>(false, var_1), false), select(vec2<bool>(var_1, true), vec2<bool>(false, var_1), vec2<bool>(var_1, var_1)), true)), !var_1, false) || (1i < _wgslsmith_add_i32(countOneBits(-u_input.a.x), -6667i));
    var var_3 = 1448f;
    let var_4 = select(vec3<bool>(true, true, func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-270f * 1360f))), u_input.b, global2[_wgslsmith_index_u32(var_0.x, 11u)], countOneBits(vec4<i32>(u_input.a.x, -2147483647i, -29767i, 0i)))), !select(vec3<bool>(true & var_1, select(true, false, var_1), true || var_1), vec3<bool>(true, !var_1, true), !select(vec3<bool>(true, var_1, false), vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, true, var_1))), false);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(select(select(select(vec3<bool>(true, true, true), func_1(), any(global0[_wgslsmith_index_u32(u_input.b, 23u)])), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), func_1(), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, false, any(vec3<bool>(true, true, false)))), true));
    let var_0 = global2[_wgslsmith_index_u32(u_input.b, 11u)];
    let var_1 = vec2<i32>(firstLeadingBit(~(-31958i)), abs(2147483647i));
    let var_2 = -1i;
    global0 = array<vec2<bool>, 23>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(var_0.a)), vec3<bool>(var_0.c.x, false, !(_wgslsmith_f_op_f32(floor(var_0.a.x)) <= _wgslsmith_f_op_f32(f32(-1f) * -1314f))), vec2<bool>(!(!all(vec4<bool>(true, true, true, false))), any(vec3<bool>(!var_0.c.x, var_0.b.x, var_0.c.x))));
    var_3 = Struct_1(var_3.a, var_3.b, !select(!vec2<bool>(false, var_0.b.x), global0[_wgslsmith_index_u32(~1u, 23u)], true));
    global2 = array<Struct_1, 11>();
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.a) * _wgslsmith_f_op_vec3_f32(var_0.a * var_0.a))))), func_1(), !func_1().yx);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xwy, -(~(-var_1.x)), ~(~(~18055u)) ^ (((73608u >> (u_input.b % 32u)) ^ ~54225u) & u_input.b));
}

