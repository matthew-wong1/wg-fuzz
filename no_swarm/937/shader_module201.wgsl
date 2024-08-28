struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    var var_0 = vec2<u32>(1u, 61388u);
    var var_1 = true;
    var_1 = any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), false), select(vec3<bool>(true, true, select(true, true, false)), vec3<bool>(true, false, all(vec3<bool>(true, true, true))), any(vec2<bool>(true, true))), any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), arg_0 <= 0u))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(-1943f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3.b.x)), _wgslsmith_f_op_f32(round(-850f))), arg_2.b.x, 530f);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.b.zw * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.d.x, arg_2.c.b), vec2<f32>(-1460f, -221f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-918f, var_2.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.d.x, arg_2.c.a)), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yw + global1.b.yw))))));
    return _wgslsmith_dot_vec4_i32(max(countOneBits(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a, 0i, 1709i, 32250i), vec4<i32>(global1.a, 2147483647i, -2147483647i, -2288i)))), _wgslsmith_sub_vec4_i32(firstLeadingBit(~vec4<i32>(-2147483647i, -2147483647i, 11954i, -1496i)), -(vec4<i32>(1i, 0i, arg_3.a, arg_2.a) & vec4<i32>(arg_3.a, arg_1, 0i, 0i)))), -(-_wgslsmith_add_vec4_i32(vec4<i32>(global1.a, arg_1, -27493i, -8834i), vec4<i32>(0i, u_input.a, 11443i, arg_1)) & -(~vec4<i32>(15089i, u_input.a, 1i, 0i))));
}

