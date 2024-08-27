struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17>;

var<private> global1: array<Struct_3, 16>;

var<private> global2: Struct_3;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_2(-firstLeadingBit(vec4<i32>(abs(u_input.b), u_input.c, u_input.b, 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1904f, -1359f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1338f, -2041f), vec2<f32>(-1240f, 574f), global0[_wgslsmith_index_u32(global2.a.a.x, 17u)])) * vec2<f32>(-174f, -1000f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.wx & global2.a.a.xx, vec2<u32>(1u, global2.a.b)), 17u)]))));
    global1 = array<Struct_3, 16>();
    let var_1 = global2.a;
    global0 = array<vec2<bool>, 17>();
    var var_2 = vec3<u32>(4294967295u, ~(~0u), global2.a.b);
    return select(firstTrailingBit(-var_0.a.xxw), firstTrailingBit(_wgslsmith_sub_vec3_i32(var_0.a.xzx, ~_wgslsmith_mod_vec3_i32(vec3<i32>(-3626i, 2147483647i, u_input.b), vec3<i32>(-18466i, var_0.a.x, var_0.a.x)))), select(vec3<bool>(true, var_0.b.x == 1273f, all(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, all(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)))));
}

fn func_2() -> vec4<bool> {
    let var_0 = abs(13457u);
    let var_1 = global2.a;
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(4294967295u, u_input.a, var_0) % vec3<u32>(32u)), vec3<i32>(u_input.c, u_input.c, u_input.c), true), vec3<i32>(u_input.b, u_input.c, u_input.c)), abs(-select(vec3<i32>(u_input.c, u_input.b, -25053i), vec3<i32>(2147483647i, u_input.c, u_input.b), vec3<bool>(false, true, true)))), ~func_3());
    global2 = Struct_3(global2.a);
    var var_3 = select(!select(!select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), all(global0[_wgslsmith_index_u32(reverseBits(33629u), 17u)])), vec2<bool>(!(any(global0[_wgslsmith_index_u32(36216u, 17u)]) || true), true), global0[_wgslsmith_index_u32(global2.a.b, 17u)]);
    return select(vec4<bool>(!(!select(true, var_3.x, var_3.x)), (~var_2 << (4294967295u % 32u)) <= -var_2, !all(vec3<bool>(var_3.x, false, false)), any(!(!vec3<bool>(var_3.x, false, var_3.x)))), vec4<bool>(!var_3.x | !select(var_3.x, false, var_3.x), !(~var_1.a.x > u_input.a), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 178f)) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1586f), _wgslsmith_f_op_f32(f32(-1f) * -674f)))), select(vec4<bool>(var_3.x, true, any(select(global0[_wgslsmith_index_u32(u_input.d.x, 17u)], global0[_wgslsmith_index_u32(var_1.a.x, 17u)], var_3.x)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), global0[_wgslsmith_index_u32(12137u, 17u)]))), !(!select(vec4<bool>(var_3.x, var_3.x, false, false), vec4<bool>(var_3.x, true, false, true), false)), false));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<f32>) -> bool {
    return any(vec3<bool>(false, !all(func_2()), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))) | false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.c, _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, -1i), u_input.b), -2147483647i), _wgslsmith_mult_vec4_i32(select(-vec4<i32>(u_input.b, -1i, 1i, -1i), vec4<i32>(u_input.c, u_input.c, 0i, u_input.b), func_1(-1414f, 724f, vec3<f32>(1865f, -1761f, 116f))), (vec4<i32>(-32623i, u_input.b, 1i, 43571i) | vec4<i32>(u_input.c, -2147483647i, u_input.c, -2147483647i)) ^ (vec4<i32>(-22656i, u_input.b, -4462i, 0i) >> (vec4<u32>(u_input.a, u_input.a, 1u, 74983u) % vec4<u32>(32u))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1537f, 1098f) + vec2<f32>(-872f, 1398f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(390f, 530f), vec2<f32>(-1153f, 603f), global0[_wgslsmith_index_u32(94414u, 17u)])))))));
    global2 = Struct_3(global2.a);
    let var_2 = var_0;
    global2 = global1[_wgslsmith_index_u32(55522u, 16u)];
    let var_3 = vec4<bool>(func_1(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(max(var_1.b.x, 426f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x), vec3<f32>(206f, -767f, -1584f)) - vec3<f32>(709f, -933f, 616f)) * vec3<f32>(_wgslsmith_f_op_f32(round(-999f)), _wgslsmith_f_op_f32(273f - -1000f), _wgslsmith_f_op_f32(abs(832f))))), var_0.x, false, true);
    var var_4 = false;
    var var_5 = global1[_wgslsmith_index_u32(firstTrailingBit((~(~global2.a.b) | abs(1u)) & 0u), 16u)];
    var var_6 = global2.a.a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(vec3<u32>(1u, _wgslsmith_div_u32(22082u, var_5.a.b), firstLeadingBit(0u))), vec3<u32>(var_6.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.a.b, 17247u, var_6.x), u_input.d), var_5.a.a.x), ~4294967295u), !(!select(var_0, var_2, var_2))), ~_wgslsmith_div_vec2_u32(countOneBits(u_input.d.xy), ~vec2<u32>(var_6.x, global2.a.a.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(483f, -882f, -682f), vec3<f32>(-2652f, var_1.b.x, var_1.b.x)))))));
}

