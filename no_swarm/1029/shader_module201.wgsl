struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(44121u, Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(-325f, -142f, 2016f), 870f), vec2<bool>(false, false), true);

var<private> global1: Struct_2;

var<private> global2: array<f32, 12>;

var<private> global3: array<Struct_2, 12>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: f32) -> vec3<f32> {
    global3 = array<Struct_2, 12>();
    let var_0 = select(select(!(!(!arg_0.b.a.zzw)), global0.b.a.zww, any(global0.b.a.xy)), select(global1.b.a.zyy, global1.b.a.zwy, any(global1.b.a.wxw)), select(select(vec3<bool>(!arg_0.d, !arg_0.c.x, false), !select(global1.b.a.yyx, vec3<bool>(global1.b.a.x, arg_0.c.x, true), arg_0.d), vec3<bool>(true, true, true)), !arg_0.b.a.zyw, !(!(!global1.b.a.zxx))));
    var var_1 = select(!select(select(vec2<bool>(true, true), !vec2<bool>(var_0.x, global1.c.x), var_0.x && arg_0.c.x), !global0.c, global0.d), global1.b.a.xy, global1.b.a.xw);
    var var_2 = arg_0;
    var_2 = global3[_wgslsmith_index_u32(firstTrailingBit(global1.a), 12u)];
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(831f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~arg_1, 12u)]) + _wgslsmith_f_op_f32(max(-1000f, -271f))) + 1000f), arg_0.b.c);
}

fn func_2() -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(~0u, 12u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(global3[_wgslsmith_index_u32(min(var_0.a, global1.a), 12u)], ~1u, ~var_0.a, global2[_wgslsmith_index_u32(min(90452u, 0u), 12u)]))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-317f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.b.x * -780f) + _wgslsmith_f_op_f32(-global1.b.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -678f), _wgslsmith_f_op_f32(f32(-1f) * -594f))), 917f)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(-477f)), global1.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1.x, 1069f, true)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-683f)))) * _wgslsmith_f_op_f32(abs(global1.b.c)))), global0.b.c);
    var var_3 = global1.b.a;
    let var_4 = select(!global0.b.a, select(!select(select(global1.b.a, vec4<bool>(true, true, true, global0.b.a.x), global0.b.a), vec4<bool>(false, true, global0.d, var_0.b.a.x), !global1.b.a), select(vec4<bool>(global0.c.x, var_3.x, true, !global0.d), !vec4<bool>(var_3.x, global0.c.x, var_3.x, true), var_0.b.a), var_0.b.a), !var_0.b.a.x);
    return global1.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> i32 {
    global2 = array<f32, 12>();
    global1 = global3[_wgslsmith_index_u32(reverseBits(countOneBits(~7536u)), 12u)];
    global0 = Struct_2(1u, Struct_1(global0.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.b.b))) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.b.x, global0.b.c, global1.b.c), vec3<f32>(arg_2, global1.b.c, global2[_wgslsmith_index_u32(global1.a, 12u)]))), 1470f), vec2<bool>(true, true), false);
    let var_0 = Struct_2(0u, global1.b, arg_0.wz, !arg_1.a.x);
    var var_1 = arg_2;
    return ~_wgslsmith_clamp_i32(arg_3.x, _wgslsmith_div_i32(u_input.a.x, max(arg_3.x, 0i ^ arg_3.x)), firstLeadingBit(arg_3.x));
}

