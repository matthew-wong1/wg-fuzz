struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
    e: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-758f, 1590f, -1090f, -550f), vec4<f32>(-170f, 1697f, 169f, 1452f), vec4<f32>(-1000f, 1000f, -2119f, -188f), vec4<f32>(-126f, -1203f, 1182f, 1024f), vec4<f32>(381f, -2925f, 203f, -794f), vec4<f32>(1065f, -1090f, -2585f, 1563f));

var<private> global1: array<vec4<bool>, 14>;

var<private> global2: array<vec3<bool>, 1>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: vec4<bool>) -> f32 {
    global1 = array<vec4<bool>, 14>();
    global2 = array<vec3<bool>, 1>();
    var var_0 = arg_0;
    var_0 = Struct_5(var_0.a);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a, arg_0.a, 706f)))))), !arg_2.x, vec2<bool>(u_input.d != u_input.c.x, !(var_0.a < -847f)), all(select(select(vec4<bool>(arg_2.x, arg_2.x, true, true), global1[_wgslsmith_index_u32(u_input.d, 14u)], arg_2), vec4<bool>(false, true, false, arg_2.x), arg_2.x)), ~vec3<i32>(select(0i, 1i, false), u_input.b.x, ~0i)), select(~min(vec4<i32>(42218i, u_input.a.x, 1412i, u_input.a.x), ~vec4<i32>(-16087i, u_input.b.x, -2147483647i, u_input.b.x)), ~(-vec4<i32>(-16156i, u_input.a.x, -1i, u_input.a.x)), all(select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, arg_2.x, arg_2.x), false), !arg_2.wyy, u_input.a.x <= u_input.a.x))), -978f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -1000f)));
    return 1796f;
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = vec4<f32>(-896f, arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 791f) + _wgslsmith_f_op_f32(round(1869f))), _wgslsmith_f_op_f32(func_3(Struct_5(arg_0.x), true, select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false))), all(vec2<bool>(true, false)) != true)), -399f), 1425f);
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1814f, -1000f) - var_0.wzw)), u_input.b.x >= (u_input.a.x | u_input.a.x), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), true), false, vec3<i32>(u_input.a.x, -5175i, u_input.b.x | u_input.b.x)), vec4<i32>(-2147483647i, -u_input.a.x, -_wgslsmith_mult_i32(-6643i, u_input.a.x), ~48081i), -367f, _wgslsmith_f_op_f32(f32(-1f) * -1380f)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1122f, arg_0.x, -313f) - var_0.yyx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(268f, arg_0.x, -604f), var_0.zwy)) - vec3<f32>(1218f, var_0.x, 1231f))), all(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(71023u, u_input.d)), 14u)]), select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), !all(global2[_wgslsmith_index_u32(u_input.c.x, 1u)])), true, _wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(-1i), 1i, -30425i), -select(u_input.a, u_input.a, global2[_wgslsmith_index_u32(1u, 1u)]), ~(~vec3<i32>(u_input.b.x, 1i, 19553i)))), (all(vec2<bool>(true, true)) | any(global1[_wgslsmith_index_u32(17540u, 14u)])) | false, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(536f + var_0.x)), _wgslsmith_f_op_f32(ceil(-2111f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, arg_0.x), -304f)) - _wgslsmith_f_op_f32(select(var_0.x, -229f, true)))), _wgslsmith_f_op_f32(exp2(arg_0.x)));
    var var_2 = -firstLeadingBit(-25248i);
    var var_3 = ~(-2147483647i);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(max(abs(u_input.c.x), u_input.c.x), 6u)]), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.d, 1u), 6u)])) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.c.x, 6u)] - global0[_wgslsmith_index_u32(72590u, 6u)]) - _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 6u)])) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 25401u, 37113u), u_input.c.xwz) ^ reverseBits(54893u), 6u)]))));
    return Struct_3(var_1.a, Struct_1(var_1.a.a.a, var_1.c, select(!(!vec2<bool>(var_1.a.a.c.x, var_1.b.b)), !(!var_1.a.a.c), select(var_1.a.a.c, select(vec2<bool>(false, false), vec2<bool>(var_1.c, var_1.a.a.b), false), true)), (u_input.d >> ((u_input.d >> (72868u % 32u)) % 32u)) == countOneBits(u_input.d), u_input.a), any(!select(vec2<bool>(true, var_1.a.a.c.x), vec2<bool>(var_1.b.c.x, var_1.b.c.x), true)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.a.x, 1604f), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_1.a.a.a.x, arg_0.x, var_1.b.c.x))))))), var_1.d.x);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<bool>) -> Struct_3 {
    global2 = array<vec3<bool>, 1>();
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    global2 = array<vec3<bool>, 1>();
    let var_0 = !arg_0.c;
    global2 = array<vec3<bool>, 1>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-831f)) + _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x));
    var_1 = -660f;
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> vec3<i32> {
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-432f, arg_1.x, 1813f) - arg_1.xwx) - vec3<f32>(-822f, -675f, arg_1.x))), true, vec2<bool>(true, !(u_input.d == u_input.c.x)), true, vec3<i32>(~2147483647i, u_input.a.x, 36330i)), func_4(func_2(vec2<f32>(_wgslsmith_f_op_f32(round(502f)), _wgslsmith_f_op_f32(trunc(arg_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -345f), abs(~u_input.a), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), true), any(vec2<bool>(true, true)))));
    return var_0.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(-_wgslsmith_sub_vec3_i32(-vec3<i32>(37504i, 2147483647i, -1i) ^ _wgslsmith_mod_vec3_i32(u_input.a, u_input.a), -(u_input.a & u_input.a)), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b.x, ~2147483647i, reverseBits(u_input.a.x)), -u_input.a));
    global1 = array<vec4<bool>, 14>();
    var var_1 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, abs(~1i), firstLeadingBit(1i), firstTrailingBit(var_0.x)), vec4<i32>(var_0.x, 34892i, -max(var_0.x, var_0.x), 1i));
    var_0 = func_1(reverseBits(u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, -492f))))), _wgslsmith_f_op_f32(max(1451f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1567f - -1000f)))), 324f, _wgslsmith_f_op_f32(f32(-1f) * -1108f)));
    let var_2 = vec3<bool>((!func_2(vec2<f32>(2739f, 1831f)).c & true) || func_4(func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-511f, 1000f), vec2<f32>(1272f, 609f), vec2<bool>(false, false)))), 1171f, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1746f, -910f) + vec2<f32>(-725f, 534f))).a.b.zxy, vec2<bool>(true, true)).b.b, func_5(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-421f, -580f, -1594f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(607f, -498f, -1102f))), false, select(vec2<bool>(false, true), func_2(vec2<f32>(-392f, -883f)).b.c, vec2<bool>(true, true)), false, vec3<i32>(reverseBits(u_input.b.x), 38639i, var_1.x)), Struct_3(Struct_2(Struct_1(vec3<f32>(-487f, 637f, 1000f), true, vec2<bool>(false, true), false, u_input.a), ~vec4<i32>(0i, u_input.b.x, 29259i, u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -279f), -169f), Struct_1(vec3<f32>(-398f, 210f, -722f), true, func_4(Struct_3(Struct_2(Struct_1(vec3<f32>(1678f, 1095f, -638f), true, vec2<bool>(true, true), true, vec3<i32>(-2147483647i, 2147483647i, -1i)), vec4<i32>(0i, -1i, 0i, 1i), -1835f, -814f), Struct_1(vec3<f32>(-1038f, 2076f, 249f), false, vec2<bool>(false, false), false, vec3<i32>(-2147483647i, u_input.a.x, var_0.x)), true, vec2<f32>(677f, 395f), -733f), -1790f, u_input.a, vec2<bool>(false, true)).b.c, true, func_1(u_input.d, vec4<f32>(496f, 1690f, 552f, 1801f))), true & select(false, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(143f, -193f)), _wgslsmith_f_op_f32(226f * func_4(Struct_3(Struct_2(Struct_1(vec3<f32>(1409f, -2931f, -111f), false, vec2<bool>(true, true), true, var_1.xzx), vec4<i32>(20721i, u_input.a.x, 0i, -2147483647i), -580f, 1069f), Struct_1(vec3<f32>(511f, -453f, 309f), true, vec2<bool>(false, true), false, var_1.yzx), true, vec2<f32>(601f, 757f), -590f), 1600f, vec3<i32>(var_1.x, u_input.a.x, u_input.b.x), vec2<bool>(true, false)).a.c))).b.d, true);
    global2 = array<vec3<bool>, 1>();
    var var_3 = func_5(func_5(func_5(func_5(func_2(vec2<f32>(443f, 537f)).a.a, Struct_3(Struct_2(Struct_1(vec3<f32>(-181f, 466f, 1000f), false, var_2.xy, var_2.x, vec3<i32>(7672i, var_0.x, -39956i)), vec4<i32>(var_0.x, -65420i, -1i, -2147483647i), 1000f, -966f), Struct_1(vec3<f32>(572f, -679f, -637f), true, var_2.xy, true, var_1.wzy), true, vec2<f32>(-544f, -259f), 197f)).b, Struct_3(func_4(Struct_3(Struct_2(Struct_1(vec3<f32>(133f, -826f, -1000f), false, var_2.xx, false, u_input.a), vec4<i32>(var_1.x, u_input.a.x, -1i, 1i), 676f, 655f), Struct_1(vec3<f32>(-566f, -368f, 2126f), var_2.x, var_2.xy, var_2.x, vec3<i32>(u_input.a.x, var_1.x, var_0.x)), false, vec2<f32>(1283f, 1333f), 770f), -1634f, u_input.a, var_2.xx).a, func_5(Struct_1(vec3<f32>(-1000f, 1145f, 1000f), false, vec2<bool>(var_2.x, true), true, var_1.xwy), Struct_3(Struct_2(Struct_1(vec3<f32>(-920f, 1174f, -453f), true, vec2<bool>(true, var_2.x), false, vec3<i32>(u_input.b.x, -58233i, var_0.x)), vec4<i32>(31521i, u_input.b.x, var_0.x, var_0.x), 746f, 745f), Struct_1(vec3<f32>(1000f, -1282f, 432f), var_2.x, vec2<bool>(var_2.x, var_2.x), false, vec3<i32>(var_0.x, var_1.x, var_1.x)), true, vec2<f32>(1929f, 1000f), 1452f)).a.a, false, vec2<f32>(884f, 1065f), _wgslsmith_f_op_f32(-1575f - -974f))).b, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1200f, 1440f)))).a.a, func_2(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_5(2058f), all(global2[_wgslsmith_index_u32(1u, 1u)]), vec4<bool>(true, var_2.x, false, false))), _wgslsmith_f_op_f32(f32(-1f) * -577f))));
    let var_4 = var_3.a;
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.a);
}

