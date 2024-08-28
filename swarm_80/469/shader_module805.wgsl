struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_1(vec3<u32>(4294967295u, 62278u, 0u), 864f, vec4<f32>(844f, 852f, 2980f, -419f), vec2<u32>(695u, 48624u)), -230f, false), Struct_3(Struct_1(vec3<u32>(1u, 0u, 13961u), -282f, vec4<f32>(-1157f, 190f, 1545f, 424f), vec2<u32>(96361u, 1u)), 1000f, false), Struct_3(Struct_1(vec3<u32>(0u, 83668u, 0u), -907f, vec4<f32>(-120f, 1000f, 877f, -1000f), vec2<u32>(1u, 4294967295u)), 830f, true), Struct_3(Struct_1(vec3<u32>(1u, 42946u, 37949u), -577f, vec4<f32>(-1614f, -1000f, 400f, -2604f), vec2<u32>(61515u, 0u)), 824f, false), Struct_3(Struct_1(vec3<u32>(4294967295u, 0u, 72606u), -1000f, vec4<f32>(-600f, -2003f, -758f, 1088f), vec2<u32>(1u, 1u)), 152f, true), Struct_3(Struct_1(vec3<u32>(61554u, 4294967295u, 0u), 517f, vec4<f32>(374f, 1536f, -1385f, -1000f), vec2<u32>(19363u, 60628u)), -1099f, true), Struct_3(Struct_1(vec3<u32>(4330u, 4294967295u, 27521u), 1193f, vec4<f32>(652f, 791f, 1022f, -1329f), vec2<u32>(0u, 0u)), -1294f, true), Struct_3(Struct_1(vec3<u32>(35768u, 1u, 4294967295u), 1332f, vec4<f32>(-1403f, -1224f, -218f, 1999f), vec2<u32>(9684u, 4294967295u)), -1000f, false), Struct_3(Struct_1(vec3<u32>(0u, 4294967295u, 0u), -150f, vec4<f32>(-712f, -431f, 110f, -1689f), vec2<u32>(96071u, 4294967295u)), 872f, true), Struct_3(Struct_1(vec3<u32>(4294967295u, 2464u, 1u), 1618f, vec4<f32>(-1566f, -853f, -847f, 1256f), vec2<u32>(0u, 43857u)), -661f, true), Struct_3(Struct_1(vec3<u32>(61664u, 4294967295u, 4294967295u), 407f, vec4<f32>(224f, 1000f, -584f, 177f), vec2<u32>(0u, 1u)), -745f, false), Struct_3(Struct_1(vec3<u32>(54920u, 17706u, 1u), -249f, vec4<f32>(1783f, 618f, 935f, -870f), vec2<u32>(11891u, 50550u)), -1615f, true), Struct_3(Struct_1(vec3<u32>(29068u, 4294967295u, 5875u), 1000f, vec4<f32>(-609f, 1099f, -440f, -432f), vec2<u32>(4294967295u, 87877u)), -1451f, true), Struct_3(Struct_1(vec3<u32>(0u, 1u, 0u), -1735f, vec4<f32>(1224f, 278f, -1194f, -1991f), vec2<u32>(0u, 34237u)), 1227f, false), Struct_3(Struct_1(vec3<u32>(38494u, 8472u, 1u), 275f, vec4<f32>(650f, -1696f, -168f, 388f), vec2<u32>(1u, 4294967295u)), -673f, true), Struct_3(Struct_1(vec3<u32>(30292u, 4294967295u, 4301u), 1502f, vec4<f32>(-178f, 920f, -990f, -1222f), vec2<u32>(7642u, 30885u)), -939f, false), Struct_3(Struct_1(vec3<u32>(38u, 51066u, 1u), 906f, vec4<f32>(-1000f, -977f, 1000f, -733f), vec2<u32>(0u, 79815u)), -1277f, false), Struct_3(Struct_1(vec3<u32>(92962u, 13005u, 0u), -1000f, vec4<f32>(-828f, 334f, 2617f, 533f), vec2<u32>(159085u, 74307u)), 975f, false), Struct_3(Struct_1(vec3<u32>(2749u, 119668u, 46554u), 1024f, vec4<f32>(-1000f, 426f, -1697f, -797f), vec2<u32>(1u, 0u)), -1302f, false), Struct_3(Struct_1(vec3<u32>(60622u, 1u, 29954u), -1000f, vec4<f32>(-1266f, 293f, 1152f, -382f), vec2<u32>(1u, 4294967295u)), 410f, true), Struct_3(Struct_1(vec3<u32>(0u, 0u, 0u), -2072f, vec4<f32>(-203f, -416f, 1502f, 106f), vec2<u32>(14533u, 0u)), -629f, true), Struct_3(Struct_1(vec3<u32>(22709u, 1u, 24803u), 701f, vec4<f32>(-1477f, 116f, 488f, -436f), vec2<u32>(0u, 8162u)), -1000f, false), Struct_3(Struct_1(vec3<u32>(36562u, 85667u, 1u), 853f, vec4<f32>(-647f, 169f, -729f, -769f), vec2<u32>(1u, 58195u)), 1098f, false), Struct_3(Struct_1(vec3<u32>(1u, 4294967295u, 1u), 385f, vec4<f32>(-1000f, 479f, 597f, 1153f), vec2<u32>(12269u, 1u)), 132f, true));

