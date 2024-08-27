struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-826f, 681f, 471f, -776f);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<f32>(-1000f, 301f, 1000f, -991f), vec2<u32>(1u, 79493u)));

var<private> global2: array<vec4<i32>, 15>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = ~((u_input.a & global1.a.b.x) >> (u_input.d % 32u));
    let var_1 = var_0;
    var var_2 = true;
    return u_input.b.x;
}

fn func_2() -> Struct_2 {
    let var_0 = func_3();
    let var_1 = Struct_1(vec4<f32>(-168f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x * global1.a.a.x), _wgslsmith_f_op_f32(global0.x - 854f), true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, 1000f)) + _wgslsmith_f_op_f32(round(global1.a.a.x)))))), _wgslsmith_mod_vec2_u32(global1.a.b << (_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, global1.a.b.x), vec2<u32>(global1.a.b.x, u_input.d)) % vec2<u32>(32u)), vec2<u32>(4294967295u, u_input.a)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -955f));
    var var_3 = -(var_0 >> (u_input.c.x % 32u));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)));
    return Struct_2(Struct_1(var_1.a, vec2<u32>(~var_1.b.x ^ ~u_input.a, _wgslsmith_mult_u32(var_1.b.x, _wgslsmith_mod_u32(u_input.c.x, 4294967295u)))));
}

fn func_1(arg_0: vec4<bool>) -> vec3<bool> {
    var var_0 = arg_0.yz;
    let var_1 = global1.a;
    global1 = func_2();
    var var_2 = -vec3<i32>(~abs(-40720i) | u_input.b.x, select(~u_input.b.x, 1i, all(arg_0.zw)), -1i);
    global1 = Struct_2(global1.a);
    return !arg_0.zzw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(0i, -12494i), u_input.b), max(u_input.b, u_input.b)) >> (u_input.c % vec2<u32>(32u)), ~16666i, global1.a.b.x, ((_wgslsmith_f_op_f32(select(global1.a.a.x, 158f, false)) != _wgslsmith_div_f32(global1.a.a.x, -258f)) & (global0.x > _wgslsmith_f_op_f32(605f - -1000f))) & any(func_1(vec4<bool>(false, true, false, true))));
    let var_1 = Struct_4(_wgslsmith_mult_u32(_wgslsmith_add_u32(5867u, ~(global1.a.b.x & var_0.c)), _wgslsmith_mod_u32(func_2().a.b.x >> (0u % 32u), u_input.a << (1u % 32u))), func_2());
    global2 = array<vec4<i32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(~vec4<u32>(u_input.c.x, u_input.a, u_input.d, 1u))), countOneBits(select(vec3<i32>(~(-625i), firstTrailingBit(96324i), ~1i), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.b, 15517i, var_0.a.x), vec3<i32>(19026i, var_0.b, -23041i) >> (vec3<u32>(var_1.a, global1.a.b.x, u_input.a) % vec3<u32>(32u))), !(!vec3<bool>(false, var_0.d, var_0.d)))), _wgslsmith_sub_u32(1u, var_0.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x)), _wgslsmith_sub_u32(reverseBits(var_0.c ^ 1u), ~max(u_input.a, var_0.c)) << (var_1.a % 32u));
}

