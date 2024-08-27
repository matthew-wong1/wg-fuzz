struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(46652i), Struct_3(0i), Struct_3(-4121i), Struct_3(-1i), Struct_3(i32(-2147483648)), Struct_3(2147483647i), Struct_3(2147483647i), Struct_3(-12647i), Struct_3(37535i), Struct_3(2147483647i), Struct_3(1i), Struct_3(11551i), Struct_3(2147483647i), Struct_3(-15053i), Struct_3(-40600i), Struct_3(0i), Struct_3(9929i), Struct_3(-13990i), Struct_3(2817i), Struct_3(-82473i), Struct_3(-613i), Struct_3(i32(-2147483648)), Struct_3(-963i), Struct_3(1i), Struct_3(-2018i), Struct_3(0i), Struct_3(4062i));

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(0u, 1u, vec2<i32>(-13501i, -4948i)), vec3<bool>(false, true, true)), Struct_2(Struct_1(1u, 844u, vec2<i32>(34620i, 2147483647i)), vec3<bool>(false, true, false)), Struct_2(Struct_1(78170u, 1u, vec2<i32>(71051i, 2147483647i)), vec3<bool>(true, false, true)), Struct_2(Struct_1(0u, 81065u, vec2<i32>(30811i, -1i)), vec3<bool>(false, false, false)), Struct_2(Struct_1(57209u, 16226u, vec2<i32>(-16565i, i32(-2147483648))), vec3<bool>(false, true, true)), Struct_2(Struct_1(1u, 10462u, vec2<i32>(341i, 22891i)), vec3<bool>(false, false, false)), Struct_2(Struct_1(4294967295u, 33611u, vec2<i32>(-49707i, i32(-2147483648))), vec3<bool>(false, false, true)), Struct_2(Struct_1(6926u, 1u, vec2<i32>(-1i, i32(-2147483648))), vec3<bool>(true, false, true)), Struct_2(Struct_1(0u, 0u, vec2<i32>(1i, 8358i)), vec3<bool>(true, true, false)), Struct_2(Struct_1(17508u, 0u, vec2<i32>(0i, -9483i)), vec3<bool>(false, true, true)), Struct_2(Struct_1(1u, 1u, vec2<i32>(i32(-2147483648), 1i)), vec3<bool>(true, false, true)), Struct_2(Struct_1(30855u, 0u, vec2<i32>(0i, i32(-2147483648))), vec3<bool>(false, true, false)), Struct_2(Struct_1(3744u, 17081u, vec2<i32>(25345i, 53370i)), vec3<bool>(false, false, false)), Struct_2(Struct_1(60468u, 4294967295u, vec2<i32>(0i, i32(-2147483648))), vec3<bool>(true, true, false)), Struct_2(Struct_1(0u, 0u, vec2<i32>(-15217i, 701i)), vec3<bool>(true, true, false)), Struct_2(Struct_1(1959u, 25476u, vec2<i32>(0i, 28985i)), vec3<bool>(true, true, false)), Struct_2(Struct_1(37379u, 110173u, vec2<i32>(-19069i, 0i)), vec3<bool>(true, false, true)), Struct_2(Struct_1(30096u, 4294967295u, vec2<i32>(i32(-2147483648), -3863i)), vec3<bool>(false, true, false)), Struct_2(Struct_1(76360u, 1u, vec2<i32>(i32(-2147483648), -1i)), vec3<bool>(false, true, false)), Struct_2(Struct_1(4294967295u, 20954u, vec2<i32>(1i, -17832i)), vec3<bool>(false, false, false)), Struct_2(Struct_1(71495u, 1u, vec2<i32>(i32(-2147483648), 0i)), vec3<bool>(false, false, false)), Struct_2(Struct_1(1u, 27288u, vec2<i32>(i32(-2147483648), 31811i)), vec3<bool>(false, false, true)), Struct_2(Struct_1(4294967295u, 4294967295u, vec2<i32>(2147483647i, 40097i)), vec3<bool>(false, true, false)), Struct_2(Struct_1(1u, 1u, vec2<i32>(35566i, i32(-2147483648))), vec3<bool>(true, false, true)), Struct_2(Struct_1(42993u, 0u, vec2<i32>(11636i, 1i)), vec3<bool>(false, false, true)));

