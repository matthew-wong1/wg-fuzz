struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<vec4<f32>, 12>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    var var_0 = u_input.b.x;
    let var_1 = Struct_1(!(all(!vec2<bool>(arg_1.c.a, arg_0)) == true));
    global1 = array<vec4<f32>, 12>();
    let var_2 = ~_wgslsmith_sub_u32(u_input.b.x, firstLeadingBit(u_input.b.x));
    return _wgslsmith_f_op_f32(-arg_2.a);
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(false, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-983f)) * _wgslsmith_f_op_f32(abs(1007f))), global0[_wgslsmith_index_u32(24626u, 11u)], Struct_1(arg_0.x < arg_0.x)), Struct_3(766f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(any(vec3<bool>(false, true, true)), Struct_2(-1000f, Struct_1(false), Struct_1(false)), Struct_3(-1043f)))))) + _wgslsmith_f_op_f32(trunc(-789f)));
    var var_1 = any(!(!vec3<bool>(select(true, false, true), true, 4294967295u != u_input.b.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(189f, 683f), -443f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -684f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-134f * 1625f), _wgslsmith_f_op_f32(round(-1941f)))))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(-var_2.x))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x)))));
    return Struct_2(186f, Struct_1(true), global0[_wgslsmith_index_u32(4294967295u & ~arg_0.x, 11u)]);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: f32) -> Struct_2 {
    return func_2(~(~firstTrailingBit(vec4<u32>(9922u, 56313u, u_input.b.x, u_input.b.x)) ^ max(select(vec4<u32>(u_input.b.x, 41203u, 17558u, 0u), vec4<u32>(1u, u_input.b.x, u_input.b.x, 57662u), vec4<bool>(true, false, true, true)), vec4<u32>(u_input.b.x, 71713u, u_input.b.x, 0u))));
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> i32 {
    global0 = array<Struct_1, 11>();
    let var_0 = Struct_2(1980f, Struct_1(arg_1.b.a), Struct_1(false));
    let var_1 = !(!vec4<bool>(true, _wgslsmith_f_op_f32(1996f + 792f) > _wgslsmith_f_op_f32(trunc(arg_1.a)), !(!arg_1.c.a), -249f > func_2(vec4<u32>(u_input.b.x, 1u, 25171u, 1u)).a));
    global1 = array<vec4<f32>, 12>();
    var var_2 = reverseBits((~u_input.b | ~u_input.b) | _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u), u_input.b), firstTrailingBit(min(u_input.b, u_input.b))));
    return i32(-1i) * -firstTrailingBit(u_input.a);
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = select(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true)), vec4<bool>(func_2(~vec4<u32>(4294967295u, arg_1, 19709u, 4294967295u)).b.a != (arg_2.x <= _wgslsmith_mult_i32(11827i, 46718i)), any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false), u_input.a == 10409i)), true, false), true);
    global0 = array<Struct_1, 11>();
    let var_1 = 473f;
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1093f, var_1))), -1504f, false)), var_1, -1673f)));
    let var_3 = Struct_1(true);
    return func_1(arg_2.x, _wgslsmith_dot_vec2_i32(min(~abs(arg_2.yw), (arg_2.yw | arg_2.wy) & vec2<i32>(arg_0, arg_0)), arg_2.wy), arg_2.wy, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 11>();
    global1 = array<vec4<f32>, 12>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -551f);
    var var_1 = func_5(_wgslsmith_mod_i32(i32(-1i) * -1i, func_4(true, func_1(firstTrailingBit(1i), abs(u_input.a), min(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(28575i, 1i)), _wgslsmith_f_op_f32(f32(-1f) * -406f)))), firstLeadingBit(u_input.b.x), -(reverseBits(abs(vec4<i32>(2147483647i, u_input.a, u_input.a, -2147483647i))) & vec4<i32>(0i, 2147483647i, u_input.a, _wgslsmith_mult_i32(u_input.a, -32981i))));
    let var_2 = vec3<f32>(func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(10782i, i32(-1i) * -28926i), firstTrailingBit(abs(vec2<i32>(u_input.a, -2147483647i)))), 89565u, vec4<i32>(u_input.a, -_wgslsmith_mult_i32(u_input.a, u_input.a), 2147483647i, 1i)).a, 2413f, -576f);
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 53875u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.b.x))) | ~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u)), vec4<u32>(u_input.b.x, 4294967295u, ~0u, u_input.b.x)), _wgslsmith_sub_vec4_u32(countOneBits(select(~vec4<u32>(34540u, u_input.b.x, 53354u, u_input.b.x), vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x) | vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), !vec4<bool>(true, var_1.c.a, false, false))), vec4<u32>(_wgslsmith_dot_vec2_u32(abs(u_input.b.xz), _wgslsmith_add_vec2_u32(vec2<u32>(2031u, 1u), u_input.b.xy)), _wgslsmith_mult_u32(37836u, 1u) >> (firstLeadingBit(u_input.b.x) % 32u), 1u, firstLeadingBit(u_input.b.x >> (u_input.b.x % 32u)))));
    var var_4 = vec4<bool>(false, true, var_1.c.a, all(!(!vec4<bool>(true, var_1.c.a, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1i, 0u);
}

