struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(4294967295u, 23455u, 4294967295u, 61487u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> u32 {
    global0 = array<u32, 4>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f) - -483f), -579f));
    var var_1 = _wgslsmith_div_vec2_u32(arg_1.b.wy & arg_1.b.xz, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u | global0[_wgslsmith_index_u32(1u, 4u)], firstLeadingBit(1u)), abs(max(17171u, 66572u))), 60789u));
    var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~arg_1.b.x, ~4294967295u), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 4u)], 4u)], 0u)), ~(~arg_1.b.xz)) ^ vec2<u32>(1u, 1u);
    var var_2 = arg_1;
    return arg_2 ^ var_2.b.x;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<f32>) -> vec4<bool> {
    global0 = array<u32, 4>();
    let var_0 = arg_1;
    global0 = array<u32, 4>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1215f, var_0.a.x, 1000f, 681f) - vec4<f32>(-1531f, arg_3.x, arg_1.a.x, 291f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(242f, var_0.a.x, -1380f, arg_1.a.x) * var_0.a))))), vec4<u32>(_wgslsmith_sub_u32(abs(1u), ~arg_2.x), reverseBits(~_wgslsmith_mult_u32(4294967295u, arg_2.x)), _wgslsmith_dot_vec3_u32(select(arg_1.b.wzx ^ vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], arg_1.b.x, var_0.b.x), ~arg_1.b.xwz, any(vec2<bool>(arg_1.c, arg_0))), vec3<u32>(0u, arg_2.x, 68817u)), ~(~firstLeadingBit(arg_1.b.x))), !all(!select(vec3<bool>(false, true, var_0.c), vec3<bool>(arg_1.c, arg_1.c, arg_0), vec3<bool>(arg_0, true, false))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a.x, var_0.a.x, arg_3.x, -549f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.x, -931f, arg_3.x, 1227f))), arg_0))) * arg_1.a), ~_wgslsmith_mult_vec4_u32(var_0.b, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], arg_1.b.x, 22606u, 64223u) | u_input.c), arg_0);
    return vec4<bool>(true, arg_0, !(!(!(var_0.c & var_0.c))), !var_1.c);
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<u32>((u_input.d.x ^ _wgslsmith_mult_u32(49706u, global0[_wgslsmith_index_u32(max(21710u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(98499u, 4u)], 4u)], 4u)]), 4u)])) << (u_input.b % 32u), _wgslsmith_div_u32(~3499u, abs(22271u) & func_2(vec2<bool>(false, true), Struct_1(vec4<f32>(-619f, 268f, 513f, 1000f), u_input.c, false), ~0u)));
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(567f - 1112f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(257f, 790f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-648f, -274f)))), -1266f), u_input.c, any(vec4<bool>(any(vec2<bool>(true, true)), true, any(func_3(false, Struct_1(vec4<f32>(752f, -197f, 340f, -1013f), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], 1u, global0[_wgslsmith_index_u32(u_input.c.x, 4u)], global0[_wgslsmith_index_u32(var_0.x, 4u)]), false), var_0, vec4<f32>(-743f, -502f, 1380f, 277f))), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))))));
    let var_2 = true;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), ~var_0.b, true);
    let var_2 = !(!(!(!select(vec2<bool>(var_1.c, false), vec2<bool>(var_1.c, var_1.c), vec2<bool>(true, var_0.c)))));
    var var_3 = func_1();
    global0 = array<u32, 4>();
    var var_4 = _wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(func_1().a.x, var_0.a.x, _wgslsmith_f_op_f32(min(var_0.a.x, 1491f)), var_3.a.x), vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(1433f * var_3.a.x), -417f, _wgslsmith_f_op_f32(step(-749f, -590f))))))), select(vec4<bool>(true, true, !(!var_2.x), true || var_2.x), vec4<bool>(var_2.x, var_2.x, !(var_3.a.x >= var_1.a.x), !(var_1.b.x == var_3.b.x)), true)));
    let var_5 = _wgslsmith_f_op_f32(min(804f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(326f * var_1.a.x) + -1000f))))));
    var var_6 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_3.a.x, var_0.a.x), func_1().a.x, _wgslsmith_f_op_f32(var_1.a.x * -1000f), var_3.a.x)), vec4<u32>(23763u, 75170u, firstTrailingBit(1u), func_1().b.x), var_2.x || func_1().c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_1.a + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.a + var_1.a))))), -1i);
}

