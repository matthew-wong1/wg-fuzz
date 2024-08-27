struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(true, false, false, false, false, false, true, true, false, true, false, true, true, true, true, false, false, true, false, true, true, true, false, true, false, true, false, true);

var<private> global1: Struct_5 = Struct_5(vec3<f32>(-2082f, 304f, -993f), true, -1000f, Struct_3(vec4<f32>(509f, 592f, 698f, 260f)));

var<private> global2: u32 = 8254u;

var<private> global3: array<bool, 3>;

var<private> global4: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(-23393i, 0i, i32(-2147483648), 2147483647i), vec4<i32>(0i, 0i, 12120i, -30753i), vec4<i32>(336i, -1i, 10791i, 42240i), vec4<i32>(25519i, 54079i, 43325i, 32391i), vec4<i32>(0i, -12039i, 2147483647i, 1i), vec4<i32>(2147483647i, 50352i, 14975i, -3671i), vec4<i32>(-1i, i32(-2147483648), -92229i, 48813i), vec4<i32>(2147483647i, 11002i, 2147483647i, -47846i), vec4<i32>(-60872i, 2147483647i, -77709i, i32(-2147483648)), vec4<i32>(25495i, 1i, -56524i, -1i), vec4<i32>(1i, 43317i, -10047i, 56868i), vec4<i32>(-87277i, -1i, 1i, 2147483647i), vec4<i32>(1i, 0i, 0i, -3573i), vec4<i32>(2147483647i, -26636i, -48785i, -8604i), vec4<i32>(-24538i, -26066i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, 0i, -1i, 2147483647i), vec4<i32>(-57741i, 0i, 0i, 0i), vec4<i32>(-20213i, -89656i, -1i, 1i), vec4<i32>(0i, -26643i, 19831i, -33721i), vec4<i32>(57240i, 1i, -74811i, i32(-2147483648)), vec4<i32>(19215i, 21985i, 0i, 1i), vec4<i32>(-51960i, 1i, -1i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -35483i), vec4<i32>(6923i, 0i, 11936i, 12056i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: bool) -> vec3<i32> {
    let var_0 = ~(~_wgslsmith_sub_u32(u_input.b.x, ~4962u) | ~0u);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - global1.d.a.x)), arg_0);
    global4 = array<vec4<i32>, 24>();
    var var_2 = u_input.c;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -351f) * _wgslsmith_f_op_f32(-arg_1)) * -1000f);
    return firstLeadingBit(_wgslsmith_div_vec3_i32(~u_input.e ^ vec3<i32>(21092i, var_2.x, -26132i), u_input.a.zyy) >> (u_input.b.yzz % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<i32>, 24>();
    global4 = array<vec4<i32>, 24>();
    global2 = ~u_input.b.x;
    var var_0 = -vec2<i32>(u_input.c.x, -66519i);
    var var_1 = abs(~min(max(u_input.d, u_input.b.x) ^ (u_input.d | u_input.b.x), u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(54619u, vec3<u32>(0u, _wgslsmith_dot_vec2_u32(u_input.b.xz, max(vec2<u32>(u_input.b.x, 1u), u_input.b.xx)) & ~(~4294967295u), abs(4294967295u)), _wgslsmith_div_u32(19140u, ~u_input.b.x), ((~vec3<i32>(var_0.x, u_input.e.x, u_input.a.x) >> (firstTrailingBit(u_input.b.zzy) % vec3<u32>(32u))) | func_1(-2124f, _wgslsmith_f_op_f32(step(global1.c, global1.a.x)), 847i, true)) << (~_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, u_input.d, u_input.b.x)), u_input.b.zzw) % vec3<u32>(32u)));
}

