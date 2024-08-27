struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> f32 {
    let var_0 = global1.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.e)) + 807f);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(1685f, _wgslsmith_f_op_f32(floor(global1.e)));
    global1 = Struct_1(vec2<u32>(~_wgslsmith_mod_u32(global1.a.x | global1.d.x, ~global1.d.x), ~(~4294967295u) << (_wgslsmith_div_u32(abs(global1.a.x), _wgslsmith_sub_u32(u_input.b, global1.d.x)) % 32u)), vec3<i32>(3541i << ((9723u >> (_wgslsmith_div_u32(u_input.b, global1.a.x) % 32u)) % 32u), _wgslsmith_add_i32(-1i & (global1.b.x | global1.b.x), -1i), -u_input.a.x), true, _wgslsmith_div_vec2_u32(global1.a, ~vec2<u32>(1u, global1.d.x)), _wgslsmith_f_op_f32(-global1.e));
    global0 = ~max(u_input.d, _wgslsmith_add_i32(firstTrailingBit(global1.b.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, u_input.a.x), global1.b.x)));
    let var_1 = Struct_1(vec2<u32>(~(~u_input.b), ~(~u_input.c.x)) << (vec2<u32>(~8038u, _wgslsmith_mult_u32(min(4294967295u, u_input.b), global1.d.x)) % vec2<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(global1.b.x, global1.b.x, global1.b.x) >> (~(~vec3<u32>(global1.d.x, global1.d.x, global1.a.x)) % vec3<u32>(32u)), reverseBits(global1.b << (~u_input.c.xzx % vec3<u32>(32u)))), !(!global1.c), ~abs(u_input.c.xw) & _wgslsmith_mod_vec2_u32(vec2<u32>(~46376u, global1.a.x), _wgslsmith_div_vec2_u32(~global1.d, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 4294967295u), global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)) * -272f) * -703f));
    var var_2 = Struct_1(u_input.c.wy, reverseBits(~(~_wgslsmith_add_vec3_i32(var_1.b, global1.b))), true, vec2<u32>(_wgslsmith_mod_u32(~75427u, countOneBits(var_1.d.x) | (1u ^ u_input.b)), u_input.b), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(global1.d.x, ~2739u), vec3<i32>(global1.b.x, -22012i, reverseBits(var_1.b.x)), var_1.c | (1u > var_1.d.x), var_1.a, global1.e), u_input.c, var_1.b.x)));
    return Struct_1(global1.a, u_input.a.xzz, global1.c, select(~(~(~var_2.d)), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(1u, 23430u)), _wgslsmith_mod_vec2_u32(~var_2.d, _wgslsmith_add_vec2_u32(var_1.d, vec2<u32>(51620u, 1u)))), true), var_1.e);
}

fn func_1() -> StorageBuffer {
    let var_0 = 48617u;
    var var_1 = func_2();
    var var_2 = ~u_input.a;
    var_2 = ~(~_wgslsmith_sub_vec4_i32(~u_input.a, ~vec4<i32>(var_1.b.x, -1i, 58354i, u_input.d)) & u_input.a);
    var var_3 = false;
    return StorageBuffer(u_input.c.xyz, vec4<u32>(u_input.c.x, 126283u, 11411u, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

