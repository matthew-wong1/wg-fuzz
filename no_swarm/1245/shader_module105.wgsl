struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-18660i, 3903i);

var<private> global1: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(vec2<bool>(true, false)), Struct_4(vec2<bool>(false, false)), Struct_4(vec2<bool>(false, false)), Struct_4(vec2<bool>(true, false)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(false, false)), Struct_4(vec2<bool>(true, true)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(true, false)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(true, true)), Struct_4(vec2<bool>(true, true)), Struct_4(vec2<bool>(true, false)), Struct_4(vec2<bool>(true, false)));

var<private> global2: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec2<i32> {
    global2 = array<vec4<bool>, 17>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1915f, 838f))))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1279f))));
    let var_1 = vec2<i32>(abs(-(~(global0.x | u_input.b.x))), global0.x);
    var_0 = select(true, !(false && any(vec3<bool>(false, false, false))), false) || (_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-307f, _wgslsmith_f_op_f32(round(arg_0.a))))) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_1.b.x)))));
    var var_2 = vec4<u32>(~_wgslsmith_sub_u32(arg_1.a, select(_wgslsmith_mod_u32(arg_1.a, arg_1.a), ~5654u, true)), ~_wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec2_u32(u_input.c.wy, u_input.c.yw)), abs(4294967295u)), firstTrailingBit(firstTrailingBit(36224u)), ~(~arg_1.a));
    return u_input.b;
}

fn func_2(arg_0: u32) -> vec3<u32> {
    let var_0 = abs(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d, 67025u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0, 35335u), firstTrailingBit(vec3<u32>(u_input.a, u_input.c.x, arg_0))) ^ arg_0));
    let var_1 = vec3<i32>(~(i32(-1i) * -24283i), _wgslsmith_mult_i32(22548i, abs(-1648i)), global0.x);
    global2 = array<vec4<bool>, 17>();
    global0 = _wgslsmith_mod_vec2_i32(-(func_3(Struct_3(468f), Struct_1(0u, vec3<f32>(1005f, -807f, 1257f))) >> (~(~u_input.c.zw) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(firstTrailingBit(~vec2<i32>(16235i, 30377i)), var_1.zx));
    global2 = array<vec4<bool>, 17>();
    return countOneBits(u_input.c.yzx);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<f32>) -> Struct_2 {
    global2 = array<vec4<bool>, 17>();
    var var_0 = func_2(~(~_wgslsmith_mod_u32(24725u, 50801u)));
    var var_1 = Struct_2(u_input.d);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(arg_2.x * arg_0))))));
    var var_3 = Struct_4(select(vec2<bool>(arg_1, true | arg_1), !(!select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), arg_1)), any(!select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(arg_1, true, false, arg_1), arg_1))));
    return Struct_2(~(~_wgslsmith_sub_u32(4294967295u, var_0.x) | _wgslsmith_clamp_u32(1u, 37230u, ~u_input.d)));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> f32 {
    let var_0 = u_input.b.x;
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-22759i, var_0, u_input.b.x), vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, 0i), _wgslsmith_mod_i32(global0.x, 0i), max(-72344i, u_input.b.x))), var_0), ~(-1i << (u_input.a % 32u)), -1i);
    var var_2 = false && (arg_1 < arg_1);
    var var_3 = 2321f;
    let var_4 = Struct_2(15574u);
    return 123f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -879f)), !select(true, all(vec4<bool>(true, false, false, true)), global0.x >= global0.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-300f, -368f)) + vec2<f32>(-733f, -542f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1889f, 1303f) - vec2<f32>(1087f, -225f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-2377f, _wgslsmith_f_op_f32(sign(572f)))))))));
    var var_1 = _wgslsmith_mult_i32(u_input.b.x, -_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, global0.x, -2147483647i, global0.x)), (vec4<i32>(-2147483647i, -16102i, 1i, -1i) | vec4<i32>(global0.x, 1i, u_input.b.x, 0i)) | min(vec4<i32>(global0.x, -57121i, global0.x, global0.x), vec4<i32>(u_input.b.x, 44107i, -23362i, u_input.b.x))));
    global2 = array<vec4<bool>, 17>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -266f);
    let var_3 = u_input.c.wwz;
    let var_4 = !(~(-u_input.b.x) != (~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, u_input.b.x, u_input.b.x), vec3<i32>(global0.x, global0.x, -1i)) << (countOneBits(13287u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-1151f, 236f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1288f, _wgslsmith_f_op_f32(func_4(Struct_2(1u), _wgslsmith_f_op_f32(ceil(1127f)))))), -1000f), select(~min(~var_3.yy, ~var_3.yy), vec2<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(0u, 1u, 86482u)), var_3.x), select(vec2<bool>(true, true), select(!vec2<bool>(true, var_4), !vec2<bool>(true, var_4), !var_4), true)), 1u, _wgslsmith_f_op_f32(min(-646f, _wgslsmith_f_op_f32(f32(-1f) * -1074f))));
}

