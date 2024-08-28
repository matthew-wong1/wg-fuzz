struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
    d: Struct_3,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(1055f, 790f, 401f, 2731f), vec4<f32>(1359f, -113f, -916f, -1150f), vec4<f32>(-204f, 666f, 1000f, 1000f), vec4<f32>(1216f, -434f, -1336f, -1152f), vec4<f32>(644f, 1179f, 1000f, 1503f), vec4<f32>(1000f, -1485f, -225f, 823f), vec4<f32>(1000f, -505f, 1000f, 962f), vec4<f32>(-233f, -570f, 703f, -461f), vec4<f32>(-925f, 1729f, 107f, -1008f), vec4<f32>(-1153f, 749f, -268f, -406f), vec4<f32>(-460f, -1725f, -2636f, 849f), vec4<f32>(948f, -1460f, 186f, 525f), vec4<f32>(1000f, 390f, -748f, -165f), vec4<f32>(-469f, 802f, -1735f, 665f), vec4<f32>(-423f, -2170f, -385f, -1000f), vec4<f32>(-1310f, -1000f, -336f, 1164f), vec4<f32>(1689f, 1034f, 1091f, 563f), vec4<f32>(1030f, -1177f, 433f, -2119f), vec4<f32>(-1021f, -937f, -1974f, 112f), vec4<f32>(487f, -1167f, 201f, -1769f), vec4<f32>(-1308f, -527f, 1977f, 1369f));

