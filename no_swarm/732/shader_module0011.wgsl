struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<bool>(true, false, true), false, vec3<i32>(-50346i, 1i, 0i), -1i, vec4<i32>(2147483647i, 17296i, -1i, i32(-2147483648))), Struct_1(vec3<bool>(false, true, true), false, vec3<i32>(2147483647i, 0i, 2147483647i), 36286i, vec4<i32>(2147483647i, 17721i, -27183i, -14981i)));

var<private> global2: array<Struct_1, 11>;

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<bool>(false, true, true), false, vec3<i32>(-1i, -1i, 2147483647i), 51062i, vec4<i32>(35427i, 1373i, i32(-2147483648), 2147483647i)), Struct_1(vec3<bool>(false, true, false), false, vec3<i32>(-37939i, i32(-2147483648), 28234i), -1i, vec4<i32>(1i, 1i, 45376i, 2147483647i)), Struct_1(vec3<bool>(true, false, false), false, vec3<i32>(0i, -13828i, -8923i), 8657i, vec4<i32>(-1i, i32(-2147483648), 1i, 0i)), Struct_1(vec3<bool>(false, false, false), false, vec3<i32>(1i, -52745i, 20087i), 1i, vec4<i32>(-43167i, 2147483647i, 2147483647i, -1i)), Struct_1(vec3<bool>(false, true, true), false, vec3<i32>(-76913i, 15993i, i32(-2147483648)), -1i, vec4<i32>(1i, 52274i, 1i, 0i)), Struct_1(vec3<bool>(true, false, true), true, vec3<i32>(73930i, -1i, 42344i), 1i, vec4<i32>(3323i, -38974i, -1528i, -42898i)), Struct_1(vec3<bool>(true, false, true), false, vec3<i32>(3613i, -51060i, 13100i), 0i, vec4<i32>(1i, -16539i, -4592i, i32(-2147483648))), Struct_1(vec3<bool>(true, true, false), false, vec3<i32>(2147483647i, -20031i, -1i), -25053i, vec4<i32>(24412i, -1i, 2147483647i, -13156i)), Struct_1(vec3<bool>(false, true, false), true, vec3<i32>(5820i, -760i, 2147483647i), -1i, vec4<i32>(2147483647i, 315i, 25052i, i32(-2147483648))), Struct_1(vec3<bool>(false, false, false), false, vec3<i32>(1428i, -42828i, 0i), -1i, vec4<i32>(10352i, 17508i, 1i, 20211i)), Struct_1(vec3<bool>(true, false, false), false, vec3<i32>(-22335i, -44912i, -72742i), 0i, vec4<i32>(-1i, -2147i, -36936i, 1i)), Struct_1(vec3<bool>(false, true, true), true, vec3<i32>(i32(-2147483648), -39741i, 1i), 1i, vec4<i32>(35271i, 40848i, -21582i, -10565i)), Struct_1(vec3<bool>(false, false, false), false, vec3<i32>(-19431i, i32(-2147483648), 15596i), -1i, vec4<i32>(43711i, 5875i, 62207i, 0i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_1(select(arg_0.a, select(arg_0.a, select(vec3<bool>(true, true, arg_0.a.x), arg_0.a, true), false), !(!vec3<bool>(arg_0.b, arg_0.a.x, false))), any(!(!select(vec4<bool>(false, arg_0.a.x, true, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.b, arg_0.b, arg_0.a.x), true))), vec3<i32>(-1i, arg_1, -47874i), countOneBits(arg_1), vec4<i32>(-72926i, 2147483647i, select(23408i, -abs(-1i), arg_0.b != true), ~(-10881i)));
    var_0 = global2[_wgslsmith_index_u32(u_input.a, 11u)];
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_div_u32(0u, u_input.a), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.a, 20479u), select(4294967295u, select(u_input.c, 5191u, true), !arg_0.a.x)), ~0u >> (u_input.c % 32u)), abs(reverseBits(~vec4<u32>(u_input.a, 50092u, u_input.e, u_input.a))) << (reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1573u, u_input.c, u_input.e, u_input.a), vec4<u32>(u_input.e, 64936u, u_input.e, u_input.a))) % vec4<u32>(32u)));
    var var_2 = Struct_1(vec3<bool>((arg_0.b & true) | any(!arg_0.a), arg_0.a.x, !any(select(vec2<bool>(true, var_0.b), var_0.a.xy, var_0.b))), false, firstLeadingBit(arg_0.c), firstTrailingBit(~(-1i) << (~var_1.x % 32u)), countOneBits((~var_0.e | var_0.e) | countOneBits(arg_0.e)));
    let var_3 = Struct_1(!var_2.a, any(!(!vec2<bool>(false, arg_0.b))), -vec3<i32>(max(arg_1 ^ u_input.d.x, arg_1), u_input.b.x, arg_0.c.x), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, arg_0.e.x), ~vec2<i32>(-1268i, 1i)) ^ -22508i), vec4<i32>(~1i | u_input.d.x, -reverseBits(-2147483647i), ~u_input.d.x, var_2.c.x >> (~1u % 32u)) ^ _wgslsmith_div_vec4_i32(var_2.e, arg_0.e));
    return vec4<bool>(true, arg_0.b, false, var_2.b);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> f32 {
    global3 = array<Struct_1, 13>();
    global1 = array<Struct_1, 2>();
    global3 = array<Struct_1, 13>();
    var var_0 = -859f;
    var var_1 = func_3(arg_1, -29705i);
    return _wgslsmith_f_op_f32(668f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -141f))) - _wgslsmith_f_op_f32(-884f - _wgslsmith_f_op_f32(select(379f, -116f, true)))))));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-337f, 973f, _wgslsmith_f_op_f32(-303f + -187f), 1398f))));
    let var_1 = select(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<bool>(false, true, true), false, u_input.d, arg_1, vec4<i32>(-1i, 0i, arg_1, arg_0)), Struct_1(vec3<bool>(false, true, false), true, vec3<i32>(arg_0, arg_1, -35468i), 1i, vec4<i32>(24780i, 0i, -50313i, arg_0)), u_input.d.x)) * _wgslsmith_div_f32(var_0.x, var_0.x)) != -1209f, ~(arg_0 ^ arg_0) >= -23967i, true, !(_wgslsmith_div_f32(369f, 1600f) != _wgslsmith_f_op_f32(ceil(404f)))), func_3(global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.e), ~vec2<u32>(u_input.e, 4294967295u)), _wgslsmith_clamp_u32(u_input.a, ~u_input.e, ~u_input.c)), 2u)], -36483i), func_3(Struct_1(vec3<bool>(true, true, true), true, u_input.d, -(43162i << (u_input.c % 32u)), select(vec4<i32>(0i, u_input.d.x, 16131i, arg_0), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_1, -1i, -6437i), vec4<i32>(arg_1, 1i, 119353i, -8872i)), vec4<bool>(true, true, true, false))), firstLeadingBit(firstTrailingBit(_wgslsmith_add_i32(-1i, 0i)))));
    let var_2 = 1i;
    var var_3 = Struct_1(var_1.xwz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * _wgslsmith_f_op_f32(-var_0.x))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2406f, var_0.x) - _wgslsmith_f_op_f32(round(-1116f))))), vec3<i32>(select(_wgslsmith_mult_i32(var_2, arg_1), arg_1, false || all(vec4<bool>(var_1.x, var_1.x, true, var_1.x))), arg_1, u_input.b.x), var_2, firstTrailingBit(reverseBits(-abs(vec4<i32>(arg_0, arg_1, arg_1, arg_0)))));
    let var_4 = vec4<u32>(_wgslsmith_dot_vec2_u32(~countOneBits(~vec2<u32>(u_input.a, 1u)), vec2<u32>(u_input.c, firstLeadingBit(96967u) >> ((57580u | u_input.c) % 32u))), countOneBits(28229u), 1u, reverseBits(u_input.a));
    return Struct_1(select(vec3<bool>(all(select(vec3<bool>(var_1.x, var_1.x, false), var_1.xzy, vec3<bool>(var_3.a.x, var_1.x, var_1.x))), false, true), !(!select(var_3.a, var_1.wxy, var_3.a.x)), var_3.b), false, -vec3<i32>(_wgslsmith_add_i32(0i, var_2), select(var_3.e.x, u_input.b.x, select(true, true, var_1.x)), select(~(-2147483647i), -11170i, any(vec2<bool>(var_1.x, var_3.b)))), ~u_input.d.x, max(var_3.e, -(~var_3.e)));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> i32 {
    global1 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_mult_u32(~0u, u_input.e);
    var var_1 = func_1(-(~_wgslsmith_mod_i32(1i, -1i)), -2147483647i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_3, arg_3, u_input.d.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -1254f) - _wgslsmith_f_op_f32(-353f - _wgslsmith_f_op_f32(f32(-1f) * -1608f)))));
    var var_3 = arg_3;
    return -(~u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.e;
    global3 = array<Struct_1, 13>();
    global2 = array<Struct_1, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-305f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(535f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-304f - _wgslsmith_f_op_f32(f32(-1f) * -926f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -616f)) * _wgslsmith_f_op_f32(f32(-1f) * -1453f)))));
    var var_1 = Struct_1(vec3<bool>(true, u_input.e >= ~min(962u, 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + var_0.x) == var_0.x), false, u_input.d, 11921i, vec4<i32>(max(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(28181i, u_input.d.x), u_input.b.x, -56253i), -2147483647i), countOneBits(func_4(_wgslsmith_add_i32(-2147483647i, 2147483647i), ~15360u, ~5150u, func_1(u_input.b.x, u_input.b.x))), -1i, u_input.d.x));
    let var_2 = global3[_wgslsmith_index_u32(4509u, 13u)];
    let var_3 = vec4<f32>(1342f, var_0.x, _wgslsmith_div_f32(-127f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, vec3<u32>(u_input.e, u_input.c >> (u_input.a % 32u), u_input.a), firstLeadingBit(vec3<u32>(u_input.e, min(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.e), vec2<u32>(u_input.a, 0u))), countOneBits(~0u))), abs(u_input.a));
}

