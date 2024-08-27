struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 13>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(901f, 1655f))) * _wgslsmith_f_op_f32(floor(-1000f)))), 499f, _wgslsmith_f_op_f32(floor(2330f)), -680f);
    var var_1 = global0.a;
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -705f, 1577f, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))));
    return global1[_wgslsmith_index_u32(u_input.c, 13u)];
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_2, 13>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 13u)];
    let var_1 = ~(~u_input.a.x);
    global0 = Struct_1(~(-global0.a) >> (reverseBits(vec3<u32>(_wgslsmith_sub_u32(0u, u_input.b.x), ~70743u, firstLeadingBit(u_input.b.x))) % vec3<u32>(32u)));
    let var_2 = var_0.a.x;
    return func_2();
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>) -> f32 {
    var var_0 = vec3<bool>(all(select(select(select(vec3<bool>(arg_0.c, arg_0.c, true), vec3<bool>(arg_1, arg_1, arg_1), arg_1), !vec3<bool>(arg_1, true, arg_0.b), arg_1), !vec3<bool>(true, false, arg_1), any(!vec3<bool>(arg_1, arg_0.b, arg_0.b)))), false != all(select(!vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, false), true)), u_input.b.x <= 0u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-1244f)), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(max(322f, 1378f))))))));
    let var_1 = _wgslsmith_f_op_f32(func_3(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -528f))) < var_0.x, var_0.xw));
    global0 = Struct_1(-(max(vec3<i32>(global0.a.x, global0.a.x, global0.a.x) | global0.a, vec3<i32>(-2147483647i, u_input.d, u_input.d)) & global0.a));
    global1 = array<Struct_2, 13>();
    var var_2 = !vec4<bool>(false, any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), true)), u_input.b.x <= u_input.a.x, !any(vec2<bool>(false, false)));
    var var_3 = var_0.x;
    var var_4 = _wgslsmith_div_u32(u_input.b.x, u_input.c);
    let var_5 = -(~max(~(-vec4<i32>(-28592i, -24826i, u_input.d, 2147483647i)), vec4<i32>(u_input.d, global0.a.x, 49249i, _wgslsmith_add_i32(-36316i, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(u_input.b, ~vec3<u32>(_wgslsmith_sub_u32(u_input.c, 1u), 1u, _wgslsmith_sub_u32(u_input.c, u_input.b.x))), -62574i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), var_1)));
}

