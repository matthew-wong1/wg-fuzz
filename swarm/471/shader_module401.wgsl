struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_4) -> f32 {
    var var_0 = true;
    let var_1 = arg_2.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-416f, 1f, any(vec3<bool>(arg_0, false, arg_0)))) * -1000f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1466f, -2102f))))));
}

fn func_2() -> f32 {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(min(~_wgslsmith_mod_i32(30970i, 9418i), -(~25143i)), firstTrailingBit(207i)), 1i);
    var var_1 = _wgslsmith_mult_vec2_u32(min(countOneBits(~vec2<u32>(69374u, u_input.b.x)), ~min(u_input.b, ~vec2<u32>(7005u, 60412u))), ~abs(vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(16096u, 39482u))));
    let var_2 = Struct_3(select(!vec2<bool>(all(vec3<bool>(false, true, false)), all(vec4<bool>(false, false, true, true))), vec2<bool>(false, true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true), true)), Struct_2(Struct_1(vec3<bool>(true, true, true)), vec3<u32>(22679u, 0u, 0u)), -353f);
    let var_3 = Struct_3(var_2.a, Struct_2(var_2.b.a, var_2.b.b), _wgslsmith_f_op_f32(func_3(var_2.a.x, var_2.b.a.a.x, Struct_4(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, var_1.x, 33952u, var_2.b.b.x), vec4<u32>(11111u, var_1.x, var_2.b.b.x, 4294967295u)), min(vec4<u32>(57741u, 0u, 4294967295u, var_1.x), vec4<u32>(var_2.b.b.x, u_input.a.x, var_2.b.b.x, 0u)))))));
    var_0 = ~(~_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, var_0.x)), abs(vec2<i32>(2147483647i, var_0.x)), firstTrailingBit(vec2<i32>(-2147483647i, -1i)))) >> ((~(~(vec2<u32>(var_1.x, 0u) & vec2<u32>(26681u, 0u))) << (var_3.b.b.zy % vec2<u32>(32u))) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-891f, _wgslsmith_f_op_f32(min(var_3.c, var_3.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(107f - -970f) - var_2.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1255f))), _wgslsmith_f_op_f32(max(-2120f, _wgslsmith_f_op_f32(var_2.c - var_3.c)))))) + var_2.c);
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_sub_u32(min(~(~_wgslsmith_mult_u32(62137u, u_input.a.x)), ~(54856u >> (_wgslsmith_clamp_u32(4294967295u, 0u, 62027u) % 32u))), u_input.b.x);
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2()), 367f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1857f - 1057f)))));
    var var_2 = vec4<u32>(7545u, ~(~3717u), u_input.b.x, max(13525u, var_0));
    let var_3 = 12876u ^ (0u >> (_wgslsmith_clamp_u32(~var_2.x, _wgslsmith_mod_u32(var_0 >> (30413u % 32u), _wgslsmith_add_u32(var_2.x, u_input.b.x)), var_2.x) % 32u));
    var_2 = vec4<u32>(43177u, var_2.x, reverseBits(~_wgslsmith_dot_vec2_u32(~u_input.b, select(var_2.xw, u_input.a, vec2<bool>(true, false)))), var_3);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-37041i, -33628i), countOneBits(countOneBits(_wgslsmith_add_i32(-14297i, 1i))), reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -49251i, 16093i, -2147483647i), vec4<i32>(-2147483647i, 7446i, -2147483647i, -18600i)), select(vec4<i32>(-1i, 23214i, -1i, -50726i), vec4<i32>(-19101i, -5402i, 1i, -64655i), false)))), vec3<i32>(i32(-1i) * -(i32(-1i) * -72247i), ~(-2147483647i), -_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, -2147483647i, 14877i, 0i)), vec4<i32>(1i, 1i, 1i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(true, false, _wgslsmith_mult_i32(_wgslsmith_div_i32(-11039i, 6514i), func_1()) != func_1()));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(417f, _wgslsmith_f_op_f32(1095f * -119f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1207f + -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2195f + -2120f))))));
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(-2180i, min(_wgslsmith_add_i32(-20189i, 1i), max(1i, 2147483647i)), max(20170i, 11908i)) | ~(-1i), -((-19368i << ((u_input.b.x >> (1u % 32u)) % 32u)) << (42456u % 32u)), firstTrailingBit(1i) ^ -(~1i));
    var_2 = -vec3<i32>(~_wgslsmith_mod_i32(1i, ~var_2.x), 1i, 1i);
    let var_3 = _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x & select(21642u, u_input.b.x, var_0.a.x), max(u_input.b.x, u_input.b.x) >> (0u % 32u), 0u, u_input.a.x), vec4<u32>(~_wgslsmith_mult_u32(1u, u_input.b.x | u_input.b.x), firstTrailingBit(0u) ^ 7169u, u_input.b.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1907f - 874f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))) * var_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.x, var_1.x) + vec3<f32>(var_1.x, var_1.x, var_1.x)), vec3<f32>(var_1.x, var_1.x, var_1.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 686f) + vec3<f32>(526f, var_1.x, -596f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, 622f), vec3<f32>(986f, 214f, 349f)))))));
}

