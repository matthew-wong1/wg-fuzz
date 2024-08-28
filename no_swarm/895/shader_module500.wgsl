struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-10214i, 1i, vec4<i32>(11961i, 77969i, i32(-2147483648), 40322i), vec3<bool>(true, false, false), 1530f), Struct_1(-21733i, 1i, vec4<i32>(8785i, -1i, 13468i, 82886i), vec3<bool>(true, true, false), -870f), Struct_1(-1i, 2147483647i, vec4<i32>(0i, 4950i, 37254i, 24652i), vec3<bool>(true, true, false), 894f), Struct_1(-5976i, 62953i, vec4<i32>(-1i, -26970i, -1i, i32(-2147483648)), vec3<bool>(false, false, false), -690f), Struct_1(0i, 1i, vec4<i32>(54095i, -77106i, -34477i, -22461i), vec3<bool>(false, false, true), -2148f), Struct_1(1i, 1i, vec4<i32>(2147483647i, 1i, 6462i, 365i), vec3<bool>(false, false, false), -1053f), Struct_1(-1i, -1i, vec4<i32>(0i, -1i, 3121i, -1i), vec3<bool>(false, true, true), -1451f), Struct_1(20519i, 1i, vec4<i32>(23739i, -1i, -42283i, 19040i), vec3<bool>(false, true, false), 888f), Struct_1(0i, -4495i, vec4<i32>(-10220i, -1i, 2824i, 2147483647i), vec3<bool>(false, true, false), -706f), Struct_1(i32(-2147483648), i32(-2147483648), vec4<i32>(i32(-2147483648), -51622i, 35980i, 38317i), vec3<bool>(true, false, true), -990f), Struct_1(1i, 11215i, vec4<i32>(0i, 0i, 0i, -1i), vec3<bool>(false, true, false), 786f), Struct_1(-1i, -10913i, vec4<i32>(2147483647i, 0i, 55016i, -1208i), vec3<bool>(true, false, false), 1211f), Struct_1(-1i, -1i, vec4<i32>(21246i, 42035i, -38396i, 32538i), vec3<bool>(true, false, false), 1549f), Struct_1(1i, 42978i, vec4<i32>(-35507i, -1i, 2355i, 42037i), vec3<bool>(false, true, false), 1000f), Struct_1(14649i, -41000i, vec4<i32>(0i, 18266i, 0i, 0i), vec3<bool>(true, false, false), 1593f), Struct_1(-19753i, 0i, vec4<i32>(1i, -19295i, i32(-2147483648), -17770i), vec3<bool>(false, true, false), 230f), Struct_1(0i, -22783i, vec4<i32>(24326i, -11558i, -52254i, 2147483647i), vec3<bool>(false, true, false), 495f), Struct_1(i32(-2147483648), 2147483647i, vec4<i32>(-1i, 47814i, i32(-2147483648), 10286i), vec3<bool>(false, true, false), -1225f), Struct_1(-27369i, i32(-2147483648), vec4<i32>(1i, i32(-2147483648), 16502i, i32(-2147483648)), vec3<bool>(false, false, true), 1420f), Struct_1(18533i, -35263i, vec4<i32>(2147483647i, -44225i, -11393i, 4277i), vec3<bool>(false, true, false), -522f), Struct_1(46650i, 41265i, vec4<i32>(2147483647i, 2147483647i, 2147483647i, i32(-2147483648)), vec3<bool>(false, true, true), 1061f), Struct_1(0i, -1i, vec4<i32>(-9666i, 1i, -9634i, -1i), vec3<bool>(false, true, false), -1121f), Struct_1(-15237i, 2147483647i, vec4<i32>(1i, 2147483647i, i32(-2147483648), 0i), vec3<bool>(false, false, false), 695f), Struct_1(15401i, -23404i, vec4<i32>(2147483647i, i32(-2147483648), -36523i, 0i), vec3<bool>(false, true, false), -386f), Struct_1(-23029i, 15946i, vec4<i32>(2147483647i, 28848i, 0i, -1i), vec3<bool>(true, false, false), -471f), Struct_1(6047i, 49353i, vec4<i32>(i32(-2147483648), 1i, -43157i, 35027i), vec3<bool>(false, false, true), 1160f), Struct_1(0i, 2147483647i, vec4<i32>(-1i, 0i, 5668i, -15602i), vec3<bool>(true, true, true), 969f), Struct_1(0i, -1i, vec4<i32>(66400i, i32(-2147483648), -1i, 0i), vec3<bool>(false, true, true), 1378f), Struct_1(7642i, 2147483647i, vec4<i32>(-64663i, 19618i, -8546i, 1i), vec3<bool>(true, true, false), -374f), Struct_1(22424i, 0i, vec4<i32>(i32(-2147483648), -21935i, i32(-2147483648), 29929i), vec3<bool>(true, false, false), 700f));

var<private> global1: f32;

