struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30>;

var<private> global1: array<i32, 17>;

var<private> global2: array<Struct_1, 6>;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 0u, 0u, 19334u);

var<private> global4: array<u32, 26>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    global0 = array<vec2<bool>, 30>();
    var var_0 = Struct_1(select(arg_1.a, arg_1.a, arg_1.a));
    var var_1 = arg_0;
    var_1 = select(vec3<u32>(20791u, countOneBits(arg_0.x), 1u), ~(~vec3<u32>(1u, ~arg_0.x, select(0u, global4[_wgslsmith_index_u32(0u, 26u)], arg_1.a.x))), select(select(!vec3<bool>(arg_1.a.x, var_0.a.x, true), !vec3<bool>(true, true, arg_1.a.x), !var_0.a.x), select(select(vec3<bool>(arg_1.a.x, arg_1.a.x, false), !var_0.a, var_0.a.x), !(!vec3<bool>(var_0.a.x, false, false)), !select(arg_1.a, var_0.a, var_0.a)), true));
    let var_2 = _wgslsmith_f_op_f32(ceil(-1054f));
    return _wgslsmith_mult_u32(46568u, _wgslsmith_dot_vec2_u32(var_1.xx, vec2<u32>(~(41562u & global3.x), ~1u)));
}

fn func_2() -> i32 {
    var var_0 = vec3<u32>(~(func_3(~global3.yxw, Struct_1(vec3<bool>(true, true, true))) & global3.x), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(reverseBits(global3.x), 0u), select(global3.yw, global3.wy, true) & vec2<u32>(global4[_wgslsmith_index_u32(global3.x, 26u)], global3.x)), vec2<u32>(~_wgslsmith_dot_vec3_u32(global3.wzw, global3.yxx), ~global4[_wgslsmith_index_u32(34030u, 26u)] >> (global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global3.yzy, global3.zzz), 26u)] % 32u))), max(min(global3.x, global3.x), 0u));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(705f - -1215f)))));
    var var_2 = firstTrailingBit(vec3<i32>(firstTrailingBit(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(37053u, 17u)], u_input.a)), firstTrailingBit(_wgslsmith_mod_i32(u_input.a, 7566i)), ~(-global1[_wgslsmith_index_u32(var_0.x, 17u)])) | _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(2326u, 26u)], 17u)], 0i, global1[_wgslsmith_index_u32(1u, 17u)]), vec3<i32>(u_input.a, 2147483647i, -46561i)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.x, 26u)], 26u)], 17u)], 4198i), vec3<i32>(1i, 8757i, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.x, 26u)], 17u)]), vec3<i32>(u_input.a, 46796i, u_input.a))));
    var var_3 = -11893i ^ var_2.x;
    var_2 = vec3<i32>(countOneBits(u_input.a), ~u_input.a, -1i << (max(39842u, (var_0.x >> (global3.x % 32u)) >> (~var_0.x % 32u)) % 32u));
    return 9456i;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    var var_0 = -14510i;
    global2 = array<Struct_1, 6>();
    let var_1 = Struct_1(vec3<bool>(true, arg_2.a.x, arg_3));
    let var_2 = global2[_wgslsmith_index_u32(select(global3.x, global3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-205f, arg_0.x)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1044f, arg_0.x))))), 6u)];
    let var_3 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u & global4[_wgslsmith_index_u32(1u, 26u)], countOneBits(~4294967295u)), ~(~select(global3.wx, vec2<u32>(1u, global4[_wgslsmith_index_u32(global3.x, 26u)]), true)));
    return ~abs(~reverseBits(~vec4<u32>(global4[_wgslsmith_index_u32(var_3.x, 26u)], 0u, global4[_wgslsmith_index_u32(32705u, 26u)], var_3.x)));
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_dot_vec4_u32(func_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-983f, _wgslsmith_f_op_f32(661f * 1000f)))), func_2(), Struct_1(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)), true), vec4<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global3.wx, vec2<u32>(global3.x, 0u)), _wgslsmith_mult_vec2_u32(global3.yz, global3.zw)), ~min(0u, global3.x), _wgslsmith_add_u32(~0u & firstTrailingBit(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 26u)], 26u)]), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global3.xyx, ~global3.wxy), 26u)]), 1u));
    global4 = array<u32, 26>();
    global3 = reverseBits(abs(max(abs(select(vec4<u32>(25199u, global4[_wgslsmith_index_u32(global3.x, 26u)], 0u, 23075u), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24828u, 26u)], 26u)], 0u, global3.x, 0u), true)), _wgslsmith_div_vec4_u32(vec4<u32>(86187u, global3.x, 37425u, global3.x), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(global3.x, 26u)], 47141u, 0u)) >> (abs(vec4<u32>(1828u, global3.x, 214u, 67u)) % vec4<u32>(32u)))));
    global1 = array<i32, 17>();
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-209f)))))))));
    return vec3<i32>(~u_input.a, _wgslsmith_div_i32(u_input.a, 1i), global1[_wgslsmith_index_u32(31096u, 17u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(113409u, 6u)];
    global4 = array<u32, 26>();
    var var_1 = ~global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.x, ~(_wgslsmith_clamp_u32(33784u, 0u, 4294967295u) << (global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(38646u, 26u)], 26u)] % 32u))), 26u)];
    let var_2 = ~(max(vec3<i32>(40599i, 2147483647i, u_input.a) ^ -vec3<i32>(-20688i, -58465i, u_input.a), vec3<i32>(global1[_wgslsmith_index_u32(~0u, 17u)], -21802i, -1i)) ^ ~_wgslsmith_add_vec3_i32(func_1(), func_1()));
    let var_3 = vec3<f32>(1000f, _wgslsmith_f_op_f32(trunc(-1450f)), -2809f);
    let var_4 = Struct_1(!var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_3.x)), -1267f), ~(-var_2), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1256f - var_3.x) * _wgslsmith_f_op_f32(-var_3.x)), var_3.x, var_3.x, 441f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.x, 1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -182f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.x)) + _wgslsmith_f_op_f32(2180f * 1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))));
}

