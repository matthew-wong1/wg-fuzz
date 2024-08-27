struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_3,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
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

var<private> global0: Struct_1 = Struct_1(-192f, vec4<i32>(0i, 0i, -27628i, i32(-2147483648)), vec3<i32>(2147483647i, 7433i, -29749i), vec4<f32>(-204f, -951f, 117f, 1040f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: i32, arg_3: Struct_5) -> i32 {
    global0 = arg_3.b;
    var var_0 = arg_3.a;
    var var_1 = arg_3.e | any(select(!(!vec3<bool>(true, arg_3.e, true)), !select(vec3<bool>(arg_3.e, false, arg_3.e), vec3<bool>(arg_0.x, arg_0.x, false), arg_3.e), select(!vec3<bool>(arg_3.e, arg_0.x, arg_3.e), select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_3.e, arg_3.e, arg_0.x), vec3<bool>(arg_3.e, false, arg_3.e)), any(arg_0))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x + -643f))))));
    var var_2 = select(-vec2<i32>(arg_2, u_input.b), global0.c.yy, any(!(!vec4<bool>(false, arg_0.x, arg_0.x, arg_3.e))) | (_wgslsmith_dot_vec2_u32(arg_3.c.wx, u_input.e) > _wgslsmith_mod_u32(arg_3.c.x, ~4058u)));
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec3_i32(arg_3.b.c, reverseBits(vec3<i32>(arg_3.d.x, 2147483647i, arg_3.d.x)))), reverseBits(~firstLeadingBit(2147483647i))), u_input.b);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>) -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))), vec4<i32>(-33411i, u_input.b, arg_1.x, ~(-23079i)), -(vec3<i32>(arg_1.x, func_3(vec2<bool>(false, true), global0.a, arg_1.x, Struct_5(Struct_2(global0.d.x), Struct_1(-1186f, vec4<i32>(-9470i, 1i, global0.c.x, u_input.b), global0.c, global0.d), vec4<u32>(62737u, 5675u, u_input.a, 29793u), global0.b.zzz, false)), _wgslsmith_add_i32(arg_1.x, -1i)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 0u, 51699u) | vec3<u32>(0u, 151u, u_input.d.x), vec3<u32>(4294967295u, 0u, u_input.a)) % vec3<u32>(32u))), vec4<f32>(223f, _wgslsmith_f_op_f32(688f + _wgslsmith_f_op_f32(abs(777f))), 1466f, 931f));
    global0 = Struct_1(global0.a, ~vec4<i32>(_wgslsmith_add_i32(arg_0.x, ~2147483647i), reverseBits(global0.b.x), 0i, arg_1.x & (arg_1.x >> (10837u % 32u))), arg_0.zxw, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global0.d)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d)), vec4<f32>(_wgslsmith_f_op_f32(max(global0.d.x, global0.a)), -519f, _wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_f_op_f32(global0.d.x - global0.d.x)))));
    var var_0 = select(vec4<bool>(true, _wgslsmith_sub_u32(0u, ~u_input.d.x) > u_input.a, true, true), select(vec4<bool>(all(vec3<bool>(false, true, true)) && (u_input.c > u_input.c), all(vec4<bool>(false, false, false, true)) || true, false, false), vec4<bool>(true, all(vec2<bool>(false, false)), any(vec4<bool>(false, false, false, false)), true), false), all(vec4<bool>(true, true, true, true)) || true);
    var_0 = vec4<bool>(select(true, !var_0.x, true), !(!(!(!var_0.x))), all(!var_0.yzw), select(var_0.x, var_0.x, 3090i < select(0i, -48297i, false != var_0.x)));
    let var_1 = true;
    return ~countOneBits(_wgslsmith_clamp_u32(max(select(u_input.c, u_input.d.x, false), u_input.a), _wgslsmith_div_u32(~0u, countOneBits(30623u)), _wgslsmith_mult_u32(u_input.c, 28857u) & ~18097u));
}

