struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(1i, true, 4294967295u), Struct_3(0i, false, 0u), Struct_3(0i, false, 0u), Struct_3(78625i, true, 16761u), Struct_3(i32(-2147483648), false, 60674u), Struct_3(2147483647i, false, 1u), Struct_3(-14702i, false, 8751u));

var<private> global1: array<bool, 30> = array<bool, 30>(true, false, false, false, false, false, true, false, true, true, true, true, true, true, false, true, false, true, false, true, true, true, true, true, false, true, false, true, false, true);

var<private> global2: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(-29369i, -8904i, -1i, -28367i), vec4<i32>(i32(-2147483648), 5874i, 2147483647i, i32(-2147483648)), vec4<i32>(16943i, 1i, i32(-2147483648), 0i), vec4<i32>(-32818i, 10677i, 9378i, -55715i), vec4<i32>(-1665i, 33264i, -1i, 2147483647i), vec4<i32>(0i, 51468i, -1i, 0i), vec4<i32>(2147483647i, -1i, 446i, 0i), vec4<i32>(2147483647i, 0i, -34i, 33786i), vec4<i32>(-43008i, -16207i, -80280i, -19337i), vec4<i32>(-4715i, 2147483647i, 2147483647i, -1i), vec4<i32>(45703i, 1072i, 27262i, 7391i), vec4<i32>(10464i, 1i, 1i, 2147483647i), vec4<i32>(55100i, -2229i, 2147483647i, -9982i), vec4<i32>(-17010i, -11313i, i32(-2147483648), -1i), vec4<i32>(70066i, 34710i, i32(-2147483648), 1470i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec2<u32> {
    global2 = array<vec4<i32>, 15>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f));
    let var_1 = 0i;
    var var_2 = Struct_2(~(~(~(vec2<u32>(arg_1.c, 1u) << (vec2<u32>(arg_1.c, 15307u) % vec2<u32>(32u))))), ~4294967295u);
    var var_3 = Struct_1(vec3<i32>(arg_1.a, firstTrailingBit(9219i), arg_1.a), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(9013i, arg_1.a, -12171i) & vec3<i32>(-1i, var_1, -1i), vec3<i32>(-5928i, -34702i, arg_1.a)), _wgslsmith_f_op_f32(-arg_0), select(arg_1.b, true, !(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, var_1, arg_1.a), vec3<i32>(arg_1.a, arg_1.a, 17678i)) == -11547i)));
    return vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, 39460u, arg_1.c) >> (vec3<u32>(arg_1.c, u_input.a, u_input.a) % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, arg_1.c), vec3<u32>(u_input.a, arg_1.c, 4294967295u), vec3<u32>(var_2.b, var_2.b, arg_1.c))) >> (u_input.a % 32u));
}

fn func_2() -> Struct_3 {
    global2 = array<vec4<i32>, 15>();
    global0 = array<Struct_3, 7>();
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(4294967295u), 7u)];
    var var_1 = false;
    let var_2 = Struct_2(func_3(_wgslsmith_f_op_f32(1394f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1715f - 1000f)))), Struct_3(var_0.a, true, ~0u | (1u & u_input.a))), var_0.c);
    return global0[_wgslsmith_index_u32(~(~firstLeadingBit(~firstTrailingBit(var_2.a.x))), 7u)];
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    return vec3<bool>(true, ~(-34565i << (_wgslsmith_clamp_u32(u_input.a, 4294967295u, arg_0.c) % 32u)) > -(firstTrailingBit(arg_0.a) << (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)), func_2().b);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_div_vec2_i32(~(~(-vec2<i32>(1i, -27564i))) << (select(vec2<u32>(u_input.a | u_input.a, ~u_input.a), arg_1, true) % vec2<u32>(32u)), vec2<i32>(~4833i, ~(-11576i)));
    let var_1 = !func_4(func_2());
    var_0 = vec2<i32>(i32(-1i) * -firstLeadingBit(1i), _wgslsmith_sub_i32(-var_0.x, 2147483647i));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 984f, arg_0.x, 123f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 240f), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 30u)], false, true)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -220f, arg_0.x, -992f) - vec4<f32>(906f, arg_0.x, 777f, 247f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -835f, -904f, arg_0.x) - vec4<f32>(arg_0.x, 149f, arg_0.x, -1000f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 2119f, arg_0.x, 584f) + vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))))));
    global1 = array<bool, 30>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1449f))))) + arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~(~vec2<u32>(~0u, ~0u)), _wgslsmith_mod_u32(abs(u_input.a), 1u));
    var var_1 = Struct_2(vec2<u32>(u_input.a, 1u) ^ ~vec2<u32>(max(u_input.a, var_0.a.x), _wgslsmith_dot_vec2_u32(var_0.a, var_0.a)), firstTrailingBit(select(u_input.a, 66611u, false)));
    let var_2 = var_1.a.x;
    global1 = array<bool, 30>();
    var var_3 = -1918f;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(840f, -816f)))), vec2<u32>(~u_input.a, 4294967295u)))));
    let var_5 = firstLeadingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(9071i, 70458i, 11619i), vec3<i32>(0i, 96575i, -13210i), abs(vec3<i32>(-2147483647i, 1i, -1852i))), countOneBits(reverseBits(vec3<i32>(-1i, 13122i, 15539i))), ~vec3<i32>(1i, 1i, 1i)) & vec3<i32>(1i, 1i, 1i));
    var var_6 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-463f + 459f), _wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_f_op_f32(var_4.x * var_4.x), var_4.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, -768f, _wgslsmith_f_op_f32(-var_4.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(0i), 1i, 205f, ~(-1i));
}

