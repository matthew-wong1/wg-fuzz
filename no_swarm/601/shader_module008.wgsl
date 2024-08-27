struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: u32 = 1u;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(1i, 36202i, 0i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> u32 {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    let var_0 = -1448f;
    let var_1 = true;
    var var_2 = !select(select(vec2<bool>(true, var_1), select(vec2<bool>(false, var_1), vec2<bool>(false, var_1), vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(329f)) > _wgslsmith_div_f32(var_0, var_0)), !(!select(vec2<bool>(var_1, var_1), vec2<bool>(false, true), var_1)), false);
    return _wgslsmith_sub_u32(19547u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(vec2<i32>(_wgslsmith_add_i32(i32(-1i) * -8266i, firstTrailingBit(firstLeadingBit(-2147483647i))), 1i));
    global0 = array<Struct_1, 21>();
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-315f * _wgslsmith_f_op_f32(-1129f + -473f)))))));
    global2 = Struct_1(global2.a);
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

