struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), -1i, 35348i, 34268i);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec4<i32> {
    var var_0 = reverseBits(4294967295u);
    let var_1 = -386f;
    var var_2 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, false, true)), 43329u < u_input.a.x, any(vec3<bool>(false, false, true)), false), all(vec3<bool>(true, true, false)) | false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true));
    var_0 = ~u_input.a.x;
    var_0 = 0u;
    return -(firstTrailingBit(~vec4<i32>(global0.x, global0.x, global0.x, 22140i)) | -(~vec4<i32>(global0.x, -1i, global0.x, -4344i)));
}

fn func_2() -> f32 {
    global0 = abs(vec4<i32>(max(~(-2147483647i), 1i), i32(-1i) * -1i, -min(8566i, -20523i), min(global0.x, 65229i)));
    global0 = func_3();
    global0 = (-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global0.x, 5857i, global0.x), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -13174i, global0.x, -2147483647i), vec4<i32>(0i, 0i, global0.x, global0.x))) | (vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(global0.x, global0.x, global0.x, global0.x)))) >> (vec4<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(10u, u_input.a.x), select(_wgslsmith_dot_vec4_u32(vec4<u32>(85784u, 15379u, 1u, 41645u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 27746u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), true)), _wgslsmith_dot_vec2_u32(u_input.a, select(u_input.a, ~vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(true, true))), ~(~min(100515u, u_input.a.x))) % vec4<u32>(32u));
    let var_0 = vec3<u32>(4294967295u, u_input.a.x, _wgslsmith_add_u32(select(~select(u_input.a.x, u_input.a.x, false), u_input.a.x, true), _wgslsmith_dot_vec2_u32(u_input.a, ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), u_input.a))));
    global0 = -vec4<i32>(49363i & global0.x, global0.x, -2147483647i, _wgslsmith_add_i32(global0.x, ~(~global0.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1523f)) - -951f);
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(230f)), _wgslsmith_f_op_f32(f32(-1f) * -1638f), _wgslsmith_f_op_f32(sign(873f)))), vec3<f32>(1f, 1f, 1f)), Struct_1(~arg_0.a, ~(~firstTrailingBit(arg_0.b)), -(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -57812i, arg_0.c, arg_0.c), vec4<i32>(global0.x, arg_0.c, -20477i, 14801i)) ^ arg_0.c)));
    global0 = vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(select(global0.x, 44831i, true), select(var_0.b.c, -45215i, true), 1i, _wgslsmith_clamp_i32(global0.x, global0.x, var_0.b.c)), vec4<i32>(countOneBits(global0.x), ~(-11990i), 83654i, ~(-28393i)) | max(vec4<i32>(arg_0.c, global0.x, -26442i, -3329i), select(vec4<i32>(global0.x, 1i, arg_0.c, -2147483647i), vec4<i32>(1440i, 0i, var_0.b.c, 1i), true))), 0i, global0.x, abs(countOneBits(firstTrailingBit(global0.x & arg_0.c))));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(291f, 1209f, false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -180f)))))), _wgslsmith_f_op_f32(abs(-756f)), -588f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x))));
    let var_2 = all(!vec3<bool>(22147i > (var_0.b.c >> (arg_0.b.x % 32u)), true | select(false, true, false), false));
    var var_3 = Struct_1(0u, ~(~vec4<u32>(var_0.b.b.x, 1u, 33383u, 96415u) & ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 16331u, u_input.a.x, 0u), arg_0.b)), min(1i, 1i));
    return func_3().x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(func_1(Struct_1(0u, vec4<u32>(0u, 64270u, u_input.a.x, 0u), global0.x)), ~abs(global0.x), i32(-1i) * -global0.x, select(_wgslsmith_div_i32(-1i, 2147483647i), -23626i, false)), firstTrailingBit(vec4<i32>(73154i, ~global0.x, global0.x, ~(-10359i))), -vec4<i32>(global0.x, -(i32(-1i) * -109471i), global0.x, global0.x));
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -655f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(207f + 219f)))), _wgslsmith_f_op_f32(-2243f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(818f + -357f))))));
    var var_1 = any(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), false));
    global0 = ~abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, 2147483647i) & vec4<i32>(-1i, global0.x, global0.x, global0.x), vec4<i32>(global0.x, 6807i, 18670i, 70542i) >> (vec4<u32>(0u, 1062u, 34577u, 0u) % vec4<u32>(32u)))) | _wgslsmith_clamp_vec4_i32(~vec4<i32>(_wgslsmith_div_i32(14398i, global0.x), -2147483647i, 0i << (u_input.a.x % 32u), global0.x), countOneBits(firstTrailingBit(vec4<i32>(2977i, 1i, 1i, global0.x)) >> (~vec4<u32>(4294967295u, 69793u, 0u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(vec4<i32>(26038i, 41356i, global0.x, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, 2147483647i, -2147483647i, 3493i), vec4<i32>(-2147483647i, global0.x, 15868i, -40895i), vec4<i32>(6106i, -50100i, global0.x, -5219i))) >> (vec4<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4135u, u_input.a.x, 33206u), vec4<u32>(1u, 1u, 1u, u_input.a.x))) % vec4<u32>(32u)));
    var var_2 = ~(~vec4<u32>(~max(u_input.a.x, u_input.a.x), ~1u, _wgslsmith_mod_u32(~u_input.a.x, 4294967295u), (u_input.a.x << (4294967295u % 32u)) | abs(u_input.a.x)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-906f, 113f, var_0.x), vec3<f32>(-835f, -828f, -1255f))))))), Struct_1(u_input.a.x, ~min(~vec4<u32>(var_2.x, 0u, 4294967295u, var_2.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, var_2.x), vec4<u32>(u_input.a.x, 14508u, 4294967295u, u_input.a.x))), global0.x));
    var var_4 = Struct_1(var_2.x, ~var_3.b.b, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_3.a - _wgslsmith_f_op_vec3_f32(min(var_3.a, vec3<f32>(var_3.a.x, 3232f, -1253f)))), var_4.c << (firstLeadingBit(_wgslsmith_mod_u32(1u, var_4.a) ^ _wgslsmith_clamp_u32(var_2.x, u_input.a.x, var_2.x)) % 32u), vec4<u32>(max(~abs(var_3.b.b.x), 1u), 8775u, _wgslsmith_clamp_u32(1u, 1u, 4294967295u), _wgslsmith_mult_u32(~1u, _wgslsmith_mult_u32(reverseBits(var_3.b.a), ~var_2.x))), -299f, reverseBits(var_4.c));
}

