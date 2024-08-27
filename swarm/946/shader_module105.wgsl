struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_1 {
    var var_0 = 1i;
    var var_1 = Struct_1(u_input.a >= 0i, false);
    var var_2 = abs(~select(vec2<u32>(4560u, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, true))) & (vec2<u32>(firstTrailingBit(4294967295u), abs(38439u)) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(56724u, u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(81770u, 17521u), vec2<u32>(u_input.b, 1u))), ~vec2<u32>(38267u, u_input.b)) % vec2<u32>(32u)));
    var var_3 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_2.x, u_input.b), 59497u) >= _wgslsmith_add_u32(~(~39415u), var_2.x), false);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -513f)), _wgslsmith_f_op_f32(select(1236f, 847f, all(vec2<bool>(select(false, true, true), select(true, true, true))))));
    return Struct_1(true, var_3.b & !var_1.a);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(~_wgslsmith_mod_u32(~u_input.b, 1u) <= abs(firstTrailingBit(0u)), true);
    var_0 = Struct_1(var_0.b & any(!vec3<bool>(true, true, arg_0.a)), false);
    var_0 = arg_0;
    var var_1 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(min(vec3<u32>(4294967295u, 50950u, 0u), vec3<u32>(0u, 1u, u_input.b)), vec3<u32>(u_input.b, u_input.b, u_input.b) >> (vec3<u32>(u_input.b, 1u, 0u) % vec3<u32>(32u))), vec3<u32>(0u, min(u_input.b, u_input.b), u_input.b)) >> (vec3<u32>(u_input.b, max(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 4294967295u), ~vec3<u32>(u_input.b, 34632u, 6972u)), 1u), 0u) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(172f, 462f) - vec2<f32>(-901f, 467f)) + vec2<f32>(_wgslsmith_f_op_f32(min(770f, -1844f)), 764f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) - vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), 1199f));
    return _wgslsmith_mod_u32(u_input.b, ~countOneBits(4294967295u) >> (1u % 32u));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    let var_1 = vec3<i32>(_wgslsmith_sub_i32(~u_input.a, u_input.a), u_input.a >> ((_wgslsmith_mult_u32(u_input.b, u_input.b) << (~u_input.b % 32u)) % 32u), _wgslsmith_dot_vec2_i32(~(~vec2<i32>(0i, u_input.a)) & ~vec2<i32>(1i, u_input.a), ~(-vec2<i32>(u_input.a, u_input.a))));
    var var_2 = ~vec3<u32>(u_input.b, countOneBits((u_input.b | u_input.b) & ~u_input.b), func_3(var_0));
    let var_3 = Struct_1(all(vec3<bool>(false, var_0.a, !(var_1.x >= -1i))), any(vec4<bool>(true, var_0.a, false, var_0.a)) & var_0.a);
    let var_4 = firstLeadingBit(-_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_1.x, -22644i), 36049i));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_1();
    let var_2 = var_0;
    var_1 = func_2();
    var_1 = func_1();
    let var_3 = func_2();
    var_1 = var_0;
    let var_4 = func_2();
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_clamp_vec2_i32(-vec2<i32>(-47160i, firstTrailingBit(u_input.a)), -vec2<i32>(1i, 1i), vec2<i32>(-1i) * -(~vec2<i32>(-38274i, -3693i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -584f), -166f)), 1f);
}

