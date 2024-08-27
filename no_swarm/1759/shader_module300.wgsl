struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<u32>;

var<private> global2: array<vec3<u32>, 8>;

var<private> global3: u32 = 24856u;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    var var_0 = reverseBits(_wgslsmith_sub_u32(~u_input.e, global1.x));
    var var_1 = Struct_3(-112f, -max(~_wgslsmith_mod_vec3_i32(vec3<i32>(-21319i, 3963i, -2147483647i), u_input.a), vec3<i32>(u_input.c.x, _wgslsmith_clamp_i32(2147483647i, u_input.c.x, u_input.a.x), u_input.d)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(trunc(var_1.a)), ~u_input.a);
    let var_3 = var_2.b.x >> (1u % 32u);
    let var_4 = false;
    return u_input.d;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: i32) -> bool {
    let var_0 = Struct_1(firstLeadingBit(max(global2[_wgslsmith_index_u32(global0.b.e, 8u)], arg_1.b.a)), _wgslsmith_f_op_f32(arg_1.c.b * global0.c.b), vec3<bool>(arg_0, all(!vec2<bool>(arg_0, false)), any(vec4<bool>(!global0.b.d, global0.b.d || arg_1.a.x, all(global0.b.c), all(arg_1.a.yz)))), all(vec2<bool>(true, true)), global0.b.e);
    global3 = reverseBits(0u);
    let var_1 = _wgslsmith_f_op_f32(max(-218f, arg_1.b.b)) == _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f)));
    var var_2 = firstTrailingBit(global0.b.a);
    global0 = arg_1;
    return all(select(vec3<bool>(true, true, true && arg_1.a.x), !vec3<bool>(arg_1.a.x, all(var_0.c), arg_0), false));
}

fn func_2() -> StorageBuffer {
    let var_0 = global0.c;
    var var_1 = !(!global0.b.c.x) == any(vec4<bool>(var_0.d, select(var_0.d, true & var_0.d, var_0.c.x & false), u_input.d < u_input.b, func_4(var_0.b > -1308f, Struct_2(global0.a, global0.b, Struct_1(vec3<u32>(var_0.a.x, global0.c.a.x, global1.x), global0.c.b, global0.a, true, global1.x)), ~u_input.c.zx, func_3())));
    global2 = array<vec3<u32>, 8>();
    let var_2 = Struct_2(select(!select(vec3<bool>(global0.c.c.x, global0.c.d, var_0.d), global0.c.c, var_0.d), global0.b.c, !vec3<bool>(true, true, global0.a.x)), global0.b, Struct_1(select(global2[_wgslsmith_index_u32(global1.x, 8u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 23194u, global1.x, u_input.e), vec4<u32>(0u, 71396u, global0.c.e, global0.c.e)), 8u)], var_0.a.x >= ~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(271f * var_0.b) * global0.b.b)), vec3<bool>(false, global0.a.x, all(!vec4<bool>(true, global0.b.d, true, global0.c.c.x))), true, _wgslsmith_div_u32(var_0.e, 4294967295u)));
    let var_3 = -(((vec2<i32>(u_input.a.x, -1i) | _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.a.x), vec2<i32>(-11688i, -67061i))) >> (vec2<u32>(global0.b.a.x, 8714u ^ global0.c.a.x) % vec2<u32>(32u))) << (~(~max(global1.xy, global0.c.a.yy)) % vec2<u32>(32u)));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.b + -102f) - -1000f), _wgslsmith_sub_i32(-2147483647i, -u_input.b), 14850u, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(-4747i, -2147483647i), vec2<i32>(0i, 16001i)), var_3.x & u_input.a.x, _wgslsmith_div_i32(var_3.x, u_input.b)), countOneBits(max(vec4<i32>(var_3.x, -4445i, u_input.d, -1i), vec4<i32>(var_3.x, var_3.x, 12714i, var_3.x)))), u_input.b, ~(-var_3.x), -2147483647i));
}

fn func_1() -> StorageBuffer {
    let var_0 = 0u;
    var var_1 = global0.b.c.x;
    global1 = ~vec3<u32>(4317u, 0u, 0u);
    global3 = var_0;
    var var_2 = -u_input.a.xy;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(vec4<u32>(~4294967295u, 4294967295u | global1.x, _wgslsmith_sub_u32(global1.x, 1u), 4294967295u) ^ abs(~vec4<u32>(global1.x, global0.b.a.x, global0.b.e, global0.b.e))) >> (~firstLeadingBit(vec4<u32>(global0.c.a.x >> (0u % 32u), countOneBits(global1.x), 85331u, 71001u)) % vec4<u32>(32u));
    let var_1 = ~60323u;
    let var_2 = global1.x;
    let x = u_input.a;
    s_output = func_1();
}

