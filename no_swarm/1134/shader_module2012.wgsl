struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<f32>(664f, -2045f, -496f), true), Struct_1(vec3<f32>(-1575f, -1522f, 1170f), true), Struct_1(vec3<f32>(870f, 1931f, 1085f), false), Struct_1(vec3<f32>(-318f, 1702f, -1648f), true), Struct_1(vec3<f32>(448f, -1000f, -1065f), false), Struct_1(vec3<f32>(383f, 708f, -364f), true), Struct_1(vec3<f32>(-608f, -1000f, -940f), true), Struct_1(vec3<f32>(-1896f, -1769f, -324f), false), Struct_1(vec3<f32>(1994f, 321f, -856f), false), Struct_1(vec3<f32>(-831f, -1286f, -804f), true), Struct_1(vec3<f32>(-812f, 1660f, -102f), false), Struct_1(vec3<f32>(-106f, 1168f, -386f), false), Struct_1(vec3<f32>(456f, 491f, 287f), true), Struct_1(vec3<f32>(681f, -1656f, -271f), false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> f32 {
    global1 = ~58860u;
    global2 = array<Struct_1, 14>();
    global1 = ~1u;
    let var_0 = select(vec2<bool>(false, !select(all(arg_0.a.zz), true, true)), arg_0.a.xz, arg_1);
    var var_1 = !(true || (all(arg_0.a) == any(arg_0.a)));
    return -853f;
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> u32 {
    global2 = array<Struct_1, 14>();
    let var_0 = ~(~vec4<i32>(1i, u_input.a, ~firstLeadingBit(u_input.b), u_input.e.x));
    return ~(~20246u);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(select(func_3(4294967295u, Struct_3(~4294967295u, !arg_0.d.b, arg_0, arg_0)), ~(~(~4294967295u)), arg_0.a.x), (u_input.d << (_wgslsmith_sub_u32(11091u, 1u) % 32u)) != _wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(u_input.c, u_input.a)), -_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 22530i), u_input.e.yy)), arg_0, Struct_2(select(!(!arg_0.a), !vec3<bool>(arg_0.c, arg_0.c, arg_0.a.x), vec3<bool>(false == arg_0.c, arg_0.d.b, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.a.x, _wgslsmith_f_op_f32(min(arg_0.b.x, arg_0.d.a.x)))), !arg_0.c, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.a.x + arg_0.d.a.x), arg_0.b.x, -174f), arg_0.a.x)));
    let var_1 = !any(select(select(vec4<bool>(true, var_0.c.c, arg_0.c, arg_0.a.x), !vec4<bool>(true, true, arg_0.c, true), !vec4<bool>(var_0.d.a.x, var_0.c.d.b, var_0.c.d.b, var_0.c.d.b)), select(vec4<bool>(arg_0.d.b, arg_0.d.b, false, var_0.c.c), select(vec4<bool>(false, false, arg_0.c, true), vec4<bool>(arg_0.d.b, arg_0.a.x, arg_0.a.x, arg_0.c), true), true), select(select(vec4<bool>(var_0.c.a.x, false, true, true), vec4<bool>(false, var_0.c.d.b, arg_0.a.x, false), arg_0.c), !vec4<bool>(false, var_0.b, var_0.c.a.x, true), true)));
    var var_2 = ~4294967295u;
    let var_3 = !(!vec2<bool>(arg_0.a.x, true));
    var var_4 = reverseBits(_wgslsmith_add_vec2_i32(u_input.e.zx, vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(-56376i, 2147483647i, 1i, 1i), vec4<i32>(u_input.b, -40858i, 27652i, u_input.e.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 5116i, 3335i, 1i), vec4<i32>(u_input.c, -2147483647i, u_input.b, u_input.a))))));
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_1.d.a;
    global2 = array<Struct_1, 14>();
    return arg_1.c;
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    let var_0 = arg_2.a;
    let var_1 = arg_3.c.d;
    var var_2 = Struct_3(~0u, false, Struct_2(!vec3<bool>(true, arg_3.d.a.x, arg_3.a > var_0), arg_2.d.b, true, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_3.d.d.a, vec3<f32>(var_1.a.x, 1000f, -419f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1103f, 277f, arg_2.d.d.a.x))), var_1.b)), Struct_2(!(!vec3<bool>(var_1.b, true, var_1.b)), arg_3.c.b, false, func_2(arg_2.d).d));
    let var_3 = max(32741u, 11867u);
    var_2 = arg_2;
    return func_2(arg_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<i32>(_wgslsmith_mult_i32(u_input.a, _wgslsmith_mult_i32(u_input.d, 36365i) & ~u_input.e.x), _wgslsmith_sub_i32(1i ^ u_input.e.x, u_input.b), select(2147483647i, _wgslsmith_div_i32(u_input.a, -615i), true) | -77142i, -2147483647i), -100f, Struct_3(4294967295u, !(!select(false, false, false)), Struct_2(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-894f, 628f))), _wgslsmith_f_op_f32(func_1(Struct_2(vec3<bool>(true, true, true), vec2<f32>(-206f, 526f), true, Struct_1(vec3<f32>(684f, -1410f, 168f), false)), false)) == 602f, global2[_wgslsmith_index_u32(47404u, 14u)]), func_4(firstTrailingBit(-68740i), Struct_3(1u, true, Struct_2(vec3<bool>(true, false, false), vec2<f32>(-1227f, 496f), true, global2[_wgslsmith_index_u32(4294967295u, 14u)]), func_2(Struct_2(vec3<bool>(false, false, false), vec2<f32>(1946f, 1418f), true, Struct_1(vec3<f32>(854f, -199f, 292f), true)))), vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(614f, -572f, 1599f), vec3<f32>(-997f, 833f, 231f))), all(vec2<bool>(false, false))))), Struct_3(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(25438u, 73729u, 29928u, 77159u)), vec4<u32>(1u, 1u, 1u, 1u)), true, Struct_2(vec3<bool>(any(vec2<bool>(false, false)), true, false), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-648f, -179f)))), false, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(931f, -218f, 403f)), false)), Struct_2(select(func_2(Struct_2(vec3<bool>(false, true, true), vec2<f32>(-925f, 300f), false, Struct_1(vec3<f32>(167f, 330f, 525f), true))).a, func_2(Struct_2(vec3<bool>(false, false, true), vec2<f32>(-880f, 2047f), true, global2[_wgslsmith_index_u32(4011u, 14u)])).a, func_4(-20227i, Struct_3(43158u, false, Struct_2(vec3<bool>(false, true, true), vec2<f32>(-155f, 2562f), true, global2[_wgslsmith_index_u32(13509u, 14u)]), Struct_2(vec3<bool>(false, false, false), vec2<f32>(-2863f, 1694f), true, Struct_1(vec3<f32>(1000f, 1608f, -783f), true))), vec2<bool>(false, false), global2[_wgslsmith_index_u32(4294967295u, 14u)]).a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(277f, 1000f), vec2<f32>(-322f, 1000f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-175f, 2154f))))), any(func_4(-1i, Struct_3(6241u, true, Struct_2(vec3<bool>(true, false, true), vec2<f32>(-313f, -1033f), true, Struct_1(vec3<f32>(-480f, -1741f, -493f), false)), Struct_2(vec3<bool>(false, true, false), vec2<f32>(-1013f, -929f), true, Struct_1(vec3<f32>(598f, 300f, 872f), true))), vec2<bool>(true, false), global2[_wgslsmith_index_u32(4294967295u, 14u)]).a), func_2(func_4(23052i, Struct_3(92743u, true, Struct_2(vec3<bool>(true, false, true), vec2<f32>(2011f, 516f), false, Struct_1(vec3<f32>(450f, 262f, 599f), false)), Struct_2(vec3<bool>(false, false, false), vec2<f32>(-971f, 1702f), false, Struct_1(vec3<f32>(-265f, -1127f, -104f), true))), vec2<bool>(false, true), global2[_wgslsmith_index_u32(50340u, 14u)])).d)));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 1u << ((~(~31545u) ^ func_3(1u, Struct_3(4294967295u, var_0.a.x, Struct_2(var_0.a, vec2<f32>(-2164f, var_0.b.x), var_0.d.b, Struct_1(vec3<f32>(-1000f, var_0.b.x, var_0.b.x), var_0.d.b)), Struct_2(vec3<bool>(var_0.d.b, var_0.c, false), vec2<f32>(1769f, 289f), var_0.c, Struct_1(var_0.d.a, false))))) % 32u)), 14u)];
    var var_2 = var_0.d.b;
    let var_3 = select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 52875u, 4294967295u, 61280u), vec4<u32>(84709u, 70032u, 0u, 4294967295u)), max(5600u, 24224u), abs(firstLeadingBit(4294967295u))) & vec3<u32>(func_3(_wgslsmith_add_u32(1u, 22338u), Struct_3(57640u, var_1.b, Struct_2(vec3<bool>(true, false, true), vec2<f32>(127f, -405f), var_0.c, global2[_wgslsmith_index_u32(5813u, 14u)]), Struct_2(vec3<bool>(var_0.c, var_0.d.b, false), vec2<f32>(var_1.a.x, var_0.d.a.x), var_1.b, global2[_wgslsmith_index_u32(0u, 14u)]))), _wgslsmith_add_u32(~9244u, 1u), abs(~79996u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(16101u, 32658u), vec2<u32>(1u, 55010u), vec2<u32>(51902u, 1u)), ~vec2<u32>(2546u, 0u)), _wgslsmith_sub_u32(1u, ~4294967295u)), countOneBits(~vec3<u32>(1u, 1u, 1u))), func_4((select(-13632i, u_input.c, true) & _wgslsmith_div_i32(1i, u_input.e.x)) >> (~(~34913u) % 32u), Struct_3(1u, true, Struct_2(!var_0.a, var_1.a.xz, true, var_0.d), Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(-var_1.a.zz), any(var_0.a.zy), var_0.d)), func_2(func_2(func_2(Struct_2(vec3<bool>(var_0.c, var_0.c, var_0.c), vec2<f32>(var_0.d.a.x, var_0.b.x), true, Struct_1(var_1.a, var_1.b))))).a.zx, global2[_wgslsmith_index_u32(~(~abs(16384u)), 14u)]).a);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_vec4_i32(min(vec4<i32>(1i, 10213i, 200i, u_input.c), vec4<i32>(u_input.a, -2147483647i, u_input.e.x, 51774i)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, -29801i, 54409i), vec4<i32>(u_input.c, 11719i, 1i, -1i))) ^ vec4<i32>(1i, -27649i, -1i, u_input.c >> (1u % 32u))), 80663i, vec2<u32>(129681u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, var_3.x, var_3.x)), abs(var_3))));
}

