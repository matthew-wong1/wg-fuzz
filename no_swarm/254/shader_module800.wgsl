struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(820f, -1000f, -939f, 1447f)) - vec4<f32>(-126f, -1000f, 126f, 1703f)))), vec4<f32>(-348f, 1065f, _wgslsmith_f_op_f32(-669f - _wgslsmith_f_op_f32(-1000f * -1161f)), _wgslsmith_f_op_f32(-1f))));
    let var_1 = Struct_3(Struct_1(vec4<i32>(-1i, u_input.b, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(-1i, 69130i))), u_input.b), -1140f, _wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.a, ~u_input.a, _wgslsmith_mult_u32(0u, 1u), _wgslsmith_add_u32(16768u, u_input.a)), vec4<u32>(min(u_input.a, u_input.a), 26707u, ~1u, ~16402u))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.x)), var_0.x) + vec2<f32>(var_0.x, var_0.x)))), ~(~select(4294967295u, 0u, true)) | ~(~(u_input.a | u_input.a)));
    var var_2 = Struct_4(~var_1.a.c.zz, max(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, 0i), var_1.a.a.yyz), firstTrailingBit(vec3<i32>(4084i, 44200i, -18515i))) ^ (var_1.a.a.xyz | var_1.a.a.zwx), ~var_1.a.a.yyz));
    var_2 = Struct_4(var_1.a.c.wy, _wgslsmith_add_vec3_i32((countOneBits(var_2.b) << ((var_1.a.c.zxw << (vec3<u32>(4294967295u, u_input.a, 67158u) % vec3<u32>(32u))) % vec3<u32>(32u))) & vec3<i32>(11379i, -15083i, var_2.b.x & -2147483647i), var_1.a.a.wxz));
    let var_3 = Struct_2(var_1.a, select(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(true, false))), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), false));
    return ~abs(_wgslsmith_add_u32(_wgslsmith_clamp_u32(countOneBits(1u), u_input.a, u_input.a), 4294967295u));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec2<bool>) -> i32 {
    var var_0 = arg_3.x;
    var_0 = func_3() > _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1.a, vec2<u32>(arg_1.a.x, u_input.a)) << (1u % 32u), ~(u_input.a | 11162u)), ~vec2<u32>(u_input.a << (1u % 32u), ~1u));
    var_0 = true;
    let var_1 = arg_1;
    let var_2 = Struct_5(arg_2.a.a.x, 1000f);
    return i32(-1i) * -(~0i);
}

fn func_1(arg_0: bool) -> vec3<i32> {
    let var_0 = select(vec3<i32>(abs(u_input.b), ~u_input.b, firstTrailingBit(u_input.b)) << (vec3<u32>(u_input.a, ~1u, 80131u) % vec3<u32>(32u)), reverseBits(vec3<i32>(~(-6786i), u_input.b >> (42722u % 32u), func_2(772f, Struct_4(vec2<u32>(4294967295u, 63479u), vec3<i32>(u_input.b, -1i, 2147483647i)), Struct_3(Struct_1(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), -217f, vec4<u32>(6073u, u_input.a, u_input.a, u_input.a)), vec2<f32>(-286f, -428f), 4294967295u), vec2<bool>(false, false)))), !((u_input.a | u_input.a) > u_input.a)) >> (vec3<u32>(0u, 15396u, u_input.a) % vec3<u32>(32u));
    var var_1 = Struct_2(Struct_1(firstTrailingBit(vec4<i32>(-2147483647i, 23013i, var_0.x, 0i) ^ vec4<i32>(var_0.x, 17040i, u_input.b, 1i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(848f - -400f)))), abs(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), vec2<bool>(select(true, true, all(vec3<bool>(false, true, true))), arg_0));
    var var_2 = -func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.b))), Struct_4(_wgslsmith_clamp_vec2_u32(var_1.a.c.zy, var_1.a.c.xz, var_1.a.c.zw), vec3<i32>(8335i, 29297i, var_0.x)), Struct_3(Struct_1(vec4<i32>(u_input.b, 59242i, 0i, 43198i), var_1.a.b, vec4<u32>(4294967295u, u_input.a, 17725u, var_1.a.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b, -296f)), ~37389u), select(vec2<bool>(false, var_1.b.x), !vec2<bool>(arg_0, arg_0), var_1.b)) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~11585u, var_1.a.c.x, 10170u, _wgslsmith_sub_u32(var_1.a.c.x, 0u)), ~(vec4<u32>(115143u, 10880u, u_input.a, var_1.a.c.x) << (vec4<u32>(u_input.a, u_input.a, 0u, var_1.a.c.x) % vec4<u32>(32u)))), var_1.a.c) % 32u);
    var_2 = u_input.b;
    let var_3 = any(!vec3<bool>(!arg_0, var_1.b.x, var_1.b.x));
    return -vec3<i32>(85819i, -1i, i32(-1i) * -u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 6411i)), func_1(false)), u_input.b, 1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-808f + 1772f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(2441f)), 632f)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 3410u, 1u, 25253u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 0u), vec4<u32>(48835u, 11233u, 90601u, u_input.a)) | ~vec4<u32>(u_input.a, 1u, 85340u, u_input.a))), !(!select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), true)));
    var_0 = Struct_2(var_0.a, vec2<bool>(var_0.b.x, true));
    var var_1 = 1u;
    var var_2 = 550u;
    let var_3 = ~max(var_0.a.a.xwz, -_wgslsmith_sub_vec3_i32(vec3<i32>(-11402i, -28079i, -2147483647i), vec3<i32>(u_input.b, -2147483647i, 18766i)));
    let var_4 = _wgslsmith_mod_i32(-2147483647i | var_3.x, -78818i);
    var var_5 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, -7289i), i32(-1i) * -var_0.a.a.x);
    var var_6 = vec4<u32>(u_input.a, var_0.a.c.x << (3575u % 32u), select(1u, 0u, !(!var_0.b.x)), ~_wgslsmith_dot_vec2_u32(max(var_0.a.c.wz, var_0.a.c.zy) | _wgslsmith_clamp_vec2_u32(var_0.a.c.zx, vec2<u32>(1u, u_input.a), var_0.a.c.zw), vec2<u32>(u_input.a, var_0.a.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs((_wgslsmith_mult_vec4_i32(var_0.a.a, vec4<i32>(var_3.x, 1i, u_input.b, var_0.a.a.x)) & (vec4<i32>(38755i, u_input.b, 6774i, 46961i) >> (vec4<u32>(19002u, 84480u, var_0.a.c.x, 26303u) % vec4<u32>(32u)))) << (countOneBits(countOneBits(vec4<u32>(23959u, var_6.x, u_input.a, var_0.a.c.x))) % vec4<u32>(32u))), u_input.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(ceil(1652f)), _wgslsmith_f_op_f32(f32(-1f) * -137f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)), _wgslsmith_f_op_f32(-1f)))));
}

