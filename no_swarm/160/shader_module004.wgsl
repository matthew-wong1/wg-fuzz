struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<u32>) -> vec3<f32> {
    var var_0 = Struct_1(firstTrailingBit(arg_0.a & arg_1.a.d), arg_0.b, arg_1.a.d.x, arg_0.d, max(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.e.x, arg_1.a.d.x, arg_1.a.d.x) >> (vec3<u32>(arg_0.c, 4294967295u, 34896u) % vec3<u32>(32u)), vec3<u32>(arg_1.a.d.x, arg_0.e.x, arg_1.a.d.x), vec3<u32>(4294967295u, 4294967295u, arg_0.e.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a.x, arg_2.x, arg_2.x), vec3<u32>(arg_2.x, 36603u, arg_0.a.x), ~arg_0.a.yyz), !arg_1.a.a.x), _wgslsmith_sub_vec3_u32(arg_1.a.d.wxw, ~arg_0.a.wzz)));
    var_0 = Struct_1(_wgslsmith_mod_vec4_u32(arg_0.a, countOneBits(select(vec4<u32>(43870u, 1u, 6074u, 1u), var_0.a, arg_1.a.a.x) & min(vec4<u32>(arg_0.a.x, 13598u, var_0.a.x, 91718u), vec4<u32>(var_0.c, 0u, arg_2.x, arg_2.x)))), 158f, min(arg_1.a.d.x, arg_0.c), _wgslsmith_f_op_f32(max(arg_1.a.b.x, -713f)), arg_0.a.xzy);
    var var_1 = Struct_3(arg_0, Struct_2(select(select(select(vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x, true), vec4<bool>(false, arg_1.a.a.x, arg_1.a.a.x, false), arg_1.a.a.x), select(vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x, false), arg_1.a.a, arg_1.a.a), true), !select(vec4<bool>(false, false, arg_1.a.a.x, arg_1.a.a.x), arg_1.a.a, true), (0i << (arg_0.c % 32u)) > ~arg_1.a.c.x), _wgslsmith_f_op_vec3_f32(-arg_1.a.b), firstTrailingBit((vec4<i32>(2147483647i, 2147483647i, u_input.a.x, 2147483647i) ^ u_input.a) & vec4<i32>(-2147483647i, arg_1.a.c.x, 0i, u_input.a.x)), arg_0.a), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(4294967295u, arg_0.e.x) << (arg_1.a.d.yz % vec2<u32>(32u)), arg_0.a.zz, arg_1.a.b.x >= var_0.b), ~(~vec2<u32>(1u, 0u))), arg_1.a.c);
    var var_2 = select(select(select(select(select(arg_1.a.a, vec4<bool>(true, arg_1.a.a.x, var_1.b.a.x, arg_1.a.a.x), arg_1.a.a), vec4<bool>(true, true, var_1.b.a.x, true), select(arg_1.a.a.x, true, false)), var_1.b.a, var_1.b.a.x), var_1.b.a, vec4<bool>(true, false, var_1.b.a.x && !var_1.b.a.x, arg_1.a.a.x)), select(vec4<bool>(true, var_1.b.a.x, true | arg_1.a.a.x, false), var_1.b.a, arg_1.a.a), vec4<bool>(true, -1142f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b, var_1.b.b.x))), !(arg_1.a.a.x && arg_1.a.a.x), _wgslsmith_add_u32(arg_1.a.d.x, var_0.e.x) >= ~var_1.c));
    var_1 = Struct_3(Struct_1(~(~countOneBits(vec4<u32>(1u, 4294967295u, 6609u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1587f)), arg_1.a.d.x, arg_0.d, max(arg_1.a.d.yxz, abs(firstLeadingBit(var_1.b.d.yzx)))), arg_1.a, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(~arg_2.x, select(4294967295u, var_0.c, var_2.x))), abs(min(vec2<u32>(var_0.a.x, 9961u), arg_2) >> (~vec2<u32>(929u, 1u) % vec2<u32>(32u)))), _wgslsmith_div_vec4_i32(~firstTrailingBit(~vec4<i32>(arg_1.a.c.x, -1i, -1i, -92064i)), (_wgslsmith_div_vec4_i32(vec4<i32>(3954i, u_input.a.x, -29840i, var_1.b.c.x), u_input.a) ^ firstTrailingBit(u_input.a)) << (vec4<u32>(_wgslsmith_dot_vec4_u32(arg_1.a.d, arg_0.a), _wgslsmith_clamp_u32(var_0.a.x, 4294967295u, 6455u), _wgslsmith_dot_vec4_u32(vec4<u32>(36123u, 0u, var_1.a.c, 1u), vec4<u32>(1u, var_0.c, 10806u, 4294967295u)), abs(arg_0.e.x)) % vec4<u32>(32u))));
    return var_1.b.b;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(Struct_2(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec4<u32>(32310u, 1u, 12947u, 3584u), -503f, 77063u, -599f, vec3<u32>(1u, 1u, 6974u)), Struct_4(Struct_2(vec4<bool>(false, true, true, false), vec3<f32>(2643f, -617f, 243f), vec4<i32>(-4960i, -3962i, u_input.a.x, -1i), vec4<u32>(2533u, 4294967295u, 22144u, 4294967295u))), ~vec2<u32>(4294967295u, 133119u)))), u_input.a, vec4<u32>(1u, 1u, 1u, 1u)));
    var_0 = Struct_4(var_0.a);
    let var_1 = max(var_0.a.d.x, ~var_0.a.d.x);
    var_0 = Struct_4(Struct_2(var_0.a.a, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(1805f - var_0.a.b.x), _wgslsmith_f_op_f32(var_0.a.b.x + -102f)), _wgslsmith_f_op_vec3_f32(-var_0.a.b)), -select(vec4<i32>(var_0.a.c.x, -2147483647i, u_input.a.x, -7743i), countOneBits(vec4<i32>(var_0.a.c.x, u_input.a.x, var_0.a.c.x, 0i)), !vec4<bool>(true, false, var_0.a.a.x, true)), var_0.a.d));
    var_0 = Struct_4(Struct_2(vec4<bool>(true, false, reverseBits(var_0.a.d.x) < 1u, all(select(var_0.a.a, var_0.a.a, true))), vec3<f32>(_wgslsmith_f_op_f32(-1493f * var_0.a.b.x), -118f, _wgslsmith_f_op_f32(round(-554f))), vec4<i32>(_wgslsmith_clamp_i32(var_0.a.c.x, u_input.a.x, var_0.a.c.x), _wgslsmith_dot_vec2_i32(var_0.a.c.zx, var_0.a.c.wy), u_input.a.x, 0i) | (vec4<i32>(-5822i, 1i, u_input.a.x, var_0.a.c.x) ^ var_0.a.c), var_0.a.d));
    return Struct_1(var_0.a.d >> (var_0.a.d % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(var_0.a.b.x)), 23144u ^ firstTrailingBit(var_0.a.d.x), 1066f, countOneBits(~(max(var_0.a.d.yxy, var_0.a.d.wxy) ^ ~var_0.a.d.wyy)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: i32, arg_3: bool) -> Struct_3 {
    var var_0 = arg_1.b.a;
    let var_1 = all(vec4<bool>(any(select(select(arg_1.c, vec2<bool>(arg_1.c.x, false), vec2<bool>(true, true)), !vec2<bool>(arg_3, true), arg_1.b.b.a.x)), arg_1.c.x, arg_3, arg_3));
    var_0 = func_2();
    let var_2 = 1000f;
    let var_3 = Struct_3(func_2(), Struct_2(arg_1.b.b.a, _wgslsmith_f_op_vec3_f32(arg_1.b.b.b * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.d, 358f, var_2), _wgslsmith_f_op_vec3_f32(round(arg_1.b.b.b))))), u_input.a, ~select(select(var_0.a, arg_0, arg_1.b.b.a.x), vec4<u32>(arg_1.b.b.d.x, arg_1.b.a.e.x, 9055u, var_0.c), select(vec4<bool>(false, arg_1.c.x, true, arg_3), arg_1.b.b.a, false))), min(arg_0.x, ~var_0.e.x), ~vec4<i32>(_wgslsmith_mult_i32(0i, _wgslsmith_add_i32(arg_1.d, -4052i)), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, 47654i, arg_1.b.d.x, arg_1.d), vec4<i32>(arg_2, 36325i, arg_2, -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, arg_1.d), vec3<i32>(u_input.a.x, arg_1.d, 25415i))));
    return var_3;
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> u32 {
    let var_0 = Struct_4(Struct_2(!select(select(arg_1.b.a, vec4<bool>(true, arg_1.b.a.x, true, false), arg_1.b.a.x), vec4<bool>(true, arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x), !arg_1.b.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.b))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -23754i, arg_1.b.c.x, arg_1.d.x), -u_input.a), select(arg_1.d, vec4<i32>(u_input.a.x, -17774i, u_input.a.x, 1i), select(arg_1.b.a.x, arg_1.b.a.x, false))), vec4<u32>(arg_1.a.e.x, min(~19123u, 25992u), 1u, _wgslsmith_add_u32(min(35870u, arg_1.c), 0u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-225f, -166f, -498f), arg_1.b.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-122f, 905f, arg_1.b.b.x))))));
    var var_2 = false;
    let var_3 = ~vec4<u32>(arg_1.b.d.x, ~arg_1.a.e.x, ~arg_1.c, (arg_1.a.e.x ^ 39778u) << (~abs(arg_1.c) % 32u));
    let var_4 = vec3<bool>(var_0.a.a.x, min(arg_1.b.d.x, _wgslsmith_clamp_u32(1u, max(0u, var_0.a.d.x), _wgslsmith_add_u32(4294967295u, 0u))) != ~_wgslsmith_mod_u32(1u, countOneBits(arg_1.b.d.x)), any(select(func_4(vec4<u32>(arg_1.c, arg_1.a.c, 0u, 0u), Struct_5(arg_0, arg_1, arg_1.b.a.zx, -36007i), _wgslsmith_mod_i32(-53687i, u_input.a.x), false).b.a.yz, arg_1.b.a.yw, !func_4(vec4<u32>(76826u, var_3.x, arg_1.a.e.x, 1u), Struct_5(193f, arg_1, vec2<bool>(false, true), var_0.a.c.x), u_input.a.x, false).b.a.wx)));
    return 0u;
}

