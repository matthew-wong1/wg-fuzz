struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, 4294967295u)), u_input.a.yw, ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.d.x), vec2<u32>(u_input.d.x, u_input.a.x)) >> (firstLeadingBit(firstLeadingBit(u_input.a.yz)) % vec2<u32>(32u))), _wgslsmith_mult_vec3_i32(u_input.b, u_input.b), !(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-525f + -593f) * _wgslsmith_f_op_f32(f32(-1f) * -244f)), _wgslsmith_f_op_f32(-1523f + 197f)))));
    var var_1 = firstLeadingBit(~_wgslsmith_dot_vec4_u32(select(firstTrailingBit(u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(63843u, 48581u, 1u, 50697u), u_input.a), !vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x)), u_input.d));
    var var_2 = ~(~(_wgslsmith_add_vec4_u32(~u_input.a, u_input.d) << (u_input.a % vec4<u32>(32u))));
    let var_3 = firstLeadingBit(~var_0.b.x);
    let var_4 = vec2<bool>(true, false);
    return var_0.a.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_add_vec2_u32(arg_2.a.a << (~vec2<u32>(22296u, arg_2.a.a.x) % vec2<u32>(32u)), vec2<u32>(reverseBits(1u), select(func_3(), 4294967295u, arg_2.a.c.x))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-arg_2.a.b.x, -2147483647i, ~arg_2.a.b.x), countOneBits(arg_2.a.b)), arg_2.a.c, arg_2.a.d);
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    let var_1 = global0[_wgslsmith_index_u32(8439u, 27u)];
    return Struct_2(var_1.a);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<u32>) -> bool {
    let var_0 = func_2(vec4<bool>(!arg_0.a.c.x & arg_0.a.c.x, all(vec3<bool>(true, true, arg_0.a.c.x)), true, (any(vec3<bool>(true, arg_0.a.c.x, true)) || any(arg_0.a.c)) || (true & arg_0.a.c.x)), arg_1.x & 52103i, arg_0);
    var var_1 = 21120i;
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.d, var_0.a.d) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-687f, var_0.a.d) * vec2<f32>(-703f, 683f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1279f, -791f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(789f, var_0.a.d)), var_0.a.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1040f, -976f)))))), vec2<bool>(false, true)))));
    let var_3 = _wgslsmith_add_i32(_wgslsmith_add_i32(-_wgslsmith_sub_i32(-u_input.b.x, 1i), 1i), u_input.c.x);
    let var_4 = Struct_1(arg_0.a.a & vec2<u32>(0u, 56232u), u_input.b, vec2<bool>(true, var_0.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a.d, 719f)) * _wgslsmith_f_op_f32(sign(var_2.x))), true))));
    return var_0.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    var var_0 = false & (true == (true || (func_1(global0[_wgslsmith_index_u32(51657u, 27u)], vec2<i32>(u_input.c.x, u_input.b.x), vec2<u32>(u_input.a.x, u_input.d.x)) | (0i != u_input.c.x))));
    var var_1 = global0[_wgslsmith_index_u32(1u, 27u)];
    let var_2 = ~vec2<u32>(_wgslsmith_mod_u32(max(var_1.a.a.x, u_input.d.x) & u_input.d.x, ~0u), 49834u);
    let var_3 = ~(~u_input.d);
    var var_4 = Struct_2(Struct_1(vec2<u32>(~(~u_input.a.x), ~(~592u)), _wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(var_1.a.b.x), var_1.a.b.x, -u_input.b.x), var_1.a.b), func_2(select(select(vec4<bool>(var_1.a.c.x, var_1.a.c.x, var_1.a.c.x, var_1.a.c.x), vec4<bool>(var_1.a.c.x, false, false, var_1.a.c.x), true), select(vec4<bool>(true, true, false, var_1.a.c.x), vec4<bool>(var_1.a.c.x, var_1.a.c.x, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, var_1.a.c.x, var_1.a.c.x)), -7670i, global0[_wgslsmith_index_u32(abs(1u) | var_1.a.a.x, 27u)]).a.c, var_1.a.d));
    var_4 = Struct_2(var_1.a);
    let var_5 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~(var_1.a.a.x << (4294967295u % 32u)), 0u), vec2<u32>(72451u, func_3() & func_3())), _wgslsmith_div_u32(1u, reverseBits(_wgslsmith_clamp_u32(65152u, u_input.d.x & var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, 1u), var_2)))), ~(~(~_wgslsmith_mod_u32(1u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~(~abs(vec4<i32>(-22625i, u_input.b.x, var_4.a.b.x, var_1.a.b.x))), -firstLeadingBit(vec4<i32>(1i, var_4.a.b.x, var_1.a.b.x, 1i))), var_5.x);
}