fn func_5(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(~4294967295u, 12u)];
    var var_1 = Struct_2(var_0.a, var_0.b, vec2<bool>(false, global0.c.x), !(global2[_wgslsmith_index_u32(global1.a, 12u)] >= var_0.b.c));
    var var_2 = abs(~_wgslsmith_mod_vec4_u32(firstTrailingBit(~vec4<u32>(var_1.a, 1u, var_1.a, 76127u)), ~vec4<u32>(4294967295u, 1u, 0u, 4294967295u)));
    global1 = global3[_wgslsmith_index_u32(abs(~4294967295u), 12u)];
    let var_3 = 53000i;
    return func_2();
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_2(4452u, global0.b, vec2<bool>(true, !global1.c.x), true);
    let var_1 = _wgslsmith_f_op_f32(646f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_1.b.x)))));
    let var_2 = !(!func_2().a.zx);
    var var_3 = func_5(~vec3<i32>(u_input.a.x, -u_input.a.x, abs(-1i)) & u_input.a);
    var var_4 = global1.b;
    return Struct_2(3992u << (min(global1.a, var_0.a & select(17144u, global0.a, var_0.b.a.x)) % 32u), func_5(u_input.a), !var_2, (7673u << (global0.a % 32u)) == _wgslsmith_dot_vec2_u32(select(~vec2<u32>(1u, global0.a), ~vec2<u32>(global0.a, 76793u), vec2<bool>(var_0.b.a.x, true)), ~(~vec2<u32>(0u, 1u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> Struct_1 {
    global1 = func_6(func_5(vec3<i32>(2147483647i, func_4(!vec4<bool>(true, global1.c.x, global1.c.x, false), func_2(), _wgslsmith_f_op_f32(-2544f + global1.b.c), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 65683i, arg_0.x, 0i), vec4<i32>(arg_0.x, -26218i, -12144i, 0i))), 2147483647i)), Struct_1(!(!global0.b.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1263f, -567f, 600f) - global1.b.b))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.c, -454f, -777f))))), global1.b.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-553f, global1.b.c, 1434f, -2873f), vec4<f32>(-868f, global2[_wgslsmith_index_u32(33919u, 12u)], 1018f, -618f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.b.b.x, -478f, -1287f, global1.b.c))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-430f, global2[_wgslsmith_index_u32(arg_1, 12u)], 467f, global1.b.c)))), _wgslsmith_f_op_f32(round(898f)));
    let var_0 = global1.b;
    var var_1 = !var_0.a.xz;
    let var_2 = vec3<i32>(~u_input.a.x, 44950i ^ (u_input.a.x >> (~firstTrailingBit(global1.a) % 32u)), u_input.a.x);
    var var_3 = vec4<i32>(var_2.x, var_2.x, arg_0.x, 2147483647i);
    return func_6(func_2(), global1.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1293f, global2[_wgslsmith_index_u32(21304u, 12u)], global0.b.c, -1546f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1861f, 1778f, global2[_wgslsmith_index_u32(arg_1, 12u)], 847f) + vec4<f32>(-448f, -755f, global1.b.c, global0.b.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(global3[_wgslsmith_index_u32(global0.a, 12u)], 1u, 87795u, var_0.b.x)).x - var_0.b.x), 373f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-530f))), _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(global0.b.b.x + global0.b.b.x))))), _wgslsmith_div_f32(global1.b.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~4294967295u, 12u)] + _wgslsmith_f_op_f32(-global0.b.c)), _wgslsmith_f_op_f32(-global1.b.c))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = global1.b.b.zx;
    global1 = Struct_2(global1.a, func_1(u_input.a, firstLeadingBit(_wgslsmith_mod_u32(0u, 78679u)) & ~global0.a), vec2<bool>(false, (!var_0 | true) | global0.c.x), func_6(func_6(global1.b, Struct_1(!global1.b.a, _wgslsmith_f_op_vec3_f32(-global0.b.b), _wgslsmith_f_op_f32(ceil(-591f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(757f, 1081f, global1.b.c, 782f)))), -778f).b, global0.b, vec4<f32>(_wgslsmith_f_op_f32(func_2().b.x - func_6(global1.b, Struct_1(vec4<bool>(false, global1.d, global1.d, true), global0.b.b, global1.b.c), vec4<f32>(global2[_wgslsmith_index_u32(1u, 12u)], global1.b.c, 545f, var_1.x), global0.b.b.x).b.b.x), var_1.x, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_f_op_f32(floor(969f)), false)), _wgslsmith_div_f32(-1942f, -701f)), -1029f).d);
    global0 = func_6(global1.b, global0.b, vec4<f32>(-272f, global1.b.c, -559f, 163f), _wgslsmith_f_op_f32(global1.b.c - 124f));
    var var_2 = Struct_2(_wgslsmith_div_u32((global0.a << (~global0.a % 32u)) & min(68390u, global0.a), func_6(global1.b, func_2(), vec4<f32>(global1.b.b.x, _wgslsmith_f_op_f32(-303f - -612f), global1.b.b.x, _wgslsmith_f_op_f32(-global1.b.c)), global0.b.c).a), Struct_1(!func_5(select(u_input.a, u_input.a, global0.b.a.x)).a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.b.x), _wgslsmith_f_op_f32(-global0.b.b.x), _wgslsmith_f_op_f32(round(global1.b.b.x))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 255f, global1.b.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(238f - -450f), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.a, 1u), 12u)])))), vec2<bool>(global0.d, false), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_3(func_6(func_6(global1.b, Struct_1(vec4<bool>(global1.d, true, true, true), global0.b.b, 167f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.c, global0.b.c, -1943f, global2[_wgslsmith_index_u32(global1.a, 12u)]) + vec4<f32>(1400f, 169f, -189f, var_1.x)), 1021f).b, func_6(global0.b, func_5(vec3<i32>(1i, -36010i, 21889i)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(508f, -1587f, -579f, -909f))), global0.b.c).b, vec4<f32>(_wgslsmith_f_op_f32(1292f - -2902f), global1.b.c, func_1(u_input.a, 19532u).c, _wgslsmith_f_op_f32(abs(global1.b.b.x))), _wgslsmith_f_op_f32(137f * var_1.x)), _wgslsmith_sub_u32(~global1.a, 4294967295u), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.a), vec2<u32>(14163u, global1.a)) ^ max(47506u, var_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.c), _wgslsmith_div_f32(-2238f, _wgslsmith_f_op_f32(var_1.x + global0.b.c))))).x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1368f, 1773f)))), u_input.a);
}

