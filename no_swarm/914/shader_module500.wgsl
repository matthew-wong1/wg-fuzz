struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(true, vec2<u32>(1u, 1u), 50601u, -2033i), vec4<f32>(-105f, -475f, 352f, -283f), -104f, true), Struct_2(Struct_1(false, vec2<u32>(4294967295u, 42226u), 22410u, -36138i), vec4<f32>(-1000f, -135f, 213f, 843f), -678f, false), Struct_2(Struct_1(true, vec2<u32>(1u, 0u), 3671u, i32(-2147483648)), vec4<f32>(-715f, 612f, -632f, 1782f), 1382f, true), Struct_2(Struct_1(false, vec2<u32>(68868u, 1u), 11934u, -32433i), vec4<f32>(178f, -374f, -638f, -242f), 1854f, true), Struct_2(Struct_1(true, vec2<u32>(0u, 15158u), 102158u, 60558i), vec4<f32>(145f, 1381f, -352f, 2228f), 382f, true), Struct_2(Struct_1(true, vec2<u32>(20536u, 25713u), 51894u, -1i), vec4<f32>(-341f, -779f, 1000f, 544f), 1000f, false), Struct_2(Struct_1(true, vec2<u32>(0u, 5713u), 1u, i32(-2147483648)), vec4<f32>(-1621f, -832f, -1214f, 327f), 888f, false), Struct_2(Struct_1(false, vec2<u32>(1u, 0u), 0u, 0i), vec4<f32>(-258f, 325f, 1422f, 295f), -180f, false), Struct_2(Struct_1(false, vec2<u32>(4294967295u, 0u), 1u, 15033i), vec4<f32>(761f, -148f, -1000f, 1798f), 2020f, false), Struct_2(Struct_1(false, vec2<u32>(0u, 0u), 1u, 0i), vec4<f32>(178f, 334f, -129f, -1697f), -1221f, true), Struct_2(Struct_1(false, vec2<u32>(5016u, 8152u), 63966u, 15936i), vec4<f32>(906f, -198f, -2213f, -880f), -587f, false), Struct_2(Struct_1(true, vec2<u32>(1u, 1u), 0u, 0i), vec4<f32>(-374f, -451f, -403f, 1687f), -789f, true), Struct_2(Struct_1(false, vec2<u32>(22763u, 61210u), 4294967295u, -52977i), vec4<f32>(-1366f, 466f, -1279f, -275f), -230f, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(1u, 13u)];
    let var_1 = arg_2.d;
    let var_2 = global0[_wgslsmith_index_u32(52559u, 13u)];
    let var_3 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    let var_4 = vec3<i32>(_wgslsmith_clamp_i32(abs(~var_1 | 1i), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-2147483647i, u_input.a.x, arg_2.d)), ~u_input.a.wxy << (~vec3<u32>(var_2.a.c, 3162u, var_0.a.c) % vec3<u32>(32u))), _wgslsmith_sub_i32(_wgslsmith_add_i32(0i, 17780i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-10146i, var_1, 13370i, 12394i), u_input.a), vec4<i32>(-1i, -2147483647i, -30977i, -11085i)))), var_0.a.d, 65076i);
    return vec4<bool>(!(!arg_2.a), any(vec2<bool>(true, true)), true, arg_2.a);
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 13>();
    return 1057f;
}

fn func_1() -> vec2<i32> {
    global0 = array<Struct_2, 13>();
    let var_0 = any(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -152f, -2071f)))), 0u, Struct_1(any(vec3<bool>(true, true, true)), vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(2904u, 26565u, 69405u))), ~u_input.b.x >> (76550u % 32u), u_input.a.x)));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(1286f, -2322f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1174f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1464f - -234f) + -1000f), -14714i >= abs(u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-375f + -759f)))), vec4<f32>(-2562f, -1716f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1192f, 507f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(887f))) * _wgslsmith_div_f32(-398f, _wgslsmith_f_op_f32(func_3())))));
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(679f, 642f, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(120f, -462f, var_1.x, var_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 1049f, 1000f, var_1.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(926f + _wgslsmith_f_op_f32(floor(245f))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x))))));
    var var_2 = Struct_1(any(select(select(vec2<bool>(var_0, var_0), func_2(var_1.zyy, u_input.b.x, Struct_1(false, vec2<u32>(u_input.b.x, u_input.b.x), 70184u, -1i)).zy, false), select(vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, true), vec2<bool>(true, var_0), true), !var_0), select(vec2<bool>(true, false), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), true), true))), _wgslsmith_mult_vec2_u32(u_input.b.zz, ~firstTrailingBit(vec2<u32>(91903u, u_input.b.x) ^ u_input.b.xy)), _wgslsmith_clamp_u32(u_input.b.x, 19489u, 58520u), 1i);
    return u_input.a.xy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(310f, -2025f)), -1000f, _wgslsmith_f_op_f32(min(-1000f, 837f))) + vec3<f32>(1000f, _wgslsmith_f_op_f32(select(-1301f, 181f, false)), -1101f))), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-1i, u_input.a.x), u_input.a.zx), vec2<i32>(u_input.a.x, ~1i) | select(func_1(), abs(u_input.a.zz), true), _wgslsmith_mult_vec2_i32(abs(func_1()), vec2<i32>(-29249i, -u_input.a.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec3_i32(u_input.a.zyz, vec3<i32>(0i, -32773i, u_input.a.x), u_input.a.xww)), -vec3<i32>(u_input.a.x, 21934i, u_input.a.x) >> (u_input.b % vec3<u32>(32u))), u_input.a.yzy), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(-529f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1417f)), -649f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-717f, -250f, 1385f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(386f, 1000f, -1790f))))) - vec3<f32>(929f, -2491f, 1072f)))));
}

