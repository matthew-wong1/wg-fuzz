struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<bool>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = ~(max(select(vec4<u32>(4294967295u, 1u, 1u, 44053u), vec4<u32>(19938u, 42095u, 0u, 1u), true) ^ ~vec4<u32>(0u, 56171u, 4294967295u, 1u), vec4<u32>(_wgslsmith_div_u32(1u, 1u), ~18894u, ~0u, ~35459u)) >> (vec4<u32>(abs(4294967295u), ~22209u, ~42745u, select(firstTrailingBit(71894u), 71318u, true)) % vec4<u32>(32u)));
    global0 = countOneBits(-1i);
    var var_1 = reverseBits(u_input.b.wx);
    let var_2 = ~var_0.x;
    global0 = -1i;
    return firstTrailingBit(abs(var_0.x)) << (21214u % 32u);
}

fn func_2() -> Struct_2 {
    global0 = u_input.b.x;
    global0 = ~(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_mod_i32(u_input.b.x, 54840i), _wgslsmith_div_i32(u_input.c.x, 2147483647i)), min(u_input.b.x & u_input.d.x, 0i)) & u_input.a);
    global0 = _wgslsmith_dot_vec4_i32(u_input.b, u_input.b);
    let var_0 = ~(~(~1i));
    global0 = 2147483647i;
    return Struct_2(~func_3(), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1667f, _wgslsmith_f_op_f32(f32(-1f) * -1840f), _wgslsmith_f_op_f32(-365f + -1274f), 114f), vec4<f32>(1f, _wgslsmith_f_op_f32(-1243f + 1304f), 798f, -312f), max(34242u, 23910u) > _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 1698u), vec4<u32>(65168u, 22786u, 4294967295u, 46881u)))))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1456f), _wgslsmith_f_op_f32(select(771f, 277f, false)), -370f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_f_op_f32(trunc(-1843f)), -524f))), !vec3<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), true), -2147483647i);
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.b.x - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.c.a.x), _wgslsmith_f_op_f32(round(2727f))), arg_1.a.c.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1141f + _wgslsmith_f_op_f32(arg_1.a.b.x - arg_1.a.c.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(340f)), arg_1.a.b.x)))), true));
    var_0 = -1297f;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(204f)) + -1399f))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1406f);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(-arg_1.a.c.a.x)))))) - _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.b.xw)));
    return func_2().c;
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = -763f;
    var_0 = 272f;
    let var_1 = func_4(_wgslsmith_dot_vec4_u32(~(select(vec4<u32>(1u, arg_0.a, 9816u, 1u), vec4<u32>(arg_0.a, arg_0.a, 1u, arg_0.a), vec4<bool>(false, arg_0.d.x, arg_0.d.x, arg_0.d.x)) << (abs(vec4<u32>(5388u, 1u, 13373u, arg_0.a)) % vec4<u32>(32u))), abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 76400u, 50019u, arg_0.a), vec4<u32>(53449u, 4294967295u, 7654u, 4294967295u))) | firstTrailingBit(min(vec4<u32>(arg_0.a, 4294967295u, 13674u, arg_0.a), vec4<u32>(0u, 10540u, arg_0.a, arg_0.a)))), Struct_3(func_2()));
    var_0 = var_1.a.x;
    var var_2 = Struct_3(Struct_2(firstLeadingBit(arg_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b - vec4<f32>(220f, 1021f, var_1.a.x, var_1.a.x))), var_1, !vec3<bool>(all(arg_0.d.yz), arg_0.d.x, arg_0.d.x), 678i));
    return _wgslsmith_f_op_f32(-404f * arg_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(324i);
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1234f, 466f, 1379f) * vec3<f32>(-796f, 500f, -968f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1442f, 1124f, 1312f))) - vec3<f32>(_wgslsmith_f_op_f32(step(879f, -597f)), _wgslsmith_f_op_f32(-753f - -1037f), _wgslsmith_f_op_f32(func_1(Struct_2(40409u, vec4<f32>(1068f, -329f, -1000f, -157f), Struct_1(vec3<f32>(1606f, 2634f, -1000f)), vec3<bool>(true, false, true), u_input.a)))))));
    global0 = _wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(_wgslsmith_mult_i32(2147483647i, u_input.a), u_input.b.x)), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(-37240i, u_input.a) ^ vec2<i32>(30739i, u_input.c.x)), firstLeadingBit(u_input.c))));
    global0 = -17788i;
    global0 = u_input.a;
    global0 = select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), abs(u_input.b.yy & ~vec2<i32>(13855i, u_input.c.x))), 23730i, !all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false))));
    let var_1 = u_input.a;
    let var_2 = i32(-1i) * -_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.c ^ u_input.b.yx), u_input.d.zz);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(5450u, 27829u, 0u), vec3<u32>(1u, 1u, 1u)), reverseBits(28842u), any(vec3<bool>(true, true, true)))), var_0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.x, 1086f, var_0.a.x, var_0.a.x)))))));
}

