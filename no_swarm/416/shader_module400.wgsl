struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
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

var<private> global0: array<vec4<u32>, 19>;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(-1i, vec3<u32>(1u, 28361u, 29631u), vec4<bool>(false, true, false, true), 1i), Struct_1(1i, vec3<u32>(10586u, 100166u, 4294967295u), vec4<bool>(false, true, false, false), -16587i), Struct_1(0i, vec3<u32>(12811u, 0u, 0u), vec4<bool>(true, false, false, false), i32(-2147483648)), Struct_1(i32(-2147483648), vec3<u32>(0u, 1u, 22386u), vec4<bool>(true, true, true, true), -59676i), Struct_1(-1i, vec3<u32>(40120u, 46631u, 56220u), vec4<bool>(false, false, false, true), 0i), Struct_1(28869i, vec3<u32>(4294967295u, 0u, 29087u), vec4<bool>(false, true, true, true), 0i), Struct_1(-46082i, vec3<u32>(0u, 1u, 0u), vec4<bool>(true, false, true, false), -4600i), Struct_1(27139i, vec3<u32>(75630u, 31635u, 39263u), vec4<bool>(false, true, false, true), -2954i), Struct_1(30447i, vec3<u32>(43651u, 3538u, 7519u), vec4<bool>(false, true, false, true), 1i), Struct_1(-44541i, vec3<u32>(35968u, 29933u, 7639u), vec4<bool>(true, true, true, false), i32(-2147483648)), Struct_1(44207i, vec3<u32>(47384u, 0u, 0u), vec4<bool>(true, false, false, false), -54490i));

var<private> global2: array<f32, 14> = array<f32, 14>(-179f, 167f, 1937f, -1555f, 1239f, 542f, 1211f, -1552f, -648f, 1032f, 1000f, -872f, 1675f, 1321f);

var<private> global3: array<bool, 24> = array<bool, 24>(false, true, false, true, true, false, false, false, true, true, true, false, false, false, true, false, false, true, false, false, false, false, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(4294967295u, 11u)]);
    let var_1 = Struct_1(var_0.a.a ^ var_0.a.d, vec3<u32>(~46739u, 18500u, 4294967295u), vec4<bool>(any(select(!var_0.a.c.zww, select(var_0.a.c.wzx, vec3<bool>(false, true, global3[_wgslsmith_index_u32(32120u, 24u)]), var_0.a.c.wwy), true)), any(vec3<bool>(false, var_0.a.c.x, false)) | all(!var_0.a.c.zz), all(select(select(vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 24u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 24u)], false), vec2<bool>(global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(0u, 24u)])), var_0.a.c.xz, 1000f != global2[_wgslsmith_index_u32(1u, 14u)])), var_0.a.c.x), -var_0.a.a);
    var var_2 = Struct_1(_wgslsmith_mod_i32(var_0.a.a | (-1i & _wgslsmith_add_i32(18852i, var_0.a.d)), -_wgslsmith_sub_i32(-var_0.a.a, ~(-5759i))), min(abs(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.b.x, 1u, 0u), vec3<u32>(1u, var_0.a.b.x, 4454u))), vec3<u32>(abs(_wgslsmith_mod_u32(51485u, u_input.b.x)), _wgslsmith_div_u32(var_0.a.b.x, _wgslsmith_mod_u32(u_input.b.x, 29266u)), ~(~0u))), var_0.a.c, _wgslsmith_mod_i32(var_0.a.d, i32(-1i) * -(~(-2147483647i))));
    global3 = array<bool, 24>();
    var var_3 = var_1.b;
    return var_1.b.xy;
}

