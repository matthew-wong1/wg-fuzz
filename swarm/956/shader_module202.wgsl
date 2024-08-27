struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    return Struct_1(vec3<u32>(~((u_input.b << (28060u % 32u)) >> (_wgslsmith_sub_u32(u_input.a.x, 29875u) % 32u)), _wgslsmith_div_u32(u_input.a.x, u_input.b & u_input.c.x) << (4294967295u % 32u), u_input.c.x), 1u, u_input.a.x);
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    let var_1 = true;
    let var_2 = func_2();
    global0 = array<f32, 31>();
    var var_3 = func_2();
    return func_2();
}

fn func_3(arg_0: vec3<i32>) -> vec2<u32> {
    let var_0 = func_2();
    var var_1 = var_0;
    let var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-60596i, 0i, -1i, u_input.d.x), _wgslsmith_sub_vec4_i32(-vec4<i32>(0i, arg_0.x, arg_0.x, u_input.d.x), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, 7328i, arg_0.x), vec4<i32>(u_input.d.x, -1i, u_input.d.x, 2147483647i)))), vec4<i32>(-29040i, 1i >> ((4294967295u << (var_1.b % 32u)) % 32u), -_wgslsmith_sub_i32(1i, 22180i), arg_0.x)), -_wgslsmith_sub_vec4_i32(min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 2102i, 0i, 1i), vec4<i32>(u_input.d.x, -1i, u_input.d.x, 1i)), ~vec4<i32>(1i, arg_0.x, u_input.d.x, u_input.d.x)), vec4<i32>(40898i, u_input.d.x << (var_0.a.x % 32u), ~(-30284i), u_input.d.x)), min(-firstTrailingBit(vec4<i32>(43434i, 57516i, 2147483647i, 2147483647i)) >> (firstLeadingBit(firstTrailingBit(vec4<u32>(39451u, 1u, var_0.b, u_input.c.x))) % vec4<u32>(32u)), select(select(vec4<i32>(u_input.d.x, 1i, arg_0.x, -2147483647i), -vec4<i32>(arg_0.x, u_input.d.x, -2147483647i, u_input.d.x), global0[_wgslsmith_index_u32(var_0.a.x, 31u)] > global0[_wgslsmith_index_u32(var_0.a.x, 31u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, u_input.d.x, -1i, 1i), ~vec4<i32>(u_input.d.x, u_input.d.x, arg_0.x, arg_0.x)), true)));
    global0 = array<f32, 31>();
    var var_3 = var_1.c >> (((select(u_input.b >> (33062u % 32u), ~22376u, true) ^ (abs(4294967295u) << (u_input.a.x % 32u))) << (~_wgslsmith_sub_u32(abs(u_input.c.x), _wgslsmith_mult_u32(u_input.b, 56317u)) % 32u)) % 32u);
    return ~vec2<u32>(_wgslsmith_mod_u32(u_input.c.x, abs(_wgslsmith_mult_u32(19870u, u_input.b))), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<f32, 31>();
    var var_1 = var_0;
    var_1 = Struct_1(~(~(~(~u_input.c))), 1u, 4294967295u);
    var var_2 = firstTrailingBit(select(u_input.c.yz, _wgslsmith_sub_vec2_u32(u_input.a.xz, func_3(vec3<i32>(2147483647i, u_input.d.x, u_input.d.x))), any(vec2<bool>(true, true))));
    var_1 = func_2();
    var var_3 = max(u_input.d.x, u_input.d.x << (_wgslsmith_sub_u32(firstLeadingBit(var_1.b & var_2.x), 0u) % 32u));
    var var_4 = var_0;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b ^ ~4294967295u, 31u)] + _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.x, var_4.a.x), 31u)]))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~reverseBits(15850u), var_4.a.x), 31u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-u_input.d.x, -(u_input.d.x | 0i) & (~(-1i) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, -1i, -18183i), vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, 2147483647i)))), u_input.d.x, u_input.d);
}

