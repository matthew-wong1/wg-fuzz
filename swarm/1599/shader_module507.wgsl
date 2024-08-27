struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(0i, vec3<i32>(i32(-2147483648), 12777i, 0i), 1i), Struct_1(-34783i, vec3<i32>(-1i, 25401i, i32(-2147483648)), 0i), Struct_1(2147483647i, vec3<i32>(2534i, i32(-2147483648), 1i), 1i), Struct_1(-1i, vec3<i32>(-1i, i32(-2147483648), 1i), -15387i), Struct_1(-236i, vec3<i32>(10353i, 2147483647i, 1i), 0i), Struct_1(-27886i, vec3<i32>(2147483647i, -19436i, 1i), -1i), Struct_1(0i, vec3<i32>(-1i, -25444i, -9288i), i32(-2147483648)), Struct_1(8175i, vec3<i32>(-28797i, 1i, 18733i), -12846i), Struct_1(15426i, vec3<i32>(-1i, 1i, 1i), 2147483647i), Struct_1(1i, vec3<i32>(-1i, i32(-2147483648), -6590i), 20366i), Struct_1(2147483647i, vec3<i32>(-21161i, i32(-2147483648), 1i), -44729i), Struct_1(2147483647i, vec3<i32>(-4227i, i32(-2147483648), -4885i), 2147483647i), Struct_1(2147483647i, vec3<i32>(2147483647i, 17160i, -4294i), i32(-2147483648)), Struct_1(-66000i, vec3<i32>(34922i, i32(-2147483648), 27342i), -17602i), Struct_1(1i, vec3<i32>(-191i, -24512i, 81969i), 2840i), Struct_1(70201i, vec3<i32>(-1i, -1i, -1i), 1i), Struct_1(-1i, vec3<i32>(50940i, i32(-2147483648), -53163i), 2147483647i), Struct_1(6974i, vec3<i32>(2147483647i, 3052i, 0i), 0i));

var<private> global1: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(0i, 2968i, -1i), vec3<i32>(54482i, -1i, 39810i), vec3<i32>(1i, 5514i, 0i));

var<private> global2: Struct_3;

var<private> global3: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(14439i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(-11697i, -6364i), vec2<i32>(i32(-2147483648), 25885i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    return firstLeadingBit(global2.c);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-138f, _wgslsmith_f_op_f32(-693f * -457f), global2.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(463f + -863f)), -2058f, -751f));
    global3 = array<vec2<i32>, 5>();
    let var_1 = !select(select(vec2<bool>(!global2.d.x, any(vec4<bool>(true, global2.d.x, global2.d.x, global2.d.x))), vec2<bool>(false && global2.d.x, global2.a.b.x < global2.a.c), all(vec2<bool>(global2.d.x, global2.d.x))), !global2.d.xx, !vec2<bool>(global2.d.x, !global2.d.x));
    let var_2 = Struct_1(6466i, select(global1[_wgslsmith_index_u32(0u, 3u)], u_input.c, !(!select(global2.d, vec3<bool>(var_1.x, var_1.x, global2.d.x), true))), global2.a.b.x);
    var var_3 = func_2(Struct_2(120802u, var_0.xw));
    return false;
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    global1 = array<vec3<i32>, 3>();
    global3 = array<vec2<i32>, 5>();
    var var_0 = Struct_2(~firstLeadingBit(_wgslsmith_sub_u32(9097u, ~u_input.b.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1507f, -286f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-602f, -1588f) * vec2<f32>(-722f, -158f))))));
    var var_1 = global2.e.x;
    global1 = array<vec3<i32>, 3>();
    return _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -299f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    var var_1 = global2.c | 24102u;
    var var_2 = vec4<f32>(243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(511f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1394f)) + _wgslsmith_div_f32(-1548f, -385f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, false), func_1(), select(global2.d, vec3<bool>(false, global2.d.x, false), false), global0[_wgslsmith_index_u32(u_input.b.x & 91625u, 18u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-447f, 844f))))), 694f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.a.b.x, 0i, firstLeadingBit(~1i), i32(-1i) * -2147483647i), vec4<i32>(global2.a.a, global2.b.b.x, countOneBits(2147483647i), global2.b.b.x)), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(974f - var_2.x)))), ~(-2147483647i));
}

