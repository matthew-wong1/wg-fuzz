struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: Struct_4,
    d: i32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_5 = Struct_5(vec4<f32>(-911f, -846f, -183f, -596f), Struct_4(vec3<u32>(1u, 1u, 13972u), Struct_3(true, vec4<i32>(-64821i, i32(-2147483648), 408i, 10062i), -29362i, vec2<bool>(false, true))), Struct_4(vec3<u32>(67208u, 17329u, 31061u), Struct_3(true, vec4<i32>(34741i, -9295i, 2147483647i, 1i), i32(-2147483648), vec2<bool>(false, true))), i32(-2147483648));

var<private> global1: Struct_3 = Struct_3(false, vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -51530i), i32(-2147483648), vec2<bool>(true, true));

var<private> global2: Struct_2 = Struct_2(false, vec2<bool>(true, false));

var<private> global3: array<f32, 6>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(min(-183f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(179f + _wgslsmith_f_op_f32(min(774f, global0.a.x)))))));
    let var_1 = ~global0.c.a.x;
    let var_2 = Struct_2(true, select(select(global2.b, global2.b, any(vec4<bool>(global2.b.x, global2.a, global2.a, global2.b.x))), vec2<bool>(global0.b.b.d.x, !(true || global2.a)), !global0.b.b.d.x));
    global2 = var_2;
    let var_3 = arg_1.x;
    return var_1;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>) -> bool {
    var var_0 = ~vec4<u32>(69135u, ~reverseBits(func_3(vec3<i32>(arg_0.c, -77147i, u_input.a), global0.a.wy, Struct_3(global0.b.b.a, vec4<i32>(global0.d, global1.c, global1.c, arg_0.c), global0.c.b.b.x, global0.b.b.d))), ~_wgslsmith_mod_u32(~global0.c.a.x, 21356u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(30109u, 872u)), arg_1.yx >> (vec2<u32>(4294967295u, global0.b.a.x) % vec2<u32>(32u))), vec2<u32>(0u, arg_1.x) | reverseBits(vec2<u32>(1u, 4294967295u))));
    var_0 = vec4<u32>(4294967295u, arg_1.x, 57370u, var_0.x);
    let var_1 = (global1.b & ~arg_0.b) | arg_0.b;
    var var_2 = false;
    let var_3 = global1.b.yw;
    return true;
}

