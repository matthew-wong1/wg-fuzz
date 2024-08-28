struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: i32 = 47363i;

var<private> global2: array<vec2<i32>, 21>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_2 {
    let var_0 = !(!vec3<bool>(false, !select(false, false, false), all(vec4<bool>(true, true, true, false))));
    global2 = array<vec2<i32>, 21>();
    let var_1 = ~reverseBits(_wgslsmith_add_vec3_u32(~vec3<u32>(37667u, u_input.b.x, 11877u) ^ ~vec3<u32>(19869u, 1u, u_input.b.x), u_input.b.xzz));
    let var_2 = u_input.b.x;
    global2 = array<vec2<i32>, 21>();
    return Struct_2(global0[_wgslsmith_index_u32(104845u, 9u)]);
}

fn func_3() -> u32 {
    let var_0 = true;
    global0 = array<Struct_1, 9>();
    global2 = array<vec2<i32>, 21>();
    let var_1 = vec4<bool>(true || var_0, any(vec3<bool>(true, true, true)) && true, true, true);
    let var_2 = vec2<i32>(~1i, ~abs(u_input.a) ^ -47424i);
    return firstTrailingBit(u_input.b.x);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-582f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -306f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -240f))))));
    let var_1 = vec3<u32>(0u & ~u_input.b.x, ~reverseBits(abs(~u_input.b.x)), min(min(select(1u, 0u, false) >> (u_input.b.x % 32u), u_input.b.x), 1u));
    global1 = _wgslsmith_div_i32(2147483647i, abs(u_input.a)) & (i32(-1i) * -32631i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(613f + _wgslsmith_f_op_f32(f32(-1f) * -1219f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1551f + 954f)))))));
    var var_3 = func_2();
    return StorageBuffer(abs(firstLeadingBit(func_3())), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(494f, -1216f), vec2<f32>(-1819f, -1079f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(632f, -869f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-410f, -438f) + vec2<f32>(993f, -446f)) - vec2<f32>(1858f, 837f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 577f, -394f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-464f, 644f, -434f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2059f, 159f, 398f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -312f)), _wgslsmith_f_op_f32(min(1f, -596f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1179f)) + _wgslsmith_div_f32(554f, -280f))), !all(!var_3.a.b))), vec4<f32>(1f, 1f, 1f, 1f), vec2<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(52974u, var_1.x, u_input.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(19665u, 12605u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 6047u)))) << (u_input.b.wy % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(u_input.b.x, countOneBits(~(~u_input.b.x)), _wgslsmith_mult_u32(~(u_input.b.x ^ 29989u), u_input.b.x), 0u);
    let x = u_input.a;
    s_output = func_1();
}

