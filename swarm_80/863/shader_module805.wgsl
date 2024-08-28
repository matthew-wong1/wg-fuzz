struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<f32, 15> = array<f32, 15>(1333f, 206f, -210f, -230f, -908f, -1000f, 226f, 1536f, -563f, -632f, 1013f, -1000f, 764f, -221f, 262f);

var<private> global2: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> vec4<u32> {
    var var_0 = countOneBits(~(_wgslsmith_mult_u32(941u, u_input.c.x) >> (arg_1.b.b.x % 32u)));
    var var_1 = Struct_5(vec2<i32>(-2147483647i << (arg_0 % 32u), _wgslsmith_dot_vec4_i32(-u_input.a, u_input.a)) ^ vec2<i32>(1i, ~(-16833i)), arg_1.b.b.zx, _wgslsmith_sub_u32(max(64054u, 4294967295u), _wgslsmith_add_u32(36934u, _wgslsmith_clamp_u32(arg_0, global3.x, 37030u)) >> (arg_1.b.b.x % 32u)));
    var_1 = Struct_5(vec2<i32>(arg_1.b.c.x, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_add_i32(18515i, ~1i), firstTrailingBit(arg_1.b.a.x))), firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(~1u, 87084u), arg_0)), min(_wgslsmith_clamp_u32(u_input.c.x, firstTrailingBit(var_1.b.x), 1u), arg_1.b.b.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-1589f)), -1895f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-249f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3.x, 15u)] + arg_1.a.x))) + _wgslsmith_f_op_vec3_f32(-arg_1.a.yzx)), -586f, -1000f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, _wgslsmith_div_f32(737f, 190f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))));
    let var_3 = _wgslsmith_add_u32(var_1.b.x, 100804u);
    return select(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0, arg_1.b.b.x), u_input.c), vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, global3.x), abs(0u), 1u, arg_1.b.b.x) | u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, ~u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 24606u, arg_0, 4294967295u)), u_input.c.x), abs(u_input.c), u_input.c) >> (reverseBits(vec4<u32>(var_3, _wgslsmith_mult_u32(global3.x, u_input.c.x), arg_0, u_input.c.x)) % vec4<u32>(32u)), arg_1.b.d.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>) -> vec2<f32> {
    global1 = array<f32, 15>();
    let var_0 = ~func_3(11151u, Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-574f, -221f, global1[_wgslsmith_index_u32(80862u, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)]) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-362f, 784f, global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), vec4<f32>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], -1073f, global1[_wgslsmith_index_u32(4294967295u, 15u)])))), Struct_3(firstLeadingBit(u_input.a.zw), u_input.c.wyw, -vec2<i32>(u_input.a.x, -10065i), arg_0.yy)));
    var var_1 = ~var_0.x;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(var_0.x, 15u)], -447f)))))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(~u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(962f, 620f))))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 15u)] * global1[_wgslsmith_index_u32(37645u, 15u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 15u)] - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1263f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 15u)] + global1[_wgslsmith_index_u32(var_0.x, 15u)]))))));
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(!vec3<bool>(all(global2[_wgslsmith_index_u32(global3.x, 31u)]), any(vec3<bool>(true, true, true)), true), !global2[_wgslsmith_index_u32(~(99803u | global3.x), 31u)]))));
    var var_1 = Struct_3(~_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(2147483647i, global0.x), -4318i), global0.xw), ~firstLeadingBit(~_wgslsmith_mod_vec3_u32(u_input.c.wyy, u_input.c.zyy)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(1i, global0.x), u_input.a.yw), vec2<i32>(-30672i & global0.x, global0.x) | -vec2<i32>(u_input.a.x, -10898i)), !global2[_wgslsmith_index_u32(global3.x, 31u)]);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-876f, -1087f, 427f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-692f, -982f, var_0.x)))) - vec3<f32>(var_0.x, _wgslsmith_f_op_f32(abs(1774f)), var_0.x)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -857f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.x, 15u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-685f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32((53667u & var_1.b.x) << (_wgslsmith_clamp_u32(0u, global3.x, 3633u) % 32u), 15u)], 1000f) + 1000f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-677f)), global1[_wgslsmith_index_u32(abs(0u), 15u)]), -122f, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 15u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 15u)] * 1388f), -1761f, -1458f)), !(!var_1.d.x))));
    var var_3 = firstTrailingBit(select(~_wgslsmith_clamp_u32(var_1.b.x, 59992u, 22309u), ~1u, select(true, false, !var_1.d.x))) <= ~(~_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_div_u32(23820u, var_1.b.x)));
    let var_4 = global0.zzw;
    return vec2<bool>(true, var_2.c == _wgslsmith_f_op_vec2_f32(func_2(select(select(vec3<bool>(var_1.d.x, true, true), vec3<bool>(false, false, var_1.d.x), vec3<bool>(true, true, false)), !vec3<bool>(true, false, var_1.d.x), vec3<bool>(var_1.d.x, var_1.d.x, false)), !global2[_wgslsmith_index_u32(var_1.b.x, 31u)])).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(), global2[_wgslsmith_index_u32(global3.x, 31u)], !((true && (1u < global3.x)) && !(global1[_wgslsmith_index_u32(56432u, 15u)] >= global1[_wgslsmith_index_u32(1u, 15u)])));
    let var_1 = Struct_3(u_input.a.xx, min(u_input.c.yzz ^ u_input.c.wzx, _wgslsmith_sub_vec3_u32(select(vec3<u32>(35913u, 4294967295u, u_input.c.x), ~vec3<u32>(33366u, 44649u, 39443u), any(vec3<bool>(false, false, var_0.x))), vec3<u32>(1u, 30406u, u_input.b))), firstLeadingBit(_wgslsmith_sub_vec2_i32(~(~global0.xx), vec2<i32>(countOneBits(u_input.a.x), global0.x))), vec2<bool>(any(!(!global2[_wgslsmith_index_u32(31780u, 31u)])), var_0.x));
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -2256f);
    let var_4 = ~(vec3<i32>(global0.x, var_1.c.x, var_1.c.x) | select(-global0.zzz, ~u_input.a.xzx, select(vec3<bool>(true, var_2.d.x, false), vec3<bool>(var_1.d.x, var_0.x, false), !vec3<bool>(true, false, var_1.d.x))));
    let var_5 = Struct_3(u_input.a.ww, var_2.b << (vec3<u32>(18620u, _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, global3.x), min(65343u, u_input.b)), var_1.b.x) % vec3<u32>(32u)), ~vec2<i32>(~_wgslsmith_mult_i32(1i, var_2.a.x), 24403i), func_1());
    global1 = array<f32, 15>();
    let var_6 = any(!(!select(vec4<bool>(var_0.x, false, true, false), select(vec4<bool>(var_0.x, var_1.d.x, var_1.d.x, var_1.d.x), vec4<bool>(var_5.d.x, true, false, true), var_2.d.x), any(vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, firstTrailingBit(_wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, -32497i, var_2.a.x), var_4, ~_wgslsmith_mult_vec3_i32(vec3<i32>(var_5.a.x, -28237i, 0i), global0.ywx))));
}

