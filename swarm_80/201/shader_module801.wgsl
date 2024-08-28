struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: u32;

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(Struct_1(9340u));

var<private> global4: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(1421f, 1119f, 1000f, 961f), vec4<f32>(-1164f, 956f, 1000f, 583f), vec4<f32>(365f, 1000f, -325f, 128f), vec4<f32>(2003f, -489f, -1040f, -1085f), vec4<f32>(616f, -1020f, 155f, -1307f), vec4<f32>(1000f, -972f, -370f, -585f), vec4<f32>(620f, -486f, -2398f, -325f), vec4<f32>(-1089f, 399f, 672f, 216f), vec4<f32>(-939f, 258f, 1320f, -1000f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    global2 = Struct_2(Struct_1(18085u));
    var var_0 = firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) << (4294967295u % 32u), -8862i, u_input.b.x >> (~(~12058u) % 32u), -((u_input.b.x & 0i) & -1i)));
    global3 = Struct_2(global2.a);
    var var_1 = Struct_2(Struct_1(~(~1u)));
    var var_2 = global2.a;
    return 0u;
}

fn func_2() -> Struct_2 {
    var var_0 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), u_input.a.x >= 0i), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_u32(1u >> (global2.a.a % 32u), 1u)));
    var var_2 = Struct_2(Struct_1(min(_wgslsmith_mult_u32(~28981u, func_3()), var_1.a.a)));
    let var_3 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3.a.a, 30u)]);
    global2 = var_1;
    return var_1;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    global2 = func_2();
    let var_0 = global0[_wgslsmith_index_u32(~(~arg_2.a.a), 30u)];
    global4 = array<vec4<f32>, 9>();
    global2 = Struct_2(arg_1.a);
    global4 = array<vec4<f32>, 9>();
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = -549f;
    let var_1 = Struct_2(global2.a);
    global1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global3.a.a, 4294967295u, 15306u), countOneBits(vec3<u32>(0u, global3.a.a, 26838u))), vec3<u32>(global2.a.a, _wgslsmith_clamp_u32(arg_0.a, global2.a.a, global2.a.a), ~var_1.a.a)), vec3<u32>(countOneBits(~1u), ~_wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u), 5754u)), ~_wgslsmith_div_u32(_wgslsmith_add_u32(var_1.a.a, global2.a.a >> (1u % 32u)), 1u));
    global0 = array<f32, 30>();
    var var_2 = func_2();
    return Struct_2(global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(4294967295u);
    var var_1 = func_4(global2.a, func_1(Struct_2(Struct_1(global2.a.a)), Struct_2(Struct_1(1u)), Struct_2(global2.a), global2.a), max(~max(countOneBits(vec3<i32>(u_input.b.x, -24599i, 15725i)), vec3<i32>(1i, 27340i, u_input.c.x)), u_input.a.wzx));
    var var_2 = !vec3<bool>(all(vec4<bool>(true, true, true, true)), false, var_1.a.a >= ~global3.a.a);
    var_2 = select(vec3<bool>(false, true, var_2.x), !(!(!select(vec3<bool>(true, var_2.x, false), vec3<bool>(true, var_2.x, true), vec3<bool>(var_2.x, var_2.x, var_2.x)))), vec3<bool>(var_2.x, any(var_2.yx), var_2.x));
    var_2 = !vec3<bool>(!var_2.x, var_1.a.a != _wgslsmith_add_u32(select(86750u, var_1.a.a, false), func_4(var_1.a, false, u_input.a.yxy).a.a), true);
    global1 = global2.a.a;
    global1 = firstLeadingBit(~(~global2.a.a << (~firstLeadingBit(global3.a.a) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(reverseBits(~global3.a.a | _wgslsmith_sub_u32(var_1.a.a, global2.a.a)), ~(global3.a.a ^ 47933u) | min(0u, 1u)), ~_wgslsmith_mod_u32(~1u, ~1u));
}

