struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, vec4<bool>(true, true, true, true));

var<private> global1: array<vec2<f32>, 25>;

var<private> global2: Struct_4 = Struct_4(true, vec2<i32>(-12807i, -26272i), vec3<f32>(-1943f, -1402f, 776f), 940f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(62771u, abs(_wgslsmith_mult_u32(17099u, arg_0.b))), firstTrailingBit(countOneBits(vec2<u32>(22706u, 0u)) | vec2<u32>(arg_0.b, 0u))), ~u_input.c.x);
    global2 = Struct_4(any(global0.b.xxz), vec2<i32>(-6063i, 9792i), vec3<f32>(_wgslsmith_f_op_f32(1029f + _wgslsmith_f_op_f32(f32(-1f) * -246f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.c.x - global2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.d)))), 212f), -1446f);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1145f)), 1756f, global2.d, _wgslsmith_f_op_f32(-global2.c.x)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1639f, -1322f, 1000f, global2.c.x)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(809f, 106f, global2.c.x, 764f), vec4<f32>(1076f, global2.d, -1158f, global2.d)))))))));
    var var_2 = global0.b.yyw;
    var var_3 = -u_input.e;
    return 1041f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = select(u_input.e, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~(-21389i), min(2147483647i, 2147483647i)), -max(u_input.b.x, -8309i), global2.b.x), u_input.b), (_wgslsmith_dot_vec2_u32(u_input.c, u_input.a.zw) != arg_2.b) && true);
    var var_1 = min(arg_2.a, u_input.b.yy);
    var var_2 = _wgslsmith_mult_vec2_u32(u_input.c, _wgslsmith_mod_vec2_u32(u_input.c, abs(u_input.a.xz)));
    global1 = array<vec2<f32>, 25>();
    global1 = array<vec2<f32>, 25>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3, global2.d)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_4(true, global2.b, _wgslsmith_f_op_vec3_f32(-global2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.c.x, 538f))) + 1663f) - _wgslsmith_f_op_f32(global2.d - -360f)));
    var_0 = Struct_4(false, (_wgslsmith_clamp_vec2_i32(global2.b, _wgslsmith_mod_vec2_i32(vec2<i32>(-34002i, 14776i), u_input.b.yz), select(vec2<i32>(global2.b.x, var_0.b.x), vec2<i32>(global2.b.x, 1i), global0.b.x)) >> (vec2<u32>(1u, firstLeadingBit(u_input.c.x)) % vec2<u32>(32u))) >> (u_input.c % vec2<u32>(32u)), vec3<f32>(-2428f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(Struct_2(global0.b.zzx), Struct_2(vec3<bool>(false, true, global0.b.x)), Struct_1(vec2<i32>(arg_0, 64875i), u_input.d), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(-1i, arg_0), u_input.c.x), Struct_1(vec2<i32>(-1i, 41759i), u_input.d), u_input.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1052f, var_0.c.x)), _wgslsmith_f_op_f32(var_0.c.x + global2.d))))), _wgslsmith_f_op_f32(sign(-1989f))), _wgslsmith_f_op_f32(f32(-1f) * -487f));
    global2 = Struct_4(false, vec2<i32>(2147483647i, ~(-6088i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(var_0.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global2.c)))), select(vec3<bool>(true, !global2.a, true), select(global0.b.wzw, select(global0.b.wzx, vec3<bool>(global0.b.x, false, false), true), global0.b.yww), global0.b.zwx))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c.x + -360f))));
    var var_1 = global0.a;
    var var_2 = Struct_4(!global2.a, abs(global2.b), _wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global2.d, var_0.d) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, global2.d, 484f))))), 1109f);
    return Struct_2(select(select(select(global0.b.xww, select(vec3<bool>(global2.a, var_2.a, false), vec3<bool>(false, global0.a, false), var_0.a), global0.b.zzz), global0.b.wyz, any(global0.b)), !select(!vec3<bool>(true, global0.b.x, global0.b.x), select(vec3<bool>(true, var_2.a, var_2.a), vec3<bool>(false, false, global0.a), global0.b.xww), true), (all(vec3<bool>(false, var_2.a, false)) | all(vec4<bool>(false, true, var_0.a, global0.b.x))) && all(vec3<bool>(false, var_0.a, true))));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = all(!(!global0.b.zxw));
    var var_1 = Struct_2(global0.b.wyz);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-765f * global2.d)))) > 937f, global0.b);
    var var_3 = func_2(2147483647i);
    global2 = Struct_4(func_2(849i).a.x, vec2<i32>(1i, (-27296i ^ u_input.b.x) ^ -2673i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.c) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1367f, 400f, global2.c.x))) + global2.c))), 1f);
    return func_2(0i).a.x;
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    global2 = Struct_4(true, -(global2.b << (~u_input.c % vec2<u32>(32u))), _wgslsmith_div_vec3_f32(vec3<f32>(global2.c.x, -865f, arg_1), _wgslsmith_f_op_vec3_f32(select(global2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 626f, 1552f) + vec3<f32>(arg_1, 1300f, -1000f)) * _wgslsmith_f_op_vec3_f32(global2.c * global2.c)), global0.b.zwz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))), _wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(f32(-1f) * -1889f)), false)) - 1144f));
    let var_0 = Struct_3(global2.a, select(select(global0.b, arg_0.b, select(global0.b, global0.b, !global0.b.x)), !global0.b, global2.a | all(select(arg_0.b.zw, vec2<bool>(false, false), vec2<bool>(arg_0.a, global2.a)))));
    var var_1 = u_input.d;
    global2 = Struct_4(-183f == global2.d, vec2<i32>(select(i32(-1i) * -15498i, _wgslsmith_sub_i32(global2.b.x, global2.b.x) >> (abs(u_input.c.x) % 32u), var_0.b.x || !var_0.b.x), _wgslsmith_dot_vec4_i32(-select(vec4<i32>(2147483647i, global2.b.x, 66730i, -20026i), vec4<i32>(-2147483647i, u_input.b.x, 13369i, u_input.e), false), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, u_input.b.x, u_input.e, -50072i), vec4<i32>(0i, global2.b.x, 0i, global2.b.x), vec4<i32>(-1i, 15540i, -12826i, u_input.e)))), global2.c, global2.d);
    let var_2 = select(3458i, _wgslsmith_dot_vec2_i32(global2.b, vec2<i32>(~(global2.b.x | u_input.e), _wgslsmith_clamp_i32(reverseBits(14113i), -global2.b.x, ~u_input.b.x))), true);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global2.b.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -519f), _wgslsmith_f_op_f32(-global2.d)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-388f, -370f))), vec2<f32>(global2.d, _wgslsmith_f_op_f32(global2.d - global2.d)), !(!(global2.c.x > global2.d)))));
    var var_2 = vec2<bool>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(0u, 1u) ^ vec2<u32>(u_input.a.x, 3284u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(79486u, u_input.d), ~vec2<u32>(u_input.c.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.d))) > ~_wgslsmith_add_u32(u_input.c.x & 1u, _wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.c)), false && (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.c.x - -1179f))) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global2.c.x))))));
    let var_3 = Struct_2(select(vec3<bool>(global2.a, false, all(vec3<bool>(true, var_2.x, global0.b.x)) | var_2.x), global0.b.zxz, true));
    var var_4 = func_5(Struct_3(func_1(_wgslsmith_f_op_f32(129f - var_1.x)), global0.b), var_1.x);
    global2 = Struct_4(var_2.x, global2.b >> (~max(u_input.a.xy, abs(vec2<u32>(38488u, 32710u))) % vec2<u32>(32u)), global2.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1076f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -782f)))));
    let var_5 = u_input.b.yy;
    var_2 = func_2(_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(2091i, var_0, var_5.x, 1i)), vec4<i32>(~u_input.b.x, 2147483647i, u_input.e, ~(-2147483647i)) << ((vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, 6996u) << (vec4<u32>(1u, u_input.a.x, 102422u, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)))).a.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(565f * _wgslsmith_f_op_f32(-359f - _wgslsmith_f_op_f32(step(153f, 1f)))), ~_wgslsmith_add_vec4_u32(firstLeadingBit(~vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u)), vec4<u32>(_wgslsmith_mod_u32(u_input.d, u_input.d), u_input.a.x, _wgslsmith_add_u32(4294967295u, u_input.d), u_input.d)), abs(-4980i), var_0, u_input.d);
}

