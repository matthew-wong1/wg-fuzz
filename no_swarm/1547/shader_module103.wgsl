struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, -523f)))), Struct_1(0i, ~11097i ^ (arg_0.c.a & arg_0.b.a), u_input.b.zz), arg_0.c, select(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.a, 0u, u_input.a, u_input.b.x)), ~(~u_input.b), vec4<u32>(17322u, u_input.a, arg_0.d.x, u_input.a) << (~arg_0.d % vec4<u32>(32u))), select(min(countOneBits(vec4<u32>(5411u, 2449u, 22006u, u_input.a)), ~u_input.b), u_input.b | vec4<u32>(arg_0.d.x, 5411u, arg_0.e, 1u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true))), (_wgslsmith_sub_u32(1u, arg_0.e) & 113897u) < _wgslsmith_div_u32(~60016u, _wgslsmith_mult_u32(29775u, u_input.a))), abs(max(79615u, 76116u)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), arg_0.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, 1079f)))), -1871f, var_0.a) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, -876f)))))));
    var_2 = vec3<f32>(293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), 398f);
    var var_3 = var_1.x;
    return 0u;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x))))), arg_0, arg_0, _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(4294967295u, u_input.b.x), arg_0.c.x, ~arg_0.c.x, 63608u), ~u_input.b, u_input.b), ~(1u >> (u_input.b.x % 32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 + vec4<f32>(var_0.a, var_0.a, -1160f, -1239f)))))));
    global0 = array<vec2<i32>, 1>();
    global0 = array<vec2<i32>, 1>();
    var var_2 = true;
    return -2147483647i;
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    global0 = array<vec2<i32>, 1>();
    global0 = array<vec2<i32>, 1>();
    var var_0 = _wgslsmith_mult_vec4_u32(firstLeadingBit(u_input.b ^ vec4<u32>(_wgslsmith_div_u32(u_input.a, 4294967295u), ~30680u, func_2(Struct_2(122f, Struct_1(15436i, -39617i, vec2<u32>(arg_0.x, arg_0.x)), Struct_1(-2147483647i, 2147483647i, vec2<u32>(arg_0.x, arg_0.x)), u_input.b, 0u)), 1u)), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(abs(arg_0.x), 4294967295u, reverseBits(u_input.b.x), countOneBits(u_input.b.x))), u_input.b));
    let var_1 = Struct_1(-abs(6343i), _wgslsmith_clamp_i32(-13705i << (0u % 32u), -24666i ^ _wgslsmith_mult_i32(-4167i, func_3(Struct_1(5257i, 2147483647i, vec2<u32>(0u, 36319u)), false, vec4<f32>(-846f, 330f, 758f, 207f))), 25719i), ~select(vec2<u32>(~39234u, ~4294967295u), select(~vec2<u32>(3890u, 12056u), _wgslsmith_sub_vec2_u32(var_0.wx, vec2<u32>(arg_0.x, 1u)), false), vec2<bool>(true, true)));
    var_0 = vec4<u32>(var_0.x, 130802u, func_2(Struct_2(_wgslsmith_div_f32(-360f, -1785f), var_1, var_1, u_input.b, 0u >> (arg_0.x % 32u))), _wgslsmith_div_u32(u_input.b.x, ~4294967295u)) & _wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_1.c.x, 38459u, 0u, var_0.x) >> (u_input.b % vec4<u32>(32u))), select(firstLeadingBit(vec4<u32>(arg_0.x, var_1.c.x, u_input.b.x, var_0.x)) << (u_input.b % vec4<u32>(32u)), max(select(vec4<u32>(u_input.a, var_0.x, u_input.a, 8254u), vec4<u32>(arg_0.x, var_0.x, 11810u, 22121u), true), _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(var_1.c.x, arg_0.x, arg_0.x, 4294967295u))), false));
    return StorageBuffer(_wgslsmith_add_u32(~(~0u), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 1>();
    var var_0 = !select(!vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<bool>(true, true), !any(vec3<bool>(true, true, false)) | true);
    var_0 = vec2<bool>(var_0.x, var_0.x);
    let var_1 = firstTrailingBit(~_wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(22157i, 0i, -23742i), vec3<i32>(-1i, 11788i, -10408i), vec3<i32>(45241i, 2147483647i, 0i)), ~(vec3<i32>(0i, 0i, -1i) << (u_input.b.zww % vec3<u32>(32u)))));
    global0 = array<vec2<i32>, 1>();
    global0 = array<vec2<i32>, 1>();
    let var_2 = -1913f;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(abs(1u), ~(~u_input.b.x), 1u), u_input.b.wxy));
}

