struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(-45871i, 0i, 1i, 11282i, 64441i, 1i, 1i, 2147483647i, -15346i, -1i, 2147483647i, 2147483647i, -15429i, 1i, i32(-2147483648), 3902i, i32(-2147483648), 43115i, 33083i, -29022i, 17135i, 1i, 0i, 0i, -19036i, -1i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1259f, _wgslsmith_f_op_f32(sign(-410f))) * 1701f), u_input.a, true);
    global0 = array<i32, 26>();
    var var_1 = select(vec2<i32>(~0i, i32(-1i) * -(u_input.c.x << (var_0.b % 32u))), ~vec2<i32>(~global0[_wgslsmith_index_u32(~var_0.b, 26u)], _wgslsmith_sub_i32(1685i, u_input.c.x & -2147483647i)), var_0.c);
    global0 = array<i32, 26>();
    var_1 = u_input.c.wy;
    return _wgslsmith_f_op_f32(-var_0.a);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    var var_0 = Struct_1(arg_1.a, 31540u, true);
    global0 = array<i32, 26>();
    return _wgslsmith_f_op_f32(func_2());
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec2<u32> {
    global0 = array<i32, 26>();
    let var_0 = arg_0;
    global0 = array<i32, 26>();
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(789f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -229f))) + _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(arg_0.a * 595f))), arg_0.c, true);
    let var_2 = _wgslsmith_mod_vec3_i32(abs(~u_input.c.yyz), -(~u_input.c.yyw)) | u_input.c.zzw;
    return ~u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -673f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * var_0) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1519f)), _wgslsmith_f_op_f32(-var_0), abs(1u) <= u_input.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(var_0, u_input.b.x, true), Struct_1(var_0, u_input.a, false), Struct_1(1216f, 4294967295u, false))) * var_0), _wgslsmith_f_op_f32(f32(-1f) * -675f)))));
    var var_2 = any(!vec4<bool>(true, -32143i <= (u_input.c.x & -4161i), !any(vec3<bool>(true, true, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))));
    let var_3 = ~((vec2<i32>(u_input.c.x, u_input.c.x) << (func_3(Struct_1(-779f, u_input.a, false), global0[_wgslsmith_index_u32(~u_input.b.x, 26u)]) % vec2<u32>(32u))) >> ((vec2<u32>(abs(u_input.a), _wgslsmith_mod_u32(47435u, 1u)) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global0 = array<i32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -2750f) * vec3<f32>(var_0, -710f, 708f))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 939f, 1902f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1372f, var_0))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-317f, var_1, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1708f, 1580f, -680f))))))));
}

