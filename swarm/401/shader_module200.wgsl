struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: Struct_1;

var<private> global2: vec4<u32> = vec4<u32>(0u, 4526u, 44812u, 0u);

var<private> global3: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_div_vec4_u32(select(vec4<u32>(_wgslsmith_sub_u32(arg_2.b.a, 1u), 34819u, global2.x, global1.c) & u_input.b, select(max(vec4<u32>(u_input.b.x, u_input.b.x, global2.x, 22215u), u_input.b), u_input.b, select(select(vec4<bool>(arg_2.a.x, true, false, arg_2.a.x), vec4<bool>(arg_2.a.x, true, false, arg_3.a.x), vec4<bool>(false, arg_3.a.x, arg_2.a.x, arg_2.a.x)), arg_2.a, vec4<bool>(true, arg_3.a.x, arg_3.a.x, arg_2.a.x))), !(!arg_3.a)), ~vec4<u32>(4294967295u, 44743u, arg_1.c, _wgslsmith_sub_u32(firstLeadingBit(64837u), 1u)));
    global2 = vec4<u32>(firstLeadingBit(4010u << (~_wgslsmith_mult_u32(58417u, u_input.b.x) % 32u)), 4294967295u, arg_2.b.c, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(47039u, 4294967295u, global2.x, arg_2.b.a) ^ u_input.b, select(vec4<u32>(arg_1.a, global2.x, 4294967295u, arg_0.a), vec4<u32>(arg_2.d.x, arg_1.c, 33516u, arg_0.a), arg_2.a)), vec4<u32>(~global2.x, global2.x, _wgslsmith_add_u32(64241u, arg_3.d.x), 58507u)), ~firstLeadingBit(abs(36578u))));
    global2 = ~reverseBits(~(~(~vec4<u32>(3172u, 4294967295u, 12016u, 4294967295u))));
    global2 = ~u_input.b;
    var var_1 = !arg_2.a.xy;
    return any(select(vec2<bool>(_wgslsmith_mult_i32(arg_0.b, 70531i) > (i32(-1i) * -36449i), _wgslsmith_f_op_f32(select(arg_3.c.x, 337f, true)) == _wgslsmith_div_f32(-922f, arg_3.c.x)), select(select(!arg_3.a.zy, select(arg_3.a.yz, arg_3.a.xw, vec2<bool>(arg_2.a.x, false)), arg_2.a.wy), select(vec2<bool>(true, arg_2.a.x), arg_3.a.xy, arg_2.a.yx), arg_3.a.x), select(select(vec2<bool>(false, arg_2.a.x), select(arg_2.a.ww, arg_3.a.wx, false), vec2<bool>(var_1.x, true)), !(!arg_2.a.wz), -1000f != arg_3.c.x)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> bool {
    var var_0 = Struct_2(select(!(!(!vec4<bool>(arg_1, arg_1, arg_1, true))), select(select(select(vec4<bool>(false, true, false, arg_1), vec4<bool>(arg_0, false, false, arg_1), vec4<bool>(arg_0, arg_0, arg_0, true)), vec4<bool>(false, arg_1, arg_0, arg_1), true), vec4<bool>(arg_0, func_3(Struct_1(global1.c, arg_2.b, 1u), Struct_1(arg_2.a, u_input.c.x, u_input.a), Struct_2(vec4<bool>(arg_0, false, false, false), Struct_1(global1.c, u_input.c.x, 1u), vec3<f32>(-395f, 1512f, -220f), vec2<u32>(global2.x, global2.x)), Struct_2(vec4<bool>(arg_0, arg_1, arg_0, false), Struct_1(48077u, -14256i, arg_2.c), vec3<f32>(-699f, -825f, 1264f), global2.xw)), arg_0, true), any(!vec2<bool>(arg_0, arg_0))), !select(!vec4<bool>(true, arg_0, arg_1, false), vec4<bool>(true, true, true, true), true)), Struct_1(~(~firstLeadingBit(43210u)), (23766i ^ reverseBits(u_input.c.x)) >> (~select(61524u, 4294967295u, true) % 32u), _wgslsmith_add_u32(_wgslsmith_mod_u32(global1.a, ~u_input.a), select(~7830u, _wgslsmith_clamp_u32(4294967295u, 0u, global2.x), func_3(Struct_1(arg_2.a, 10909i, 1u), Struct_1(u_input.b.x, arg_2.b, u_input.a), Struct_2(vec4<bool>(arg_1, false, arg_1, false), Struct_1(global2.x, u_input.c.x, 0u), vec3<f32>(-1448f, 1164f, 1436f), u_input.b.xw), Struct_2(vec4<bool>(arg_0, arg_0, arg_0, true), Struct_1(11303u, -36359i, 4294967295u), vec3<f32>(-816f, 2510f, 1571f), vec2<u32>(global1.a, 4294967295u)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-188f, 463f, 305f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1800f, 917f, -380f))))), countOneBits(global2.ww));
    global1 = Struct_1(7107u, ~0i, 1u);
    let var_1 = ~((select(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.b.b, global1.b, arg_2.b), vec4<i32>(arg_2.b, -7292i, arg_2.b, 2147483647i)), var_0.b.b, false) << (124595u % 32u)) ^ -var_0.b.b);
    var_0 = Struct_2(!(!(!var_0.a)), arg_2, vec3<f32>(var_0.c.x, -2360f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.c.x, var_0.c.x)))) * 1570f)), select(global2.wz, var_0.d >> (u_input.b.zz % vec2<u32>(32u)), select(select(!vec2<bool>(var_0.a.x, false), var_0.a.wz, arg_0 | false), !(!var_0.a.xw), vec2<bool>(var_0.a.x | false, any(vec3<bool>(var_0.a.x, arg_0, var_0.a.x))))));
    var var_2 = var_0.a.zyw;
    return !arg_0;
}

