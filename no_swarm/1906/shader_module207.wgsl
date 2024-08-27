struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_1(vec2<bool>(true, false), 1u), 0i, 723f, vec2<f32>(-1833f, 1278f), vec4<u32>(5842u, 4294967295u, 68059u, 4294967295u)), Struct_3(Struct_1(vec2<bool>(false, true), 1124u), 11647i, 736f, vec2<f32>(-973f, -426f), vec4<u32>(0u, 67545u, 4294967295u, 29352u)), Struct_3(Struct_1(vec2<bool>(true, true), 1u), 0i, -1237f, vec2<f32>(-366f, -134f), vec4<u32>(4294967295u, 4012u, 98037u, 88501u)), Struct_3(Struct_1(vec2<bool>(true, false), 61091u), 2147483647i, -1130f, vec2<f32>(-1000f, 1302f), vec4<u32>(65917u, 1u, 4294967295u, 1u)), Struct_3(Struct_1(vec2<bool>(false, false), 4294967295u), 2147483647i, 934f, vec2<f32>(-706f, -509f), vec4<u32>(0u, 18232u, 24929u, 10579u)), Struct_3(Struct_1(vec2<bool>(true, true), 4294967295u), -1i, 782f, vec2<f32>(-427f, 1028f), vec4<u32>(5775u, 4294967295u, 0u, 4294967295u)), Struct_3(Struct_1(vec2<bool>(false, true), 18564u), 1i, 523f, vec2<f32>(753f, 1263f), vec4<u32>(28794u, 1u, 1u, 17039u)), Struct_3(Struct_1(vec2<bool>(true, true), 8084u), 8172i, 642f, vec2<f32>(934f, 907f), vec4<u32>(1u, 4294967295u, 1u, 53403u)), Struct_3(Struct_1(vec2<bool>(true, false), 1u), 10268i, -224f, vec2<f32>(1341f, 1035f), vec4<u32>(109745u, 48386u, 32817u, 69015u)), Struct_3(Struct_1(vec2<bool>(true, true), 47450u), i32(-2147483648), -948f, vec2<f32>(1130f, -1780f), vec4<u32>(8155u, 4294967295u, 99308u, 27504u)), Struct_3(Struct_1(vec2<bool>(true, true), 1u), i32(-2147483648), -824f, vec2<f32>(256f, 542f), vec4<u32>(86824u, 36829u, 59351u, 4294967295u)), Struct_3(Struct_1(vec2<bool>(true, false), 1383u), i32(-2147483648), -585f, vec2<f32>(114f, 1000f), vec4<u32>(78532u, 3215u, 14028u, 10689u)), Struct_3(Struct_1(vec2<bool>(true, false), 1u), -8094i, 360f, vec2<f32>(-791f, 521f), vec4<u32>(11762u, 24686u, 4294967295u, 24743u)), Struct_3(Struct_1(vec2<bool>(false, false), 37063u), -60527i, 554f, vec2<f32>(-1394f, -159f), vec4<u32>(4294967295u, 0u, 0u, 26372u)), Struct_3(Struct_1(vec2<bool>(false, true), 4294967295u), 2147483647i, -885f, vec2<f32>(-299f, -385f), vec4<u32>(59856u, 1108u, 1u, 21537u)), Struct_3(Struct_1(vec2<bool>(true, true), 1u), 13995i, 355f, vec2<f32>(432f, -1541f), vec4<u32>(19047u, 4294967295u, 6839u, 0u)), Struct_3(Struct_1(vec2<bool>(true, false), 4294967295u), 18198i, 526f, vec2<f32>(1000f, 400f), vec4<u32>(6316u, 0u, 80771u, 4294967295u)), Struct_3(Struct_1(vec2<bool>(false, true), 28722u), -29326i, 1017f, vec2<f32>(524f, 1000f), vec4<u32>(29735u, 4294967295u, 11349u, 4294967295u)), Struct_3(Struct_1(vec2<bool>(true, false), 58201u), 53918i, -317f, vec2<f32>(-1000f, -1000f), vec4<u32>(0u, 16853u, 1u, 73982u)), Struct_3(Struct_1(vec2<bool>(true, false), 0u), -9552i, 653f, vec2<f32>(-1064f, 3146f), vec4<u32>(0u, 1u, 32739u, 1u)), Struct_3(Struct_1(vec2<bool>(false, false), 90989u), 0i, 793f, vec2<f32>(1000f, -162f), vec4<u32>(13057u, 1u, 3180u, 1u)), Struct_3(Struct_1(vec2<bool>(true, true), 4294967295u), 2147483647i, -277f, vec2<f32>(678f, 1000f), vec4<u32>(22800u, 23690u, 25906u, 4294967295u)));

var<private> global1: array<u32, 14>;

var<private> global2: array<i32, 19>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>) -> f32 {
    return -1771f;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_2 {
    global2 = array<i32, 19>();
    global0 = array<Struct_3, 22>();
    let var_0 = 86674u;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -269f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))) + arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_1, !vec2<bool>(arg_3.x, false))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(540f, _wgslsmith_f_op_f32(floor(arg_1.x))) + -1000f)));
    var var_2 = u_input.b.xxx;
    return Struct_2(Struct_1(select(!arg_0, !(!arg_2.a), arg_2.a.x), ~(~var_0 << (~var_2.x % 32u))), !(!select(select(vec3<bool>(arg_3.x, arg_0.x, true), vec3<bool>(arg_0.x, true, true), false), !vec3<bool>(arg_2.a.x, arg_3.x, arg_3.x), vec3<bool>(false, arg_0.x, arg_3.x))));
}

