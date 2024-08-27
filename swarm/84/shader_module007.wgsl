struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: u32 = 0u;

var<private> global2: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(true, true, false)));

var<private> global3: array<u32, 29> = array<u32, 29>(37568u, 47464u, 0u, 45066u, 0u, 23144u, 40892u, 66819u, 72887u, 0u, 0u, 1u, 1u, 1u, 0u, 4294967295u, 0u, 53773u, 11417u, 7651u, 0u, 83207u, 1u, 1u, 4294967295u, 4294967295u, 0u, 15392u, 0u);

var<private> global4: array<Struct_4, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_5, arg_1: u32, arg_2: vec3<bool>, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3, 748f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -241f) + 327f), arg_3)));
    let var_1 = reverseBits(~106200u);
    return -43849i;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_4, 2>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -628f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-613f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-542f, 655f)), -784f)))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1409f - 2128f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(258f + -804f))))), -1119f));
    let var_2 = -(-vec3<i32>(1i, ~8699i, func_1(Struct_5(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], true, vec4<bool>(false, false, true, false), global3[_wgslsmith_index_u32(54271u, 29u)]), global3[_wgslsmith_index_u32(u_input.a.x, 29u)], vec3<bool>(true, true, false), -766f)) & firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(-21951i, 1i, 56842i), vec3<i32>(61019i, -28893i, -7725i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1), u_input.a << (vec2<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 29u)] & (4294967295u ^ u_input.a.x), ~1u) % vec2<u32>(32u)));
}

