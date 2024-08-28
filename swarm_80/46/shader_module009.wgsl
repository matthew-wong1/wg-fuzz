struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_add_i32(u_input.a.x, u_input.a.x);
    var var_1 = Struct_2(~u_input.c.zy, true, _wgslsmith_f_op_f32(global0.x * 534f), abs(~(~_wgslsmith_mult_vec3_i32(u_input.b, u_input.b))));
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.c, var_1.c, 792f, _wgslsmith_div_f32(-1056f, _wgslsmith_f_op_f32(-global0.x)))))));
    var_0 = select(var_1.d.x, ~u_input.a.x << (u_input.c.x % 32u), any(select(!select(vec3<bool>(false, var_1.b, false), vec3<bool>(true, var_1.b, var_1.b), false), !(!vec3<bool>(var_1.b, var_1.b, var_1.b)), var_1.b)));
    var var_2 = Struct_3(-u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(u_input.c.x >> (reverseBits(63616u) % 32u))));
}

