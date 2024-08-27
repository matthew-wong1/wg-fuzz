struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14>;

var<private> global1: array<vec4<i32>, 21>;

var<private> global2: array<i32, 9>;

var<private> global3: array<Struct_2, 17>;

var<private> global4: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(1u << (~(~u_input.c.x) % 32u), 17u)], global3[_wgslsmith_index_u32(~reverseBits(0u), 17u)]);
    global1 = array<vec4<i32>, 21>();
    var var_1 = firstTrailingBit(max(1i, u_input.b));
    let var_2 = !(!global0[_wgslsmith_index_u32(firstLeadingBit(var_0.a.b), 14u)]);
    var_0 = Struct_3(Struct_2(Struct_1(vec2<bool>(!var_0.b.a.a.x, global2[_wgslsmith_index_u32(40087u, 9u)] >= global2[_wgslsmith_index_u32(33210u, 9u)])), ~0u, Struct_1(select(!vec2<bool>(var_0.a.c.a.x, false), var_0.b.a.a, var_0.b.a.a))), Struct_2(Struct_1(vec2<bool>(true, true)), _wgslsmith_mult_u32(0u, ~var_0.b.b), var_0.a.c));
    return u_input.c.x;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_sub_u32(min(max(1u, ~u_input.c.x), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.d.yzw, u_input.d.xyz), func_3(4294967295u))), ~(~firstLeadingBit(~7337u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-134f * -127f), -438f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(689f, -125f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1712f, -1628f)), _wgslsmith_f_op_f32(f32(-1f) * -443f)))));
    global0 = array<vec4<bool>, 14>();
    return !any(vec3<bool>(true, select(false, true, 745f >= var_1), true));
}

fn func_1(arg_0: vec4<bool>) -> StorageBuffer {
    let var_0 = Struct_1(!vec2<bool>(!arg_0.x, any(!arg_0.wy)));
    global0 = array<vec4<bool>, 14>();
    let var_1 = Struct_1(select(!vec2<bool>(arg_0.x, func_2()), vec2<bool>(all(arg_0.xz) || false, true | (true || var_0.a.x)), arg_0.wz));
    var var_2 = vec4<i32>(_wgslsmith_mod_i32(-15182i, -14116i), global2[_wgslsmith_index_u32(firstTrailingBit(~(~_wgslsmith_add_u32(1u, u_input.c.x))), 9u)], -2147483647i, -37960i & select(i32(-1i) * -42122i, 0i, (0i | u_input.a) <= (1i & global2[_wgslsmith_index_u32(u_input.d.x, 9u)])));
    let var_3 = -(~abs(global2[_wgslsmith_index_u32(1u, 9u)]));
    return StorageBuffer(~(vec2<i32>(u_input.a, _wgslsmith_add_i32(1i, var_3)) & -_wgslsmith_mod_vec2_i32(var_2.xx, var_2.zw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1335f)) * 2056f)) - -910f), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.d.zwz, u_input.c.xwy)), u_input.c.xz ^ vec2<u32>(82244u, 5076u >> (u_input.d.x % 32u)), u_input.c.yy), _wgslsmith_div_u32(~(_wgslsmith_mult_u32(u_input.c.x, 0u) & ~u_input.c.x), u_input.c.x), 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 17>();
    global0 = array<vec4<bool>, 14>();
    global3 = array<Struct_2, 17>();
    let var_0 = Struct_1(!(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))));
    global4 = false;
    let x = u_input.a;
    s_output = func_1(vec4<bool>(all(select(vec3<bool>(true, true, false), !vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(false, var_0.a.x, var_0.a.x))), false, true, !(_wgslsmith_sub_i32(2147483647i, 21483i) <= u_input.a)));
}

