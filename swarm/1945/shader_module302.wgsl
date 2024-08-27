struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: array<f32, 7> = array<f32, 7>(-1148f, -1000f, 251f, 1038f, 736f, 1032f, -1212f);

var<private> global2: Struct_2;

var<private> global3: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-623f, 1000f, 202f, -338f), vec4<f32>(1847f, -1622f, -555f, 963f), vec4<f32>(-501f, 815f, -2093f, -726f), vec4<f32>(1527f, -1233f, -1123f, -367f), vec4<f32>(1583f, 1066f, -102f, 463f), vec4<f32>(624f, 153f, 1152f, -935f), vec4<f32>(-114f, -1000f, -145f, -823f), vec4<f32>(-875f, -583f, 818f, -599f), vec4<f32>(298f, -301f, -1000f, 1176f), vec4<f32>(-2277f, 962f, 368f, -327f), vec4<f32>(434f, -1681f, -1251f, -1267f), vec4<f32>(1002f, -615f, 308f, 1680f), vec4<f32>(-1034f, 1103f, -1000f, 891f), vec4<f32>(-377f, 589f, -583f, 1951f), vec4<f32>(675f, -1494f, 2754f, -435f));

var<private> global4: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(8135u, vec3<bool>(false, false, false), vec2<i32>(24031i, -1326i), Struct_3(vec3<f32>(1284f, 1358f, 1447f), Struct_1(-1302f, vec3<f32>(390f, -1000f, -385f), vec2<i32>(1i, 14788i), vec2<bool>(true, true)))), Struct_4(115986u, vec3<bool>(true, false, true), vec2<i32>(1i, i32(-2147483648)), Struct_3(vec3<f32>(1000f, -2263f, -481f), Struct_1(409f, vec3<f32>(-729f, -1000f, 1751f), vec2<i32>(10189i, -1i), vec2<bool>(true, false)))), Struct_4(0u, vec3<bool>(true, true, true), vec2<i32>(60736i, -2549i), Struct_3(vec3<f32>(-450f, -318f, -1010f), Struct_1(1003f, vec3<f32>(313f, -180f, -632f), vec2<i32>(8672i, 1i), vec2<bool>(false, true)))), Struct_4(48054u, vec3<bool>(true, false, false), vec2<i32>(-1i, 0i), Struct_3(vec3<f32>(-338f, -1171f, 506f), Struct_1(-1611f, vec3<f32>(-1288f, -1000f, -1000f), vec2<i32>(11423i, 0i), vec2<bool>(true, true)))), Struct_4(51377u, vec3<bool>(true, false, true), vec2<i32>(-52266i, 1i), Struct_3(vec3<f32>(2501f, 706f, 1060f), Struct_1(-708f, vec3<f32>(275f, -661f, -104f), vec2<i32>(0i, 78240i), vec2<bool>(false, false)))), Struct_4(147773u, vec3<bool>(true, false, false), vec2<i32>(0i, 7578i), Struct_3(vec3<f32>(-1001f, 684f, 883f), Struct_1(-528f, vec3<f32>(1000f, 475f, -1757f), vec2<i32>(-1i, 30002i), vec2<bool>(false, true)))), Struct_4(4294967295u, vec3<bool>(false, false, false), vec2<i32>(16986i, 1i), Struct_3(vec3<f32>(-781f, -1954f, -446f), Struct_1(2101f, vec3<f32>(1470f, 582f, -1532f), vec2<i32>(20018i, 26421i), vec2<bool>(false, false)))));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global2 = Struct_2(_wgslsmith_mod_vec2_u32(u_input.e.xx, ~_wgslsmith_add_vec2_u32(u_input.d.zz, min(global2.a, vec2<u32>(1u, u_input.d.x)))));
    let var_0 = arg_0.b.xy;
    global2 = Struct_2(firstTrailingBit(select(_wgslsmith_sub_vec2_u32(vec2<u32>(68741u, 36628u), ~global2.a), vec2<u32>(u_input.d.x, ~global2.a.x), !vec2<bool>(arg_0.d.x, arg_0.d.x))));
    global3 = array<vec4<f32>, 15>();
    global3 = array<vec4<f32>, 15>();
    return !(!vec4<bool>(!(arg_0.c.x <= u_input.b.x), arg_0.d.x, !(u_input.e.x <= 87841u), all(select(vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, false), vec4<bool>(arg_0.d.x, arg_0.d.x, true, arg_0.d.x), vec4<bool>(false, true, arg_0.d.x, arg_0.d.x)))));
}

fn func_2() -> vec4<bool> {
    return select(vec4<bool>(any(select(func_3(Struct_1(-209f, vec3<f32>(-1656f, 185f, -2915f), vec2<i32>(u_input.b.x, 56190i), vec2<bool>(false, true))), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, -50444i), abs(vec3<i32>(u_input.c, u_input.c, 14682i))) <= u_input.b.x, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(all(vec4<bool>(false, true, false, true)), true, u_input.d.x != u_input.e.x)) || true);
}

fn func_1() -> Struct_4 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(global2.a.x, 7u)])), -530f)), _wgslsmith_f_op_f32(f32(-1f) * -846f));
    var var_1 = 15076u;
    global3 = array<vec4<f32>, 15>();
    var var_2 = any(!select(vec4<bool>(all(vec4<bool>(true, false, true, true)), any(vec2<bool>(false, false)), any(vec3<bool>(false, false, false)), false), func_2(), vec4<bool>(true, true, all(vec4<bool>(false, true, true, false)), true)));
    global3 = array<vec4<f32>, 15>();
    return Struct_4(67398u & ~u_input.a.x, func_3(Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, global1[_wgslsmith_index_u32(u_input.e.x, 7u)], var_0.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 241f, var_0.x), vec3<f32>(-2091f, 232f, var_0.x)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), -u_input.b.yx, select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec2<bool>(false, true))))).yzw, u_input.b.wz, global0[_wgslsmith_index_u32(187u, 10u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 10>();
    var var_0 = true;
    let var_1 = func_1();
    let var_2 = func_1().d;
    var var_3 = _wgslsmith_f_op_f32(-778f + -547f);
    var var_4 = func_1();
    global4 = array<Struct_4, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(8363u, 4294967295u)), global2.a), firstLeadingBit(u_input.d.xy)));
}

