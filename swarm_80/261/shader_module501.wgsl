struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: i32;

var<private> global2: array<vec4<i32>, 27>;

var<private> global3: vec4<u32>;

var<private> global4: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<f32>(-588f, 280f, 1550f, -1329f), 1u, -1460f), Struct_1(vec4<f32>(189f, 286f, 2161f, -169f), 1u, 1273f), Struct_1(vec4<f32>(-1992f, 327f, -1509f, 1229f), 0u, -1025f), Struct_1(vec4<f32>(-1483f, 2486f, 851f, -1862f), 1u, 374f), Struct_1(vec4<f32>(-580f, -223f, -1725f, 1210f), 29864u, 1000f), Struct_1(vec4<f32>(2187f, -181f, 519f, 1239f), 13266u, -540f), Struct_1(vec4<f32>(-245f, 660f, 1423f, -540f), 1u, 128f), Struct_1(vec4<f32>(-1846f, -878f, -312f, -965f), 78549u, -540f), Struct_1(vec4<f32>(-145f, 508f, -171f, 470f), 1u, -1372f), Struct_1(vec4<f32>(-1049f, -1572f, 1010f, 498f), 1u, -167f), Struct_1(vec4<f32>(-1990f, 1014f, -1500f, -274f), 4294967295u, 530f), Struct_1(vec4<f32>(-946f, 710f, 881f, 1000f), 1u, 1037f), Struct_1(vec4<f32>(2470f, 155f, 1035f, -2232f), 67099u, 1748f), Struct_1(vec4<f32>(106f, -213f, -722f, -203f), 0u, -2148f), Struct_1(vec4<f32>(180f, 197f, -856f, -263f), 4294967295u, 883f), Struct_1(vec4<f32>(430f, -1000f, -324f, 2131f), 19509u, -482f), Struct_1(vec4<f32>(-716f, -1339f, 680f, -326f), 21406u, -2434f), Struct_1(vec4<f32>(1397f, 601f, -1000f, -1605f), 19749u, -789f), Struct_1(vec4<f32>(1000f, -952f, -390f, -282f), 0u, 116f), Struct_1(vec4<f32>(-343f, -863f, -774f, 175f), 24350u, -589f), Struct_1(vec4<f32>(1760f, 1924f, 1528f, 708f), 1u, -861f), Struct_1(vec4<f32>(1058f, 1196f, 1186f, -460f), 27516u, 1245f), Struct_1(vec4<f32>(705f, 769f, 787f, -580f), 905u, 574f), Struct_1(vec4<f32>(391f, 1000f, -707f, -769f), 0u, -466f), Struct_1(vec4<f32>(-868f, 277f, 916f, 322f), 6406u, 661f), Struct_1(vec4<f32>(-698f, -1000f, -1000f, 534f), 5886u, -1000f), Struct_1(vec4<f32>(1000f, 833f, 753f, -341f), 4294967295u, -1248f), Struct_1(vec4<f32>(1182f, 1105f, 2472f, -1220f), 1u, 349f), Struct_1(vec4<f32>(1116f, -841f, -552f, -1935f), 87295u, 2536f), Struct_1(vec4<f32>(-1000f, 152f, 890f, -656f), 4294967295u, -1503f), Struct_1(vec4<f32>(1000f, -566f, 802f, -760f), 0u, -1509f));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> u32 {
    global2 = array<vec4<i32>, 27>();
    return ~1u;
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    global1 = -26969i;
    global3 = vec4<u32>(10629u << (global3.x % 32u), 3174u, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, arg_0.b), u_input.c.x), _wgslsmith_div_u32(~_wgslsmith_mult_u32(arg_0.b, 37361u), u_input.c.x));
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * 257f)) + arg_0.a.x), 401f, -2194f, arg_0.a.x), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x) + 269f), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-arg_0.a.x)))));
    global1 = 2147483647i;
    let var_1 = ~(~(~u_input.c));
    return _wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(floor(global0[_wgslsmith_index_u32(func_3(), 8u)])));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(u_input.c.x, 31u)];
    let var_1 = -48177i;
    global0 = array<vec4<f32>, 8>();
    global3 = u_input.c;
    global3 = vec4<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, global3.x, 20005u), _wgslsmith_clamp_vec3_u32(vec3<u32>(90882u, u_input.c.x, 4294967295u) >> (vec3<u32>(15833u, 0u, var_0.b) % vec3<u32>(32u)), u_input.c.xyy, select(global3.yzy, vec3<u32>(1u, 1u, u_input.a), vec3<bool>(false, true, false)))), 33154u, _wgslsmith_mult_u32(1u, global3.x), var_0.b);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1706f - arg_0.a.x) * 226f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - 513f))), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-247f)))), func_3(), _wgslsmith_f_op_f32(f32(-1f) * -1499f));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    global4 = array<Struct_1, 31>();
    var var_0 = !(!vec2<bool>(all(!vec3<bool>(arg_2, arg_2, arg_2)), _wgslsmith_mult_u32(global3.x, arg_0.b) == (arg_0.b & 4294967295u)));
    let var_1 = select(vec4<bool>(any(select(!vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, false, arg_2), !vec3<bool>(var_0.x, arg_2, false))), any(select(!vec3<bool>(arg_2, arg_2, var_0.x), !vec3<bool>(false, false, arg_2), select(vec3<bool>(arg_2, false, false), vec3<bool>(false, true, arg_2), arg_2))), arg_2, !(!(!arg_2))), select(!vec4<bool>(any(vec3<bool>(true, var_0.x, true)), u_input.b < -2147483647i, false, select(var_0.x, false, arg_2)), vec4<bool>(true, !any(vec2<bool>(var_0.x, var_0.x)), all(vec4<bool>(false, true, false, false)), arg_2), vec4<bool>(true, false, var_0.x != var_0.x, arg_2)), false);
    global4 = array<Struct_1, 31>();
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.b, _wgslsmith_sub_u32(arg_0.b, ~(~_wgslsmith_div_u32(24802u, arg_0.b)))), 31u)];
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(global3.x | 0u, 8u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, -644f, var_2.c, arg_0.c) + global0[_wgslsmith_index_u32(4294967295u, 8u)]) - vec4<f32>(558f, -158f, -283f, 1453f)))), func_4(func_4(Struct_1(vec4<f32>(-447f, -1460f, arg_0.c, arg_0.c), func_3(), 1958f))).b, arg_0.c);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = 718f;
    let var_1 = global4[_wgslsmith_index_u32(1u, 31u)];
    let var_2 = func_5(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(func_2(arg_0)), 4294967295u, 621f)), firstLeadingBit(u_input.b), true);
    let var_3 = !(!all(vec4<bool>(true, false, true, true)) || all(vec4<bool>(true, true, true, true)));
    let var_4 = !select(select(select(select(vec2<bool>(var_3, false), vec2<bool>(false, var_3), vec2<bool>(var_3, var_3)), select(vec2<bool>(true, var_3), vec2<bool>(var_3, false), false), all(vec2<bool>(var_3, var_3))), vec2<bool>(true, all(vec2<bool>(true, true))), !select(vec2<bool>(false, var_3), vec2<bool>(var_3, false), vec2<bool>(false, false))), !(!select(vec2<bool>(var_3, true), vec2<bool>(var_3, var_3), vec2<bool>(var_3, var_3))), any(select(select(vec2<bool>(var_3, false), vec2<bool>(var_3, true), var_3), vec2<bool>(var_3, var_3), !var_3)));
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<f32> {
    var var_0 = all(select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), true), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false), -596f < arg_0.a.x), vec2<bool>(true, true), false), vec2<bool>(4294967295u >= func_3(), select(false, false, false) & true)));
    global2 = array<vec4<i32>, 27>();
    global2 = array<vec4<i32>, 27>();
    var var_1 = arg_0;
    var var_2 = all(vec4<bool>(all(vec2<bool>(true, true)), !any(vec3<bool>(true, false, true)), all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), false));
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(562f, -445f), _wgslsmith_f_op_vec2_f32(min(func_4(Struct_1(vec4<f32>(arg_0.c, 937f, arg_0.c, arg_0.c), ~5177u, _wgslsmith_div_f32(1000f, var_1.a.x))).a.xy, vec2<f32>(1000f, arg_0.c))), !(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = true;
    global4 = array<Struct_1, 31>();
    let var_2 = global4[_wgslsmith_index_u32(~5237u, 31u)];
    let var_3 = ~26394u;
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_3, u_input.a, 37499u), _wgslsmith_f_op_vec2_f32(step(var_2.a.yy, _wgslsmith_f_op_vec2_f32(func_6(func_1(global4[_wgslsmith_index_u32(~0u, 31u)], _wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(global3.x, 27u)], global2[_wgslsmith_index_u32(13798u, 27u)])), vec2<i32>(u_input.b, u_input.b) >> (~vec2<u32>(var_2.b, 81892u) % vec2<u32>(32u)))))), _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x), u_input.b ^ -34615i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)), func_5(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_2.c, var_2.a.x, -574f)), _wgslsmith_mult_u32(global3.x, 1u), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec4<f32>(932f, var_2.a.x, var_2.a.x, var_2.a.x), 23268u, var_2.c))).x), countOneBits(1i), true).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec4<f32>(var_2.c, var_2.c, 177f, 1628f), 1u, 1317f))).x)));
}

