struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5>;

var<private> global1: array<bool, 26>;

var<private> global2: vec4<i32>;

var<private> global3: u32;

var<private> global4: array<u32, 18>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec4<bool> {
    var var_0 = vec4<bool>(true, false, !select(!all(vec2<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(48219u, 18u)], 18u)], 26u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(8241u, 18u)], 18u)], 26u)])), any(select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(43031u, 18u)], 26u)], global1[_wgslsmith_index_u32(1u, 26u)]), vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 26u)], global1[_wgslsmith_index_u32(895u, 26u)], true, true), true)), !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(76138u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)]), 26u)]), !global1[_wgslsmith_index_u32(25120u ^ _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(59979u, global4[_wgslsmith_index_u32(0u, 18u)], 53108u), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(74494u, 18u)], 18u)], 18u)], 18u)], 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1410u, 18u)], 18u)], 18u)])), 18u)], 18u)], 55231u), 26u)]);
    global1 = array<bool, 26>();
    var_0 = !select(!vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(firstTrailingBit(global4[_wgslsmith_index_u32(4294967295u, 18u)]), 18u)], 26u)], global1[_wgslsmith_index_u32(1u, 26u)], true, false), vec4<bool>(all(vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(15893u, 26u)], false)), all(vec2<bool>(false, global1[_wgslsmith_index_u32(22508u, 26u)])), global1[_wgslsmith_index_u32(4294967295u, 26u)], -2147483647i > global2.x), true);
    let var_1 = select(!select(vec4<bool>(true, 13537u < global4[_wgslsmith_index_u32(19829u, 18u)], false, true), select(vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 26u)], var_0.x, false, var_0.x), select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 18u)], 26u)], true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 26u)], true, var_0.x), vec4<bool>(var_0.x, false, false, global1[_wgslsmith_index_u32(37121u, 26u)])), !var_0.x), !select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 26u)], true, var_0.x), vec4<bool>(true, false, true, true))), !vec4<bool>(global1[_wgslsmith_index_u32(67701u, 26u)], all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], var_0.x, true, var_0.x)), !var_0.x, select(false == var_0.x, select(var_0.x, global1[_wgslsmith_index_u32(0u, 26u)], false), all(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 26u)])))), false);
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1085f, _wgslsmith_f_op_f32(-269f * 908f), _wgslsmith_f_op_f32(max(-1001f, -678f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(441f, -142f, 1782f) - vec3<f32>(1984f, -674f, -472f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1430f, -101f, 1000f)))))))));
    return var_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_5) -> u32 {
    var var_0 = vec4<i32>(max(_wgslsmith_div_i32(global2.x, global2.x), global2.x), 2147483647i, i32(-1i) * -15674i, 10611i);
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.x, -18968i, u_input.b, global2.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, -1918i, 84864i, 7509i), vec4<i32>(global2.x, global2.x, var_0.x, 17794i))), ~arg_2.c), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x >> (1u % 32u), 0i, ~arg_2.c), -global2.zxz ^ -arg_2.b)), vec3<i32>(_wgslsmith_dot_vec2_i32(global2.wy, vec2<i32>(global2.x >> (15564u % 32u), countOneBits(u_input.a))), -_wgslsmith_mod_i32(u_input.a & var_0.x, i32(-1i) * -42399i), global2.x));
    var_1 = reverseBits(-global2.wwx);
    let var_2 = Struct_4(vec4<i32>(-1i, u_input.b, ~abs(global2.x), arg_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - -761f) * _wgslsmith_f_op_f32(f32(-1f) * -100f)), arg_2.a.x) + _wgslsmith_f_op_f32(-132f + -294f)), _wgslsmith_f_op_f32(exp2(arg_2.a.x)), ~(~(vec2<u32>(0u, 4294967295u) >> (vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21070u, 18u)], 18u)], 18u)], 1u) % vec2<u32>(32u))) | min(~vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 18u)], global4[_wgslsmith_index_u32(48496u, 18u)]), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 8340u) | vec2<u32>(0u, global4[_wgslsmith_index_u32(19971u, 18u)]))), select(vec4<bool>(all(arg_0), select(true && arg_0.x, !global1[_wgslsmith_index_u32(22441u, 26u)], true), !global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(select(global4[_wgslsmith_index_u32(0u, 18u)], 0u, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 26u)]), 18u)], 18u)], 18u)], 26u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u << (global4[_wgslsmith_index_u32(42068u, 18u)] % 32u), 18u)], 26u)]), select(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], arg_0.x, arg_0.x, false), arg_0, vec4<bool>(true, false, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24952u, 18u)], 26u)], false)), !arg_0, !any(vec2<bool>(false, false))), !vec4<bool>(global4[_wgslsmith_index_u32(1u, 18u)] > 23469u, any(arg_0.zz), true, true)));
    global2 = vec4<i32>(reverseBits(2147483647i), -35375i, ~_wgslsmith_dot_vec3_i32(~var_2.a.wzx, arg_2.b ^ vec3<i32>(-21904i, 0i, var_2.a.x)) << (global4[_wgslsmith_index_u32(3587u, 18u)] % 32u), global2.x);
    return 4294967295u;
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = vec2<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(func_4(!func_3(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-406f, 790f))), Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 147f) * vec2<f32>(arg_0, -1499f)), global2.ywy, abs(global2.x))), _wgslsmith_div_u32(31007u, 1u)), 26u)]);
    var var_1 = 1u;
    let var_2 = -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, global2.x, _wgslsmith_sub_i32(global2.x, global2.x), u_input.b), ~vec4<i32>(-2147483647i, 2147483647i, -9907i, global2.x)) >> (((select(~vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(27570u, 18u)], 18u)], 17889u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 18u)], 135260u), select(vec4<u32>(global4[_wgslsmith_index_u32(1228u, 18u)], global4[_wgslsmith_index_u32(0u, 18u)], global4[_wgslsmith_index_u32(1u, 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(14948u, 18u)], 18u)]), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(1u, 18u)], global4[_wgslsmith_index_u32(1u, 18u)], 0u), global1[_wgslsmith_index_u32(0u, 26u)]), all(vec2<bool>(true, false))) >> (~firstTrailingBit(vec4<u32>(global4[_wgslsmith_index_u32(0u, 18u)], 4294967295u, 0u, 0u)) % vec4<u32>(32u))) << (reverseBits(vec4<u32>(func_4(vec4<bool>(var_0.x, false, var_0.x, false), vec2<f32>(2401f, arg_0), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 5u)]), firstLeadingBit(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21190u, 18u)], 18u)], 18u)], 18u)], 18u)]), 0u, ~63121u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_1 = 79362u;
    global1 = array<bool, 26>();
    return Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(575f, arg_0, -283f, -1332f) - vec4<f32>(arg_0, -758f, arg_0, arg_0)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(545f, arg_0, 964f, -560f), vec4<f32>(arg_0, arg_0, 1200f, -116f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_0, arg_0, arg_0))))), Struct_2(_wgslsmith_clamp_vec2_i32(-_wgslsmith_mod_vec2_i32(var_2.zy, global2.xy), global2.wx, vec2<i32>(-1i) * -var_2.wy), var_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -158f, arg_0, 1172f), vec4<f32>(arg_0, arg_0, arg_0, -1576f), vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(29761u, 18u)], 18u)], 18u)], 18u)], 26u)], false, var_0.x, global1[_wgslsmith_index_u32(4294967295u, 26u)]))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(230f, arg_0, 124f, -1377f))), all(vec3<bool>(false, var_0.x, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 26u)])))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0))))), firstTrailingBit(~(vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(4294967295u, 18u)], global4[_wgslsmith_index_u32(33333u, 18u)], 0u) << (vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], global4[_wgslsmith_index_u32(1u, 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4261u, 18u)], 18u)], 18u)], 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 18u)]) % vec4<u32>(32u))))), vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4675u, 18u)], 18u)], 18u)], 76053u), Struct_2(~_wgslsmith_sub_vec2_i32(~var_2.wy, countOneBits(global2.xz)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(var_2, vec4<i32>(56642i, var_2.x, var_2.x, 1i)), global2.x) < (-global2.x | 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, arg_0, arg_0, arg_0)))), vec4<u32>(_wgslsmith_sub_u32(1u, 1u), global4[_wgslsmith_index_u32(~30014u, 18u)], global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 86641u), 18u)], countOneBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(44280u, 18u)], 18u)], 18u)])) ^ vec4<u32>(1u, 1u, ~global4[_wgslsmith_index_u32(1u, 18u)], global4[_wgslsmith_index_u32(23453u, 18u)])), 45032u);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = global4[_wgslsmith_index_u32(4294967295u, 18u)];
    var_0 = _wgslsmith_div_u32(func_2(func_2(arg_3.a.x).a.x).b.d.x, ~4294967295u);
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-200f, 2365f) + arg_3.d.c.xy))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), arg_3.b.c.x)))), abs(-global2.yyy), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1600f)).d.a.x);
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_sub_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.d.d.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(28273u, 18u)], 18u)], global4[_wgslsmith_index_u32(1u, 18u)]), vec4<u32>(arg_3.c.x, 4294967295u, 1u, arg_3.c.x)), min(vec4<u32>(11268u, arg_3.e, arg_2.x, arg_3.d.d.x), arg_1.d.d), func_3()), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(67013u, global4[_wgslsmith_index_u32(1u, 18u)], arg_1.e, 563u), vec4<u32>(arg_1.e, arg_3.d.d.x, 0u, arg_2.x))))), arg_2.x);
    let var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_3.d.d.x, select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, var_2.a.x), ~vec2<u32>(arg_1.b.d.x, global4[_wgslsmith_index_u32(arg_2.x, 18u)])), func_4(select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(arg_2.x, 26u)], arg_3.d.b), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_3.e, 26u)], true, global1[_wgslsmith_index_u32(arg_3.b.d.x, 26u)]), arg_1.d.b), _wgslsmith_f_op_vec2_f32(-var_1.a), global0[_wgslsmith_index_u32(abs(var_2.b), 5u)]), any(!vec2<bool>(arg_1.b.b, arg_1.d.b)))), 26u)];
    return vec2<bool>(global1[_wgslsmith_index_u32(arg_1.b.d.x, 26u)] && true, arg_3.d.b);
}

