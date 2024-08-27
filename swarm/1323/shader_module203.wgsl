struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: bool) -> vec3<bool> {
    return vec3<bool>(false, arg_2, arg_1.x);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(311f + _wgslsmith_div_f32(110f, -787f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f) - -1504f)))) + 1f);
    var_0 = -340f;
    var_0 = _wgslsmith_f_op_f32(1f + 833f);
    var_0 = -1229f;
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1056f)) - _wgslsmith_f_op_f32(sign(576f)))), -1696f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1319f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-567f)))))));
    return _wgslsmith_mod_i32(arg_0, min(6376i, 38477i));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<bool>) -> vec4<i32> {
    let var_0 = arg_0.d.x;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), -619f)) * _wgslsmith_f_op_f32(f32(-1f) * -371f)), arg_1.x);
    let var_2 = _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.c.x, 0u), 32317u);
    let var_3 = vec4<i32>(-arg_0.b, 33528i, _wgslsmith_sub_i32(-(i32(-1i) * -39323i), arg_0.b), _wgslsmith_mult_i32(i32(-1i) * -61273i, func_3(-1i, Struct_3(arg_0, Struct_2(vec3<i32>(-57611i, arg_0.b, arg_0.b), 1i), vec4<i32>(arg_0.b, 8936i, arg_0.b, -2147483647i), 1i), 45194u, ~_wgslsmith_mult_u32(77324u, u_input.b))));
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f))) - arg_1.x)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, true, all(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), true), false)));
    var var_1 = -max(func_2(Struct_1(vec4<u32>(u_input.b, u_input.a, 0u, 0u) ^ vec4<u32>(4294967295u, 59957u, 71269u, 24044u), 0i, vec4<u32>(1525u, u_input.a, u_input.a, u_input.b), !vec3<bool>(true, var_0.x, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -189f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1170f, -653f))), func_1(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, true), var_0.xx, var_0.xz), true)), -func_2(Struct_1(vec4<u32>(34285u, u_input.b, 4294967295u, u_input.a), 4876i, vec4<u32>(46479u, 4294967295u, u_input.b, u_input.b), vec3<bool>(false, true, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1100f, -269f)), var_0.yxx));
    var_1 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 40536i, var_1.x, var_1.x), vec4<i32>(var_1.x, 2147483647i, -2147483647i, var_1.x))), ~(-vec4<i32>(31143i, 1i, var_1.x, var_1.x))), abs(-1i | var_1.x)), abs(-(i32(-1i) * -19706i)), max(var_1.x, ~(~func_2(Struct_1(vec4<u32>(1u, 1u, 22140u, 37191u), -2147483647i, vec4<u32>(1u, u_input.a, 85676u, 4294967295u), vec3<bool>(false, var_0.x, var_0.x)), vec2<f32>(-318f, 2198f), var_0.xyz).x)), var_1.x);
    let var_2 = true;
    var var_3 = 199f;
    var var_4 = Struct_3(Struct_1(~firstLeadingBit(vec4<u32>(u_input.b, 15664u, 75273u, 38665u)), -(i32(-1i) * -29837i), vec4<u32>(0u, firstLeadingBit(u_input.a), _wgslsmith_clamp_u32(select(u_input.b, u_input.a, var_2), _wgslsmith_sub_u32(u_input.a, 4294967295u), max(u_input.a, 4294967295u)), ~u_input.a), var_0.zzw), Struct_2(vec3<i32>(-1i) * -vec3<i32>(2147483647i, var_1.x, 2147483647i), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.x, var_1.x), _wgslsmith_mod_i32(2147483647i, -2147483647i))), vec4<i32>(-_wgslsmith_div_i32(var_1.x ^ var_1.x, 1i), firstTrailingBit(_wgslsmith_sub_i32(-var_1.x, var_1.x)), var_1.x, i32(-1i) * -func_2(Struct_1(vec4<u32>(25064u, 16334u, u_input.a, 1u), -16064i, vec4<u32>(32353u, u_input.a, 16601u, 0u), var_0.wxy), vec2<f32>(-1394f, -1302f), vec3<bool>(false, var_2, false)).x), 1956i | func_3(-45035i, Struct_3(Struct_1(vec4<u32>(23130u, 46352u, u_input.b, u_input.a), var_1.x, vec4<u32>(u_input.b, u_input.a, 30702u, 4294967295u), vec3<bool>(true, var_0.x, var_0.x)), Struct_2(vec3<i32>(var_1.x, var_1.x, -41122i), var_1.x), abs(vec4<i32>(-2147483647i, var_1.x, -2147483647i, 2147483647i)), var_1.x), 6476u, ~u_input.b));
    var_1 = vec4<i32>(abs(~(~var_4.c.x)), i32(-1i) * -1i, -819i, -34488i | var_1.x);
    var var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -435f))), 1235f, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(~0i, var_4.b.b, var_4.b.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(var_4.a.a.zx), vec2<u32>(u_input.b, 4294967295u) >> (vec2<u32>(0u, 50444u) % vec2<u32>(32u))), u_input.a), -(~var_1.x));
}

