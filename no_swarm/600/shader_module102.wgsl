struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec2<bool>(true, false), vec2<i32>(13987i, 5938i));

var<private> global1: bool;

var<private> global2: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(-1i, i32(-2147483648), 52004i), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(-1i, 0i, 399i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(3269i, 0i, -22076i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(-75642i, i32(-2147483648), 40917i), vec3<i32>(31608i, -2252i, i32(-2147483648)), vec3<i32>(26581i, 30301i, -19599i), vec3<i32>(19607i, i32(-2147483648), -1i), vec3<i32>(-12259i, 1i, 18246i), vec3<i32>(16801i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), 3677i), vec3<i32>(-31101i, 29349i, 2147483647i), vec3<i32>(29174i, 12252i, 6713i), vec3<i32>(i32(-2147483648), 2147483647i, -39961i), vec3<i32>(i32(-2147483648), 1i, -29455i), vec3<i32>(-1i, -19529i, i32(-2147483648)), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(-15525i, -40004i, -56838i));

var<private> global3: array<u32, 28> = array<u32, 28>(0u, 1u, 31643u, 4294967295u, 98669u, 1u, 35014u, 4294967295u, 4294967295u, 1u, 1u, 4294967295u, 0u, 4294967295u, 4294967295u, 64329u, 0u, 32881u, 0u, 1u, 4294967295u, 1u, 11780u, 26298u, 25782u, 17143u, 18249u, 1u);

var<private> global4: Struct_5 = Struct_5(vec2<u32>(37370u, 0u), Struct_3(-34855i, 3848i, true, vec4<bool>(true, false, true, false)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> vec2<u32> {
    return global4.a;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> vec2<u32> {
    global4 = Struct_5(u_input.a, global4.b);
    let var_0 = Struct_5(global4.a, global4.b);
    var var_1 = Struct_2(Struct_1(global0.a, !vec2<bool>(all(arg_0), global4.b.c), -vec2<i32>(-2147483647i, 0i)), global4.b.a, Struct_1(all(select(select(vec4<bool>(false, arg_0.x, var_0.b.c, true), vec4<bool>(true, var_0.b.d.x, global4.b.d.x, arg_0.x), vec4<bool>(var_0.b.d.x, global4.b.c, arg_0.x, var_0.b.c)), select(vec4<bool>(var_0.b.d.x, true, true, true), vec4<bool>(global4.b.d.x, false, true, global4.b.d.x), true), vec4<bool>(var_0.b.d.x, arg_0.x, false, true))), vec2<bool>(true, !select(true, arg_0.x, arg_0.x)), arg_2.xy));
    global2 = array<vec3<i32>, 20>();
    let var_2 = -2147483647i;
    return vec2<u32>(reverseBits(~(~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global4.a.x, 28u)], global3[_wgslsmith_index_u32(var_0.a.x, 28u)]))), global4.a.x);
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> Struct_1 {
    global3 = array<u32, 28>();
    let var_0 = global4.b.b;
    global3 = array<u32, 28>();
    var var_1 = -(vec2<i32>(_wgslsmith_sub_i32(-1i, 1i) | ~arg_0, 1i) >> (_wgslsmith_mod_vec2_u32(~countOneBits(global4.a), vec2<u32>(u_input.c.x, 11319u) << (select(u_input.c.xz, vec2<u32>(0u, 41109u), vec2<bool>(global4.b.c, true)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = vec2<bool>(any(global4.b.d), arg_1.b.d.x);
    return Struct_1((~global4.a.x < ~_wgslsmith_mod_u32(47472u, global4.a.x)) && true, arg_1.b.d.zy, select(select(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -20350i), ~arg_1.b.b), _wgslsmith_clamp_vec2_i32(global0.c, abs(global0.c), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, global4.b.b), vec2<i32>(1i, 11897i))), global4.a.x == (89182u | global3[_wgslsmith_index_u32(4294967295u, 28u)])), select(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(global0.c, vec2<i32>(22863i, arg_1.b.a)), global0.c), -vec2<i32>(-1i, var_1.x) >> (arg_1.a % vec2<u32>(32u)), !global0.a || (global3[_wgslsmith_index_u32(arg_1.a.x, 28u)] <= global4.a.x)), false));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<bool>) -> Struct_1 {
    global2 = array<vec3<i32>, 20>();
    global2 = array<vec3<i32>, 20>();
    global2 = array<vec3<i32>, 20>();
    return func_4(1i, Struct_5(func_2(global0.c, reverseBits(-14865i)) ^ func_3(!vec2<bool>(arg_2.x, arg_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-363f, arg_0, 1169f)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, arg_1.x, 1i), vec4<i32>(-1i, -8142i, arg_1.x, arg_1.x))), Struct_3(i32(-1i) * -46582i, _wgslsmith_sub_i32(global0.c.x, global4.b.a), global0.b.x, !select(global4.b.d, global4.b.d, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global4.b.b;
    var var_1 = vec2<bool>(global0.b.x || true, all(global4.b.d));
    var_1 = global0.b;
    global2 = array<vec3<i32>, 20>();
    let var_2 = Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-299f - _wgslsmith_div_f32(898f, -541f))), abs(global0.c), !(!(!vec2<bool>(global0.a, false)))), 0i, Struct_1(all(select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, global0.b.x, var_1.x, true), var_1.x)) || any(func_1(1430f, global0.c, global4.b.d.wz).b), global4.b.d.yx, select(global0.c, vec2<i32>(35269i, ~1i), vec2<bool>(!global0.b.x, !global4.b.d.x))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-201f)))), -692f);
    var var_4 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.c);
}

