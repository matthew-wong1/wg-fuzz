struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
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

var<private> global0: vec4<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> f32 {
    var var_0 = Struct_3(abs(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.b.x), countOneBits(vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.c.x)))), Struct_1(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-717f, 781f)), arg_1.zww, u_input.a.zyx), Struct_2(~(0u << (0u % 32u)), Struct_1(vec3<bool>(true, global0.x > 860f, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1632f, 1797f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, arg_1.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -396f, 1000f)), vec3<i32>(-u_input.a.x, -30478i, 1i | arg_0)), Struct_1(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(151f, 1075f) + _wgslsmith_f_op_vec2_f32(-arg_1.zx)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -621f), arg_1.x, _wgslsmith_f_op_f32(-global0.x)), -vec3<i32>(arg_0, arg_0, u_input.a.x)), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)));
    var var_1 = Struct_1(select(select(var_0.c.c.a, var_0.c.c.a, var_0.c.b.a), var_0.b.a, var_0.b.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_1.wz)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(918f, var_0.b.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(284f - arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -446f))))), _wgslsmith_div_vec3_f32(vec3<f32>(-134f, -456f, _wgslsmith_f_op_f32(-arg_1.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-990f, -586f))))), vec3<i32>(81145i, reverseBits(u_input.a.x), _wgslsmith_mult_i32(reverseBits(18651i) & _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), u_input.a.x)));
    var var_2 = var_0.c.c.b.x;
    var var_3 = Struct_2(4294967295u, var_0.c.c, var_0.b, min(u_input.c.x, _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(u_input.b.x, 4294967295u, 1u, var_0.c.a)) << (15649u % 32u)));
    var var_4 = Struct_3(vec4<u32>(var_3.a, ~reverseBits(var_0.c.d), ~(1u << (~var_3.d % 32u)), var_0.c.a), var_0.c.b, Struct_2(~(~(var_3.a | var_0.c.a)), Struct_1(!vec3<bool>(var_1.a.x, true, var_0.c.b.a.x), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.b.x)), _wgslsmith_f_op_f32(2247f * -1435f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, -990f, var_1.c.x))), vec3<i32>(~0i, 11564i, 1i)), var_0.b, select(0u & u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, var_0.c.a), true) ^ var_3.a));
    return -1000f;
}

