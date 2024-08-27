struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    var var_0 = arg_0.c;
    var_0 = -694f;
    return StorageBuffer(-vec3<i32>(19555i, i32(-1i) * -arg_0.b.x, arg_0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_0.c, -159f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = func_1(Struct_2(vec3<i32>(~countOneBits(-2147483647i), reverseBits(u_input.b.x), u_input.b.x), vec3<i32>(2147483647i, _wgslsmith_mult_i32(~u_input.b.x, firstTrailingBit(u_input.b.x)), _wgslsmith_add_i32(~u_input.b.x, u_input.b.x)), 1000f, max(~(~vec3<u32>(1031u, 0u, u_input.a)), ~firstLeadingBit(vec3<u32>(34150u, 1u, u_input.a)))));
}

