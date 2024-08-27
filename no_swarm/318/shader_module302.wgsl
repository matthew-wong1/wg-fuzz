struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> i32 {
    let var_0 = arg_0.a.x;
    var var_1 = countOneBits(~(~1u)) <= abs(arg_0.b.c.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(128f, -297f, 238f, 389f), vec4<f32>(-542f, -227f, 837f, -238f)))))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(727f * -497f)) + _wgslsmith_f_op_f32(-478f + _wgslsmith_f_op_f32(-730f * var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_div_f32(-2725f, 1000f))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.x + 1140f), _wgslsmith_f_op_f32(select(-1000f, 490f, arg_0.c.x)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -319f)) - vec4<f32>(718f, _wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_div_f32(var_3.x, 795f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_2.x, var_2.x, var_3.x) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(287f, var_2.x, -276f, var_2.x)))))));
    return min(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0, var_0, select(~73058i, u_input.b.x, arg_0.c.x)), i32(-1i) * -(~26343i)), -13754i);
}

fn func_2(arg_0: f32, arg_1: u32) -> vec3<bool> {
    let var_0 = vec4<i32>(~u_input.b.x, abs(_wgslsmith_mult_i32(i32(-1i) * -u_input.a.x, u_input.b.x)), u_input.b.x, u_input.b.x);
    let var_1 = Struct_1(~abs(_wgslsmith_mult_i32(func_3(Struct_2(vec2<i32>(11112i, u_input.b.x), Struct_1(0i, 2854u, vec4<u32>(arg_1, 0u, 68615u, 4294967295u)), vec3<bool>(false, false, true), Struct_1(u_input.b.x, arg_1, vec4<u32>(arg_1, arg_1, 53196u, 24411u))), vec2<bool>(false, false)), firstLeadingBit(var_0.x))), ~max(24179u, ~arg_1) & arg_1, _wgslsmith_mult_vec4_u32(reverseBits(~vec4<u32>(72626u, 61246u, arg_1, 30962u)), firstTrailingBit(~vec4<u32>(arg_1, 1u, arg_1, 27442u))) << (_wgslsmith_add_vec4_u32(~(~vec4<u32>(arg_1, arg_1, arg_1, 4294967295u)), abs(~vec4<u32>(arg_1, arg_1, arg_1, arg_1))) % vec4<u32>(32u)));
    let var_2 = Struct_2(var_0.yz & u_input.b, Struct_1(-10531i, 0u, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(41986u, 7991u), var_1.c.yx) & _wgslsmith_dot_vec2_u32(vec2<u32>(8544u, var_1.c.x), vec2<u32>(arg_1, 4294967295u)), 0u, 1u, abs(~0u))), vec3<bool>(_wgslsmith_f_op_f32(arg_0 + arg_0) >= -285f, _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(select(arg_0, 410f, false)), false)) <= -508f, var_0.x >= -2954i), Struct_1(0i, 12453u, var_1.c));
    var var_3 = var_2;
    var_3 = var_2;
    return !select(select(var_2.c, vec3<bool>(var_3.c.x, true, !var_3.c.x), all(vec3<bool>(var_2.c.x, false, false))), select(var_3.c, var_2.c, all(var_3.c)), !(!vec3<bool>(var_2.c.x, var_3.c.x, var_3.c.x)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_4(u_input.a.x, Struct_2(u_input.b, Struct_1(-(~u_input.b.x), 1u, select(~vec4<u32>(4294967295u, 61446u, 1u, 30425u), vec4<u32>(1u, 0u, 9994u, 4294967295u), true)), vec3<bool>(true, true, all(func_2(1541f, 4294967295u))), Struct_1(reverseBits(u_input.a.x), reverseBits(51749u), vec4<u32>(1u, 1u, 1u, 1u))));
    var_0 = Struct_4(countOneBits(40780i), Struct_2(-abs(-vec2<i32>(u_input.b.x, -40065i)), Struct_1(var_0.b.a.x, ~var_0.b.b.c.x, reverseBits(var_0.b.b.c)), vec3<bool>(true, all(var_0.b.c.yy), true), var_0.b.b));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(-489f)), -1273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1138f, -2314f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(170f)))) * _wgslsmith_f_op_f32(abs(-1190f)))), -1375f);
    let var_2 = true;
    let var_3 = vec4<u32>(var_0.b.b.b, firstLeadingBit(max(_wgslsmith_mult_u32(~var_0.b.b.c.x, 1u), 1u | countOneBits(var_0.b.d.c.x))), var_0.b.d.b, _wgslsmith_dot_vec2_u32(~select(firstTrailingBit(vec2<u32>(95407u, 4294967295u)), var_0.b.b.c.zy, func_2(1279f, var_0.b.b.c.x).xz), var_0.b.b.c.yy));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_2(firstTrailingBit(~vec2<i32>(_wgslsmith_div_i32(var_0.d.a, 2147483647i), u_input.a.x << (12340u % 32u))), Struct_1(_wgslsmith_dot_vec3_i32(u_input.a.wzy, vec3<i32>(-var_0.b.a, ~u_input.a.x, 64193i)), 36378u, abs(var_0.d.c)), func_1().c, var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(11875i, ~_wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, var_0.d.a), -23702i));
}

