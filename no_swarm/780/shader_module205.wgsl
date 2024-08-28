struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(4294967295u, Struct_1(vec2<f32>(-730f, -497f), -1607f)), Struct_2(0u, Struct_1(vec2<f32>(652f, -384f), -1234f)), Struct_2(2002u, Struct_1(vec2<f32>(-103f, -1132f), 619f)), Struct_2(0u, Struct_1(vec2<f32>(-523f, 862f), -630f)), Struct_2(1876u, Struct_1(vec2<f32>(-2011f, -972f), 153f)), Struct_2(57030u, Struct_1(vec2<f32>(-161f, 1628f), 1017f)), Struct_2(0u, Struct_1(vec2<f32>(768f, -1413f), -1013f)), Struct_2(0u, Struct_1(vec2<f32>(-192f, -403f), -653f)), Struct_2(105933u, Struct_1(vec2<f32>(1782f, 356f), -1427f)), Struct_2(2130u, Struct_1(vec2<f32>(522f, -439f), 205f)), Struct_2(4294967295u, Struct_1(vec2<f32>(217f, -1068f), 358f)), Struct_2(20798u, Struct_1(vec2<f32>(-682f, 692f), 751f)), Struct_2(17466u, Struct_1(vec2<f32>(1312f, 270f), 1606f)), Struct_2(1u, Struct_1(vec2<f32>(-534f, -1353f), 706f)), Struct_2(33649u, Struct_1(vec2<f32>(438f, 117f), -1000f)), Struct_2(1u, Struct_1(vec2<f32>(-703f, 914f), 1916f)), Struct_2(4294967295u, Struct_1(vec2<f32>(349f, 1000f), 713f)), Struct_2(4294967295u, Struct_1(vec2<f32>(441f, 1000f), 404f)), Struct_2(63576u, Struct_1(vec2<f32>(1715f, -548f), 711f)), Struct_2(48151u, Struct_1(vec2<f32>(-1000f, -995f), 1000f)), Struct_2(0u, Struct_1(vec2<f32>(825f, -814f), -803f)), Struct_2(19984u, Struct_1(vec2<f32>(-683f, -1386f), -326f)), Struct_2(17260u, Struct_1(vec2<f32>(735f, -630f), 935f)), Struct_2(1309u, Struct_1(vec2<f32>(394f, -1000f), -842f)), Struct_2(1u, Struct_1(vec2<f32>(1000f, 730f), -734f)), Struct_2(0u, Struct_1(vec2<f32>(751f, -607f), -2670f)));

var<private> global2: array<Struct_2, 30>;

var<private> global3: array<u32, 25>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec3<bool> {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 26u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b.a, global0.c)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -253f, _wgslsmith_f_op_f32(-141f + global0.c.x)) * vec3<f32>(-1000f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_div_f32(1000f, var_1.x)) + _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(1430f - var_1.x)))));
    var var_3 = (countOneBits(abs(select(u_input.a.xz, global0.a.zy, arg_1))) << (global0.a.xx % vec2<u32>(32u))) ^ ~(vec2<u32>(~1u, var_0.a) ^ (~vec2<u32>(0u, 0u) | u_input.a.zx));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1778f)) + _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b))) * -499f)));
    return select(select(!(!vec3<bool>(false, arg_1, arg_1)), vec3<bool>(true, any(vec2<bool>(arg_1, false)), true), arg_1), select(!select(vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, false, true), vec3<bool>(true, true, true)), select(!select(vec3<bool>(arg_1, true, true), vec3<bool>(true, false, false), vec3<bool>(true, arg_1, arg_1)), !vec3<bool>(arg_1, true, false), !(!vec3<bool>(arg_1, arg_1, arg_1))), false | select(true, 1040f >= var_4.x, any(vec2<bool>(arg_1, arg_1)))), select(!(!vec3<bool>(false, false, arg_1)), !vec3<bool>(-1i > arg_0, all(vec2<bool>(false, false)), all(vec3<bool>(false, arg_1, arg_1))), !vec3<bool>(any(vec3<bool>(false, false, false)), true, true)));
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = arg_0.b;
    var var_1 = func_3(~1i, all(vec3<bool>(true, true, true)));
    var_0 = arg_0.b;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(944f)), -554f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_0.b.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.b - arg_0.b.b), 1252f, true)))))));
    var_0 = Struct_1(vec2<f32>(-915f, _wgslsmith_f_op_f32(-var_0.b)), var_0.a.x);
    return !var_1.x;
}

fn func_1() -> u32 {
    let var_0 = 74398u;
    let var_1 = select(all(select(vec3<bool>(true, func_2(global2[_wgslsmith_index_u32(global0.a.x, 30u)]), true), vec3<bool>(select(false, false, true), true, true), func_2(Struct_2(15211u, Struct_1(vec2<f32>(1000f, -312f), global0.b))))), true, !(!(_wgslsmith_f_op_f32(global0.b - -2819f) != _wgslsmith_f_op_f32(min(672f, global0.b)))));
    return select(4294967295u, 1u, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = vec2<u32>(global0.a.x, ~func_1());
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.c.x, 1497f), global0.b, _wgslsmith_f_op_f32(776f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -422f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c.x), 895f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, global0.c.x, global0.b)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, -1675f, 390f, global0.c.x) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c.x, 784f, -555f, 1097f), vec4<f32>(global0.b, global0.c.x, global0.c.x, -171f))))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c)))) + vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-302f * _wgslsmith_f_op_f32(-var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(select(-887i, _wgslsmith_clamp_i32(-25699i, 10418i, -2147483647i), false), 1i) >> (36347u % 32u));
}

