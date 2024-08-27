struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1394f;

var<private> global1: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-1032f, -742f, 390f), vec3<f32>(2228f, 1522f, -315f), vec3<f32>(343f, 620f, -1142f), vec3<f32>(-1889f, -240f, 2655f), vec3<f32>(-228f, 1548f, 1000f), vec3<f32>(-1000f, 227f, 878f), vec3<f32>(-1000f, 1712f, -1940f));

var<private> global2: array<vec2<i32>, 2>;

var<private> global3: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global4: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    global0 = global4.a;
    global0 = _wgslsmith_f_op_f32(-794f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4.a)) - _wgslsmith_f_op_f32(global4.a + -118f)))));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(arg_0 * -103f), global4.b);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(min(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(2419u, 7u)])))), vec3<f32>(_wgslsmith_f_op_f32(var_0.a + global4.a), _wgslsmith_f_op_f32(select(-678f, global4.a, arg_2)), -755f), vec3<bool>(!global4.b, !global4.b, global4.a <= -1000f)))), select(~vec2<i32>(u_input.b, max(u_input.d, u_input.d)), firstLeadingBit(vec2<i32>(u_input.d, u_input.b)), vec2<bool>(var_0.b, !arg_1.x)), vec2<bool>(false, !(-u_input.d <= (u_input.b | 13926i))), _wgslsmith_div_vec4_i32(~vec4<i32>(-27585i, u_input.d, -593i, 1i) >> ((vec4<u32>(4294967295u, u_input.c.x, 66374u, 4294967295u) >> (vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b)), u_input.d >> (u_input.a.x % 32u), i32(-1i) * -36141i, select(15812i, u_input.b, arg_2))) << ((~reverseBits(vec4<u32>(u_input.c.x, u_input.a.x, 0u, u_input.a.x)) & _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 89808u, u_input.a.x, u_input.a.x), vec4<u32>(73243u, 1u, u_input.a.x, 58785u)), vec4<u32>(0u, u_input.c.x, u_input.a.x, 3670u) ^ vec4<u32>(u_input.a.x, u_input.c.x, 0u, 37046u))) % vec4<u32>(32u)));
    global2 = array<vec2<i32>, 2>();
    return _wgslsmith_sub_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(max(u_input.a.xx, u_input.a.yy), vec2<u32>(u_input.c.x, 25191u)), u_input.a.x), 0u >> (_wgslsmith_div_u32(1u | ~u_input.a.x, abs(u_input.c.x) >> (firstLeadingBit(81272u) % 32u)) % 32u));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.a), _wgslsmith_f_op_f32(-global4.a))))));
    global4 = Struct_3(466f, false);
    var var_1 = _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(0u, u_input.c.x, 0u, u_input.a.x)) ^ ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u), ~(vec4<u32>(10444u, u_input.a.x, u_input.c.x, 0u) | vec4<u32>(1u, u_input.c.x, u_input.a.x, u_input.a.x))), countOneBits(abs(vec4<u32>(10585u, _wgslsmith_add_u32(u_input.c.x, u_input.a.x), func_3(global4.a, global3[_wgslsmith_index_u32(38053u, 24u)], true), _wgslsmith_add_u32(30964u, u_input.a.x)))));
    var var_2 = countOneBits(_wgslsmith_mod_i32(u_input.b, -13798i));
    let var_3 = Struct_3(global4.a, global4.b);
    return var_3;
}

fn func_1() -> Struct_3 {
    global2 = array<vec2<i32>, 2>();
    let var_0 = countOneBits(u_input.d);
    var var_1 = true;
    var var_2 = Struct_3(1000f, false);
    var var_3 = global2[_wgslsmith_index_u32(firstTrailingBit(1u), 2u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    global1 = array<vec3<f32>, 7>();
    var var_1 = func_1();
    var var_2 = Struct_3(func_2().a, global4.b);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a, var_1.a, _wgslsmith_f_op_f32(-var_2.a)))), firstTrailingBit(vec2<i32>(u_input.d, reverseBits(u_input.b)) & abs(global2[_wgslsmith_index_u32(~u_input.a.x, 2u)])), select(vec2<bool>(true, true), select(global3[_wgslsmith_index_u32(select(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(2081u, 28781u, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, 26955u, 62876u, 0u)), true), 24u)], global3[_wgslsmith_index_u32(~6323u, 24u)], !var_1.b), func_1().b), _wgslsmith_sub_vec4_i32(-select(vec4<i32>(2147483647i, u_input.b, 0i, u_input.b) << (vec4<u32>(0u, 20533u, u_input.c.x, 49836u) % vec4<u32>(32u)), select(vec4<i32>(u_input.b, 2147483647i, u_input.d, -1i), vec4<i32>(u_input.b, -2147483647i, -41281i, 0i), true), select(vec4<bool>(global4.b, var_2.b, global4.b, false), vec4<bool>(var_2.b, var_2.b, true, false), var_2.b)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -2757i, u_input.b, u_input.d), vec4<i32>(1i, 0i, u_input.d, u_input.b) >> (vec4<u32>(14455u, 18394u, u_input.a.x, 0u) % vec4<u32>(32u))), _wgslsmith_add_i32(firstLeadingBit(u_input.d), u_input.b | -2147483647i), 1i, 11617i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d, var_3.a.zz, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1694f) + _wgslsmith_f_op_f32(var_1.a * var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1040f)))), _wgslsmith_f_op_f32(f32(-1f) * -1533f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-189f - global4.a)) - -727f)), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), u_input.a.x));
}

