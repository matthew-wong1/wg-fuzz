struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 23>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_5;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec2<i32>) -> vec3<i32> {
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.a.x), 23u)];
    global0 = array<Struct_5, 23>();
    global0 = array<Struct_5, 23>();
    var var_0 = !(!global2.a.a);
    var var_1 = ~_wgslsmith_sub_i32(u_input.d, reverseBits(_wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_0.x, 2147483647i, u_input.b.x), global2.a.b.zzy, true), select(global2.a.b.xzx, global2.b, vec3<bool>(true, false, false)))));
    return vec3<i32>(~(~u_input.d), ~(~0i), global2.c.a.x);
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_5(global2.a, _wgslsmith_div_vec3_i32(abs(-vec3<i32>(-48910i, -1i, -15004i)), vec3<i32>(-u_input.d, _wgslsmith_add_i32(~u_input.d, global2.a.d), ~_wgslsmith_sub_i32(85882i, global2.c.a.x))), global2.c);
    global0 = array<Struct_5, 23>();
    global1 = vec3<u32>(1u, u_input.a.x, 1u);
    global0 = array<Struct_5, 23>();
    let var_1 = Struct_3(select(vec3<i32>(max(27541i, 22077i), countOneBits(-1i), _wgslsmith_mod_i32(u_input.c, -1i)), arg_0.b.zyy, arg_0.a.xyz) >> (u_input.a % vec3<u32>(32u)));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(~u_input.a.x, ~abs(4294967295u), _wgslsmith_div_u32(1u, _wgslsmith_add_u32(0u, global1.x)))), u_input.a);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<i32>) -> vec3<i32> {
    global2 = global0[_wgslsmith_index_u32(global1.x ^ 4294967295u, 23u)];
    let var_0 = abs(~(vec4<u32>(_wgslsmith_div_u32(1u, u_input.a.x), firstTrailingBit(53104u), 6397u, abs(u_input.a.x)) | abs(min(vec4<u32>(75017u, global1.x, global1.x, 4294967295u), vec4<u32>(32507u, 0u, 0u, u_input.a.x)))));
    var var_1 = global2.a.c.x;
    var var_2 = vec4<i32>(~_wgslsmith_div_i32(-arg_2.x, i32(-1i) * -1i), arg_0.a.x, arg_2.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~global2.c.a.zy & _wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(arg_1.a.x, 11955i)), (vec2<i32>(-38904i, 0i) << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))) >> (~vec2<u32>(u_input.a.x, var_0.x) % vec2<u32>(32u)), func_1(arg_0.a).yx), arg_1.a));
    var var_3 = vec3<u32>(abs(abs(func_2(global2.a))), 0u, 27634u);
    return _wgslsmith_mult_vec3_i32(var_2.zxx, max(func_1(arg_1.a), arg_2.yxw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2.a.b.yx);
    let var_1 = true;
    global2 = global0[_wgslsmith_index_u32(func_2(global2.a), 23u)];
    var var_2 = _wgslsmith_mult_vec3_i32(func_3(Struct_4(-vec2<i32>(global2.c.a.x, 1i)), Struct_4(~vec2<i32>(-27424i, global2.b.x)), select(select(vec4<i32>(-1719i, var_0.x, 19217i, -6573i), vec4<i32>(-1i, var_0.x, var_0.x, global2.c.a.x), global2.a.a), -global2.a.b, !global2.a.a)), vec3<i32>(global2.c.a.x << (~global1.x % 32u), 65987i, -1i)) | vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(~global2.a.b), -vec4<i32>(u_input.c, global2.c.a.x, 48023i, global2.c.a.x)), var_0.x, _wgslsmith_sub_i32(1i, -u_input.b.x));
    var var_3 = 0i;
    var_2 = abs(-global2.a.b.zzx);
    global1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(func_3(Struct_4(global2.c.a.zy), Struct_4(vec2<i32>(var_0.x, 27023i)), global2.a.b) & vec3<i32>(var_2.x, ~var_2.x, var_0.x << (global1.x % 32u))), func_3(Struct_4(vec2<i32>(global2.c.a.x, 2147483647i) ^ vec2<i32>(u_input.c, var_0.x)), Struct_4(vec2<i32>(25079i, 5849i) >> (u_input.a.zy % vec2<u32>(32u))), global2.a.b), _wgslsmith_div_f32(global2.a.c.x, _wgslsmith_div_f32(-1172f, global2.a.c.x)), _wgslsmith_f_op_vec2_f32(-global2.a.c));
}

