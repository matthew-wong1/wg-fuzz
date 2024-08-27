struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(0u, 0u, 0u, 35535u, 0u, 37522u, 51749u, 4294967295u, 0u, 56022u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<u32>) -> i32 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(ceil(-1045f));
    var_0 = any(!vec3<bool>((false | arg_1) && arg_1, all(vec4<bool>(false, arg_1, arg_1, false)), _wgslsmith_f_op_f32(min(var_1, var_1)) < var_1));
    global0 = array<u32, 10>();
    var_0 = true;
    return ~arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    let var_0 = true && all(vec2<bool>(true, true));
    let var_1 = Struct_1(~(~44578u), _wgslsmith_mod_i32(-1i, select(1i, countOneBits(-42585i), var_0 & var_0)) | (_wgslsmith_add_i32(func_1(1i, false, vec2<u32>(4294967295u, 38224u)), 4073i) << (~0u % 32u)));
    var var_2 = ~(-21373i << (countOneBits(0u << (0u % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(1288f)));
}

