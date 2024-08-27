struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_3,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = 57786i;

var<private> global2: array<Struct_5, 9>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_div_vec4_u32(~u_input.c, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(7498u, global0.c.b, arg_0.b, u_input.a), vec4<u32>(global0.b.b, 1u, 1u, arg_0.b), u_input.c) & _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(u_input.e, arg_0.b, 4294967295u, 1u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(3450u, _wgslsmith_sub_u32(18646u, _wgslsmith_clamp_u32(arg_0.b, global0.c.b, 1u)), 978u, ~16319u), vec4<u32>(4294967295u, ~_wgslsmith_mod_u32(1u, 40716u), u_input.c.x & ~global0.c.b, select(u_input.e, ~9304u, all(vec2<bool>(false, true))))) % vec4<u32>(32u));
    global1 = u_input.d;
    var var_1 = 1u;
    global0 = Struct_2(_wgslsmith_add_u32(62946u, _wgslsmith_mult_u32(var_0.x, 115402u)), Struct_1(arg_0.a, ~_wgslsmith_add_u32(abs(0u), 1u)), arg_0);
    var var_2 = global0.c.a.wx;
    return -724f;
}

fn func_2() -> Struct_4 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1254f)))), _wgslsmith_f_op_f32(func_3(global0.c, _wgslsmith_f_op_f32(sign(-918f)))));
    global1 = -u_input.b.x;
    let var_1 = global0.b;
    global1 = 13351i;
    var var_2 = _wgslsmith_f_op_f32(func_3(Struct_1(select(var_1.a, vec4<bool>(u_input.b.x != 51910i, global0.c.a.x && true, false & var_1.a.x, true), global0.b.a), _wgslsmith_add_u32(~2063u, firstLeadingBit(global0.c.b))), var_0.x));
    return Struct_4(~vec2<u32>(4294967295u, 4294967295u), Struct_3(Struct_2(firstTrailingBit(u_input.e) ^ ~135832u, global0.b, Struct_1(select(global0.b.a, global0.b.a, vec4<bool>(true, false, global0.b.a.x, true)), 1u)), u_input.b.x), Struct_3(Struct_2(_wgslsmith_mult_u32(6480u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 44766u, var_1.b, 4294967295u), vec4<u32>(u_input.c.x, 4294967295u, 0u, 17430u))), Struct_1(!global0.c.a, 1u), Struct_1(!vec4<bool>(var_1.a.x, global0.c.a.x, true, var_1.a.x), 22419u)), u_input.d), global0.b.a);
}

fn func_1() -> i32 {
    var var_0 = func_2();
    global2 = array<Struct_5, 9>();
    global2 = array<Struct_5, 9>();
    var var_1 = _wgslsmith_f_op_f32(-1204f - 774f);
    let var_2 = func_2().b.a.b.a.x;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -max(-(func_1() >> (63855u % 32u)), _wgslsmith_mult_i32(-3847i >> (u_input.c.x % 32u), -38627i));
    global0 = Struct_2(62801u, global0.c, func_2().b.a.c);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1047f))));
    global0 = func_2().b.a;
    let var_1 = Struct_1(!select(!(!vec4<bool>(global0.c.a.x, global0.b.a.x, global0.b.a.x, false)), vec4<bool>(global0.b.a.x && global0.b.a.x, !global0.b.a.x, all(global0.b.a.zz), any(global0.c.a)), u_input.b.x != -6380i), func_2().b.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2219f, _wgslsmith_div_f32(-1102f, -228f), -103f, _wgslsmith_f_op_f32(-857f - -350f)))), abs(-vec4<i32>(-15415i, u_input.d, u_input.b.x, u_input.d) << (~min(u_input.c, u_input.c) % vec4<u32>(32u))), u_input.b.yzy, (countOneBits(var_1.b) | countOneBits(~6587u)) & ~12447u, -5058i);
}

