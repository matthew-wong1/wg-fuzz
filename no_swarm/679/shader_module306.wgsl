struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(5909i, 1i, -83193i), vec3<i32>(28161i, 741i, 3495i), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<i32>(49258i, 3333i, -60175i), vec3<i32>(-15169i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(-198i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), -1i, 2147483647i));

var<private> global1: bool = true;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2, arg_3: vec4<bool>) -> i32 {
    var var_0 = !(!arg_3.x);
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(arg_0, _wgslsmith_f_op_vec2_f32(arg_0 + vec2<f32>(1743f, arg_2.a.x)))), vec2<f32>(-1000f, -649f))), !arg_2.b), false, Struct_1(-vec2<i32>(-2147483647i, select(arg_1, arg_1, true))));
    let var_2 = var_1.c;
    let var_3 = !(!(var_2.a.x > ~abs(2611i)));
    var var_4 = select(~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 35713u, u_input.a, 0u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 26279u, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(39714u, 0u, 0u, u_input.a), vec4<u32>(2490u, 99591u, u_input.a, 18394u))), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(4294967295u, 44728u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, 54598u, 0u)), ~vec4<u32>(282u, u_input.a, u_input.a, 3049u), ~vec4<u32>(u_input.a, 120279u, 43631u, u_input.a)), vec4<u32>(4294967295u, u_input.a, u_input.a, 34870u) >> (countOneBits(vec4<u32>(1u, 4935u, u_input.a, u_input.a)) % vec4<u32>(32u))), vec4<u32>(u_input.a, u_input.a, ~(~_wgslsmith_mod_u32(20738u, 29721u)), (min(u_input.a, u_input.a) >> (4294967295u % 32u)) | 6441u), arg_3);
    return arg_1;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec2<bool> {
    var var_0 = Struct_1(-vec2<i32>(~(~2147483647i), _wgslsmith_add_i32(func_3(vec2<f32>(-1089f, -288f), -828i, Struct_2(vec2<f32>(720f, 1915f), false), vec4<bool>(true, true, true, false)), -arg_0.a.x)));
    var_0 = arg_0;
    var_0 = Struct_1(vec2<i32>(1i, (i32(-1i) * -2147483647i) << (_wgslsmith_mult_u32(~1u, ~u_input.a) % 32u)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-404f, -785f) + vec2<f32>(-112f, -177f)) * vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-929f, 993f), vec2<f32>(1710f, 191f), vec2<bool>(false, true))))))), !any(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, true, false))));
    let var_2 = -1650f;
    return !(!select(select(select(vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, false), var_1.b), select(vec2<bool>(false, var_1.b), vec2<bool>(true, true), vec2<bool>(false, true)), any(vec4<bool>(var_1.b, var_1.b, var_1.b, false))), !select(vec2<bool>(false, false), vec2<bool>(var_1.b, false), vec2<bool>(var_1.b, true)), true));
}

fn func_1() -> bool {
    global1 = !(1u != ~u_input.a);
    var var_0 = select(vec2<bool>(!(!all(vec2<bool>(true, false))), true), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(false, true), !func_2(Struct_1(vec2<i32>(0i, -55213i)), firstTrailingBit(u_input.a)), true));
    let var_1 = 1i;
    var_0 = select(select(select(vec2<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), !var_0.x), !(!vec2<bool>(true, var_0.x)), true && any(vec2<bool>(var_0.x, true))), vec2<bool>(true, true), _wgslsmith_sub_i32(countOneBits(-1596i), var_1 | var_1) <= countOneBits(var_1)), vec2<bool>(!(min(u_input.a, u_input.a) == (40919u ^ u_input.a)), true | (select(true, false, false) != select(var_0.x, true, var_0.x))), true);
    var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true || (var_0.x || var_0.x), _wgslsmith_f_op_f32(round(-1984f)) <= 1153f));
    return all(select(select(!vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), var_0.x), vec3<bool>(var_0.x, true, var_0.x)), !vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false))) == true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = !select(!vec4<bool>(select(true, false, false), false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), true, any(vec2<bool>(false, false)), func_1()), any(vec4<bool>(false, true, false, true))), any(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), false)));
    let var_1 = Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(1277f - -674f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1237f - -498f) - -217f)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(17092i, -1i, -67258i), global0[_wgslsmith_index_u32(u_input.a, 9u)])) < -max(-7556i, 36979i)), all(vec4<bool>(var_0.x, var_0.x & !var_0.x, !(!var_0.x), !var_0.x || (true | var_0.x))), Struct_1(~(~(-vec2<i32>(-2147483647i, 43125i)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(var_1.a.a * vec2<f32>(658f, 1000f));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(~max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 84080u, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, 43028u, u_input.a)), vec4<u32>(u_input.a, 1u, u_input.a, 24443u) & vec4<u32>(13979u, u_input.a, u_input.a, 4294967295u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u | u_input.a, _wgslsmith_sub_u32(4294967295u, 96246u), 4294967295u), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(3633u, 1u, 4294967295u, u_input.a), var_0.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)))), 9u)];
    var var_4 = u_input.a;
    var_2 = var_1.a.a;
    var var_5 = reverseBits(-_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_3.x, -1i, var_1.c.a.x, 1i), vec4<i32>(var_1.c.a.x << (10219u % 32u), ~31148i, -1i, -15929i), ~vec4<i32>(var_3.x, 25618i, var_1.c.a.x, var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec3<i32>(~var_5.x, -6971i, var_5.x), var_5.xyy), -508f, abs(min(countOneBits(~vec3<u32>(1u, u_input.a, 8417u)), abs(~vec3<u32>(38241u, 1u, u_input.a)))), _wgslsmith_div_vec4_u32(firstLeadingBit(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 14873u))), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)))));
}

