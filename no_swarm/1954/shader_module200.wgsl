struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec3<u32>, 22>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    global0 = array<vec3<u32>, 22>();
    global0 = array<vec3<u32>, 22>();
    global0 = array<vec3<u32>, 22>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) - _wgslsmith_f_op_f32(-976f + 433f)), _wgslsmith_f_op_f32(-arg_1.x)))), firstLeadingBit(~vec2<u32>(~65611u, 1u)), !vec4<bool>(true, true, all(vec2<bool>(true, false)), all(vec4<bool>(false, true, false, false)) & false));
    global0 = array<vec3<u32>, 22>();
    return ~4294967295u;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec2<i32>, arg_3: f32) -> vec2<bool> {
    let var_0 = func_2(~(~(~1u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_3, arg_3)));
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0, var_0, ~17763u), global0[_wgslsmith_index_u32(var_0, 22u)]), vec2<bool>(all(vec3<bool>(!arg_0, arg_0, true)), true), arg_3);
    let var_2 = Struct_2(-613f, ~var_1.a.xx, select(!select(!vec4<bool>(arg_0, var_1.b.x, arg_0, arg_0), !vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x), true), vec4<bool>(1f <= var_1.c, var_1.b.x, all(var_1.b), any(vec4<bool>(false, true, arg_0, arg_0)) || true), vec4<bool>(!var_1.b.x, var_1.b.x, true, any(!vec4<bool>(false, false, true, arg_0)))));
    global0 = array<vec3<u32>, 22>();
    var var_3 = var_2;
    return vec2<bool>(false, true);
}

fn func_1() -> Struct_1 {
    var var_0 = -1679f;
    var var_1 = -min(abs(reverseBits(u_input.a)), u_input.a) << (func_2(26392u, vec3<f32>(1f, 1f, 1f)) % 32u);
    var var_2 = vec3<bool>(any(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(func_3(false, 316f, vec2<i32>(u_input.a, u_input.a), -102f), vec2<bool>(false, true), any(vec3<bool>(false, true, true))), -2147483647i == ~u_input.a)), select(true, any(vec2<bool>(true, true)) || (true && (-10470i >= u_input.a)), false), !all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, true))));
    let var_3 = Struct_2(1f, ~_wgslsmith_add_vec2_u32(~vec2<u32>(40887u, 4294967295u), select(vec2<u32>(1u, 22405u), ~vec2<u32>(44031u, 4759u), !var_2.x)), !vec4<bool>(!var_2.x, false, any(vec2<bool>(var_2.x, true)), var_2.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1249f)) - _wgslsmith_f_op_f32(floor(-550f)));
    return Struct_1(~global0[_wgslsmith_index_u32(4951u, 22u)], select(vec2<bool>(!(!var_2.x), false), var_2.xy, var_3.c.xy), -437f);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = ~arg_0.a.x ^ 17886u;
    global0 = array<vec3<u32>, 22>();
    var var_1 = !(!vec3<bool>(true, true, select(arg_0.b.x, true, arg_0.b.x)));
    let var_2 = func_1();
    let var_3 = func_1();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 22>();
    let var_0 = func_4(func_1(), -1000f, _wgslsmith_div_f32(-734f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1031f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1471f, 1159f)))))));
    let var_1 = select(all(select(!select(vec3<bool>(var_0.b.x, false, false), vec3<bool>(true, var_0.b.x, var_0.b.x), false), vec3<bool>(true, all(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), true), _wgslsmith_dot_vec3_u32(var_0.a, global0[_wgslsmith_index_u32(76866u, 22u)]) <= ~11226u)), true, var_0.c <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-260f, _wgslsmith_f_op_f32(var_0.c + -766f)) * 1389f));
    let var_2 = func_1();
    let var_3 = Struct_2(_wgslsmith_f_op_f32(floor(-443f)), ~(~(var_2.a.xz >> ((var_2.a.yz >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)))), vec4<bool>(false, var_1, !all(vec3<bool>(var_2.b.x, false, false)) || true, func_3(var_0.b.x, 1646f, vec2<i32>(u_input.a, abs(-1i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1553f, var_2.c))))).x));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

