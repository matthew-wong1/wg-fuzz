struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
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

var<private> global0: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(1i, 2147483647i, 64956i, 11421i), vec4<i32>(-32929i, -10326i, 1i, -26672i), vec4<i32>(2147483647i, 42022i, 24623i, i32(-2147483648)), vec4<i32>(-14527i, 42222i, -1i, -14903i), vec4<i32>(-1i, -14190i, i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, 40894i, 7886i, -36779i), vec4<i32>(-8408i, 19977i, 0i, 0i), vec4<i32>(2147483647i, 36695i, 2147483647i, 3697i), vec4<i32>(-10662i, -1i, -1684i, 29644i), vec4<i32>(2147483647i, 64223i, -10583i, 2147483647i), vec4<i32>(-1i, -1i, -13136i, 2147483647i), vec4<i32>(15565i, -15638i, 2147483647i, -364i), vec4<i32>(13400i, -1i, 2147483647i, -22135i), vec4<i32>(0i, -96944i, 30225i, -12829i));

var<private> global1: f32 = 1292f;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> bool {
    let var_0 = !select(!vec4<bool>(true, true, all(vec2<bool>(true, true)), 2147483647i >= arg_0.x), vec4<bool>(true, true, _wgslsmith_f_op_f32(trunc(-451f)) <= _wgslsmith_f_op_f32(1000f + 413f), true), vec4<bool>(!any(vec2<bool>(false, true)), true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), _wgslsmith_f_op_f32(-1253f - -1337f) == _wgslsmith_f_op_f32(round(-420f))));
    global1 = 555f;
    let var_1 = -654f;
    var var_2 = Struct_1(countOneBits(u_input.a.xx), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_1)), 1629f), 2434f, false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1), -1000f, -131f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1)) * _wgslsmith_f_op_f32(-var_1)))));
    let var_3 = countOneBits(abs(~firstTrailingBit(4294967295u) & ~(~var_2.a.x)));
    return var_2.d;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: i32) -> f32 {
    let var_0 = !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(false, false, false, true), true)), vec4<bool>(true, true, true, true), max(31378i & arg_2, -6425i) == u_input.e.x);
    var var_1 = ~select(vec2<i32>(-2147483647i, 1i), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.e.zx, u_input.e.yz), countOneBits(vec2<i32>(1i, -10409i))), select(any(var_0.zyy), func_3(u_input.e, 0u), false)) | vec2<i32>(-17582i ^ ~reverseBits(arg_2), _wgslsmith_mod_i32(-arg_2, arg_2));
    var var_2 = select(vec3<bool>(false, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), u_input.e.zy)) <= -1i, true), var_0.xzy, true);
    global0 = array<vec4<i32>, 14>();
    var_1 = u_input.e.zz;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2255f * -1000f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_1.x)))))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> vec3<i32> {
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(44718u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-446f, -971f, arg_2.c, arg_1)))), ~(-u_input.e.x))) + _wgslsmith_f_op_f32(floor(-283f)))));
    global0 = array<vec4<i32>, 14>();
    return ~countOneBits(~_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -1i, -2147483647i), vec3<i32>(1i, u_input.e.x, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), u_input.e, vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(select(firstTrailingBit(func_1(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(trunc(-770f)), Struct_1(u_input.d.zw, vec2<f32>(-1589f, 1345f), -191f, false, vec4<f32>(1271f, 763f, 825f, 1470f)))), select(_wgslsmith_mult_vec3_i32(u_input.e, vec3<i32>(2147483647i, 17590i, 22383i)), firstTrailingBit(~vec3<i32>(u_input.e.x, 19516i, -2147483647i)), all(vec3<bool>(false, false, true))), all(vec3<bool>(true, true, true)) && all(vec4<bool>(true, true, true, true))), abs(~(~(~vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x)))), -25471i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1163f))), (func_1(true, 769f, Struct_1(u_input.a.xz, vec2<f32>(-957f, -1567f), 962f, false, vec4<f32>(-797f, 661f, 1000f, 464f))).x & (1i ^ _wgslsmith_sub_i32(u_input.e.x, u_input.e.x))) ^ -firstLeadingBit(countOneBits(u_input.e.x)));
    let var_1 = ~(~(~vec2<u32>(0u, 29910u))) & vec2<u32>(~_wgslsmith_sub_u32(countOneBits(u_input.a.x), ~4294967295u), 1u);
    var var_2 = vec3<bool>(true, all(vec2<bool>(true, true)) == true, 868f > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, 1f)));
    global0 = array<vec4<i32>, 14>();
    var var_3 = select(select(var_2.yx, var_2.yx, false), var_2.yz, var_2.yx);
    let var_4 = firstTrailingBit(var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x);
}

