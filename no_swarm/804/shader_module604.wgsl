struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(u_input.a ^ u_input.a) << (u_input.a % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-1i, countOneBits(firstLeadingBit(firstTrailingBit(0i)))), _wgslsmith_f_op_f32(-976f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-166f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