var<private> global1: array<f32, 10>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> f32 {
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 10u)]))))) * global1[_wgslsmith_index_u32(0u, 10u)])));
    return arg_2;
}

fn func_2() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 24u)];
    let var_1 = Struct_2(Struct_1(abs(~var_0.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(55417u, 10u)], global1[_wgslsmith_index_u32(87975u, 10u)])) + _wgslsmith_f_op_f32(func_3(var_0.a, var_0.c & var_0.c, _wgslsmith_f_op_f32(step(-1535f, 160f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 10u)], var_0.a.b, global1[_wgslsmith_index_u32(28321u, 10u)], 1432f))) * var_0.a.c) + vec4<f32>(_wgslsmith_div_f32(1104f, -173f), -596f, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.b, 10u)])), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_0.a.a.x, 10u)])))), var_0.a.a.zy), var_0.a, true);
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(12458u, u_input.b), 24u)];
    global1 = array<f32, 10>();
    var var_2 = var_1.b.c.x;
    return firstTrailingBit(4294967295u) | var_1.b.a.x;
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_3, 24>();
    let var_0 = ~_wgslsmith_mult_u32(min(firstTrailingBit(24396u), ~u_input.b & (38370u ^ u_input.b)), u_input.b);
    let var_1 = firstTrailingBit(u_input.a.xz);
    global1 = array<f32, 10>();
    let var_2 = vec3<i32>(~1i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(24534i, _wgslsmith_clamp_i32(u_input.c, var_1.x, -1i), -29319i), countOneBits(var_1.x)), ~26822i);
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0, func_2() >> (_wgslsmith_clamp_u32(max(_wgslsmith_mult_u32(var_0, var_0), var_0 >> (56734u % 32u)), 5921u, var_0) % 32u)), 24u)];
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_2(func_1().a, func_1().a, any(vec3<bool>(u_input.b <= arg_3.a.a.x, true, all(vec4<bool>(arg_1, arg_1, arg_3.c, var_0.x)))));
    let var_2 = abs(-vec2<i32>(1i, u_input.a.x));
    let var_3 = arg_3.a.b;
    global1 = array<f32, 10>();
    return Struct_1(~select(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 45767u, 1u), var_1.b.a)), var_1.b.a, select(vec3<bool>(false, arg_3.c, true), var_0, all(vec4<bool>(true, arg_3.c, true, var_1.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b.b - var_1.b.c.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 10u)] * -677f), _wgslsmith_f_op_f32(-1189f + 439f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(447f, -1000f))))), vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.b), 10u)] + -1279f), global1[_wgslsmith_index_u32(~1104u, 10u)], arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.c.x * var_1.b.c.x))), vec2<u32>(max(u_input.b, var_1.a.a.x), select(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, var_1.b.a.x, var_1.a.d.x), var_1.b.a), vec3<u32>(u_input.b, 0u, 29396u)), _wgslsmith_sub_u32(func_2(), _wgslsmith_dot_vec3_u32(var_1.a.a, vec3<u32>(u_input.b, u_input.b, 0u))), false)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    global0 = array<Struct_3, 24>();
    var var_0 = global0[_wgslsmith_index_u32(~1u, 24u)];
    return func_4(!select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 10u)] > -482f, !var_0.c, true), !(!vec3<bool>(var_0.c, true, true)), !var_0.c | true), var_0.c, select(!(!select(vec2<bool>(true, true), vec2<bool>(false, var_0.c), true)), select(select(select(vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, false), var_0.c), !vec2<bool>(false, var_0.c), !var_0.c), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, false)), vec2<bool>(true, var_0.c), vec2<bool>(false, true))), !(!(!vec2<bool>(var_0.c, var_0.c)))), Struct_3(Struct_1(arg_0.a, 321f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1277f, -272f, 900f)), abs(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.d.x, var_0.a.a.x), var_0.a.d))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-794f, -2650f) * _wgslsmith_f_op_f32(func_1().b * 1316f)), var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 10u)], global1[_wgslsmith_index_u32(select(~reverseBits(u_input.b), abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(29462u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u), vec4<u32>(43293u, u_input.b, u_input.b, u_input.b)))), true), 10u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(45911u, 10u)])) * -507f), global1[_wgslsmith_index_u32(~(~u_input.b), 10u)]);
    var var_1 = Struct_3(func_5(func_4(vec3<bool>(true, false, true), u_input.c >= _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(-51945i, u_input.c)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, true)), func_1()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(var_0.wy, var_0.yy)), var_0.xy))), countOneBits(~(vec3<i32>(73215i, u_input.a.x, 43837i) << (vec3<u32>(4294967295u, 26993u, u_input.b) % vec3<u32>(32u)))), -1i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 10u)] - _wgslsmith_f_op_f32(func_5(Struct_1(vec3<u32>(0u, u_input.b, 10471u), -1000f, var_0, vec2<u32>(5531u, 5536u)), var_0.zz, vec3<i32>(u_input.a.x, u_input.a.x, -1i), -22264i).b + _wgslsmith_div_f32(var_0.x, global1[_wgslsmith_index_u32(u_input.b, 10u)]))))), false);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 10u)], 783f))) * 1134f));
    var_1 = func_1();
    var_1 = Struct_3(Struct_1(firstLeadingBit(~(~vec3<u32>(51181u, 1u, var_1.a.d.x))), _wgslsmith_f_op_f32(func_3(Struct_1(~vec3<u32>(144u, var_1.a.d.x, 11834u), var_0.x, _wgslsmith_f_op_vec4_f32(-var_0), reverseBits(var_1.a.d)), var_1.c, -1163f)), vec4<f32>(1109f, func_4(!vec3<bool>(true, var_1.c, false), var_1.c, !vec2<bool>(var_1.c, false), Struct_3(var_1.a, var_1.b, var_1.c)).c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(613f * -1000f), _wgslsmith_f_op_f32(-var_1.a.c.x))), 342f), vec2<u32>(max(29983u, 32974u), var_1.a.a.x)), _wgslsmith_f_op_f32(-var_2), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1097f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec3<bool>(true, var_1.c, false), true, vec2<bool>(var_1.c, true), Struct_3(Struct_1(var_1.a.a, -299f, vec4<f32>(var_0.x, var_0.x, var_2, 1963f), var_1.a.d), 1487f, true)).c.x * _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.b, 10u)]))), var_0.x), 180f), -u_input.c);
}

