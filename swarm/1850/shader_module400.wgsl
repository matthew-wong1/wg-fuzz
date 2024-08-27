struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<u32>(6973u, 4294967295u), 1i, Struct_1(vec4<u32>(13850u, 4294967295u, 61725u, 54237u))));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_4) -> u32 {
    let var_0 = _wgslsmith_clamp_i32(1i, arg_3.a.b, -(~((26343i >> (arg_1.a.x % 32u)) >> (16217u % 32u))));
    var var_1 = u_input.a | ~(~(-(~u_input.a)));
    var var_2 = Struct_2(~global0.a.c.a.xz, ~_wgslsmith_sub_i32(-5275i, select(min(-21653i, arg_1.b), 0i ^ arg_2.b, true)), arg_1.c);
    var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), u_input.a), 2147483647i, -var_1.x);
    var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(~(i32(-1i) * -12577i) & (-1i | global0.a.b), var_2.b ^ ~arg_1.b, -2147483647i), u_input.a);
    return 4294967295u;
}

fn func_2() -> Struct_3 {
    let var_0 = global0.a;
    let var_1 = global0.a.b;
    let var_2 = global0.a;
    var var_3 = Struct_3(Struct_2(u_input.b.zw, ~(_wgslsmith_mod_i32(var_0.b, var_2.b) << (func_3(34655u, global0.a, global0.a, Struct_4(Struct_2(vec2<u32>(0u, 10906u), 1i, Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 24759u))), true, var_0.c.a, var_0.c)) % 32u)), Struct_1(vec4<u32>(global0.a.c.a.x, 4294967295u, 85832u, 0u))));
    let var_4 = vec3<u32>(0u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_3.a.c.a.x, 4294967295u), global0.a.c.a.yzw), _wgslsmith_mult_u32(0u, u_input.b.x)) >> (~(~firstLeadingBit(var_3.a.a.x)) % 32u), global0.a.a.x);
    return Struct_3(Struct_2(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_2.a.x) >> (vec2<u32>(17006u, var_0.c.a.x) % vec2<u32>(32u)), ~vec2<u32>(10003u, var_4.x))), max(global0.a.b & 0i, u_input.a.x), Struct_1(~vec4<u32>(var_3.a.a.x, 1u, var_3.a.c.a.x, var_3.a.a.x) & ~vec4<u32>(u_input.b.x, 1u, 1u, 4294967295u))));
}

fn func_1() -> Struct_3 {
    global0 = Struct_3(global0.a);
    var var_0 = global0.a.b;
    var_0 = global0.a.b & ~(~23507i);
    var var_1 = vec2<i32>(select(u_input.a.x, u_input.a.x, any(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), -1i);
    global0 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-565f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(322f, -192f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(437f)) - -484f))));
    var var_2 = _wgslsmith_add_vec3_u32(~((var_0.a.c.a.wxz >> ((vec3<u32>(global0.a.a.x, var_0.a.a.x, var_0.a.a.x) | u_input.b.zwz) % vec3<u32>(32u))) ^ ~vec3<u32>(var_0.a.a.x, var_0.a.c.a.x, 48995u)), _wgslsmith_mod_vec3_u32(global0.a.c.a.yyy, vec3<u32>(~global0.a.a.x >> (31286u % 32u), global0.a.c.a.x << (reverseBits(0u) % 32u), ~62069u)));
    var_0 = func_1();
    global0 = func_2();
    var var_3 = -vec3<i32>(min(i32(-1i) * -global0.a.b, 19862i << (_wgslsmith_div_u32(var_0.a.a.x, var_2.x) % 32u)), -1i, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

