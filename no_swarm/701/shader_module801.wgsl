struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

var<private> global1: bool = true;

var<private> global2: vec2<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    var var_0 = true;
    var var_1 = !global2.x;
    var var_2 = Struct_1(reverseBits(_wgslsmith_clamp_vec3_u32(u_input.d.xxx << (vec3<u32>(u_input.e, 0u, 51538u) % vec3<u32>(32u)), ~u_input.d.zyw, min(vec3<u32>(u_input.d.x, u_input.e, u_input.d.x), u_input.d.xzz)) & countOneBits(vec3<u32>(0u, u_input.d.x, u_input.e))));
    var var_3 = Struct_1(~(~vec3<u32>(select(var_2.a.x, var_2.a.x, global2.x), ~var_2.a.x, 61351u | var_2.a.x)));
    global1 = false;
    return vec2<bool>(global2.x, true);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>) -> vec2<bool> {
    global2 = vec2<bool>(global2.x, any(!select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(false, global2.x, false, true), all(vec2<bool>(global2.x, false)))));
    var var_0 = vec2<u32>(~21654u, 1u);
    global2 = select(func_3(), vec2<bool>(false, !(true & any(vec4<bool>(global2.x, global2.x, false, false)))), true);
    var var_1 = _wgslsmith_add_vec2_u32(~(~u_input.d.xy), vec2<u32>(~firstLeadingBit(u_input.e), u_input.e >> (min(5067u >> (u_input.d.x % 32u), 1u & arg_0.e.a.x) % 32u)));
    var_1 = vec2<u32>(~(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.d.wxz), arg_0.e.a) ^ ~(~4294967295u)), u_input.e);
    return select(select(func_3(), vec2<bool>(any(!vec4<bool>(false, global2.x, false, global2.x)), false), global2.x), func_3(), true);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>) -> vec4<u32> {
    global2 = func_2(arg_0, (arg_0.e.a.yz >> (arg_1.zx % vec2<u32>(32u))) | u_input.d.zy);
    let var_0 = false;
    let var_1 = false;
    var var_2 = Struct_2(arg_0.e, Struct_1(vec3<u32>(arg_0.e.a.x, 53206u, 4294967295u)));
    global2 = vec2<bool>(_wgslsmith_f_op_f32(-arg_0.d) < arg_0.c, any(select(vec3<bool>(var_1 || var_1, any(vec4<bool>(true, var_0, false, var_0)), all(vec2<bool>(var_1, false))), vec3<bool>(false, var_0, var_0), any(vec4<bool>(var_1, true, var_1, var_1)))));
    return _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d.x, 0u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, u_input.e, 34723u, 97679u), vec4<u32>(var_2.b.a.x, 10720u, 4294967295u, 25578u))) << (~_wgslsmith_sub_vec4_u32(arg_1, _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(u_input.e, 29152u, arg_0.e.a.x, arg_0.e.a.x))) % vec4<u32>(32u)), ~firstLeadingBit(u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec4<bool>(true, any(!vec3<bool>(false, true, global2.x)), !global2.x, false));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1086f + _wgslsmith_f_op_f32(1705f - 836f)) - _wgslsmith_f_op_f32(step(771f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1456f + -182f) - 1f))) + 735f);
    var var_2 = ~(~_wgslsmith_mod_u32(u_input.d.x, 4294967295u) & ~_wgslsmith_add_u32(~u_input.e, 0u));
    var var_3 = ~_wgslsmith_mod_vec4_u32(countOneBits(func_1(global0[_wgslsmith_index_u32(~u_input.e, 11u)], u_input.d)), _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 90389u, u_input.e, 1u) | (vec4<u32>(u_input.d.x, u_input.e, u_input.d.x, u_input.d.x) | u_input.d)));
    var var_4 = all(vec4<bool>(global2.x, var_0, any(!(!vec4<bool>(global2.x, false, var_0, true))), true));
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(max(~abs(~u_input.d.xw), max(vec2<u32>(~u_input.e, var_3.x), vec2<u32>(var_3.x, ~var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(306f - 1153f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1152f, _wgslsmith_f_op_f32(round(-1140f))))));
}

