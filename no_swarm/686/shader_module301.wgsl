struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, vec3<u32>(98131u, 42488u, 1u), vec3<u32>(41821u, 2273u, 21706u), Struct_2(Struct_1(-1i, true, vec3<i32>(-27324i, 23709i, -3736i), vec3<i32>(-35395i, 0i, i32(-2147483648)), vec4<bool>(false, true, true, true)), 28214u, -29033i), Struct_2(Struct_1(1i, false, vec3<i32>(0i, -6200i, 21722i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec4<bool>(false, true, false, false)), 0u, 13221i));

var<private> global1: array<u32, 23>;

var<private> global2: Struct_2 = Struct_2(Struct_1(1i, false, vec3<i32>(1i, 9277i, -1i), vec3<i32>(1i, -627i, i32(-2147483648)), vec4<bool>(false, true, true, false)), 15855u, -4276i);

var<private> global3: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(1000f, 594f, -1000f, -1000f), vec4<f32>(-714f, -1747f, 1000f, -712f), vec4<f32>(645f, 128f, -1142f, 816f), vec4<f32>(-171f, 1233f, 485f, 345f), vec4<f32>(-1134f, -235f, 350f, 124f), vec4<f32>(-497f, -318f, -587f, 1000f), vec4<f32>(680f, 1000f, 1656f, 1940f), vec4<f32>(-264f, -802f, -420f, 1414f), vec4<f32>(-855f, -1281f, 798f, -626f), vec4<f32>(-1972f, -728f, -1958f, 710f), vec4<f32>(1409f, 203f, 343f, 1173f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = global0.c.zz;
    global0 = Struct_3(!(any(select(vec2<bool>(true, false), vec2<bool>(arg_1.b, arg_1.b), global0.a)) || !(global1[_wgslsmith_index_u32(31769u, 23u)] <= 4294967295u)), vec3<u32>(global0.e.b, ~_wgslsmith_mod_u32(countOneBits(global1[_wgslsmith_index_u32(4294967295u, 23u)]), ~5827u), firstLeadingBit(arg_0) >> (global2.b % 32u)), firstTrailingBit(~global0.b), global0.d, Struct_2(arg_3, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global0.b.x, 11551u, 4294967295u), ~(~vec4<u32>(66525u, 4294967295u, global2.b, 4294967295u))), arg_1.c.x ^ 0i));
    global0 = Struct_3(true, global0.b, _wgslsmith_clamp_vec3_u32(~(~_wgslsmith_div_vec3_u32(global0.c, vec3<u32>(1u, 0u, 0u))), abs(~reverseBits(vec3<u32>(arg_0, global2.b, 0u))), vec3<u32>(_wgslsmith_mod_u32(~1u, 52148u), 44881u, ~(~arg_0))), global0.d, Struct_2(global2.a, global1[_wgslsmith_index_u32(~global0.e.b & ~1064u, 23u)] & _wgslsmith_mod_u32(30866u & u_input.b, arg_2), global2.c));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-258f, -2102f, -1000f)))))));
    var var_2 = ~(~global0.c.yy);
    return firstLeadingBit(~72122u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: u32, arg_3: vec3<f32>) -> i32 {
    global0 = Struct_3(false, reverseBits(global0.b), ~global0.c, Struct_2(Struct_1(3516i, arg_1.x, vec3<i32>(-1i) * -vec3<i32>(46299i, global0.e.a.c.x, u_input.c), ~(vec3<i32>(-28282i, global0.e.c, -36465i) & vec3<i32>(25199i, global2.c, u_input.a)), vec4<bool>(global0.e.a.b, arg_3.x == arg_3.x, false && arg_1.x, true)), global2.b & _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, 0u, global1[_wgslsmith_index_u32(13631u, 23u)], 56130u), vec4<u32>(19931u, global1[_wgslsmith_index_u32(0u, 23u)], 106877u, global1[_wgslsmith_index_u32(26933u, 23u)])), 1u), -18294i | -global2.a.a), Struct_2(Struct_1(~_wgslsmith_div_i32(global0.d.a.a, global2.c), global2.a.e.x, global0.e.a.d, global2.a.d, !vec4<bool>(arg_0.x, false, global0.e.a.e.x, false)), ~func_3(4294967295u, global2.a, 1u, Struct_1(global2.a.d.x, true, global2.a.d, vec3<i32>(7165i, global0.d.c, 2147483647i), vec4<bool>(global0.d.a.e.x, true, false, true))), global0.e.a.d.x));
    var var_0 = Struct_3(global0.d.a.a == -_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.d.a.d.x, global2.c, global0.d.a.d.x, global2.c), -vec4<i32>(global0.e.a.d.x, global2.c, global2.c, -1034i)), vec3<u32>(5201u, _wgslsmith_add_u32(_wgslsmith_div_u32(~34082u, func_3(global0.b.x, global0.e.a, global2.b, Struct_1(-2147483647i, arg_1.x, vec3<i32>(global2.c, 0i, global2.a.c.x), global0.e.a.c, arg_1))), ~(~0u)), u_input.b), global0.b, Struct_2(global2.a, 1u, u_input.a), global0.e);
    var_0 = Struct_3(true, vec3<u32>(~(~0u), firstLeadingBit(var_0.e.b), u_input.b), min(vec3<u32>(~(~global1[_wgslsmith_index_u32(u_input.b, 23u)]), ~firstLeadingBit(1u), 139530u), global0.c << ((var_0.c & ~global0.b) % vec3<u32>(32u))), Struct_2(var_0.d.a, global0.b.x >> (_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(19058u, global1[_wgslsmith_index_u32(1u, 23u)], 37706u, u_input.b)), vec4<u32>(1u, global2.b, 0u, global2.b) | vec4<u32>(4294967295u, global0.c.x, 1u, var_0.b.x)) % 32u), 10408i), Struct_2(Struct_1(global0.e.c, arg_0.x, global0.d.a.d, vec3<i32>(~u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-5783i, global2.c), vec2<i32>(-17451i, global0.d.a.d.x)), ~(-2147483647i)), select(select(arg_1, vec4<bool>(var_0.e.a.b, true, global0.a, arg_1.x), false), !global0.e.a.e, select(arg_0, vec4<bool>(global2.a.b, global0.d.a.e.x, var_0.e.a.b, global2.a.b), true))), select(arg_2, ~global1[_wgslsmith_index_u32(u_input.b, 23u)] << (~global2.b % 32u), true), reverseBits(global0.e.a.c.x)));
    let var_1 = u_input.b;
    let var_2 = !select(vec2<bool>(var_0.c.x <= abs(37012u), any(select(var_0.e.a.e.zyy, vec3<bool>(true, true, global2.a.e.x), global2.a.e.ywx))), vec2<bool>(true, any(select(arg_1.xwy, var_0.e.a.e.xyz, arg_1.x))), select(global2.a.e.xw, var_0.d.a.e.zz, vec2<bool>(!arg_1.x, global2.a.e.x != arg_0.x)));
    return var_0.d.a.a;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    global1 = array<u32, 23>();
    var var_0 = vec3<i32>(u_input.a, _wgslsmith_div_i32(-1i, max(arg_1.c, u_input.a)), func_2(!global0.d.a.e, !arg_1.a.e, 1u, vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.x)), 1143f, _wgslsmith_f_op_f32(387f + 416f))) & (_wgslsmith_div_i32(arg_1.a.c.x, global2.c | global0.d.a.c.x) << (68202u % 32u)));
    var var_1 = arg_0;
    let var_2 = -min(~global2.a.c.x, global2.c) == 53152i;
    var var_3 = Struct_2(Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 11911i, 1i, arg_1.a.d.x), -vec4<i32>(global2.c, -16736i, global2.c, u_input.c)), !(-2147483647i != _wgslsmith_mult_i32(global0.d.a.c.x, var_0.x)), vec3<i32>(min(global2.c, global2.c) >> (41251u % 32u), u_input.c, u_input.a), vec3<i32>(arg_1.c, 1i, func_2(arg_1.a.e, select(vec4<bool>(arg_1.a.e.x, var_2, false, arg_1.a.b), arg_1.a.e, vec4<bool>(false, arg_1.a.b, false, false)), u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(482f, arg_0.a.x, arg_0.a.x)))), vec4<bool>(false, var_1.a.x >= -2402f, !(!var_2), true)), _wgslsmith_dot_vec4_u32(~(~abs(vec4<u32>(global1[_wgslsmith_index_u32(arg_1.b, 23u)], arg_1.b, global1[_wgslsmith_index_u32(arg_1.b, 23u)], 102862u))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 79962u, u_input.b, 82607u), vec4<u32>(arg_1.b, u_input.b, 4294967295u, arg_1.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(7304u, 1u, 0u, 0u), vec4<u32>(global1[_wgslsmith_index_u32(global2.b, 23u)], u_input.b, 4294967295u, 4294967295u))), ~vec4<u32>(1u, global0.e.b, 41758u, u_input.b) ^ ~vec4<u32>(global2.b, 0u, u_input.b, u_input.b))), ~global2.a.d.x);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(global0.e.a.d.yy & firstLeadingBit(vec2<i32>(-26917i, global2.a.a))) << (_wgslsmith_mult_vec2_u32(abs(global0.c.xy), global0.c.yx) % vec2<u32>(32u));
    global0 = Struct_3(global2.a.b, vec3<u32>(global1[_wgslsmith_index_u32(abs(~u_input.b) ^ ~15745u, 23u)], global1[_wgslsmith_index_u32(1u >> (~_wgslsmith_sub_u32(69352u, global1[_wgslsmith_index_u32(6636u, 23u)]) % 32u), 23u)], 4294967295u), vec3<u32>(min(22673u << (u_input.b % 32u), ~1u), func_1(Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-3231f, -1157f, 1000f) - vec3<f32>(-1000f, 880f, -841f))), global0.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1808f, -184f, 185f) + vec3<f32>(1109f, -357f, -739f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-216f, 483f, 1407f))))), 1u), Struct_2(Struct_1(global2.c, any(vec4<bool>(global2.a.e.x, global2.a.b, global2.a.b, global2.a.e.x)), vec3<i32>(-2147483647i, var_0.x, global0.e.a.d.x), vec3<i32>(_wgslsmith_sub_i32(u_input.a, var_0.x), _wgslsmith_clamp_i32(global2.c, 11061i, 3589i), ~global2.c), vec4<bool>(true, true, true, true)), 3461u, min(1i, (global2.c >> (global2.b % 32u)) ^ ~var_0.x)), global0.e);
    let var_1 = ~countOneBits(231i);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1177f), -993f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-652f, -693f, false)))) + 1000f)));
    var_0 = abs(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.e.a.d.yy, vec2<i32>(4004i, var_1), vec2<i32>(0i << (global0.b.x % 32u), ~2147483647i)), global2.a.c.zz));
    var var_3 = false;
    let var_4 = u_input.a;
    global0 = Struct_3(true & !global0.e.a.e.x, ~_wgslsmith_sub_vec3_u32(abs(global0.c >> (global0.c % vec3<u32>(32u))), max(~vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(71517u, 23u)], global2.b), ~global0.c)), firstLeadingBit(~firstTrailingBit(abs(vec3<u32>(75217u, 0u, 53803u)))), Struct_2(Struct_1(u_input.a, true || (var_1 >= u_input.c), global0.d.a.d, max(vec3<i32>(-18846i, -26336i, var_1), ~vec3<i32>(1i, var_1, -1i)), vec4<bool>(all(global2.a.e.wyw), global0.d.a.e.x, global2.a.b, global0.e.a.b)), global2.b, ~func_2(global2.a.e, global0.d.a.e, _wgslsmith_mult_u32(global2.b, global0.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(856f, -995f, 852f) + vec3<f32>(133f, 839f, 1000f)))), global0.e);
    var var_5 = vec3<u32>(global1[_wgslsmith_index_u32(~4294967295u, 23u)] ^ ~global2.b, global2.b, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-951f * -154f) - _wgslsmith_f_op_f32(f32(-1f) * -1334f)), 122f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -293f)))), global3[_wgslsmith_index_u32(max(abs(~30063u), _wgslsmith_mult_u32(u_input.b, global2.b) >> (~global1[_wgslsmith_index_u32(var_5.x, 23u)] % 32u)), 11u)])), ~(~max(_wgslsmith_sub_vec2_i32(global2.a.c.zx, global2.a.c.zx), _wgslsmith_clamp_vec2_i32(global0.e.a.d.yz, global0.d.a.c.yx, vec2<i32>(-2147483647i, 2147483647i)))));
}

