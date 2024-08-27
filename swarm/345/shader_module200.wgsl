struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(2147483647i, vec3<f32>(-1028f, 1476f, -1022f)), Struct_4(32513i, vec3<f32>(232f, -170f, 1000f)), Struct_4(2147483647i, vec3<f32>(154f, -213f, 340f)), Struct_4(-1i, vec3<f32>(1087f, -1654f, -1238f)), Struct_4(1i, vec3<f32>(1242f, 1118f, -1000f)), Struct_4(i32(-2147483648), vec3<f32>(-596f, 1000f, 1037f)), Struct_4(0i, vec3<f32>(1183f, 355f, -1000f)), Struct_4(64150i, vec3<f32>(799f, 1095f, -385f)), Struct_4(-1i, vec3<f32>(861f, 1409f, 251f)), Struct_4(31110i, vec3<f32>(-1039f, 624f, -514f)), Struct_4(-5787i, vec3<f32>(-1000f, 744f, -1323f)), Struct_4(1i, vec3<f32>(391f, -304f, -1005f)), Struct_4(-46985i, vec3<f32>(-1000f, 415f, 1106f)), Struct_4(-1i, vec3<f32>(711f, 1068f, -1014f)), Struct_4(-2356i, vec3<f32>(-279f, -237f, -1009f)), Struct_4(27897i, vec3<f32>(617f, -1103f, 591f)), Struct_4(-43480i, vec3<f32>(-1389f, -1000f, -940f)), Struct_4(i32(-2147483648), vec3<f32>(-349f, 145f, 248f)), Struct_4(-31953i, vec3<f32>(446f, -165f, -365f)), Struct_4(1i, vec3<f32>(-260f, -216f, -1583f)), Struct_4(6773i, vec3<f32>(742f, -2039f, 2272f)), Struct_4(2147483647i, vec3<f32>(610f, 1254f, 288f)), Struct_4(-1i, vec3<f32>(-1540f, -235f, 1000f)), Struct_4(-26858i, vec3<f32>(-2424f, 1000f, 121f)), Struct_4(i32(-2147483648), vec3<f32>(1182f, 121f, 880f)));

var<private> global1: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(1i, vec3<f32>(1290f, 113f, 1162f)), Struct_4(i32(-2147483648), vec3<f32>(-1000f, -755f, -204f)), Struct_4(i32(-2147483648), vec3<f32>(-219f, 901f, 1312f)), Struct_4(-19710i, vec3<f32>(596f, 1946f, -1968f)), Struct_4(-6880i, vec3<f32>(1784f, -1073f, -690f)), Struct_4(47347i, vec3<f32>(-1000f, -1518f, 203f)), Struct_4(2786i, vec3<f32>(1212f, 1000f, -549f)), Struct_4(-1i, vec3<f32>(-766f, 653f, -2010f)), Struct_4(-52566i, vec3<f32>(131f, -141f, 1169f)), Struct_4(2923i, vec3<f32>(725f, -1157f, 598f)), Struct_4(0i, vec3<f32>(226f, -504f, -1756f)), Struct_4(-1i, vec3<f32>(1000f, -208f, 896f)), Struct_4(26638i, vec3<f32>(-398f, -456f, 704f)), Struct_4(-19768i, vec3<f32>(-548f, -1841f, -872f)), Struct_4(-1i, vec3<f32>(-544f, -355f, -340f)), Struct_4(i32(-2147483648), vec3<f32>(-644f, -1127f, -1818f)), Struct_4(10846i, vec3<f32>(-1575f, -666f, 594f)), Struct_4(27217i, vec3<f32>(616f, 284f, -1307f)), Struct_4(-114602i, vec3<f32>(378f, -1516f, 818f)));

var<private> global2: bool = false;

