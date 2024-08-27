struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
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

var<private> global0: vec2<i32> = vec2<i32>(0i, 2147483647i);

var<private> global1: array<vec4<f32>, 23>;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, true, false));

var<private> global3: array<i32, 11> = array<i32, 11>(i32(-2147483648), 33850i, 52481i, 4542i, -15453i, -33508i, 68308i, -14117i, -41183i, -45969i, -20787i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_4) -> f32 {
    let var_0 = arg_0.b;
    let var_1 = Struct_2(any(!select(vec3<bool>(false, false, false), arg_0.b.a, vec3<bool>(arg_0.b.a.x, true, false))));
    var var_2 = arg_0;
    global1 = array<vec4<f32>, 23>();
    global0 = vec2<i32>(~countOneBits(1i), 1i);
    return -1008f;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_5) -> i32 {
    var var_0 = arg_1;
    global2 = arg_1;
    let var_1 = 27326i;
    var var_2 = arg_1.a.x;
    global3 = array<i32, 11>();
    return countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -(~global0.x)), -select(vec2<i32>(global0.x, 1i) << (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u)), vec2<i32>(global3[_wgslsmith_index_u32(9922u, 11u)], 0i), !arg_0)));
}

fn func_1() -> Struct_5 {
    let var_0 = vec3<f32>(1165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -584f)) + _wgslsmith_f_op_f32(366f + _wgslsmith_f_op_f32(func_2(Struct_3(vec3<f32>(1000f, -169f, 596f), Struct_1(vec3<bool>(true, global2.a.x, false))), vec3<f32>(444f, 427f, 1680f), Struct_4(vec4<i32>(u_input.c, 0i, global0.x, 62546i))))))), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(min(-123f, _wgslsmith_f_op_f32(f32(-1f) * -439f))), !select(global2.a.x, any(vec4<bool>(global2.a.x, false, global2.a.x, global2.a.x)), true))));
    var var_1 = Struct_4(~abs(vec4<i32>(u_input.c ^ -39876i, global0.x, abs(global3[_wgslsmith_index_u32(0u, 11u)]), func_3(false, Struct_1(vec3<bool>(global2.a.x, true, true)), Struct_5(var_0)))));
    var var_2 = u_input.b;
    var var_3 = -1131f;
    global2 = Struct_1(!select(global2.a, global2.a, global2.a));
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, 316f))) - vec3<f32>(1f, 1f, 1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 11>();
    var var_0 = firstTrailingBit(2147483647i);
    let var_1 = global0.x != _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(7077i, -1i), 12267i) ^ abs(_wgslsmith_sub_i32(2147483647i, u_input.c)), 1i);
    let var_2 = func_1();
    global2 = Struct_1(global2.a);
    let var_3 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

