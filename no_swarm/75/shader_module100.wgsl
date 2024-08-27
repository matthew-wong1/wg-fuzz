struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2.a;
    var var_1 = -2147483647i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_2.a.a - _wgslsmith_f_op_f32(max(-669f, _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-1214f + arg_0.a))))), ~select(reverseBits(reverseBits(arg_1.a.b)), ~(~arg_0.b), vec2<bool>(arg_2.a.c, true)), ~u_input.a == (12467u ^ arg_2.a.b.x));
    let var_3 = arg_2;
    var_1 = -2147483647i;
    return _wgslsmith_sub_u32(var_2.b.x, 2804u);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> bool {
    let var_0 = arg_0;
    let var_1 = arg_2;
    let var_2 = (arg_0.b.x != min(select(func_2(Struct_1(arg_1, vec2<u32>(4921u, 104950u), arg_2.a.c), Struct_2(Struct_1(-838f, var_0.b, true)), Struct_2(Struct_1(794f, u_input.d.yx, var_0.c))), ~1u, var_0.c | false), countOneBits(1u))) || true;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * -177f), _wgslsmith_f_op_f32(ceil(146f)), arg_2.a.a)) * vec4<f32>(_wgslsmith_f_op_f32(var_1.a.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), 641f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(433f + -709f) * -366f), 572f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-100f)))))));
    global0 = array<Struct_2, 21>();
    return !var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(u_input.b > (reverseBits(u_input.a) >> ((u_input.a >> (u_input.d.x % 32u)) % 32u)), true, all(vec3<bool>(true, true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)))), false);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(492f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-691f, -851f)))));
    global0 = array<Struct_2, 21>();
    let var_2 = select(vec4<bool>(false, var_0.x, true, !(var_1.x <= 746f)), select(vec4<bool>(true, true, var_0.x, func_1(Struct_1(607f, vec2<u32>(4294967295u, 4294967295u), var_0.x), var_1.x, global0[_wgslsmith_index_u32(select(u_input.d.x, 4294967295u, var_0.x), 21u)])), !select(vec4<bool>(var_0.x, var_0.x, false, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), !vec4<bool>(false, var_0.x, true, var_0.x)), !vec4<bool>(true, all(vec3<bool>(true, false, false)), var_1.x > -760f, all(var_0.yz))), !vec4<bool>(any(vec2<bool>(var_0.x, var_0.x)), !var_0.x, true, false));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1442f), _wgslsmith_f_op_f32(-var_1.x));
    var_0 = var_2;
    let var_3 = var_2.www;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(max(900f, -747f)), _wgslsmith_f_op_f32(trunc(var_1.x)), 321f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -1615f))) + vec4<f32>(_wgslsmith_f_op_f32(round(var_1.x)), -1053f, _wgslsmith_div_f32(var_1.x, var_1.x), -614f)), var_2.x)), vec2<i32>(1i, 1i), abs(_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, ~14858i), -1i)));
}

