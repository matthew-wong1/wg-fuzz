struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: vec3<u32>,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, true)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, true)), vec4<f32>(346f, -387f, -735f, -199f));

var<private> global1: array<vec4<u32>, 14>;

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, true)), vec4<f32>(-1000f, 1305f, -1086f, 192f)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, false)), vec4<f32>(-1282f, -753f, 578f, 650f)), Struct_2(Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, true)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true)), vec4<f32>(-3220f, 1999f, -1009f, -701f)), Struct_2(Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false)), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false)), vec4<f32>(1000f, -107f, 692f, 998f)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false)), Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false)), vec4<f32>(-1941f, -234f, 868f, 560f)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, true)), vec4<f32>(481f, -1317f, -445f, 855f)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, true)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false)), vec4<f32>(-1980f, -660f, -211f, 1000f)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, false)), vec4<f32>(-1000f, 863f, 846f, -1329f)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false)), vec4<f32>(-1026f, 531f, -248f, 1080f)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, true)), vec4<f32>(-846f, -829f, -1183f, 2453f)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, false)), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, false)), vec4<f32>(834f, -1571f, -1618f, -1000f)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, true)), vec4<f32>(-1772f, 1195f, 284f, 1000f)), Struct_2(Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, false)), vec4<f32>(-2324f, 860f, 1667f, 316f)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, true)), vec4<f32>(-667f, -226f, -1033f, 372f)), Struct_2(Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, true)), Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, false)), vec4<f32>(2901f, -901f, -738f, 1551f)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, true)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, false)), vec4<f32>(-158f, 1000f, 412f, -173f)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, false)), vec4<f32>(-502f, -1000f, 1951f, -348f)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, true)), vec4<f32>(1000f, -1357f, -725f, 1845f)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, true)), Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, true)), vec4<f32>(1272f, -1206f, 271f, 113f)), Struct_2(Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, true)), vec4<f32>(-180f, -975f, -1096f, -640f)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, true)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true)), vec4<f32>(1778f, -688f, 1281f, -493f)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, true)), vec4<f32>(2000f, 639f, 1000f, 2478f)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, false)), Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, true)), vec4<f32>(2198f, -432f, 682f, 550f)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, true)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true)), vec4<f32>(170f, -458f, 1537f, 601f)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, false)), Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false)), vec4<f32>(-1976f, -344f, 1691f, -107f)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, false)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, true)), vec4<f32>(905f, -1382f, -1139f, 1249f)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, true)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, true)), vec4<f32>(918f, 149f, -282f, 252f)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, true)), vec4<f32>(-856f, -631f, -349f, 232f)), Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false)), vec4<f32>(-140f, 1000f, 1060f, -136f)), Struct_2(Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, false)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, false)), vec4<f32>(-554f, 1000f, -690f, -402f)), Struct_2(Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false)), vec4<f32>(-507f, 279f, 582f, 312f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(global0.c.x));
    var var_1 = Struct_3(abs(countOneBits(max(0u, 4586u))) <= (select(~4294967295u, _wgslsmith_div_u32(54983u, 39825u), true) >> (0u % 32u)), true, Struct_1(!global0.b.b.yy, select(vec3<bool>(any(vec2<bool>(global0.b.b.x, false)), global0.a.b.x, true | global0.b.b.x), select(global0.b.b, vec3<bool>(false, true, global0.a.b.x), vec3<bool>(true, global0.b.b.x, true)), !global0.b.b)), 0i);
    var_0 = _wgslsmith_f_op_f32(-global0.c.x);
    global0 = global2[_wgslsmith_index_u32(~(~min(0u, 27590u)), 31u)];
    global0 = Struct_2(Struct_1(select(vec2<bool>(true, all(var_1.c.b)), vec2<bool>(global0.a.a.x, false), !var_1.c.b.x == var_1.a), select(select(global0.b.b, select(global0.a.b, var_1.c.b, var_1.c.b), !var_1.a), vec3<bool>(true, true, false), !global0.a.b)), var_1.c, vec4<f32>(global0.c.x, 902f, global0.c.x, _wgslsmith_f_op_f32(min(global0.c.x, _wgslsmith_f_op_f32(select(1503f, global0.c.x, true))))));
    return var_1.c.b;
}

