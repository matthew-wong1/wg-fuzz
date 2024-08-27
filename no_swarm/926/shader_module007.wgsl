struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> f32 {
    let var_0 = vec3<bool>(true, !((arg_1.b | _wgslsmith_mult_u32(22910u, 61079u)) <= select(max(u_input.e.x, 1u), select(u_input.e.x, arg_1.b, arg_0), arg_1.a)), arg_0);
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-692f, -541f))), vec2<f32>(-566f, 1000f), false)))));
    var var_2 = ~vec4<i32>(-23260i, firstTrailingBit(-16161i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3, u_input.c, -28706i, 279i), vec4<i32>(arg_3, 28468i, u_input.b, arg_3)), abs(vec4<i32>(29826i, 5709i, 1i, arg_2))), abs(vec4<i32>(1i, 42879i, 5727i, u_input.c)) | -vec4<i32>(36113i, -27829i, 0i, arg_3)), ~u_input.b);
    global0 = array<Struct_4, 30>();
    var_2 = vec4<i32>(var_2.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(max(-3211i, -2147483647i), 0i), vec2<i32>(i32(-1i) * -37549i, ~arg_3)), arg_3, _wgslsmith_clamp_i32(arg_2, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -14465i) | vec2<i32>(-1435i, u_input.c), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_2.x) ^ vec2<i32>(arg_2, u_input.c), vec2<i32>(1i, var_2.x))), var_2.x));
    return -316f;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(arg_1.d, Struct_1(false, 1u), arg_1.e.x, ~(-(arg_2 ^ _wgslsmith_div_i32(arg_1.e.x, -1i)))));
    var var_1 = -abs(vec3<i32>(countOneBits(_wgslsmith_mult_i32(arg_2, -2147483647i)), 2147483647i, -firstLeadingBit(-34270i)));
    var var_2 = vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -667f);
    let var_3 = global0[_wgslsmith_index_u32(~4294967295u, 30u)];
    let var_4 = firstLeadingBit(~max(vec2<i32>(arg_1.a, arg_2) ^ arg_1.e.yx, var_1.zy));
    return _wgslsmith_add_i32(-56972i, ~(-1i << (0u % 32u)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_1 {
    global0 = array<Struct_4, 30>();
    global0 = array<Struct_4, 30>();
    var var_0 = abs(_wgslsmith_mult_u32(15322u, arg_2.c.x));
    let var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(arg_2.c.x, arg_3.x, arg_2.c.x), select(4294967295u, 0u, true), ~11318u) >> (arg_2.c.xxz % vec3<u32>(32u)), ~select(arg_2.c.www, arg_3, any(vec4<bool>(arg_2.d, arg_2.b.x, arg_2.d, false))));
    var var_2 = u_input.b;
    return Struct_1(arg_2.b.x, 2699u);
}

fn func_1() -> StorageBuffer {
    global0 = array<Struct_4, 30>();
    var var_0 = func_4(-_wgslsmith_mod_i32(u_input.b, ~func_2(-1000f, Struct_3(0i, vec3<bool>(false, true, true), vec4<u32>(u_input.d, 4294967295u, u_input.d, 1u), false, vec3<i32>(-29507i, 19805i, 0i)), -2147483647i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1612f, 164f)), 1f))), Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.b, firstTrailingBit(u_input.b), _wgslsmith_add_i32(u_input.c, u_input.c), u_input.c), max(vec4<i32>(-39141i, -26198i, u_input.b, 1i), vec4<i32>(u_input.b, 1i, u_input.b, 0i))), vec3<bool>(true, _wgslsmith_f_op_f32(func_3(false, Struct_1(false, 84686u), 1i, -8549i)) != _wgslsmith_f_op_f32(min(1263f, 613f)), !any(vec4<bool>(true, true, true, true))), u_input.a, true, ~vec3<i32>(i32(-1i) * -2147483647i, 0i, ~u_input.c)), ~(abs(vec3<u32>(u_input.a.x, 53399u, 34545u) ^ vec3<u32>(u_input.e.x, u_input.d, 28518u)) & ~(~vec3<u32>(87198u, 0u, u_input.e.x))));
    var var_1 = true;
    let var_2 = Struct_1(false, min(~1052u, _wgslsmith_sub_u32(~(106067u ^ u_input.e.x), u_input.e.x)));
    var_1 = !(!(!all(vec4<bool>(false, var_2.a, false, var_0.a)))) & !var_2.a;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(232f, 1000f, -1000f, _wgslsmith_f_op_f32(min(-1000f, 734f))))), u_input.a, u_input.c, 1u & _wgslsmith_add_u32(~abs(4294967295u), _wgslsmith_add_u32(~u_input.a.x, u_input.e.x << (72767u % 32u))), _wgslsmith_add_vec3_u32(u_input.a.zwx, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u >> (u_input.e.x % 32u), var_2.b, abs(4294967295u)), u_input.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let x = u_input.a;
    s_output = func_1();
}

