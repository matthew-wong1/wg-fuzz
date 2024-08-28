struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = abs(u_input.c);
    var var_1 = 25812u;
    var_1 = ~_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~var_0.x, ~21396u), _wgslsmith_div_u32(~var_0.x, _wgslsmith_clamp_u32(4294967295u, var_0.x, u_input.a.x))), u_input.a.x);
    var var_2 = vec3<f32>(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c + 324f)), -366f);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(1229f)), _wgslsmith_f_op_f32(min(-330f, 823f)), 659f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(407f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c, -325f)), var_2.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -507f, 1411f, arg_1.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -578f, 794f, 885f) * vec4<f32>(-939f, -196f, var_2.x, -487f))), arg_1.d))));
    return _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, abs(1i) << (1u % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.xzy, _wgslsmith_sub_vec3_i32(vec3<i32>(33476i, 1i, arg_0), vec3<i32>(u_input.b.x, arg_0, -1i))), reverseBits(countOneBits(u_input.b.wyx))), ~_wgslsmith_div_i32(u_input.b.x, 1i) ^ -min(arg_0, u_input.d)), countOneBits(abs(vec4<i32>(5698i, u_input.d, _wgslsmith_sub_i32(1i, u_input.b.x), firstTrailingBit(arg_0)))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = func_3(u_input.d, Struct_1(0u, 4294967295u, -709f, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, u_input.d), 6389i | u_input.d, -16260i) > _wgslsmith_sub_i32(u_input.d, ~39922i), any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_1 = u_input.d;
    let var_2 = -214f;
    var var_3 = Struct_2(Struct_1(0u, ~u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1358f + var_2)), true && all(vec3<bool>(true, true, true)), !(!(-394f >= var_2))), !(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1(abs(u_input.c.x) | _wgslsmith_mult_u32(max(u_input.c.x, u_input.a.x), arg_0.x), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), true, true), var_0.x, -12192i);
    var_3 = Struct_2(var_3.a, !vec4<bool>(var_3.c.e, var_2 <= var_2, true, _wgslsmith_add_u32(u_input.a.x, 1u) >= 4294967295u), var_3.a, -_wgslsmith_dot_vec2_i32(select(~vec2<i32>(var_0.x, 23515i), var_0.wz, vec2<bool>(var_3.b.x, true)), ~(~var_0.zy)), ~(-1i));
    return Struct_1(_wgslsmith_div_u32(arg_0.x, 4294967295u >> (abs(1u) % 32u)), 37062u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a.c * -527f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_3.b.x, true);
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = reverseBits(~(-u_input.d)) ^ ~(~(~(-1i) | -u_input.b.x));
    let var_1 = 1u;
    let var_2 = 0u;
    var var_3 = -395f;
    let var_4 = u_input.b.zw;
    return Struct_2(func_2(select(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 6905u, arg_0), ~vec3<u32>(77778u, var_2, 10951u)), ~vec3<u32>(93437u, u_input.c.x, var_1), vec3<bool>(any(vec2<bool>(true, true)), true, all(vec3<bool>(false, false, true))))), !select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(false, true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), true)), Struct_1(0u, abs(~_wgslsmith_sub_u32(arg_0, 0u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(614f * -1000f) - 538f))), true, false && any(vec2<bool>(true, true))), ~(~(func_3(-44413i, Struct_1(0u, 0u, -1797f, true, false)).x & 31433i)), -2147483647i);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: f32) -> vec4<i32> {
    let var_0 = Struct_5(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(78036u, arg_1.a.a, 18605u), abs(u_input.c.wxw)) & u_input.c.x, abs(func_1(26391u).c.b), 1000f, all(arg_1.b), false), vec3<bool>(all(select(!vec3<bool>(arg_1.b.x, true, arg_1.c.d), vec3<bool>(arg_1.c.e, true, arg_1.a.e), any(arg_1.b.yw))), func_2(u_input.c.ywy).d, arg_1.b.x));
    let var_1 = vec4<bool>((_wgslsmith_sub_i32(-u_input.b.x, ~(-13124i)) == abs(u_input.b.x)) || !(!var_0.b.x), all(arg_1.b.wz), var_0.b.x & ((arg_1.c.d == var_0.a.d) || (arg_3 >= arg_1.a.c)), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.c, arg_1.c.c, var_0.a.c), vec3<f32>(-1978f, 1154f, var_0.a.c))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.c, 370f, var_0.a.c) + vec3<f32>(var_0.a.c, 632f, -1000f))))) - vec3<f32>(-235f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c + arg_2.x) * -1263f), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(arg_1.a.c + -1298f)))));
    var var_3 = Struct_3(!(!select(!vec2<bool>(arg_1.b.x, true), vec2<bool>(arg_1.b.x, var_0.b.x), var_0.b.xz)), var_1.yx, !(0i <= -(~u_input.d)), var_0.a, ~(-_wgslsmith_mod_vec3_i32(u_input.b.wwz, vec3<i32>(-23099i, 1i, u_input.d))));
    let var_4 = u_input.a.x;
    return vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(var_3.e.x, 2147483647i), 9929i, 2147483647i), reverseBits(max(vec3<i32>(133i, -5109i, u_input.d), vec3<i32>(0i, -37017i, 4835i)))), -1i, _wgslsmith_div_i32(-1i, var_3.e.x), ~u_input.d ^ 13055i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(true, true, ~u_input.c.x >= _wgslsmith_mult_u32(u_input.a.x, 0u), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(false, true, any(vec4<bool>(true, true, true, false)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true))));
    var var_1 = var_0.x;
    var_1 = ~u_input.c.x < ~(abs(_wgslsmith_mult_u32(1u, u_input.a.x)) | 4294967295u);
    var var_2 = ~_wgslsmith_clamp_vec4_i32(~(vec4<i32>(u_input.b.x, u_input.b.x, -1i, 2147483647i) >> (u_input.c % vec4<u32>(32u))), abs(u_input.b | u_input.b) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u), u_input.c) % vec4<u32>(32u)), func_4(Struct_4(vec2<u32>(0u, u_input.c.x)), func_1(_wgslsmith_mod_u32(0u, 4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-174f, 271f)), -354f));
    let var_3 = Struct_4(reverseBits(u_input.c.ww) >> (vec2<u32>(~u_input.c.x, 1u) % vec2<u32>(32u)));
    var var_4 = _wgslsmith_div_vec3_i32(u_input.b.zyy, -(vec3<i32>(~var_2.x, 1i << (var_3.a.x % 32u), ~42971i) | var_2.zxz));
    let var_5 = Struct_5(func_1(1u).a, vec3<bool>(var_0.x, var_0.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xw, u_input.c & ~u_input.c);
}

