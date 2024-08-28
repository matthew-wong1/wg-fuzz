struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(62935u, 28392u, 11518u), vec3<u32>(27741u, 4294967295u, 73100u), vec3<u32>(33884u, 63758u, 25371u), vec3<u32>(48413u, 93892u, 59855u), vec3<u32>(10970u, 69472u, 21106u), vec3<u32>(1u, 44202u, 1u), vec3<u32>(0u, 22430u, 0u), vec3<u32>(0u, 135613u, 0u), vec3<u32>(1u, 1u, 26609u), vec3<u32>(6469u, 4294967295u, 4294967295u), vec3<u32>(10099u, 38347u, 0u), vec3<u32>(21576u, 1u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 1u, 21583u), vec3<u32>(0u, 65663u, 0u), vec3<u32>(1u, 798u, 1u), vec3<u32>(1u, 50614u, 38824u), vec3<u32>(39473u, 2746u, 76955u), vec3<u32>(89773u, 35555u, 0u), vec3<u32>(1605u, 4294967295u, 0u), vec3<u32>(23069u, 19962u, 41323u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 1u, 15771u), vec3<u32>(1u, 27540u, 30258u), vec3<u32>(62144u, 8184u, 9209u), vec3<u32>(1u, 51889u, 32981u));

var<private> global1: array<Struct_2, 18>;

var<private> global2: bool = true;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    global1 = array<Struct_2, 18>();
    global0 = array<vec3<u32>, 29>();
    let var_0 = arg_0.c;
    var var_1 = arg_0.a.x;
    global2 = !(!(var_0 && ((arg_1.a.x ^ 18075u) > ~41651u)));
    return arg_0.d;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>) -> f32 {
    var var_0 = -170f;
    global2 = arg_1.x;
    var var_1 = Struct_1(vec4<u32>(11227u, 4294967295u, 0u, 0u), 1i, arg_1.x, _wgslsmith_f_op_f32(arg_0.x - 1714f));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(767f, -1180f)))))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    var var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(var_0.a.x), 18u)];
    let var_2 = vec2<f32>(-211f, -2127f);
    let var_3 = reverseBits(firstTrailingBit(vec4<i32>(2147483647i, -var_0.b, -(arg_0.x & arg_2.b), max(0i, _wgslsmith_mult_i32(var_0.b, -34404i)))));
    global0 = array<vec3<u32>, 29>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(702f, 711f, -623f), vec2<bool>(var_0.c, false)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 18>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-589f * 1453f))) - _wgslsmith_f_op_f32(f32(-1f) * -1498f)) + _wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(76024u, 32092u, 4294967295u, 61552u), u_input.b.x, false, _wgslsmith_f_op_f32(floor(-1227f))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(5176u, ~4294967295u), 18u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -56449i), vec3<i32>(-31226i, u_input.b.x, 3435i)), 1i, 2147483647i, 10695i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(vec3<f32>(-2927f, 202f, -460f), vec2<bool>(true, true))), -1334f)), Struct_1(vec4<u32>(1u, 1u, 1u, 1u), -37850i, all(vec4<bool>(true, true, false, false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_div_f32(-1360f, -213f)));
    var var_1 = Struct_1(vec4<u32>(firstLeadingBit(~countOneBits(31084u)), 1u, 4680u, _wgslsmith_div_u32(0u, ~(~32899u))), _wgslsmith_sub_i32(u_input.b.x, -21818i), !(!any(vec2<bool>(true, true))), 110f);
    global1 = array<Struct_2, 18>();
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b, u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(-36411i, var_1.b), u_input.b));
    var var_3 = _wgslsmith_f_op_f32(-332f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1796f), var_1.d)))));
    var var_4 = Struct_1(~vec4<u32>(var_1.a.x, ~4294967295u >> (_wgslsmith_clamp_u32(4294967295u, var_1.a.x, 1u) % 32u), 62762u, 0u), abs(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(28789i, u_input.a)), u_input.b)), true, var_1.d);
    var_0 = var_4.d;
    let var_5 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-427f)), var_1.d) + vec2<f32>(_wgslsmith_f_op_f32(var_1.d + var_4.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.d * 163f), _wgslsmith_f_op_f32(var_1.d - var_1.d), !var_1.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_4.d, 1116f)) - _wgslsmith_f_op_f32(abs(-714f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(-u_input.a), reverseBits(_wgslsmith_add_i32(max(select(u_input.b.x, 3144i, var_1.c), u_input.a), var_1.b)), max(~select(8027u, _wgslsmith_sub_u32(var_4.a.x, 49094u), false), 22321u), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.b.x, firstLeadingBit(-9758i), 0i | var_4.b), -vec3<i32>(1i, u_input.a, -76877i), vec3<i32>(~(-2470i), 1i, -13701i))));
}

