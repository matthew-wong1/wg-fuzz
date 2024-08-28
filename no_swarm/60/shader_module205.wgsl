struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
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

var<private> global0: vec3<u32> = vec3<u32>(25045u, 4294967295u, 39400u);

var<private> global1: bool = true;

var<private> global2: f32;

var<private> global3: array<u32, 9>;

var<private> global4: Struct_1 = Struct_1(true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> StorageBuffer {
    let var_0 = vec2<bool>(false, global4.a && all(!vec2<bool>(global4.a, global4.a)));
    return StorageBuffer(-56331i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(367f, _wgslsmith_f_op_f32(ceil(-1440f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(575f * _wgslsmith_div_f32(-1063f, -1800f)) - -668f)));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(~(-37292i), -1i)), -16320i);
    let x = u_input.a;
    s_output = func_1(Struct_1(!(false | global4.a)), 22614u >> (1u % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -812f));
}

