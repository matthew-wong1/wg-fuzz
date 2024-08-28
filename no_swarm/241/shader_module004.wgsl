struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(0i, -26065i, 16826i, 2147483647i, -1i, -29156i, 35380i, -42858i, 1i, 67296i, 0i, 2147483647i, 14713i, 0i, -1i, 39613i, 2147483647i, 2147483647i, -12583i, 1i, 0i, 1i, 2697i, 1i, 5222i, 1i, 709i);

var<private> global1: array<Struct_2, 12>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(~vec2<u32>(abs(9291u), 1u) >> (select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), firstTrailingBit(vec2<u32>(1u, 5875u)), vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(58395u, 0u), vec2<u32>(1u, 10857u)) | vec2<u32>(1u, 20716u), true) % vec2<u32>(32u)), reverseBits(reverseBits(vec3<u32>(1u, 1u, 1u))));
    let var_1 = Struct_1(vec2<u32>(~var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_0.b.x, 1149u), var_0.b.x, 19196u), (var_0.b | vec3<u32>(22231u, 59015u, var_0.b.x)) | (vec3<u32>(var_0.a.x, 0u, 0u) << (vec3<u32>(0u, var_0.b.x, var_0.a.x) % vec3<u32>(32u))))), countOneBits(_wgslsmith_mult_vec3_u32(var_0.b, ~vec3<u32>(var_0.b.x, var_0.a.x, 1u) & var_0.b)));
    var var_2 = true;
    let var_3 = _wgslsmith_sub_u32(countOneBits(var_1.b.x), firstLeadingBit(_wgslsmith_mod_u32(~83238u, _wgslsmith_mult_u32(4294967295u, var_1.b.x))));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1051f, 1477f, 594f) + vec3<f32>(-1077f, -743f, 1000f)))), vec3<f32>(-665f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(abs(147f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(582f + 819f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1375f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-563f, 307f)) - 2163f), _wgslsmith_f_op_f32(sign(-218f))));
    return reverseBits(1u);
}

fn func_2() -> StorageBuffer {
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(countOneBits(1u), 1u, reverseBits(abs(62286u))), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(~4294967295u, func_3()), ~(~(~23035u))), 1u, _wgslsmith_sub_u32(58617u, _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 95716u), func_3()) | _wgslsmith_mod_u32(~0u, _wgslsmith_clamp_u32(1u, 54891u, 8276u))));
    let var_1 = vec2<bool>(true, (true & (_wgslsmith_f_op_f32(ceil(-979f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1446f))) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f) + _wgslsmith_div_f32(340f, 1000f)) <= _wgslsmith_f_op_f32(select(1633f, -570f, true))));
    global1 = array<Struct_2, 12>();
    var var_2 = -2147483647i;
    var var_3 = _wgslsmith_mult_vec2_u32(var_0.yy, min(var_0.yy, vec2<u32>(firstTrailingBit(var_0.x), ~var_0.x)));
    return StorageBuffer(u_input.a.yx);
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> StorageBuffer {
    global1 = array<Struct_2, 12>();
    var var_0 = arg_1.b.x;
    var_0 = !arg_1.a.x;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -858f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1307f * 2136f))) - _wgslsmith_f_op_f32(f32(-1f) * -449f))) - -2778f);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(~vec4<u32>(4529u, 77038u, 0u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(~(~0u), 4294967295u), 1u), 12u)]);
}

