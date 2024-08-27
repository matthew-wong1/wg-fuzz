struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(2147483647i, -1i, -39968i, 51109i, 1i, 0i, -14351i, -52881i, -1027i, 20558i, 0i, i32(-2147483648));

var<private> global1: Struct_1;

var<private> global2: bool = false;

var<private> global3: array<Struct_3, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec3<bool>, arg_3: bool) -> i32 {
    let var_0 = ~abs(-(arg_1 & 0i));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1226f, _wgslsmith_f_op_f32(max(-598f, -1000f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-230f, -1021f)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-890f)) - -2661f), _wgslsmith_f_op_f32(-104f - _wgslsmith_f_op_f32(round(1741f))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * -541f), _wgslsmith_f_op_f32(f32(-1f) * -706f), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, -1626f, var_1.x), vec3<f32>(801f, -956f, -1709f), true)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(453f, 1668f, var_1.x), vec3<f32>(var_1.x, 299f, var_1.x)))), arg_2.x || any(vec3<bool>(false, arg_2.x, true)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1934f, var_1.x))))), !arg_2)));
    var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-439f - -1275f) * 1052f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - var_1.x), var_1.x))), _wgslsmith_f_op_vec3_f32(ceil(var_2.a)))));
    var var_3 = select(0u, 14442u, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1238f * var_1.x) + _wgslsmith_f_op_f32(-var_1.x))) < _wgslsmith_f_op_f32(776f - _wgslsmith_f_op_f32(var_1.x - 1636f)));
    return 0i;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !(!(true && (global1.b.x != -8583i)));
    let var_1 = Struct_3(4294967295u, vec4<bool>(!all(vec3<bool>(global1.a, global1.a, false)), true, 1i >= _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(80323u, 12u)], arg_2.b.x), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1i), u_input.b.xz)), all(!vec3<bool>(true, true, arg_2.a))), select(func_3(1i, u_input.a, vec3<bool>(arg_1, false, false), arg_2.a), 25066i, true));
    var var_2 = Struct_3(~_wgslsmith_add_u32(reverseBits(0u), 1u), select(select(select(var_1.b, select(vec4<bool>(false, arg_1, arg_1, global1.a), var_1.b, var_1.b), any(vec3<bool>(arg_2.a, arg_1, false))), !select(var_1.b, vec4<bool>(true, arg_2.a, false, true), global1.a), any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))), !vec4<bool>(true, -32746i >= arg_2.b.x, all(var_1.b), any(var_1.b.zx)), global1.a), _wgslsmith_mult_i32(_wgslsmith_add_i32(abs(abs(global0[_wgslsmith_index_u32(1u, 12u)])), func_3(var_1.c, -41917i, vec3<bool>(true, true, false), true) >> (var_1.a % 32u)), 21803i));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x - 1311f), _wgslsmith_f_op_f32(-arg_0.a.x))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -578f, arg_0.a.x, arg_0.a.x) - vec4<f32>(arg_0.a.x, 1009f, -788f, -412f))))))));
    let var_4 = arg_0.a.x == var_3.x;
    return Struct_1(false, reverseBits(vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, 13516i), 14730i, _wgslsmith_add_i32(-u_input.b.x, 19628i))));
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = false;
    var var_1 = false;
    var var_2 = global3[_wgslsmith_index_u32(~4294967295u, 10u)];
    var_0 = global1.a & arg_0.a;
    var var_3 = Struct_2(vec3<f32>(1515f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-555f, _wgslsmith_f_op_f32(548f - -2746f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(330f, 494f))))));
    return 1i;
}

fn func_1() -> StorageBuffer {
    var var_0 = vec3<i32>(1810i, reverseBits(_wgslsmith_mult_i32(_wgslsmith_add_i32(~u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(1u, 12u)])), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(~global0[_wgslsmith_index_u32(52210u, 12u)], ~global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(88887u, 12u)] << (101565u % 32u), _wgslsmith_mult_i32(1i, global1.b.x))), vec4<i32>(-_wgslsmith_sub_i32(global1.b.x, global1.b.x), -u_input.b.x | global1.b.x, 1i, func_4(func_2(Struct_2(vec3<f32>(-766f, -1179f, 1000f)), global1.a, Struct_1(global1.a, u_input.b))))));
    var var_1 = 271f;
    let var_2 = -1i;
    let var_3 = countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~reverseBits(4294967295u), ~1u, 1u)));
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1454f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-811f)))))));
    return StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -495f) + 776f))))), ~max(~1u, var_3) | _wgslsmith_mult_u32(var_3, max(1u, 62761u)), _wgslsmith_add_i32(-var_2 ^ global1.b.x, -52398i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(970f * 1320f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1692f))))), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(60982u, 26873u, 34728u)), firstLeadingBit(vec3<u32>(4440u, 1u, var_3))) & _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_3, var_3, var_3), vec3<u32>(70235u, var_3, var_3)), ~vec3<u32>(12689u, 1u, 13056u)), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_3, var_3, 37797u, 1u), vec4<u32>(var_3, 849u, var_3, var_3)), var_3, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = false;
    global0 = array<i32, 12>();
    let var_0 = Struct_1(any(vec2<bool>(true, true)), _wgslsmith_div_vec3_i32(global1.b, global1.b));
    let var_1 = Struct_1(var_0.a, -(~vec3<i32>(5205i, -25372i, global0[_wgslsmith_index_u32(71610u, 12u)]) | (reverseBits(var_0.b) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))));
    let var_2 = ~vec2<u32>(~(~_wgslsmith_mod_u32(26373u, 23027u)), max(1u, ~1u));
    var var_3 = global3[_wgslsmith_index_u32(var_2.x, 10u)];
    let x = u_input.a;
    s_output = func_1();
}

