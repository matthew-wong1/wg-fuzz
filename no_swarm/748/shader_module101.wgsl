struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: bool,
    d: vec2<u32>,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 15>;

var<private> global2: vec2<i32> = vec2<i32>(-56729i, -76266i);

var<private> global3: array<i32, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = Struct_1((i32(-1i) * -46611i) & _wgslsmith_div_i32(~(u_input.e.x | 0i), -1i), countOneBits(~vec3<i32>(global2.x, global3[_wgslsmith_index_u32(34860u, 23u)] ^ global2.x, _wgslsmith_clamp_i32(-25370i, global2.x, 2147483647i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 425f) * _wgslsmith_f_op_f32(floor(-370f))) - _wgslsmith_f_op_f32(round(-875f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1398f - -1253f)) + _wgslsmith_f_op_f32(-1026f - _wgslsmith_f_op_f32(f32(-1f) * -1357f))), true)), _wgslsmith_clamp_i32((~(-2481i) >> (u_input.a % 32u)) | ~global2.x, ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, -2147483647i, 0i), -2147483647i >> (u_input.a % 32u)), 1i));
    var var_1 = Struct_3(vec3<u32>(reverseBits(0u), ~firstTrailingBit(~4294967295u), u_input.a), Struct_1(_wgslsmith_div_i32(countOneBits(-1i) | (59997i & global2.x), -abs(global3[_wgslsmith_index_u32(u_input.a, 23u)])), -var_0.b, var_0.c, var_0.a), global2.x);
    var var_2 = Struct_4(!(!(!all(vec4<bool>(false, false, true, true)))));
    global0 = abs(1u);
    let var_3 = 4294967295u;
    return -u_input.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = func_3();
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.c, 338f, -1000f))))))));
    let var_2 = Struct_1(_wgslsmith_div_i32(min(1i, _wgslsmith_add_i32(arg_1.x, u_input.e.x)), 1i & _wgslsmith_add_i32(var_0, u_input.c)) | _wgslsmith_div_i32(2147483647i, i32(-1i) * -21629i), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(select(arg_2.b.b, arg_2.b.b, !vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_2.b.b), -(~max(vec3<i32>(0i, global2.x, arg_2.b.d), vec3<i32>(global2.x, arg_1.x, global3[_wgslsmith_index_u32(49335u, 23u)])))), -2050f, arg_2.c);
    var var_3 = Struct_2(1000f, true, false, abs(~vec2<u32>(arg_2.a.x, ~1u)), arg_0.x);
    let var_4 = _wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(u_input.a, 53610u), arg_2.a.x, u_input.a), min(select(~vec3<u32>(var_3.d.x, arg_2.a.x, 0u), countOneBits(firstTrailingBit(vec3<u32>(1u, 4294967295u, 25170u))), false), vec3<u32>(~var_3.d.x, arg_2.a.x, arg_2.a.x)));
    return min(vec4<u32>(~(var_4.x ^ ~u_input.a), ~(~var_3.d.x), 39049u, 10384u), firstTrailingBit(~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, arg_2.a.x, 0u, arg_2.a.x), vec4<u32>(arg_2.a.x, 0u, 66680u, 4294967295u)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<u32>) -> vec2<i32> {
    var var_0 = vec3<bool>(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(147f, -271f)))) <= -655f, !(u_input.c != -3599i));
    global1 = array<vec4<bool>, 15>();
    return u_input.e.yx;
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(global3[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_clamp_vec3_i32(u_input.b.wxz ^ _wgslsmith_div_vec3_i32(u_input.e, ~vec3<i32>(2147483647i, -6281i, global2.x)), vec3<i32>(global2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -35325i, u_input.e.x, -2147483647i), u_input.b), countOneBits(u_input.b.x)), u_input.e), 1261f, _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.e.xz << (max(vec2<u32>(u_input.a, 27064u), vec2<u32>(100509u, 51484u)) % vec2<u32>(32u))), func_4(vec2<u32>(u_input.a, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1810f, 869f)), func_2(vec3<bool>(true, false, false), vec2<i32>(u_input.b.x, global2.x), Struct_3(vec3<u32>(0u, 0u, u_input.a), Struct_1(global3[_wgslsmith_index_u32(6869u, 23u)], u_input.e, -1353f, global3[_wgslsmith_index_u32(54678u, 23u)]), -34578i)) ^ vec4<u32>(u_input.a, 14040u, u_input.a, 122055u))));
    let var_1 = _wgslsmith_mod_vec3_u32(~(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 539u, u_input.a)), ~vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 63538u, 74271u)) ^ firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 63790u, u_input.a), vec3<u32>(0u, u_input.a, 0u)))), ~vec3<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), (u_input.a & u_input.a) << (0u % 32u), ~u_input.a));
    global1 = array<vec4<bool>, 15>();
    return Struct_3(vec3<u32>(1u, var_1.x, 12138u), Struct_1(_wgslsmith_mult_i32(-global2.x, abs(47384i)) & (-21213i >> (firstTrailingBit(84851u) % 32u)), _wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.e.x, 0i, global2.x)) >> ((var_1 ^ vec3<u32>(0u, 0u, 19626u)) % vec3<u32>(32u)), var_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.c)), 310f)), var_0.c), 2147483647i), u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    let var_0 = func_1();
    global1 = array<vec4<bool>, 15>();
    global0 = ~(~(firstTrailingBit(0u) & ~func_1().a.x));
    global0 = ~(~(u_input.a & _wgslsmith_mult_u32(~var_0.a.x, u_input.a & u_input.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1411f, 1925f, false)))), 1881f, _wgslsmith_f_op_f32(max(1745f, _wgslsmith_f_op_f32(602f * _wgslsmith_f_op_f32(var_0.b.c + var_0.b.c))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1234f, 110f, 965f) + vec3<f32>(var_0.b.c, -917f, -716f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~firstTrailingBit(var_0.a.x), var_0.a.x), var_0.b.c, ~select(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.a, vec3<u32>(0u, 1u, var_0.a.x)), vec3<u32>(u_input.a, u_input.a, u_input.a), var_0.a), min(vec3<u32>(var_0.a.x, 0u, var_0.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 24995u, var_0.a.x), vec3<u32>(4294967295u, 0u, var_0.a.x))), !(2147483647i <= u_input.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_0.b.c) - vec2<f32>(var_0.b.c, 162f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.c, -198f) * _wgslsmith_f_op_vec2_f32(-var_1.xx))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(634f, 115f)), _wgslsmith_f_op_f32(var_0.b.c + _wgslsmith_f_op_f32(-var_1.x)))));
}

