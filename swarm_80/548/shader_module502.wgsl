struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
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

var<private> global0: array<vec4<u32>, 13>;

var<private> global1: Struct_1;

var<private> global2: array<f32, 28>;

var<private> global3: array<f32, 15>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = u_input.b.yyy;
    global0 = array<vec4<u32>, 13>();
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.x, 28u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-482f, 256f, false))))) - arg_1.x);
    var_0 = vec3<u32>(countOneBits(_wgslsmith_div_u32(var_1, min(u_input.b.x, arg_0.x) << (var_0.x % 32u))), var_0.x, firstLeadingBit(~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 1u), vec3<u32>(u_input.b.x, arg_0.x, u_input.b.x)) & select(var_1, 61320u, true))));
    return Struct_1(!(!vec2<bool>(global1.a.x, all(vec2<bool>(true, global1.a.x)))));
}

fn func_3(arg_0: Struct_4) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(arg_0.a, 15u)], -1352f, arg_0.c) * vec3<f32>(529f, arg_0.c, global3[_wgslsmith_index_u32(4294967295u, 15u)])))))));
}

fn func_2(arg_0: u32, arg_1: i32) -> i32 {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_3(Struct_4(u_input.a.x, Struct_3(global1.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 15u)] + global3[_wgslsmith_index_u32(u_input.b.x, 15u)]), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(12021u, 28u)])), false)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.b.x, 0u)), 15u)]), any(vec2<bool>(global1.a.x, false)))), Struct_2(19854u))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global3[_wgslsmith_index_u32(4294967295u, 15u)], 363f, global3[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<f32>(711f, -450f, global2[_wgslsmith_index_u32(arg_0, 28u)], global2[_wgslsmith_index_u32(arg_0, 28u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -711f, global3[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(16162u, 28u)]) * vec4<f32>(global3[_wgslsmith_index_u32(1u, 15u)], 244f, -797f, var_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0, 15u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b.x, 15u)] - global2[_wgslsmith_index_u32(arg_0, 28u)]))))));
    let var_3 = Struct_4(_wgslsmith_mult_u32(29579u, abs(_wgslsmith_mult_u32(~arg_0, _wgslsmith_mult_u32(4294967295u, u_input.a.x)))), Struct_3(global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(_wgslsmith_div_u32(1u, 21389u), Struct_3(false), var_2.x, Struct_2(u_input.a.x)))).x - 733f), Struct_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 40617u, 80434u) & u_input.a.wzz, min(u_input.b.yzw, ~vec3<u32>(4294967295u, 117411u, 4294967295u)))));
    global2 = array<f32, 28>();
    return arg_1 | (u_input.c.x | min(u_input.c.x, countOneBits(i32(-1i) * -1i)));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_4) -> u32 {
    var var_0 = u_input.a.x;
    let var_1 = firstLeadingBit(~u_input.c);
    let var_2 = arg_3;
    var var_3 = var_1;
    var_3 = firstTrailingBit(vec4<i32>(var_1.x, var_3.x, select(~_wgslsmith_dot_vec3_i32(u_input.c.wxz, var_1.www), -60694i, any(!global1.a)), _wgslsmith_div_i32(var_1.x, 0i)));
    return arg_0.x;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_sub_i32(min(-2147483647i, u_input.d), u_input.e);
    global3 = array<f32, 15>();
    let var_1 = func_1(u_input.b.wyw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.c - global2[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(arg_1.a, 15u)], arg_0.c)), -1643f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_div_f32(-1000f, -542f), 175f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(360f, global3[_wgslsmith_index_u32(33833u, 15u)], 369f), vec3<f32>(global3[_wgslsmith_index_u32(11862u, 15u)], arg_0.c, global3[_wgslsmith_index_u32(arg_0.d.a, 15u)]), vec3<bool>(true, true, arg_0.b.a))), vec3<f32>(-1000f, global2[_wgslsmith_index_u32(u_input.a.x, 28u)], global3[_wgslsmith_index_u32(15284u, 15u)])))), -666f);
    let var_2 = u_input.a.xzw;
    let var_3 = Struct_3(25364i <= _wgslsmith_dot_vec4_i32(min(u_input.c, -vec4<i32>(u_input.c.x, 1i, -38897i, -2147483647i)), _wgslsmith_mult_vec4_i32(u_input.c, firstTrailingBit(u_input.c))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 28>();
    global1 = func_1(vec3<u32>(~11108u, u_input.a.x, _wgslsmith_mod_u32(12831u, max(~u_input.a.x, ~79295u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], -1633f, -234f))), vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], global2[_wgslsmith_index_u32(56272u, 28u)], 1090f)))), 703f);
    var var_0 = func_5(Struct_4(func_4(u_input.a.zy, func_2(4294967295u, 0i), Struct_2(~0u), Struct_4(61945u, Struct_3(global1.a.x), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 15u)]), Struct_2(u_input.b.x))), Struct_3(global1.a.x), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -628f)))), Struct_2(1u)), Struct_2(_wgslsmith_dot_vec3_u32(select(u_input.a.wxx, abs(u_input.b.www), 1042u != u_input.b.x), ~_wgslsmith_sub_vec3_u32(vec3<u32>(10577u, u_input.a.x, 4294967295u), u_input.a.wwy))), !func_1(vec3<u32>(_wgslsmith_clamp_u32(0u, 55478u, 4294967295u), 1u, abs(u_input.a.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1217f, global3[_wgslsmith_index_u32(27551u, 15u)], -445f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(529f, global2[_wgslsmith_index_u32(u_input.a.x, 28u)], -950f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-731f - -208f), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], global3[_wgslsmith_index_u32(u_input.b.x, 15u)])), any(vec4<bool>(false, false, true, global1.a.x))))).a.x);
    var var_1 = any(vec4<bool>(!(!global1.a.x), any(vec2<bool>(false, true)), global1.a.x | true, global1.a.x)) && any(func_1(max(countOneBits(u_input.a.wwy), u_input.b.wxw), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(u_input.b.x, 15u)], global3[_wgslsmith_index_u32(u_input.b.x, 15u)]) + vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global2[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)])))), -1248f).a);
    let var_2 = (u_input.a.x < u_input.b.x) && global1.a.x;
    global1 = Struct_1(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

