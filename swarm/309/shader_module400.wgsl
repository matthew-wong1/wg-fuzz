struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7>;

var<private> global1: array<vec3<i32>, 8>;

var<private> global2: array<bool, 17> = array<bool, 17>(false, false, false, false, true, false, false, false, false, false, true, false, false, true, false, false, false);

var<private> global3: vec3<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_1 {
    let var_0 = global3.yx;
    global0 = array<vec3<bool>, 7>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(178f, _wgslsmith_f_op_f32(f32(-1f) * -916f)) - vec2<f32>(1f, 1f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-163f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-405f, -1042f)), 1102f))))));
    global0 = array<vec3<bool>, 7>();
    let var_2 = Struct_1(vec2<f32>(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-298f, -775f)) - 1645f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1622f)) + -181f), _wgslsmith_f_op_f32(floor(-686f))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1065f, -734f) - var_2.a), var_2.b);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = -31922i;
    global2 = array<bool, 17>();
    let var_1 = ~u_input.c.yy;
    var var_2 = func_2();
    var var_3 = global3.zy;
    return Struct_1(_wgslsmith_f_op_vec2_f32(var_2.a * var_2.a), -374f);
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_sub_u32(~4294967295u, reverseBits(_wgslsmith_mod_u32(min(~u_input.c.x, u_input.c.x), u_input.c.x)));
    global2 = array<bool, 17>();
    var var_1 = 956f;
    let var_2 = !(!global2[_wgslsmith_index_u32(0u, 17u)]);
    global1 = array<vec3<i32>, 8>();
    return abs(~reverseBits(u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs(u_input.a));
    let var_1 = ~max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 7406i) & vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.b.x, u_input.b.x)), u_input.a);
    var var_2 = ~0u;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b)))));
    var var_4 = global3.x;
    var var_5 = _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1, var_1 & reverseBits(38625i), func_3(_wgslsmith_sub_i32(2147483647i, 58577i))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(func_3(u_input.b.x), 1i), select(_wgslsmith_mod_i32(22816i, -2147483647i), var_1, any(global3.xx))), 1i, _wgslsmith_mult_i32(firstLeadingBit(-16526i), abs(u_input.a) | reverseBits(-2147483647i))));
    var var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, firstLeadingBit(u_input.b));
}