var<private> global3: vec4<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>) -> vec4<bool> {
    var var_0 = !global3.xz;
    global1 = array<Struct_4, 19>();
    return !(!(!select(select(vec4<bool>(global3.x, var_0.x, false, true), vec4<bool>(false, global3.x, false, true), vec4<bool>(false, true, var_0.x, global3.x)), select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(global3.x, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, global3.x, false)), true)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1047f + -539f))))), ~vec3<i32>(1i, -firstLeadingBit(-23283i), 31332i), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(669f + 622f), -1796f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -956f), _wgslsmith_f_op_f32(sign(1061f))), global3.x)), 1f, vec4<i32>(-51590i << (~u_input.b.x % 32u), ~(i32(-1i) * -11716i), -2147483647i, _wgslsmith_mult_i32(select(16832i, -44642i, global3.x), countOneBits(2147483647i)))), Struct_2(countOneBits(1u), vec2<u32>(select(u_input.a, u_input.a << (u_input.a % 32u), select(false, false, global3.x)), 1u), Struct_1(select(select(vec2<bool>(global3.x, false), global3.yw, global3.yx), vec2<bool>(false, true), func_2(vec3<f32>(163f, 1096f, 189f), u_input.b).yy), _wgslsmith_f_op_f32(-357f + _wgslsmith_f_op_f32(f32(-1f) * -1231f)), -425f, vec4<i32>(1i, 1i, 1i, 1i))));
    let var_1 = var_0.d;
    let var_2 = Struct_4(var_0.b.x, vec3<f32>(var_1.c.b, _wgslsmith_f_op_f32(-692f * -792f), var_0.d.c.c));
    global2 = !(!global3.x);
    var var_3 = vec3<u32>(14223u, _wgslsmith_clamp_u32(79629u, 8882u, _wgslsmith_mult_u32(select(_wgslsmith_dot_vec2_u32(var_0.d.b, var_1.b), ~0u, var_1.c.a.x | true), var_0.d.b.x)), 84178u);
    return vec4<bool>(var_1.c.a.x && any(!(!vec2<bool>(false, global3.x))), global3.x, false, false);
}

fn func_1(arg_0: i32) -> bool {
    global3 = select(vec4<bool>(!global3.x, true | ((u_input.a == 39193u) != any(vec4<bool>(true, true, false, true))), any(select(func_2(vec3<f32>(312f, -1188f, -951f), u_input.b), !vec4<bool>(global3.x, global3.x, global3.x, global3.x), func_3())), all(vec4<bool>(false | global3.x, global3.x, all(vec3<bool>(false, global3.x, true)), select(false, global3.x, false)))), !vec4<bool>(global3.x, true, u_input.a == u_input.b.x, true), !func_3());
    global0 = array<Struct_4, 25>();
    var var_0 = abs(max(~(~select(vec4<u32>(11274u, u_input.b.x, 4294967295u, 98567u), vec4<u32>(u_input.b.x, 34930u, 22462u, 4294967295u), true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.b.x, 107521u, u_input.a, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(26983u, 1u, 4294967295u, 1u), vec4<u32>(1u, 4294967295u, u_input.a, u_input.b.x))) >> (select(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), ~vec4<u32>(0u, u_input.b.x, 99018u, u_input.a), u_input.b.x >= u_input.b.x) % vec4<u32>(32u))));
    let var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(select(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 1u), u_input.b), abs(u_input.b)) >> (~(~var_0.x) % 32u), ~_wgslsmith_div_u32(var_0.x, ~85610u), true)), 19u)];
    var var_2 = Struct_4(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(744f)), -1168f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x)))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x)), _wgslsmith_f_op_f32(-var_1.b.x)), var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.x))))));
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 19>();
    var var_0 = select(vec3<bool>(func_1(_wgslsmith_div_i32(~1i, 16913i)), ~u_input.a > 0u, !select(true, any(vec4<bool>(true, false, global3.x, global3.x)), global3.x)), func_3().zzx, all(func_3().xy));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1929f, -1222f, 542f, -1797f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1085f, 141f, 1368f, 409f), vec4<f32>(1005f, -1000f, -955f, 1546f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1166f, 826f, 888f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 2063f, -1193f, -932f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-593f, 1000f, 1666f, -360f) + vec4<f32>(-785f, -1191f, 203f, -546f)))), !vec4<bool>(global3.x, true, true, true)))));
    let var_2 = !global3.wy;
    let var_3 = var_0.zx;
    var var_4 = var_0.x;
    var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(u_input.b.x, ~0u, ~4684u) | vec3<u32>(~11423u, ~u_input.b.x, min(u_input.b.x, 14848u)), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, 4294967295u)), (vec3<u32>(u_input.b.x, 0u, u_input.a) & vec3<u32>(1u, 851u, 37820u)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.a, 49432u), vec3<u32>(u_input.a, 4294967295u, u_input.b.x)))), ~_wgslsmith_sub_vec2_i32(-vec2<i32>(1i, 1i), -_wgslsmith_div_vec2_i32(vec2<i32>(63087i, 1i), vec2<i32>(-46909i, 1i))), _wgslsmith_f_op_f32(ceil(var_1.x)), -2010f, 4294967295u);
}