fn func_1() -> vec2<bool> {
    var var_0 = true;
    var var_1 = _wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(4294967295u, 53176u), 1u, global0.b.a.x, 4294967295u), min(select(vec4<u32>(0u, 0u, global0.b.a.x, global0.c.a.x), vec4<u32>(global0.c.a.x, 4374u, 2087u, 34087u), vec4<bool>(global1.a, false, global2.a, true)) ^ (vec4<u32>(1364u, global0.b.a.x, global0.b.a.x, global0.b.a.x) & vec4<u32>(37733u, 4294967295u, global0.c.a.x, 1u)), countOneBits(~vec4<u32>(global0.b.a.x, 0u, 32033u, 56354u)))) << (firstLeadingBit(firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(23416u, 37039u, 1u, 16494u), vec4<u32>(global0.c.a.x, global0.c.a.x, 16196u, global0.c.a.x)))) % vec4<u32>(32u));
    var var_2 = !select(!vec3<bool>(global2.b.x, any(vec2<bool>(global2.b.x, global1.d.x)), true), vec3<bool>(false, func_2(Struct_3(true, vec4<i32>(u_input.a, global1.c, 2147483647i, u_input.a), -2147483647i, vec2<bool>(global2.a, global1.d.x)), reverseBits(vec4<u32>(51607u, var_1.x, var_1.x, 4294967295u))), global1.d.x & (global1.d.x & true)), select(vec3<bool>(true, global0.b.b.a, all(vec2<bool>(global0.c.b.a, false))), select(!vec3<bool>(global1.a, global0.c.b.d.x, true), select(vec3<bool>(global2.a, global0.c.b.d.x, global0.c.b.d.x), vec3<bool>(global0.b.b.a, false, global1.a), true), true), false));
    let var_3 = Struct_5(vec4<f32>(-378f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + 1498f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x))) + -862f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1620f), -1000f, var_2.x)))), Struct_4(abs(~(~vec3<u32>(22668u, 4294967295u, 0u))), Struct_3(true, select(vec4<i32>(0i, u_input.a, -53092i, -36713i), min(vec4<i32>(-2147483647i, u_input.a, u_input.a, global1.b.x), vec4<i32>(-21837i, 2147483647i, global0.b.b.c, u_input.a)), select(vec4<bool>(global2.a, false, global1.d.x, var_2.x), vec4<bool>(global1.a, false, global2.a, false), false)), u_input.a | global1.c, !vec2<bool>(false, var_2.x))), global0.b, u_input.a ^ 1i);
    return vec2<bool>(var_2.x, !(!(any(vec4<bool>(true, false, var_3.c.b.a, global2.a)) & !var_3.b.b.d.x)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<f32>, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global1.b.x, global1.c, u_input.a) >> (vec4<u32>(4294967295u, 19164u, 1u, global0.b.a.x) % vec4<u32>(32u)), reverseBits(global1.b)) & 2147483647i, -_wgslsmith_mult_i32(~min(u_input.a, 0i), select(_wgslsmith_mult_i32(u_input.a, 2147483647i), _wgslsmith_sub_i32(global1.b.x, global1.b.x), !global1.d.x)));
    let var_1 = arg_2.x;
    var var_2 = Struct_1(!select(select(select(vec4<bool>(global2.a, false, global0.c.b.d.x, global1.a), vec4<bool>(arg_3.x, global1.d.x, true, global0.b.b.a), arg_3.x), vec4<bool>(true, global1.d.x, true, false), !vec4<bool>(false, false, arg_1, false)), !select(vec4<bool>(arg_3.x, true, false, global1.a), vec4<bool>(global0.c.b.d.x, arg_3.x, arg_3.x, true), vec4<bool>(false, arg_3.x, true, true)), vec4<bool>(true, true, true, true)), ~(~arg_0), true, _wgslsmith_dot_vec2_u32(~vec2<u32>(~arg_0, 1450u), ~(~(~vec2<u32>(arg_0, 4294967295u)))));
    var_2 = Struct_1(var_2.a, ~_wgslsmith_add_u32(var_2.b, max(global0.b.a.x, abs(45528u))), false, var_2.b);
    var var_3 = vec4<i32>(_wgslsmith_mult_i32(21074i, _wgslsmith_add_i32(-2147483647i, global0.c.b.b.x)), 43084i, global1.b.x, -(countOneBits(_wgslsmith_dot_vec4_i32(global0.c.b.b, vec4<i32>(global0.d, -1i, -1i, 12810i))) & ((-17775i >> (var_2.d % 32u)) >> (~arg_0 % 32u))));
    return Struct_2(false, !select(global0.b.b.d, vec2<bool>(true, arg_3.x), vec2<bool>(!global2.a, var_3.x == global1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-617f, global0.a.x, global0.a.x);
    global3 = array<f32, 6>();
    var var_1 = func_4(_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(4294967295u, 0u, 26039u, 1u)), ~(~min(vec4<u32>(global0.b.a.x, 56872u, 107729u, global0.c.a.x), vec4<u32>(global0.b.a.x, global0.b.a.x, global0.b.a.x, 32764u)))), global2.b.x, vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(min(0u, global0.c.a.x), 6u)]), 1755f, 1171f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-223f + _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(4294967295u, 6u)], -1098f))))), !select(func_1(), !select(vec2<bool>(global1.a, global2.b.x), global1.d, global2.b), any(select(vec4<bool>(true, global2.b.x, global1.d.x, false), vec4<bool>(true, global0.c.b.d.x, false, false), global0.b.b.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global0.b.b.b.x, _wgslsmith_add_i32(~9988i, global0.d)));
}