fn func_1() -> Struct_2 {
    return Struct_2(vec4<bool>(func_2(true, all(vec3<bool>(false, false, false)), global0[_wgslsmith_index_u32(~max(global2.x, global1.a), 31u)]), all(vec2<bool>(true, true)), true, func_2(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true)), true, Struct_1(16626u, -global1.b, global1.c))), global0[_wgslsmith_index_u32(u_input.b.x, 31u)], vec3<f32>(_wgslsmith_f_op_f32(abs(1f)), 1f, -728f), vec2<u32>(10611u, min(firstTrailingBit(~33398u), ~21477u)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global2 = vec4<u32>(firstLeadingBit(arg_3.d.x), min(arg_3.d.x, max(0u, _wgslsmith_dot_vec2_u32(~global2.xw, abs(vec2<u32>(u_input.a, arg_2.b.a))))), ~1u, _wgslsmith_clamp_u32(1u, 6062u, ~select(~42719u, arg_0.b.c, all(vec2<bool>(arg_1, false)))));
    return Struct_1(reverseBits(~97097u & ~_wgslsmith_mult_u32(u_input.b.x, arg_2.d.x)), ~1i, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), func_2(true, select(true, !any(vec2<bool>(true, false)), true), global0[_wgslsmith_index_u32(56600u, 31u)]), Struct_2(vec4<bool>(true, global1.b <= -u_input.c.x, true, true), func_1().b, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(967f * -1309f))), -583f, _wgslsmith_f_op_f32(select(-408f, _wgslsmith_f_op_f32(min(976f, 106f)), all(vec3<bool>(false, false, true))))), reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.wx, u_input.b.zw, vec2<u32>(global2.x, global2.x)), u_input.b.yy))), func_1());
    let var_1 = 2147483647i > u_input.c.x;
    let var_2 = func_1();
    global0 = array<Struct_1, 31>();
    var var_3 = ~(~0u);
    global1 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yxy, u_input.b);
}