fn func_1() -> i32 {
    let var_0 = -36599i;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(341f, global0.d.x))), global0.b >> (select(~(~vec4<u32>(0u, 22702u, 4294967295u, u_input.e.x)), vec4<u32>(1u, u_input.a >> (u_input.c % 32u), func_2(vec4<i32>(global0.b.x, 1i, 12542i, 2147483647i), vec2<i32>(u_input.b, 0i)), firstTrailingBit(u_input.d.x)), true) % vec4<u32>(32u)), ~min(reverseBits(global0.c) ^ _wgslsmith_sub_vec3_i32(global0.c, global0.b.xyz), global0.b.zyy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, 777f, global0.a, global0.a) - vec4<f32>(1776f, global0.a, 414f, global0.d.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.d.x, -882f, global0.a, -1435f), global0.d)))));
    var var_1 = _wgslsmith_mod_vec4_i32(firstTrailingBit(global0.b), ~(~vec4<i32>(64i, -u_input.b, _wgslsmith_mod_i32(global0.b.x, -23200i), -2147483647i)));
    var var_2 = vec3<u32>(16866u, u_input.e.x, 45150u);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2947f, global0.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-970f)))))));
    return -24573i;
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = select(!vec2<bool>(true, true || any(vec4<bool>(true, false, true, true))), vec2<bool>(_wgslsmith_div_u32(_wgslsmith_add_u32(26936u, u_input.e.x), u_input.e.x) >= _wgslsmith_mod_u32(max(u_input.e.x, 1u), ~73778u), true), vec2<bool>(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global0.a)))) == global0.d.x));
    var var_1 = Struct_5(Struct_2(1000f), Struct_1(_wgslsmith_f_op_f32(-356f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-102f * 919f))), _wgslsmith_div_vec4_i32(countOneBits(global0.b), abs(global0.b)) ^ vec4<i32>(_wgslsmith_clamp_i32(u_input.b, 45058i, -2222i), global0.c.x, 11557i, -global0.c.x), ~max(global0.c, select(global0.b.zwx, vec3<i32>(22627i, 2147483647i, -77031i), var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, -323f, -621f, 410f)) - _wgslsmith_f_op_vec4_f32(-global0.d)))), ~(~vec4<u32>(1u, 1u, 1u, 1u) ^ select(~vec4<u32>(u_input.c, 63476u, 114152u, 1u), ~vec4<u32>(0u, 60065u, 55492u, 16918u), select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(true, var_0.x, false, var_0.x), true))), vec3<i32>(u_input.b, _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(33941i, global0.c.x, -13855i, 22947i), vec4<i32>(-1i, 16435i, 2147483647i, 0i), global0.b), vec4<i32>(arg_0.x, -arg_0.x, -13380i, 1i)), arg_0.x), true);
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1110f), global0.b, _wgslsmith_div_vec3_i32(var_1.d, ~countOneBits(arg_0)) ^ firstTrailingBit(vec3<i32>(arg_0.x, u_input.b, global0.c.x) << (vec3<u32>(u_input.a, var_1.c.x, var_1.c.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(var_1.b.d, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(var_1.b.d, vec4<f32>(1028f, var_1.a.a, -989f, var_1.a.a), vec4<bool>(var_0.x, false, true, var_1.e))), vec4<f32>(var_1.b.a, var_1.b.a, 827f, var_1.b.d.x))), vec4<bool>(global0.b.x > arg_0.x, true, var_0.x, true))), global0.d)));
    let var_2 = reverseBits(~vec4<u32>(u_input.e.x | 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(83083u, 1u, var_1.c.x), var_1.c.yxz), 1u, abs(var_1.c.x) << (39506u % 32u)));
    var_1 = Struct_5(Struct_2(_wgslsmith_f_op_f32(var_1.a.a * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(201f * global0.d.x))))), var_1.b, vec4<u32>(u_input.d.x, func_2(-vec4<i32>(var_1.b.c.x, -1i, 161i, -56010i) & (vec4<i32>(global0.b.x, -2147483647i, u_input.b, -60841i) << (vec4<u32>(u_input.a, 2786u, var_2.x, var_2.x) % vec4<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec2_i32(global0.b.zz, vec2<i32>(var_1.b.c.x, global0.b.x)), -var_1.d.x)), 4294967295u, 1u), abs(~min(var_1.b.c, -vec3<i32>(2147483647i, 1i, arg_0.x))), select(var_1.e, var_1.e, true));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(vec3<i32>(~(-108i), func_1(), -func_1()));
    let var_0 = u_input.e.x;
    var var_1 = -32362i;
    let var_2 = reverseBits(u_input.e.x << (_wgslsmith_sub_u32(4294967295u, var_0) % 32u));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global0.a)))));
    global0 = func_4(global0.b.zzy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - global0.d.x), _wgslsmith_f_op_f32(-global0.d.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.a - _wgslsmith_f_op_f32(-global0.d.x)))));
}

