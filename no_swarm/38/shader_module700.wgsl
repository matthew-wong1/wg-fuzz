struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: Struct_2 = Struct_2(-500f, 2147483647i);

var<private> global2: Struct_3 = Struct_3(1000f, vec2<bool>(false, true), 969f);

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(0i, vec2<f32>(-1545f, 896f), -416f, vec2<i32>(1i, 11052i)), Struct_1(16333i, vec2<f32>(-1108f, 754f), -852f, vec2<i32>(-1i, -34114i)), Struct_1(-82577i, vec2<f32>(771f, 1000f), 1000f, vec2<i32>(-1i, 4147i)), Struct_1(10167i, vec2<f32>(-356f, -1062f), -347f, vec2<i32>(-48413i, 30205i)), Struct_1(-1i, vec2<f32>(1322f, -731f), 216f, vec2<i32>(2147483647i, 1i)), Struct_1(32388i, vec2<f32>(1610f, 516f), 1086f, vec2<i32>(-6860i, 840i)), Struct_1(-1334i, vec2<f32>(-984f, 944f), 1039f, vec2<i32>(8517i, -54818i)), Struct_1(22226i, vec2<f32>(-408f, 1069f), 1292f, vec2<i32>(i32(-2147483648), -2556i)), Struct_1(-1841i, vec2<f32>(-287f, 511f), -1385f, vec2<i32>(-13967i, 582i)), Struct_1(2147483647i, vec2<f32>(-493f, -281f), -1470f, vec2<i32>(-9550i, -44432i)), Struct_1(-28186i, vec2<f32>(1045f, -922f), -1976f, vec2<i32>(-1i, 24955i)), Struct_1(-14126i, vec2<f32>(-171f, 734f), 1913f, vec2<i32>(-13927i, 11852i)), Struct_1(50847i, vec2<f32>(-898f, -1000f), 834f, vec2<i32>(-46419i, 0i)), Struct_1(-36444i, vec2<f32>(-683f, 1220f), -1000f, vec2<i32>(26981i, 1424i)), Struct_1(-66522i, vec2<f32>(613f, -1212f), -1431f, vec2<i32>(-1i, -23707i)), Struct_1(2147483647i, vec2<f32>(-1758f, 585f), 671f, vec2<i32>(i32(-2147483648), -41361i)), Struct_1(-22952i, vec2<f32>(437f, -306f), 324f, vec2<i32>(0i, 5926i)), Struct_1(5615i, vec2<f32>(-449f, 1327f), 188f, vec2<i32>(i32(-2147483648), 0i)), Struct_1(45327i, vec2<f32>(-126f, 569f), 190f, vec2<i32>(-70876i, 7358i)), Struct_1(-1i, vec2<f32>(-2752f, 549f), 277f, vec2<i32>(2147483647i, -27446i)), Struct_1(1i, vec2<f32>(291f, 853f), -104f, vec2<i32>(24613i, -42021i)), Struct_1(2147483647i, vec2<f32>(-1000f, 1735f), 207f, vec2<i32>(-21167i, 1i)), Struct_1(-1i, vec2<f32>(-1000f, 1000f), 1822f, vec2<i32>(18533i, -24650i)), Struct_1(2147483647i, vec2<f32>(2302f, -215f), -2955f, vec2<i32>(0i, -1i)), Struct_1(26745i, vec2<f32>(773f, 422f), 641f, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(17272i, vec2<f32>(1000f, -134f), -936f, vec2<i32>(1i, i32(-2147483648))), Struct_1(1i, vec2<f32>(595f, 664f), -450f, vec2<i32>(1i, 2147483647i)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    global2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -762f) * global1.a), vec2<bool>(true, true), arg_0.x);
    let var_0 = reverseBits(vec3<u32>(17081u, 1u, ~1u));
    global3 = array<Struct_1, 27>();
    global1 = global0[_wgslsmith_index_u32(abs(var_0.x), 17u)];
    var var_1 = Struct_2(global1.a, min(1i, -43848i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-arg_0.x)), true))));
}

