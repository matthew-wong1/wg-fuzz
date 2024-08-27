struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32;

var<private> global2: array<f32, 30>;

var<private> global3: Struct_3 = Struct_3(false, Struct_1(vec3<f32>(-1278f, -284f, -1614f), 47732u, vec2<u32>(4294967295u, 0u), false, vec4<u32>(37184u, 11287u, 0u, 54119u)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    var var_0 = global0.b;
    global1 = i32(-1i) * -40597i;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, 752f, false)), _wgslsmith_f_op_f32(step(global0.b.a.x, global3.b.a.x)), _wgslsmith_f_op_f32(2012f * global2[_wgslsmith_index_u32(u_input.a.x, 30u)]), _wgslsmith_f_op_f32(step(491f, global0.c.a.x))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.b.a.x, -2210f, global0.d, -1031f))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], -249f, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], -411f, global0.c.a.x, 1245f) + vec4<f32>(-113f, 294f, 272f, -809f)), global0.a)))));
    var_0 = Struct_1(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(729f, var_1.x) + _wgslsmith_div_f32(global0.c.a.x, -721f)) + -105f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-373f)), global0.b.a.x, any(vec3<bool>(true, global3.b.d, global0.c.d))))), ~20665u, reverseBits(firstTrailingBit(~var_0.c)) | vec2<u32>(35067u, 0u), true, _wgslsmith_clamp_vec4_u32(var_0.e, select(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), var_0.e), vec4<u32>(global3.b.e.x, 14826u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.c.x, 4294967295u, var_0.e.x, 1u), var_0.e), global3.b.e.x), false), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.e, 41729u, 1u, 1u), var_0.e) & (global0.b.e >> (global0.b.e % vec4<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_f32(-771f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -558f), -985f)));
    return _wgslsmith_mult_i32(-((-arg_0.x << (firstLeadingBit(u_input.a.x) % 32u)) | (i32(-1i) * -39055i)), ~abs(arg_0.x));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global0.c.a.xx);
    let var_1 = Struct_3(_wgslsmith_clamp_i32(func_3(~vec3<i32>(7363i, -109589i, -17077i)), select(-16304i, 8012i, global0.a.x), countOneBits(_wgslsmith_add_i32(27443i, -50522i))) > 1i, global3.b);
    global0 = Struct_2(global0.a, var_1.b, global0.b, global2[_wgslsmith_index_u32(global3.b.b, 30u)], 91144u);
    var var_2 = _wgslsmith_dot_vec3_u32(~(~u_input.a), vec3<u32>(_wgslsmith_sub_u32(var_1.b.c.x >> (global3.b.c.x % 32u), ~u_input.a.x << (u_input.a.x % 32u)), _wgslsmith_mult_u32(~13858u, u_input.a.x) & ~44893u, ~global3.b.b));
    var var_3 = abs(~_wgslsmith_div_i32(firstLeadingBit(57226i), abs(func_3(vec3<i32>(0i, 47608i, 2147483647i)))));
    return Struct_2(vec4<bool>(!(global3.b.d || true), false, global3.b.a.x <= _wgslsmith_f_op_f32(step(1647f, _wgslsmith_f_op_f32(639f - var_1.b.a.x))), false), var_1.b, Struct_1(global0.c.a, min(_wgslsmith_clamp_u32(abs(24160u), 1u, _wgslsmith_dot_vec4_u32(global0.b.e, var_1.b.e)), ~1u), vec2<u32>(min(global3.b.c.x, 27461u), u_input.a.x), true, min(~vec4<u32>(global0.b.c.x, 0u, 4294967295u, global0.e), global0.b.e)), _wgslsmith_f_op_f32(543f + 104f), _wgslsmith_clamp_u32(min(max(_wgslsmith_sub_u32(u_input.a.x, 6153u), u_input.a.x), _wgslsmith_div_u32(~u_input.a.x, ~global3.b.c.x)), var_1.b.e.x, 73392u));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> bool {
    var var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(global0.d + -1121f), -194f));
    global2 = array<f32, 30>();
    let var_1 = Struct_3(arg_0.x, func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.a.x + var_0.b.a.x) * -738f), 351f)).c);
    global3 = Struct_3(global0.c.d, var_0.c);
    var_0 = func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c.a.yx * var_1.b.a.zy) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-861f, var_0.b.a.x))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-1883f + global2[_wgslsmith_index_u32(global0.e, 30u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1488f, -402f), var_0.b.a.xx)) * global0.b.a.xz)))));
    return var_1.b.d;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    global3 = Struct_3(!(true & all(vec4<bool>(false, global3.b.d, false, arg_3.c.d))) || arg_0.x, func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.a.xz))))).b);
    var var_0 = -(~(-(~vec2<i32>(arg_1, 0i) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_1), vec2<i32>(-1i, -27886i)))));
    let var_1 = global3.b;
    let var_2 = arg_3.a.xwx;
    let var_3 = vec4<i32>(_wgslsmith_sub_i32(-countOneBits(_wgslsmith_add_i32(-2147483647i, var_0.x)), max(arg_1 << (arg_3.e % 32u), ~arg_1) << (16198u % 32u)), arg_1, min(-(-arg_1 ^ ~(-4575i)), -var_0.x), -(~_wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_1, arg_1), -14420i)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.a)) * _wgslsmith_f_op_vec3_f32(arg_3.b.a - arg_3.b.a))))), reverseBits(max(arg_3.c.e.x, 46511u)), vec2<u32>(~(~u_input.a.x), var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(~u_input.a.x, 30u)], _wgslsmith_f_op_f32(-arg_3.b.a.x)))) > 978f, _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(max(arg_3.b.e, vec4<u32>(0u, u_input.a.x, 1097u, u_input.a.x)) | arg_3.c.e, ~vec4<u32>(61589u, arg_3.e, arg_3.b.e.x, u_input.a.x)), global3.b.e));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_dot_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(1i, 34367i, 1i)), ~vec3<i32>(1i, 1i, 1i));
    let var_0 = Struct_2(vec4<bool>(true, !(!global0.a.x), true, !global3.a), func_4(vec3<bool>(!global0.a.x, false, false), 1i, !func_1(select(global0.a.xx, vec2<bool>(true, global0.b.d), vec2<bool>(false, false)), Struct_2(vec4<bool>(global0.c.d, global3.b.d, true, global3.b.d), global3.b, global0.c, -1619f, u_input.a.x)), Struct_2(global0.a, Struct_1(vec3<f32>(194f, -157f, global2[_wgslsmith_index_u32(1u, 30u)]), max(32145u, global3.b.c.x), _wgslsmith_mult_vec2_u32(global3.b.c, vec2<u32>(global3.b.b, 1u)), select(false, global3.b.d, false), ~vec4<u32>(global3.b.b, global3.b.b, u_input.a.x, 51448u)), global0.c, global2[_wgslsmith_index_u32(func_2(vec2<f32>(-1125f, 697f)).b.e.x & u_input.a.x, 30u)], global0.b.c.x & 4752u)), Struct_1(vec3<f32>(-680f, -702f, _wgslsmith_f_op_f32(f32(-1f) * -795f)), ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, 113349u, 40050u)), ~vec3<u32>(23822u, 74096u, global0.c.c.x)), global0.c.e.yx, false, vec4<u32>(~51930u, _wgslsmith_add_u32(1u, 142414u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global3.b.c.x, 42646u), global3.b.e.ywy), ~global3.b.b) << (~abs(global3.b.e) % vec4<u32>(32u))), -1190f, ~4294967295u);
    var var_1 = false;
    let var_2 = _wgslsmith_add_u32(~(~var_0.c.b), global3.b.b);
    var_1 = func_4(!func_2(global0.b.a.xy).a.zwy, -1i, ~abs(func_3(vec3<i32>(-1i, -19763i, 0i))) > 1i, func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.b.a.x, 299f))), _wgslsmith_f_op_vec2_f32(max(global3.b.a.xz, var_0.c.a.yx))), vec2<f32>(-752f, _wgslsmith_f_op_f32(-370f * global3.b.a.x)), true)))).d;
    let var_3 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], 855f) + var_0.b.a.yy) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.a.yy), _wgslsmith_f_op_vec2_f32(var_0.b.a.zz + vec2<f32>(-564f, -586f))))).a, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.b.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1798f, 105f, var_0.c.a.x))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global3.b.a.x, -719f, -115f), vec3<f32>(-209f, global0.b.a.x, 231f))))), _wgslsmith_mult_u32(var_0.c.e.x, 1u), func_4(select(var_0.a.xyx, select(var_0.a.zzy, var_0.a.yxz, vec3<bool>(var_0.a.x, var_0.b.d, true)), func_4(global0.a.xwx, 22640i, global0.c.d, var_0).d), 5989i, true, Struct_2(var_0.a, global3.b, var_0.b, var_0.b.a.x, _wgslsmith_sub_u32(1u, 1u))).c, global0.a.x, var_0.b.e), func_4(vec3<bool>((global2[_wgslsmith_index_u32(global0.e, 30u)] != 287f) | true, all(vec2<bool>(var_0.b.d, false)) | (global3.b.a.x < -304f), false), reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(31924i, -2730i, 1i, -13764i), vec4<i32>(-2147483647i, 18057i, 2147483647i, 22602i))), select(true, false, true), var_0), global3.b.a.x, ~((~22348u << ((0u << (1u % 32u)) % 32u)) & global3.b.c.x));
    let var_4 = vec2<f32>(var_3.c.a.x, global3.b.a.x);
    var var_5 = func_4(!var_3.a.xxz, select(reverseBits(-30064i), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 46687i, 6966i, -1i), -(~vec4<i32>(-868i, 2147483647i, 60116i, -53218i))), all(var_3.a.xyw)), any(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4 * vec2<f32>(var_0.c.a.x, 1000f)) + _wgslsmith_f_op_vec2_f32(-global3.b.a.yy))).a.xw), func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1500f, var_4.x)))))));
    let var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, 1514f, var_3.d, var_0.c.a.x) * vec4<f32>(902f, global2[_wgslsmith_index_u32(var_0.c.c.x, 30u)], 351f, global0.c.a.x)))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(global0.e, 30u)])), global0.c.a.x, _wgslsmith_f_op_f32(-799f + var_5.a.x), _wgslsmith_f_op_f32(max(1476f, 212f)))))), global0.b.a.x, 1100f);
}