var<private> global2: f32 = 773f;

var<private> global3: array<vec2<u32>, 28>;

var<private> global4: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(2932u, 30u)];
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.e * _wgslsmith_f_op_f32(-global4.e)) + global4.e), _wgslsmith_f_op_f32(-121f * _wgslsmith_f_op_f32(-var_0.e)), true));
    var var_2 = select(true, true, select(false, false, true & global4.d.x));
    var_0 = global0[_wgslsmith_index_u32(4704u, 30u)];
    let var_3 = global0[_wgslsmith_index_u32(~u_input.a.x, 30u)];
    return 11504i;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_i32(max(-(u_input.b.x ^ 0i), reverseBits(u_input.b.x)), abs(global4.a));
    let var_1 = global0[_wgslsmith_index_u32(0u, 30u)];
    var var_2 = vec4<i32>(-1i, -65700i, -(func_3() >> (4294967295u % 32u)), u_input.b.x);
    var var_3 = true;
    global4 = Struct_1(global4.b, -((i32(-1i) * -1i) >> (~u_input.a.x % 32u)), countOneBits(var_1.c), arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) - _wgslsmith_f_op_f32(f32(-1f) * -913f))), var_1.e, !all(select(vec4<bool>(false, arg_3, false, true), vec4<bool>(true, false, arg_0.x, global4.d.x), vec4<bool>(arg_3, true, true, false))))));
    return global0[_wgslsmith_index_u32(170945u, 30u)];
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(global4.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(349f)) - -732f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.e, 574f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.e, -530f, _wgslsmith_f_op_f32(261f * global4.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2208f - 1187f), -885f))), -global4.a >= _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, global4.a, global4.b), vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), abs(-1i), global4.a)));
    global1 = -921f;
    global0 = array<Struct_1, 30>();
    var var_1 = true;
    var var_2 = Struct_1(u_input.b.x, max(var_0.c.x, countOneBits(u_input.b.x)), ~func_2(func_2(select(var_0.d, var_0.d, global4.d), -567f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global4.e, var_0.e, 271f)), all(global4.d)).d, 1726f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1129f, -2528f, global4.e, 1531f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-715f, var_0.e, 355f, 1221f)))), global4.d.x & any(vec3<bool>(var_0.d.x, var_0.d.x, true))).c, select(global4.d, vec3<bool>(select(true, u_input.b.x > 32335i, all(vec4<bool>(true, global4.d.x, false, global4.d.x))), global4.d.x, false), vec3<bool>(!all(vec3<bool>(var_0.d.x, global4.d.x, true)), false, !var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.e * var_0.e) + _wgslsmith_f_op_f32(-global4.e))))));
    return Struct_1(-16186i ^ _wgslsmith_mod_i32(u_input.b.x, var_2.b), -12109i ^ ~var_2.a, ~(-var_2.c), !(!var_2.d), _wgslsmith_f_op_f32(global4.e - 955f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = 1515f;
    var var_1 = vec2<bool>(global4.d.x && global4.d.x, !func_2(!select(global4.d, vec3<bool>(true, arg_1.d.x, true), global4.d), 777f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.e, 1000f, arg_0.e, 2106f)) * vec4<f32>(var_0, var_0, global4.e, var_0)), false).d.x);
    let var_2 = !arg_1.d.yz;
    var var_3 = func_1();
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 28>();
    let var_0 = Struct_1(func_4(Struct_1(-1i, u_input.b.x, vec4<i32>(~1i, -1i, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.a, 41197i, 1i, 2147483647i), global4.c)), !global4.d, global4.e), func_1()), -u_input.b.x, global4.c, vec3<bool>(false, _wgslsmith_mod_i32(-7965i, _wgslsmith_mult_i32(global4.c.x, global4.c.x)) < 4702i, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4.e))));
    var var_1 = Struct_1(_wgslsmith_div_i32(~u_input.b.x, _wgslsmith_add_i32(~1i, -var_0.a)), ~var_0.c.x ^ -1i, var_0.c, vec3<bool>(!var_0.d.x, !(var_0.d.x || any(vec2<bool>(global4.d.x, false))), true), -731f);
    var var_2 = vec4<f32>(1378f, var_1.e, _wgslsmith_div_f32(var_0.e, _wgslsmith_f_op_f32(-164f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.e))))), 776f);
    var var_3 = var_0;
    let var_4 = global4.d.zz;
    global1 = var_1.e;
    global2 = _wgslsmith_f_op_f32(126f * global4.e);
    global4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-29240i, _wgslsmith_mult_i32(-_wgslsmith_div_i32(-2147483647i, 55614i), reverseBits(var_1.c.x))), global4.e, var_2.xwy, select(_wgslsmith_sub_vec3_u32(~vec3<u32>(101339u, 43224u, 4294967295u), ~vec3<u32>(u_input.a.x, u_input.a.x, 45418u)), u_input.a.wyx, func_1().d));
}

