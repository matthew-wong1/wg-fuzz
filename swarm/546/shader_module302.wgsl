struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec4<u32>, 8>;

var<private> global2: array<u32, 1>;

var<private> global3: f32;

var<private> global4: vec2<f32> = vec2<f32>(-110f, -749f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: Struct_4) -> vec3<i32> {
    let var_0 = vec2<u32>(firstTrailingBit(~countOneBits(~global2[_wgslsmith_index_u32(u_input.b.x, 1u)])), u_input.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -307f)), 1449f, _wgslsmith_f_op_f32(-global4.x)))));
    let var_2 = Struct_5(~(select(reverseBits(vec3<i32>(arg_1.x, u_input.e.x, u_input.e.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.e.x, arg_1.x), u_input.d.wyx), all(arg_2.yz)) | arg_1.yyx));
    var var_3 = Struct_5(vec3<i32>(-25211i, -(var_2.a.x << (26223u % 32u)) ^ arg_1.x, _wgslsmith_div_i32(arg_1.x, countOneBits(2147483647i) ^ (u_input.d.x & arg_1.x))));
    let var_4 = _wgslsmith_mod_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.e.x), var_2.a.yz), var_2.a.x, var_2.a.x, arg_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(35456i, 36761i, var_2.a.x, 1i), abs(u_input.d)) ^ vec4<i32>(max(u_input.d.x, u_input.e.x), min(arg_1.x, u_input.d.x), arg_1.x ^ var_2.a.x, u_input.d.x)) & -(~_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_1, u_input.d, arg_1), arg_1));
    return -arg_1.wwy;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> u32 {
    let var_0 = -1i;
    var var_1 = 35092i;
    var var_2 = arg_0.yww;
    var var_3 = !(!all(vec3<bool>(!arg_0.x, var_2.x, !arg_0.x)));
    let var_4 = Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(53589u, 1u)], 132788u), 54025u), 1u), vec2<u32>(global2[_wgslsmith_index_u32(~arg_1, 1u)] << (~0u % 32u), arg_1)), select(-func_3(var_2.x, max(vec4<i32>(u_input.d.x, u_input.d.x, 18662i, -1i), u_input.d), arg_0, Struct_4(true)), -(~vec3<i32>(0i, 2147483647i, u_input.d.x) | vec3<i32>(-1i, 5228i, var_0)), arg_0.xyz));
    return ~(~(_wgslsmith_mod_u32(var_4.a.x, abs(u_input.a)) ^ _wgslsmith_dot_vec3_u32(abs(u_input.b), vec3<u32>(var_4.a.x, arg_1, 37723u))));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_div_f32(-1057f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global4.x, global0.x, true))))));
    global0 = vec2<f32>(-204f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), 344f));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(~(~min(u_input.b.x, func_2(vec4<bool>(true, true, false, false), u_input.b.x))), 1u)], ~(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 32626u), vec4<u32>(global2[_wgslsmith_index_u32(21987u, 1u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30264u, 1u)], 1u)], global2[_wgslsmith_index_u32(1u, 1u)], u_input.b.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.c, 1u)], u_input.b.x, u_input.b.x), vec3<u32>(32018u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)])), 1u)], abs(u_input.b.x)) << ((max(global2[_wgslsmith_index_u32(248u, 1u)], 73920u) << (global2[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(4294967295u, 1u)], 44182u), 1u)] % 32u)) % 32u))), 1u)];
    let var_2 = Struct_4(929f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global4.x)) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-366f, -1000f)))));
    var var_3 = 1u;
    return ~u_input.d.x;
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(arg_3.a.x, 8u)];
    var_0 = vec4<u32>(min(u_input.c, var_0.x), global2[_wgslsmith_index_u32(var_0.x, 1u)], 5869u, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2(vec4<bool>(select(false, false, arg_2), !arg_1, global4.x >= -739f, true), arg_3.a.x), ~(func_2(vec4<bool>(arg_2, arg_2, arg_2, arg_1), arg_3.a.x) | ~3242u)), 1u)]);
    let var_1 = abs(u_input.e.xz);
    var var_2 = arg_3;
    var_2 = Struct_3(countOneBits(~var_0.xw), -vec3<i32>(-2147483647i, select(2147483647i, ~0i, false), abs(u_input.d.x)));
    return Struct_2(vec2<bool>(false, false), ~var_1.x >= _wgslsmith_sub_i32(var_2.b.x, 2147483647i), ~(~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(50748u, 1u)], 4294967295u << (global2[_wgslsmith_index_u32(u_input.b.x, 1u)] % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 1>();
    let var_0 = ~(global1[_wgslsmith_index_u32(33977u, 8u)] | select(~(~global1[_wgslsmith_index_u32(u_input.a, 8u)]), global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(29506u, 1u)], 8u)] | ~vec4<u32>(u_input.c, 1u, 33060u, 47792u), vec4<bool>(true, true, true, true)));
    let var_1 = func_4(Struct_5(vec3<i32>(_wgslsmith_mod_i32(~(-3677i), func_1()), 2147483647i, firstLeadingBit(firstLeadingBit(1i)))), u_input.e.x == u_input.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.d, -vec4<i32>(1i, u_input.e.x, u_input.d.x, 4959i)), ~vec4<i32>(u_input.e.x, -24787i, -1i, u_input.e.x)) > (u_input.e.x & u_input.d.x), Struct_3(var_0.zz, vec3<i32>(u_input.d.x, ~1i, 31825i)));
    var var_2 = _wgslsmith_f_op_f32(trunc(global0.x));
    var var_3 = var_1;
    let var_4 = ~abs(23898u);
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-219f, 878f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -523f) + -523f))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, global4.x) * -1358f);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, u_input.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-187f, _wgslsmith_f_op_f32(global4.x - -486f))))), 2147483647i, ~u_input.d.x);
}

