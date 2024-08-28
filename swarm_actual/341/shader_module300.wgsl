struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1;

var<private> global2: f32;

var<private> global3: vec3<i32> = vec3<i32>(-42185i, 20224i, -50384i);

var<private> global4: vec3<i32> = vec3<i32>(1i, 0i, -1i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1() -> Struct_1 {
    let var_0 = global0.x ^ abs(global0.x);
    let var_1 = global1.e;
    global3 = _wgslsmith_div_vec3_i32(~vec3<i32>(-24040i, global3.x, 0i), -_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, u_input.a, global1.a.x), -vec3<i32>(0i, 0i, -1i) >> (_wgslsmith_add_vec3_u32(global1.b.zxx, vec3<u32>(global0.x, 13403u, 10005u)) % vec3<u32>(32u))));
    return Struct_1(global4.yz, _wgslsmith_mult_vec4_u32(vec4<u32>(129u, ~1804u, abs(global0.x), firstLeadingBit(max(var_0, global0.x))), abs(~global1.b)), vec2<f32>(-369f, _wgslsmith_f_op_f32(round(776f))), vec4<f32>(1701f, _wgslsmith_f_op_f32(floor(1984f)), global1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1f))), true);
}

fn func_3() -> i32 {
    var var_0 = func_1();
    global3 = _wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(~15058i), u_input.a, _wgslsmith_mult_i32(~(-1265i), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global3.x, 1i, 23777i)), vec3<i32>(-1i, -18553i, 33074i)))), vec3<i32>(global1.a.x, var_0.a.x, reverseBits(-2147483647i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(986f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1124f - -1548f))));
    global1 = func_1();
    var var_2 = Struct_1(abs(global1.a), global1.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(1038f - var_1)), _wgslsmith_f_op_f32(sign(-577f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, global1.d.x), var_0.c, global1.e))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(var_0.c)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1006f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, 660f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(755f - var_0.d.x)), var_1) * var_0.d), (false & (global1.d.x == 1449f)) && all(!select(vec3<bool>(true, global1.e, false), vec3<bool>(true, global1.e, global1.e), false)));
    return -global4.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global3 = vec3<i32>(25448i, global4.x, _wgslsmith_sub_i32(-2950i, -firstTrailingBit(func_3())));
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2790f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(938f))), all(vec3<bool>(arg_0.e, arg_1.e, false)) && false)), _wgslsmith_f_op_f32(exp2(arg_0.d.x))));
    global3 = ~vec3<i32>(-2147483647i, global3.x, 2147483647i);
    let var_1 = Struct_2(select(vec2<bool>(true, global1.e), !vec2<bool>(any(vec4<bool>(false, arg_0.e, arg_1.e, false)), func_1().e), true), func_1(), ~vec2<u32>(_wgslsmith_div_u32(arg_1.b.x, 1u), 1u) << (vec2<u32>(1u, arg_0.b.x) % vec2<u32>(32u)));
    global4 = (-max(~vec3<i32>(-2147483647i, -14814i, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(global3.x, u_input.a, -2147483647i), vec3<i32>(global4.x, arg_0.a.x, arg_1.a.x))) & vec3<i32>(-(-2147483647i ^ var_1.b.a.x), func_1().a.x, _wgslsmith_clamp_i32(min(var_1.b.a.x, -1i), global3.x, _wgslsmith_clamp_i32(-45449i, 60832i, arg_0.a.x)))) << (vec3<u32>(0u, select(min(reverseBits(38477u), 122071u), abs(0u) >> (select(arg_0.b.x, 0u, true) % 32u), (true && arg_1.e) & all(vec2<bool>(global1.e, true))), 1u) % vec3<u32>(32u));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(func_1(), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2128f) - -1000f)));
    global3 = vec3<i32>(0i, global3.x, ~firstLeadingBit(abs(global4.x)) << (~0u % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-var_0.d.zxw);
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~(~(~vec3<i32>(global1.a.x, 19087i, u_input.a))), vec3<i32>(abs(global1.a.x), func_2(func_2(var_0, Struct_1(global3.zz, global1.b, global1.d.zx, global1.d, true), var_1.x), func_1(), _wgslsmith_f_op_f32(trunc(-781f))).a.x, _wgslsmith_div_i32(global3.x, i32(-1i) * -5332i))), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, ~global4.x, _wgslsmith_sub_i32(43076i, firstLeadingBit(global1.a.x))), (reverseBits(vec3<i32>(0i, -1i, 6961i)) ^ min(vec3<i32>(2147483647i, 1i, global1.a.x), vec3<i32>(u_input.a, 14164i, 1i))) << (u_input.b % vec3<u32>(32u))));
    var var_3 = var_0.b.x;
    let var_4 = vec3<i32>(select(2147483647i, ~_wgslsmith_dot_vec2_i32(min(vec2<i32>(global1.a.x, 12220i), global1.a), global1.a), false & ((global1.e || global1.e) && global1.e)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(global1.a.x, global1.a.x), max(max(-6475i, -global4.x), _wgslsmith_sub_i32(-42292i ^ global1.a.x, i32(-1i) * -1i)), 35976i ^ -func_3()), global4.x);
    let x = u_input.a;
    s_output = StorageBuffer(-10082i, global1.c.x);
}

