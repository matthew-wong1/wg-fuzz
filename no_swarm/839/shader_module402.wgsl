struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(342f, 2309f), vec2<f32>(1673f, -1038f), vec2<f32>(802f, 938f), vec2<f32>(1014f, -1000f), vec2<f32>(798f, 331f), vec2<f32>(1334f, 1283f), vec2<f32>(-1262f, 1850f), vec2<f32>(-482f, 228f), vec2<f32>(312f, 1130f), vec2<f32>(-765f, 1617f), vec2<f32>(-452f, -1504f), vec2<f32>(-1000f, 508f));

var<private> global1: array<Struct_1, 18>;

var<private> global2: vec2<i32> = vec2<i32>(67536i, i32(-2147483648));

var<private> global3: vec4<i32>;

var<private> global4: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    let var_0 = Struct_1((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1862f) - _wgslsmith_f_op_f32(min(-1052f, -1065f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-661f * -233f) - _wgslsmith_f_op_f32(ceil(-791f)))) & true, (vec4<u32>(_wgslsmith_mod_u32(u_input.e, 8014u), max(arg_1.b.x, u_input.c), min(arg_1.b.x, arg_1.b.x), ~arg_1.b.x) | arg_1.b) | arg_1.b);
    global3 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, _wgslsmith_clamp_i32(-18204i, abs(7960i), 1i), global3.x, _wgslsmith_mult_i32(~abs(global3.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, global2.x), vec2<i32>(-3576i, 0i)), -28545i))), _wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(global3.x, global2.x, global2.x, u_input.b.x)), vec4<i32>(_wgslsmith_div_i32(2147483647i, global3.x), firstTrailingBit(-43127i), 33502i & global3.x, _wgslsmith_dot_vec2_i32(u_input.b, global3.xx)), min(select(vec4<i32>(-2147483647i, global3.x, -336i, global3.x), vec4<i32>(0i, u_input.a, -1i, -1i), arg_0), _wgslsmith_sub_vec4_i32(vec4<i32>(1625i, -1i, global2.x, -1i), vec4<i32>(u_input.a, global2.x, 0i, global2.x)))) & firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(global2.x, 12319i), _wgslsmith_div_i32(global2.x, global2.x), u_input.b.x, ~global3.x)));
    let var_1 = ~1i & _wgslsmith_add_i32(-2147483647i, _wgslsmith_clamp_i32(-1i, abs(firstLeadingBit(0i)), global2.x));
    var var_2 = Struct_1(arg_2, ~abs(select(vec4<u32>(arg_1.b.x, u_input.c, 19680u, 30839u), vec4<u32>(4347u, 4294967295u, 0u, 4294967295u), arg_0)) & arg_1.b);
    var var_3 = vec4<i32>(u_input.b.x, -20410i, global2.x, ~20112i);
    return -abs(vec4<i32>(-1i) * -vec4<i32>(var_1, var_3.x, 1i, var_1)) << (~vec4<u32>(0u, var_2.b.x, 58051u, ~_wgslsmith_sub_u32(27914u, u_input.c)) % vec4<u32>(32u));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> u32 {
    global3 = -func_3(vec4<bool>(arg_1.a, true, !arg_1.a, false), global1[_wgslsmith_index_u32(arg_1.b.x, 18u)], false);
    global4 = array<vec2<bool>, 26>();
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 18u)];
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(~arg_1.b.x), 18u)];
    var var_2 = global2.x;
    return 12533u;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<i32>) -> f32 {
    var var_0 = -1i >> ((_wgslsmith_div_u32(~4294967295u, arg_1.b.x) >> (func_2(reverseBits(u_input.c), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.b.x, ~u_input.e), 18u)], -27234i) % 32u)) % 32u);
    let var_1 = firstLeadingBit(_wgslsmith_add_vec4_u32(~arg_1.b, ~(~firstTrailingBit(vec4<u32>(16128u, u_input.d, u_input.e, u_input.e)))));
    let var_2 = !(!(!(_wgslsmith_f_op_f32(step(-1063f, 571f)) >= -743f)));
    var var_3 = Struct_1(arg_2, vec4<u32>(_wgslsmith_mult_u32(53385u, firstTrailingBit(var_1.x)) << (_wgslsmith_mult_u32(u_input.c, 1u) % 32u), _wgslsmith_dot_vec2_u32(~arg_1.b.yy, var_1.zx), ~4294967295u, arg_1.b.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-686f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) + _wgslsmith_f_op_f32(1709f - 542f)) - _wgslsmith_f_op_f32(abs(-1072f))), _wgslsmith_f_op_f32(284f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 1348f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2151f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1321f * -330f), 1687f), _wgslsmith_f_op_f32(1829f - 461f))));
    return var_4.x;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> StorageBuffer {
    var var_0 = ~u_input.d;
    let var_1 = Struct_1(true, ~(~_wgslsmith_mod_vec4_u32(arg_2.b, reverseBits(vec4<u32>(16943u, arg_2.b.x, arg_2.b.x, 0u)))));
    var var_2 = var_1;
    global3 = vec4<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global3.yx, u_input.b), ~global3.wz)) << ((var_2.b.x & firstTrailingBit(arg_2.b.x)) % 32u), u_input.b.x, -1828i);
    global0 = array<vec2<f32>, 12>();
    return StorageBuffer(vec3<f32>(arg_1.x, arg_1.x, -282f), -655f, abs(select(max(global3.xww, abs(global3.wwx)), global3.yzw, true | (arg_2.b.x > 75170u))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<bool>, 26>();
    let var_0 = vec3<bool>(true, all(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), all(vec2<bool>(false, true)))), true);
    global2 = firstLeadingBit(firstLeadingBit(countOneBits(u_input.b & (global3.wy << (vec2<u32>(u_input.e, 0u) % vec2<u32>(32u))))));
    let var_1 = countOneBits(u_input.c);
    var var_2 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(max(~vec4<i32>(global2.x, -51597i, global3.x, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(60187i, global3.x, global3.x, -23806i), vec4<i32>(-1i, global3.x, 2147483647i, u_input.a))), -(~vec4<i32>(u_input.a, u_input.b.x, 66932i, global3.x))), max(select(-global2.x, 36609i, true), -1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global3.xxx, vec3<i32>(0i, u_input.b.x, 0i)), global2.x), ~(-global2.x));
    let x = u_input.a;
    s_output = func_4(true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(277f, 734f)), _wgslsmith_f_op_f32(func_1(var_0, global1[_wgslsmith_index_u32(25692u, 18u)], true, var_2.xz))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(326f + 727f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-110f + -734f), -390f)) + -260f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(880f - -168f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-999f, 1956f))), 1u > (99126u ^ u_input.e))), -546f), global1[_wgslsmith_index_u32(max(45146u, _wgslsmith_mod_u32(6484u << (u_input.c % 32u), select(62779u, var_1, var_0.x)) | 80898u), 18u)], var_0.x);
}

