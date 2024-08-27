struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(false, vec4<f32>(-693f, 809f, 775f, -1000f), true, 3851i), Struct_1(true, vec4<f32>(-1000f, 2423f, 1198f, 1587f), false, -16275i), Struct_1(true, vec4<f32>(315f, 1039f, 1450f, -1463f), true, 1i), Struct_1(true, vec4<f32>(1012f, 1000f, 403f, 296f), true, -47403i), Struct_1(true, vec4<f32>(1492f, -1000f, -1000f, 319f), false, -9180i), Struct_1(false, vec4<f32>(1271f, 874f, 412f, -1277f), true, 0i), Struct_1(true, vec4<f32>(-431f, 402f, 2393f, -620f), true, -29107i), Struct_1(false, vec4<f32>(-116f, -572f, -370f, 631f), true, -4071i), Struct_1(false, vec4<f32>(370f, -1000f, -793f, 339f), false, 1i), Struct_1(false, vec4<f32>(405f, -382f, 1868f, -796f), true, 147i), Struct_1(true, vec4<f32>(-1259f, 818f, -167f, 223f), false, -1i), Struct_1(false, vec4<f32>(109f, 636f, -2071f, 208f), false, -1i), Struct_1(false, vec4<f32>(-688f, -2605f, -278f, 1076f), false, -1i), Struct_1(false, vec4<f32>(-402f, 1466f, 137f, 554f), true, -16198i), Struct_1(false, vec4<f32>(924f, 204f, -364f, -1386f), true, -15332i), Struct_1(false, vec4<f32>(-370f, 1856f, -1000f, 352f), false, -34215i), Struct_1(false, vec4<f32>(225f, 227f, -997f, 737f), true, 0i), Struct_1(false, vec4<f32>(-1000f, -1000f, -239f, -120f), false, -16265i), Struct_1(true, vec4<f32>(1085f, 1000f, 248f, 1468f), true, 0i), Struct_1(false, vec4<f32>(-1664f, 826f, 532f, 595f), true, -1i), Struct_1(true, vec4<f32>(531f, -459f, -752f, -704f), false, 1i), Struct_1(true, vec4<f32>(-904f, -348f, -588f, -770f), false, 2147483647i), Struct_1(true, vec4<f32>(-833f, 911f, -1455f, 1144f), true, -22118i), Struct_1(true, vec4<f32>(-1351f, 551f, -1365f, 530f), false, -1i), Struct_1(true, vec4<f32>(1672f, 1138f, 867f, -1121f), true, 1i), Struct_1(false, vec4<f32>(-1495f, 1018f, 1664f, 1431f), false, 1i), Struct_1(false, vec4<f32>(131f, -425f, 875f, -1577f), true, 26006i), Struct_1(true, vec4<f32>(-185f, -1980f, 126f, 1785f), true, -6094i), Struct_1(false, vec4<f32>(113f, 1512f, -868f, -766f), false, -13889i));

var<private> global2: Struct_1;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    return !select(select(select(!vec4<bool>(false, arg_3.c, false, true), vec4<bool>(false, global2.a, arg_3.c, arg_3.a), vec4<bool>(arg_2.a, global2.a, arg_3.a, arg_3.c)), !vec4<bool>(global2.a, true, arg_1.a, arg_1.c), false), select(vec4<bool>(!arg_1.c, false, true, arg_3.a), select(!vec4<bool>(arg_1.c, arg_3.c, true, arg_2.c), !vec4<bool>(false, true, false, arg_2.a), true), vec4<bool>(all(vec3<bool>(global2.c, arg_1.c, arg_2.c)), true, all(vec4<bool>(false, false, arg_3.a, false)), !global2.a)), !(!(!vec4<bool>(arg_1.a, true, false, false))));
}

fn func_2() -> u32 {
    let var_0 = select(vec4<bool>(select(global2.c, global2.b.x >= _wgslsmith_f_op_f32(ceil(1572f)), all(vec4<bool>(true, global2.a, true, false))), global2.d < (abs(-1i) << (global0.x % 32u)), global2.c, -u_input.b < ~37428i), vec4<bool>(!select(global2.a, true, global2.c), global2.c, any(!func_3(vec4<i32>(1i, global2.d, global2.d, u_input.c), Struct_1(global2.a, vec4<f32>(global2.b.x, -130f, global2.b.x, -1143f), false, u_input.b), Struct_1(true, global2.b, false, u_input.a.x), global1[_wgslsmith_index_u32(39963u, 29u)])), global2.c), vec4<bool>(true & global2.c, global2.a, global2.a, global2.a));
    global0 = abs(countOneBits(vec2<u32>(_wgslsmith_add_u32(0u, max(48188u, 2301u)), ~1u)));
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~min(4294967295u, 45047u), select(global0.x, global0.x, true)), global0.x, ~1u), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 55465u, 8643u), vec3<u32>(1u, 0u, 4294967295u))));
    global2 = global1[_wgslsmith_index_u32(global0.x, 29u)];
    global2 = global1[_wgslsmith_index_u32(1u, 29u)];
    return ~_wgslsmith_sub_u32(var_1.x, 0u);
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(), ~global0.x) << (arg_0.x % 32u), 29u)];
    let var_1 = -_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, global2.d), vec2<i32>(abs(firstLeadingBit(var_0.d)), var_0.d));
    var_0 = Struct_1(global2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_0.b, global2.b))))), any(vec3<bool>(true, select(true, global2.a & var_0.a, true), true)), var_1.x ^ var_1.x);
    global1 = array<Struct_1, 29>();
    let var_2 = arg_0.zx;
    return global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_add_u32(var_2.x, firstLeadingBit(~global0.x)), _wgslsmith_clamp_u32(abs(4294967295u) >> (_wgslsmith_mod_u32(~arg_0.x, global0.x ^ 15708u) % 32u), arg_0.x, (~44865u & _wgslsmith_dot_vec3_u32(arg_0, arg_0)) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 60229u, var_2.x), vec4<u32>(72016u, 4294967295u, arg_0.x, 1u)))), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(firstLeadingBit(firstTrailingBit(_wgslsmith_sub_u32(68359u, global0.x))), global0.x, 49255u, global0.x);
    var var_1 = 4294967295u;
    let var_2 = func_1(var_0.wzy);
    var var_3 = _wgslsmith_f_op_f32(trunc(793f)) >= 190f;
    let var_4 = func_1(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~var_0.xyz, var_0.wxw), var_0.zwy));
    var var_5 = global2.b.x;
    var var_6 = !var_2.c;
    var var_7 = -707f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -831f))), -1000f)) + var_4.b.x), abs(-reverseBits(0i)), vec3<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 59071i, 27704i, var_2.d), vec4<i32>(15278i, global2.d, u_input.a.x, u_input.a.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, u_input.c), vec3<i32>(0i, -89548i, 2147483647i)), global2.d, -7371i, var_4.d)), _wgslsmith_clamp_i32(u_input.c << (4294967295u % 32u), ~(1i ^ u_input.a.x), -2147483647i), -42735i), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global0.x, var_0.x)), _wgslsmith_mult_vec2_u32(var_0.wx, var_0.zw)) >> (_wgslsmith_div_u32(var_0.x & global0.x, 4294967295u) % 32u), ~_wgslsmith_mod_u32(global0.x, global0.x)), _wgslsmith_clamp_u32(var_0.x, global0.x, _wgslsmith_clamp_u32(1u, 1u, ~1u) ^ _wgslsmith_clamp_u32(1u, ~91838u, 21779u)));
}