var<private> global3: f32 = -785f;

var<private> global4: vec2<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> u32 {
    return 65974u >> (global0.x % 32u);
}

fn func_3() -> u32 {
    global4 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-127f - global4.x), _wgslsmith_f_op_f32(f32(-1f) * -536f))))), 1247f);
    let var_0 = Struct_2(Struct_1(89600u, 6767u, firstTrailingBit(vec2<i32>(~u_input.c, u_input.c >> (0u % 32u)))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(false, false, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))), vec3<bool>(false, (u_input.c << (u_input.b.x % 32u)) <= _wgslsmith_mod_i32(-2147483647i, u_input.c), -u_input.c <= -1i)));
    let var_1 = select(select(vec3<bool>(any(!var_0.b.zy), var_0.b.x, true), !vec3<bool>(true, true, !var_0.b.x), select(!(!vec3<bool>(false, var_0.b.x, var_0.b.x)), vec3<bool>(all(vec2<bool>(false, false)), var_0.b.x, var_0.b.x), vec3<bool>(527f != global4.x, all(vec2<bool>(true, true)), true))), !select(var_0.b, select(select(vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(var_0.b.x, false, var_0.b.x)), var_0.b, !var_0.b), !var_0.b), !var_0.b);
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1906f, global4.x) - vec2<f32>(303f, global4.x)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(606f, 486f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1352f, 805f), vec2<f32>(1000f, 273f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, global4.x) + vec2<f32>(108f, global4.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, global4.x) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, global4.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, global4.x) * vec2<f32>(global4.x, 150f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, 932f)))), var_0.b.x)));
    global2 = array<Struct_2, 25>();
    return ~38304u;
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = !(~func_3() == (0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 35734u, 0u, global0.x) << (vec4<u32>(4294967295u, 1u, arg_0, 1u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(arg_0, arg_0, arg_0, 1u))) % 32u)));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_0, firstLeadingBit(4294967295u) >> ((min(0u, u_input.a.x) << (arg_0 % 32u)) % 32u), ~0u), abs(~vec4<u32>(global0.x, u_input.b.x, countOneBits(arg_0), _wgslsmith_add_u32(u_input.a.x, global0.x)))), 25u)];
    let var_2 = vec2<i32>(i32(-1i) * -19418i, 0i);
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(327f * global4.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.x))));
    let var_3 = !var_1.b.xz;
    return vec4<bool>(any(!(!var_1.b.yz)), true, var_3.x, select(select(all(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, true)), !var_3.x && true, true), false, var_3.x & true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = func_2(min(~global0.x, ~func_1()), global1[_wgslsmith_index_u32(u_input.b.x, 27u)]);
    var var_2 = Struct_2(Struct_1(countOneBits(u_input.a.x), global0.x, ~(~(vec2<i32>(-2147483647i, 0i) >> (global0.xz % vec2<u32>(32u))))), vec3<bool>(var_1.x, var_1.x, !((var_1.x || true) && any(vec4<bool>(false, var_1.x, var_1.x, var_1.x)))));
    var var_3 = 107f;
    let var_4 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(firstTrailingBit(var_2.a.c.x), i32(-1i) * -2147483647i), _wgslsmith_div_i32(u_input.c, u_input.c) ^ (i32(-1i) * -2147483647i)), var_2.a.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(-(~1i), var_2.a.c, _wgslsmith_mod_u32(104415u, _wgslsmith_add_u32(u_input.b.x, global0.x)), vec2<u32>(var_2.a.b, abs(~_wgslsmith_mod_u32(global0.x, 22339u))), 1442f);
}