fn func_1() -> vec2<i32> {
    let var_0 = func_5(473f, func_4(vec4<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(17287u, 35214u, 0u, 124531u), vec4<u32>(5188u, 62494u, 4294967295u, 0u)), abs(4294967295u), true), abs(~1u), 1u, max(29043u, 4294967295u)), Struct_5(_wgslsmith_f_op_f32(-1f), Struct_3(func_2(), Struct_2(vec4<bool>(false, false, false, true), vec3<f32>(-1157f, 1624f, -106f), u_input.a, vec4<u32>(50477u, 0u, 52448u, 29634u)), abs(26985u), u_input.a), vec2<bool>(true, true), u_input.a.x), 1i, !any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))));
    let var_1 = ~var_0 <= ~(~(~(~23347u)));
    let var_2 = vec3<bool>(var_1, var_1, true);
    var var_3 = Struct_4(func_4(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0, var_0, var_0, var_0), vec4<u32>(var_0, 14024u, var_0, 39618u) ^ vec4<u32>(30627u, 1u, var_0, var_0)), countOneBits(vec4<u32>(47215u, var_0, 4766u, var_0)) << (_wgslsmith_add_vec4_u32(vec4<u32>(var_0, var_0, 38428u, var_0), vec4<u32>(4294967295u, 0u, 79833u, 6411u)) % vec4<u32>(32u))), Struct_5(_wgslsmith_f_op_vec3_f32(func_3(func_2(), Struct_4(Struct_2(vec4<bool>(var_2.x, var_1, true, false), vec3<f32>(-865f, -943f, -937f), u_input.a, vec4<u32>(4294967295u, 35752u, 1u, 13852u))), vec2<u32>(var_0, var_0) & vec2<u32>(14797u, 0u))).x, func_4(vec4<u32>(var_0, 4294967295u, 27923u, var_0) ^ vec4<u32>(1u, var_0, 4294967295u, 1u), Struct_5(-628f, Struct_3(Struct_1(vec4<u32>(var_0, var_0, var_0, var_0), 1342f, 0u, -1094f, vec3<u32>(var_0, 19686u, 35236u)), Struct_2(vec4<bool>(var_1, true, false, false), vec3<f32>(500f, -2056f, -378f), vec4<i32>(-1i, 0i, 25415i, u_input.a.x), vec4<u32>(23110u, 32344u, 1u, var_0)), 32851u, u_input.a), var_2.yz, u_input.a.x), _wgslsmith_mult_i32(0i, u_input.a.x), false), !(!vec2<bool>(var_2.x, var_1)), -u_input.a.x), i32(-1i) * -_wgslsmith_sub_i32(28828i, u_input.a.x), any(func_4(firstTrailingBit(vec4<u32>(var_0, 0u, var_0, var_0)), Struct_5(854f, Struct_3(Struct_1(vec4<u32>(var_0, var_0, var_0, var_0), -345f, var_0, -182f, vec3<u32>(1u, var_0, var_0)), Struct_2(vec4<bool>(var_1, var_1, false, false), vec3<f32>(-1910f, 945f, 1800f), u_input.a, vec4<u32>(61065u, 11925u, 0u, var_0)), 0u, u_input.a), var_2.xx, u_input.a.x), ~37177i, true).b.a)).b);
    let var_4 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.b.x + 423f)), Struct_3(func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, var_0, var_0), vec4<u32>(4294967295u, 67021u, var_3.a.d.x, var_3.a.d.x)) << ((vec4<u32>(var_3.a.d.x, 63771u, var_0, 4294967295u) ^ var_3.a.d) % vec4<u32>(32u)), Struct_5(_wgslsmith_f_op_f32(-var_3.a.b.x), Struct_3(Struct_1(vec4<u32>(8148u, 36076u, 1u, 0u), var_3.a.b.x, 1u, var_3.a.b.x, vec3<u32>(0u, 4294967295u, var_0)), var_3.a, 17153u, vec4<i32>(var_3.a.c.x, var_3.a.c.x, -50750i, -6120i)), var_2.yx, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.c.x, u_input.a.x, 43875i, -3908i), vec4<i32>(var_3.a.c.x, 4551i, 95267i, var_3.a.c.x))), var_3.a.c.x, var_2.x).a, func_4(firstLeadingBit(abs(var_3.a.d)), Struct_5(_wgslsmith_f_op_f32(max(1000f, -542f)), Struct_3(Struct_1(vec4<u32>(69391u, var_3.a.d.x, 23739u, 14144u), -658f, var_0, -349f, vec3<u32>(var_3.a.d.x, var_3.a.d.x, 4294967295u)), var_3.a, 14710u, u_input.a), !var_3.a.a.yz, var_3.a.c.x | u_input.a.x), u_input.a.x, any(var_3.a.a.yyz) && !var_2.x).b, ~(~_wgslsmith_mod_u32(4294967295u, 9058u)), u_input.a), var_2.xz, min(-u_input.a.x, 10834i));
    return vec2<i32>(var_3.a.c.x, var_4.b.b.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, reverseBits(57340i)), 43797i));
    var_0 = -func_1();
    let var_1 = Struct_2(func_4(vec4<u32>(1u, 1u, 1u, 1u) | ~firstTrailingBit(vec4<u32>(0u, 74214u, 10968u, 19265u)), Struct_5(-149f, func_4(vec4<u32>(4294967295u, 16330u, 63397u, 1u), Struct_5(-1000f, Struct_3(Struct_1(vec4<u32>(34506u, 514u, 12246u, 1u), -193f, 88512u, 306f, vec3<u32>(53664u, 21232u, 4294967295u)), Struct_2(vec4<bool>(false, false, false, true), vec3<f32>(-1609f, -1241f, 1639f), u_input.a, vec4<u32>(32074u, 4294967295u, 0u, 77213u)), 1u, vec4<i32>(var_0.x, 32261i, -9020i, u_input.a.x)), vec2<bool>(true, false), var_0.x), 0i, true), func_4(vec4<u32>(1u, 1u, 1u, 1u), Struct_5(443f, Struct_3(Struct_1(vec4<u32>(11030u, 1u, 4294967295u, 55571u), 320f, 44120u, 2027f, vec3<u32>(4294967295u, 1u, 101127u)), Struct_2(vec4<bool>(true, false, true, false), vec3<f32>(-1270f, 1000f, 2289f), u_input.a, vec4<u32>(0u, 33783u, 29628u, 4294967295u)), 4294967295u, vec4<i32>(-1i, 0i, 1i, -3527i)), vec2<bool>(false, false), 19000i), var_0.x, true).b.a.wx, -_wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, -15909i))), _wgslsmith_mod_i32(u_input.a.x, var_0.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.x), vec2<i32>(18679i, var_0.x) & u_input.a.xx), all(func_4(vec4<u32>(78973u, 0u, 4294967295u, 40076u), Struct_5(668f, Struct_3(Struct_1(vec4<u32>(9574u, 91311u, 0u, 4294967295u), -1385f, 31432u, 113f, vec3<u32>(14561u, 33631u, 80997u)), Struct_2(vec4<bool>(true, true, false, false), vec3<f32>(-188f, 157f, -1476f), u_input.a, vec4<u32>(1u, 59547u, 33085u, 4294967295u)), 22112u, vec4<i32>(u_input.a.x, var_0.x, -85291i, u_input.a.x)), vec2<bool>(false, true), u_input.a.x), var_0.x ^ -1i, true).b.a.zzz)).b.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1156f, -1000f, -2089f)), func_4(vec4<u32>(47291u, 0u, 4294967295u, 9632u), Struct_5(169f, Struct_3(Struct_1(vec4<u32>(4294967295u, 4294967295u, 27290u, 0u), -1508f, 0u, -1630f, vec3<u32>(53242u, 1u, 18474u)), Struct_2(vec4<bool>(true, true, false, true), vec3<f32>(342f, -133f, 297f), u_input.a, vec4<u32>(4294967295u, 13214u, 1u, 1u)), 5398u, vec4<i32>(2147483647i, var_0.x, 2147483647i, -1i)), vec2<bool>(false, true), var_0.x), var_0.x, true).b.b), _wgslsmith_f_op_vec3_f32(max(func_4(vec4<u32>(22343u, 1u, 105936u, 1520u), Struct_5(638f, Struct_3(Struct_1(vec4<u32>(2428u, 1u, 13088u, 54863u), -1605f, 1u, 1378f, vec3<u32>(4294967295u, 21133u, 35156u)), Struct_2(vec4<bool>(true, false, false, true), vec3<f32>(-1353f, 321f, -818f), u_input.a, vec4<u32>(73196u, 27083u, 48238u, 40852u)), 0u, u_input.a), vec2<bool>(true, true), u_input.a.x), -1559i, true).b.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, 1000f, -1947f)))), _wgslsmith_dot_vec3_i32(u_input.a.wwx, vec3<i32>(var_0.x, u_input.a.x, 44991i)) < ~2147483647i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a.x, 0i, -101431i), u_input.a, u_input.a), vec4<u32>(~1u, ~_wgslsmith_mod_u32(~7354u, ~1u), 1u << (1u % 32u), ~abs(1u)));
    var_0 = var_1.c.zx;
    var_0 = min(_wgslsmith_div_vec2_i32(var_1.c.xw, ~select(vec2<i32>(u_input.a.x, 73649i) & var_1.c.yz, vec2<i32>(-12603i, 0i), any(var_1.a.xyy))), vec2<i32>(var_0.x, abs(~u_input.a.x)));
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>((_wgslsmith_sub_u32(var_1.d.x, var_1.d.x) << (30950u % 32u)) >> (((var_1.d.x & var_1.d.x) >> (~1u % 32u)) % 32u), max(var_1.d.x, var_1.d.x)), vec2<u32>(55163u, 1u) | _wgslsmith_div_vec2_u32(~vec2<u32>(var_1.d.x, var_1.d.x), vec2<u32>(_wgslsmith_dot_vec3_u32(var_1.d.wyz, vec3<u32>(38433u, 1u, 65526u)), ~1u)));
    var var_3 = !(!(u_input.a.x == var_1.c.x));
    let var_4 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(8023u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(354f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1958f), var_1.b)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(min(3077f, var_1.b.x)), _wgslsmith_f_op_f32(var_1.b.x * 2066f), _wgslsmith_f_op_f32(ceil(var_1.b.x)))))));
}

