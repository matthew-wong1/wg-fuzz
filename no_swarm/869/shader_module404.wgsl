struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
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

var<private> global0: Struct_1;

var<private> global1: vec2<f32>;

var<private> global2: bool = true;

var<private> global3: array<Struct_3, 12>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = u_input.b | abs(reverseBits(select(select(vec4<u32>(0u, 4294967295u, 0u, arg_0), vec4<u32>(4294967295u, u_input.b.x, arg_0, 48334u), true), u_input.b, all(vec3<bool>(true, false, true)))));
    global1 = vec2<f32>(231f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -326f))));
    var_0 = _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 22706u, ~var_0.x, var_0.x), min(u_input.b, vec4<u32>(u_input.b.x, 4294967295u, var_0.x, 25584u)));
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, -117f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-621f, global0.b) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-877f, -737f)), vec2<f32>(-1610f, -1190f)))));
    global0 = Struct_1(global0.b, _wgslsmith_f_op_f32(1424f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1706f + global0.a))) + -723f)), vec2<i32>(firstTrailingBit(-(-2147483647i ^ u_input.d.x)), -_wgslsmith_div_i32(-u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.d.x), vec2<i32>(u_input.c, -1i)))));
    return select(((~u_input.a >> (_wgslsmith_div_u32(4294967295u, 16027u) % 32u)) > var_0.x) & (any(vec3<bool>(true, true, true)) & !select(false, true, true)), true, true);
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_4(abs(u_input.c), false, ~select(~u_input.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b.yyz, vec3<u32>(u_input.a, 8139u, 0u)), u_input.b.x << (1u % 32u)), all(!vec3<bool>(arg_0.a.x, true, arg_0.a.x))));
    var var_1 = arg_0.a;
    let var_2 = var_1.xw;
    return _wgslsmith_mult_i32(1i, var_0.a);
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: i32, arg_3: i32) -> bool {
    let var_0 = func_4(Struct_3(vec4<bool>(all(vec2<bool>(false, false)), true, !func_3(33031u), all(vec2<bool>(true, true)))));
    var var_1 = Struct_1(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), u_input.d.zy);
    let var_2 = _wgslsmith_div_i32(~0i, max(-15394i, -var_0));
    var var_3 = Struct_2(select(!vec4<bool>(true, false, global0.c.x < arg_0.x, false), vec4<bool>(all(vec4<bool>(true, false, false, false)) | true, global0.c.x < 2147483647i, arg_1 > ~0u, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), (-445f == _wgslsmith_f_op_f32(-global0.b)) != false), Struct_1(global0.b, 192f, countOneBits(-(u_input.d.zx ^ u_input.d.yy))));
    var var_4 = var_3.b;
    return false;
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    var var_0 = ~_wgslsmith_sub_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 30545u), u_input.b)), _wgslsmith_add_vec4_u32(u_input.b, u_input.b));
    global3 = array<Struct_3, 12>();
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-arg_0.x))), arg_0.yz)) * arg_0.xy);
    let var_1 = vec3<bool>(false, 73165i < reverseBits(global0.c.x), ((global0.a < arg_0.x) && func_2(-vec3<i32>(global0.c.x, -5437i, global0.c.x), _wgslsmith_div_u32(u_input.b.x, 4294967295u), u_input.c ^ global0.c.x, firstTrailingBit(4649i))) != !all(vec3<bool>(true, true, true)));
    var var_2 = 0u;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(abs(func_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-791f, global1.x, global1.x))))), !((14078u == firstLeadingBit(u_input.b.x)) || func_2(vec3<i32>(2147483647i, global0.c.x, -70512i), ~18523u, 1i, ~0i)), abs(firstTrailingBit(29091u)));
    var var_1 = Struct_2(!(!(!(!vec4<bool>(var_0.b, false, true, true)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -445f)) - global0.a), global0.a, _wgslsmith_clamp_vec2_i32(~firstLeadingBit(vec2<i32>(-2147483647i, -6878i)), -vec2<i32>(-1i, 20737i), vec2<i32>(abs(var_0.a), u_input.d.x))));
    global0 = var_1.b;
    var var_2 = u_input.b.x;
    global1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f) + global0.a)), _wgslsmith_div_f32(1626f, 1722f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1352f, global0.a))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.a, 521f), vec2<f32>(global1.x, global1.x), false))))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

