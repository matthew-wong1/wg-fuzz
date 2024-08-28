struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 3>;

var<private> global2: Struct_4;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_2 {
    global0 = global2.a;
    let var_0 = global2.a;
    var var_1 = global2.b;
    let var_2 = -641f;
    global1 = array<vec3<bool>, 3>();
    return Struct_2(-13814i | u_input.b.x, global2.a, ~min(61842i, abs(u_input.b.x)));
}

fn func_3(arg_0: vec2<bool>) -> vec2<u32> {
    global1 = array<vec3<bool>, 3>();
    global0 = func_2().b;
    var var_0 = Struct_3(global0.a.x, func_2(), firstLeadingBit(~_wgslsmith_add_vec2_u32(~vec2<u32>(45196u, 31896u), _wgslsmith_clamp_vec2_u32(vec2<u32>(36921u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(31793u, 1u)))));
    global2 = Struct_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2281f), -1714f)), global2.a, -firstTrailingBit(global2.c), global2.e, global2.d);
    let var_1 = arg_0;
    return var_0.c << (_wgslsmith_clamp_vec2_u32(~(~(~var_0.c)), _wgslsmith_div_vec2_u32(var_0.c, _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.c, vec2<u32>(1u, var_0.c.x)), ~vec2<u32>(var_0.c.x, 4294967295u))), ~select(_wgslsmith_mult_vec2_u32(var_0.c, vec2<u32>(var_0.c.x, var_0.c.x)), vec2<u32>(0u, var_0.c.x), vec2<bool>(false, arg_0.x))) % vec2<u32>(32u));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = vec2<u32>(~(~(~firstLeadingBit(arg_0))), 4294967295u);
    var var_1 = arg_1;
    return global2.b;
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_4 {
    global0 = func_4(65532u, Struct_3(_wgslsmith_f_op_f32(786f * 420f), func_2(), ~countOneBits(func_3(vec2<bool>(global2.d.x, arg_1)))), ~(~(~1u)), _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_add_i32(u_input.a, u_input.b.x)), _wgslsmith_mult_i32(reverseBits(-global2.c.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(21637i, u_input.c, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global2.c.x, -16736i), vec3<i32>(u_input.b.x, 0i, global2.c.x), vec3<i32>(-2147483647i, global2.c.x, u_input.c)))), _wgslsmith_div_i32((13954i | global2.c.x) ^ ~global2.c.x, countOneBits(abs(global2.c.x)))));
    global1 = array<vec3<bool>, 3>();
    var var_0 = ~_wgslsmith_sub_vec3_u32(~countOneBits(vec3<u32>(1u, 1u, 1u)), firstLeadingBit(abs(vec3<u32>(4294967295u, 4294967295u, 70891u))));
    let var_1 = vec2<u32>(func_3(vec2<bool>(global2.d.x, arg_1)).x, 1u);
    return Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global2.a.a, global2.b.a), global2.b.a) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, 269f))))), func_2().b, vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.c.x, 2147483647i, 1i, u_input.a), (vec4<i32>(5603i, global2.c.x, u_input.b.x, 2147483647i) ^ vec4<i32>(6451i, 2147483647i, -2147483647i, 0i)) >> (abs(vec4<u32>(var_1.x, var_0.x, 1u, var_0.x)) % vec4<u32>(32u)))), vec4<bool>(false, global2.d.x, !any(select(vec4<bool>(true, false, global2.e.x, true), global2.d, arg_1)), false), !global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = 1000f;
    var var_2 = -global2.c.x;
    var_0 = false;
    let var_3 = global2.c.x;
    var var_4 = global2.b;
    global2 = func_1(global2.a.a.x, global2.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(-1i) * -(~vec4<i32>(38021i, u_input.c, 1i, -25076i))), firstTrailingBit(vec3<u32>(~1u, ~(~0u), 4294967295u)), global2.a.a, 5896i);
}

