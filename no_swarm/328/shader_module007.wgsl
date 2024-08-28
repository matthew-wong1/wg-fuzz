struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(1622u, 46495u, 47822u, 4294967295u, 7786u, 4294967295u, 0u, 0u, 0u);

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<bool>(false, false), false, vec2<u32>(79146u, 4294967295u), false, vec3<u32>(4294967295u, 26019u, 349u)), Struct_1(vec2<bool>(false, false), false, vec2<u32>(60653u, 2128u), true, vec3<u32>(0u, 0u, 23754u)), Struct_1(vec2<bool>(true, true), false, vec2<u32>(16276u, 0u), false, vec3<u32>(29463u, 32932u, 16261u)), Struct_1(vec2<bool>(true, true), false, vec2<u32>(33526u, 18619u), true, vec3<u32>(4131u, 15005u, 31713u)), Struct_1(vec2<bool>(true, true), false, vec2<u32>(0u, 4294967295u), false, vec3<u32>(1u, 53278u, 37450u)));

var<private> global2: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    global1 = array<Struct_1, 5>();
    global2 = Struct_2(global2.a);
    let var_0 = Struct_2(Struct_1(global2.a.a, global2.a.a.x, global2.a.e.yz, !global2.a.a.x, ~min(vec3<u32>(0u, global0[_wgslsmith_index_u32(21993u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)]), vec3<u32>(1u, global0[_wgslsmith_index_u32(0u, 9u)], 30903u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-788f, -1641f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-154f, arg_0) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1997f, arg_0) - vec2<f32>(arg_1, 989f))))) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(-1110f * 1000f))), arg_1, true)), -713f));
    global0 = array<u32, 9>();
    return arg_0;
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    global0 = array<u32, 9>();
    let var_0 = global2.a.e;
    var var_1 = -1000f;
    global1 = array<Struct_1, 5>();
    var var_2 = global2.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_div_f32(123f, -652f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, 1022f), _wgslsmith_f_op_f32(step(827f, 478f))))))) - _wgslsmith_f_op_f32(func_3(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(312f)) + _wgslsmith_f_op_f32(927f - -894f)), -1000f))));
}

fn func_4(arg_0: f32) -> bool {
    let var_0 = abs(global0[_wgslsmith_index_u32(min(firstTrailingBit(~global2.a.c.x), global0[_wgslsmith_index_u32(max(1u, 1u), 9u)]), 9u)]);
    var var_1 = Struct_3(u_input.b, global1[_wgslsmith_index_u32(~4294967295u | select(_wgslsmith_dot_vec2_u32(max(u_input.c.wy, u_input.c.wz), global2.a.e.zz), ~global2.a.c.x, false), 5u)]);
    let var_2 = Struct_1(vec2<bool>(arg_0 >= arg_0, var_1.b.b), global2.a.a.x, max(var_1.b.c, var_1.b.e.xx), true, vec3<u32>(1u, firstTrailingBit(~(var_1.b.c.x << (var_0 % 32u))), ~_wgslsmith_dot_vec4_u32(u_input.c & vec4<u32>(1u, global2.a.e.x, global0[_wgslsmith_index_u32(82711u, 9u)], 108440u), ~u_input.c)));
    let var_3 = vec2<u32>(u_input.c.x, ~reverseBits(_wgslsmith_sub_u32(~u_input.c.x, 82878u)));
    global2 = Struct_2(Struct_1(select(var_2.a, vec2<bool>(false | var_2.a.x, 2147483647i < var_1.a), var_1.b.a), !(global2.a.a.x & true), _wgslsmith_clamp_vec2_u32(~max(global2.a.c, u_input.c.wz), vec2<u32>(57416u, _wgslsmith_sub_u32(36481u, global2.a.c.x)), u_input.c.xx), true, ~vec3<u32>(_wgslsmith_div_u32(1u, global2.a.e.x), ~0u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global2.a.c.x, 9u)], var_1.b.c.x))));
    return var_2.d;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global1 = array<Struct_1, 5>();
    return arg_0;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = ~u_input.c;
    let var_1 = select(global2.a.a, global2.a.a, select(!global2.a.a, vec2<bool>(!all(vec4<bool>(arg_0, false, global2.a.b, false)), false), (u_input.b ^ ~u_input.b) <= countOneBits(-17916i)));
    let var_2 = Struct_3(u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global2.a.e.x, 10773u, u_input.c.x, global2.a.c.x) ^ reverseBits(vec4<u32>(1u, var_0.x, u_input.c.x, u_input.c.x)), firstLeadingBit(u_input.c)), max(~vec4<u32>(1u, 25035u, 49961u, 0u), u_input.c) << (~u_input.c % vec4<u32>(32u))), 5u)]);
    var var_3 = func_5(Struct_1(!global2.a.a, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(126f, 510f)) + _wgslsmith_f_op_f32(func_2(u_input.d.zy)))), _wgslsmith_mult_vec2_u32(~vec2<u32>(34988u, 119841u), u_input.c.yx), select(all(!vec3<bool>(false, false, arg_0)), !(u_input.c.x <= 1u), true), ~var_2.b.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(-769f, -1482f)), -1353f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(191f, -304f))))));
    var var_4 = vec3<i32>(-77917i, 2147483647i, u_input.b);
    return Struct_2(Struct_1(!vec2<bool>(select(true, var_3.d, false), true), var_2.b.b, _wgslsmith_mult_vec2_u32(var_0.ww, ~var_0.yz), _wgslsmith_f_op_f32(-793f + -1474f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<i32>(u_input.b, var_4.x))) * -251f), func_5(global2.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1451f, 107f)), vec2<f32>(1f, 1f), var_1.x))).e));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(all(global2.a.a));
    var var_0 = Struct_3(~u_input.b, global2.a);
    let var_1 = func_1(!global2.a.a.x);
    var var_2 = func_1(!var_1.a.b);
    var var_3 = abs(_wgslsmith_mult_vec2_i32(u_input.d.yx, ~(-select(u_input.d.zz, u_input.d.xz, var_2.a.d))));
    var_3 = vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(max(u_input.d.xz, u_input.d.yx), vec2<i32>(1i, _wgslsmith_clamp_i32(var_3.x, 44896i, 35825i))), u_input.d.yx), -1i);
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1087f, -838f, 977f) * vec3<f32>(-2070f, -165f, 458f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-592f, -1156f, -763f), vec3<f32>(-683f, 1437f, 308f)))))), -(~10692i), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(countOneBits(var_4.a.c.x << (global2.a.c.x % 32u)), (global0[_wgslsmith_index_u32(33258u, 9u)] >> (81966u % 32u)) << (7241u % 32u), _wgslsmith_add_u32(min(1u, u_input.c.x), func_1(global2.a.a.x).a.c.x)), _wgslsmith_mult_u32(~var_4.a.e.x ^ _wgslsmith_mod_u32(0u, var_2.a.c.x), select(func_5(var_0.b, vec2<f32>(-659f, 436f)).c.x, var_1.a.c.x, any(vec2<bool>(false, true)))), 1u), ~(_wgslsmith_add_i32(u_input.d.x, min(-2147483647i, 23838i)) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.d.xy, vec2<i32>(var_3.x, 0i)), ~vec2<i32>(-1i, 24311i))));
}