fn func_2(arg_0: Struct_1) -> Struct_5 {
    var var_0 = Struct_2(arg_0, Struct_1(select(global0.a.b.yx, select(!global0.b.b.yy, !global0.b.b.zx, true | global0.a.a.x), global0.a.b.yz), func_3()), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(651f))), global0.c.x, global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1208f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.c, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.c.x, -569f, 1795f, -320f), vec4<f32>(global0.c.x, 285f, -1014f, 1217f)))) + global0.c)));
    return Struct_5(Struct_3(true, true, global0.a, ~(u_input.a << (_wgslsmith_sub_u32(65597u, 32158u) % 32u))), Struct_3(any(global0.b.b.xx), true, var_0.b, max(u_input.a, _wgslsmith_div_i32(1570i, ~u_input.a))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = Struct_1(global0.b.a, global0.a.b);
    var var_1 = _wgslsmith_f_op_f32(step(global0.c.x, 1509f));
    let var_2 = func_2(Struct_1(vec2<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(arg_2, true, global0.b.a.x, var_0.a.x), vec4<bool>(true, true, true, true))), true), select(!var_0.b, vec3<bool>(true, true, true), true)));
    var_0 = var_2.b.c;
    var var_3 = any(select(vec4<bool>(select(true, all(vec3<bool>(false, false, false)), var_2.a.c.b.x), !(u_input.a < var_2.b.d), true, var_0.b.x), vec4<bool>(false, false, true, var_0.b.x), select(select(select(vec4<bool>(arg_2, var_0.b.x, true, false), vec4<bool>(false, var_0.b.x, arg_2, var_2.b.a), global0.a.b.x), !vec4<bool>(var_2.a.b, true, false, var_0.a.x), !vec4<bool>(arg_2, global0.a.a.x, false, true)), !vec4<bool>(false, var_0.a.x, true, global0.b.b.x), true)));
    return -444f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(!vec2<bool>(false, any(vec4<bool>(global0.a.b.x, global0.a.b.x, false, false))), !global0.a.b.zz, select(!(!global0.b.b.xy), vec2<bool>(true, !global0.b.a.x), global0.c.x <= _wgslsmith_f_op_f32(-global0.c.x))), vec3<bool>(global0.b.a.x, true, !(firstLeadingBit(u_input.a) > ~u_input.a)));
    global2 = array<Struct_2, 31>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(-u_input.a, 40505u, var_0.b.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c.x)) - _wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(select(553f, 1000f, var_0.b.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.c.x, global0.c.x)), 877f));
    var var_2 = Struct_4(~_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(~21868u, 14u)] ^ global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 65158u), 14u)]), !(!global0.b.b.x), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(31833u, countOneBits(7206u), _wgslsmith_sub_u32(4294967295u, 34303u)), vec3<u32>(~0u, 39163u, ~1u)), 1u), global2[_wgslsmith_index_u32(~0u, 31u)], countOneBits(1i));
    global2 = array<Struct_2, 31>();
    var_2 = Struct_4(~select(vec4<u32>(~4294967295u, select(4294967295u, 1u, var_2.b), var_2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.c.x, var_2.c.x, 1u), global1[_wgslsmith_index_u32(var_2.c.x, 14u)])), ~(var_2.a ^ vec4<u32>(29765u, 48767u, 25215u, var_2.a.x)), !vec4<bool>(false, var_0.a.x, var_0.a.x, true)), var_0.a.x, abs(var_2.c), global2[_wgslsmith_index_u32(var_2.c.x, 31u)], var_2.e);
    global2 = array<Struct_2, 31>();
    var var_3 = global2[_wgslsmith_index_u32(var_2.a.x, 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(-3794i, var_2.c.x);
}

