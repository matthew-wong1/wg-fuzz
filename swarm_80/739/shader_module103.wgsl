struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(4294967295u, 16690u, 0u, 4294967295u), vec4<u32>(87033u, 46689u, 0u, 1u), vec4<u32>(53224u, 4294967295u, 23771u, 1u), vec4<u32>(1u, 22918u, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, 31026u, 1u), vec4<u32>(4294967295u, 50388u, 50261u, 0u), vec4<u32>(1u, 1u, 4294967295u, 74100u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(43273u, 1u, 117772u, 0u), vec4<u32>(3943u, 3525u, 0u, 0u), vec4<u32>(0u, 4294967295u, 1u, 2046u), vec4<u32>(6709u, 4294967295u, 76822u, 10872u), vec4<u32>(4294967295u, 38348u, 28149u, 60725u), vec4<u32>(1u, 4294967295u, 1u, 17217u), vec4<u32>(55528u, 1u, 0u, 9794u), vec4<u32>(16324u, 1u, 0u, 28189u), vec4<u32>(32263u, 1u, 0u, 0u), vec4<u32>(1u, 4324u, 0u, 63862u), vec4<u32>(1u, 4294967295u, 117816u, 37435u), vec4<u32>(0u, 49456u, 4294967295u, 4294967295u), vec4<u32>(30525u, 16029u, 1u, 66212u), vec4<u32>(13441u, 81417u, 17584u, 4294967295u), vec4<u32>(24623u, 33900u, 1u, 25521u), vec4<u32>(0u, 48612u, 14042u, 0u), vec4<u32>(47746u, 0u, 0u, 1u), vec4<u32>(1u, 7010u, 4294967295u, 0u), vec4<u32>(0u, 1u, 0u, 12021u), vec4<u32>(68585u, 67025u, 65761u, 4294967295u), vec4<u32>(14908u, 26095u, 81972u, 63869u));

var<private> global1: array<vec4<i32>, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_2 {
    global1 = array<vec4<i32>, 28>();
    global1 = array<vec4<i32>, 28>();
    global1 = array<vec4<i32>, 28>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0, 105f))))) - 1498f);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 113f, arg_0))) - vec4<f32>(_wgslsmith_f_op_f32(-414f * 1096f), -185f, -150f, _wgslsmith_div_f32(1000f, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-696f, -1000f, arg_0, arg_0), vec4<f32>(arg_0, -317f, 461f, -541f), false)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1208f, arg_0) + vec4<f32>(arg_0, 181f, 223f, arg_0))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1632f, arg_0, arg_0) * vec4<f32>(-1302f, -219f, arg_0, -2130f))))), !vec4<bool>(!all(vec3<bool>(true, false, false)), arg_0 > _wgslsmith_f_op_f32(exp2(arg_0)), true, true)));
    return Struct_2(_wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(30177i, -_wgslsmith_clamp_i32(18648i, -1i, -1i))));
}

fn func_1() -> bool {
    let var_0 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1626f, 513f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-125f * 374f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-746f + 179f))), false)), 4294967295u);
    global0 = array<vec4<u32>, 29>();
    return true;
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_3(vec2<bool>(true, true), !vec4<bool>(true, true, (1u | u_input.a.x) == ~u_input.a.x, true));
    var var_1 = select(select(!select(var_0.b, var_0.b, select(var_0.b, vec4<bool>(var_0.b.x, var_0.a.x, var_0.b.x, var_0.b.x), var_0.b.x)), vec4<bool>(true, all(!vec3<bool>(true, var_0.a.x, var_0.b.x)), true, all(vec2<bool>(var_0.a.x, true)) | true), select(var_0.b, vec4<bool>(true, false, select(true, var_0.b.x, true), true), vec4<bool>(!var_0.a.x, true, func_1(), u_input.a.x > 22294u))), select(vec4<bool>(u_input.a.x != u_input.a.x, false, true, true), select(!select(var_0.b, vec4<bool>(var_0.a.x, true, var_0.a.x, false), var_0.b.x), vec4<bool>(true, all(vec3<bool>(true, false, var_0.a.x)), true, !var_0.b.x), false), !var_0.a.x), -911f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -236f)))));
    let var_2 = Struct_3(var_1.zy, var_0.b);
    var var_3 = 1i;
    let var_4 = -775f;
    return reverseBits(~(~global0[_wgslsmith_index_u32(16979u, 29u)]));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_sub_vec4_i32(~_wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], vec4<i32>(countOneBits(-2147483647i), _wgslsmith_mult_i32(1i, -12306i), firstLeadingBit(2777i), i32(-1i) * -53091i)), abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(14028i, 16776i, -1i, 16101i), ~global1[_wgslsmith_index_u32(9271u, 28u)])));
    let var_1 = Struct_1(all(arg_2.b.wz), _wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(select(4294967295u, firstTrailingBit(4294967295u), arg_2.a.x), 28u)], (countOneBits(var_0) & -vec4<i32>(var_0.x, 29932i, var_0.x, 1i)) ^ vec4<i32>(-var_0.x, var_0.x, -36902i, ~2147483647i)));
    global0 = array<vec4<u32>, 29>();
    global0 = array<vec4<u32>, 29>();
    global1 = array<vec4<i32>, 28>();
    return _wgslsmith_mult_u32(firstLeadingBit(~(~1u)), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(1i, 1i), max(-select(53964i, -3286i, true), 1i) << (abs(~53722u) % 32u));
    let var_1 = !func_1();
    global0 = array<vec4<u32>, 29>();
    global0 = array<vec4<u32>, 29>();
    global0 = array<vec4<u32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(u_input.a.x, func_4(select(vec4<bool>(var_1, true, true, var_1), select(vec4<bool>(false, var_1, true, var_1), vec4<bool>(true, var_1, false, false), vec4<bool>(var_1, false, var_1, var_1)), !vec4<bool>(true, var_1, var_1, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1321f, -1000f)))), Struct_3(select(vec2<bool>(true, false), vec2<bool>(var_1, var_1), vec2<bool>(true, true)), vec4<bool>(false, true, var_1, true)), abs(func_3()))), ~vec4<i32>(var_0.x, firstLeadingBit(var_0.x) | 2147483647i, -2147483647i, max(-31622i & var_0.x, ~var_0.x)));
}

