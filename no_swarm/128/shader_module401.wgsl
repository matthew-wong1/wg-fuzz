struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_5 = Struct_5(Struct_3(Struct_1(vec4<f32>(2458f, 746f, 681f, -913f), vec2<bool>(false, false), vec3<f32>(1198f, 132f, -519f), 3036u), vec3<bool>(true, false, true), vec4<u32>(47398u, 135011u, 10231u, 1u), vec3<u32>(43711u, 1u, 1u), Struct_1(vec4<f32>(-458f, 870f, -344f, 815f), vec2<bool>(false, false), vec3<f32>(2397f, -655f, 767f), 50298u)), Struct_2(Struct_1(vec4<f32>(-509f, -853f, 646f, -897f), vec2<bool>(false, true), vec3<f32>(1127f, 420f, 191f), 25320u)));

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-global0.a.e.a.x);
    var var_1 = global1.a.c.xz;
    return ~(_wgslsmith_dot_vec2_i32(vec2<i32>(-16482i, 0i), arg_0.xy) << ((abs(_wgslsmith_mod_u32(2262u, 1u)) << (arg_1 % 32u)) % 32u));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<bool>) -> i32 {
    let var_0 = vec2<i32>(2147483647i, -func_3(vec3<i32>(2147483647i, 0i, -2147483647i) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0, 4294967295u), u_input.b.xwz) % vec3<u32>(32u)), 27467u, Struct_2(Struct_1(global1.a.e.a, vec2<bool>(global0.b.a.b.x, false), global1.a.a.c, global1.a.d.x))));
    let var_1 = global1.b;
    let var_2 = arg_2.zz;
    var var_3 = vec2<f32>(2536f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.a.x)));
    var var_4 = global1.a.c.wyy;
    return 0i;
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(max(5318i, 2813i), -27464i >> (0u % 32u), _wgslsmith_mod_i32(-34111i, 1i)), vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(func_2(7515u, 642f, vec3<bool>(true, global2.x, global0.a.b.x)), -13087i << (u_input.a.x % 32u)), reverseBits(select(-55073i, 0i, true)), ~(2147483647i << (global1.b.a.d % 32u))), ~reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(47065i, 12632i, -2147483647i), vec3<i32>(-7572i, 22085i, 2147483647i)))));
    let var_1 = vec4<i32>(var_0, _wgslsmith_div_i32(_wgslsmith_mult_i32(17752i, ~(-12380i)), 16008i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, var_0)) ^ _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(var_0, -1i)), ~vec2<i32>(16590i, -1i)), vec2<i32>(var_0, var_0)), min(firstTrailingBit(1i), var_0));
    var var_2 = func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(~countOneBits(u_input.a.x), ~global1.b.a.d, abs(select(1u, global0.b.a.d, true)), u_input.b.x), vec4<u32>(18835u, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, global0.b.a.d, 4294967295u), select(u_input.b, vec4<u32>(33032u, global0.a.d.x, 0u, u_input.a.x), global0.b.a.b.x)), max(global1.b.a.d, 51611u) ^ global0.b.a.d)), 590f, vec3<bool>(all(select(vec3<bool>(true, global0.a.e.b.x, global0.b.a.b.x), global1.a.b, false)) & all(vec3<bool>(global1.b.a.b.x, false, false)), global2.x, true));
    global2 = vec4<bool>(all(vec4<bool>(select(true, false, any(vec4<bool>(global2.x, true, global1.b.a.b.x, global2.x))), !(0i < var_1.x), global1.a.b.x, false)), false, !(true == any(global0.a.b)) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, global0.a.a.c.x)) + global0.b.a.a.x) != global0.b.a.a.x), any(global1.a.e.b));
    global0 = Struct_5(Struct_3(Struct_1(global1.b.a.a, select(global0.b.a.b, global0.b.a.b, select(global1.b.a.b, global2.xz, vec2<bool>(global1.a.e.b.x, false))), global1.a.e.a.yxz, 1u), select(select(vec3<bool>(false, true, false), global2.zxy, !global0.b.a.b.x), select(vec3<bool>(false, global2.x, global2.x), !vec3<bool>(true, global0.b.a.b.x, global0.b.a.b.x), !vec3<bool>(true, false, global1.b.a.b.x)), !(!global0.a.b)), _wgslsmith_mod_vec4_u32(min(~u_input.b, vec4<u32>(6045u, global1.b.a.d, 4294967295u, 4294967295u)), (vec4<u32>(7426u, global1.a.c.x, global0.a.a.d, global1.a.a.d) ^ u_input.b) ^ max(vec4<u32>(18713u, u_input.b.x, 4294967295u, u_input.a.x), vec4<u32>(94u, global1.b.a.d, global1.a.d.x, global0.a.d.x))), abs(~vec3<u32>(global0.a.e.d, u_input.a.x, 1213u)) ^ global0.a.d, Struct_1(global1.b.a.a, select(select(global1.b.a.b, vec2<bool>(global1.b.a.b.x, global0.b.a.b.x), false), select(global1.a.e.b, global2.yy, global2.x), select(vec2<bool>(global0.a.b.x, false), global0.b.a.b, global1.a.a.b)), global0.b.a.a.xwz, ~reverseBits(62854u))), global0.b);
    return Struct_5(global1.a, Struct_2(Struct_1(vec4<f32>(global1.b.a.c.x, _wgslsmith_f_op_f32(global1.a.a.a.x + -587f), _wgslsmith_f_op_f32(trunc(global0.a.a.c.x)), -231f), select(select(global2.xy, global2.zx, global2.wy), global0.a.e.b, select(false, true, false)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.b.a.c.x, global0.b.a.c.x, -1127f))))), 27290u)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_1) -> f32 {
    var var_0 = firstLeadingBit(~(-vec3<i32>(func_2(74769u, arg_2.a.x, vec3<bool>(true, true, true)), abs(11707i), -2147483647i)));
    let var_1 = -353f;
    let var_2 = vec2<bool>(false, global1.a.a.b.x);
    global0 = func_1();
    let var_3 = select(select(vec3<bool>(func_1().a.a.b.x, !global0.a.a.b.x, !var_2.x), !global2.xww, select(vec3<bool>(select(global0.b.a.b.x, arg_2.b.x, var_2.x), false, !var_2.x), vec3<bool>(select(true, global1.a.a.b.x, global1.a.e.b.x), false, true), func_1().a.b)), select(!arg_1.a.b, func_1().a.b, false == arg_2.b.x), !func_1().a.b);
    return _wgslsmith_f_op_f32(abs(var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_4(~(-9696i), vec4<u32>(1u, 4294967295u, 4294967295u, global0.a.e.d), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 21728i, -1i), vec4<i32>(509i, 0i, -13867i, -2147483647i))), func_1(), func_1().b.a)), _wgslsmith_f_op_f32(abs(global0.b.a.a.x)), -665f, 497f), !(!select(var_0.e.b, select(var_0.b.yy, vec2<bool>(false, global2.x), vec2<bool>(false, true)), select(vec2<bool>(true, global1.b.a.b.x), global0.a.e.b, global1.a.b.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-614f + _wgslsmith_div_f32(-1000f, global0.b.a.c.x)), _wgslsmith_f_op_f32(var_0.a.a.x + var_0.a.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_4(-1i, vec4<u32>(var_0.c.x, 14089u, u_input.a.x, global1.b.a.d), vec4<i32>(1i, 36253i, -24568i, 48864i)), Struct_5(global1.a, global1.b), var_0.e)), _wgslsmith_f_op_f32(-global1.b.a.c.x))))), _wgslsmith_div_u32(_wgslsmith_add_u32(1u, u_input.a.x), var_0.d.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1401f, global1.b.a.a.x, 984f, -1130f), global1.b.a.a, vec4<bool>(global1.b.a.b.x, false, var_0.a.b.x, true))), vec4<f32>(-854f, global0.b.a.a.x, var_0.e.c.x, 1199f))), vec4<f32>(840f, _wgslsmith_f_op_f32(ceil(var_0.a.c.x)), global0.a.e.c.x, func_1().a.e.c.x)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.c.x, var_0.a.a.x, -316f, 1503f) + _wgslsmith_div_vec4_f32(var_1.a, var_0.a.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.x, 654f, var_1.a.x, 1850f), vec4<f32>(var_1.c.x, -614f, -2652f, global0.b.a.a.x), var_1.b.x)))), global1.b.a.a, vec4<bool>(false, global0.a.a.b.x, !all(var_0.b), func_1().b.a.b.x))));
    let var_3 = func_1();
    var_0 = global0.a;
    let var_4 = min(-_wgslsmith_div_i32(abs(-21891i), firstLeadingBit(-17841i)), max(i32(-1i) * -(~2147483647i), 11647i));
    let var_5 = var_3.b.a.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(u_input.a.x, 1u)) | var_0.c.x, ~u_input.b, ~(~var_0.e.d));
}