fn func_2(arg_0: vec3<u32>) -> vec4<f32> {
    global0 = vec4<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(836f)) * _wgslsmith_f_op_f32(trunc(global0.x)))))), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 933f))), _wgslsmith_f_op_f32(-978f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, 769f))), _wgslsmith_f_op_f32(func_3(u_input.a.x, vec4<f32>(-394f, global0.x, global0.x, global0.x))), true)))));
    var var_0 = Struct_2(1u, Struct_1(vec3<bool>(_wgslsmith_f_op_f32(sign(-1321f)) >= _wgslsmith_f_op_f32(max(765f, 1175f)), any(vec2<bool>(true, false)), false), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1499f, global0.x))), vec2<f32>(-1000f, -1319f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(409f + global0.x), _wgslsmith_f_op_f32(-577f - global0.x), global0.x) - global0.zxy), ~_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, -3178i, u_input.a.x)), u_input.a.xyw)), Struct_1(vec3<bool>(true, true, select(true, any(vec2<bool>(false, false)), any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.ww)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(113f, 341f))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(134f, -662f, -204f)), _wgslsmith_mult_vec3_i32(-reverseBits(u_input.a.ywz), u_input.a.yyx)), u_input.c.x);
    let var_1 = var_0.b;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-915f)), var_0.b.b.x, _wgslsmith_f_op_f32(1609f * var_0.c.c.x), 741f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.c.x, global0.x, -184f, 259f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-318f, 1029f, -1119f, var_0.b.b.x)), true))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, 195f)), _wgslsmith_f_op_f32(min(-538f, var_0.b.b.x)), _wgslsmith_f_op_f32(-global0.x), -1087f))));
    var_0 = Struct_2(var_0.d, var_0.c, Struct_1(vec3<bool>(var_1.a.x, var_0.c.a.x, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.b), global0.yw), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f)), var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(floor(var_1.b.x)))), var_0.c.d), 4294967295u);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), var_0.c.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.c.x)) * _wgslsmith_f_op_f32(-var_1.b.x)), global0.x)), -1000f));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2.b.c.x;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-142f, var_0, var_0, var_0)) - _wgslsmith_f_op_vec4_f32(func_2(u_input.b.wxw))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, global0.x, -1000f, 1198f) + vec4<f32>(487f, var_0, -2578f, var_0)), vec4<f32>(global0.x, -135f, global0.x, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.b.x, global0.x, global0.x, var_0)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.c.x, _wgslsmith_f_op_f32(global0.x - 1426f), _wgslsmith_f_op_f32(var_0 - -1000f), 1334f))));
    var var_1 = -arg_1.x;
    var var_2 = u_input.c.x;
    var_2 = arg_2.a;
    return -1622f;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: vec4<bool>) -> vec3<bool> {
    let var_0 = 1187f;
    let var_1 = Struct_1(vec3<bool>(false, false, !(!arg_1)), vec2<f32>(var_0, arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.yyy)), -_wgslsmith_clamp_vec3_i32(-(u_input.a.zyx ^ vec3<i32>(u_input.a.x, 1i, 5017i)), ~(~vec3<i32>(-17481i, -2147483647i, 1i)), -(~u_input.a.wxy)));
    var var_2 = var_1.d.yz;
    let var_3 = _wgslsmith_clamp_i32(min(abs(var_2.x), ~18556i), -2147483647i, _wgslsmith_dot_vec2_i32(min(min(u_input.a.yx, vec2<i32>(var_1.d.x, 7661i)) & u_input.a.zw, -max(var_1.d.zy, vec2<i32>(0i, var_2.x))), vec2<i32>(var_1.d.x, ~select(-1i, var_1.d.x, false))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, -343f, arg_0, var_1.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1000f, -1547f)), select(vec4<bool>(true, false, true, false), arg_3, arg_3)))))));
    return select(select(select(vec3<bool>(arg_1, arg_1, arg_1 || arg_1), select(select(vec3<bool>(var_1.a.x, arg_3.x, false), vec3<bool>(var_1.a.x, var_1.a.x, arg_3.x), true), !arg_3.wxz, !vec3<bool>(false, false, arg_3.x)), var_1.a), vec3<bool>(all(arg_3.yw), all(!arg_3), !all(vec4<bool>(var_1.a.x, arg_3.x, arg_3.x, arg_3.x))), select(all(!arg_3), all(var_1.a), !(84798u >= u_input.c.x))), arg_3.wwy, vec3<bool>(u_input.b.x <= select(~u_input.b.x, u_input.c.x, arg_1), arg_1, all(vec2<bool>(true, var_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c << ((firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, 11030u), min(4294967295u, 107979u), firstTrailingBit(u_input.c.x))) << (u_input.c % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = Struct_3(~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, 16347u, u_input.c.x), vec4<u32>(u_input.b.x, u_input.c.x, var_0.x, 16139u)), _wgslsmith_mod_u32(4294967295u, 51533u), ~u_input.c.x, 1u << (var_0.x % 32u)), u_input.b), Struct_1(func_4(201f, true, _wgslsmith_f_op_f32(func_1(u_input.b.x, u_input.a.zw << (vec2<u32>(var_0.x, 15972u) % vec2<u32>(32u)), Struct_2(7673u, Struct_1(vec3<bool>(false, true, true), global0.yy, vec3<f32>(303f, global0.x, 493f), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-289f, 251f), global0.yzz, u_input.a.zxz), 0u))), vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, true)), global0.wy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, -134f))), -526f, _wgslsmith_f_op_f32(min(881f, -249f))), u_input.a.yxx), Struct_2(21611u, Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), true), vec2<f32>(_wgslsmith_f_op_f32(floor(1428f)), _wgslsmith_f_op_f32(step(483f, -325f))), global0.zzx, ~(vec3<i32>(33756i, -3675i, u_input.a.x) & vec3<i32>(u_input.a.x, 0i, -2147483647i))), Struct_1(func_4(_wgslsmith_f_op_f32(global0.x - global0.x), true, _wgslsmith_f_op_f32(sign(-351f)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true))), vec2<f32>(-407f, -1474f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1469f, global0.x, -763f)), max(-vec3<i32>(-27807i, u_input.a.x, 7397i), min(vec3<i32>(-19790i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), ~u_input.c.x));
    var var_2 = var_1.c;
    var_0 = _wgslsmith_mod_vec3_u32(u_input.c, u_input.b.zwy);
    var_2 = var_1.c;
    let var_3 = select(vec4<bool>(!var_2.c.a.x, var_2.b.a.x, var_2.c.a.x, func_4(var_2.c.c.x, false, _wgslsmith_f_op_f32(-var_2.c.b.x), !vec4<bool>(var_2.b.a.x, true, var_1.b.a.x, false)).x), vec4<bool>(true, !(!var_2.b.a.x), var_1.c.c.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(48028u, 28919u), vec2<u32>(u_input.c.x, u_input.c.x)) != ~(~u_input.c.x)), all(select(select(var_1.c.b.a.yx, var_2.b.a.zz, var_2.b.a.zz), var_1.b.a.zx, select(vec2<bool>(var_2.b.a.x, var_2.b.a.x), var_2.b.a.xx, vec2<bool>(true, true)))) || true);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1882f, var_2.b.b.x, var_1.b.b.x))))));
    var var_4 = vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -68675i), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.c.b.d.x, 15526i), u_input.a.xx), abs(var_1.b.d.xy)), -max(vec2<i32>(1i, var_1.c.b.d.x), var_2.b.d.zy)), 1i) >> (u_input.c.xy % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-12173i);
}

