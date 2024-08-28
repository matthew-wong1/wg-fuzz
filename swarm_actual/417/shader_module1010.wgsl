struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -10532i;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global2: array<f32, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-746f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1135f)))), _wgslsmith_f_op_f32(ceil(-575f)), _wgslsmith_f_op_f32(min(-487f, _wgslsmith_f_op_f32(min(-394f, _wgslsmith_f_op_f32(arg_0.x + -637f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(1u, 15u)], arg_0.x)), arg_1.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_1.b)))))));
    global2 = array<f32, 15>();
    global0 = -2147483647i;
    global0 = -arg_1.c.x >> (u_input.a.x % 32u);
    global2 = array<f32, 15>();
    return firstTrailingBit(2147483647i);
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global2 = array<f32, 15>();
    var var_0 = all(global1.zzx);
    var var_1 = u_input.a.x;
    let var_2 = vec3<u32>(~u_input.b, 4294967295u, 91583u);
    let var_3 = reverseBits(_wgslsmith_mod_i32(min(1i, -1i), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(21506u, 15u)], 520f, arg_0.x) * vec3<f32>(arg_0.x, global2[_wgslsmith_index_u32(u_input.a.x, 15u)], arg_0.x)), Struct_1(vec4<u32>(var_2.x, 0u, var_2.x, 36174u), -955f, vec4<i32>(7996i, 12447i, 1i, 1i), vec2<i32>(18004i, -2147483647i), vec4<u32>(4294967295u, u_input.c, 6690u, u_input.a.x)), _wgslsmith_sub_i32(-1i, -2147483647i)))) ^ ~abs(~min(2147483647i, -2147483647i));
    return Struct_2(~firstTrailingBit(~(~vec4<u32>(17390u, u_input.a.x, 4294967295u, 22337u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(112f - _wgslsmith_f_op_f32(trunc(1140f))) + -503f)), var_3, false);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<u32> {
    global1 = !select(vec4<bool>(any(!vec4<bool>(false, arg_0.d, arg_0.d, global1.x)), true, false, global1.x), vec4<bool>(arg_2.e.x >= select(4294967295u, 1u, arg_0.d), arg_0.d || arg_0.d, !arg_0.d, select(all(global1.xx), select(global1.x, global1.x, false), true)), all(vec3<bool>(global1.x || false, !arg_0.d, global2[_wgslsmith_index_u32(22219u, 15u)] > arg_0.b)));
    let var_0 = vec2<bool>(!arg_0.d, 1238f < _wgslsmith_f_op_f32(-arg_1.x));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), 905f);
    global0 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-445f))));
    return vec4<u32>(arg_0.a.x, ~arg_0.a.x, _wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, 50257u, arg_2.a.x, 153813u) | vec4<u32>(6126u, arg_2.a.x, 19832u, arg_0.a.x)), arg_2.a ^ ~arg_2.e), ~abs(_wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(arg_2.a.x, arg_0.a.x))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    global2 = array<f32, 15>();
    var var_1 = Struct_1(func_4(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1833f, 1992f, arg_0.b)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_0.b - 1170f), 519f, _wgslsmith_f_op_f32(abs(arg_0.b))))), var_0), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 15u)], 1204f), var_0.c, ~(~(-(~vec2<i32>(-31380i, var_0.d.x)))), vec4<u32>(abs(4294967295u), ~7960u, arg_0.a.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.a.x, 1u, ~u_input.c), firstTrailingBit(_wgslsmith_mult_u32(84411u, var_0.e.x)))));
    global1 = vec4<bool>(global1.x, true, true, all(vec2<bool>(global1.x, false)));
    let var_2 = _wgslsmith_dot_vec3_u32(~(~(~arg_0.a.www) ^ _wgslsmith_mod_vec3_u32(~var_0.a.wxz, vec3<u32>(4294967295u, 0u, 25148u))), vec3<u32>(max(var_1.a.x, _wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.a.x, 0u), firstLeadingBit(0u))), 1u, ~(arg_0.a.x >> (0u % 32u))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 15u)])) - global2[_wgslsmith_index_u32(min(firstTrailingBit(0u), firstLeadingBit(u_input.a.x)), 15u)]) - _wgslsmith_f_op_f32(step(664f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 15u)]))))), _wgslsmith_div_f32(857f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 15u)]))) - -545f)));
    var var_1 = true;
    var var_2 = Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(func_1(Struct_1(vec4<u32>(55610u, u_input.c, 66865u, u_input.c), 515f, vec4<i32>(2147483647i, 0i, 17868i, -2147483647i), vec2<i32>(1i, -54308i), vec4<u32>(29614u, u_input.b, u_input.c, 4294967295u))), u_input.c, 0u, u_input.b), ~(~vec4<u32>(20880u, u_input.c, u_input.b, u_input.b) >> (select(vec4<u32>(u_input.c, 4294967295u, 31230u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.c, 25694u, u_input.a.x), false) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(1u, 15u)])), -vec4<i32>(1i, -33157i, ~(1i << (u_input.a.x % 32u)), -8847i), vec2<i32>(~(~(-1i)) | (~(-1i) << (abs(u_input.b) % 32u)), -(~0i)), reverseBits(vec4<u32>(u_input.b, 8271u, 1u, u_input.c & 1u)) >> (func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 15u)], 267f, global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<f32>(-1504f, 1010f, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], -994f, var_0.x)))).a % vec4<u32>(32u)));
    global0 = i32(-1i) * -(~(~firstTrailingBit(-2147483647i)));
    let var_3 = Struct_2(~(~countOneBits(vec4<u32>(46933u, 47500u, var_2.a.x, var_2.e.x)) >> (var_2.e % vec4<u32>(32u))), var_0.x, func_3(vec3<f32>(344f, var_2.b, _wgslsmith_f_op_f32(-var_0.x)), Struct_1(var_2.a, -1160f, -(~vec4<i32>(var_2.d.x, var_2.c.x, var_2.c.x, var_2.c.x)), var_2.c.yw, var_2.a), func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], 429f)))).c), global1.x && true);
    var var_4 = -select(vec2<i32>(var_2.c.x, var_3.c), abs(countOneBits(vec2<i32>(-33066i, var_3.c)) ^ ~vec2<i32>(-1i, var_3.c)), select(vec2<bool>(!var_3.d, true), select(!global1.xw, select(vec2<bool>(var_3.d, var_3.d), global1.zx, global1.yw), true), select(global1.yw, !global1.xz, select(global1.wx, vec2<bool>(var_3.d, true), vec2<bool>(false, true)))));
    let var_5 = _wgslsmith_sub_u32(~1u, ~var_3.a.x);
    let var_6 = select(!(!select(vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(var_3.d, global1.x, true, false), all(vec4<bool>(global1.x, true, true, var_3.d)))), !(!vec4<bool>(612f >= var_3.b, true, true, global1.x)), var_3.d);
    var var_7 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer((i32(-1i) * -abs(-2147483647i)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(var_2.d, var_2.c.yx), max(var_7.x, 1i), var_7.x | var_2.c.x, func_3(vec3<f32>(var_2.b, -321f, 1327f), Struct_1(vec4<u32>(30753u, 1u, 4294967295u, var_3.a.x), var_0.x, var_2.c, vec2<i32>(var_2.c.x, -51594i), vec4<u32>(var_5, u_input.b, u_input.a.x, var_2.e.x)), 82931i)), vec4<i32>(~1i, func_3(vec3<f32>(2209f, -1069f, -253f), Struct_1(vec4<u32>(u_input.a.x, var_2.a.x, var_2.a.x, 1u), -1477f, var_2.c, vec2<i32>(-40633i, 0i), vec4<u32>(4399u, var_5, 57208u, var_5)), 14153i), ~(-37211i), -1407i << (u_input.a.x % 32u))), var_3.a.x, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-343f, _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(min(var_3.b, var_0.x))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 15u)], 681f, var_3.b), vec3<f32>(var_2.b, global2[_wgslsmith_index_u32(26579u, 15u)], global2[_wgslsmith_index_u32(106651u, 15u)]))))).c);
}

