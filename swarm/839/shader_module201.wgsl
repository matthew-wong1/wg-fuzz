struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 5> = array<f32, 5>(177f, 1093f, -340f, -541f, 509f);

var<private> global2: vec2<i32> = vec2<i32>(-36472i, -1i);

var<private> global3: array<bool, 13> = array<bool, 13>(true, false, true, false, true, true, true, false, false, true, true, false, false);

var<private> global4: f32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = select(vec2<bool>(global3[_wgslsmith_index_u32(~(~select(81032u, 0u, true)), 13u)], global3[_wgslsmith_index_u32(1u, 13u)] | !global3[_wgslsmith_index_u32(~70080u, 13u)]), vec2<bool>(false, !(any(vec4<bool>(global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(55171u, 13u)], global3[_wgslsmith_index_u32(107351u, 13u)], true)) && (443f == global1[_wgslsmith_index_u32(13502u, 5u)]))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(54798u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(8798u, 31563u, 47259u, 4294967295u))), 61870u), ~(vec2<u32>(0u, 4294967295u) | select(vec2<u32>(0u, 7366u), vec2<u32>(46373u, 72236u), vec2<bool>(global3[_wgslsmith_index_u32(1u, 13u)], false)))), 13u)]);
    var_0 = vec2<bool>(var_0.x, false);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-359f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 80739u, 46991u), vec3<u32>(40674u, 10386u, 0u)), 5u)] + _wgslsmith_f_op_f32(-1163f * global1[_wgslsmith_index_u32(firstTrailingBit(133394u), 5u)])), -316f, global1[_wgslsmith_index_u32(1u, 5u)]));
    let var_2 = Struct_3(Struct_2(vec2<u32>(1u, 1u << (~4294967295u % 32u))), Struct_1(global2.x, ~(i32(-1i) * -1i), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 5u)] + _wgslsmith_f_op_f32(-815f + -230f)))));
    var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a.a.x, var_2.a.a.x ^ ~var_2.a.a.x, 9551u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, var_2.a.a.x, 1u), 1u & var_2.a.a.x, _wgslsmith_mod_u32(var_2.a.a.x, 0u), reverseBits(0u)), vec4<u32>(25705u, countOneBits(1u), ~var_2.a.a.x, ~var_2.a.a.x)) ^ vec4<u32>(~var_2.a.a.x, _wgslsmith_sub_u32(var_2.a.a.x, ~0u), reverseBits(var_2.a.a.x), var_2.a.a.x));
    return max(~(~26932u), 75982u);
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(10605u) ^ (_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 51753u, 88981u, 15557u), _wgslsmith_clamp_vec4_u32(vec4<u32>(59090u, 4294967295u, 36963u, 21672u), vec4<u32>(4294967295u, 20429u, 19157u, 13600u), vec4<u32>(21394u, 107710u, 4294967295u, 1u))) >> (~max(1u, 13329u) % 32u)), 5u)]);
    let var_1 = vec4<u32>(~firstLeadingBit(func_3()), ~(~(~firstLeadingBit(1u))), 1u, 4294967295u);
    var var_2 = Struct_3(Struct_2(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 14527u), vec2<u32>(var_1.x, 10442u))) & vec2<u32>(var_1.x ^ var_1.x, _wgslsmith_dot_vec3_u32(var_1.zwz, vec3<u32>(322u, 1u, 41005u)))), Struct_1(u_input.a.x, u_input.a.x, true), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(firstTrailingBit(var_1.x ^ var_1.x), 5u)], _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_1.x, 5u)]))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(17969u, 5u)], global1[_wgslsmith_index_u32(var_2.a.a.x, 5u)]))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1.x, ~var_2.a.a.x), _wgslsmith_mult_u32(var_2.a.a.x, 1u) & var_2.a.a.x), 5u)], 1182f) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(17672u, 5u)], var_2.c, -2360f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-133f, var_2.c, global1[_wgslsmith_index_u32(var_1.x, 5u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_2.a.a.x, 5u)], 220f, 517f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, 1103f, 2525f)), _wgslsmith_div_vec3_f32(vec3<f32>(-137f, -534f, var_2.c), vec3<f32>(-487f, var_2.c, -1064f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1924f, global1[_wgslsmith_index_u32(var_2.a.a.x, 5u)], global1[_wgslsmith_index_u32(var_2.a.a.x, 5u)])), vec3<f32>(global1[_wgslsmith_index_u32(var_1.x, 5u)], -142f, var_2.c))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -676f));
    return Struct_4(all(!(!vec3<bool>(var_2.b.c, var_2.b.c, false))), _wgslsmith_add_i32(~(~31440i << (firstTrailingBit(var_2.a.a.x) % 32u)), global2.x), var_2.a, var_2.b.c | true);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec2<u32>) -> i32 {
    let var_0 = arg_1.c;
    var var_1 = vec3<bool>((-u_input.a.x >> (~(~var_0.a.x) % 32u)) < 18970i, select(!func_2().d, true, !(!arg_1.d) || global3[_wgslsmith_index_u32(~(~arg_1.c.a.x), 13u)]), !any(select(vec2<bool>(arg_1.d, false), select(vec2<bool>(true, global3[_wgslsmith_index_u32(arg_2.x, 13u)]), vec2<bool>(true, arg_1.a), vec2<bool>(true, global3[_wgslsmith_index_u32(var_0.a.x, 13u)])), vec2<bool>(true, true))));
    var var_2 = all(!select(vec4<bool>(false, true, false || var_1.x, all(vec4<bool>(true, arg_1.a, arg_1.d, true))), vec4<bool>(true, true, true, var_1.x), vec4<bool>(false, true, true, !global3[_wgslsmith_index_u32(arg_2.x, 13u)])));
    global0 = arg_1.d;
    var var_3 = !(!select(select(vec3<bool>(global3[_wgslsmith_index_u32(arg_1.c.a.x, 13u)], false, var_1.x), select(vec3<bool>(var_1.x, global3[_wgslsmith_index_u32(111396u, 13u)], false), vec3<bool>(false, var_1.x, true), arg_1.a), var_1.x), select(select(vec3<bool>(false, var_1.x, true), vec3<bool>(true, false, arg_1.a), false), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 13u)], arg_1.d, true), arg_1.d), select(select(vec3<bool>(false, arg_1.d, false), vec3<bool>(arg_1.a, var_1.x, false), var_1.x), !vec3<bool>(global3[_wgslsmith_index_u32(0u, 13u)], true, false), true)));
    return u_input.a.x;
}

