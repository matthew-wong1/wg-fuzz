struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    return false;
}

fn func_4(arg_0: bool) -> vec2<u32> {
    var var_0 = Struct_1(-1488f, ~(~vec2<u32>(u_input.c, _wgslsmith_div_u32(1u, u_input.a))));
    let var_1 = !vec2<bool>(arg_0, all(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), false), true)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-508f - var_0.a)))), var_0.b & _wgslsmith_div_vec2_u32(var_0.b, var_0.b));
    return select(var_0.b, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.b.x, u_input.c | var_0.b.x), 0u), ~var_0.b.x), !all(select(vec3<bool>(true, true, false), vec3<bool>(var_1.x, false, var_1.x), !var_1.x)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    var var_0 = Struct_1(arg_2, func_4(func_3()));
    var var_1 = -_wgslsmith_dot_vec4_i32(-(~(-vec4<i32>(8987i, -46938i, -2147483647i, -1i))), _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(0i, 2147483647i, -1i, -34553i)), max(~vec4<i32>(-15426i, -1i, -1i, -2147483647i), min(vec4<i32>(4463i, -2147483647i, 12203i, -2147483647i), vec4<i32>(-2147483647i, -2147483647i, 2536i, -28072i))), firstTrailingBit(firstLeadingBit(vec4<i32>(-55734i, -1i, 31163i, -26402i)))));
    var_0 = Struct_1(-1000f, ~arg_1.zy);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), var_0.b);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<bool>) -> u32 {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    let var_0 = arg_2.d;
    global0 = array<Struct_2, 20>();
    return ~countOneBits(func_2(vec3<u32>(arg_2.d.b.x, u_input.b, var_0.b.x) >> (vec3<u32>(arg_1.d.b.x, var_0.b.x, arg_2.c.b.x) % vec3<u32>(32u)), vec3<u32>(36911u, arg_2.c.b.x, 18867u), _wgslsmith_f_op_f32(-var_0.a)).b.x) | u_input.b;
}

fn func_1(arg_0: u32, arg_1: f32) -> vec2<bool> {
    global0 = array<Struct_2, 20>();
    var var_0 = any(vec2<bool>(true, true));
    global0 = array<Struct_2, 20>();
    var var_1 = arg_0;
    let var_2 = _wgslsmith_clamp_u32(countOneBits(1u), func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-254f, -866f, -691f, 1709f) + vec4<f32>(409f, arg_1, arg_1, -671f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, arg_1, arg_1, arg_1))), vec4<bool>(true, true, true, true))), Struct_2(max(vec3<i32>(-21664i, -1i, 2147483647i), vec3<i32>(-40939i, 1i, 26880i)), i32(-1i) * -1i, Struct_1(329f, vec2<u32>(45887u, 9139u)), func_2(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(30316u, 4294967295u, arg_0), -191f)), global0[_wgslsmith_index_u32(u_input.b, 20u)], select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), all(vec4<bool>(false, false, true, false)))) | (~(~arg_0) >> (firstTrailingBit(arg_0 & 0u) % 32u)), 33499u);
    return select(vec2<bool>(true, true), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, true)), func_3())), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_div_u32(1u, firstTrailingBit(~u_input.a)), _wgslsmith_f_op_f32(select(-471f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -558f))), all(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)))));
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    var var_1 = global0[_wgslsmith_index_u32(select(~(~16368u), 48487u, !var_0.x), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.zz, i32(-1i) * -_wgslsmith_mult_i32(-var_1.a.x, var_1.b), ~(~vec4<u32>(_wgslsmith_clamp_u32(u_input.a, 1u, 8497u), ~1u, _wgslsmith_sub_u32(var_1.d.b.x, var_1.c.b.x), var_1.c.b.x)), reverseBits(countOneBits(var_1.a.yz)));
}

