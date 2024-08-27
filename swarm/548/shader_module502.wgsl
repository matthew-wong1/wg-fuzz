struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: vec4<i32>,
    d: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec4<u32>(0u, 0u, 4294967295u, 39794u), true, vec4<i32>(17078i, -31552i, i32(-2147483648), 16787i), -668f), Struct_4(vec4<u32>(4294967295u, 1u, 20209u, 0u), true, vec4<i32>(3139i, -27895i, 0i, 1i), -400f), Struct_4(vec4<u32>(0u, 65445u, 31572u, 0u), true, vec4<i32>(26687i, 36498i, 1i, 2147483647i), 2640f), Struct_4(vec4<u32>(0u, 4294967295u, 21088u, 23469u), true, vec4<i32>(-703i, 40503i, -1i, i32(-2147483648)), -137f), Struct_4(vec4<u32>(20976u, 70095u, 0u, 0u), false, vec4<i32>(1i, 6631i, 0i, 2i), -3068f), Struct_4(vec4<u32>(0u, 1u, 28010u, 23363u), true, vec4<i32>(i32(-2147483648), 66229i, 2147483647i, 7908i), 1265f), Struct_4(vec4<u32>(31514u, 4294967295u, 0u, 4294967295u), true, vec4<i32>(-3367i, -21031i, 2147483647i, i32(-2147483648)), -336f), Struct_4(vec4<u32>(4294967295u, 0u, 1u, 3166u), true, vec4<i32>(65739i, 33255i, 0i, i32(-2147483648)), -333f), Struct_4(vec4<u32>(1u, 119369u, 34840u, 80833u), true, vec4<i32>(-1i, 2147483647i, -3071i, 1i), -685f), Struct_4(vec4<u32>(4294967295u, 47257u, 1u, 37600u), false, vec4<i32>(-51656i, -36852i, -1i, 48108i), 1000f), Struct_4(vec4<u32>(17041u, 73165u, 25566u, 30236u), false, vec4<i32>(27623i, 2147483647i, -1612i, -1i), 758f), Struct_4(vec4<u32>(57930u, 44149u, 3040u, 17422u), false, vec4<i32>(2147483647i, 0i, -1i, 17247i), -1358f), Struct_4(vec4<u32>(0u, 0u, 116701u, 2955u), true, vec4<i32>(i32(-2147483648), 18610i, -16083i, -1i), 1631f), Struct_4(vec4<u32>(11329u, 10423u, 15209u, 4294967295u), true, vec4<i32>(-73040i, -1i, 19797i, 46052i), 660f), Struct_4(vec4<u32>(4294967295u, 121057u, 81068u, 25043u), true, vec4<i32>(-73843i, 70724i, 2147483647i, -20338i), -1861f), Struct_4(vec4<u32>(1u, 1u, 0u, 4294967295u), false, vec4<i32>(7116i, i32(-2147483648), 2147483647i, i32(-2147483648)), 502f), Struct_4(vec4<u32>(42943u, 0u, 5095u, 4446u), false, vec4<i32>(13169i, -13943i, -14784i, -66108i), 893f));

var<private> global2: array<u32, 4> = array<u32, 4>(64520u, 31100u, 41030u, 10051u);

var<private> global3: bool = true;

