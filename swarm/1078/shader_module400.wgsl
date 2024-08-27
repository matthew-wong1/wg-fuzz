struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec2<f32>(110f, 345f), 2218f, Struct_1(4294967295u)), Struct_2(vec2<f32>(1000f, -1921f), -142f, Struct_1(0u)), Struct_2(vec2<f32>(-760f, 1272f), 1559f, Struct_1(44866u)), Struct_2(vec2<f32>(-475f, 190f), 1400f, Struct_1(27707u)), Struct_2(vec2<f32>(155f, 1835f), -700f, Struct_1(14348u)), Struct_2(vec2<f32>(1102f, -673f), -1126f, Struct_1(1u)), Struct_2(vec2<f32>(-2154f, -145f), 236f, Struct_1(37661u)), Struct_2(vec2<f32>(-684f, 230f), -723f, Struct_1(34939u)), Struct_2(vec2<f32>(-978f, -855f), 2058f, Struct_1(1u)), Struct_2(vec2<f32>(245f, -1079f), -700f, Struct_1(4294967295u)), Struct_2(vec2<f32>(-588f, 902f), 933f, Struct_1(38826u)), Struct_2(vec2<f32>(386f, -615f), 1477f, Struct_1(6221u)), Struct_2(vec2<f32>(1655f, -1663f), -1790f, Struct_1(37167u)), Struct_2(vec2<f32>(-1000f, -556f), -592f, Struct_1(46797u)), Struct_2(vec2<f32>(1011f, -196f), -742f, Struct_1(45773u)), Struct_2(vec2<f32>(-1373f, -804f), -398f, Struct_1(70091u)), Struct_2(vec2<f32>(416f, 571f), -1014f, Struct_1(6656u)), Struct_2(vec2<f32>(-1000f, -1062f), 340f, Struct_1(65684u)), Struct_2(vec2<f32>(-500f, -601f), -317f, Struct_1(30116u)), Struct_2(vec2<f32>(768f, 843f), 251f, Struct_1(11352u)), Struct_2(vec2<f32>(1791f, 1509f), -362f, Struct_1(0u)), Struct_2(vec2<f32>(-518f, -970f), 100f, Struct_1(1u)), Struct_2(vec2<f32>(-376f, -627f), -997f, Struct_1(4397u)), Struct_2(vec2<f32>(-1395f, 1000f), -677f, Struct_1(24907u)), Struct_2(vec2<f32>(156f, -359f), -438f, Struct_1(1u)));

var<private> global1: bool = true;

var<private> global2: Struct_3 = Struct_3(44908i, 361f, Struct_1(35834u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<bool> {
    var var_0 = vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(global2.a, global2.a), -2147483647i), ~(i32(-1i) * -84373i)), ~firstLeadingBit(_wgslsmith_clamp_i32(-1i, global2.a, global2.a)) & ~(-1i << (firstTrailingBit(46063u) % 32u)), -2147483647i, global2.a);
    let var_1 = u_input.a;
    var var_2 = vec3<f32>(_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.b)))))), 1470f, -192f);
    var var_3 = firstLeadingBit(global2.a << (~countOneBits(min(var_1.x, 1u)) % 32u));
    global2 = Struct_3(_wgslsmith_mod_i32(16320i, -abs(-1i)), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(~_wgslsmith_div_u32(u_input.a.x, var_1.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(15887u, u_input.a.x, global2.c.a))));
    return select(vec2<bool>(true, true), select(vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(all(vec4<bool>(false, true, true, false)) & (global2.c.a < 2253u), true), select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec2<bool>(true, true)))), vec2<bool>(!(countOneBits(u_input.a.x) > global2.c.a), true));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    global2 = Struct_3(global2.a, _wgslsmith_f_op_f32(max(global2.b, _wgslsmith_div_f32(961f, _wgslsmith_f_op_f32(step(global2.b, 1893f))))), arg_0);
    let var_0 = -4828i;
    global0 = array<Struct_2, 25>();
    var var_1 = !select(select(vec2<bool>(false, true), vec2<bool>(any(vec4<bool>(true, false, true, false)), false), func_3()), !vec2<bool>(true, arg_0.a <= 61894u), false);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1404f + _wgslsmith_f_op_f32(global2.b * -794f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.b))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-471f))))), 1f));
    return global0[_wgslsmith_index_u32(countOneBits(firstLeadingBit(arg_0.a)), 25u)];
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(~(~select(~u_input.a.x, 1u, global2.a >= -1i)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, global2.b) - vec2<f32>(global2.b, global2.b)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1888f, -562f) * vec2<f32>(-698f, global2.b))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, global2.b))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, global2.b) * vec2<f32>(global2.b, global2.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, 1219f)), select(vec2<bool>(false, false), vec2<bool>(true, false), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1682f, -454f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(958f, global2.b))))), global2.b, var_0);
    var_1 = func_2(Struct_1(4294967295u), 34067i);
    return vec2<i32>(-1i) * -vec2<i32>(1i, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    var var_0 = select(select(vec2<i32>(global2.a, 31442i), select(func_1(1378i, Struct_1(u_input.a.x)), -vec2<i32>(66016i, 0i), true) << (abs(min(vec2<u32>(4294967295u, 1u), u_input.a)) % vec2<u32>(32u)), vec2<bool>(true, true)), vec2<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_mod_i32(global2.a, global2.a), ~1i) ^ ~_wgslsmith_mult_i32(0i, -30074i)), vec2<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(false, global2.c.a >= 1u, true, -18910i <= global2.a))));
    var var_1 = func_2(global2.c, ~43099i << (u_input.a.x % 32u)).c;
    global0 = array<Struct_2, 25>();
    let var_2 = max(-18505i, _wgslsmith_mult_i32(var_0.x, i32(-1i) * -2147483647i));
    let var_3 = func_2(Struct_1(global2.c.a), 2828i).c;
    let var_4 = Struct_3(_wgslsmith_sub_i32(~abs(var_0.x & -1i), global2.a), _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(-787f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.b))))), global2.c);
    global2 = var_4;
    let var_5 = Struct_2(vec2<f32>(-466f, var_4.b), 1f, func_2(Struct_1(4294967295u), var_0.x).c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_2(var_3, -16099i).c.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1143f, -586f, 653f, 722f) + vec4<f32>(-558f, var_5.a.x, var_5.b, var_4.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1140f, var_4.b, 169f, -204f)))))), _wgslsmith_f_op_f32(trunc(1181f)));
}

