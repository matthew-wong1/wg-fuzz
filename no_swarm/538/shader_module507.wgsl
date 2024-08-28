struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(0u, 7787u, 59857u, 0u, 36306u, 4911u, 16019u, 25768u, 98604u, 0u, 1u, 89920u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3) -> vec4<i32> {
    var var_0 = firstTrailingBit(vec3<u32>(reverseBits(6959u), ~_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)], 25403u), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c << (u_input.a.x % 32u), _wgslsmith_div_u32(42218u, 23146u)), _wgslsmith_clamp_u32(reverseBits(u_input.b), ~arg_0.c, u_input.a.x))));
    let var_1 = _wgslsmith_div_u32(max(4294967295u, ~u_input.c >> ((arg_0.c << (~var_0.x % 32u)) % 32u)), 1u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.a + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.c, arg_0.a.c)), arg_0.a.a)))));
    var var_3 = !(!(!(!(!arg_1.b.a.x))));
    var var_4 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_1 >> (4294967295u % 32u), 12u)] & 16489u, 50265u), u_input.a.x), 37315u, global0[_wgslsmith_index_u32(reverseBits(1u), 12u)]);
    return ~vec4<i32>(-abs(1i), -1i, _wgslsmith_sub_i32(-arg_1.d.x, -arg_1.a.b | 1i), -2147483647i);
}

fn func_2() -> f32 {
    global0 = array<u32, 12>();
    var var_0 = ~max(vec4<i32>(-63175i, u_input.d.x, -771i, 55178i) ^ vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(abs(u_input.d.x), _wgslsmith_sub_i32(-30467i, u_input.d.x), -45408i, u_input.d.x << (95190u % 32u))) & _wgslsmith_mult_vec4_i32(~(-vec4<i32>(1i, 21808i, u_input.d.x, -2147483647i) & func_3(Struct_5(Struct_2(vec2<f32>(160f, -1091f), 49403u, -1624f), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 1u), 75922u, vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 31362i)), Struct_3(Struct_1(vec4<bool>(false, true, false, true), 2147483647i, vec2<bool>(false, true), global0[_wgslsmith_index_u32(0u, 12u)], 1u), Struct_1(vec4<bool>(false, true, false, false), u_input.d.x, vec2<bool>(false, true), 4294967295u, 0u), vec4<i32>(14779i, 1401i, u_input.d.x, 1i), vec2<i32>(-1i, 1i), true))), vec4<i32>(~func_3(Struct_5(Struct_2(vec2<f32>(-2161f, -1970f), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 12u)], 12u)], -336f), vec4<u32>(34063u, 0u, 74404u, 4294967295u), 65380u, vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 1i)), Struct_3(Struct_1(vec4<bool>(false, true, true, true), u_input.d.x, vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.b, 12u)], u_input.c), Struct_1(vec4<bool>(true, false, false, true), u_input.d.x, vec2<bool>(false, true), 15142u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28373u, 12u)], 12u)]), vec4<i32>(-34509i, u_input.d.x, 30744i, 0i), vec2<i32>(u_input.d.x, u_input.d.x), true)).x, reverseBits(u_input.d.x), u_input.d.x, reverseBits(u_input.d.x)));
    var var_1 = u_input.a;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1081f, -1106f))))))), 1u, 681f);
    var var_3 = 18531i;
    return _wgslsmith_f_op_f32(select(1085f, var_2.c, u_input.d.x != var_0.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: u32) -> Struct_2 {
    let var_0 = arg_1;
    global0 = array<u32, 12>();
    let var_1 = -383f;
    global0 = array<u32, 12>();
    var var_2 = -(-(~(-u_input.d.x)) | u_input.d.x);
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-959f * var_1), 1162f))), arg_0.x), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2112f * _wgslsmith_f_op_f32(sign(-600f)))));
}

fn func_1(arg_0: f32, arg_1: f32) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_1) + vec2<f32>(134f, -1000f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(105f, 1000f))))), u_input.a.x, _wgslsmith_f_op_f32(-arg_0));
    let var_1 = min(1u, _wgslsmith_div_u32(5608u, 4294967295u));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32((-u_input.d.x << (1u % 32u)) >> ((788u ^ (50772u & u_input.b)) % 32u), -2147483647i, -2147483647i), _wgslsmith_clamp_i32(2147483647i, 2147483647i, -1i));
    let var_3 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(1013f)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 * -389f))), arg_1)), false, 12898u);
    var var_4 = Struct_3(Struct_1(vec4<bool>(true, true, select(false, all(vec4<bool>(false, true, true, true)), true), !(global0[_wgslsmith_index_u32(15860u, 12u)] >= var_0.b)), -(~var_2) & _wgslsmith_dot_vec2_i32(vec2<i32>(-15529i, u_input.d.x), vec2<i32>(u_input.d.x, var_2)), vec2<bool>(true, true), ~var_0.b, firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_3.b, var_0.b), max(4294967295u, global0[_wgslsmith_index_u32(var_0.b, 12u)])))), Struct_1(select(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true), var_3.b >= (51050u << (0u % 32u))), -_wgslsmith_add_i32(~var_2, var_2), vec2<bool>(arg_0 <= _wgslsmith_f_op_f32(ceil(-664f)), true), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(11071u, 12u)], var_3.b, 38316u, var_3.b), vec4<u32>(29587u, var_3.b, global0[_wgslsmith_index_u32(var_1, 12u)], 0u)), vec4<u32>(1u, firstLeadingBit(var_0.b), ~25155u, 1u)), ~0u), vec4<i32>(-2147483647i, _wgslsmith_sub_i32(var_2 | max(var_2, -1i), _wgslsmith_clamp_i32(-20650i, 7021i, u_input.d.x)), var_2, var_2), vec2<i32>(-23166i, firstLeadingBit(var_2)), false);
    return vec3<bool>(!any(!select(var_4.a.a.zx, var_4.b.c, false)), any(var_4.b.a.yxz), !(var_4.a.c.x || var_4.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    let var_1 = !(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var var_2 = vec3<i32>(u_input.d.x, u_input.d.x, (-5888i << (firstTrailingBit(0u) % 32u)) | (select(-2147483647i, _wgslsmith_add_i32(u_input.d.x, u_input.d.x), select(false, false, true)) ^ (u_input.d.x | _wgslsmith_clamp_i32(2147483647i, u_input.d.x, u_input.d.x))));
    let var_3 = !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)] != global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a.x, global0[_wgslsmith_index_u32(70314u, 12u)]), 12u)], u_input.b >= u_input.a.x, any(func_1(1012f, _wgslsmith_div_f32(301f, -1094f))), true);
    var var_4 = ~vec2<u32>(u_input.b & ~min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], 12u)], 12u)], u_input.b), 28732u);
    var_4 = vec2<u32>(global0[_wgslsmith_index_u32(~21995u, 12u)], ~11962u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_2.x, 7685i, countOneBits(-select(u_input.d.x, var_2.x, var_1.x)), u_input.d.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-387f * _wgslsmith_div_f32(-459f, -170f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -159f), _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(137f, 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -873f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2258f), 2342f, var_3.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(479f)) - _wgslsmith_f_op_f32(abs(-712f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-554f + _wgslsmith_f_op_f32(abs(-398f))), _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-292f, func_4(vec4<f32>(777f, 308f, -1272f, -875f), var_3.x, 1u).c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1244f, 302f) * vec2<f32>(-503f, -412f)))))));
}

