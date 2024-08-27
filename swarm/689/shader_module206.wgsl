struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = 60401i;
    global0 = array<Struct_2, 26>();
    global1 = Struct_2(vec2<i32>(global1.a.x, (abs(global1.a.x) | abs(-5603i)) >> (global1.d.a.x % 32u)), -1346f, Struct_1(u_input.a.wz), Struct_1(_wgslsmith_mod_vec2_u32(u_input.a.xz, u_input.a.xw)), select(vec3<bool>(global1.e.x, any(select(vec4<bool>(global1.e.x, false, false, false), vec4<bool>(false, global1.e.x, global1.e.x, global1.e.x), true)), !global1.e.x), vec3<bool>(global1.e.x, false | (88277u > global1.d.a.x), !global1.e.x), vec3<bool>(true, (false & global1.e.x) & true, 1i != (var_0 << (4714u % 32u)))));
    let var_1 = global1.a;
    let var_2 = u_input.a.yyx;
    return global0[_wgslsmith_index_u32(23761u, 26u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-718f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_f_op_f32(-arg_2.b))) - _wgslsmith_f_op_f32(-arg_2.b));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-344f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2025f)) - -168f)))));
    global0 = array<Struct_2, 26>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global1.b, arg_2.b)))) + _wgslsmith_f_op_f32(-995f - _wgslsmith_f_op_f32(f32(-1f) * -1812f)))) * -2105f);
    let var_2 = Struct_2(-(~(~_wgslsmith_div_vec2_i32(global1.a, global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), -1620f)) * global1.b), Struct_1(arg_2.c.a), func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, arg_2.b, -349f) - vec3<f32>(arg_2.b, -563f, arg_2.b)))))).d, arg_2.e);
    return arg_2.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> f32 {
    let var_0 = global1.b;
    var var_1 = global1.c;
    var var_2 = Struct_2((-(~global1.a) ^ vec2<i32>(2147483647i, _wgslsmith_mult_i32(14831i, -3036i))) ^ vec2<i32>(global1.a.x, -global1.a.x), -264f, global1.c, global1.d, !(!global1.e));
    let var_3 = var_2.a;
    var_2 = func_1(vec3<f32>(arg_1, var_2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1431f), _wgslsmith_f_op_f32(func_3(global1.d, u_input.a.wxw, func_1(vec3<f32>(arg_1, arg_1, -706f)))))));
    return func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b, global1.b, -112f), vec3<f32>(1455f, -1000f, -483f), true))), vec3<f32>(_wgslsmith_f_op_f32(global1.b + 108f), _wgslsmith_f_op_f32(-arg_1), arg_1)))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 26>();
    var var_0 = global0[_wgslsmith_index_u32(reverseBits(9038u), 26u)];
    var_0 = func_1(vec3<f32>(-258f, global1.b, global1.b));
    global1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(u_input.a, 1515f)), var_0.b, _wgslsmith_f_op_f32(-global1.b)) + vec3<f32>(global1.b, _wgslsmith_f_op_f32(func_3(Struct_1(global1.c.a), vec3<u32>(68145u, 7815u, global1.c.a.x), global0[_wgslsmith_index_u32(12640u, 26u)])), 1233f))));
    var var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.a);
}

