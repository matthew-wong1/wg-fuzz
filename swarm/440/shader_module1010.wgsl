struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec2<f32>(1000f, -594f)), vec2<u32>(610u, 8977u), -728f, Struct_1(vec2<f32>(-1300f, -251f))), Struct_2(Struct_1(vec2<f32>(-2218f, 1210f)), vec2<u32>(4294967295u, 0u), -1262f, Struct_1(vec2<f32>(232f, -497f))), Struct_2(Struct_1(vec2<f32>(-256f, -497f)), vec2<u32>(49420u, 83120u), -1076f, Struct_1(vec2<f32>(-1152f, 1085f))), Struct_2(Struct_1(vec2<f32>(545f, 1712f)), vec2<u32>(1u, 1126u), -1281f, Struct_1(vec2<f32>(616f, 145f))), Struct_2(Struct_1(vec2<f32>(249f, 757f)), vec2<u32>(0u, 43394u), 2141f, Struct_1(vec2<f32>(791f, -968f))), Struct_2(Struct_1(vec2<f32>(680f, -525f)), vec2<u32>(8192u, 29140u), -744f, Struct_1(vec2<f32>(1000f, -1564f))), Struct_2(Struct_1(vec2<f32>(-368f, -1282f)), vec2<u32>(1u, 48217u), -1000f, Struct_1(vec2<f32>(423f, -1056f))), Struct_2(Struct_1(vec2<f32>(-1232f, 1477f)), vec2<u32>(1u, 6203u), -200f, Struct_1(vec2<f32>(-1010f, -2482f))), Struct_2(Struct_1(vec2<f32>(1119f, 761f)), vec2<u32>(38485u, 0u), -1026f, Struct_1(vec2<f32>(1264f, 509f))), Struct_2(Struct_1(vec2<f32>(319f, 587f)), vec2<u32>(4294967295u, 49705u), -921f, Struct_1(vec2<f32>(-348f, 1140f))), Struct_2(Struct_1(vec2<f32>(-1000f, 906f)), vec2<u32>(4294967295u, 55736u), 380f, Struct_1(vec2<f32>(231f, 470f))), Struct_2(Struct_1(vec2<f32>(-185f, -271f)), vec2<u32>(1u, 0u), -282f, Struct_1(vec2<f32>(-1435f, 790f))), Struct_2(Struct_1(vec2<f32>(262f, 2771f)), vec2<u32>(0u, 4294967295u), 783f, Struct_1(vec2<f32>(-700f, 239f))), Struct_2(Struct_1(vec2<f32>(1626f, 1137f)), vec2<u32>(5896u, 24286u), -510f, Struct_1(vec2<f32>(1711f, -2222f))), Struct_2(Struct_1(vec2<f32>(1088f, -1478f)), vec2<u32>(1u, 36884u), -212f, Struct_1(vec2<f32>(302f, 545f))), Struct_2(Struct_1(vec2<f32>(1743f, -423f)), vec2<u32>(0u, 4294967295u), 736f, Struct_1(vec2<f32>(1000f, 606f))), Struct_2(Struct_1(vec2<f32>(1262f, -886f)), vec2<u32>(0u, 0u), -1000f, Struct_1(vec2<f32>(566f, 341f))), Struct_2(Struct_1(vec2<f32>(558f, 1328f)), vec2<u32>(8697u, 4294967295u), 1729f, Struct_1(vec2<f32>(-510f, 1000f))), Struct_2(Struct_1(vec2<f32>(1027f, -1160f)), vec2<u32>(15684u, 0u), 1500f, Struct_1(vec2<f32>(250f, -152f))), Struct_2(Struct_1(vec2<f32>(274f, -1915f)), vec2<u32>(1u, 0u), 966f, Struct_1(vec2<f32>(565f, 121f))), Struct_2(Struct_1(vec2<f32>(-2015f, 265f)), vec2<u32>(4294967295u, 4294967295u), -839f, Struct_1(vec2<f32>(-564f, -326f))), Struct_2(Struct_1(vec2<f32>(-946f, 259f)), vec2<u32>(4294967295u, 0u), 254f, Struct_1(vec2<f32>(478f, -881f))), Struct_2(Struct_1(vec2<f32>(1032f, -250f)), vec2<u32>(15862u, 1u), -2199f, Struct_1(vec2<f32>(1000f, -1180f))), Struct_2(Struct_1(vec2<f32>(-633f, 1000f)), vec2<u32>(0u, 4294967295u), -775f, Struct_1(vec2<f32>(1640f, -1086f))), Struct_2(Struct_1(vec2<f32>(1134f, -1493f)), vec2<u32>(13134u, 49921u), 1228f, Struct_1(vec2<f32>(-111f, -277f))), Struct_2(Struct_1(vec2<f32>(-376f, 869f)), vec2<u32>(73900u, 50190u), -796f, Struct_1(vec2<f32>(-1000f, -1548f))), Struct_2(Struct_1(vec2<f32>(-1507f, -721f)), vec2<u32>(1u, 26559u), 1108f, Struct_1(vec2<f32>(-455f, 829f))), Struct_2(Struct_1(vec2<f32>(793f, 988f)), vec2<u32>(13102u, 16940u), 754f, Struct_1(vec2<f32>(-365f, -1809f))), Struct_2(Struct_1(vec2<f32>(-907f, 252f)), vec2<u32>(42431u, 9899u), 1157f, Struct_1(vec2<f32>(-1120f, 144f))), Struct_2(Struct_1(vec2<f32>(158f, -417f)), vec2<u32>(84536u, 15166u), 794f, Struct_1(vec2<f32>(-577f, 203f))));