var<private> global4: Struct_4;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> f32 {
    let var_0 = global4.c;
    let var_1 = global4.a;
    return -2600f;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_2 {
    let var_0 = ~_wgslsmith_div_i32(-23315i, 16224i);
    let var_1 = global4.a.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(vec4<i32>(select(arg_0.x, -2147483647i, false), reverseBits(2147483647i), ~(-2147483647i), -arg_0.x)), !vec4<bool>(false, false, all(vec2<bool>(global4.b, global4.b)), all(vec3<bool>(false, false, true))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1248f, arg_1) * vec3<f32>(434f, arg_1, 488f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -912f, arg_1))), vec3<f32>(_wgslsmith_f_op_f32(abs(-102f)), _wgslsmith_f_op_f32(global4.d + -779f), -369f)), ~vec4<u32>(select(global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)], false), 4294967295u, ~1u, global2[_wgslsmith_index_u32(global4.a.x, 4u)]))));
    global3 = any(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, 1000f) * _wgslsmith_f_op_f32(1429f - 202f)) <= -127f, global4.b, false && all(vec4<bool>(true, global4.b, false, true)), true && !all(vec4<bool>(false, global4.b, true, true))));
    global4 = Struct_4(~(~vec4<u32>(_wgslsmith_add_u32(global4.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.a.x, 4u)], 4u)]), ~global4.a.x, 25851u, 66396u)), !global4.b, abs(_wgslsmith_mod_vec4_i32(global4.c, global4.c)), -356f);
    return Struct_2(global4.c);
}

fn func_3() -> vec4<u32> {
    var var_0 = any(!vec4<bool>(global4.b, global4.a.x > 1u, global4.b, false));
    var var_1 = _wgslsmith_mod_i32(-22449i, 1i);
    let var_2 = u_input.c;
    var var_3 = global1[_wgslsmith_index_u32(~select(_wgslsmith_mod_u32(min(global2[_wgslsmith_index_u32(~58823u, 4u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global4.a.x, 4u)], 4u)]), _wgslsmith_clamp_u32(global4.a.x, firstLeadingBit(global2[_wgslsmith_index_u32(0u, 4u)]), global2[_wgslsmith_index_u32(1u >> (0u % 32u), 4u)])), 58831u, !global4.b), 17u)];
    var var_4 = Struct_3(~global4.a.xx, _wgslsmith_f_op_f32(step(-269f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-931f))), _wgslsmith_f_op_f32(round(var_3.d)))))), u_input.b, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2048f, _wgslsmith_f_op_f32(func_2(Struct_2(var_3.c), vec4<bool>(global4.b, false, true, true), vec3<f32>(global4.d, 1434f, var_3.d), vec4<u32>(global4.a.x, global4.a.x, 8200u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 4u)], 4u)]))), _wgslsmith_f_op_f32(-global4.d))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(689f, _wgslsmith_f_op_f32(min(global4.d, -1045f)), _wgslsmith_f_op_f32(-var_3.d), _wgslsmith_f_op_f32(var_3.d + var_3.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-970f, -1418f, 1005f, var_3.d)))))), vec3<u32>(var_3.a.x, ~global2[_wgslsmith_index_u32(4294967295u, 4u)] | 1u, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global4.d), global4.d, -957f)), vec2<bool>(var_3.b, !(var_3.b | true))));
    return abs(~global4.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global4.c.wx, _wgslsmith_f_op_f32(f32(-1f) * -733f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(380f, global4.d, -1282f), vec3<f32>(1129f, global4.d, 157f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global4.d, -1116f) * vec3<f32>(global4.d, 176f, global4.d)))))));
    global4 = Struct_4(vec4<u32>(~(global4.a.x >> (~0u % 32u)), global2[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(1u, global4.a.x)), 4u)], global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(~1u, 4u)]), all(vec3<bool>(true, _wgslsmith_f_op_f32(global4.d - global4.d) != var_1.x, !any(vec2<bool>(global4.b, global4.b)))), global4.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -897f), 2951i < global4.c.x))))));
    global3 = all(vec2<bool>(false, true));
    var var_2 = Struct_4(func_3(), false, reverseBits(func_1(vec2<i32>(var_0.a.x, global4.c.x), _wgslsmith_f_op_f32(max(global4.d, -1414f))).a >> (~global4.a % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    global2 = array<u32, 4>();
    var var_3 = func_1(vec2<i32>(-1i, min(_wgslsmith_div_i32(-19560i, global4.c.x) ^ var_2.c.x, ~_wgslsmith_dot_vec4_i32(var_0.a, var_0.a))), 142f);
    var var_4 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-482f - var_1.x), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.d), _wgslsmith_f_op_f32(abs(global4.d))), var_1.x)));
}

