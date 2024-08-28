struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, Struct_1(false, 0i, 34385i, 27294i, 1u), Struct_1(true, 58454i, -10721i, 9114i, 46147u), vec4<f32>(128f, 992f, -1000f, -1000f));

var<private> global1: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-1i, i32(-2147483648), -51362i, 38164i), vec4<i32>(67285i, 11230i, 2147483647i, -14629i), vec4<i32>(i32(-2147483648), 45613i, -1i, 0i), vec4<i32>(47076i, 602i, i32(-2147483648), 18840i), vec4<i32>(1i, -1i, -40803i, 2147483647i));

var<private> global2: vec2<f32>;

var<private> global3: vec3<i32>;

var<private> global4: array<i32, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(global0.d.x, _wgslsmith_div_f32(global0.d.x, global2.x))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.x, -971f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x))) + -373f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -967f)));
    let var_1 = ~u_input.b.yzw;
    global2 = vec2<f32>(1567f, -448f);
    let var_2 = Struct_1(true, _wgslsmith_mult_i32(~global3.x, _wgslsmith_div_i32(global3.x, -global4[_wgslsmith_index_u32(u_input.c.x, 10u)])), 2147483647i, global4[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(_wgslsmith_sub_u32(~u_input.c.x, 1u))), 10u)], global0.c.e);
    var var_3 = var_2;
    let var_4 = global3.x;
    var var_5 = _wgslsmith_f_op_vec4_f32(ceil(global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yy);
}

