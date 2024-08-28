struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<vec2<f32>, 20>;

var<private> global2: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(14480i, Struct_1(vec4<i32>(-84005i, 1i, i32(-2147483648), -9339i), true, 4294967295u, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(1i, 1i, 0i, -1i), true, 1u, vec3<bool>(true, true, false))), Struct_3(i32(-2147483648), Struct_1(vec4<i32>(-32274i, 2147483647i, 0i, 17683i), false, 51943u, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(1i, -1i, -91501i, 25596i), false, 1u, vec3<bool>(false, true, false))), Struct_3(-17389i, Struct_1(vec4<i32>(-14438i, 0i, 1i, 25861i), true, 0u, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -1i, 0i), false, 1u, vec3<bool>(false, false, false))), Struct_3(13076i, Struct_1(vec4<i32>(0i, 2147483647i, 4470i, 45700i), false, 4603u, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(-4155i, 37310i, -26838i, 1i), false, 19705u, vec3<bool>(true, false, true))), Struct_3(1i, Struct_1(vec4<i32>(1i, 22242i, 1i, -91050i), false, 6622u, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(0i, 0i, 1i, -28746i), false, 62319u, vec3<bool>(false, true, true))), Struct_3(2147483647i, Struct_1(vec4<i32>(-34498i, 0i, 1i, 9532i), true, 1u, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(2147483647i, 0i, 4688i, i32(-2147483648)), true, 13214u, vec3<bool>(true, true, true))), Struct_3(1i, Struct_1(vec4<i32>(-1i, 37597i, -73436i, -25906i), true, 4294967295u, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-23053i, i32(-2147483648), -1i, 44776i), false, 0u, vec3<bool>(true, false, false))), Struct_3(84008i, Struct_1(vec4<i32>(2147483647i, 0i, -7814i, 54574i), true, 48421u, vec3<bool>(true, true, false)), Struct_1(vec4<i32>(60499i, 2147483647i, 40415i, 0i), true, 32505u, vec3<bool>(true, true, false))), Struct_3(47176i, Struct_1(vec4<i32>(28168i, -4084i, -18862i, -27012i), false, 18354u, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(54264i, 2147483647i, 43274i, 10326i), false, 98528u, vec3<bool>(false, false, true))), Struct_3(-1i, Struct_1(vec4<i32>(0i, 41644i, -1i, 10512i), false, 96131u, vec3<bool>(true, false, false)), Struct_1(vec4<i32>(1i, 14614i, 0i, i32(-2147483648)), false, 809u, vec3<bool>(false, false, true))), Struct_3(2147483647i, Struct_1(vec4<i32>(-1i, -25793i, i32(-2147483648), 0i), true, 34236u, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(0i, 0i, 0i, 11448i), true, 35010u, vec3<bool>(true, false, true))), Struct_3(34587i, Struct_1(vec4<i32>(-11263i, 2147483647i, i32(-2147483648), -5721i), true, 19704u, vec3<bool>(false, false, false)), Struct_1(vec4<i32>(i32(-2147483648), 22377i, i32(-2147483648), 21080i), true, 1u, vec3<bool>(true, false, true))));

var<private> global3: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> bool {
    let var_0 = Struct_1(firstTrailingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(1i, 10511i, u_input.a.x, 30002i), -vec4<i32>(u_input.a.x, global3.x, global3.x, -20033i))), !global0.x, 81985u, select(vec3<bool>(!global0.x, !any(vec3<bool>(false, true, true)), global0.x), vec3<bool>(global0.x, all(select(global0.zz, vec2<bool>(false, true), vec2<bool>(global0.x, global0.x))), !global0.x), !select(!vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, global0.x), !vec3<bool>(false, global0.x, global0.x))));
    var var_1 = !var_0.d;
    var var_2 = -1306f;
    global2 = array<Struct_3, 12>();
    global3 = vec2<i32>(u_input.a.x, ~reverseBits(0i));
    return true;
}

