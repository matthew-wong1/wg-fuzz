struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<u32>, 17>;

var<private> global2: u32;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(4980u, vec3<f32>(515f, 1130f, 1275f), vec3<bool>(false, false, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(0u, vec3<f32>(-339f, 243f, 1000f), vec3<bool>(true, false, false), vec2<u32>(60516u, 14029u)), Struct_1(48537u, vec3<f32>(896f, -1559f, -604f), vec3<bool>(true, false, false), vec2<u32>(4294967295u, 0u)), Struct_1(39824u, vec3<f32>(1008f, -459f, 1105f), vec3<bool>(true, true, false), vec2<u32>(125967u, 4294967295u)), Struct_1(0u, vec3<f32>(1121f, 426f, 941f), vec3<bool>(false, false, true), vec2<u32>(0u, 0u)), Struct_1(1u, vec3<f32>(-172f, 192f, 153f), vec3<bool>(true, true, true), vec2<u32>(4294967295u, 19865u)), Struct_1(47932u, vec3<f32>(-309f, 1000f, -930f), vec3<bool>(false, false, false), vec2<u32>(36623u, 124426u)), Struct_1(15718u, vec3<f32>(-2098f, 964f, 1000f), vec3<bool>(false, true, false), vec2<u32>(0u, 0u)), Struct_1(0u, vec3<f32>(-330f, -966f, 1025f), vec3<bool>(false, true, true), vec2<u32>(3142u, 88111u)), Struct_1(4294967295u, vec3<f32>(101f, 1062f, 788f), vec3<bool>(false, true, true), vec2<u32>(19422u, 5664u)), Struct_1(1u, vec3<f32>(-688f, -1703f, -713f), vec3<bool>(true, true, false), vec2<u32>(114245u, 1u)), Struct_1(0u, vec3<f32>(562f, -1979f, -501f), vec3<bool>(true, true, true), vec2<u32>(75620u, 0u)), Struct_1(10961u, vec3<f32>(-1143f, -765f, 664f), vec3<bool>(false, false, true), vec2<u32>(20645u, 0u)), Struct_1(0u, vec3<f32>(-289f, -839f, -1915f), vec3<bool>(true, true, false), vec2<u32>(24395u, 0u)), Struct_1(1u, vec3<f32>(-529f, 1174f, 1126f), vec3<bool>(true, false, true), vec2<u32>(10794u, 6760u)), Struct_1(0u, vec3<f32>(-1525f, -1000f, 178f), vec3<bool>(true, true, true), vec2<u32>(0u, 39184u)), Struct_1(15924u, vec3<f32>(1988f, 2080f, 862f), vec3<bool>(false, true, true), vec2<u32>(1u, 78412u)), Struct_1(4294967295u, vec3<f32>(318f, 545f, 351f), vec3<bool>(false, true, true), vec2<u32>(1462u, 41942u)), Struct_1(4294967295u, vec3<f32>(-473f, -485f, 910f), vec3<bool>(false, false, false), vec2<u32>(29726u, 97771u)), Struct_1(4294967295u, vec3<f32>(-590f, 1207f, 1979f), vec3<bool>(true, true, false), vec2<u32>(6581u, 19691u)), Struct_1(4294967295u, vec3<f32>(-381f, 758f, -961f), vec3<bool>(true, true, false), vec2<u32>(1u, 27139u)), Struct_1(22473u, vec3<f32>(654f, 282f, 1390f), vec3<bool>(false, true, true), vec2<u32>(1u, 1538u)), Struct_1(48103u, vec3<f32>(763f, -609f, -544f), vec3<bool>(true, false, false), vec2<u32>(0u, 0u)), Struct_1(18799u, vec3<f32>(976f, -312f, 542f), vec3<bool>(true, true, true), vec2<u32>(17317u, 0u)), Struct_1(0u, vec3<f32>(-888f, 1993f, 578f), vec3<bool>(false, false, false), vec2<u32>(88377u, 4294967295u)), Struct_1(12944u, vec3<f32>(292f, -425f, -293f), vec3<bool>(true, false, true), vec2<u32>(5204u, 66079u)), Struct_1(1u, vec3<f32>(-1811f, -1396f, 133f), vec3<bool>(true, false, false), vec2<u32>(4294967295u, 23093u)), Struct_1(67879u, vec3<f32>(661f, -1061f, -304f), vec3<bool>(false, false, true), vec2<u32>(34918u, 896u)), Struct_1(4294967295u, vec3<f32>(1694f, -546f, -703f), vec3<bool>(true, true, true), vec2<u32>(4294967295u, 42752u)), Struct_1(53348u, vec3<f32>(-351f, 190f, -907f), vec3<bool>(false, true, false), vec2<u32>(118941u, 0u)), Struct_1(0u, vec3<f32>(-286f, 751f, -191f), vec3<bool>(false, true, false), vec2<u32>(0u, 9421u)));

var<private> global4: array<vec3<i32>, 5>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global3 = array<Struct_1, 31>();
    global4 = array<vec3<i32>, 5>();
    global4 = array<vec3<i32>, 5>();
    var var_0 = global3[_wgslsmith_index_u32(~arg_0.d.x, 31u)];
    global4 = array<vec3<i32>, 5>();
    return var_0.c.yz;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.c.x, 31u)];
    let var_1 = !(!vec4<bool>(false, ~u_input.b != var_0.a, false, true));
    let var_2 = select(func_3(Struct_1(~var_0.d.x, var_0.b, var_1.wyx, var_0.d)), select(var_0.c.xz, select(select(vec2<bool>(var_0.c.x, true), vec2<bool>(true, true), !vec2<bool>(true, arg_0)), select(select(vec2<bool>(var_1.x, arg_0), var_1.yx, var_0.c.zy), !var_0.c.yx, !var_1.xz), true), !vec2<bool>(arg_1 >= global0.x, false)), !vec2<bool>(any(var_1.wyx) | true, all(var_0.c.zx)));
    let var_3 = -_wgslsmith_add_i32(u_input.d, _wgslsmith_mult_i32(0i, arg_1));
    var var_4 = Struct_1(~u_input.c.x, vec3<f32>(-720f, -150f, _wgslsmith_f_op_f32(max(-427f, _wgslsmith_f_op_f32(-arg_2)))), !select(!vec3<bool>(var_2.x, true, true), var_0.c, select(var_0.c, !var_0.c, true)), ~vec2<u32>(~u_input.c.x & u_input.b, ~_wgslsmith_div_u32(var_0.d.x, var_0.a)));
    return Struct_1(8267u, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_4.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.b))), vec3<f32>(var_4.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(-var_4.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), select(select(var_1.zwy, select(var_4.c, var_4.c, vec3<bool>(true, var_1.x, var_0.c.x)), vec3<bool>(all(var_1.wy), var_1.x, arg_0)), select(var_0.c, var_0.c, false), vec3<bool>(!(!var_4.c.x), var_4.c.x && var_1.x, true)), var_0.d);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = func_2(arg_1.c.x && (!arg_3 & true), 1i, arg_1.b.x);
    var var_1 = func_3(func_2(arg_3, global0.x, 1415f));
    global2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(select(var_0.d.x, arg_1.a, arg_2.c.x) & 32765u, (u_input.b << (1u % 32u)) & arg_1.a) & arg_1.d.x, ~u_input.c.x);
    global2 = var_0.a;
    global4 = array<vec3<i32>, 5>();
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ~firstTrailingBit(~(_wgslsmith_add_u32(u_input.c.x, 9890u) & u_input.c.x));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, false), Struct_1(u_input.c.x, vec3<f32>(1828f, 619f, -676f), vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(4294967295u, 17u)]), Struct_1(41699u, vec3<f32>(-1000f, 330f, 809f), vec3<bool>(true, false, true), vec2<u32>(u_input.b, u_input.c.x)), true)), -1000f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1880f, 480f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(179f, 174f), vec2<f32>(2796f, -443f))))), vec2<f32>(_wgslsmith_f_op_f32(-1599f - 1778f), -1809f)))), vec2<f32>(1f, _wgslsmith_f_op_f32(ceil(674f))));
    var_1 = firstTrailingBit(0u);
    let var_3 = global3[_wgslsmith_index_u32(105825u, 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(-(~reverseBits(vec4<i32>(global0.x, global0.x, -5037i, u_input.a.x))), vec4<i32>(-1i & u_input.d, u_input.a.x, -352i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(641f))))));
}

