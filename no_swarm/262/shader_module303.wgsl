struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true), true, 185f, false, false);

var<private> global1: array<bool, 15> = array<bool, 15>(true, true, true, false, false, false, false, true, true, false, true, true, false, false, false);

var<private> global2: array<Struct_3, 21>;

var<private> global3: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(14447u, 12970u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 91215u), vec2<u32>(4294967295u, 21370u), vec2<u32>(38856u, 0u), vec2<u32>(6624u, 1u), vec2<u32>(4294967295u, 34777u), vec2<u32>(4294967295u, 3305u), vec2<u32>(0u, 76053u), vec2<u32>(4294967295u, 54632u), vec2<u32>(92183u, 28867u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4163u, 4294967295u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> vec2<u32> {
    global1 = array<bool, 15>();
    global0 = arg_0.a;
    let var_0 = Struct_4(firstLeadingBit(-vec4<i32>(u_input.b, _wgslsmith_clamp_i32(arg_0.d, -1i, 1i), 0i, u_input.b)), Struct_3(arg_0, arg_0, arg_0.b.x ^ ~u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), vec3<i32>(u_input.c.x, arg_2, ~(-28457i))), Struct_1(vec2<bool>(false, true), true, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c + arg_0.e.c), 1251f))), !arg_0.e.d, !(_wgslsmith_add_u32(4294967295u, u_input.d) <= 39313u)));
    let var_1 = select(!select(vec2<bool>(true, false), select(select(vec2<bool>(false, var_0.c.a.x), vec2<bool>(false, false), false), select(vec2<bool>(arg_0.a.d, false), vec2<bool>(arg_0.a.a.x, arg_0.a.d), false), arg_0.e.a.x), global0.a), !(!(!select(vec2<bool>(true, false), vec2<bool>(arg_0.c.b, global0.a.x), vec2<bool>(true, var_0.c.a.x)))), any(select(select(select(vec3<bool>(global0.d, global0.e, true), vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.b.b.b.x, 15u)], arg_0.e.b), true), !vec3<bool>(true, global0.d, true), select(vec3<bool>(false, global0.d, arg_0.c.b), vec3<bool>(true, true, false), true)), vec3<bool>(any(vec3<bool>(var_0.b.a.a.a.x, true, arg_0.e.d)), select(arg_0.a.a.x, false, false), true), select(select(vec3<bool>(false, arg_0.c.e, var_0.b.a.a.e), vec3<bool>(false, false, global0.d), true), select(vec3<bool>(var_0.c.a.x, global0.e, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], true, global1[_wgslsmith_index_u32(arg_0.b.x, 15u)]), var_0.b.b.a.e), !vec3<bool>(false, global0.e, false)))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -166f);
    return _wgslsmith_div_vec2_u32(((global3[_wgslsmith_index_u32(1u, 14u)] ^ _wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.b.b.b.x), var_0.b.b.b.xy)) & abs(vec2<u32>(arg_0.b.x, u_input.d))) | _wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, arg_0.b.x), vec2<u32>(u_input.d, arg_0.b.x)), firstLeadingBit(arg_0.b.xx)), vec2<u32>(1u, 32468u) | select(max(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.b.a.b.x, 4294967295u), 14u)], ~vec2<u32>(0u, var_0.b.c)), vec2<u32>(~70042u, ~0u), select(arg_0.c.a, vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_4(arg_0: vec2<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(178f, global0.c)))) * global0.c));
    let var_1 = 1000f;
    let var_2 = Struct_2(Struct_1(select(select(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)]), global0.a, !global1[_wgslsmith_index_u32(u_input.a, 15u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 15u)], true), -6059i == (u_input.b ^ u_input.b)), global0.b, -942f, global1[_wgslsmith_index_u32(2398u, 15u)], true), ~firstLeadingBit(min(~vec3<u32>(arg_0.x, 12380u, arg_0.x), firstLeadingBit(vec3<u32>(arg_0.x, 35486u, 4294967295u)))), Struct_1(global0.a, global1[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_f32(-151f * 752f), !(global0.b && true), true && (select(true, false, global0.e) || !global0.b)), _wgslsmith_mult_i32(u_input.b | u_input.c.x, u_input.c.x), Struct_1(vec2<bool>(true, any(!vec4<bool>(false, global0.a.x, true, global0.e))), any(select(vec3<bool>(true, global0.e, global0.e), vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 15u)], false), true)) || any(vec2<bool>(false, true)), -1045f, all(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], true), vec2<bool>(true, false), !vec2<bool>(false, global0.b))), global0.d));
    var var_3 = all(vec4<bool>(global0.a.x, any(!vec3<bool>(global0.b, false, false)), var_2.a.d, false));
    let var_4 = all(!vec4<bool>(_wgslsmith_f_op_f32(select(var_2.c.c, var_1, var_2.e.b)) < _wgslsmith_f_op_f32(f32(-1f) * -1020f), false, true, global1[_wgslsmith_index_u32(abs(abs(4294967295u)), 15u)]));
    return var_2.c.a;
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = func_4(_wgslsmith_sub_vec2_u32(abs(_wgslsmith_mod_vec2_u32(global3[_wgslsmith_index_u32(1u, 14u)], vec2<u32>(arg_0, arg_0)) << (abs(vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, 56777u), vec2<u32>(arg_0, 1u) << (func_3(Struct_2(Struct_1(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0, 15u)]), true, 382f, false, global1[_wgslsmith_index_u32(1u, 15u)]), vec3<u32>(90800u, 9246u, 0u), Struct_1(vec2<bool>(true, global0.a.x), false, global0.c, global0.d, global0.b), -3342i, Struct_1(global0.a, global0.b, -228f, false, true)), vec2<f32>(1000f, 921f), -2147483647i) % vec2<u32>(32u)))));
    var var_1 = var_0.x;
    let var_2 = ~u_input.b;
    var_1 = false;
    global3 = array<vec2<u32>, 14>();
    return Struct_2(Struct_1(select(!(!var_0), !(!var_0), global0.a), true, 1387f, true, true), ~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(1460u, u_input.a, 80996u), vec3<u32>(5232u, 38717u, 1u)))), Struct_1(global0.a, global0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c, global0.c, false))) - global0.c), !all(vec2<bool>(false, false)), true), var_2, Struct_1(var_0, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(944f + global0.c)), select(global1[_wgslsmith_index_u32(countOneBits(abs(arg_0)), 15u)], all(select(vec3<bool>(true, global0.e, var_0.x), vec3<bool>(true, true, var_0.x), vec3<bool>(false, false, true))), !global1[_wgslsmith_index_u32(4294967295u, 15u)]), var_0.x));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    global1 = array<bool, 15>();
    global2 = array<Struct_3, 21>();
    let var_0 = arg_1;
    let var_1 = func_2(4294967295u);
    var var_2 = vec3<i32>(29122i, -var_1.d, _wgslsmith_mod_i32(countOneBits(select(-2147483647i, 44727i, false)), -62076i));
    return -906f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 15>();
    global3 = array<vec2<u32>, 14>();
    global2 = array<Struct_3, 21>();
    global0 = Struct_1(select(vec2<bool>(false, true), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.c.x, Struct_1(global0.a, true, global0.c, global1[_wgslsmith_index_u32(0u, 15u)], false))) - _wgslsmith_f_op_f32(f32(-1f) * -1725f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-860f, 737f, true)) - _wgslsmith_f_op_f32(exp2(global0.c)))), any(!(!(!vec2<bool>(global0.b, false)))), global0.c, global0.e, false & (global0.a.x || true));
    let var_0 = 4294967295u;
    let var_1 = Struct_3(Struct_2(Struct_1(global0.a, global0.d, 277f, u_input.c.x != _wgslsmith_add_i32(17271i, u_input.b), select(any(vec2<bool>(true, true)), all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 15u)], true)), true)), abs(firstTrailingBit(vec3<u32>(51221u, var_0, 1u))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(48352u, u_input.a, var_0) >> (vec3<u32>(17722u, var_0, 0u) % vec3<u32>(32u)), vec3<u32>(u_input.d, 8797u, u_input.d) >> (vec3<u32>(130800u, 695u, 2076u) % vec3<u32>(32u)), vec3<u32>(var_0, 19569u, 0u)) % vec3<u32>(32u)), Struct_1(select(global0.a, !global0.a, !vec2<bool>(true, global0.b)), _wgslsmith_div_u32(1390u, var_0) >= u_input.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.c)), _wgslsmith_f_op_f32(sign(global0.c))), all(vec2<bool>(false, false)), !global1[_wgslsmith_index_u32(~42335u, 15u)]), abs(abs(~u_input.c.x)), Struct_1(select(vec2<bool>(global0.e, false), vec2<bool>(global1[_wgslsmith_index_u32(20476u, 15u)], false), vec2<bool>(true, false)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.d, 4294967295u), 0u, u_input.d), 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), true, false)), func_2(var_0), u_input.d, global0.c, u_input.c.xwx);
    global3 = array<vec2<u32>, 14>();
    global1 = array<bool, 15>();
    global0 = func_2(~(firstLeadingBit(~50777u) << ((~38543u & select(var_1.c, 4294967295u, global0.b)) % 32u))).a;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-2147483647i, 0i, -39775i, _wgslsmith_mult_i32(1i, ~u_input.b)), _wgslsmith_mod_i32(min(-17757i, 3003i), _wgslsmith_add_i32(u_input.b ^ u_input.b, -21829i)) & u_input.b);
}

