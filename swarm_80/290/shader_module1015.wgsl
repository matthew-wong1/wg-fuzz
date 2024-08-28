struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: array<vec2<u32>, 22>;

var<private> global2: u32;

var<private> global3: array<u32, 23> = array<u32, 23>(0u, 59667u, 1u, 1u, 1u, 4294967295u, 2289u, 48824u, 4294967295u, 44590u, 1u, 29093u, 22647u, 29802u, 9835u, 33296u, 15704u, 39289u, 1u, 0u, 1u, 0u, 17614u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1386f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-204f + -929f)))))));
}

fn func_2(arg_0: bool) -> i32 {
    global3 = array<u32, 23>();
    var var_0 = min(_wgslsmith_div_vec3_u32(~vec3<u32>(abs(global0[_wgslsmith_index_u32(4294967295u, 28u)]), max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 23u)], 28u)], 28u)], 73921u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)]), 23u)], 23u)]), ~vec3<u32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u >> (global3[_wgslsmith_index_u32(0u, 23u)] % 32u), 23u)], 28u)], _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(24854u, 23u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(70455u, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 28u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 23u)], 23u)], 28u)], 23u)], 23u)], 23u)]), vec3<u32>(7786u, 23123u, 0u)))), ~_wgslsmith_add_vec3_u32(countOneBits(~vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75850u, 28u)], 28u)], 28u)], 452u)), vec3<u32>(25843u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 23u)], 23u)], 0u, global3[_wgslsmith_index_u32(0u, 23u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 44461u, 12741u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27839u, 28u)], 28u)])), 28u)], ~4294967295u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1302f - -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1683f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1366f)) - _wgslsmith_f_op_f32(func_3()))));
    let var_2 = select(vec4<bool>(arg_0, (firstLeadingBit(4285u) <= var_0.x) != (var_0.x <= 46670u), arg_0, arg_0), vec4<bool>(arg_0, false, (arg_0 || (5997u < global0[_wgslsmith_index_u32(1u, 28u)])) | arg_0, any(select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0), !vec4<bool>(false, arg_0, arg_0, false), select(true, false, arg_0)))), true && (!all(vec2<bool>(arg_0, arg_0)) & !any(vec3<bool>(arg_0, arg_0, false))));
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~max(firstLeadingBit(vec4<i32>(u_input.a, 1i, 2147483647i, u_input.a)), ~vec4<i32>(u_input.a, u_input.a, -54886i, 1i)), vec4<i32>(~_wgslsmith_sub_i32(u_input.a, 1i), u_input.a, countOneBits(i32(-1i) * -16172i), _wgslsmith_dot_vec2_i32(vec2<i32>(-19367i, 21193i), vec2<i32>(1i, 1i)))), -abs(vec4<i32>(_wgslsmith_add_i32(u_input.a, -1i), -23695i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -47191i, u_input.a)), u_input.a)));
    return -(u_input.a ^ -min(u_input.a, var_3));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    global1 = array<vec2<u32>, 22>();
    var var_0 = abs(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(29001i, 2147483647i)), ~(-arg_2.zy))) ^ 2147483647i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) + arg_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2398f, arg_1.a.x, arg_1.a.x, -492f))))))), !arg_1.b, 5092u);
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - arg_3) + _wgslsmith_f_op_f32(step(arg_3, -556f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2163f))), _wgslsmith_div_f32(-1583f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.a.x)), 1f)), -1000f), select(select(select(!vec3<bool>(arg_1.b.x, var_1.b.x, false), arg_1.b, all(vec2<bool>(var_1.b.x, true))), vec3<bool>(false | arg_1.b.x, false | var_1.b.x, false), !(var_1.c > global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.c, 28u)], 23u)])), var_1.b, select(select(vec3<bool>(var_1.b.x, arg_1.b.x, false), select(arg_1.b, arg_1.b, arg_1.b.x), any(vec4<bool>(false, var_1.b.x, arg_1.b.x, arg_1.b.x))), select(arg_1.b, vec3<bool>(true, true, true), !var_1.b), !any(vec4<bool>(false, true, false, var_1.b.x)))), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(var_1.c, 22u)], min(global1[_wgslsmith_index_u32(2177u, 22u)], global1[_wgslsmith_index_u32(~arg_1.c, 22u)])));
    global3 = array<u32, 23>();
    return arg_1;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<i32>(-62727i ^ _wgslsmith_sub_i32(u_input.a, 1i), u_input.a);
    var var_1 = -vec3<i32>(var_0.x >> (1u % 32u), min(-min(u_input.a, u_input.a), abs(-u_input.a)), _wgslsmith_dot_vec3_i32(-select(vec3<i32>(21432i, -1i, 0i), vec3<i32>(22957i, var_0.x, var_0.x), vec3<bool>(false, true, true)), ~vec3<i32>(u_input.a, 0i, u_input.a)));
    var_1 = vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(-(~vec3<i32>(var_0.x, var_1.x, -33416i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, u_input.a, -21546i), vec3<i32>(51961i, 1206i, 0i)));
    var var_2 = 1u;
    var var_3 = func_4(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.x, var_0.x), ~(-1i)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-118f, -207f, 2138f, 157f), vec4<f32>(1086f, 247f, 200f, -218f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-801f, -525f, 508f, 1000f) - vec4<f32>(1463f, -333f, -524f, 1092f)) + vec4<f32>(481f, -416f, -166f, 577f))), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), 0u), (vec4<i32>(var_0.x, u_input.a, func_2(false), ~(-2147483647i)) | (-vec4<i32>(-57165i, -2147483647i, 14880i, var_0.x) >> (vec4<u32>(0u, 0u, global0[_wgslsmith_index_u32(48791u, 28u)], 14700u) % vec4<u32>(32u)))) & ~(~(vec4<i32>(var_0.x, 0i, -29325i, -24053i) << (vec4<u32>(4294967295u, 27341u, 10470u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1211f)))))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(-1473f, _wgslsmith_f_op_f32(var_3.a.x + _wgslsmith_div_f32(-2157f, var_3.a.x)))), -949f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(508f - var_3.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(func_3()))), select(!(!var_3.b), !var_3.b, true), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(0u, 23u)], 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-(vec3<i32>(-1i) * -(vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(u_input.a, -51580i, 31218i))));
    let var_1 = all(vec3<bool>(0u <= _wgslsmith_add_u32(41559u, global0[_wgslsmith_index_u32(24949u, 28u)]), true, select(true, true, true))) && select(!all(vec4<bool>(true, false, true, true)) && !all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), true);
    var var_2 = var_0.zy;
    global0 = array<u32, 28>();
    let var_3 = func_1();
    global0 = array<u32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(firstTrailingBit(var_0.x), _wgslsmith_mod_i32(var_0.x, 6242i ^ (var_0.x << (11367u % 32u)))));
}

