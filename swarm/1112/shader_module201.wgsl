struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_3.b, arg_3.b)))) + -295f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.b - _wgslsmith_f_op_f32(min(arg_3.b, -520f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1101f - arg_3.b)) * -597f)))));
    global0 = array<Struct_3, 25>();
    var var_1 = select(select(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b, -11281i, arg_3.c.x, 2161i), vec4<i32>(-2147483647i, arg_1.x, 0i, -2147483647i)), -countOneBits(vec4<i32>(arg_0.b, arg_1.x, arg_1.x, 0i)), select(vec4<bool>(false, arg_0.a.x, arg_2.x, false), arg_0.a, select(arg_2.x, false, arg_0.a.x))), vec4<i32>(1i << (u_input.c.x % 32u), 8571i, ~arg_1.x, ~(-2147483647i)) ^ max(~vec4<i32>(-66951i, -14595i, arg_1.x, arg_3.c.x), vec4<i32>(arg_3.c.x, -9123i, u_input.d, 10364i) ^ vec4<i32>(2147483647i, arg_1.x, arg_0.b, arg_3.c.x)), arg_0.a) & -_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(arg_1.x, -2147483647i, 1i, 0i)), abs(vec4<i32>(0i, 34471i, arg_0.b, arg_3.c.x))), ~(vec4<i32>(arg_3.c.x, u_input.d, -2147483647i, 94072i) | vec4<i32>(14138i, arg_0.b, arg_3.c.x, 37619i)));
    let var_2 = arg_0.a.yxy;
    global0 = array<Struct_3, 25>();
    return vec3<i32>((arg_3.c.x >> (u_input.c.x % 32u)) << (1u % 32u), firstLeadingBit(-2147483647i), ~arg_3.c.x);
}

fn func_2(arg_0: vec3<bool>) -> vec4<f32> {
    let var_0 = firstTrailingBit(~vec4<u32>(4294967295u, ~countOneBits(u_input.c.x), u_input.c.x, u_input.c.x));
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    var var_1 = Struct_1(!(!(!select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(true, true, false, arg_0.x), vec4<bool>(false, false, false, true)))), abs(_wgslsmith_dot_vec3_i32(firstTrailingBit(func_3(Struct_1(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), u_input.b.x), u_input.a, arg_0.xy, global0[_wgslsmith_index_u32(var_0.x, 25u)])), u_input.a)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(969f, -815f, 451f, 720f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1046f, 2132f, 3064f, -1594f), vec4<f32>(1597f, -519f, 1000f, 1942f))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(488f)), -674f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1723f - -1137f))), 1f, 800f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(484f, _wgslsmith_f_op_f32(f32(-1f) * -419f), -1850f, -1000f), vec4<f32>(400f, _wgslsmith_f_op_f32(649f - -1359f), _wgslsmith_f_op_f32(step(-160f, 1142f)), _wgslsmith_f_op_f32(round(-1000f))))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(505f)), _wgslsmith_f_op_f32(-346f - 126f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-1919f * -1177f))), 1000f, _wgslsmith_f_op_f32(-197f + -1000f))));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> f32 {
    let var_0 = max(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, u_input.a.x, u_input.b.x), vec3<i32>(u_input.d, u_input.d, u_input.b.x)), 76608i, select(func_3(Struct_1(vec4<bool>(true, true, true, true), u_input.a.x), u_input.a, vec2<bool>(false, false), Struct_3(35623u, arg_1.x, vec3<i32>(-2147483647i, 0i, u_input.b.x))).x, -u_input.b.x, true), select(17579i, u_input.a.x, true) ^ _wgslsmith_mult_i32(-35689i, u_input.a.x)), _wgslsmith_sub_vec4_i32(~vec4<i32>(-36868i, u_input.d, 16924i, u_input.d), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 1634i), vec2<i32>(1i, u_input.b.x)), _wgslsmith_mult_i32(u_input.b.x, 1i), -2147483647i, _wgslsmith_add_i32(u_input.d, 0i)))), vec4<i32>(~max(~u_input.d, 1i), -33523i, -u_input.d, ~_wgslsmith_add_i32(35492i, firstLeadingBit(u_input.b.x))));
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    let var_1 = Struct_1(!(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true))), func_3(Struct_1(vec4<bool>(true, u_input.b.x < u_input.d, all(vec2<bool>(false, true)), all(vec2<bool>(true, false))), 1i), var_0.yzz, vec2<bool>(-33932i != ~u_input.b.x, any(vec3<bool>(true, false, false))), global0[_wgslsmith_index_u32(93896u, 25u)]).x);
    return _wgslsmith_f_op_f32(trunc(936f));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = u_input.c.x;
    var_0 = u_input.c.x;
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    var_0 = 8679u;
    return _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(219f - -218f))) + -552f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(701f, 562f, 175f, -360f) * vec4<f32>(303f, -199f, 1000f, 435f)) * _wgslsmith_f_op_vec4_f32(func_2(vec3<bool>(arg_1.a.x, true, false))))))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), Struct_1(vec4<bool>(true, false, true, false), u_input.d), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1590f)) * -626f))), Struct_1(vec4<bool>(true, true, false, true), firstLeadingBit(u_input.b.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u) << (vec4<u32>(0u, u_input.c.x, u_input.c.x, 1u) % vec4<u32>(32u))) >> (countOneBits(~vec4<u32>(1u, u_input.c.x, u_input.c.x, 32973u)) % vec4<u32>(32u)), ~(~vec4<u32>(73332u, u_input.c.x, 33618u, u_input.c.x))), 25u)]);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-265f, 438f, var_0.b, var_0.b)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.b, 1000f, 1016f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(189f, var_0.b, var_0.b, var_0.b), vec4<f32>(163f, -900f, var_0.b, 1105f), vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(747f, -525f, -1000f, var_0.b) * vec4<f32>(var_0.b, -846f, 1113f, var_0.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1038f, var_0.b, var_0.b, var_0.b))), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true)))))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -147f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-224f, 1377f)))), -841f));
    var_1 = false;
    var_1 = false;
    var var_3 = _wgslsmith_mult_vec2_u32(select(abs(abs(vec2<u32>(1u, var_0.a))), vec2<u32>(5691u, 0u), false), vec2<u32>(48503u, 1u)) >> (~(~vec2<u32>(4294967295u, 70542u) ^ countOneBits(firstLeadingBit(vec2<u32>(var_0.a, u_input.c.x)))) % vec2<u32>(32u));
    let var_4 = select(select(vec2<bool>(!all(vec2<bool>(true, true)), true), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.b >= 300f), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), false), vec2<bool>(true, (85298u >> (var_3.x % 32u)) <= var_3.x), reverseBits(~firstTrailingBit(u_input.c.x)) == reverseBits(_wgslsmith_add_u32(min(var_3.x, var_0.a), ~var_0.a)));
    let var_5 = _wgslsmith_f_op_f32(var_0.b + 601f);
    var_0 = Struct_3(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec3<bool>(!var_4.x, false, all(vec3<bool>(false, false, false))))).x), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(var_0.c, -vec3<i32>(-723i, -15358i, 1i)), vec3<i32>(var_0.c.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.x, -11748i, 0i), vec3<i32>(-38470i, 2147483647i, -1i)), -u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 53947i), vec2<i32>(var_0.c.x, -58988i)), 67904i, var_2.xxx);
}

