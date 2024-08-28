struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = arg_2.zyw;
    var var_1 = min(vec4<i32>(_wgslsmith_dot_vec4_i32(arg_0, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -1i), vec4<i32>(u_input.a.x, arg_0.x, -30829i, u_input.a.x), vec4<i32>(37670i, -6205i, -2147483647i, arg_0.x))), max(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, u_input.a.x), vec2<i32>(u_input.a.x, arg_0.x)), 2147483647i), ~_wgslsmith_div_i32(25075i, 29871i), u_input.a.x) >> (arg_3 % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, -11848i, u_input.a.x, arg_0.x)), vec4<i32>(u_input.a.x, 0i, 13367i, u_input.a.x) & vec4<i32>(1i, arg_0.x, u_input.a.x, arg_0.x))) >> (u_input.b % vec4<u32>(32u)));
    var var_2 = arg_1;
    var var_3 = -vec4<i32>(-35257i, ~max(arg_0.x, var_1.x) >> (4294967295u % 32u), arg_0.x, ~(-1i));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-724f, _wgslsmith_f_op_f32(f32(-1f) * -937f)))) * _wgslsmith_f_op_f32(-1f));
    return vec3<bool>(((_wgslsmith_sub_i32(var_1.x, var_3.x) << (16584u % 32u)) != min(-7369i, ~(-12566i))) | false, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_f32(trunc(arg_1)) != arg_2.x)), !any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>) -> u32 {
    global0 = u_input.a.x;
    global0 = 33342i;
    global0 = u_input.a.x;
    let var_0 = Struct_3(u_input.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(684f)), -1777f), 150f)), Struct_2(!func_3(vec4<i32>(-1i, u_input.a.x, 44778i, u_input.a.x), -2452f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-501f, 731f, -651f, -1889f) * vec4<f32>(-1000f, 1235f, -105f, 242f)), vec4<u32>(arg_1.x, 120109u, arg_1.x, 0u)).yy, 52721u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1103f, 221f) * vec2<f32>(-137f, -1377f))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1422f), ~4294967295u, 1u), vec2<f32>(292f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-997f - -1263f))))), Struct_2(!select(func_3(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), -735f, vec4<f32>(461f, -148f, 1333f, -1000f), vec4<u32>(4294967295u, u_input.b.x, u_input.c, u_input.b.x)).xx, arg_0.yz, true), _wgslsmith_mult_u32(0u, 33913u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(593f, -165f) - vec2<f32>(1037f, -1758f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-300f, -2603f)))), Struct_1(-1098f, u_input.b.x, 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1218f, -1331f) - vec2<f32>(1f, 1f))), -(vec3<i32>(-1i) * -(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_1 = 1u;
    return 0u | _wgslsmith_mod_u32(var_1, ~_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, u_input.c, 1501u, u_input.c), vec4<u32>(var_0.c.b, 63366u, 14044u, 104208u))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-499f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(1100f - _wgslsmith_f_op_f32(ceil(480f))))) - 1f);
    let var_1 = Struct_1(-2180f, func_4(vec3<bool>(true, true, all(func_3(vec4<i32>(18459i, u_input.a.x, u_input.a.x, u_input.a.x), 448f, vec4<f32>(1387f, 2212f, 1242f, -1170f), vec4<u32>(u_input.b.x, 51248u, 10244u, u_input.c)))), ~u_input.b.xyz | ~firstLeadingBit(u_input.b.xxw)), u_input.c);
    let var_2 = -((-abs(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)) | abs(select(vec3<i32>(u_input.a.x, u_input.a.x, 7672i), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), false))) ^ ~(~abs(vec3<i32>(10854i, u_input.a.x, -1i))));
    let var_3 = -(~(~(vec4<i32>(var_2.x, var_2.x, -1i, -20428i) << (u_input.b % vec4<u32>(32u))) ^ (vec4<i32>(-1i) * -vec4<i32>(1i, var_2.x, var_2.x, var_2.x))));
    var var_4 = u_input.b.x;
    return Struct_1(_wgslsmith_f_op_f32(-var_1.a), 1u, firstLeadingBit(u_input.b.x));
}

fn func_1() -> Struct_3 {
    let var_0 = -13307i;
    return Struct_3(~u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(991f + -2217f), _wgslsmith_f_op_f32(-403f * -920f)))), Struct_2(vec2<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -697f) < _wgslsmith_f_op_f32(floor(1206f))), u_input.b.x, vec2<f32>(1f, 1f), func_2(), vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1438f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(873f + -1835f))))), Struct_2(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), ~u_input.b.x >> (_wgslsmith_mult_u32(~u_input.c, 4294967295u) % 32u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-320f, 1702f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-150f, 537f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -168f) + _wgslsmith_f_op_f32(-103f + 729f)), _wgslsmith_div_u32(u_input.b.x, u_input.b.x) & firstTrailingBit(37556u), 19525u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-165f, -839f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2867f, 649f), vec2<f32>(669f, -771f), true)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-611f, -1000f) + vec2<f32>(-587f, -586f))))), _wgslsmith_mult_vec3_i32(~max(u_input.a, u_input.a), _wgslsmith_mult_vec3_i32(abs(u_input.a), vec3<i32>(u_input.a.x, 2284i, u_input.a.x))) & -(vec3<i32>(25907i, u_input.a.x, var_0) & ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = u_input.c;
    var var_2 = reverseBits(_wgslsmith_sub_i32(~u_input.a.x, 41016i));
    var_2 = -12598i;
    let var_3 = _wgslsmith_div_f32(var_0.c.e.x, -1281f);
    var_2 = firstTrailingBit(u_input.a.x);
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(2599u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_4.b.x + -867f)))), ~2147483647i);
}