fn func_3() -> Struct_2 {
    return func_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(344f, -1075f), vec2<f32>(-398f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-262f, 538f))))), vec2<f32>(1f, 1f))), Struct_1(vec2<bool>(true, true), 0u), !select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true), func_1(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-964f, -394f) + vec2<f32>(-1000f, 1645f)), func_1(vec2<bool>(false, true), vec2<f32>(-1825f, -1652f), Struct_1(vec2<bool>(true, true), 40736u), vec2<bool>(false, false)).a, select(vec2<bool>(false, false), vec2<bool>(true, false), false)).a.a));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> bool {
    global2 = array<i32, 19>();
    let var_0 = func_1(!select(vec2<bool>(any(arg_0.b), true), arg_0.a.a, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-952f, _wgslsmith_div_f32(-293f, 243f), any(vec3<bool>(arg_0.a.a.x, true, arg_0.a.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1099f - 1096f) + 201f))), Struct_1(vec2<bool>(!arg_0.a.a.x, arg_0.a.a.x), 664u | arg_1.x), !(!vec2<bool>(true, func_1(arg_0.b.yy, vec2<f32>(414f, 409f), arg_0.a, arg_0.a.a).b.x)));
    let var_1 = func_3().a;
    var var_2 = var_0.a.a.x;
    var var_3 = global0[_wgslsmith_index_u32(~((arg_1.x >> (1u % 32u)) ^ reverseBits(0u)), 22u)];
    return true;
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> f32 {
    var var_0 = arg_1.d.x;
    var var_1 = arg_1.d.x;
    var var_2 = vec3<u32>(~23883u, 0u, u_input.b.x);
    let var_3 = true;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.d.x))) * arg_1.d.x), 1518f, !arg_0 | any(!arg_1.a.a))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.d.x)) - _wgslsmith_f_op_f32(arg_1.d.x * arg_1.d.x)) - _wgslsmith_f_op_f32(trunc(-867f))) + -1988f));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = vec3<f32>(arg_1, 1901f, -1000f);
    var var_1 = !vec2<bool>(!any(!arg_0.b.xy), true);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(~(-abs(u_input.a.x))) & min(0i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(global2[_wgslsmith_index_u32(70697u, 19u)], 14916i)), vec2<i32>(-1i) * -u_input.a.xx));
    let var_1 = reverseBits(vec2<i32>(_wgslsmith_mult_i32(abs(-global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 14u)], 14u)], 19u)]), u_input.a.x), 1i));
    let var_2 = func_6(func_1(vec2<bool>(true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(289f, -562f)), vec2<f32>(1f, 1f)), Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, true), true), 59232u), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), _wgslsmith_f_op_f32(func_5(!func_4(func_3(), vec2<u32>(23527u, global1[_wgslsmith_index_u32(422u, 14u)])), Struct_3(func_3().a, u_input.a.x, -268f, vec2<f32>(_wgslsmith_f_op_f32(101f + -1480f), _wgslsmith_f_op_f32(-754f - 1770f)), ~u_input.b))), firstTrailingBit(~(vec4<i32>(-1i, u_input.a.x, 1i, 0i) ^ ~vec4<i32>(1i, u_input.c.x, -1i, global2[_wgslsmith_index_u32(u_input.b.x, 19u)]))));
    global1 = array<u32, 14>();
    let var_3 = countOneBits(~_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 2147483647i, -1916i, -11020i) & u_input.a, -_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(-7468i, global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)], -2147483647i))));
    let var_4 = select(vec4<bool>(false, var_2.a.x, any(select(select(vec4<bool>(var_2.a.x, var_2.a.x, true, var_2.a.x), vec4<bool>(false, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, false)), !vec4<bool>(false, false, var_2.a.x, false), select(vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.a.x), vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, false, false, false)))), func_3().a.a.x), select(select(select(select(vec4<bool>(true, var_2.a.x, true, true), vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, true), var_2.a.x), !vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, false, var_2.a.x, false)), select(vec4<bool>(var_2.a.x, false, var_2.a.x, true), select(vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, true, var_2.a.x, false), true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(var_2.a.x, true, false, var_2.a.x), vec4<bool>(false, true, false, false), vec4<bool>(var_2.a.x, false, false, var_2.a.x))), select(vec4<bool>(true, any(vec4<bool>(false, true, true, false)), var_2.a.x, false), !vec4<bool>(var_2.a.x, var_2.a.x, false, var_2.a.x), vec4<bool>(true, true, !var_2.a.x, var_2.a.x)), false), select(!(!select(vec4<bool>(false, false, var_2.a.x, var_2.a.x), vec4<bool>(false, var_2.a.x, var_2.a.x, var_2.a.x), true)), select(vec4<bool>(!var_2.a.x, select(true, var_2.a.x, true), false, var_2.a.x), !(!vec4<bool>(var_2.a.x, var_2.a.x, false, false)), any(var_2.a)), vec4<bool>(true, any(vec3<bool>(true, var_2.a.x, var_2.a.x)), ~var_2.b < func_1(var_2.a, vec2<f32>(218f, -1852f), var_2, var_2.a).a.b, global1[_wgslsmith_index_u32(0u << (u_input.b.x % 32u), 14u)] >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.wx))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-609f + 201f))))), ~(-(~(~1141i))));
}