fn func_2(arg_0: vec2<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1840f, global2[_wgslsmith_index_u32(~(u_input.b.x >> (43601u % 32u)), 14u)]) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0, vec2<f32>(376f, 945f))), _wgslsmith_f_op_vec2_f32(arg_0 + arg_0))))));
    let var_1 = Struct_2(abs(abs(select(vec2<i32>(1i, -41666i), vec2<i32>(-2147483647i, -28386i), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 24u)], global3[_wgslsmith_index_u32(u_input.b.x, 24u)])))) << (_wgslsmith_clamp_vec2_u32(func_3(), vec2<u32>(~21129u, max(0u, u_input.b.x)), ~(~u_input.b.zz)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(~25827u, 14u)], var_0.x)), global2[_wgslsmith_index_u32(func_3().x >> (u_input.a % 32u), 14u)], global1[_wgslsmith_index_u32(u_input.a, 11u)]);
    global1 = array<Struct_1, 11>();
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 11u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1000f, var_1.c)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.b, 1000f, 1046f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-493f, var_1.b, -1088f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.c, 1577f, arg_0.x), vec3<f32>(-732f, 525f, -579f)))), select(select(var_1.d.c.wyw, vec3<bool>(false, true, false), var_1.d.c.yyx), select(var_1.d.c.zyz, var_2.c.wxz, true), var_1.d.c.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(634f, var_1.b, var_1.b), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, var_1.c, 523f), vec3<f32>(-220f, 538f, 1735f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(1692f, global2[_wgslsmith_index_u32(0u, 14u)], var_0.x), vec3<f32>(var_1.c, -1494f, 1365f))))))));
    return ~(-vec2<i32>(var_2.d, ~1i));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_3) -> f32 {
    global1 = array<Struct_1, 11>();
    let var_0 = any(arg_3.a.c.zy);
    var var_1 = _wgslsmith_dot_vec2_i32(func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(900f)) + _wgslsmith_f_op_f32(sign(1506f))), arg_1.x)), vec2<i32>(4992i, 2147483647i));
    var_1 = 0i & (i32(-1i) * -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_3.a.a, arg_3.a.d), vec2<i32>(1940i, arg_3.a.a)), vec2<i32>(arg_3.a.d, arg_3.a.a)));
    global1 = array<Struct_1, 11>();
    return _wgslsmith_f_op_f32(sign(532f));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: f32) -> vec4<i32> {
    global0 = array<vec4<u32>, 19>();
    let var_0 = Struct_4(-2147483647i);
    let var_1 = vec4<i32>(40671i, _wgslsmith_add_i32(~(~2147483647i), -7952i), i32(-1i) * -2147483647i, -2147483647i) | firstLeadingBit(vec4<i32>(func_2(vec2<f32>(global2[_wgslsmith_index_u32(0u, 14u)], -1000f)).x, var_0.a, countOneBits(-2147483647i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-49937i, var_0.a)), 1775i | var_0.a)));
    let var_2 = !((any(select(vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(u_input.a, 24u)]), vec3<bool>(arg_1, false, arg_1), true)) || false) && true);
    var var_3 = select(vec4<bool>(any(vec4<bool>(false, false, !arg_0, arg_0)), true, global3[_wgslsmith_index_u32(4294967295u, 24u)], any(!(!vec4<bool>(true, arg_0, var_2, true)))), vec4<bool>(arg_1, any(select(select(vec2<bool>(false, false), vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 24u)]), true), !vec2<bool>(arg_1, false), u_input.b.x != u_input.a)), arg_0, !(_wgslsmith_f_op_f32(-arg_2) > _wgslsmith_f_op_f32(min(arg_2, global2[_wgslsmith_index_u32(u_input.b.x, 14u)])))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b.xy), abs(918u))), ~u_input.a), 24u)]);
    return vec4<i32>(-1i) * -(~(-var_1 | min(var_1, vec4<i32>(-1i, var_1.x, -7112i, -61469i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 14>();
    let var_0 = ~(~u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-925f, -403f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -342f), -617f, any(vec2<bool>(global3[_wgslsmith_index_u32(0u, 24u)], false)))), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(18021u, 14u)]))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 14u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-183f, _wgslsmith_f_op_f32(max(-427f, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0, 38916u), 14u)])), global2[_wgslsmith_index_u32(var_0, 14u)], 1383f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0, 14u)], global2[_wgslsmith_index_u32(1u, 14u)]), global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(~29621u, 14u)]), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-959f, global2[_wgslsmith_index_u32(var_0, 14u)], -303f, 986f)))))));
    var var_2 = var_0;
    global3 = array<bool, 24>();
    global3 = array<bool, 24>();
    var var_3 = func_4(global3[_wgslsmith_index_u32(var_0, 24u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1135f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_1.x, var_1.yyz, vec3<f32>(-631f, 120f, 1000f), Struct_3(Struct_1(2147483647i, u_input.b, vec4<bool>(global3[_wgslsmith_index_u32(var_0, 24u)], true, false, global3[_wgslsmith_index_u32(1540u, 24u)]), -65672i)))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.x)))) * 1528f), _wgslsmith_f_op_f32(-411f - _wgslsmith_div_f32(-252f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + -1000f), -1000f)))));
    let var_4 = vec2<f32>(var_1.x, -434f);
    var var_5 = Struct_2(vec2<i32>(_wgslsmith_div_i32(var_3.x, -(var_3.x ^ 0i)), var_3.x), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-var_1.x), all(vec2<bool>(var_3.x < 13007i, !global3[_wgslsmith_index_u32(4294967295u, 24u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(839f + var_4.x) - global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 0u, var_0), 14u)]), Struct_1(_wgslsmith_div_i32(var_3.x, ~(var_3.x << (1u % 32u))), countOneBits(u_input.b & _wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(55680u, 28081u, var_0))), select(vec4<bool>(true == global3[_wgslsmith_index_u32(var_0, 24u)], !global3[_wgslsmith_index_u32(var_0, 24u)], !global3[_wgslsmith_index_u32(0u, 24u)], true), select(!vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(u_input.a, 24u)]), vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(23063u, 24u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 24u)], false, false, false), vec4<bool>(global3[_wgslsmith_index_u32(1u, 24u)], true, false, global3[_wgslsmith_index_u32(u_input.b.x, 24u)]), vec4<bool>(global3[_wgslsmith_index_u32(20978u, 24u)], false, global3[_wgslsmith_index_u32(25095u, 24u)], true))), !(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 24u)], true, true, global3[_wgslsmith_index_u32(22583u, 24u)]))), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, 1i, -797i), ~vec3<i32>(var_3.x, -18254i, 16657i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(var_1.ywx, vec3<f32>(var_4.x, 714f, 386f)))), var_1.wwx)))), ~abs(max(countOneBits(u_input.a), _wgslsmith_div_u32(var_5.d.b.x, 20379u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~(~8778u), 14u)] + 304f)), _wgslsmith_f_op_f32(max(153f, 930f)), 4294967295u);
}

