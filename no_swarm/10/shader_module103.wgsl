struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(1u, 1u), vec2<u32>(0u, 0u), vec2<u32>(30881u, 1u), vec2<u32>(68660u, 1u), vec2<u32>(1u, 38960u), vec2<u32>(4294967295u, 16700u), vec2<u32>(51567u, 4294967295u), vec2<u32>(39041u, 102980u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<i32> {
    global1 = array<vec2<bool>, 10>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1413f * 1000f) + _wgslsmith_f_op_f32(-200f - -927f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) + _wgslsmith_f_op_f32(-1165f + -150f)), 1f, _wgslsmith_f_op_f32(-1411f * _wgslsmith_f_op_f32(-240f - 1000f)))));
    let var_1 = _wgslsmith_div_u32(60892u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, 0u), reverseBits(global2[_wgslsmith_index_u32(1u, 10u)])), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.d.x) >> (global2[_wgslsmith_index_u32(4294967295u, 10u)] % vec2<u32>(32u)), u_input.d.wz)), select(0u, _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(~1u, 10u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), 10u)]), true)));
    global1 = array<vec2<bool>, 10>();
    global1 = array<vec2<bool>, 10>();
    return ~(-u_input.c.xy);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_2) -> i32 {
    let var_0 = arg_0.b.wxz;
    var var_1 = _wgslsmith_div_f32(-470f, arg_0.d);
    let var_2 = _wgslsmith_mult_u32(~u_input.d.x, ~_wgslsmith_sub_u32(u_input.d.x, (u_input.d.x & 0u) >> (abs(173u) % 32u)));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2036f, arg_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a + 623f))))));
    global2 = array<vec2<u32>, 10>();
    return 11119i;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    global2 = array<vec2<u32>, 10>();
    let var_0 = -295f;
    let var_1 = Struct_3(-25432i, !(!(!vec4<bool>(arg_0, true, arg_0, arg_0))), vec3<i32>(_wgslsmith_div_i32(arg_1.x, arg_1.x), abs(~abs(u_input.b)), max(~u_input.a, func_4(Struct_3(u_input.b, vec4<bool>(false, arg_0, arg_0, true), u_input.c, 2192f, vec2<f32>(646f, arg_2.a)), -12230i, func_3(), arg_2))), _wgslsmith_f_op_f32(round(arg_2.a)), vec2<f32>(424f, 1000f));
    var var_2 = Struct_1(select(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, 39040u), global2[_wgslsmith_index_u32(25296u, 10u)], vec2<u32>(5243u, u_input.d.x)), u_input.d.xx & vec2<u32>(u_input.d.x, 0u), var_1.b.yw), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, 48072u) >> (vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u)), vec2<u32>(u_input.d.x, u_input.d.x)), select(select(vec2<bool>(arg_0, arg_0), global1[_wgslsmith_index_u32(u_input.d.x, 10u)], vec2<bool>(false, true)), select(global1[_wgslsmith_index_u32(u_input.d.x, 10u)], vec2<bool>(arg_0, arg_0), var_1.b.x), !global1[_wgslsmith_index_u32(u_input.d.x, 10u)])) & vec2<u32>(34882u, ~u_input.d.x), var_1.e, var_1.e.x);
    var var_3 = Struct_2(var_0);
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1302f * -881f))), 1184f)));
    global1 = array<vec2<bool>, 10>();
    var_0 = func_2(true, _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.b, arg_1.x), vec4<i32>(-13206i, arg_1.x, 0i, -7035i)), ~max(vec4<i32>(u_input.b, 0i, u_input.a, arg_1.x), vec4<i32>(arg_1.x, -2147483647i, 2147483647i, u_input.b)), -select(vec4<i32>(-73095i, u_input.c.x, -9486i, 0i), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -37568i), true)), vec4<i32>(-u_input.c.x, -48591i, reverseBits(arg_1.x), u_input.a) >> ((_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 4294967295u, 0u, arg_0), u_input.d) & ~u_input.d) % vec4<u32>(32u))), Struct_2(2420f));
    global0 = any(!select(vec2<bool>(arg_0 < 95523u, true), vec2<bool>(true, true), ~arg_0 < _wgslsmith_dot_vec2_u32(u_input.d.xy, global2[_wgslsmith_index_u32(1u, 10u)])));
    let var_1 = select(vec3<bool>(true | (any(vec3<bool>(false, false, true)) != true), arg_1.x != u_input.c.x, 1i != (1i | abs(u_input.a))), vec3<bool>(!select(any(vec3<bool>(true, true, true)), true, u_input.c.x < arg_1.x), !select(true, false, all(vec4<bool>(false, false, false, false))), all(vec4<bool>(true, true, true, true))), !any(select(global1[_wgslsmith_index_u32(arg_0, 10u)], vec2<bool>(true, true), global1[_wgslsmith_index_u32(1u, 10u)])));
    return u_input.d.x;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a + -441f), _wgslsmith_f_op_f32(-arg_1.a)))));
    global1 = array<vec2<bool>, 10>();
    var var_1 = vec4<u32>(arg_0.x << (u_input.d.x % 32u), 1u, 46563u, _wgslsmith_add_u32(~(_wgslsmith_sub_u32(arg_0.x, u_input.d.x) >> ((arg_0.x & 4294967295u) % 32u)), arg_0.x));
    global2 = array<vec2<u32>, 10>();
    var var_2 = ~u_input.d.x;
    return Struct_1(vec2<u32>(firstLeadingBit(1u), 10215u), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.a, -1000f))), -1265f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.d.x, func_1(u_input.d.x, vec3<i32>(-507i, u_input.b, u_input.c.x)) >> (_wgslsmith_clamp_u32(u_input.d.x, 87508u, 0u) % 32u), u_input.d.x, u_input.d.x), reverseBits(vec4<u32>(0u, 53090u, u_input.d.x, u_input.d.x))), func_2(any(vec3<bool>(true, true, true)), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, 1i, 79622i, u_input.a) >> (~vec4<u32>(18655u, u_input.d.x, u_input.d.x, 12183u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.b, -15642i, u_input.a)), vec4<i32>(u_input.b, u_input.c.x, -24566i, u_input.a))), func_2(countOneBits(24942u) < u_input.d.x, ~max(vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a), vec4<i32>(u_input.b, 1i, 44777i, -3219i)), Struct_2(-901f))));
    let var_1 = Struct_1(~(~(~global2[_wgslsmith_index_u32(var_0.a.x, 10u)]) << (var_0.a % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(-941f, var_0.b.x)), vec2<f32>(var_0.c, var_0.b.x)) * var_0.b), _wgslsmith_f_op_vec2_f32(-var_0.b))), 1051f);
    let var_2 = _wgslsmith_f_op_f32(-var_0.c);
    let var_3 = func_5(vec4<u32>(~(~1u), var_0.a.x, var_0.a.x, ~firstTrailingBit(var_0.a.x) >> (~max(40536u, u_input.d.x) % 32u)), func_2(any(global1[_wgslsmith_index_u32((var_1.a.x >> (var_0.a.x % 32u)) >> (~var_1.a.x % 32u), 10u)]), -(firstTrailingBit(vec4<i32>(u_input.a, 2147483647i, -24956i, u_input.c.x)) ^ (vec4<i32>(u_input.a, 2147483647i, -19759i, 5363i) & vec4<i32>(2147483647i, 2147483647i, -88021i, -1i))), Struct_2(var_2))).b;
    var var_4 = select(select(select(vec3<bool>(28177u >= var_1.a.x, all(vec4<bool>(true, false, false, false)), true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, false), true)), select(vec3<bool>(true, any(vec2<bool>(true, true)), all(vec2<bool>(false, true))), vec3<bool>(true, var_3.x <= var_1.b.x, true), true), select(true, true, !(var_3.x == var_0.b.x))), vec3<bool>(true, any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !(!all(vec4<bool>(true, false, true, true)))), -2147483647i >= u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -1626f, var_3.x, var_3.x) * vec4<f32>(-483f, var_1.c, 710f, 779f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -2300f, -1261f, var_3.x) * vec4<f32>(-263f, var_1.b.x, -2026f, var_1.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1282f, -754f, -146f, -552f) - vec4<f32>(var_0.b.x, var_0.c, var_1.b.x, var_0.c)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(378f, 429f, var_3.x, 534f)))), !(!vec4<bool>(var_4.x, true, var_4.x, true)))))), _wgslsmith_mult_vec2_u32(~var_1.a, select(countOneBits(abs(vec2<u32>(38992u, 1u))), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, var_0.a.x), vec2<u32>(var_0.a.x, var_1.a.x), u_input.d.yx), vec2<u32>(0u, 0u)), true)), var_3, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-248f, -1072f) * vec2<f32>(var_3.x, var_3.x)))), vec2<f32>(-873f, var_1.b.x), select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.zww, u_input.d.zyy), 10u)], vec2<bool>(false, any(vec2<bool>(var_4.x, true))), !(!vec2<bool>(var_4.x, var_4.x))))));
}