fn func_2() -> bool {
    var var_0 = global3[_wgslsmith_index_u32(64866u, 27u)];
    global3 = array<Struct_1, 27>();
    var_0 = Struct_1(_wgslsmith_sub_i32(0i, -39188i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x * var_0.c), _wgslsmith_f_op_f32(func_3(vec4<f32>(-1060f, global2.c, var_0.b.x, 1000f), -32354i))), global1.a) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.c, -1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(317f - _wgslsmith_div_f32(-1333f, 818f)), _wgslsmith_f_op_f32(f32(-1f) * -431f))), abs(~min(var_0.d, ~vec2<i32>(1i, u_input.a))));
    let var_1 = all(select(select(select(vec4<bool>(true, true, global2.b.x, false), vec4<bool>(global2.b.x, true, true, global2.b.x), vec4<bool>(false, global2.b.x, false, global2.b.x)), select(vec4<bool>(global2.b.x, true, global2.b.x, global2.b.x), vec4<bool>(global2.b.x, global2.b.x, false, global2.b.x), vec4<bool>(global2.b.x, true, global2.b.x, true)), -1408f >= global2.a), !(!vec4<bool>(global2.b.x, true, global2.b.x, global2.b.x)), false)) && true;
    global2 = Struct_3(global1.a, !vec2<bool>(global2.b.x, true), -1054f);
    return true;
}

fn func_1() -> i32 {
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    let var_0 = vec4<bool>(((true & all(vec2<bool>(global2.b.x, false))) & true) || any(select(!vec4<bool>(false, global2.b.x, true, global2.b.x), vec4<bool>(true, true, global2.b.x, global2.b.x), vec4<bool>(global2.b.x, true, global2.b.x, global2.b.x))), !func_2(), global2.b.x, true);
    var var_1 = -841f;
    let var_2 = global3[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(0u, 21589u), _wgslsmith_add_u32(41750u, firstTrailingBit(26960u)))), 27u)];
    return -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-5909i, -10822i, var_2.a, -3818i) & vec4<i32>(-28600i, var_2.d.x, -2147483647i, var_2.d.x)), reverseBits(-abs(vec4<i32>(var_2.a, global1.b, u_input.a, u_input.a))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(5064u, 17u)];
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-360f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-429f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))), i32(-1i) * -(i32(-1i) * -14856i));
    var var_1 = _wgslsmith_mod_i32(arg_3.d.x, 2147483647i);
    var var_2 = Struct_3(-1692f, vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(164f * _wgslsmith_f_op_f32(round(-1261f))))));
    let var_3 = select(vec3<bool>(false, all(vec3<bool>(false, true, !arg_2.x)), !var_2.b.x), !vec3<bool>(any(!vec2<bool>(global2.b.x, false)), arg_2.x, any(select(vec3<bool>(true, false, var_2.b.x), vec3<bool>(false, arg_2.x, global2.b.x), vec3<bool>(global2.b.x, true, var_2.b.x)))), vec3<bool>(!global2.b.x, all(select(!vec2<bool>(true, var_2.b.x), arg_2, select(arg_2, vec2<bool>(global2.b.x, var_2.b.x), global2.b))), any(vec3<bool>(all(vec4<bool>(false, false, arg_2.x, true)), true, any(var_2.b)))));
    return Struct_2(var_0.a, firstTrailingBit(1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(-40117i));
    global2 = Struct_3(601f, !global2.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(f32(-1f) * -422f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - global1.a))))));
    var var_1 = func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a, -809f))) * _wgslsmith_f_op_f32(f32(-1f) * -104f)), 0i), vec2<i32>(func_1(), 1i), !global2.b, global3[_wgslsmith_index_u32(1u, 27u)]);
    var var_2 = ~firstTrailingBit(~firstLeadingBit(1u));
    let x = u_input.a;
    s_output = StorageBuffer(select(0u, 1u, func_2()) >> (1u % 32u), ~select(abs(4294967295u) >> (_wgslsmith_mult_u32(0u, 46251u) % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 51520u, 21747u, 1u), vec4<u32>(34888u, 4085u, 0u, 4294967295u)), 1185u << (1u % 32u), ~17425u), true));
}

