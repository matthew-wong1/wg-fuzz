struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: Struct_4,
    d: Struct_3,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 22>;

var<private> global1: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(4294967295u, 1u, 46191u), vec3<u32>(1u, 4294967295u, 52047u), vec3<u32>(22276u, 0u, 23059u), vec3<u32>(40012u, 10775u, 22892u), vec3<u32>(0u, 1u, 29451u), vec3<u32>(1u, 1u, 21595u), vec3<u32>(4294967295u, 1u, 6952u), vec3<u32>(4294967295u, 4294967295u, 37756u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 85728u, 99680u), vec3<u32>(99420u, 0u, 1u), vec3<u32>(13775u, 0u, 3675u), vec3<u32>(1u, 21044u, 0u), vec3<u32>(1u, 16010u, 32805u), vec3<u32>(66823u, 59600u, 33408u), vec3<u32>(3791u, 4294967295u, 17931u), vec3<u32>(1u, 100894u, 1u), vec3<u32>(4294967295u, 11733u, 31473u));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4) -> u32 {
    global1 = array<vec3<u32>, 18>();
    let var_0 = false;
    global0 = array<Struct_5, 22>();
    var var_1 = true;
    var var_2 = ~arg_0.d.b.c;
    return 35248u;
}

fn func_2() -> Struct_2 {
    var var_0 = ~(~_wgslsmith_add_u32(func_3(global0[_wgslsmith_index_u32(u_input.c, 22u)], Struct_4(vec3<bool>(false, false, false))), 1u));
    var_0 = u_input.a.x >> (1u % 32u);
    var_0 = ~(~83995u) & u_input.a.x;
    let var_1 = Struct_4(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))));
    var var_2 = ~vec2<u32>(71762u, 60506u);
    return Struct_2(-63935i, 1104f, -1i);
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> vec2<f32> {
    let var_0 = arg_1;
    global0 = array<Struct_5, 22>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_0, var_0.c.x))))));
    var_1 = _wgslsmith_f_op_f32(-arg_0);
    global0 = array<Struct_5, 22>();
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.c.x)))) - _wgslsmith_f_op_f32(1364f * 380f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a.b, arg_1.a.b)) + _wgslsmith_f_op_f32(exp2(arg_0))), arg_1.a.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + -1816f)) + _wgslsmith_f_op_f32(exp2(arg_0)))));
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.e.x >> (1u % 32u);
    global1 = array<vec3<u32>, 18>();
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(1f, Struct_3(func_2(), Struct_1(vec3<i32>(0i, -44193i, u_input.d), vec3<i32>(var_0, var_0, u_input.e.x), 34263u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(465f, -1106f, 549f, -557f), vec4<f32>(-1000f, -1000f, -759f, 221f), vec4<bool>(false, true, true, false))), true, max(vec4<i32>(u_input.e.x, -60733i, u_input.b.x, 6620i), vec4<i32>(10924i, var_0, 0i, var_0))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(408f, 1135f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-979f, 1397f), vec2<f32>(931f, 1655f), true)))), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-739f, 394f) * vec2<f32>(1000f, 463f)))))));
    return Struct_2(var_0, 2082f, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, _wgslsmith_clamp_i32(var_0, _wgslsmith_mult_i32(u_input.d, var_0), countOneBits(u_input.d))), _wgslsmith_sub_vec2_i32(~(~u_input.b), firstTrailingBit(select(u_input.e, vec2<i32>(2147483647i, 2147483647i), false)))));
}

fn func_5(arg_0: Struct_2) -> StorageBuffer {
    var var_0 = Struct_3(func_2(), Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(514i, -97165i, u_input.e.x), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a, -17865i, u_input.e.x), vec3<i32>(u_input.b.x, arg_0.a, arg_0.a))), (vec3<i32>(2147483647i, -28564i, -36983i) << (global1[_wgslsmith_index_u32(34945u, 18u)] % vec3<u32>(32u))) ^ vec3<i32>(45499i, arg_0.a, -2147483647i)), min(select(min(vec3<i32>(arg_0.c, arg_0.a, 12826i), vec3<i32>(u_input.e.x, 2147483647i, 0i)), countOneBits(vec3<i32>(-2147483647i, -2147483647i, arg_0.a)), vec3<bool>(false, false, false)), firstTrailingBit(vec3<i32>(arg_0.a, 1i, 40329i))), u_input.c), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -674f, -352f, arg_0.b)) + vec4<f32>(arg_0.b, arg_0.b, arg_0.b, -164f)))))), true, min(select(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(21647i, arg_0.a, u_input.b.x, 2147483647i), vec4<i32>(1i, arg_0.c, arg_0.a, u_input.e.x), vec4<i32>(37001i, -1i, -2147483647i, 2147483647i))), -vec4<i32>(-33235i, u_input.d, arg_0.c, u_input.d), func_3(global0[_wgslsmith_index_u32(u_input.c, 22u)], Struct_4(vec3<bool>(false, true, false))) < 45912u), _wgslsmith_sub_vec4_i32(~vec4<i32>(1i, arg_0.a, arg_0.a, arg_0.a), -vec4<i32>(908i, 31007i, arg_0.a, 67137i)) >> (abs(vec4<u32>(10107u, u_input.a.x, 12559u, u_input.a.x)) % vec4<u32>(32u))));
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(func_2().b, arg_0.b)), -239f);
    var var_3 = !vec4<bool>(true, !any(!vec3<bool>(false, true, var_0.d)), true, var_0.d);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(select(923f, 1145f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1356f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) * _wgslsmith_f_op_f32(sign(arg_0.b))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2))))), arg_0.b);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(arg_0.b, Struct_3(Struct_2(2147483647i, -522f, -1i), Struct_1(vec3<i32>(2147483647i, 1i, var_0.a.c), vec3<i32>(2147483647i, 2147483647i, var_0.b.a.x), var_0.b.c), vec4<f32>(-1000f, 1000f, -2479f, -356f), true, var_0.e & var_0.e))).x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1());
}

