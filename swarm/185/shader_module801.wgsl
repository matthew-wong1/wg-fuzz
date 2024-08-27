struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

var<private> global2: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> i32 {
    let var_0 = Struct_2(arg_0, arg_0);
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.a);
    var var_2 = Struct_3(arg_0, !vec3<bool>(!all(vec4<bool>(global2.a.b.x, false, false, true)), false, true));
    var var_3 = Struct_3(var_0.b, vec3<bool>(var_0.a.b.x, any(!(!vec4<bool>(var_2.b.x, var_0.a.b.x, true, true))), select(select(36161u, u_input.a, arg_0.b.x), u_input.a, true) < 21175u));
    let var_4 = 1i >> ((~(u_input.a << (36955u % 32u)) & 79707u) % 32u);
    return -1i;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = -754i;
    var var_0 = -vec4<i32>(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(floor(global2.a.a)), select(vec2<bool>(arg_0, false), global2.a.b, global2.b.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(836f, 413f, -844f))), global2.a.b.x), 2147483647i, 1i, reverseBits(~(i32(-1i) * -2848i)));
    var var_1 = global2.a;
    let var_2 = Struct_3(global2.a, !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, var_1.b.x, global2.a.b.x), global2.b.b.x), select(vec3<bool>(var_1.b.x, true, false), vec3<bool>(false, true, true), var_1.b.x), vec3<bool>(false, var_1.b.x, false))));
    var var_3 = select(select(var_2.b, !select(select(var_2.b, var_2.b, false), !vec3<bool>(arg_0, true, global2.a.b.x), global2.a.b.x), !vec3<bool>(any(vec4<bool>(true, true, false, false)), var_2.a.b.x, !var_1.b.x)), !vec3<bool>(true, !(!arg_0), false), false);
    return Struct_1(var_1.a, vec2<bool>(global2.a.b.x, global2.a.b.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    global1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, -_wgslsmith_sub_i32(0i, min(2147483647i, -2147483647i))), -countOneBits(-abs(-1i)));
    return Struct_3(Struct_1(vec2<f32>(global2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-892f, 945f)))), select(arg_1.a.b, vec2<bool>(global2.b.b.x, arg_1.b.b.x & arg_1.b.b.x), arg_1.a.b.x)), select(!select(select(vec3<bool>(arg_1.a.b.x, arg_1.b.b.x, true), vec3<bool>(true, arg_1.b.b.x, global2.a.b.x), arg_0.a.b.x), !vec3<bool>(arg_0.b.b.x, true, arg_0.a.b.x), true), !select(vec3<bool>(global2.a.b.x, global2.b.b.x, global2.b.b.x), vec3<bool>(true, arg_0.a.b.x, arg_0.a.b.x), arg_1.a.b.x), _wgslsmith_f_op_f32(step(2164f, _wgslsmith_f_op_f32(189f + -898f))) == 619f));
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = func_4(Struct_2(global2.b, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), global2.b.b)), Struct_2(func_2(false), func_2(arg_0.x != global2.a.a.x)));
    global2 = Struct_2(var_0.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1778f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-652f, -747f))), !var_0.b.zx));
    let var_1 = var_0.b.x;
    let var_2 = var_0;
    var var_3 = _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, -14249i), abs(-2147483647i)), _wgslsmith_mult_i32(-1i, -reverseBits(firstTrailingBit(-38629i))));
    return Struct_3(func_2(true), !var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~19246i);
    var var_0 = global2.a.a;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.x))));
    var var_2 = u_input.a;
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(928f, var_1, -2180f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1, 991f) * vec3<f32>(1344f, 934f, var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, u_input.a, (24525u << (u_input.a % 32u)) & 11534u), ~_wgslsmith_sub_vec2_u32(select(~vec2<u32>(153253u, u_input.a), vec2<u32>(u_input.a, 0u), true != global2.b.b.x), vec2<u32>(1u, 4294967295u)));
}

