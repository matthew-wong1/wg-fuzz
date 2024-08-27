struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

var<private> global1: bool = true;

var<private> global2: f32;

var<private> global3: vec3<f32> = vec3<f32>(1075f, -312f, 587f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: vec4<i32>) -> i32 {
    global3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global3.x, 1000f)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(select(614f, -1760f, all(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(336f + -268f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2681f, global3.x, global3.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(542f, global3.x, global3.x))), vec3<f32>(_wgslsmith_f_op_f32(1052f + global3.x), 721f, _wgslsmith_f_op_f32(trunc(global3.x)))))))));
    global3 = vec3<f32>(-664f, global3.x, 1681f);
    global1 = true;
    return ~arg_2;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec3<i32>) -> i32 {
    global1 = arg_2.b.b.x;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global3.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, -1029f)) * _wgslsmith_f_op_f32(ceil(-526f))), (arg_0 != arg_0) & true)))));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -1171f, _wgslsmith_f_op_f32(-316f + var_0.x)) - vec3<f32>(_wgslsmith_f_op_f32(round(974f)), _wgslsmith_f_op_f32(-global3.x), -1352f)))));
    let var_1 = Struct_2(Struct_1(vec2<i32>(arg_3.x, _wgslsmith_mult_i32(i32(-1i) * -71623i, func_3(Struct_1(u_input.b.xz), arg_2.b.a.a.x, 1i, u_input.b)))), select(!vec2<bool>(all(arg_1), true), arg_1.yx, true));
    var var_2 = global0[_wgslsmith_index_u32(~0u, 19u)];
    return ~9077i;
}

fn func_1() -> Struct_3 {
    global1 = true;
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, u_input.c), _wgslsmith_mult_i32(-53474i, u_input.d)), -func_2(1u, vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(20329u << (1u % 32u), 19u)], countOneBits(vec3<i32>(8110i, u_input.d, u_input.d)))) >> (~4294967295u % 32u);
    var var_1 = _wgslsmith_div_f32(global3.x, global3.x);
    let var_2 = Struct_1(-vec2<i32>(u_input.a, -2147483647i));
    let var_3 = Struct_2(Struct_1(~_wgslsmith_mod_vec2_i32(~vec2<i32>(-17138i, var_0), u_input.b.xy)), vec2<bool>(true, true));
    return Struct_3(var_2, Struct_2(var_3.a, select(var_3.b, select(!vec2<bool>(var_3.b.x, var_3.b.x), select(var_3.b, var_3.b, false), true), var_3.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = array<Struct_3, 19>();
    var var_1 = func_1();
    global0 = array<Struct_3, 19>();
    var_0 = var_1.b.b.x;
    var var_2 = func_1().b;
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.x, -1000f)) * global3.x))), -955f));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a.x, -vec2<i32>(~2147483647i, ~min(-45760i, 1i)));
}