var<private> global1: Struct_2;

var<private> global2: vec3<i32>;

var<private> global3: array<f32, 4> = array<f32, 4>(-113f, -2413f, 639f, -2245f);

var<private> global4: f32 = -1427f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>) -> f32 {
    let var_0 = -989f;
    global1 = Struct_2(global1.a, vec2<u32>(global1.b.x, ~_wgslsmith_clamp_u32(global1.b.x, global1.b.x, _wgslsmith_add_u32(0u, arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(592f)) * -1531f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-509f * -1110f))) - _wgslsmith_f_op_f32(floor(-448f))), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a.a)));
    global2 = ~(-select(abs(select(vec3<i32>(-21565i, 17964i, 0i), vec3<i32>(2147483647i, global2.x, u_input.a), true)), abs(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -16188i, u_input.a), vec3<i32>(global2.x, u_input.a, u_input.a))), !select(true, arg_0.x, arg_0.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1.d.a.x)))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    global0 = array<Struct_2, 30>();
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global1.a.a, global1.a.a)) - vec2<f32>(_wgslsmith_f_op_f32(-global1.a.a.x), _wgslsmith_f_op_f32(step(640f, global1.c))))), vec2<u32>(global1.b.x, abs(~(~global1.b.x))), -817f, global1.d);
    let var_0 = global1.d;
    let var_1 = vec4<bool>(true, true, true, true);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), vec4<u32>(11575u | global1.b.x, global1.b.x, _wgslsmith_div_u32(global1.b.x, 67220u), ~global1.b.x))), _wgslsmith_div_f32(-330f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.b.x, 4u)] + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.b.x, 4u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(65262u, 4u)] + var_0.a.x)))));
    return Struct_2(Struct_1(global1.a.a), firstTrailingBit(vec2<u32>(0u, _wgslsmith_add_u32(global1.b.x, _wgslsmith_sub_u32(2440u, global1.b.x)))), _wgslsmith_f_op_f32(floor(var_0.a.x)), global1.d);
}

fn func_1() -> Struct_4 {
    global1 = func_2(vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, global2.x, global2.x, u_input.a), vec4<i32>(global2.x, global2.x, -1i, global2.x)) >> (global1.b.x % 32u), 2147483647i, 20272i));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 4u)]) + _wgslsmith_f_op_f32(-global1.a.a.x)), _wgslsmith_f_op_f32(1909f + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.b.x, 4u)] * -1213f)))), 390f, _wgslsmith_f_op_f32(-200f * global3[_wgslsmith_index_u32(0u, 4u)]));
    global2 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~2147483647i, u_input.a ^ u_input.a), vec2<i32>(1i, ~(-15024i) ^ _wgslsmith_mod_i32(global2.x, -9012i))), 1i, _wgslsmith_mod_i32(26128i, global2.x | 2147483647i));
    let var_1 = global0[_wgslsmith_index_u32(global1.b.x, 30u)];
    global3 = array<f32, 4>();
    return Struct_4(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), true), func_2(reverseBits(~(-vec4<i32>(u_input.a, global2.x, global2.x, -59729i)))).a, var_1.b, select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(global1.b.x > global1.b.x, select(true, true, true), all(vec2<bool>(true, true)))), vec3<bool>(true, true, false)), global1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -759f;
    let var_1 = func_1();
    var var_2 = abs(~(~reverseBits(~vec4<u32>(11298u, 4294967295u, 25939u, 26266u))));
    global3 = array<f32, 4>();
    var var_3 = u_input.a;
    global3 = array<f32, 4>();
    var_3 = -34815i | (min(-1i, global2.x) << (~var_1.e % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a, global2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a.x, 888f, 690f))))));
}

