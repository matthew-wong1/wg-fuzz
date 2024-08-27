struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(79143u, 0u, 4294967295u));

var<private> global1: array<vec4<i32>, 5>;

var<private> global2: u32;

var<private> global3: array<vec2<i32>, 18>;

var<private> global4: Struct_3 = Struct_3(Struct_1(vec3<u32>(1u, 60529u, 0u)), Struct_1(vec3<u32>(4294967295u, 1u, 639u)), 0u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> vec3<u32> {
    var var_0 = Struct_4(~reverseBits(u_input.b >> (45302u % 32u)) & max(~23266i | (u_input.b & u_input.c), abs(u_input.c)), -24238i);
    let var_1 = Struct_2(!vec4<bool>(false, true, false, any(vec3<bool>(true, true, false))), Struct_1(reverseBits(reverseBits(select(global0.a, vec3<u32>(0u, global0.a.x, 1u), true)))));
    var var_2 = false;
    global1 = array<vec4<i32>, 5>();
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(463f - -377f), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x) + vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 1668f)) * _wgslsmith_f_op_f32(max(1266f, _wgslsmith_f_op_f32(f32(-1f) * -970f)))), -570f));
    return reverseBits(~(~_wgslsmith_sub_vec3_u32(u_input.a & u_input.a, var_1.b.a)));
}

fn func_2(arg_0: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(902f - -1165f)), _wgslsmith_f_op_f32(round(1103f)))));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, 1i, 2147483647i) >> (func_3(vec3<f32>(1000f, -314f, -388f), global0.a.x) % vec3<u32>(32u)), -vec3<i32>(u_input.b, 2147483647i, u_input.c)), ~_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c, u_input.b, -9562i), vec3<i32>(2147483647i, u_input.b, u_input.c))), _wgslsmith_div_i32(-21073i, u_input.c));
    let var_2 = Struct_1(vec3<u32>(u_input.a.x, 1u, _wgslsmith_mod_u32(0u, u_input.a.x)));
    var var_3 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2096f, -1259f)) + 499f) <= -879f) | true;
    var var_4 = Struct_4(~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -9606i, -47877i, -2147483647i), vec4<i32>(1i, var_1, 1i, var_1)), vec4<i32>(u_input.c, u_input.c, u_input.b, u_input.b) >> (vec4<u32>(45440u, u_input.a.x, 92713u, 4294967295u) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(1u, 5u)]), select(-55411i, -min(_wgslsmith_div_i32(u_input.c, var_1), ~var_1), false && arg_0));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -159f))) - 1771f) - 568f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1637f - 145f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(844f, _wgslsmith_f_op_f32(f32(-1f) * -2155f))) * _wgslsmith_f_op_f32(f32(-1f) * -597f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(849f * _wgslsmith_f_op_f32(step(-1648f, -812f))), 481f, true)))));
}

fn func_1(arg_0: f32, arg_1: i32) -> vec4<f32> {
    var var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), !any(vec2<bool>(true, false))));
    var var_1 = vec3<bool>(all(select(select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, true), var_0.x), select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(true, true, false, var_0.x), var_0.x), any(vec2<bool>(false, var_0.x)))) || select(all(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true))), var_0.x, false), true, true);
    var_0 = vec3<bool>(var_0.x, all(!vec3<bool>(true, !var_0.x, var_0.x)), var_0.x);
    global1 = array<vec4<i32>, 5>();
    let var_2 = Struct_4(i32(-1i) * -_wgslsmith_mult_i32(~2854i, u_input.c), arg_1);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1600f, arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0), arg_0)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_0, -2004f, -1073f, arg_0), var_1.x)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_0, arg_0, arg_0, arg_0))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-379f, arg_0, arg_0, arg_0), vec4<f32>(arg_0, 2571f, arg_0, -209f))) + _wgslsmith_f_op_vec4_f32(func_2(var_0.x))) + vec4<f32>(arg_0, -1336f, _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) * _wgslsmith_f_op_f32(1000f + 1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 5>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -203f))), _wgslsmith_sub_i32(-1i, reverseBits(u_input.b) | (u_input.c & u_input.c)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))));
    global2 = global4.c;
    global4 = Struct_3(global4.a, Struct_1(u_input.a | ~(~vec3<u32>(14283u, 29302u, u_input.a.x))), 30619u);
    var var_1 = var_0.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_0.xz), global1[_wgslsmith_index_u32(firstTrailingBit(~u_input.a.x), 5u)], 13265i, abs(global3[_wgslsmith_index_u32(countOneBits(abs(_wgslsmith_div_u32(u_input.a.x, 0u))), 18u)]));
}

