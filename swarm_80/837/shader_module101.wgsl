struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1213f, 941f);

var<private> global1: array<vec3<u32>, 1>;

var<private> global2: vec4<i32> = vec4<i32>(0i, -54293i, 5168i, -1i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = min(1u, u_input.a.x >> (_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 10418u, 4294967295u)), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 42843u, 22664u))), 0u) % 32u));
    global0 = vec2<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-1045f, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(666f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(global0.x + -2067f), vec2<f32>(global0.x, global0.x), min(global2.zyy, countOneBits(-(global2.xxw << (vec3<u32>(1u, 4294967295u, var_0) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global0.x)))));
    var var_2 = -firstTrailingBit(-3388i);
    var var_3 = -47132i;
    return !(!(!(!any(vec4<bool>(true, false, true, true)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> vec4<f32> {
    var var_0 = select(false, true, true);
    let var_1 = vec4<bool>(true, all(!vec3<bool>(func_3(), true, any(vec2<bool>(true, true)))), any(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), true);
    global0 = vec2<f32>(792f, -591f);
    global1 = array<vec3<u32>, 1>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(835f, arg_2, -268f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1569f, -333f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_1.b.x, arg_2) * vec3<f32>(arg_1.b.x, -1163f, -186f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 1426f, 1381f) + vec3<f32>(arg_1.b.x, arg_2, arg_1.b.x))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(469f, arg_1.b.x, arg_1.d, global0.x)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, -378f, -1316f, 1834f), vec4<f32>(980f, 679f, -1000f, var_2.x)))))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, 406f, _wgslsmith_f_op_f32(var_2.x + 1684f), -1811f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, arg_1.b.x, -1000f, arg_1.d)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1911f), _wgslsmith_f_op_f32(f32(-1f) * -409f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(215f + arg_2)), global0.x, 535f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1000f, var_2.x, arg_2)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(341f, arg_1.b.x, 1052f, 153f) - vec4<f32>(arg_2, 524f, -1000f, -596f)))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> i32 {
    global2 = min(_wgslsmith_clamp_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(6965i, 2147483647i, arg_1.c.x, arg_1.c.x), vec4<i32>(-2147483647i, global2.x, -2147483647i, global2.x)), vec4<i32>(-2147483647i, 18351i, arg_1.c.x, arg_1.c.x), -1i != arg_1.c.x), -(~vec4<i32>(-2147483647i, arg_1.c.x, 4717i, 0i)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, arg_1.c.x, -1i, 5289i), vec4<i32>(-2147483647i, global2.x, arg_1.c.x, global2.x)), vec4<i32>(0i, global2.x, global2.x, 56515i))), _wgslsmith_div_vec4_i32(vec4<i32>(~global2.x, ~arg_1.c.x, arg_1.c.x, _wgslsmith_dot_vec3_i32(global2.wxz, arg_1.c)), -(vec4<i32>(-46199i, arg_1.c.x, arg_1.c.x, -2147483647i) & vec4<i32>(arg_1.c.x, -1i, -47004i, arg_1.c.x)))) & vec4<i32>(-12971i, reverseBits(~(-2147483647i)), -1i, ~firstLeadingBit(arg_1.c.x & global2.x));
    let var_0 = -_wgslsmith_mult_i32(global2.x << ((reverseBits(arg_0.x) << (_wgslsmith_mod_u32(0u, arg_0.x) % 32u)) % 32u), arg_1.c.x);
    var var_1 = max(u_input.a.yx, abs(reverseBits(vec2<u32>(43699u, u_input.a.x ^ 4294967295u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(func_2(-5879i, arg_1, -528f));
    var var_3 = arg_1;
    return ~(-(min(1i, max(0i, var_3.c.x)) | _wgslsmith_add_i32(1i, var_3.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(true, true, !any(vec4<bool>(false, false, true, true))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, -481f), vec2<f32>(119f, 111f))) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1000f), vec2<f32>(-907f, global0.x)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1893f, 257f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -2156f), vec2<f32>(global0.x, global0.x)))))));
    var var_1 = vec3<i32>(global2.x, _wgslsmith_mult_i32(abs(countOneBits(max(global2.x, 34578i))), _wgslsmith_sub_i32(i32(-1i) * -global2.x, -global2.x & _wgslsmith_clamp_i32(global2.x, -67805i, -48082i))), -23543i);
    global2 = vec4<i32>(min(2147483647i, ~1i), 19740i, var_1.x, func_1(u_input.a.yy, Struct_1(global0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 316f))), select(vec3<i32>(-1i, global2.x, var_1.x), abs(global2.yxz), var_0.x), -666f), -206f));
    global2 = _wgslsmith_add_vec4_i32(vec4<i32>(4767i, global2.x, _wgslsmith_dot_vec2_i32(abs(var_1.yx), var_1.yx), ~49375i), select(vec4<i32>(var_1.x, _wgslsmith_div_i32(-12777i, global2.x), 0i, var_1.x), -min(firstLeadingBit(vec4<i32>(-23555i, global2.x, 1i, -32371i)), abs(vec4<i32>(global2.x, global2.x, var_1.x, global2.x))), vec4<bool>(var_0.x, false, -1577f >= _wgslsmith_f_op_f32(min(756f, global0.x)), !var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.x, -39758i, _wgslsmith_sub_i32(21901i, global2.x), 1i) | _wgslsmith_div_vec4_i32(countOneBits(~vec4<i32>(var_1.x, var_1.x, -6884i, global2.x)), vec4<i32>(4729i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 612i, global2.x), global2.xxw), -14614i, ~var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(max(global0.x, global0.x)), -1997f), global2.wy);
}

