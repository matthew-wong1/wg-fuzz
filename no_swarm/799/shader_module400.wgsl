struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<i32> {
    let var_0 = u_input.a;
    return vec4<i32>(u_input.c.x, 14339i, abs(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), countOneBits(countOneBits(57586i) >> (var_0 % 32u)));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(-189f));
    let var_1 = 13815u;
    let var_2 = true;
    let var_3 = -func_3();
    var var_4 = 1443f;
    return global2[_wgslsmith_index_u32(~u_input.b.x, 14u)];
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    return func_2(22533i, u_input.c.x);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    global2 = array<Struct_1, 14>();
    let var_0 = func_2(u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, u_input.c.x));
    global2 = array<Struct_1, 14>();
    var var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(f32(-1f) * -485f))), Struct_1(vec3<bool>(true, u_input.c.x >= ~u_input.c.x, var_0.a.x && arg_2.a.x)), func_2(func_3().x, 5972i), all(vec2<bool>(any(vec4<bool>(true, arg_2.a.x, false, var_0.a.x)), arg_2.a.x)));
    var var_2 = Struct_1(var_1.a);
    return 991f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1656f, 1078f, -327f, 1858f), vec4<f32>(1361f, 129f, -1074f, 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -553f, 1394f, 1801f) + vec4<f32>(676f, -548f, 2429f, -1211f))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(191f)), _wgslsmith_f_op_f32(1063f - 135f)), _wgslsmith_f_op_f32(func_4(u_input.b.x, _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b), func_1(-180f, Struct_1(global1.a), Struct_1(global1.a), true))), _wgslsmith_f_op_f32(f32(-1f) * -787f), 1000f))));
    global1 = global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.a, 0u)), 14u)];
    var var_1 = ~(~(u_input.a ^ 4294967295u) >> ((~u_input.b.x & u_input.a) % 32u)) >> (firstTrailingBit(71408u) % 32u);
    global0 = max(abs(abs(reverseBits(_wgslsmith_mod_u32(4294967295u, u_input.a)))), ~u_input.b.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(func_4(46416u, ~(~vec4<u32>(u_input.a, u_input.a, u_input.b.x, 48215u)), Struct_1(global1.a)))) + var_0.zz);
    var var_3 = vec2<u32>(~(~u_input.b.x ^ firstLeadingBit(16407u)), u_input.b.x);
    var_1 = reverseBits(var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(min(-1025f, 1729f)), _wgslsmith_f_op_f32(-213f - var_2.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(457f, var_2.x))))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(step(var_0.x, var_0.x))))), reverseBits(_wgslsmith_sub_vec2_u32(u_input.b.xy, max(u_input.b.xx, vec2<u32>(4294967295u, var_3.x)) | ~u_input.b.zx)), 1u);
}