fn func_2() -> i32 {
    var var_0 = vec4<bool>(func_3(~u_input.a.wwz, 185f), true, abs(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a.wyy, vec3<i32>(38838i, 1i, global3.x)), vec3<i32>(-42420i, global3.x, -9815i) >> (vec3<u32>(11366u, 5552u, 26691u) % vec3<u32>(32u)))) <= -u_input.a.x, true);
    global3 = reverseBits(u_input.a.zy);
    global2 = array<Struct_3, 12>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), firstLeadingBit(vec3<u32>(1u, 1u, 1u))) | 1u, 12u)];
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_1.b.a, select(vec4<i32>(u_input.a.x, 2147483647i, global3.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, var_1.a, u_input.a.x), global0.x)), firstTrailingBit(vec4<i32>(var_1.a, -2338i, 1i, global3.x) >> (~vec4<u32>(60243u, var_1.b.c, 0u, 12484u) % vec4<u32>(32u)))), -1i);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = Struct_3(-21511i, Struct_1(vec4<i32>(func_2(), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, global3.x, -35315i, -1801i), -vec4<i32>(arg_1.a.x, -1i, arg_1.a.x, -32938i)), _wgslsmith_mod_i32(18161i, 2147483647i), ~(~u_input.a.x)), select(global0.x, any(select(arg_1.d, vec3<bool>(arg_1.d.x, arg_1.b, false), arg_1.d)), any(vec2<bool>(true, false))), select(~(~24694u), 1u | (1u | arg_1.c), all(vec4<bool>(false, arg_1.b, arg_1.b, global0.x))), arg_1.d), arg_1);
    var var_2 = Struct_2(Struct_1(vec4<i32>(var_0.x, -_wgslsmith_mod_i32(36919i, -70471i), var_0.x, max(~3709i, _wgslsmith_mod_i32(-57567i, global3.x))), all(!(!vec4<bool>(arg_1.d.x, false, arg_1.b, true))), ~firstLeadingBit(~4294967295u), select(select(!vec3<bool>(var_1.b.b, global0.x, arg_1.b), vec3<bool>(global0.x, var_1.c.b, var_1.c.d.x), arg_1.d), select(vec3<bool>(false, arg_1.d.x, global0.x), vec3<bool>(global0.x, false, false), true), global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-174f, -346f, -551f, 1000f)))) - vec4<f32>(965f, _wgslsmith_f_op_f32(-1283f + _wgslsmith_f_op_f32(-1510f * 1308f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1052f - 1000f)), 181f)));
    let var_3 = 30076i;
    var var_4 = _wgslsmith_dot_vec4_i32(select(-var_1.c.a, var_1.c.a, vec4<bool>(all(select(vec3<bool>(arg_1.d.x, var_2.a.b, var_2.a.b), vec3<bool>(var_2.a.d.x, var_2.a.b, var_1.c.b), arg_1.d)), false & (4294967295u <= arg_1.c), !func_3(u_input.a.xwy, -1301f), any(!var_1.c.d))), vec4<i32>(~_wgslsmith_div_i32(-2147483647i, -2147483647i), ~arg_1.a.x, global3.x, ~(-32918i) & max(_wgslsmith_clamp_i32(global3.x, arg_1.a.x, 0i), 1i)));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_2(func_1(vec3<i32>(global3.x, u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.yx), 2147483647i, _wgslsmith_add_i32(-48027i, 50955i))), func_1(-vec3<i32>(u_input.a.x, 1072i, -2147483647i), Struct_1(vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, u_input.a.x), arg_0.b, 5607u, vec3<bool>(true, false, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, -439f, -687f, arg_1.x)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1451f, arg_1.x, -529f, arg_1.x))))));
    global1 = array<vec2<f32>, 20>();
    var var_1 = Struct_3(_wgslsmith_add_i32(firstLeadingBit(-_wgslsmith_mult_i32(-18367i, -59278i)), var_0.a.a.x), Struct_1(select(u_input.a, vec4<i32>(u_input.a.x | 11960i, 1i, u_input.a.x, -global3.x), vec4<bool>(arg_0.c < 61365u, !var_0.a.d.x, var_0.a.d.x, arg_0.b)), !global0.x, 39204u, vec3<bool>(any(vec2<bool>(var_0.a.b, true)), select(all(vec4<bool>(true, true, arg_0.b, global0.x)), var_0.a.b, true), var_0.a.b)), func_1(vec3<i32>(~1i, var_0.a.a.x, reverseBits(-3672i)), var_0.a));
    global0 = func_1(~vec3<i32>(_wgslsmith_mod_i32(2147483647i << (var_1.b.c % 32u), 0i), var_0.a.a.x ^ -u_input.a.x, -var_1.b.a.x), var_1.c).d;
    global0 = func_1(max(~vec3<i32>(-u_input.a.x, global3.x, -1i), u_input.a.wxx), Struct_1(-firstTrailingBit(u_input.a ^ vec4<i32>(-1i, 2147483647i, var_1.b.a.x, -11397i)), true, _wgslsmith_add_u32(~0u, var_0.a.c << (0u % 32u)), arg_0.d)).d;
    return global2[_wgslsmith_index_u32(firstTrailingBit(var_0.a.c ^ var_0.a.c), 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 20>();
    var var_0 = func_4(func_1(u_input.a.zyy, Struct_1(u_input.a, false, reverseBits(_wgslsmith_mult_u32(22179u, 23500u)), !select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, true, global0.x), vec3<bool>(false, true, true)))), global1[_wgslsmith_index_u32(reverseBits(~(4294967295u >> (1u % 32u))) ^ _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 326u, 10681u), vec3<u32>(75147u, 78025u, 4294967295u), true) | ~vec3<u32>(30485u, 30605u, 26576u), ~(~vec3<u32>(1u, 4294967295u, 30259u))), 20u)]);
    var var_1 = var_0.c;
    var var_2 = i32(-1i) * -57028i;
    var_1 = var_0.b;
    let var_3 = _wgslsmith_f_op_f32(503f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1199f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_1.c ^ func_4(Struct_1(var_1.a, false, var_1.c, var_1.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1206f, 1484f) - global1[_wgslsmith_index_u32(28558u, 20u)])).c.c, ~min(~var_1.c, _wgslsmith_add_u32(var_1.c, var_0.c.c)), ~var_1.c), var_1.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_3) + global1[_wgslsmith_index_u32(var_0.c.c, 20u)])))), vec4<u32>(var_0.b.c, _wgslsmith_add_u32(8052u, ~var_0.c.c >> (~var_1.c % 32u)), var_0.c.c, var_0.c.c));
}

