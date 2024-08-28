struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11>;

var<private> global1: array<Struct_1, 23>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> i32 {
    global0 = array<vec4<u32>, 11>();
    global1 = array<Struct_1, 23>();
    let var_0 = ~vec3<u32>(~_wgslsmith_mod_u32(u_input.d.x, 4294967295u), reverseBits(68467u), min(47981u, 0u));
    var var_1 = Struct_4(select(select(vec3<bool>(select(false, true, true), true, false), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))), vec3<bool>(min(-1i, u_input.c.x) < (u_input.e | u_input.e), true, true), vec3<bool>(true, true, false)), u_input.a.xx);
    global1 = array<Struct_1, 23>();
    return 59058i;
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    var var_1 = abs(u_input.d.x);
    let var_2 = true;
    global1 = array<Struct_1, 23>();
    let var_3 = 131f;
    return Struct_2(countOneBits(vec2<u32>(~_wgslsmith_add_u32(1u, 12374u), 4294967295u)), ~_wgslsmith_mod_vec3_u32(max(vec3<u32>(u_input.d.x, 51596u, u_input.d.x), vec3<u32>(37927u, u_input.d.x, 33495u)) >> (~vec3<u32>(1u, u_input.d.x, u_input.d.x) % vec3<u32>(32u)), abs(select(vec3<u32>(u_input.d.x, 1u, u_input.d.x), vec3<u32>(u_input.d.x, 16670u, u_input.d.x), vec3<bool>(var_2, true, false)))), global1[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(abs(8792u), ~u_input.d.x) & u_input.d.x), 23u)], vec4<bool>(var_2, u_input.b.x < ~(u_input.e << (u_input.d.x % 32u)), any(select(vec4<bool>(var_0, true, false, true), select(vec4<bool>(true, var_2, var_0, true), vec4<bool>(false, true, var_0, var_0), vec4<bool>(var_2, false, var_2, var_0)), select(vec4<bool>(false, true, var_0, true), vec4<bool>(var_2, false, var_2, var_0), vec4<bool>(var_2, var_0, var_2, true)))), true), Struct_1((~vec2<i32>(-48764i, u_input.e) << (abs(vec2<u32>(0u, 0u)) % vec2<u32>(32u))) ^ vec2<i32>(u_input.c.x, func_3()), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_3)))))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<bool>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = vec2<i32>(-1i) * -(u_input.b.zy | u_input.b.xx);
    let var_1 = func_2();
    global1 = array<Struct_1, 23>();
    var var_2 = arg_2;
    global0 = array<vec4<u32>, 11>();
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    global1 = array<Struct_1, 23>();
    let var_0 = func_1(-456f, reverseBits(-(~u_input.e)), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), true))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~0u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d)), ~vec4<u32>(1u, 1u, u_input.d.x, u_input.d.x)), u_input.d.x));
    let var_1 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, u_input.b.yzx | u_input.a), u_input.a)), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a.x, 2147483647i, var_0.a.x), vec3<i32>(1i, u_input.b.x, func_2().c.a.x)), u_input.b.xzz), _wgslsmith_f_op_f32(floor(var_0.b.x)), select(u_input.b, vec4<i32>(~(-var_0.a.x), 1i, ~(-2147483647i), ~(u_input.b.x & var_1)), !all(vec4<bool>(false, true, true, false))));
}

