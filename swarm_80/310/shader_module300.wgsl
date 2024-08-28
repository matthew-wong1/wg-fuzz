struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(-807f, -490f, 1000f, -949f, -105f, -187f, 1766f);

var<private> global1: vec4<i32> = vec4<i32>(19366i, -1i, -59245i, 8603i);

var<private> global2: array<u32, 12> = array<u32, 12>(21261u, 27798u, 37314u, 51091u, 1u, 46233u, 0u, 0u, 2697u, 4294967295u, 31835u, 0u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> i32 {
    var var_0 = Struct_3(arg_0.a, arg_0.e.b, _wgslsmith_div_i32(max(arg_0.d.c, _wgslsmith_clamp_i32(-1i, 1i, global1.x) << (u_input.c.x % 32u)), ~u_input.b), arg_0.a, arg_0.e);
    var_0 = arg_0;
    global1 = vec4<i32>(-1i) * -(~_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, -37902i, 58916i, 29072i), vec4<i32>(-2147483647i, -12825i, global1.x, 34277i), vec4<i32>(global1.x, 0i, 1i, 1i)), vec4<i32>(var_0.d.c, 2147483647i, -5918i, arg_0.a.c) << (vec4<u32>(u_input.d.x, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u))));
    global1 = -select(vec4<i32>(-33780i, 1i, arg_0.c, 0i) << (reverseBits(vec4<u32>(14231u, 4294967295u, 1u, 8152u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(~global1.x, global1.x, arg_0.c, 2147483647i), ~vec4<i32>(global1.x, -13638i, var_0.a.c, global1.x)), true);
    var var_1 = -countOneBits(~(~abs(vec4<i32>(u_input.b, global1.x, u_input.b, arg_0.a.c))));
    return ~(-28915i | abs(~min(0i, global1.x)));
}

fn func_4(arg_0: i32) -> u32 {
    global1 = -min(_wgslsmith_mod_vec4_i32(-vec4<i32>(2015i, -2147483647i, arg_0, 0i), reverseBits(vec4<i32>(1i, arg_0, u_input.b, 22415i))), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0, firstTrailingBit(arg_0), _wgslsmith_clamp_i32(-36407i, -57924i, -34961i), -global1.x), ~vec4<i32>(-26469i, arg_0, arg_0, -2147483647i)));
    global1 = countOneBits(vec4<i32>(~46298i, select(arg_0, firstLeadingBit(0i), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), min(34907i, firstLeadingBit(global1.x) << (16830u % 32u)), -(~arg_0)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(811f, global0[_wgslsmith_index_u32(81618u, 7u)], -488f)))))));
    let var_1 = global1.zw;
    global0 = array<f32, 7>();
    return u_input.c.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: bool) -> Struct_3 {
    let var_0 = global1.x;
    let var_1 = -global1.yxx;
    global0 = array<f32, 7>();
    var var_2 = Struct_1(!(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, arg_2)))), global0[_wgslsmith_index_u32(func_4(_wgslsmith_clamp_i32(func_3(Struct_3(Struct_2(4294967295u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], 7u)], var_1.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15937u, 12u)], 7u)]), 836f, 19364i, Struct_2(global2[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(13947u, 7u)], var_1.x, 987f), Struct_1(vec2<bool>(false, arg_2), global0[_wgslsmith_index_u32(50846u, 7u)], arg_2, 4294967295u, 26632u)), arg_2) | 1i, countOneBits(arg_1 ^ 2147483647i), _wgslsmith_mod_i32(var_1.x, arg_1))), 7u)], true, 37325u, _wgslsmith_div_u32(~27027u, firstLeadingBit(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], 12u)] << ((4294967295u & global2[_wgslsmith_index_u32(u_input.a, 12u)]) % 32u))));
    global1 = vec4<i32>(countOneBits(u_input.b), firstLeadingBit(min(-1i, -var_1.x)) | var_1.x, ~(~countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 43429i), global1.yw))), -arg_0.x & _wgslsmith_div_i32(0i, firstTrailingBit(13271i) >> (40460u % 32u)));
    return Struct_3(Struct_2(~min(u_input.c.x, 4294967295u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-159f)), -3378f)), ~(u_input.b << (u_input.a % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(15435u, 12u)], var_2.d), 7u)])))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(9808u, 7u)], var_2.b), (_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global1.yww, vec3<i32>(var_1.x, 12883i, -1i)), -1i) >> (firstTrailingBit(select(var_2.e, u_input.d.x, var_2.c)) % 32u)) << (u_input.a % 32u), Struct_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.e, u_input.c.x, 4294967295u) << (vec3<u32>(0u, var_2.d, 24032u) % vec3<u32>(32u)), u_input.d), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_2.d, 7u)] * -355f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -193f), _wgslsmith_div_f32(980f, -132f))))), 1i, _wgslsmith_f_op_f32(f32(-1f) * -1700f)), Struct_1(select(var_2.a, select(vec2<bool>(var_2.a.x, var_2.a.x), var_2.a, var_2.a), !vec2<bool>(true, arg_2)), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~var_2.d, 12u)], 7u)], any(select(!vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(arg_2, false, false, arg_2), !vec4<bool>(true, true, var_2.a.x, arg_2))), ~(~0u) & _wgslsmith_mult_u32(var_2.d | var_2.d, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(var_2.d, 12u)], var_2.e)), ~0u));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: vec3<f32>) -> Struct_3 {
    global1 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(select(~(vec4<i32>(u_input.b, global1.x, u_input.b, -43971i) << (vec4<u32>(37449u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1419u, 12u)], 12u)], 12u)], u_input.d.x, global2[_wgslsmith_index_u32(10326u, 12u)]) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_clamp_i32(2147483647i, -26281i, u_input.b), global1.x, 1i, -2147483647i & u_input.b), true), select(vec4<i32>(abs(u_input.b), global1.x, u_input.b, i32(-1i) * -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-18605i, u_input.b, -84964i, global1.x), vec4<i32>(-16362i, -30432i, 2147483647i, u_input.b) << (vec4<u32>(u_input.c.x, 4294967295u, 1u, 19844u) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(u_input.d.x, 12u)] == 41610u), vec4<i32>(u_input.b, 1i, 2147483647i, firstLeadingBit(0i))), vec4<i32>(global1.x, -(max(global1.x, u_input.b) << (_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(0u, 45933u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], 12u)], 12u)])) % 32u)), _wgslsmith_div_i32(-19111i, global1.x), _wgslsmith_dot_vec3_i32(global1.xyx ^ reverseBits(global1.wyw), -firstTrailingBit(vec3<i32>(global1.x, u_input.b, u_input.b)))));
    let var_0 = func_2(global1.zx, _wgslsmith_add_i32(-1i, u_input.b), arg_2);
    var var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, 15320u | ~global2[_wgslsmith_index_u32(106123u, 12u)]), _wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.e.e, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a, 0u, 1u, u_input.a), vec4<u32>(global2[_wgslsmith_index_u32(var_0.a.a, 12u)], u_input.c.x, 105301u, u_input.a))), 106812u)), 7u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-676f, 114f)) + _wgslsmith_f_op_f32(ceil(1212f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.x, global0[_wgslsmith_index_u32(37859u, 7u)]))), _wgslsmith_div_f32(760f, _wgslsmith_f_op_f32(max(var_0.a.d, arg_3.x))))));
    let var_2 = ~u_input.d & vec3<u32>(_wgslsmith_mod_u32(1u, global2[_wgslsmith_index_u32(countOneBits(4294967295u), 12u)]), 79397u, firstLeadingBit(~4294967295u) << (var_0.e.e % 32u));
    let var_3 = true;
    return func_2(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(var_0.a.c, u_input.b)), _wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.d.c, -15998i), global1.x)), global1.yw), var_0.d.c ^ 0i, select(any(select(vec4<bool>(false, true, false, arg_2), vec4<bool>(var_0.e.a.x, arg_0, var_0.e.a.x, true), vec4<bool>(false, var_0.e.a.x, false, var_0.e.c))), any(!(!vec4<bool>(var_3, arg_0, true, var_0.e.a.x))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(43854u, 7u)], _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 7u)]))) * _wgslsmith_f_op_f32(158f * 449f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(abs(147u), 7u)])))) + -1110f);
    var var_1 = func_1(false, !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-422f - -2979f), global0[_wgslsmith_index_u32(1u, 7u)])) != global0[_wgslsmith_index_u32(33054u << (max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 0u) % 32u), 7u)]), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1063f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 7u)] - global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 7u)]), 129f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -148f), 1f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 7u)])), true))));
    let var_2 = 0u;
    let var_3 = vec3<i32>(~firstTrailingBit(2267i), max(-_wgslsmith_clamp_i32(u_input.b, u_input.b, -2147483647i), -2147483647i & (1i >> (var_2 % 32u))), -(~var_1.d.c & u_input.b)) & global1.yyz;
    var_1 = func_2(_wgslsmith_sub_vec2_i32(min(var_3.yy, reverseBits(var_3.zx)) & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, global1.x) >> (u_input.c % vec2<u32>(32u)), global1.yx), vec2<i32>(1095i | _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.c, -1i, u_input.b, var_1.a.c), vec4<i32>(u_input.b, -1i, u_input.b, var_1.d.c)), 2147483647i)), ~38274i, false);
    var var_4 = var_1.d.d;
    let var_5 = var_1.e.c;
    var var_6 = select(-46153i << (~(~global2[_wgslsmith_index_u32(var_2, 12u)]) % 32u), var_3.x, var_2 > 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.xz, u_input.c), ~vec2<u32>(global2[_wgslsmith_index_u32(23922u, 12u)], var_2)), 7u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -790f), _wgslsmith_f_op_f32(769f + -1583f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-302f, -516f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.a.a, 12u)], 7u)], 747f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], var_1.a.b))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(658f, 257f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1497f))))));
}

