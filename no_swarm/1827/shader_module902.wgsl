struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false));

var<private> global1: Struct_2 = Struct_2(Struct_1(-1074f, vec4<u32>(53450u, 41493u, 8837u, 1u), vec3<u32>(38544u, 4294967295u, 19807u), 21558u));

var<private> global2: vec3<u32> = vec3<u32>(1u, 17943u, 1u);

var<private> global3: array<Struct_1, 8>;

var<private> global4: Struct_2;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: i32) -> f32 {
    var var_0 = !arg_1.x;
    let var_1 = Struct_2(global1.a);
    var var_2 = firstTrailingBit(~_wgslsmith_mod_vec4_u32(min(vec4<u32>(1u, var_1.a.c.x, 8821u, 59046u), global1.a.b), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1.a.b, vec4<u32>(global1.a.c.x, u_input.a.x, 4294967295u, global1.a.d), global1.a.b), reverseBits(global4.a.b))));
    let var_3 = vec4<f32>(global1.a.a, var_1.a.a, _wgslsmith_f_op_f32(select(-775f, _wgslsmith_f_op_f32(max(-143f, global1.a.a)), false && !arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global4.a.a, var_1.a.a)))))));
    let var_4 = var_1;
    return 664f;
}

fn func_2(arg_0: bool, arg_1: f32) -> f32 {
    let var_0 = vec2<f32>(-838f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(arg_1, -2152f), vec2<bool>(arg_0, false), 1i)) * _wgslsmith_f_op_f32(func_3(vec2<f32>(1762f, global1.a.a), vec2<bool>(false, false), 0i)))), global4.a.a));
    var var_1 = Struct_1(-1000f, global4.a.b, ~(~_wgslsmith_div_vec3_u32(~global4.a.b.wxy, select(global4.a.b.ywx, vec3<u32>(1u, u_input.a.x, global1.a.d), false))), 1u);
    let var_2 = -2147483647i;
    var_1 = Struct_1(var_0.x, vec4<u32>(~firstLeadingBit(global1.a.d), min(~11469u, ~17845u), _wgslsmith_div_u32(_wgslsmith_sub_u32(115904u, global4.a.c.x) & ~5916u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 13689u) & global2.zy)), ~0u & _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_1.c.x, var_1.b.x)), _wgslsmith_clamp_vec2_u32(global2.zx, global1.a.b.xx, var_1.c.xx))), vec3<u32>(global2.x, ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.d, 4294967295u, var_1.b.x, 1u), var_1.b)), 1803u), abs(~select(_wgslsmith_mult_u32(u_input.a.x, global1.a.c.x), var_1.c.x, !arg_0)));
    var var_3 = _wgslsmith_mult_u32(49658u, firstLeadingBit(1u));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), arg_1));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, global1.a.a)))), _wgslsmith_f_op_f32(-global4.a.a))));
    global1 = Struct_2(Struct_1(-122f, vec4<u32>(_wgslsmith_add_u32(~global4.a.b.x, ~global4.a.d), arg_1.b.x | u_input.a.x, u_input.a.x, global2.x), firstLeadingBit(~global4.a.b.xzz), arg_1.b.x));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, ~(~arg_1.d)), 31u)];
    var var_2 = _wgslsmith_div_f32(global1.a.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_1.x, global4.a.a)) * -165f))));
    var var_3 = global4.a.b;
    return global1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global1.a.a)), 1158f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1519f)))), global4.a.b, vec3<u32>(global4.a.b.x, _wgslsmith_sub_u32(global4.a.c.x, u_input.a.x), abs(global4.a.c.x)), firstTrailingBit(~global1.a.d) >> (abs(~global1.a.b.x) % 32u)));
    let var_1 = !((!all(vec2<bool>(false, true)) | false) && all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(trunc(562f));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(299f + var_0.a.a), global4.a.a, _wgslsmith_f_op_f32(func_1(vec3<i32>(19398i, -21580i, 2147483647i), global4.a))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a, var_0.a.a, -1358f) * vec3<f32>(-550f, var_0.a.a, 686f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a, 1000f, -1000f))))))));
    var var_4 = !select(select(select(vec2<bool>(var_1, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), true), !var_1), vec2<bool>(false, true), vec2<bool>(var_1, var_1)), vec2<bool>(true, var_1), vec2<bool>(1u != (80226u ^ global1.a.d), var_1 | true));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, -616f, 883f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -1040f, -127f) * vec3<f32>(489f, -1155f, -311f)), var_1)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-445f, -632f, 268f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2454f, var_0.a.a, global4.a.a) * vec3<f32>(-1282f, 232f, -1266f)))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(689f, 367f, _wgslsmith_f_op_f32(2122f - 807f)), vec3<f32>(_wgslsmith_f_op_f32(step(-1127f, global4.a.a)), 425f, var_3.x))))));
    var var_5 = vec3<f32>(2724f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a + -964f) + -1000f)), _wgslsmith_f_op_f32(trunc(-1011f))), global4.a.a);
    let var_6 = _wgslsmith_sub_vec3_i32(-vec3<i32>(~max(1i, 1i), ~12686i, ~(-1i)), vec3<i32>(1i, _wgslsmith_add_i32(countOneBits(i32(-1i) * -1i), _wgslsmith_mult_i32(min(1i, 36376i), 0i)), -18620i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(var_5.x))), _wgslsmith_f_op_f32(round(-713f)), var_0.a.b);
}

