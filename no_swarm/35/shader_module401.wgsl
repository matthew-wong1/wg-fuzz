struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20>;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 1u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global0 = array<vec2<i32>, 20>();
    global1 = ~vec3<u32>(abs(~(~16680u)), _wgslsmith_mult_u32(~global1.x & countOneBits(global1.x), u_input.d), u_input.a.x);
    let var_0 = select(select(vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), max(global1.x, global1.x) < min(1u, 1u), (u_input.b.x <= 2147483647i) && any(vec2<bool>(false, true)), true || any(vec4<bool>(false, true, true, false))), !vec4<bool>(true, any(vec3<bool>(true, false, true)), 4671u < global1.x, true), !(!any(vec3<bool>(false, false, true)))), select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), u_input.d >= firstLeadingBit(u_input.a.x)), vec4<bool>(false, _wgslsmith_f_op_f32(ceil(1404f)) >= 1082f, true, true), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), false)), all(vec2<bool>(select(false, true, true), true)) || (all(vec2<bool>(false, false)) || true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, 323f)));
    var var_2 = var_0.x;
    return _wgslsmith_f_op_f32(exp2(var_1));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -482f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1658f)))))), -1000f));
    let var_1 = Struct_1(1i, 36937i);
    global0 = array<vec2<i32>, 20>();
    global1 = abs(vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(global1.x, 4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 21966u, u_input.d), vec4<u32>(4294967295u, 4294967295u, global1.x, 9089u))));
    var var_2 = ~(~vec3<u32>(~firstLeadingBit(global1.x), ~abs(1u), _wgslsmith_mult_u32(25089u, _wgslsmith_sub_u32(global1.x, 0u))));
    return Struct_1(1i, 39190i);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_1 {
    global1 = ~(vec3<u32>(max(1u, min(4294967295u, 18528u)), ~4294967295u, _wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(14170u, u_input.a.x, 4294967295u))) << (~vec3<u32>(global1.x ^ 4294967295u, _wgslsmith_div_u32(u_input.d, 0u), abs(30069u)) % vec3<u32>(32u)));
    global0 = array<vec2<i32>, 20>();
    var var_0 = arg_1;
    global0 = array<vec2<i32>, 20>();
    var var_1 = arg_1;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs((reverseBits(vec4<i32>(u_input.c, -2147483647i, 1i, u_input.b.x)) | vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.c)) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, u_input.c), firstTrailingBit(vec4<i32>(-1i, 23430i, u_input.c, u_input.b.x)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 977f) + 570f) * -806f)));
    var var_1 = vec2<i32>(u_input.c, u_input.c);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-696f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(977f, -432f))))))));
    let var_3 = _wgslsmith_f_op_f32(1000f * -525f);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3))));
    let var_5 = i32(-1i) * -_wgslsmith_dot_vec2_i32(max(vec2<i32>(18368i, -45273i) ^ global0[_wgslsmith_index_u32(u_input.d, 20u)], u_input.b ^ vec2<i32>(var_1.x, var_0.b)), -vec2<i32>(var_1.x, -32678i));
    var_0 = Struct_1(-1i >> (~u_input.a.x % 32u), -max(countOneBits(~u_input.b.x), reverseBits(u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_1.x | -var_0.b), 0i, u_input.b);
}

