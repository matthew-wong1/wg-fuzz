struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_1 = Struct_1(true, 2147483647i);

var<private> global2: array<vec2<bool>, 8>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(false, u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1661f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1061f - 1065f))) - _wgslsmith_f_op_f32(2246f + _wgslsmith_f_op_f32(trunc(-1000f)))) + 1000f);
    var_0 = Struct_1(var_0.a, _wgslsmith_sub_i32(-2147483647i, countOneBits(_wgslsmith_mult_i32(var_0.b << (4294967295u % 32u), u_input.a.x & var_0.b))));
    var var_2 = -1000f;
    let var_3 = countOneBits(~1u);
    return Struct_1(true, 24355i);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = false;
    var var_1 = true;
    global2 = array<vec2<bool>, 8>();
    global2 = array<vec2<bool>, 8>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(0u != ~abs(firstTrailingBit(39726u)), ((~global1.b & (u_input.b.x & u_input.b.x)) ^ select(-1i, u_input.a.x, all(vec3<bool>(global1.a, false, global1.a)))) >> (_wgslsmith_sub_u32(32067u, _wgslsmith_clamp_u32(4294967295u, 38395u, select(0u, 9675u, true))) % 32u));
    var var_0 = -12234i;
    global2 = array<vec2<bool>, 8>();
    let var_1 = func_1(true);
    var var_2 = select(~_wgslsmith_add_vec3_u32(~(~vec3<u32>(0u, 4294967295u, 0u)), vec3<u32>(~0u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(64182u, 1u), vec2<u32>(59028u, 0u)))), _wgslsmith_sub_vec3_u32(vec3<u32>(63932u, _wgslsmith_dot_vec3_u32(~vec3<u32>(91176u, 0u, 0u), vec3<u32>(0u, 16665u, 1u)), 1u), vec3<u32>(1u, 1u, 1u)), !global1.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-769f, _wgslsmith_f_op_f32(sign(937f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(235f, -1000f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-380f, 343f) + vec2<f32>(670f, 160f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1633f + -1398f))))), vec2<bool>(!any(!vec3<bool>(global1.a, false, true)), any(global2[_wgslsmith_index_u32(97507u, 8u)]))));
    let var_4 = Struct_2(var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yx, var_4.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(126f, -378f, var_4.a))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, var_4.a, var_3.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.a, -1000f, var_4.a), vec3<f32>(1120f, var_4.a, 279f))))), select(!vec3<bool>(true, global1.a, false), select(vec3<bool>(false, true, global1.a), vec3<bool>(var_1.a, var_1.a, global1.a), vec3<bool>(false, false, global1.a)), var_1.a || var_1.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_4.a, var_3.x) * vec3<f32>(var_3.x, var_3.x, 633f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1451f, var_3.x)))), 1897f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)));
}

