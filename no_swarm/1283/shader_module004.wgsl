struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(337f, 1102f, -1071f);

var<private> global1: array<u32, 10>;

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    var var_0 = u_input.c.zz;
    var var_1 = 1u;
    var var_2 = vec4<u32>(u_input.a, 1u, (min(0u, global1[_wgslsmith_index_u32(u_input.a, 10u)]) & global1[_wgslsmith_index_u32(u_input.a, 10u)]) & ~_wgslsmith_mod_u32(0u, u_input.a), max(u_input.a, _wgslsmith_mult_u32(_wgslsmith_div_u32(56885u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59925u, 10u)], 10u)], 10u)], 10u)], 10u)]) >> (u_input.a % 32u), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52103u, 10u)], 10u)], 10u)] << (~7556u % 32u))));
    let var_3 = Struct_3(Struct_2(true, countOneBits(vec3<i32>(-2147483647i, countOneBits(var_0.x), abs(65402i)))), var_2.wyy, Struct_2(false, -(vec3<i32>(var_0.x, u_input.c.x, -49405i) & (vec3<i32>(u_input.b, 0i, -1i) | vec3<i32>(var_0.x, u_input.c.x, 2147483647i)))), Struct_2(any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true)), vec3<i32>(~u_input.b, -1i, -(~(-2147483647i)))));
    let var_4 = !(-var_3.d.b.x > var_3.c.b.x);
    return _wgslsmith_mod_i32(var_0.x, reverseBits(-2908i));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = Struct_4(abs(~(~vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(78908u, 10u)], 10u)], u_input.a) | _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 25053u, u_input.a), vec3<u32>(8775u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 33514u)))));
    global1 = array<u32, 10>();
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(func_3(), i32(-1i) * -144i, arg_1.x, min(-30288i, arg_1.x)), vec4<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, arg_1.x), u_input.c.yz), arg_1.yx), arg_1.x, 10905i, func_3()), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(arg_1.x, u_input.c.x), -1i, reverseBits(arg_1.x), ~u_input.c.x), vec4<i32>(-32697i, u_input.c.x, -1i, arg_1.x) ^ ~vec4<i32>(1i, 26544i, arg_1.x, u_input.b)) >> (~max(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(0u, 10u)], u_input.a, 0u, 4294967295u)), ~vec4<u32>(0u, 1u, var_0.a.x, u_input.a)) % vec4<u32>(32u)));
    global2 = abs(1u);
    global0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(115f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global0.x)))))), _wgslsmith_f_op_f32(global0.x + -1073f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global0.x)))) + _wgslsmith_div_f32(-203f, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(step(953f, _wgslsmith_f_op_f32(sign(-1018f)))), true)) * global0.x));
    return ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_0.a, ~vec3<u32>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 10u)], 10u)])), var_0.a);
}

fn func_1(arg_0: Struct_4) -> f32 {
    let var_0 = 2147483647i;
    let var_1 = Struct_1(vec4<u32>(u_input.a, 1u | ~u_input.a, u_input.a, _wgslsmith_mult_u32(select(0u, 19213u, true), abs(func_2(global0.zx, u_input.c.zzy)))), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstTrailingBit(~4161u), 69826u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a ^ u_input.a, ~1u), min(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_0.a.x, 10u)], u_input.a, 1u, u_input.a), vec4<u32>(4294967295u, arg_0.a.x, 1u, arg_0.a.x)), u_input.a & global1[_wgslsmith_index_u32(arg_0.a.x, 10u)]), 56501u), 0u), vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-289f * 1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)))));
    var var_2 = abs(-vec3<i32>(0i, 2147483647i, ~(-var_0)));
    var var_3 = Struct_4(firstTrailingBit(var_1.a.ywz));
    let var_4 = vec2<bool>(true, false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec2<u32>(~(~u_input.a), ~1u) | select(~vec2<u32>(61403u, u_input.a), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(71854u, u_input.a), vec2<u32>(27600u, global1[_wgslsmith_index_u32(8888u, 10u)])), vec2<u32>(88668u, 4294967295u)), true)) | ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 0u), vec2<u32>(0u, u_input.a)), firstLeadingBit(~vec2<u32>(1u, 4294967295u)));
    let var_1 = ~u_input.a;
    var var_2 = Struct_4(~max(~vec3<u32>(40850u, var_1, global1[_wgslsmith_index_u32(1u, 10u)]) & ~vec3<u32>(0u, 0u, 22231u), select(vec3<u32>(var_0.x, 9693u, u_input.a), vec3<u32>(0u, global1[_wgslsmith_index_u32(6618u, 10u)], 36715u), all(vec3<bool>(true, false, false)))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(func_1(Struct_4(vec3<u32>(u_input.a, var_2.a.x, u_input.a)))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -322f, global0.x)) + vec3<f32>(271f, -536f, -381f))))));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1866f, global0.x, -1395f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1174f, global0.x, global0.x))))))));
    var var_3 = 59769u;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-309f, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-226f, 395f, 1584f), vec3<f32>(global0.x, global0.x, global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(-193f * global0.x), global0.x, _wgslsmith_div_f32(-480f, -2465f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1698f, global0.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -1000f) * vec3<f32>(global0.x, -1649f, global0.x))))));
    var var_4 = true;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(1000f - global0.x), global0.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -383f, 1969f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(461f, 785f, -932f) - vec3<f32>(-1000f, 1729f, global0.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, global0.x, 1000f), vec3<f32>(-371f, 1958f, 171f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, -862f, global0.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))), true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, -773f, -443f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, -1000f, global0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-2061f)), _wgslsmith_f_op_f32(-1213f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-321f))))), -47679i);
}

