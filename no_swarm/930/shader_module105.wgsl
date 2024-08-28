struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<vec2<bool>, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-275f, _wgslsmith_f_op_f32(-485f * 702f), -753f, -190f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(251f, 876f, -589f, _wgslsmith_f_op_f32(min(-565f, 675f))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1564f)), _wgslsmith_f_op_f32(step(-1920f, 1783f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-539f * 1330f), _wgslsmith_f_op_f32(287f + -207f)))), -1041f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -334f)))), 1000f)));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, -1007f), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))) + -1000f)), _wgslsmith_add_vec4_i32(u_input.d, u_input.d));
    global0 = array<u32, 5>();
    let var_2 = Struct_2(Struct_1(-145f, ~vec4<i32>(_wgslsmith_clamp_i32(var_1.b.x, var_1.b.x, 2147483647i), arg_0.x, ~u_input.d.x, var_1.b.x << (1u % 32u))), ~u_input.a, -u_input.d, 29720u);
    var var_3 = select(28977u, ~(~4294967295u), true);
    return 4294967295u;
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_2 {
    let var_0 = -1941f;
    global0 = array<u32, 5>();
    var var_1 = ~1i;
    var var_2 = 1i;
    var_1 = u_input.d.x;
    return Struct_2(Struct_1(_wgslsmith_div_f32(var_0, -649f), vec4<i32>(u_input.e, -48157i, 8024i, -(2147483647i ^ u_input.d.x))), u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(9397i, u_input.d.x), u_input.d.x, abs(u_input.e), ~2764i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 0i, 7406i, 35462i), u_input.d >> (vec4<u32>(1u, u_input.b.x, arg_1, 1u) % vec4<u32>(32u)))) >> (vec4<u32>(25838u, 29465u, func_3(u_input.d.xw), ~(~21536u)) % vec4<u32>(32u)), _wgslsmith_add_u32(abs(arg_0), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(47696u, 21551u), vec2<u32>(global0[_wgslsmith_index_u32(1060u, 5u)], 4294967295u)) ^ _wgslsmith_mult_vec2_u32(u_input.a.wz, vec2<u32>(u_input.a.x, 1u)), vec2<u32>(u_input.c.x, _wgslsmith_add_u32(u_input.a.x, arg_1)))));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = func_2(0u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(reverseBits(1u), 5u)], global0[_wgslsmith_index_u32(~u_input.a.x, 5u)]));
    let var_1 = firstLeadingBit(firstTrailingBit(vec2<i32>(-var_0.a.b.x, u_input.e))) >> (u_input.a.yz % vec2<u32>(32u));
    var var_2 = func_2(firstTrailingBit(0u), ~4294967295u);
    let var_3 = false;
    var var_4 = 138328u;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(countOneBits(~(~u_input.b)));
    var var_1 = func_1(u_input.e);
    global0 = array<u32, 5>();
    var var_2 = -1136f;
    var var_3 = vec3<i32>(1i, _wgslsmith_mod_i32(select(u_input.e, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.e, u_input.e), u_input.e), true), -1i), u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(~(min(max(var_0.x, 42500u), ~28463u) >> (~_wgslsmith_sub_u32(var_0.x, 0u) % 32u)), global0[_wgslsmith_index_u32(46274u, 5u)], 2147483647i);
}

