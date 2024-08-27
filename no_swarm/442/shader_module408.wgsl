struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false));

var<private> global1: array<vec3<i32>, 9>;

var<private> global2: vec3<u32>;

var<private> global3: vec3<f32>;

var<private> global4: array<f32, 12> = array<f32, 12>(-171f, 1302f, 1000f, -1319f, 611f, -823f, -1000f, 1000f, -344f, 456f, 323f, -2165f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> vec2<i32> {
    var var_0 = arg_1.b.b.d.c;
    let var_1 = _wgslsmith_add_u32(max(min(~(~global2.x), 0u), 4294967295u), 1629u);
    let var_2 = arg_1.c.a;
    global2 = ~(~abs(~(~vec3<u32>(var_1, global2.x, 0u))));
    var var_3 = var_2.a;
    return countOneBits(~min(_wgslsmith_div_vec2_i32(-u_input.b, reverseBits(vec2<i32>(u_input.b.x, -41321i))), countOneBits(var_2.b)));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    let var_0 = !(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)));
    global0 = array<vec3<bool>, 32>();
    let var_1 = Struct_2(Struct_1(!(!(!var_0)), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.x, -191f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -778f)), Struct_5(global2.x, Struct_4(7086u, Struct_3(vec3<bool>(true, var_0.x, var_0.x), 75506u, vec2<f32>(831f, 1704f), Struct_1(vec2<bool>(var_0.x, false), vec2<i32>(u_input.b.x, 1i), -142f, var_0.x, u_input.b.x), Struct_1(var_0, u_input.b, 481f, var_0.x, u_input.b.x))), Struct_2(Struct_1(vec2<bool>(false, false), vec2<i32>(13135i, 1i), 343f, true, 2147483647i), Struct_1(vec2<bool>(var_0.x, true), u_input.b, global3.x, false, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -733f)), u_input.b.x <= 1i, -reverseBits(min(u_input.b.x, u_input.b.x))), Struct_1(!vec2<bool>(var_0.x, select(var_0.x, var_0.x, var_0.x)), u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(493f + 1678f)), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global2.x, 12u)] + _wgslsmith_f_op_f32(589f - global4[_wgslsmith_index_u32(global2.x, 12u)]))), !any(vec4<bool>(true, true, true, true)), abs(~u_input.b.x)));
    var var_2 = global3.x;
    var var_3 = var_1;
    return global2.x ^ (~4294967295u >> (_wgslsmith_add_u32(firstLeadingBit(4294967295u), u_input.a.x) % 32u));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    global2 = vec3<u32>(~4357u, 1u, global2.x >> (1087u % 32u));
    var var_0 = vec2<u32>(~u_input.a.x, func_2((u_input.a ^ vec4<u32>(0u, 4294967295u, global2.x, 4294967295u)) >> (vec4<u32>(4294967295u, 1198u, u_input.a.x, 1u) % vec4<u32>(32u))) >> (global2.x % 32u));
    let var_1 = arg_3;
    let var_2 = Struct_2(arg_1.e, arg_1.d);
    let var_3 = arg_1.c;
    return ~(~arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(~select(u_input.a.x, 1u, true), u_input.a.x, global2.x, global2.x));
    var var_1 = _wgslsmith_add_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, func_1(2147483647i, Struct_3(global0[_wgslsmith_index_u32(0u, 32u)], 43217u, vec2<f32>(1350f, 412f), Struct_1(vec2<bool>(true, false), vec2<i32>(-16994i, u_input.b.x), -1647f, true, u_input.b.x), Struct_1(vec2<bool>(false, true), u_input.b, global4[_wgslsmith_index_u32(u_input.a.x, 12u)], true, 3220i)), u_input.b, true), 17972u), u_input.a.wzw)), var_0.zyy & (u_input.a.xxz | var_0.yzw));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

