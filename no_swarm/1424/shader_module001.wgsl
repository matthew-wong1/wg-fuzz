struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = _wgslsmith_sub_u32(arg_0.a.a.a, _wgslsmith_sub_u32(~min(31883u, min(1u, 1u)), arg_0.a.a.a));
    var var_1 = Struct_5(Struct_4(arg_0.a, arg_0.b, Struct_3(Struct_1(0u), -u_input.a.zzw), firstTrailingBit(_wgslsmith_dot_vec4_i32(~u_input.a, select(u_input.a, u_input.a, vec4<bool>(false, arg_0.e, arg_0.e, true)))), arg_0.e), min(39040i, arg_0.b.b.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a.zy, _wgslsmith_mod_vec2_i32(abs(arg_0.a.b.yz), arg_0.b.b.xy)), 2147483647i), vec3<u32>(1u, arg_0.c.a.a, ~(~(~var_0))), vec3<bool>(arg_0.e, true, all(select(!vec4<bool>(false, false, arg_0.e, arg_0.e), vec4<bool>(true, false, false, false), !arg_0.e))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-756f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-759f))))));
    var_1 = Struct_5(Struct_4(Struct_3(arg_0.b.a, abs(select(vec3<i32>(arg_0.b.b.x, u_input.a.x, u_input.a.x), arg_0.c.b, var_1.e))), Struct_3(Struct_1(firstLeadingBit(1u)), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(arg_0.a.b.x, 2147483647i, arg_0.c.b.x)), arg_0.c.b)), Struct_3(Struct_1(var_1.d.x), vec3<i32>(arg_0.a.b.x, ~u_input.a.x, _wgslsmith_mult_i32(-10683i, arg_0.c.b.x))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-arg_0.a.b.x, var_1.c, ~2147483647i), _wgslsmith_dot_vec3_i32(~u_input.a.xwx, abs(u_input.a.xxy))), true), -_wgslsmith_mult_i32(-22246i, _wgslsmith_div_i32(0i, reverseBits(var_1.a.c.b.x))), arg_0.c.b.x, ~abs(_wgslsmith_add_vec3_u32(vec3<u32>(52052u, 46948u, var_1.d.x), vec3<u32>(arg_0.c.a.a, arg_0.a.a.a, arg_0.c.a.a))), vec3<bool>(var_1.e.x, var_1.a.e, !(var_2 >= var_2)));
    let var_3 = select(!var_1.e, vec3<bool>(arg_0.e, var_1.a.c.b.x == 1i, true), any(select(select(vec4<bool>(true, arg_0.e, var_1.a.e, false), vec4<bool>(var_1.e.x, true, arg_0.e, false), false), select(vec4<bool>(arg_0.e, true, true, arg_0.e), vec4<bool>(arg_0.e, var_1.a.e, arg_0.e, var_1.a.e), vec4<bool>(true, true, arg_0.e, false)), select(vec4<bool>(true, arg_0.e, var_1.a.e, true), vec4<bool>(arg_0.e, arg_0.e, true, arg_0.e), vec4<bool>(arg_0.e, arg_0.e, true, false)))) & false);
    return vec3<i32>(~0i, var_1.b, -_wgslsmith_div_i32(arg_0.a.b.x, _wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(1i, -16037i, var_1.a.d, var_1.b))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>) -> vec2<i32> {
    var var_0 = Struct_5(Struct_4(Struct_3(Struct_1(~1u), countOneBits(u_input.a.xzy)), Struct_3(Struct_1(max(108649u, 1u)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -35315i, u_input.a.x), u_input.a.wyw ^ vec3<i32>(u_input.a.x, u_input.a.x, -13972i))), Struct_3(Struct_1(_wgslsmith_div_u32(25217u, 113864u)), ~func_3(Struct_4(Struct_3(Struct_1(0u), u_input.a.wzw), Struct_3(Struct_1(0u), vec3<i32>(10061i, u_input.a.x, u_input.a.x)), Struct_3(Struct_1(9745u), vec3<i32>(-12818i, u_input.a.x, -30666i)), u_input.a.x, arg_0.x))), 37566i, arg_0.x), 1i, ~u_input.a.x, ~vec3<u32>(~(~0u), ~1u, firstTrailingBit(~0u)), !(!(!(!vec3<bool>(true, arg_0.x, arg_0.x)))));
    let var_1 = Struct_2(abs(_wgslsmith_clamp_vec2_u32(~var_0.d.xx, var_0.d.yx, vec2<u32>(var_0.a.a.a.a, var_0.a.c.a.a) >> (vec2<u32>(45050u, 4294967295u) % vec2<u32>(32u)))) ^ ~(~(~var_0.d.xz)), abs(_wgslsmith_dot_vec2_u32(var_0.d.yx, var_0.d.yy)), Struct_1(78290u));
    var var_2 = false;
    let var_3 = 7973u;
    var_2 = false;
    return u_input.a.zx;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_5, arg_3: Struct_5) -> Struct_4 {
    let var_0 = -1167f;
    var var_1 = vec4<bool>(!(all(vec2<bool>(false, true)) | any(arg_2.e.yz)) | true, arg_2.e.x != all(arg_2.e), all(vec2<bool>(!arg_3.e.x, true)), true);
    var_1 = vec4<bool>(true, !(!var_1.x), arg_2.e.x, false);
    let var_2 = ~_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(~arg_2.b, 0i), func_2(arg_2.e.xy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1873f, 263f, arg_0)))), select(~_wgslsmith_sub_vec2_i32(arg_2.a.a.b.yz, arg_2.a.b.b.xy), max(_wgslsmith_clamp_vec2_i32(arg_2.a.b.b.xy, arg_3.a.c.b.xx, vec2<i32>(1i, arg_2.a.d)), select(vec2<i32>(u_input.a.x, 2000i), arg_3.a.b.b.yx, arg_3.e.yx)), true));
    var_1 = vec4<bool>(arg_3.a.e, arg_3.a.e, true, var_1.x);
    return Struct_4(arg_2.a.c, arg_3.a.c, arg_3.a.c, arg_3.a.c.b.x, all(vec3<bool>(true, !all(vec3<bool>(arg_3.e.x, false, var_1.x)), false)));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_5) -> f32 {
    let var_0 = func_1(-950f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-262f, -1699f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1217f, -1927f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(147f, -566f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-279f, _wgslsmith_div_f32(169f, -471f)))), Struct_5(func_1(-1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1195f, -660f))), Struct_5(Struct_4(arg_3.a.a, arg_3.a.a, Struct_3(Struct_1(arg_0.x), vec3<i32>(arg_3.b, arg_3.c, arg_1)), -1i, arg_3.e.x), func_2(arg_2.xw, vec3<f32>(2592f, 1308f, 828f)).x, arg_3.a.d << (arg_3.d.x % 32u), vec3<u32>(arg_0.x, 1u, arg_3.d.x), select(vec3<bool>(arg_2.x, true, arg_3.e.x), arg_2.yxx, arg_3.e)), Struct_5(Struct_4(Struct_3(Struct_1(arg_3.a.c.a.a), u_input.a.xzw), arg_3.a.a, Struct_3(arg_3.a.b.a, arg_3.a.b.b), 7425i, true), 2147483647i, func_3(Struct_4(arg_3.a.c, Struct_3(arg_3.a.b.a, u_input.a.zwy), arg_3.a.a, u_input.a.x, true)).x, vec3<u32>(74208u, 4294967295u, 16563u), arg_2.xxz)), arg_3.a.c.b.x, arg_3.c, vec3<u32>(~arg_3.a.a.a.a, arg_3.a.a.a.a, 20849u), arg_3.e), arg_3).c.a;
    var var_1 = Struct_1(0u);
    var_1 = Struct_1(firstTrailingBit(var_1.a));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(428f, 342f)) - _wgslsmith_f_op_f32(abs(-1000f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(963f * 1768f)))), _wgslsmith_f_op_f32(trunc(-341f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(250f, 1125f)) - -758f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 1u)), _wgslsmith_mod_i32(1i, u_input.a.x), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true), Struct_5(func_1(381f, vec2<f32>(1000f, 1434f), Struct_5(Struct_4(Struct_3(Struct_1(4294967295u), u_input.a.yyw), Struct_3(Struct_1(26928u), vec3<i32>(2147483647i, u_input.a.x, -27435i)), Struct_3(Struct_1(4294967295u), vec3<i32>(-49010i, 2147483647i, -2740i)), -1i, false), 5180i, u_input.a.x, vec3<u32>(29433u, 4294967295u, 40413u), vec3<bool>(false, false, false)), Struct_5(Struct_4(Struct_3(Struct_1(78151u), vec3<i32>(8615i, 29253i, u_input.a.x)), Struct_3(Struct_1(4294967295u), vec3<i32>(u_input.a.x, u_input.a.x, 33756i)), Struct_3(Struct_1(11798u), u_input.a.ywx), 1i, true), 1i, u_input.a.x, vec3<u32>(4294967295u, 10768u, 4294967295u), vec3<bool>(true, false, true))), 1i, 0i, ~vec3<u32>(16329u, 4294967295u, 18627u), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))))) * _wgslsmith_f_op_f32(round(540f))), _wgslsmith_f_op_f32(1f * 967f), vec3<f32>(1102f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-417f, 261f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(924f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -615f) * _wgslsmith_f_op_f32(func_4(vec2<u32>(40898u, 4294967295u), 2147483647i, vec4<bool>(true, false, true, true), Struct_5(Struct_4(Struct_3(Struct_1(0u), u_input.a.www), Struct_3(Struct_1(1u), u_input.a.xxw), Struct_3(Struct_1(0u), vec3<i32>(u_input.a.x, u_input.a.x, 22679i)), -2147483647i, false), u_input.a.x, u_input.a.x, vec3<u32>(0u, 5781u, 0u), vec3<bool>(false, true, false))))))));
}

