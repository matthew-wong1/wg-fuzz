struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 14417i;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 10>;

var<private> global3: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(129294u, 1u, 28810u, 1u), vec4<u32>(66776u, 1u, 4294967295u, 0u), vec4<u32>(54204u, 9988u, 1u, 0u), vec4<u32>(0u, 5620u, 43395u, 0u), vec4<u32>(44908u, 72444u, 30795u, 1u), vec4<u32>(31047u, 0u, 0u, 1u), vec4<u32>(0u, 51699u, 1u, 4294967295u), vec4<u32>(38201u, 4294967295u, 34143u, 0u), vec4<u32>(41315u, 62376u, 43444u, 0u), vec4<u32>(57141u, 5543u, 19182u, 4294967295u), vec4<u32>(53097u, 7922u, 10393u, 23905u), vec4<u32>(28692u, 2458u, 7522u, 4335u), vec4<u32>(1u, 23082u, 108011u, 41075u), vec4<u32>(18006u, 0u, 36074u, 57553u), vec4<u32>(0u, 4294967295u, 19300u, 10697u), vec4<u32>(74653u, 3803u, 46462u, 1u), vec4<u32>(35503u, 0u, 4294967295u, 1u), vec4<u32>(0u, 1u, 4294967295u, 37659u), vec4<u32>(1u, 13233u, 104068u, 72650u), vec4<u32>(0u, 25785u, 38911u, 4294967295u), vec4<u32>(40748u, 12673u, 4294967295u, 89168u), vec4<u32>(0u, 27270u, 4294967295u, 0u), vec4<u32>(1u, 0u, 0u, 34969u), vec4<u32>(0u, 1u, 43200u, 76395u), vec4<u32>(35308u, 3107u, 6623u, 39494u), vec4<u32>(1u, 34391u, 82693u, 37428u), vec4<u32>(4294967295u, 90071u, 0u, 4294967295u), vec4<u32>(48154u, 4294967295u, 4294967295u, 1u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_2 {
    var var_0 = arg_0;
    global2 = array<Struct_1, 10>();
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-930f - -563f)), 1000f, arg_1);
    let var_1 = 10740u;
    let var_2 = true;
    var var_3 = true;
    let var_4 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 - -237f), _wgslsmith_f_op_f32(1000f * arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(261f - -104f), var_0.x) - var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, var_0.x), vec2<f32>(-674f, -111f), vec2<bool>(arg_0.a.x, var_2))), vec2<f32>(-1000f, -148f), select(vec2<bool>(true, arg_0.a.x), arg_0.a.xz, false)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.xy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1038f, arg_1))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zz * vec2<f32>(126f, -1745f)))))));
    return var_1 & 23357u;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(4713u, 4294967295u, u_input.a.x), vec3<u32>(4294967295u, 34725u, u_input.a.x))), u_input.a.zyz, _wgslsmith_div_vec3_u32(reverseBits(u_input.a.wzy << (u_input.a.xxz % vec3<u32>(32u))), select(u_input.a.wzy, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 77114u), vec3<u32>(u_input.a.x, 60034u, u_input.a.x)), !vec3<bool>(arg_1.a, false, false)))) | min(reverseBits(~vec3<u32>(1u, u_input.a.x, u_input.a.x)), vec3<u32>(~1u, ~u_input.a.x, countOneBits(8007u)));
    let var_1 = !(((u_input.a.x ^ var_0.x) >> (~0u % 32u)) > select(_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_u32(~var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.a.x), u_input.a.zw)), _wgslsmith_f_op_f32(round(arg_2.x)) < -832f));
    var var_2 = arg_3;
    let var_3 = func_2(arg_3, Struct_2(all(vec4<bool>(arg_0.x > -1951f, var_2.a.x, true, all(vec4<bool>(false, arg_1.a, arg_3.a.x, true))))), _wgslsmith_clamp_i32(arg_3.b, 27826i, _wgslsmith_add_i32(arg_3.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b, arg_3.b, var_2.b, global1.x), vec4<i32>(var_2.b, arg_3.b, -40610i, var_2.b)) >> (_wgslsmith_mult_u32(36782u, u_input.a.x) % 32u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, ~1u, _wgslsmith_add_u32(u_input.a.x, var_0.x)), select(var_0, var_0, vec3<bool>(false, true, false)) >> (reverseBits(vec3<u32>(4294967295u, var_0.x, 35965u)) % vec3<u32>(32u))));
    let var_4 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~u_input.a.yxw & ~u_input.a.wyx, u_input.a.zyw), reverseBits(u_input.a.x)) ^ var_0.x;
    return _wgslsmith_sub_u32(max(_wgslsmith_dot_vec3_u32(u_input.a.zzz, ~u_input.a.zyx) << (~(~0u) % 32u), ~(~var_0.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_4), vec2<u32>(4294967295u, var_0.x)) % 32u))), var_4);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<f32>, arg_3: vec2<u32>) -> bool {
    var var_0 = func_2(Struct_1(vec3<bool>(true, true, true), max(_wgslsmith_mult_i32(global1.x & 24044i, -42098i), arg_0.x)), Struct_2(!(_wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)) >= _wgslsmith_f_op_f32(select(-1986f, arg_2.x, false)))), countOneBits(arg_0.x), ~arg_3.x & u_input.a.x);
    var var_1 = 4294967295u;
    global0 = arg_0.x & (i32(-1i) * -35439i);
    var var_2 = global2[_wgslsmith_index_u32(0u, 10u)];
    var var_3 = func_2(Struct_1(vec3<bool>(true, var_2.a.x || false, true), global1.x), func_2(global2[_wgslsmith_index_u32(countOneBits(~15812u) & _wgslsmith_mod_u32(u_input.a.x, ~1u), 10u)], Struct_2(any(var_2.a)), _wgslsmith_dot_vec3_i32(abs(~global1.wyw), vec3<i32>(select(-5674i, var_2.b, var_2.a.x), 1i, var_2.b)), 70686u), global1.x | _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-30129i, global1.x) | global1.xw, reverseBits(global1.zz)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.x, global1.x), reverseBits(var_2.b))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1058f, -953f, -1680f, 733f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, -2283f, 1450f))), func_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(global2[_wgslsmith_index_u32(15168u, 10u)], arg_2.x, u_input.a.x), u_input.a.x), 10u)], func_2(global2[_wgslsmith_index_u32(1792u, 10u)], Struct_2(var_2.a.x), arg_0.x, ~arg_3.x), 13446i, arg_3.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-358f, arg_2.x) + arg_2)), Struct_1(vec3<bool>(any(var_2.a), arg_1 != arg_1, var_2.a.x), _wgslsmith_mult_i32(2850i, abs(arg_0.x))))).a;
    return 65380u > arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-global1.x, 0i), global1.x, ~2147483647i | _wgslsmith_mod_i32(-2147483647i, global1.x), _wgslsmith_div_i32(_wgslsmith_add_i32(global1.x, 1437i), global1.x)), abs(firstTrailingBit(vec4<i32>(global1.x, global1.x, global1.x, -1i)))), ~1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1253f, _wgslsmith_f_op_f32(select(-265f, 360f, false)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(301f, -1114f))))), vec2<u32>(101879u, ~u_input.a.x));
    var var_1 = Struct_2(!(all(vec3<bool>(true, true, true)) && (min(2147483647i, 12135i) == (global1.x ^ -1i))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-939f, -297f, 1000f)) * vec3<f32>(-1808f, 1865f, -772f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1614f, -294f, 412f) - vec3<f32>(2350f, -971f, 1455f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-226f, 518f, -1497f))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<f32>(-643f, 1227f, var_2.x), var_1.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, -1106f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, var_2.x, -572f)))))))));
    var_0 = var_1.a;
    let var_3 = var_1.a;
    var var_4 = Struct_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), 43513i);
    let x = u_input.a;
    s_output = StorageBuffer(-max(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -2147483647i, -2147483647i, global1.x), vec4<i32>(2147483647i, 1i, var_4.b, 13386i)), 62814i, select(var_4.b, -1i, var_4.a.x), countOneBits(var_4.b)), vec4<i32>(_wgslsmith_sub_i32(var_4.b, 22900i), -40105i, 1i, global1.x << (u_input.a.x % 32u))), u_input.a.wzy, u_input.a.x, u_input.a.wy);
}

