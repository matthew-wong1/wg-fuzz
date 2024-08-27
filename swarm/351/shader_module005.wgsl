struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-1338f, 1628f), vec2<f32>(1736f, -127f), vec2<f32>(398f, 1606f), vec2<f32>(-129f, 706f), vec2<f32>(1498f, 388f), vec2<f32>(123f, -969f), vec2<f32>(847f, 849f), vec2<f32>(-960f, -770f), vec2<f32>(-1517f, -2110f), vec2<f32>(-2236f, 904f), vec2<f32>(1996f, -398f));

var<private> global3: f32 = 667f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec3<f32> {
    global0 = _wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(countOneBits(_wgslsmith_mod_i32(-9011i, u_input.a.x)), ~max(_wgslsmith_add_i32(-1i, 1i), -u_input.a.x)));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-613f, 1034f, 370f) + vec3<f32>(-255f, 127f, -2052f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-550f, -1709f, 407f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-495f, -1355f, 869f) + vec3<f32>(-1867f, 779f, -1351f)), true)), vec3<f32>(_wgslsmith_f_op_f32(select(-893f, 752f, true)), _wgslsmith_div_f32(1000f, 901f), _wgslsmith_f_op_f32(f32(-1f) * -108f)), vec3<bool>(false, any(vec4<bool>(true, false, true, true)), -34672i < u_input.a.x))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec4<f32>) -> Struct_5 {
    global0 = -5373i;
    let var_0 = arg_0.yz;
    let var_1 = ~(~(countOneBits(abs(vec4<i32>(-33455i, u_input.a.x, arg_0.x, u_input.a.x))) & vec4<i32>(~14572i, arg_0.x, arg_0.x, 19417i)));
    var var_2 = false;
    let var_3 = ~(0u | ~global1.x);
    return Struct_5(Struct_4(~var_3, Struct_3(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(1052f * 244f), arg_2), Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_f32(f32(-1f) * -981f), vec4<f32>(arg_2.x, -322f, arg_2.x, -707f)), false)));
}

fn func_1() -> StorageBuffer {
    var var_0 = ~(~(~select(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(global1.x, 11005u, global1.x)), abs(vec3<u32>(47586u, 27334u, 34617u)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))));
    global1 = var_0.xy;
    let var_1 = func_3(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-reverseBits(vec3<i32>(-1i, u_input.a.x, u_input.a.x)), u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a.x, ~u_input.a.x), ~(vec3<i32>(-36195i, -1i, 5009i) << (vec3<u32>(0u, global1.x, global1.x) % vec3<u32>(32u))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_2()))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(220f, 481f, -1541f), vec3<f32>(-1373f, 395f, 773f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2444f, -931f, -1000f))))))), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1179f, _wgslsmith_f_op_f32(f32(-1f) * -108f))))), 393f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(371f, -349f))) + -851f)));
    var_0 = ~(~(~(~vec3<u32>(global1.x, 9930u, var_1.a.a)) << (~abs(vec3<u32>(45467u, global1.x, var_0.x)) % vec3<u32>(32u))));
    global2 = array<vec2<f32>, 11>();
    return StorageBuffer(~firstLeadingBit(vec2<u32>(5240u, var_1.a.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a.b.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(-1305f * -183f);
    let x = u_input.a;
    s_output = func_1();
}

