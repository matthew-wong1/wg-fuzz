struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec3<bool>(true, true, false), vec2<bool>(true, false), vec2<f32>(-788f, 1156f), true);

var<private> global1: Struct_2 = Struct_2(1621u);

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(39139u, vec3<bool>(true, true, false), vec2<bool>(false, true), vec2<f32>(286f, 212f), true), Struct_1(21159u, vec3<bool>(true, false, false), vec2<bool>(false, false), vec2<f32>(-1076f, 3176f), false), Struct_1(21331u, vec3<bool>(true, false, false), vec2<bool>(false, false), vec2<f32>(-1453f, 209f), true), Struct_1(0u, vec3<bool>(true, false, true), vec2<bool>(false, true), vec2<f32>(-499f, 1265f), false), Struct_1(53360u, vec3<bool>(true, false, false), vec2<bool>(false, false), vec2<f32>(995f, -1893f), false), Struct_1(59274u, vec3<bool>(false, true, false), vec2<bool>(false, false), vec2<f32>(-192f, -203f), true), Struct_1(41565u, vec3<bool>(true, true, true), vec2<bool>(true, false), vec2<f32>(1253f, 1000f), false), Struct_1(33902u, vec3<bool>(true, false, true), vec2<bool>(true, false), vec2<f32>(-2394f, -1653f), true), Struct_1(4294967295u, vec3<bool>(true, true, false), vec2<bool>(false, false), vec2<f32>(163f, -2338f), true), Struct_1(4294967295u, vec3<bool>(true, false, true), vec2<bool>(true, true), vec2<f32>(-3181f, 565f), true), Struct_1(89790u, vec3<bool>(true, true, false), vec2<bool>(false, true), vec2<f32>(-646f, -594f), false), Struct_1(0u, vec3<bool>(false, false, false), vec2<bool>(false, false), vec2<f32>(1030f, 974f), false), Struct_1(777u, vec3<bool>(false, true, true), vec2<bool>(false, false), vec2<f32>(-935f, -593f), false), Struct_1(19582u, vec3<bool>(true, true, true), vec2<bool>(false, false), vec2<f32>(1460f, -280f), true), Struct_1(1u, vec3<bool>(false, true, false), vec2<bool>(true, false), vec2<f32>(758f, -1000f), false), Struct_1(4294967295u, vec3<bool>(false, true, false), vec2<bool>(false, false), vec2<f32>(1130f, -1384f), true), Struct_1(0u, vec3<bool>(false, true, false), vec2<bool>(false, false), vec2<f32>(-343f, -461f), false), Struct_1(25158u, vec3<bool>(true, false, false), vec2<bool>(false, true), vec2<f32>(433f, 480f), true), Struct_1(0u, vec3<bool>(false, true, true), vec2<bool>(true, false), vec2<f32>(1409f, 332f), true), Struct_1(9173u, vec3<bool>(true, true, true), vec2<bool>(true, false), vec2<f32>(-1209f, 268f), false), Struct_1(4294967295u, vec3<bool>(false, false, true), vec2<bool>(true, false), vec2<f32>(-524f, -1413f), true), Struct_1(4294967295u, vec3<bool>(false, false, true), vec2<bool>(false, false), vec2<f32>(766f, 1266f), true), Struct_1(0u, vec3<bool>(false, true, false), vec2<bool>(false, true), vec2<f32>(-1000f, -503f), true), Struct_1(27666u, vec3<bool>(false, true, true), vec2<bool>(true, false), vec2<f32>(-102f, 2589f), false), Struct_1(1u, vec3<bool>(false, true, false), vec2<bool>(false, false), vec2<f32>(-910f, 640f), true), Struct_1(24449u, vec3<bool>(false, false, true), vec2<bool>(true, false), vec2<f32>(-682f, -1000f), false), Struct_1(1u, vec3<bool>(false, true, true), vec2<bool>(false, false), vec2<f32>(-298f, 1010f), true), Struct_1(97987u, vec3<bool>(false, true, true), vec2<bool>(true, false), vec2<f32>(-700f, 449f), false), Struct_1(16171u, vec3<bool>(true, true, false), vec2<bool>(false, true), vec2<f32>(-176f, 385f), true), Struct_1(0u, vec3<bool>(false, true, false), vec2<bool>(false, false), vec2<f32>(-1210f, -270f), false), Struct_1(4294967295u, vec3<bool>(true, false, false), vec2<bool>(true, false), vec2<f32>(308f, 157f), true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_add_vec3_u32(firstLeadingBit(reverseBits(~reverseBits(vec3<u32>(arg_0, 89485u, 1u)))), u_input.b.xww);
    var var_1 = all(vec3<bool>(any(vec2<bool>(global0.b.x, global0.e)), global0.c.x, false));
    var var_2 = select(!vec4<bool>(any(vec2<bool>(true, false)), !global0.c.x && !global0.c.x, false, false), vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-global0.d.x)) > _wgslsmith_f_op_f32(round(global0.d.x)), true, false, global0.b.x), global0.e);
    var var_3 = global0.d.x;
    let var_4 = !global0.e;
    return var_2.yx;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<u32> {
    global2 = array<Struct_1, 31>();
    let var_0 = abs(firstLeadingBit(vec4<i32>(arg_3.x, arg_3.x, arg_3.x, -11774i)) ^ reverseBits(-vec4<i32>(u_input.e, 45051i, 25517i, -2147483647i))) | vec4<i32>(-10847i, 0i, firstTrailingBit(abs(-5587i)) << (u_input.a % 32u), ~(-u_input.e));
    var var_1 = 1173f;
    let var_2 = ~_wgslsmith_mod_i32(~min(0i, -2147483647i), -_wgslsmith_dot_vec2_i32(var_0.wy, vec2<i32>(1i, u_input.e))) ^ ~(~(~21275i));
    var var_3 = vec2<i32>(min(abs(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(u_input.c.zz, var_0.wy))), _wgslsmith_sub_i32(arg_3.x & countOneBits(u_input.e), var_2)), -abs(-66497i));
    return vec4<u32>(arg_2.a, arg_2.a, ~(~(~39947u)), ~40584u >> (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global0.a, 1u, 0u), ~vec3<u32>(global1.a, 0u, arg_1.a)), ~vec3<u32>(0u, arg_2.a, u_input.b.x)) % 32u));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = -9512i;
    global2 = array<Struct_1, 31>();
    global1 = Struct_2(u_input.d.x);
    global1 = Struct_2(60288u);
    var var_1 = max(select(abs(u_input.b), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), vec4<u32>(u_input.a, global1.a, 0u, u_input.a)), !vec4<bool>(true, true, true, global0.b.x)), u_input.b) & func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(434f - 1537f))))), Struct_2(abs(u_input.d.x) >> (_wgslsmith_mult_u32(4294967295u, u_input.a) % 32u)), Struct_1(_wgslsmith_mult_u32(~1695u, ~global1.a), vec3<bool>(all(vec3<bool>(false, global0.b.x, global0.b.x)), false, true), !func_3(global0.a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(global0.d, vec2<f32>(global0.d.x, 675f))))), !(!global0.c.x)), u_input.c.zz);
    return _wgslsmith_dot_vec2_u32(~var_1.xx, ~var_1.yx);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> Struct_2 {
    let var_0 = global0.e;
    let var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), _wgslsmith_div_u32(0u, global1.a))), ~vec2<u32>(13199u, arg_0 | arg_0)), !vec3<bool>((40595u & u_input.d.x) > arg_0, all(select(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), vec4<bool>(true, global0.c.x, true, true), vec4<bool>(global0.c.x, false, global0.b.x, true))), global0.c.x), global0.b.xy, global0.d, !global0.c.x);
    let var_3 = 1u;
    let var_4 = Struct_2(abs(var_3));
    return Struct_2(~select(~1u, ~0u << ((15581u ^ arg_1.a) % 32u), select(var_2.e, true, 1u >= global1.a)));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(439f, _wgslsmith_f_op_f32(select(-976f, -1234f, false)), global0.d.x, _wgslsmith_f_op_f32(abs(global0.d.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), vec4<f32>(-1000f, global0.d.x, global0.d.x, global0.d.x), global0.e)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-359f, -179f, -715f, -2090f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.d.x, -2248f, global0.d.x))))) * vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(trunc(327f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)) - _wgslsmith_div_f32(-2501f, -1000f)), _wgslsmith_div_f32(global0.d.x, global0.d.x)));
    global0 = global2[_wgslsmith_index_u32(abs(1u), 31u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(select(var_0.x, -1690f, global0.e))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, 629f), -717f), _wgslsmith_f_op_f32(-213f * _wgslsmith_f_op_f32(-global0.d.x)))), var_0.x));
    global2 = array<Struct_1, 31>();
    global2 = array<Struct_1, 31>();
    return func_5(func_2(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.e, 33837i), vec2<i32>(u_input.e, u_input.e ^ u_input.e))), Struct_2(4294967295u), u_input.c.x, _wgslsmith_f_op_f32(min(-1138f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1700f, _wgslsmith_f_op_f32(-556f * 1099f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(1u, 31u)];
    global2 = array<Struct_1, 31>();
    var var_1 = u_input.c.xy;
    var_1 = u_input.c.yz;
    let var_2 = global2[_wgslsmith_index_u32(~3909u, 31u)];
    var var_3 = u_input.b.yyy;
    let var_4 = func_1();
    var var_5 = var_4;
    var var_6 = Struct_1(countOneBits(~(~39658u)), vec3<bool>(true, !(!var_2.c.x) | func_3(4294967295u).x, true), global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.d, var_2.d, false)) + vec2<f32>(global0.d.x, global0.d.x)) - var_2.d) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-571f * -1000f), var_0.d.x), vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.d.x)), global0.d.x))), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.d.x, global0.d.x, 449f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-261f, var_6.d.x, var_0.d.x)))), _wgslsmith_dot_vec3_u32(~firstLeadingBit(_wgslsmith_clamp_vec3_u32(u_input.b.xwx, u_input.b.zww, u_input.b.xxz)), reverseBits(abs(vec3<u32>(24258u, 4294967295u, 21126u)))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-abs(var_1.x), u_input.c.x), -(_wgslsmith_sub_i32(var_1.x, -2147483647i) >> (~4294967295u % 32u)), ~(-(~13664i))));
}

