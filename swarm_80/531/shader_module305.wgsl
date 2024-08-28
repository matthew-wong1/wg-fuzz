struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = 2147483647i;
    let var_1 = 4294967295u;
    let var_2 = Struct_1(arg_0);
    var_0 = ~(_wgslsmith_mod_i32(0i, -12048i) ^ u_input.a.x);
    var_0 = _wgslsmith_add_i32(~u_input.a.x, 1i);
    return Struct_2(var_2, true);
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = func_2(true).a;
    var var_1 = vec3<u32>(4294967295u, 1u, u_input.b << (_wgslsmith_add_u32(~u_input.b, select(u_input.b, 53172u, var_0.a)) % 32u)) >> (~vec3<u32>(min(4294967295u, _wgslsmith_add_u32(u_input.b, u_input.b)), abs(_wgslsmith_clamp_u32(1u, 45012u, u_input.b)), u_input.b) % vec3<u32>(32u));
    let var_2 = var_0.a;
    var var_3 = ~u_input.a.yy;
    var_3 = _wgslsmith_mult_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(~u_input.a.zz, u_input.a.yw) << (~(vec2<u32>(17720u, var_1.x) >> (vec2<u32>(var_1.x, 28596u) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32((u_input.a.yw << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))) | (vec2<i32>(-5200i, u_input.a.x) | vec2<i32>(7142i, u_input.a.x)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a.xx, u_input.a.wy)), u_input.a.ww));
    return 4294967295u & _wgslsmith_mult_u32(~u_input.b, max(~_wgslsmith_clamp_u32(4374u, var_1.x, 3442u), var_1.x));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = select(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 86942u, u_input.b), vec3<u32>(u_input.b, u_input.b, 24649u)), ~(~vec3<u32>(32560u, u_input.b, u_input.b))), _wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 35864u, 28332u), vec3<u32>(1u, u_input.b, u_input.b)), ~(~vec3<u32>(16976u, 16545u, u_input.b)), vec3<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), ~u_input.b, ~50209u)), vec3<u32>(countOneBits(~u_input.b), ~abs(u_input.b), _wgslsmith_mod_u32(~140117u, u_input.b))), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~4716u, _wgslsmith_clamp_u32(0u, u_input.b, 22113u)), 69676u & ~u_input.b, ~u_input.b ^ ~3407u), u_input.b >> (u_input.b % 32u), _wgslsmith_mult_u32(u_input.b, _wgslsmith_clamp_u32(u_input.b | u_input.b, u_input.b << (u_input.b % 32u), ~u_input.b))), false);
    var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(var_0.x, 1u), var_0.x, 16512u), ~vec3<u32>(~var_0.x, u_input.b | u_input.b, ~u_input.b)), abs(~(~vec3<u32>(4294967295u, u_input.b, var_0.x))));
    let var_1 = -671f;
    let var_2 = func_2(!(37989i < (-28292i >> (u_input.b % 32u))));
    var var_3 = arg_0.a.a;
    return func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-396f, -2534f, 721f, var_1))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec2<bool>(u_input.b == ~u_input.b, true), vec2<bool>(any(vec2<bool>(true, true)), !(u_input.b <= func_1(Struct_2(Struct_1(false), true), -27746i))), false);
    let var_1 = select(vec3<u32>(abs(~(~u_input.b)), abs(firstLeadingBit(0u)), 1u), ~vec3<u32>(select(u_input.b, func_3(vec4<f32>(-3633f, 731f, 187f, -815f)), true), u_input.b, max(abs(70829u), 1u)), vec3<bool>(true, true, !(!(!var_0.x))));
    let var_2 = Struct_1(func_2(var_0.x).b);
    let var_3 = func_2(var_2.a);
    var var_4 = select(_wgslsmith_add_vec4_u32(~vec4<u32>(35636u, var_1.x, 100316u, u_input.b) & ~vec4<u32>(u_input.b, 75552u, 1u, 33014u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(60069u, var_1.x, var_1.x, var_1.x), vec4<u32>(4294967295u, 4294967295u, 35787u, 84713u))) | abs(~vec4<u32>(u_input.b, 1u, var_1.x, u_input.b) << (abs(vec4<u32>(var_1.x, u_input.b, 43355u, u_input.b)) % vec4<u32>(32u))), abs(~((vec4<u32>(1u, u_input.b, 0u, 0u) ^ vec4<u32>(80249u, 1u, var_1.x, 1u)) | firstTrailingBit(vec4<u32>(var_1.x, 3090u, var_1.x, var_1.x)))), vec4<bool>(false, var_3.b, var_0.x, var_3.a.a));
    let var_5 = func_2(all(!select(select(vec3<bool>(var_3.b, var_2.a, false), vec3<bool>(true, var_3.b, var_2.a), var_0.x), vec3<bool>(var_0.x, false, var_3.b), !vec3<bool>(false, true, var_2.a)))).a;
    var_4 = firstTrailingBit(vec4<u32>(1u, u_input.b, _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_4.x, u_input.b), ~0u), ~var_1.x, 70499u), func_3(vec4<f32>(_wgslsmith_div_f32(-102f, 167f), 498f, 726f, _wgslsmith_f_op_f32(f32(-1f) * -352f)))));
    let x = u_input.a;
    s_output = StorageBuffer(352f, max(min(select(var_4.yw, var_4.yy, false) ^ vec2<u32>(var_4.x, var_4.x), select(vec2<u32>(1u, u_input.b), ~vec2<u32>(var_4.x, 0u), any(vec4<bool>(var_0.x, var_0.x, var_3.a.a, false)))), vec2<u32>(~(~var_1.x), ~(~u_input.b))), _wgslsmith_dot_vec2_u32(firstLeadingBit(select(abs(vec2<u32>(var_1.x, 31889u)), vec2<u32>(20424u, 82204u), var_3.b)), _wgslsmith_div_vec2_u32(reverseBits(var_1.zx), var_1.yx)));
}