fn func_1() -> vec2<u32> {
    global1 = array<f32, 5>();
    global3 = array<bool, 13>();
    let var_0 = vec3<i32>(1i, func_4(-922f, func_2(), ~vec2<u32>(1u >> (1u % 32u), 1u)), _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, ~(global2.x ^ u_input.a.x)), 1i));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(_wgslsmith_add_u32(~0u, firstTrailingBit(8294u))), ~43657u), _wgslsmith_div_vec2_u32(~func_2().c.a, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), select(~vec2<u32>(7672u, 1u), vec2<u32>(1u, 1u), any(vec2<bool>(true, true))))));
    let var_2 = !any(select(vec3<bool>(global3[_wgslsmith_index_u32(min(0u, 57870u), 13u)], global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(16519u, 13u)]), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), global3[_wgslsmith_index_u32(0u, 13u)]), vec3<bool>(global3[_wgslsmith_index_u32(83256u, 13u)], global3[_wgslsmith_index_u32(0u, 13u)], global3[_wgslsmith_index_u32(4294967295u, 13u)]), true), vec3<bool>(true, any(vec2<bool>(true, true)), true)));
    return _wgslsmith_add_vec2_u32(vec2<u32>(1u, firstLeadingBit(1u)), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 54725u, 1u), vec4<u32>(4294967295u, 24665u, 19905u, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(40409u, 4294967295u, 77886u), ~vec3<u32>(26865u, 4294967295u, 4294967295u))) & firstLeadingBit(vec2<u32>(1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a;
    global3 = array<bool, 13>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~1u, 5u)] + 977f)))));
    var var_1 = Struct_2(countOneBits(func_1()));
    global1 = array<f32, 5>();
    var var_2 = func_2().c;
    global0 = !(u_input.a.x == _wgslsmith_mod_i32(u_input.a.x, 44983i));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_mod_u32(4294967295u, var_1.a.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, global2.x, -1i, global2.x), max(vec4<i32>(36972i, -1i, 0i, global2.x) >> (vec4<u32>(60317u, var_2.a.x, 15276u, var_1.a.x) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, 176i, u_input.a.x, 1i))), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, ~15634i), ~u_input.a.x, min(_wgslsmith_div_i32(0i, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, 1i)), 19673i)), -916f, countOneBits(-vec4<i32>(_wgslsmith_mod_i32(42182i, global2.x), 0i, i32(-1i) * -2147483647i, -2147483647i)));
}