fn func_1(arg_0: bool) -> u32 {
    global4 = array<u32, 18>();
    var var_0 = ~global2.yzw;
    var var_1 = select(!(!func_5(vec2<i32>(9986i, var_0.x), func_2(-844f), vec2<u32>(1u, 1u), func_2(1000f))), select(!vec2<bool>(true, arg_0), !vec2<bool>(true, !global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(36074u, 18u)], 26u)]), select(vec2<bool>(arg_0, false), vec2<bool>(false, any(vec3<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(2358u, 18u)], 26u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(44942u, 18u)], 18u)], 18u)], 26u)], true))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(0u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(29164u, global4[_wgslsmith_index_u32(30203u, 18u)]), vec2<u32>(global4[_wgslsmith_index_u32(61120u, 18u)], global4[_wgslsmith_index_u32(1u, 18u)]))), 26u)])), false);
    global0 = array<Struct_5, 5>();
    global3 = ~14560u;
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1986f + 1931f), _wgslsmith_f_op_f32(abs(651f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1759f, -628f)))))), vec3<i32>(abs(firstLeadingBit(-u_input.b)), countOneBits(u_input.a), firstTrailingBit(2147483647i)), 2147483647i);
    let var_1 = Struct_1(vec4<u32>(2504u, _wgslsmith_div_u32(_wgslsmith_mult_u32(func_1(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 26u)]), 27572u), 1778u), ~(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(1u, 18u)], global4[_wgslsmith_index_u32(9038u, 18u)], global4[_wgslsmith_index_u32(49232u, 18u)]) & global4[_wgslsmith_index_u32(reverseBits(global4[_wgslsmith_index_u32(0u, 18u)]), 18u)]), 0u), ~global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~global4[_wgslsmith_index_u32(0u, 18u)]), firstTrailingBit(~global4[_wgslsmith_index_u32(1u, 18u)])), 18u)]);
    let var_2 = Struct_1(var_1.a, ~func_2(var_0.a.x).e);
    let var_3 = (global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_2.a.wzy, var_2.a.zzw), 18u)] & (var_1.b >> (0u % 32u))) > var_1.b;
    var var_4 = func_2(537f);
    let var_5 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1994f, var_0.a.x)), var_4.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.a.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))));
    global3 = _wgslsmith_add_u32(abs(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(var_4.b.d.x, 18u)], 18u)] << (4294967295u % 32u)), var_2.a.x) | global4[_wgslsmith_index_u32(~(func_4(vec4<bool>(var_4.b.b, var_4.d.b, true, var_3), var_0.a, global0[_wgslsmith_index_u32(firstTrailingBit(var_4.d.d.x), 5u)]) << (24841u % 32u)), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.a.x, (~_wgslsmith_mod_vec3_u32(var_1.a.zxx, vec3<u32>(43832u, 83847u, var_1.b)) << (var_4.b.d.xxw % vec3<u32>(32u))) & min(countOneBits(var_2.a.wxz), var_2.a.wyw), ~(-min(0i, var_4.b.a.x)));
}

