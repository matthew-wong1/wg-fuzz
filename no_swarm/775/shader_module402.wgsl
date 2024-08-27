struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(1u, 57988u, 46490u, 0u, 45143u, 75646u, 25518u);

var<private> global1: array<u32, 16>;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<u32>(2899u, 0u, 37056u)), Struct_1(vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec3<u32>(0u, 30695u, 1u)), Struct_1(vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 36759u, 19167u)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec3<u32>(1u, 1u, 52024u)), Struct_1(vec3<u32>(1u, 112779u, 44401u)), Struct_1(vec3<u32>(4294967295u, 26288u, 46593u)), Struct_1(vec3<u32>(26043u, 87712u, 4294967295u)), Struct_1(vec3<u32>(1u, 0u, 1u)), Struct_1(vec3<u32>(4294967295u, 11118u, 37042u)), Struct_1(vec3<u32>(4294967295u, 4445u, 0u)), Struct_1(vec3<u32>(1u, 60837u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 35525u, 74559u)), Struct_1(vec3<u32>(2648u, 41662u, 4294967295u)), Struct_1(vec3<u32>(15190u, 1u, 1u)), Struct_1(vec3<u32>(0u, 0u, 1u)), Struct_1(vec3<u32>(28612u, 18091u, 1u)), Struct_1(vec3<u32>(1u, 0u, 0u)), Struct_1(vec3<u32>(22702u, 0u, 0u)));

var<private> global3: array<bool, 28> = array<bool, 28>(true, true, true, false, false, true, true, true, true, true, true, false, false, false, true, false, true, false, true, true, false, false, false, false, true, true, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<f32>) -> bool {
    return (_wgslsmith_f_op_f32(-arg_0.x) == _wgslsmith_f_op_f32(-arg_0.x)) != (false & global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(1u << (u_input.b.x % 32u)), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(60938u, 7u)], 7u)]), 28u)]);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = -28064i | (u_input.a & max(u_input.a, arg_1.x));
    global0 = array<u32, 7>();
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-921f, _wgslsmith_f_op_f32(step(-482f, 1229f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-187f, 204f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1765f)))))));
    global0 = array<u32, 7>();
    var var_2 = vec4<u32>(firstLeadingBit(_wgslsmith_div_u32(1u, ~(u_input.b.x | global1[_wgslsmith_index_u32(u_input.b.x, 16u)]))), global1[_wgslsmith_index_u32(abs(max(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(arg_0.a.a.x, 7u)], u_input.b.x, max(global1[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(1u, 7u)])), abs(_wgslsmith_mult_u32(1u, u_input.b.x)))), 16u)], ~1u >> (1u % 32u), _wgslsmith_add_u32(~select(0u, arg_0.a.a.x, true), ~(_wgslsmith_mod_u32(1u, 4294967295u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(u_input.b.x, 16u)], arg_0.a.a.x), arg_0.a.a) % 32u))));
    return Struct_2(~(~(~1u)), arg_2, global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(~(~var_2.zx), countOneBits(u_input.b ^ arg_0.a.a.xz))), 22u)]);
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1000f, -274f), vec3<f32>(1220f, -666f, -116f), vec3<bool>(false, false, false)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1715f + 331f))) * -1783f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1446f, _wgslsmith_f_op_f32(abs(341f)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f + -509f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-133f * -1000f) + -227f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(326f * -780f) - _wgslsmith_f_op_f32(sign(var_0.x))), any(vec4<bool>(global3[_wgslsmith_index_u32(arg_2.a.x, 28u)], global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(101328u, 28u)], true))))));
    let var_2 = func_3(Struct_3(Struct_1(~arg_2.a), -20967i, ~select(vec2<i32>(-43941i, 14141i), vec2<i32>(arg_1, 1i), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 28u)])), true), _wgslsmith_sub_vec4_i32(arg_0.b, arg_0.b), select(vec3<bool>(any(vec3<bool>(false, false, true)), global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(9335u, 16u)], 28u)], arg_0.a.x >= 12380u), vec3<bool>(func_2(vec4<f32>(var_0.x, 673f, var_0.x, 376f)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1003f, -1000f, var_0.x, var_0.x))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 90383u), 28u)]), !vec3<bool>(true, 64615u != global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(0u, 16u)], 1u), 7u)], 28u)])));
    global3 = array<bool, 28>();
    let var_3 = global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 16u)] >> (_wgslsmith_div_u32(83272u, 1u) % 32u), 28u)];
    return firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(max(u_input.b.x, ~var_2.a), ~99407u, ~4294967295u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 4294967295u), 16u)], 16u)], _wgslsmith_div_u32(var_2.c.a.x, ~var_2.c.a.x) & _wgslsmith_mod_u32(1u, arg_2.a.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = !(!arg_1.b.zy);
    global1 = array<u32, 16>();
    return StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_f32(-arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~(~select(vec3<u32>(1u, 1u, 4294967295u) | vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(2127u, 16u)]), vec3<u32>(85495u, 39880u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], 7u)]), !vec3<bool>(false, false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44539u, 16u)], 28u)]))), vec4<i32>(~2147483647i, -_wgslsmith_add_i32(-u_input.a, 35761i), 4529i, u_input.a ^ -abs(-1i)));
    var var_1 = 33388i;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1124f, -428f) - vec2<f32>(531f, -867f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(750f, 2119f), vec2<f32>(549f, 121f)))))))), Struct_2(~(~(~74235u)), select(select(vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(u_input.b.x, 28u)]), select(vec3<bool>(false, false, true), vec3<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(82028u, 16u)], 28u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 16u)], 16u)], 28u)], global3[_wgslsmith_index_u32(0u, 28u)]), vec3<bool>(global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(var_0.a.x, 28u)], true)), vec3<bool>(global3[_wgslsmith_index_u32(var_0.a.x, 28u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 28u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 28u)])), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.x, 7u)], 28u)], false, global3[_wgslsmith_index_u32(23553u, 28u)])), vec3<bool>(true, var_0.b.x < -2147483647i, true)), Struct_1(_wgslsmith_div_vec3_u32(func_1(Struct_4(vec3<u32>(52783u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], 16u)], 7u)], 4294967295u), var_0.b), -12988i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 16u)], 7u)], 22u)]), var_0.a))));
}

