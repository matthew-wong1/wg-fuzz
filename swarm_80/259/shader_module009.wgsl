struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 1i, 0i, 0i);

var<private> global1: u32;

var<private> global2: bool;

var<private> global3: Struct_2;

var<private> global4: array<vec4<bool>, 26>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(676f, 717f, _wgslsmith_f_op_f32(f32(-1f) * -938f), -440f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-970f, 1000f, 837f, 1841f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(671f, 1390f, 1613f, 619f))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * 860f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1218f, _wgslsmith_f_op_f32(-var_0.x)))))), -195f);
    let var_1 = vec4<u32>(max(5459u, global3.a.d), 5764u, ~arg_2.d, 37041u ^ arg_2.d);
    var var_2 = Struct_2(Struct_1(global3.a.b, ~2147483647i, global0.x, min(arg_1, ~arg_2.d)));
    global3 = Struct_2(var_2.a);
    return ~4294967295u;
}

fn func_2(arg_0: f32) -> vec2<i32> {
    let var_0 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-368f + -350f)))))), arg_0);
    var var_1 = _wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(global3.a.d, 1u, global3.a.d, 1u), ~vec4<u32>(1u, global3.a.d, global3.a.d, global3.a.d))) | ~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 37735u, global3.a.d, 1u), ~vec4<u32>(global3.a.d, 9u, 1u, 95145u)), _wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(_wgslsmith_mod_u32(global3.a.d, global3.a.d)), abs(53022u), _wgslsmith_mult_u32(~global3.a.d, ~12196u), 51875u), vec4<u32>(func_3(vec3<bool>(false, false, true), 4294967295u, Struct_1(-42296i, global0.x, 25119i, 4294967295u)), global3.a.d, func_3(vec3<bool>(false, true, false), 1u, Struct_1(-38221i, global0.x, u_input.a.x, 1u)), 1u) & vec4<u32>(firstTrailingBit(22087u), 32895u, global3.a.d, ~1u)));
    let var_2 = Struct_2(global3.a);
    global0 = vec4<i32>(-1i, firstLeadingBit(_wgslsmith_dot_vec2_i32(abs(u_input.a.yz), ~(-global0.yw))), global3.a.c, var_2.a.b);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-970f, _wgslsmith_f_op_f32(-arg_0)));
    return firstLeadingBit(u_input.a.yw);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-227f - -989f) + _wgslsmith_f_op_f32(f32(-1f) * -874f)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(-126f, arg_2.x), _wgslsmith_f_op_f32(exp2(arg_2.x))), arg_2))));
    var var_1 = max(reverseBits(arg_0 ^ reverseBits(arg_0 | vec2<i32>(14184i, arg_0.x))), -vec2<i32>(1i, 1i));
    var var_2 = true;
    var_1 = max(firstTrailingBit(vec2<i32>(-var_1.x, (global3.a.a >> (36046u % 32u)) >> (~134743u % 32u))), firstLeadingBit(u_input.b.zy));
    var var_3 = Struct_2(global3.a);
    return _wgslsmith_add_i32(-1i & var_3.a.a, 1i ^ global0.x);
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    var var_0 = Struct_1(func_4(~func_2(-1000f), vec4<u32>(1u, 47210u, ~(19755u | global3.a.d), reverseBits(1u)), arg_0.xz), -34650i >> (max(firstTrailingBit(global3.a.d), min(~global3.a.d, max(1u, global3.a.d))) % 32u), u_input.b.x, ~global3.a.d);
    global3 = Struct_2(Struct_1(~u_input.a.x >> (1u % 32u), _wgslsmith_mult_i32(abs(reverseBits(-2147483647i)), global3.a.a), reverseBits(0i) | u_input.b.x, 49347u));
    global4 = array<vec4<bool>, 26>();
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.xx)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(firstLeadingBit(select(global0.x & 65214i, 1i, true)), -(~(i32(-1i) * -2147483647i)), firstTrailingBit(-9617i), 22860u));
    global4 = array<vec4<bool>, 26>();
    global2 = !(!(0i <= abs(~global3.a.b)));
    global1 = 9289u;
    global2 = true;
    let x = u_input.a;
    s_output = func_1(vec4<f32>(-965f, _wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1546f)) - _wgslsmith_f_op_f32(-722f - -860f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -264f)))));
}

