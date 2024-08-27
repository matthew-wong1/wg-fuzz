struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
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

var<private> global0: vec3<f32> = vec3<f32>(-557f, -679f, -1000f);

var<private> global1: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(vec4<f32>(-797f, 598f, 1533f, 1025f), Struct_1(vec4<i32>(21458i, 44953i, -33226i, -1i))), Struct_4(vec4<f32>(-1000f, -492f, -1204f, 1000f), Struct_1(vec4<i32>(27574i, 0i, -1i, -17912i))), Struct_4(vec4<f32>(910f, 925f, -1156f, -733f), Struct_1(vec4<i32>(1i, -29012i, 2147483647i, i32(-2147483648)))), Struct_4(vec4<f32>(670f, -2772f, -1076f, -2332f), Struct_1(vec4<i32>(0i, 28920i, 56795i, 2147483647i))), Struct_4(vec4<f32>(2217f, -113f, -160f, -545f), Struct_1(vec4<i32>(2147483647i, -39980i, i32(-2147483648), 22274i))), Struct_4(vec4<f32>(-482f, 679f, -1036f, -160f), Struct_1(vec4<i32>(-14550i, -23749i, -1i, -1i))), Struct_4(vec4<f32>(625f, 1688f, 191f, -1000f), Struct_1(vec4<i32>(0i, -1i, 50798i, -1i))));

var<private> global2: f32;

var<private> global3: array<Struct_1, 32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.x, 715f))))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global0.x, global0.x, global0.x), vec4<f32>(global0.x, global0.x, global0.x, 714f), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -526f, 1248f, 586f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, global0.x, 164f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(1805f, global0.x, 1000f, global0.x))))), global3[_wgslsmith_index_u32(u_input.d.x, 32u)]);
    let var_2 = _wgslsmith_dot_vec4_u32(~(~(reverseBits(u_input.d) | vec4<u32>(87657u, u_input.d.x, u_input.d.x, 101108u))), _wgslsmith_sub_vec4_u32(u_input.d, u_input.d) & _wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, u_input.d));
    var var_3 = 4294967295u;
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + global0.x) - _wgslsmith_f_op_f32(-1000f - -248f)))))), global0.x, any(select(vec3<bool>(true, true, true), vec3<bool>(-167f >= var_1.a.x, true, true), vec3<bool>(false, true, any(vec3<bool>(true, true, true)))))));
    return var_1.a.wxz;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    global1 = array<Struct_4, 7>();
    var var_0 = ~arg_2.a.x;
    let var_1 = vec2<i32>(u_input.c, arg_2.a.x);
    global0 = _wgslsmith_f_op_vec3_f32(func_3());
    global2 = -1000f;
    return arg_2;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_3 {
    global1 = array<Struct_4, 7>();
    global1 = array<Struct_4, 7>();
    let var_0 = Struct_3(26109u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), vec2<f32>(_wgslsmith_f_op_f32(max(577f, -1508f)), _wgslsmith_f_op_f32(global0.x + 1000f)))) + global0.zy));
    return var_0;
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(u_input.d, u_input.d)), ~u_input.d), 7u)];
    var var_1 = Struct_3(_wgslsmith_sub_u32(firstTrailingBit(~11339u), u_input.d.x) << (_wgslsmith_add_u32(u_input.d.x, 1u) % 32u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.zw) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-527f, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.zy)), true)))));
    var_1 = func_4(_wgslsmith_dot_vec2_u32(~u_input.d.wx, abs(u_input.d.yx)), Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.a.x, -2147483647i, -1i), -var_0.b.a))), func_2(firstLeadingBit(min(var_1.a, select(4294967295u, var_1.a, true))), true, Struct_1(reverseBits(vec4<i32>(var_0.b.a.x, var_0.b.a.x, 0i, arg_0.a.x))), ~_wgslsmith_sub_vec3_u32(~u_input.d.yxy, _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a, u_input.d.x, var_1.a), u_input.d.zyy))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), true)), _wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(var_0.a, var_0.a, true)))))));
    var var_2 = var_1.a;
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.x - global0.x), 1205f, true));
    return -arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u >> (u_input.d.x % 32u);
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.b, ~firstLeadingBit(u_input.a)), func_1(Struct_1(vec4<i32>(-33418i, u_input.a, u_input.b, u_input.a)))), vec2<i32>(u_input.c, countOneBits((-1i << (u_input.d.x % 32u)) >> (u_input.d.x % 32u))));
    var_0 = 0u;
    global1 = array<Struct_4, 7>();
    var var_2 = !vec4<bool>(true, select(select(true, true, true), true, true), any(vec2<bool>(true, true)), (223f <= _wgslsmith_f_op_f32(-global0.x)) & true);
    global3 = array<Struct_1, 32>();
    var_0 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(42009i);
}