fn func_2(arg_0: i32) -> vec4<i32> {
    let var_0 = vec4<i32>(u_input.a, -1i, 0i, global1.a >> (global0.x % 32u));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.c.b + _wgslsmith_f_op_f32(global1.d.x - 1119f)))), _wgslsmith_f_op_f32(f32(-1f) * -436f)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, 2147483647i, -52132i), vec4<i32>(global1.a, global1.a, -2147483647i, u_input.a & func_3(100u, var_0.x, Struct_2(45705i, vec4<f32>(779f, 461f, -1560f, 1000f), Struct_1(-423f, -1436f), global1.d), Struct_2(-31835i, vec4<f32>(global1.d.x, 492f, -1385f, global1.c.a), Struct_1(global1.d.x, global1.b.x), vec3<f32>(-3673f, -596f, 1219f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(global1.b.yyz));
    let var_3 = select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), -377f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1013f, -1471f, true)))) * _wgslsmith_f_op_f32(var_2.x * 467f)), min(global0.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global0.x, global0.x, 24537u, global0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 4294967295u, 1u, 3629u), vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(72885u, global0.x, 4294967295u, global0.x)))) == global0.x, !any(vec4<bool>(true, true, true, all(vec3<bool>(true, true, false)))));
    global1 = Struct_2(-firstLeadingBit(_wgslsmith_sub_i32(func_3(79740u, 23657i, Struct_2(0i, global1.b, global1.c, vec3<f32>(-922f, global1.d.x, global1.d.x)), Struct_2(arg_0, global1.b, var_1.a, vec3<f32>(-2165f, global1.c.b, -1319f))), u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, -564f, global1.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(round(global1.d.x)), var_1.a.a, var_2.x))) - vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(591f * -147f) - var_2.x), _wgslsmith_f_op_f32(ceil(var_2.x)), var_2.x)), Struct_1(_wgslsmith_f_op_f32(exp2(global1.c.b)), -1000f), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(473f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global1.b.x, global1.d.x, true)), global1.d.x))), -420f));
    return vec4<i32>(u_input.a, _wgslsmith_add_i32(abs(-1i), var_0.x), ~func_3(global0.x, var_0.x, Struct_2(-27926i, _wgslsmith_div_vec4_f32(global1.b, vec4<f32>(-615f, 199f, 1005f, 490f)), Struct_1(-101f, -1308f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, var_2.x, 571f) + vec3<f32>(var_1.a.b, global1.d.x, var_1.a.a))), Struct_2(_wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_div_vec4_f32(global1.b, global1.b), Struct_1(global1.c.a, -2053f), _wgslsmith_f_op_vec3_f32(var_2 - var_2))), _wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_1.b, _wgslsmith_sub_i32(var_0.x, u_input.a)), var_0.x)));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(func_2(global1.a), abs(-vec4<i32>(u_input.a, u_input.a, -1i, -2147483647i))), -vec4<i32>(_wgslsmith_mod_i32(global1.a ^ -2147483647i, func_2(-1i).x), select(u_input.a, global1.a, true) << (~global0.x % 32u), i32(-1i) * -38045i, global1.a));
    global1 = Struct_2(_wgslsmith_dot_vec3_i32(firstTrailingBit(func_2(~u_input.a).wyx), -(select(vec3<i32>(0i, global1.a, -30203i), vec3<i32>(28835i, 36570i, -44031i), vec3<bool>(false, true, false)) & max(vec3<i32>(u_input.a, -14415i, var_0), vec3<i32>(u_input.a, 2147483647i, global1.a)))), _wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(-1276f, global1.b.x, arg_0.b, 164f)), Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.c.b), 421f, _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-135f, global1.d.x, global1.b.x), vec3<f32>(global1.c.a, global1.c.b, 697f), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.c.b, _wgslsmith_f_op_f32(abs(374f)), 338f)))));
    global0 = firstTrailingBit((~select(vec2<u32>(0u, 31686u), vec2<u32>(1236u, global0.x), vec2<bool>(true, false)) & _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(4294967295u, global0.x), vec2<u32>(global0.x, 60230u)))) >> (reverseBits(min(vec2<u32>(global0.x, global0.x), vec2<u32>(6671u, global0.x) & vec2<u32>(4294967295u, global0.x))) % vec2<u32>(32u)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(max(1517f, _wgslsmith_f_op_f32(-204f - _wgslsmith_div_f32(arg_0.a, arg_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(118f, arg_0.a))) - global1.c.b)), 53189i);
    let var_2 = 43927u;
    return select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec4<bool>(false, true, true, false)))), vec2<bool>(!(all(vec2<bool>(false, true)) | true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(select(vec3<bool>(false, u_input.a == global1.a, true), vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(false, true)), any(vec2<bool>(false, false))), vec3<bool>(true, true, true))), true);
    var_0 = select(!func_1(Struct_1(-280f, _wgslsmith_f_op_f32(-global1.b.x))), func_1(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.b), _wgslsmith_f_op_f32(global1.b.x * global1.c.b))), -1473f)), vec2<bool>(true, var_0.x));
    let var_1 = -_wgslsmith_mod_vec4_i32(select(vec4<i32>(96820i, -1i, 13909i, global1.a), -vec4<i32>(-3165i, -1i, u_input.a, u_input.a), true), vec4<i32>(_wgslsmith_add_i32(-2147483647i, 2147483647i), u_input.a, -1999i, 1i << (global0.x % 32u))) << (vec4<u32>(global0.x, _wgslsmith_div_u32(0u, 94504u) ^ abs(~global0.x), global0.x, ~global0.x) % vec4<u32>(32u));
    let var_2 = select(~_wgslsmith_div_u32(~global0.x, global0.x) ^ ~firstLeadingBit(77696u), ~(~global0.x), select(var_0.x, func_1(global1.c).x, var_0.x));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.a + _wgslsmith_div_f32(global1.d.x, _wgslsmith_f_op_f32(floor(global1.d.x))))), global1.d.x);
    let var_4 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(26221u, 1u, var_2, 0u), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_2, 47662u, var_2, 28995u), vec4<u32>(2223u, 0u, 0u, 1u))), select(~global0.x, ~var_2, any(vec2<bool>(false, var_0.x))) << (_wgslsmith_div_u32(1u, abs(1u)) % 32u), 23469u, var_2), vec4<u32>(33257u, global0.x ^ ~(~4294967295u), select(min(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 1u), vec4<u32>(var_2, 4294967295u, 13056u, global0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, var_2, var_2, global0.x), vec4<u32>(1u, 4294967295u, 0u, 42525u))), 11840u << (abs(1u) % 32u), any(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false)))), select(var_2, ~25370u, var_0.x)));
    var_0 = !vec2<bool>(var_0.x, var_0.x);
    let var_5 = Struct_1(-674f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.x))) + _wgslsmith_f_op_f32(591f * global1.b.x)))));
    var var_6 = Struct_3(var_5, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -343f), 923f, _wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(1894f - var_6.a.b)))), vec3<i32>(_wgslsmith_sub_i32(~34504i, _wgslsmith_div_i32(-global1.a, _wgslsmith_div_i32(u_input.a, var_1.x))), u_input.a, _wgslsmith_div_i32(-12941i, countOneBits(global1.a) | ~var_6.b)), _wgslsmith_sub_u32(0u, _wgslsmith_div_u32(~var_2, 41296u)));
}

