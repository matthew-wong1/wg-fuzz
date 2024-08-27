struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_4(Struct_3(Struct_1(u_input.a), Struct_1(arg_0.x), Struct_2(Struct_1(arg_0.x), Struct_1(u_input.c), Struct_1(~u_input.a)), Struct_2(Struct_1(arg_0.x), Struct_1(reverseBits(73335u)), Struct_1(firstLeadingBit(u_input.c)))));
    let var_1 = Struct_2(var_0.a.c.a, var_0.a.c.c, var_0.a.c.c);
    let var_2 = !vec3<bool>(true | all(vec2<bool>(false, true)), any(vec3<bool>(any(vec2<bool>(false, true)), true, true)), false);
    let var_3 = -810f;
    let var_4 = Struct_4(var_0.a);
    return var_1.b.a;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(Struct_3(Struct_1(1u | u_input.c), Struct_1(u_input.c), Struct_2(Struct_1(5186u), Struct_1(u_input.a & u_input.c), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.c, 0u)))), Struct_2(Struct_1(4294967295u >> (u_input.c % 32u)), Struct_1(u_input.a >> (1u % 32u)), Struct_1(_wgslsmith_add_u32(u_input.a, u_input.c)))));
    var_0 = Struct_4(Struct_3(var_0.a.c.c, Struct_1(max(u_input.c ^ var_0.a.a.a, ~var_0.a.d.a.a)), Struct_2(var_0.a.b, var_0.a.b, Struct_1(1u)), Struct_2(Struct_1(var_0.a.c.a.a), Struct_1(func_3(vec4<u32>(u_input.a, var_0.a.b.a, 4294967295u, var_0.a.b.a))), var_0.a.c.c)));
    var var_1 = Struct_3(var_0.a.d.b, Struct_1(~1u), var_0.a.c, Struct_2(Struct_1(25085u), var_0.a.b, var_0.a.b));
    var_1 = var_0.a;
    var_0 = Struct_4(Struct_3(var_0.a.c.a, var_0.a.d.a, Struct_2(Struct_1(var_1.a.a), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(18522u, u_input.a, var_1.b.a, 0u), vec4<u32>(var_1.c.a.a, 32786u, 58246u, var_0.a.d.c.a))), var_0.a.a), var_1.d));
    return Struct_1(var_1.a.a);
}

fn func_1(arg_0: f32) -> vec2<u32> {
    let var_0 = Struct_3(func_2(), func_2(), Struct_2(Struct_1(u_input.c), func_2(), func_2()), Struct_2(Struct_1(_wgslsmith_mod_u32(~0u, ~u_input.a)), func_2(), Struct_1(0u)));
    let var_1 = var_0.c;
    let var_2 = var_1;
    let var_3 = vec2<i32>(-1i, ~(-30655i));
    var var_4 = ~_wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.c, u_input.c, var_1.c.a) ^ countOneBits(vec3<u32>(48057u, 76763u, 1u)), vec3<u32>(var_2.b.a, var_2.a.a, 1u) | (vec3<u32>(1u, var_1.a.a, var_0.d.a.a) | vec3<u32>(8617u, 0u, var_0.b.a)), !any(vec4<bool>(false, false, false, false))), max(~_wgslsmith_mult_vec3_u32(vec3<u32>(6462u, 32923u, var_1.b.a), vec3<u32>(var_2.b.a, var_0.c.a.a, 1u)), min(min(vec3<u32>(1u, var_1.b.a, var_1.b.a), vec3<u32>(1468u, 0u, var_2.c.a)), vec3<u32>(57175u, var_1.a.a, var_2.a.a) & vec3<u32>(var_2.b.a, 1u, 0u))));
    return ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(19342u, 60103u), vec2<u32>(var_2.c.a, 0u)) ^ ~(~vec2<u32>(16504u, var_1.c.a)), vec2<u32>(min(~1u, 18446u), var_1.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(147397i, min(u_input.b, 1i));
    var_0 = u_input.e.zy;
    var var_1 = vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.a, 0u)) | select(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c, 0u), vec2<bool>(false, true)), ~func_1(-1282f)), vec2<u32>(u_input.c, 71117u)));
    let var_2 = func_2();
    var var_3 = func_2();
    var var_4 = true;
    var_0 = countOneBits(vec2<i32>(u_input.e.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), ~vec2<i32>(1i, u_input.b))));
    let var_5 = ~(~select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.a, var_1.x, 2241u), vec3<u32>(var_1.x, var_2.a, var_3.a)) ^ (vec3<u32>(var_1.x, 4294967295u, 0u) ^ vec3<u32>(var_1.x, u_input.a, var_1.x)), countOneBits(~vec3<u32>(var_3.a, u_input.c, var_3.a)), vec3<bool>(true, true, true)));
    var var_6 = Struct_2(Struct_1(var_2.a), Struct_1(abs(abs(~7599u))), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(619f, 414f, -331f)))) * vec3<f32>(_wgslsmith_f_op_f32(max(975f, -106f)), _wgslsmith_f_op_f32(-1591f + _wgslsmith_f_op_f32(max(230f, 196f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -667f))))));
}

