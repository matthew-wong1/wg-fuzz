struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 13>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> u32 {
    var var_0 = any(vec4<bool>((_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, 28335i, -1i), vec4<i32>(-84049i, 0i, -1i, 0i)) <= -55373i) || true, true, any(select(global1[_wgslsmith_index_u32(~66506u, 13u)], vec2<bool>(true, true), select(global1[_wgslsmith_index_u32(54554u, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], vec2<bool>(true, false)))), any(vec2<bool>(true, true))));
    let var_1 = select(vec3<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(269f)), _wgslsmith_f_op_f32(f32(-1f) * -1001f))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -790f), _wgslsmith_div_f32(-1260f, 1000f))), true, true), select(vec3<bool>(1u < select(u_input.a, u_input.a, true), true, select(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), u_input.a <= u_input.a), vec3<bool>(true, true, true)), vec3<bool>(firstTrailingBit(1u) < u_input.a, _wgslsmith_f_op_f32(sign(101f)) > _wgslsmith_f_op_f32(sign(602f)), all(vec2<bool>(true, true)))), vec3<bool>(~(~u_input.a) >= u_input.a, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))) == true, _wgslsmith_mod_i32(~2147483647i, _wgslsmith_clamp_i32(-20361i, 23388i, -33730i)) != min(select(1i, 0i, true), 1i)));
    var var_2 = ~(~vec3<u32>(~select(4294967295u, 36458u, var_1.x), 39170u, firstTrailingBit(65912u) & ~u_input.a));
    var var_3 = Struct_3(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -404f))))));
    let var_4 = ~(~(vec2<i32>(-1i) * -vec2<i32>(1i, 1i)));
    return countOneBits(firstLeadingBit(~1u));
}

fn func_2() -> f32 {
    global0 = true;
    var var_0 = Struct_2(u_input.a, Struct_1(vec2<u32>(func_3(), ~u_input.a) << ((_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 4294967295u)) & vec2<u32>(9534u, 7759u)) % vec2<u32>(32u)), abs(firstTrailingBit(vec2<u32>(1u, 4294967295u) & vec2<u32>(u_input.a, 1u)))), Struct_1(select(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_mult_vec2_u32(vec2<u32>(11581u, 0u), vec2<u32>(34555u, 1u)) >> ((vec2<u32>(u_input.a, 25894u) & vec2<u32>(1319u, u_input.a)) % vec2<u32>(32u)), select(vec2<bool>(false, false), select(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(13632u, 13u)], true), global1[_wgslsmith_index_u32(~u_input.a, 13u)])), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(81317u, u_input.a), vec2<u32>(22132u, u_input.a)))), Struct_1(~(~(vec2<u32>(4294967295u, u_input.a) | vec2<u32>(49682u, u_input.a))), select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 44038u, 22821u, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), 53280u), ~firstTrailingBit(vec2<u32>(71052u, u_input.a)), select(vec2<bool>(false, false), vec2<bool>(true, false), true))));
    global1 = array<vec2<bool>, 13>();
    var var_1 = Struct_1(~vec2<u32>(func_3(), var_0.d.b.x), var_0.c.a);
    var_1 = var_0.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(911f))), 1f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-476f, _wgslsmith_div_f32(788f, -1000f), all(vec2<bool>(false, true))))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> u32 {
    let var_0 = firstTrailingBit(~0u);
    global1 = array<vec2<bool>, 13>();
    let var_1 = arg_1;
    global1 = array<vec2<bool>, 13>();
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(~0i, 2147483647i, select(arg_2.x, arg_2.x, false)), _wgslsmith_mod_vec3_i32(-vec3<i32>(arg_2.x, arg_2.x, arg_2.x), firstLeadingBit(vec3<i32>(arg_2.x, arg_2.x, -1i))) >> (~(~vec3<u32>(35071u, 0u, u_input.a)) % vec3<u32>(32u))), arg_2.wyz);
    return abs(21732u);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(~arg_1.x, ~6618u) << (select(arg_1, select(arg_0.yw, vec2<u32>(arg_0.x, arg_0.x), false), select(false, true, false)) % vec2<u32>(32u)), vec2<u32>(arg_1.x, 1u)), reverseBits(arg_1));
    return _wgslsmith_sub_u32(~(~(_wgslsmith_add_u32(arg_1.x, 7360u) >> (var_0.b.x % 32u))), (abs(4294967295u) >> (u_input.a % 32u)) | ~((1u << (0u % 32u)) & max(var_0.b.x, arg_1.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3;
    global1 = array<vec2<bool>, 13>();
    return 1i >> (func_5(vec4<u32>(0u, arg_3.a, func_4(_wgslsmith_f_op_f32(func_2()), var_0.b, ~vec4<i32>(0i, 1i, arg_1.x, 24851i), any(vec4<bool>(false, false, true, true))), ~(~var_0.a)), vec2<u32>(6184u, ~abs(1u)), -1578f) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(-24736i, _wgslsmith_mod_i32(select(-2147483647i, 0i, false), 1i), func_1(vec3<u32>(26078u, u_input.a, 15624u), _wgslsmith_mult_vec2_i32(vec2<i32>(45374i, 33568i), vec2<i32>(-27863i, 43820i)), vec3<u32>(u_input.a, 8934u, u_input.a), Struct_2(2344u, Struct_1(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 21769u)), Struct_1(vec2<u32>(4294967295u, 13559u), vec2<u32>(u_input.a, 1u)), Struct_1(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))))), select(-max(vec3<i32>(0i, 36486i, 42032i), vec3<i32>(-12496i, 2147483647i, 0i)), ~countOneBits(vec3<i32>(38618i, 0i, 0i)), vec3<bool>(true, false, true)));
    let var_1 = vec2<i32>(4103i, countOneBits(-1i) << ((~(~u_input.a) ^ (_wgslsmith_mod_u32(15376u, 64133u) | ~u_input.a)) % 32u));
    var var_2 = 1000f;
    var var_3 = u_input.a;
    global1 = array<vec2<bool>, 13>();
    let var_4 = firstLeadingBit(23786u);
    var var_5 = vec4<bool>(false, true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1876f, -900f, var_5.x)))), vec2<i32>(var_1.x, ~var_1.x >> (u_input.a % 32u)));
}

