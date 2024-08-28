struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(637f, vec2<bool>(true, false), true), Struct_4(691f, vec2<bool>(false, true), false), Struct_4(1252f, vec2<bool>(true, true), false), Struct_4(502f, vec2<bool>(true, true), false), Struct_4(-1149f, vec2<bool>(false, false), false), Struct_4(1207f, vec2<bool>(true, true), true), Struct_4(-1100f, vec2<bool>(false, true), false), Struct_4(1366f, vec2<bool>(true, false), true), Struct_4(809f, vec2<bool>(true, true), false), Struct_4(922f, vec2<bool>(false, false), true), Struct_4(-1000f, vec2<bool>(true, true), false), Struct_4(-1920f, vec2<bool>(true, false), true));

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    return Struct_1(~global2.c.a, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(f32(-1f) * -560f), u_input.a.x, global2.c.d);
}

fn func_3() -> f32 {
    var var_0 = Struct_4(global0.a, global0.b, !(!(!global0.c) == false));
    global0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -386f), global0.b, !(~reverseBits(u_input.b) == _wgslsmith_mult_u32(~0u, 0u)));
    let var_1 = func_1(1188f);
    global0 = Struct_4(-1287f, !select(select(!global0.b, !global0.b, !global0.b), global0.b, true), true && !(!all(vec2<bool>(true, true))));
    var var_2 = !vec4<bool>(false, !any(vec3<bool>(var_0.c, false, false)), var_0.b.x, false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> vec2<u32> {
    global2 = Struct_2(func_1(_wgslsmith_f_op_f32(func_3())), arg_1, func_1(276f));
    let var_0 = ~(countOneBits(70697u) >> (u_input.b % 32u)) << (39530u % 32u);
    var var_1 = Struct_3(func_1(_wgslsmith_f_op_f32(abs(global2.c.c))));
    global1 = array<Struct_4, 12>();
    let var_2 = var_1.a.a;
    return ~vec2<u32>(0u, _wgslsmith_add_u32(abs(~global2.c.a.x), _wgslsmith_mult_u32(u_input.b, _wgslsmith_sub_u32(1u, arg_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b.a.yz;
    var_0 = select(func_2(vec3<i32>(-6063i, global2.c.e, _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(global2.a.e, -22084i, global2.b.d), u_input.a))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1094f, global2.a.c)))), true, ~(~0u)), firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, var_0.x) >> (~global2.c.a.x % 32u), ~4294967295u)), true);
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(global2.a.c - 1603f)).b)), select(global0.b, vec2<bool>(global0.c, false), any(vec3<bool>(all(vec2<bool>(global0.c, global0.b.x)), !global0.b.x, global0.c))), all(vec4<bool>(_wgslsmith_f_op_f32(func_3()) != -303f, true, false & select(global0.b.x, true, true), global0.b.x)));
    global0 = Struct_4(-1826f, select(vec2<bool>(all(vec2<bool>(false, global0.b.x)), true), select(select(vec2<bool>(true, false), select(global0.b, global0.b, vec2<bool>(false, global0.b.x)), true), global0.b, vec2<bool>(true, !global0.c)), global0.b.x), false);
    let var_1 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<u32>(~var_0.x, u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, var_1.a.x), _wgslsmith_div_vec3_u32(var_1.a, u_input.c)))), global2.c.a.zx);
}

