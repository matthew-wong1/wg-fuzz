struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false));

var<private> global2: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-1914f, -627f), vec2<f32>(168f, 1199f), vec2<f32>(1482f, -659f), vec2<f32>(684f, 2131f), vec2<f32>(282f, -1186f), vec2<f32>(-458f, -1000f), vec2<f32>(1000f, 1233f), vec2<f32>(1586f, 1052f), vec2<f32>(1047f, -816f), vec2<f32>(-494f, 1000f), vec2<f32>(257f, -937f), vec2<f32>(1399f, 1158f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_div_i32(firstLeadingBit(u_input.a.x), _wgslsmith_mod_i32(i32(-1i) * -38364i, u_input.a.x));
    let var_1 = vec3<i32>(_wgslsmith_add_i32(-1i, -36964i), -1i, _wgslsmith_clamp_i32(max(u_input.a.x, -u_input.a.x) & 14371i, _wgslsmith_dot_vec2_i32(countOneBits(countOneBits(vec2<i32>(u_input.a.x, -68017i))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -11500i), u_input.a.zw), _wgslsmith_div_vec2_i32(vec2<i32>(var_0, u_input.a.x), u_input.a.yz))), ~1i));
    global0 = 1u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(380f, 195f, -219f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-625f, -101f, -896f), vec3<f32>(114f, 2082f, -657f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1142f, 338f, 130f) * vec3<f32>(554f, 1250f, -997f))))), ~vec3<u32>(firstTrailingBit(max(0u, u_input.c)), _wgslsmith_mult_u32(4294967295u, max(65864u, u_input.c)), ~u_input.c << ((4294967295u & u_input.b.x) % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-479f)), 258f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1010f), _wgslsmith_f_op_f32(f32(-1f) * -1660f), u_input.b.x < 11247u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-969f)))))), select(!select(select(global1[_wgslsmith_index_u32(18028u, 16u)], vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), global1[_wgslsmith_index_u32(u_input.b.x, 16u)], false), select(global1[_wgslsmith_index_u32(u_input.c, 16u)], vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(u_input.c, 16u)])), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, 1u >= (16111u & u_input.b.x)), !(var_0 > var_1.x) & true));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(select(20043u & var_2.b.x, ~var_2.b.x, select(var_2.d.x, var_2.d.x, true)) & ~var_2.b.x, 12u)]), false, _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(64805u, u_input.b.x))), u_input.c), select(firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.b, var_2.b.xz)), var_2.b.xy, var_2.d.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f) * 304f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x))) + var_2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x * var_2.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) * _wgslsmith_div_f32(var_2.a.x, var_3.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-215f, _wgslsmith_f_op_f32(var_2.a.x + var_3.a.x), true || (false | var_2.d.x)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = vec4<i32>(~abs(u_input.a.x ^ u_input.a.x), reverseBits(countOneBits(abs(30612i))), -36353i, i32(-1i) * -(_wgslsmith_mod_i32(2147483647i, u_input.a.x) & (u_input.a.x | u_input.a.x)));
    global2 = array<vec2<f32>, 12>();
    global0 = ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c, 4294967295u), ~u_input.b.x)), ~12211u, _wgslsmith_div_u32(_wgslsmith_add_u32(~45374u, u_input.b.x), arg_0.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-443f + -784f), arg_1, -280f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1191f, 178f, -772f) - vec3<f32>(-794f, arg_1, -926f)))))), reverseBits(arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3()))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(f32(-1f) * -879f), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(min(-428f, arg_1))))), vec3<bool>(all(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true)), countOneBits(-2147483647i) == min(~u_input.a.x, ~1430i), false));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(-679f)), arg_1, var_1.a.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1046f + arg_1)), arg_1, 2143f), var_0.x > ~_wgslsmith_dot_vec3_i32(var_0.wxz, var_0.yxx))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 132763u), ~var_1.b.x, min(~49050u, var_1.b.x)) << (~(~max(var_1.b, var_1.b)) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), -233f, _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(min(var_1.a.x, arg_1))), select(select(!(!global1[_wgslsmith_index_u32(var_1.b.x, 16u)]), !(!global1[_wgslsmith_index_u32(22761u, 16u)]), false), select(var_1.d, select(global1[_wgslsmith_index_u32(1u, 16u)], !var_1.d, any(vec2<bool>(var_1.d.x, false))), !(var_1.c.x > var_1.a.x)), true));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(var_1.c.wxy, vec3<f32>(arg_1, -179f, var_1.c.x))))))), ~vec3<u32>(~u_input.b.x, 1u, abs(67978u)), vec4<f32>(_wgslsmith_div_f32(1618f, _wgslsmith_div_f32(-556f, _wgslsmith_f_op_f32(-var_1.c.x))), -350f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-645f * _wgslsmith_f_op_f32(f32(-1f) * -1694f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 + var_1.a.x)), var_1.a.x)), !var_1.d);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = arg_0.a.x;
    global0 = reverseBits(1u);
    var var_1 = func_2(vec3<u32>(1u, arg_1.c.x, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(-arg_0.a.x))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-989f - -772f) * _wgslsmith_f_op_f32(-func_2(arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-300f)) - var_1.a.x)).c.x));
    let var_2 = firstTrailingBit(arg_2.b.x);
    return _wgslsmith_sub_u32(~var_2, ~var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-179f, -2299f, 923f, 261f) * vec4<f32>(1172f, -743f, -568f, -313f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2533f, -406f, 486f, -302f) * vec4<f32>(797f, -179f, 227f, -983f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -546f, _wgslsmith_f_op_f32(-var_0.x)))), ~vec3<u32>(1u, func_1(Struct_1(vec3<f32>(-610f, -1062f, var_0.x), vec3<u32>(86800u, 91511u, u_input.b.x), var_0, vec3<bool>(true, false, false)), Struct_2(vec2<f32>(var_0.x, var_0.x), true, u_input.b), Struct_1(var_0.yxy, vec3<u32>(28019u, u_input.b.x, 48108u), var_0, global1[_wgslsmith_index_u32(26373u, 16u)])) ^ 1u, ~13685u & u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0), vec4<f32>(var_0.x, var_0.x, -175f, var_0.x)))), global1[_wgslsmith_index_u32(u_input.c, 16u)]);
    let var_2 = func_2(vec3<u32>(~9480u, ~_wgslsmith_mult_u32(17518u, u_input.b.x), u_input.b.x), _wgslsmith_f_op_f32(-var_0.x));
    var var_3 = var_1;
    var var_4 = var_3.c.x;
    global2 = array<vec2<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a.x, countOneBits(u_input.a.x) & ~23303i) ^ countOneBits(_wgslsmith_clamp_vec2_i32(select(u_input.a.yz, vec2<i32>(u_input.a.x, 12353i), var_3.d.yy), u_input.a.yy, -u_input.a.xx)), u_input.c, abs(4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(556f, var_1.a.x))))) - _wgslsmith_f_op_f32(var_1.c.x - var_2.c.x)), select(u_input.a.x, u_input.a.x, false));
}

