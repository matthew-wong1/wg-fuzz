struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<Struct_4, 22>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> u32 {
    global0 = array<Struct_1, 18>();
    var var_0 = ~0u;
    var var_1 = _wgslsmith_add_vec4_i32(firstTrailingBit(reverseBits(~vec4<i32>(51246i, -1i, 0i, 1i))), ~(-countOneBits(~vec4<i32>(-26177i, 1i, 2584i, -2147483647i))));
    var var_2 = vec3<bool>(true, !((any(vec3<bool>(true, true, true)) && true) & (_wgslsmith_f_op_f32(select(-211f, -614f, false)) <= 1774f)), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), -1i != var_1.x), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(arg_0 <= u_input.a, true, true, true))));
    var var_3 = vec4<u32>(~1u, 6189u, ~(~u_input.a ^ ~arg_0), arg_0) ^ (vec4<u32>(1u, ~55394u, arg_0, u_input.a) ^ ~select(~vec4<u32>(arg_0, arg_0, 9685u, 1u), ~vec4<u32>(arg_0, 1u, 4294967295u, 16241u), !var_2.x));
    return 0u;
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 18u)];
    var var_1 = vec3<bool>(true, false, true);
    let var_2 = arg_3.d.x;
    let var_3 = 104402u;
    let var_4 = Struct_4(_wgslsmith_div_vec3_i32(~firstLeadingBit(~vec3<i32>(-2147483647i, 46565i, -16055i)), vec3<i32>(_wgslsmith_mult_i32(3206i, -arg_0), _wgslsmith_mult_i32(~arg_0, ~26896i), arg_0)), Struct_2(arg_3.e, true, ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.c.x, 0u, u_input.a, 16878u), vec4<u32>(4294967295u, 5182u, var_3, arg_1.x)), arg_2.c, _wgslsmith_clamp_vec4_u32(arg_2.c, arg_2.c, vec4<u32>(36086u, 0u, u_input.a, var_3))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_3.d, var_0.d), vec4<f32>(-1000f, var_2, arg_3.a.x, 615f), select(false, false, false))), vec3<bool>(true, all(vec4<bool>(true, true, var_1.x, false)), var_1.x), vec2<bool>(var_0.c.x, !arg_2.d.c.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(-2577f)), -332f, 1108f, _wgslsmith_f_op_f32(f32(-1f) * -1087f)), arg_3.e)), u_input.a, -24075i);
    return any(var_0.b.yy);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> Struct_2 {
    global0 = array<Struct_1, 18>();
    global1 = array<Struct_4, 22>();
    var var_0 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(350f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1887f + -195f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1899f, -2083f), vec2<f32>(411f, -492f), true)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-550f, 159f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(895f, -155f), vec2<f32>(547f, -261f)))))), _wgslsmith_dot_vec4_i32(vec4<i32>(-18671i, -25343i, _wgslsmith_dot_vec4_i32(vec4<i32>(13328i, 0i, 0i, -55503i), vec4<i32>(1i, 1i, 0i, 62882i)), _wgslsmith_div_i32(39329i, 1i)) >> ((vec4<u32>(arg_1.x, 66714u, u_input.a, arg_1.x) >> (max(arg_1, arg_1) % vec4<u32>(32u))) % vec4<u32>(32u)), select(firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)), abs(vec4<i32>(-23679i, 0i, 0i, 2147483647i)), vec4<bool>(true, true, arg_0, false && arg_0))));
    return Struct_2(!vec4<bool>(!any(vec4<bool>(false, true, arg_0, arg_0)), arg_0, true == (-1i > var_0.b), arg_0), func_4(~(-2147483647i), countOneBits(arg_1.zy), Struct_2(select(vec4<bool>(true, true, false, arg_0), select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(false, false, true, arg_0), arg_0), arg_0), func_3(1u) <= 42310u, _wgslsmith_sub_vec4_u32(arg_1, ~vec4<u32>(arg_1.x, 61452u, 0u, arg_1.x)), Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, 1224f, -573f, var_0.a.x), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))), !vec3<bool>(arg_0, arg_0, arg_0), !vec2<bool>(true, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1477f, var_0.a.x, var_0.a.x)), vec4<bool>(false, false, true, arg_0))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, -851f, var_0.a.x) * vec4<f32>(105f, var_0.a.x, var_0.a.x, 1397f)))), select(vec3<bool>(true, false, true), !vec3<bool>(true, arg_0, false), select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, arg_0, arg_0))), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), !vec2<bool>(arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, -107f, 202f, -137f))))), vec4<bool>(true, arg_0, true & arg_0, arg_0))), _wgslsmith_sub_vec4_u32(arg_1, arg_1), global0[_wgslsmith_index_u32(arg_1.x, 18u)]);
}

fn func_1() -> Struct_4 {
    let var_0 = vec4<i32>(firstLeadingBit(0i), _wgslsmith_dot_vec2_i32(select(vec2<i32>(19610i, -1i), vec2<i32>(1i, 1i), vec2<bool>(true, true)) << ((~vec2<u32>(4294967295u, u_input.a) >> ((vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(104127u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), abs(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 24800i), vec2<i32>(3219i, -1i))))), 1i, 9764i);
    var var_1 = abs(vec3<i32>(-10640i, abs(15884i), 0i));
    var_1 = _wgslsmith_mult_vec3_i32(var_0.yxw ^ ~reverseBits(vec3<i32>(var_1.x, 25546i, 31437i)), vec3<i32>(-2147483647i, 2147483647i, -21723i));
    let var_2 = vec4<bool>(true, false, true, !any(vec4<bool>(true, true, true, true)));
    let var_3 = global1[_wgslsmith_index_u32(~(~countOneBits(45833u)), 22u)];
    return Struct_4(-var_0.wwx, func_2(!(any(var_3.b.a.yyx) && var_2.x), vec4<u32>(var_3.b.c.x, _wgslsmith_dot_vec4_u32(var_3.b.c, var_3.b.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), ~var_3.b.c.wz), ~var_3.c)), u_input.a, firstTrailingBit(var_0.x) ^ var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    let var_1 = ~25010u;
    global0 = array<Struct_1, 18>();
    let var_2 = !(!(all(vec3<bool>(false, true, true)) | true));
    let var_3 = func_1();
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-215f + -385f), var_3.b.d.a.x)), -901f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_3.b.d.a.x)), var_3.b.d.a.x)))));
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec3<u32>(var_1, 29390u, var_1) << (func_2(true, var_3.b.c).c.xyz % vec3<u32>(32u))));
}

