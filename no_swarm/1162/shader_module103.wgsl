struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(376f, vec3<f32>(376f, 831f, -920f), Struct_1(vec4<u32>(0u, 0u, 1u, 42438u), vec3<bool>(true, false, true), true, 1101f, 7995u), Struct_1(vec4<u32>(4294967295u, 0u, 58366u, 19303u), vec3<bool>(false, true, true), false, -572f, 0u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1134f + _wgslsmith_f_op_f32(arg_0.d - global0.c.d)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global0.a, -348f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)))), Struct_1(~global0.c.a, global0.c.b, true, arg_0.d, _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(u_input.b, 1u))), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(57996u, _wgslsmith_mult_u32(u_input.b, global0.c.a.x), max(u_input.a, u_input.b), ~4192u), ~vec4<u32>(u_input.b, 0u, 1u, 4294967295u)), global0.d.b, !any(vec2<bool>(true, global0.c.b.x)) || true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.d, -142f) * _wgslsmith_f_op_f32(-arg_0.d)), -185f), ~global0.c.e));
    var var_0 = Struct_1(_wgslsmith_clamp_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(46296u, 1u, global0.c.a.x, 3112u), firstLeadingBit(global0.c.a), arg_0.a)), firstLeadingBit(vec4<u32>(global0.c.e, select(global0.c.a.x, arg_0.a.x, global0.d.c), 0u & global0.d.a.x, 29211u)), vec4<u32>(~(u_input.b & arg_0.a.x), ~u_input.b, ~36314u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1565u, u_input.b, u_input.b), vec3<u32>(4294967295u, 17920u, 36780u)), 23939u ^ arg_0.a.x))), !select(!(!vec3<bool>(global0.c.b.x, arg_0.b.x, arg_0.b.x)), !(!global0.d.b), select(!arg_0.b, vec3<bool>(false, global0.d.b.x, arg_0.b.x), select(arg_0.b, arg_0.b, true))), _wgslsmith_f_op_f32(-arg_0.d) <= global0.d.d, _wgslsmith_f_op_f32(step(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 468f))))), _wgslsmith_clamp_u32(countOneBits(_wgslsmith_mod_u32(global0.c.e, firstTrailingBit(arg_0.a.x))), _wgslsmith_mod_u32(arg_0.a.x, 1u), _wgslsmith_dot_vec3_u32(abs(arg_0.a.yyz), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.e, arg_0.a.x, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.b)))));
    global0 = Struct_3(_wgslsmith_f_op_f32(189f - 1281f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(global0.b)), _wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, 1000f, 1087f) + global0.b)))), global0.c, Struct_1(~(abs(vec4<u32>(arg_0.a.x, arg_0.e, u_input.b, 4294967295u)) & _wgslsmith_add_vec4_u32(global0.c.a, global0.c.a)), var_0.b, false, arg_0.d, ~1u));
    var var_1 = ~(~(81459u & abs(_wgslsmith_mod_u32(arg_0.a.x, 4294967295u))));
    var_0 = Struct_1(~var_0.a, global0.d.b, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1136f + var_0.d))), -1127f, global0.c.c))), u_input.a);
    return any(!(!(!vec2<bool>(arg_0.c, false))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: f32) -> vec3<f32> {
    var var_0 = arg_1.a.c.a.wzy ^ ~countOneBits(arg_2.b.a.xwy);
    var_0 = vec3<u32>(14272u, ~(~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_1.b.b.e, 1u), vec3<u32>(56269u, arg_1.a.d.e, 46888u)) | global0.d.e)), arg_1.a.d.e);
    var var_1 = global0.d.b.zy;
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(830f, arg_2.b.d, arg_0.x))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(1074f)), arg_1.a.b.x)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.a))), global0.b, Struct_1(arg_3.c.a, arg_3.d.b, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), abs(vec2<i32>(59807i, 0i))) > _wgslsmith_clamp_i32(1i, 1i, -57046i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1112f)) - 238f))), arg_1.x), arg_3.c);
    var var_0 = global0.c.b.x;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1060f), _wgslsmith_f_op_vec3_f32(func_4(vec3<f32>(-1000f, _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(arg_3.b.x - -131f)), 178f), Struct_4(arg_3, Struct_2(_wgslsmith_f_op_f32(-global0.d.d), arg_3.c), ~firstTrailingBit(-4099i), arg_3.b.zz), Struct_2(389f, Struct_1(~arg_2, arg_3.c.b, func_3(global0.d), _wgslsmith_f_op_f32(floor(arg_3.c.d)), 51257u)), 1000f)), global0.d, arg_3.c);
    var var_2 = Struct_1(((arg_3.c.a << (~vec4<u32>(5349u, 4294967295u, var_1.d.e, u_input.a) % vec4<u32>(32u))) ^ vec4<u32>(_wgslsmith_add_u32(0u, 23767u), 4294967295u, arg_0.x, ~108790u)) ^ reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(2320u, 4294967295u, global0.c.e, 16196u), reverseBits(arg_2))), select(vec3<bool>(var_1.c.c, arg_3.d.c, var_1.c.c), var_1.c.b, (!arg_3.d.b.x & (false | arg_3.c.c)) & (global0.a <= -199f)), arg_3.c.c, global0.d.d, _wgslsmith_div_u32(global0.c.a.x, 1u));
    var var_3 = global0.d.b.zz;
    return arg_3;
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> f32 {
    var var_0 = firstLeadingBit(-_wgslsmith_add_i32(firstLeadingBit(0i), -2147483647i));
    let var_1 = firstLeadingBit(min(firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(21316i, 31373i), vec2<i32>(-36085i, 1i)), 2147483647i, i32(-1i) * -2147483647i)), 60858i));
    global0 = func_2(global0.c.a.zx, global0.c.a.yy, global0.d.a, arg_0);
    var var_2 = _wgslsmith_div_i32(countOneBits(_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(-57468i, -1i)), firstTrailingBit(firstLeadingBit(-1i)))), var_1);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(230f, 1324f)))), func_2(vec2<u32>(global0.c.a.x, min(_wgslsmith_sub_u32(1u, arg_1), _wgslsmith_mod_u32(u_input.b, 43139u))), ~global0.c.a.zx, reverseBits(select(arg_0.d.a & global0.c.a, ~vec4<u32>(u_input.a, 1u, 13921u, 4294967295u), true)), Struct_3(_wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_div_f32(-313f, -968f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.d.d, global0.c.d, -262f))), global0.c.b)), arg_0.d, Struct_1(global0.d.a, func_2(vec2<u32>(global0.c.e, arg_1), global0.c.a.zx, vec4<u32>(47743u, 0u, 41630u, 4294967295u), arg_0).d.b, true, 299f, 1u))).d);
    return _wgslsmith_f_op_f32(-arg_0.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(global0.d.d * _wgslsmith_f_op_f32(func_1(Struct_3(global0.d.d, vec3<f32>(-1450f, 348f, global0.d.d), global0.c, global0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(19761u, global0.d.a.x, u_input.a), vec3<u32>(0u, global0.d.a.x, global0.d.a.x))))), _wgslsmith_div_f32(func_2(~global0.d.a.yz, vec2<u32>(0u, u_input.b), vec4<u32>(global0.d.a.x, u_input.a, global0.c.e, u_input.a), func_2(global0.d.a.zz, global0.d.a.xx, global0.c.a, Struct_3(694f, vec3<f32>(586f, 1309f, 1485f), global0.d, global0.c))).c.d, global0.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(708f + -769f))))))));
    let var_1 = all(vec2<bool>(true, false));
    var var_2 = select(select(!(!(!vec4<bool>(true, var_1, false, true))), vec4<bool>(global0.c.c, var_1 || false, !(!var_1), var_1), global0.d.b.x), vec4<bool>(true, func_2(~global0.d.a.wy & ~vec2<u32>(u_input.a, 4294967295u), global0.d.a.xx, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(75883u, 0u, global0.d.a.x, global0.d.e), global0.d.a), ~global0.d.a), func_2(select(global0.d.a.xz, vec2<u32>(4294967295u, global0.d.e), vec2<bool>(global0.c.c, global0.d.b.x)), _wgslsmith_mod_vec2_u32(global0.c.a.yx, vec2<u32>(0u, 0u)), vec4<u32>(u_input.b, global0.c.e, 0u, u_input.a), Struct_3(global0.c.d, vec3<f32>(-1157f, global0.b.x, global0.c.d), global0.d, global0.c))).c.c, !var_1, !(firstTrailingBit(-1i) < -13063i)), !(!(!global0.c.c)));
    let var_3 = Struct_1(vec4<u32>(1u | ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(86708u, 48502u)), 3348u, global0.d.e, abs(_wgslsmith_div_u32(45718u, _wgslsmith_sub_u32(43189u, global0.c.a.x)))), !vec3<bool>(!all(global0.c.b.xz), any(vec4<bool>(true, var_1, var_2.x, false)), var_1), all(!global0.d.b.zz), _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(46087u, 4294967295u)), global0.c.a.wx), ~1u));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-337f)) - _wgslsmith_f_op_f32(abs(var_0.x)));
    var var_5 = i32(-1i) * -1i;
    var var_6 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * -1000f), global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec4_u32(var_6.b.a, ~vec4<u32>(43791u, u_input.a, 12631u, 0u)), ~var_6.b.e), 1544i);
}