var<private> global2: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(i32(-2147483648), -8793i, -1i), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(8650i, 2147483647i, -33690i), vec3<i32>(42287i, 0i, 48662i), vec3<i32>(1i, 27155i, -1i), vec3<i32>(i32(-2147483648), 18154i, -10679i), vec3<i32>(-19921i, i32(-2147483648), -55772i), vec3<i32>(-15998i, 1i, 15849i), vec3<i32>(1i, 0i, 17477i), vec3<i32>(19061i, i32(-2147483648), -1713i), vec3<i32>(0i, 1i, -1i), vec3<i32>(-17376i, -26225i, 25075i), vec3<i32>(-69446i, -28689i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(-38210i, 1i, -1i), vec3<i32>(1i, -1i, 2147483647i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_3(-130f, vec2<bool>(arg_3.x <= -1000f, all(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), !vec2<bool>(_wgslsmith_f_op_f32(arg_3.x * arg_3.x) == _wgslsmith_f_op_f32(arg_3.x + -483f), false), reverseBits(~min(vec2<i32>(2147483647i, arg_2.x) ^ u_input.a.xy, arg_2 & vec2<i32>(arg_1, arg_1))));
    var var_1 = Struct_2(vec3<bool>(false, true, all(select(vec2<bool>(var_0.c.x, true), vec2<bool>(var_0.b.x, var_0.b.x), var_0.b.x)) & select(all(vec4<bool>(false, true, false, var_0.c.x)), all(vec4<bool>(var_0.c.x, var_0.c.x, false, true)), var_0.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_3))), arg_2.x, 217f);
    let var_2 = var_0;
    let var_3 = Struct_1(~var_2.d, ~_wgslsmith_mod_i32(abs(arg_2.x >> (0u % 32u)), i32(-1i) * -62200i), !(!vec4<bool>(false, var_0.b.x, false | var_1.a.x, true)), _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(37029u, u_input.d), vec2<u32>(1u, u_input.d))), _wgslsmith_sub_u32(~u_input.d, ~_wgslsmith_sub_u32(4294967295u, u_input.c.x))));
    global2 = array<vec3<i32>, 16>();
    return !vec2<bool>(var_2.b.x, true & any(vec4<bool>(false, false, false, var_2.b.x)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> Struct_4 {
    global1 = array<vec4<f32>, 21>();
    var var_0 = -31038i;
    global2 = array<vec3<i32>, 16>();
    var var_1 = Struct_2(vec3<bool>(false, true, true), vec2<f32>(arg_1.d, arg_1.d), -(arg_1.c << (20941u % 32u)), -1000f);
    var var_2 = var_1.a.zz;
    return Struct_4(_wgslsmith_add_vec3_u32(~u_input.c.wzz, vec3<u32>(u_input.d, arg_0.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(3416u, 1u), _wgslsmith_mod_u32(15046u, u_input.d)))), arg_1, 0i, Struct_3(_wgslsmith_f_op_f32(1532f * _wgslsmith_f_op_f32(-arg_1.b.x)), vec2<bool>(all(select(vec4<bool>(false, false, false, var_2.x), vec4<bool>(var_1.a.x, var_2.x, true, var_1.a.x), arg_1.a.x)), arg_1.a.x), select(var_1.a.yy, select(select(arg_1.a.zx, vec2<bool>(false, true), arg_2), func_3(1i, -40247i, vec2<i32>(8591i, 2147483647i), arg_1.b), arg_1.a.zz), !select(arg_1.a.yx, arg_1.a.zy, arg_1.a.zz)), reverseBits(vec2<i32>(-1i) * -u_input.a.xy)), arg_1.b);
}

fn func_1() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.d, 28u)];
    var var_1 = func_2(vec2<u32>(~(~_wgslsmith_mult_u32(var_0.a.x, var_0.a.x)), ~(var_0.a.x & var_0.a.x) | u_input.c.x), var_0.b, any(select(!(!vec4<bool>(var_0.b.a.x, true, false, false)), vec4<bool>(true, !var_0.d.c.x, true, true), vec4<bool>(true, true, true, true))), var_0.b.a.x);
    global2 = array<vec3<i32>, 16>();
    var var_2 = -1i;
    var var_3 = func_2(~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(11324u, var_1.a.x), var_1.a.zy) << (firstLeadingBit(var_0.a.yx) % vec2<u32>(32u)), abs(vec2<u32>(var_0.a.x, 71482u))), var_0.b, true, !((false == var_0.b.a.x) || var_0.d.b.x) | var_1.b.a.x).b;
    return Struct_1(vec2<i32>(~var_0.b.c, _wgslsmith_sub_i32(-var_3.c, max(u_input.a.x, u_input.b)) << (var_0.a.x % 32u)), 0i, vec4<bool>(var_0.d.b.x, any(!func_3(u_input.a.x, -20645i, vec2<i32>(var_0.d.d.x, var_1.d.d.x), vec2<f32>(-1268f, var_1.e.x))), all(!select(vec4<bool>(false, false, true, false), vec4<bool>(var_0.d.c.x, true, true, false), true)), select(true, false, true)), var_1.a.x);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    global0 = array<Struct_4, 28>();
    global1 = array<vec4<f32>, 21>();
    let var_0 = _wgslsmith_f_op_f32(1467f + func_2(select(~vec2<u32>(1u, 65220u), u_input.c.wz, !(u_input.c.x > 0u)), func_2(~(~u_input.c.zw), Struct_2(vec3<bool>(true, arg_2.x, arg_2.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-320f, arg_0)), -arg_1.b, _wgslsmith_f_op_f32(exp2(arg_0))), any(!vec4<bool>(true, arg_1.c.x, arg_2.x, arg_1.c.x)), arg_2.x).b, true, arg_2.x).d.a);
    global2 = array<vec3<i32>, 16>();
    var var_1 = Struct_2(arg_2, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + 838f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), var_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_0))) - vec2<f32>(var_0, 150f))), _wgslsmith_clamp_i32(firstLeadingBit(~_wgslsmith_mult_i32(arg_1.a.x, arg_1.b)), ~min(arg_1.a.x ^ u_input.b, 1i), u_input.b), arg_0);
    return -439i;
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> i32 {
    let var_0 = func_1();
    var var_1 = u_input.c.wy;
    global1 = array<vec4<f32>, 21>();
    global0 = array<Struct_4, 28>();
    var var_2 = _wgslsmith_f_op_f32(-arg_0.a);
    return ~func_1().a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 16>();
    let var_0 = max(_wgslsmith_mod_u32(29133u, u_input.c.x), u_input.d);
    global0 = array<Struct_4, 28>();
    global1 = array<vec4<f32>, 21>();
    global0 = array<Struct_4, 28>();
    let var_1 = -func_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1251f + -1978f)), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), _wgslsmith_mod_vec2_i32(u_input.a.xw, vec2<i32>(-2147483647i, -1i)) & u_input.a.xx), 37483u, Struct_1(_wgslsmith_add_vec2_i32(select(u_input.a.yw, u_input.a.ww, vec2<bool>(true, false)), firstTrailingBit(vec2<i32>(-1i, u_input.b))), func_4(_wgslsmith_f_op_f32(ceil(895f)), func_1(), func_1().c.wzx), func_1().c, var_0 >> (u_input.d % 32u)), true);
    global0 = array<Struct_4, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(4294967295u, 16u)], u_input.c.x, vec3<u32>(_wgslsmith_clamp_u32(countOneBits(68203u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.d, 73599u), ~var_0, 7623u ^ u_input.c.x), 65146u ^ func_2(vec2<u32>(1u, 11543u), Struct_2(vec3<bool>(false, true, false), vec2<f32>(-170f, 196f), var_1, 146f), true, false).a.x), _wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.c.x, var_0, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, 3278u, 4294967295u, u_input.c.x), true), ~vec4<u32>(0u, 1u, 63462u, 1u)), _wgslsmith_sub_u32(41747u, var_0) << (select(var_0, u_input.c.x, true) % 32u)), vec4<i32>(-(~1i), countOneBits(func_1().a.x), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(u_input.a.x, var_1, -626i)), select(vec3<i32>(0i, var_1, var_1), min(vec3<i32>(u_input.a.x, -36670i, u_input.a.x), vec3<i32>(2147483647i, 15717i, -1i)), true)), -2147483647i));
}

