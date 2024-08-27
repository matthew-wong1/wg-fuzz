struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(28727i, i32(-2147483648), 0i), vec3<i32>(2147483647i, -31523i, 28i), vec3<i32>(32779i, 0i, -6263i), vec3<i32>(0i, 2147483647i, -15911i));

var<private> global2: Struct_2 = Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -68684i));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: i32) -> u32 {
    let var_0 = arg_2;
    global1 = array<vec3<i32>, 4>();
    let var_1 = ~(var_0 | (i32(-1i) * -21384i));
    let var_2 = -_wgslsmith_clamp_i32(-2147483647i, ~1i, 0i);
    global0 = 34316u;
    return select(_wgslsmith_clamp_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(abs(u_input.c), 0u, ~arg_1.a.a.a.x, ~34125u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a.a.a.x, 38574u, arg_1.a.a.a.x, 1u), vec4<u32>(21440u, arg_1.b.a.x, arg_1.b.a.x, arg_1.a.a.a.x))), abs(~(~u_input.a.x))), _wgslsmith_clamp_u32(4261u, 4294967295u, _wgslsmith_dot_vec4_u32((vec4<u32>(u_input.c, u_input.a.x, arg_1.a.a.a.x, 4294967295u) << (vec4<u32>(u_input.c, u_input.a.x, arg_1.b.a.x, arg_1.a.a.a.x) % vec4<u32>(32u))) << (~vec4<u32>(24627u, 14230u, arg_1.b.a.x, 19862u) % vec4<u32>(32u)), ~select(vec4<u32>(u_input.a.x, arg_1.b.a.x, u_input.c, u_input.a.x), vec4<u32>(arg_1.a.a.a.x, u_input.c, u_input.a.x, 1u), true))), !arg_0.x);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -658f);
    let var_1 = Struct_1(select(firstTrailingBit(abs(vec2<u32>(u_input.a.x, 24071u))), vec2<u32>(1u, 0u), select(vec2<bool>(false, 6943i < global2.a.x), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, arg_1), vec2<bool>(true, false), true)), true)), ~firstTrailingBit(-5458i), 1015f);
    var var_2 = Struct_5(!(!vec4<bool>(any(vec3<bool>(true, arg_1, arg_1)), true, !arg_1, var_0 > arg_3)));
    global0 = var_1.a.x;
    let var_3 = abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~90333u, ~(~4294967295u)), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(25095u, 4294967295u)), min(~vec2<u32>(4294967295u, 0u), vec2<u32>(2205u, 4294967295u)))));
    return Struct_2(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-1i, 21702i, global2.a.x, min(var_1.b, 15489i))), global2.a));
}

fn func_1() -> Struct_2 {
    var var_0 = -2147483647i;
    global2 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(170f + -310f), -1430f)), 2198f)) - _wgslsmith_f_op_f32(944f - _wgslsmith_f_op_f32(step(157f, _wgslsmith_f_op_f32(min(706f, 214f)))))), _wgslsmith_clamp_u32(func_2(vec3<bool>(true, true, true), Struct_4(Struct_3(Struct_1(vec2<u32>(u_input.a.x, 135019u), u_input.b.x, 429f)), Struct_1(u_input.a.yy, -1i, -888f)), 1i), u_input.c, 48700u) >= ~(~u_input.c), 34826u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = Struct_5(vec4<bool>(all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), true))), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))) || true, true));
    var var_2 = _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.d, _wgslsmith_dot_vec3_i32(~vec3<i32>(global2.a.x, global2.a.x, global2.a.x), vec3<i32>(global2.a.x, global2.a.x, global2.a.x)), ~1i)), abs(-(~vec3<i32>(u_input.e, -32551i, 2765i))));
    let var_3 = Struct_5(vec4<bool>(select(var_1.a.x, true, (-35667i >> (u_input.c % 32u)) <= 1i), var_1.a.x && var_1.a.x, any(select(!var_1.a.xx, var_1.a.xx, true)), var_1.a.x));
    return Struct_2(global2.a);
}

fn func_4(arg_0: Struct_2) -> bool {
    global1 = array<vec3<i32>, 4>();
    var var_0 = _wgslsmith_dot_vec3_i32(~select(-(vec3<i32>(arg_0.a.x, u_input.b.x, 2147483647i) >> (vec3<u32>(u_input.a.x, 19168u, 34211u) % vec3<u32>(32u))), func_1().a.yzz, 4294967295u <= ~u_input.c), arg_0.a.zxw << (_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(select(u_input.a, vec3<u32>(8464u, 4294967295u, 79463u), true), vec3<u32>(u_input.a.x, 4294967295u, 0u)), ~(u_input.a ^ vec3<u32>(u_input.a.x, 7889u, 49295u))) % vec3<u32>(32u)));
    global1 = array<vec3<i32>, 4>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -571f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -818f)))));
    global0 = u_input.a.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(select(u_input.a, ~u_input.a, func_4(func_1()))) | u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 946f));
    global2 = Struct_2(vec4<i32>(min(select(global2.a.x, ~7820i, var_1.x < 782f), _wgslsmith_add_i32(u_input.d, global2.a.x) | u_input.e), ~global2.a.x, global2.a.x | ~firstTrailingBit(global2.a.x), u_input.e));
    global1 = array<vec3<i32>, 4>();
    global2 = Struct_2(global2.a);
    global2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~abs(0i)), abs(~(~vec3<u32>(62285u, 88054u, var_0.x))), var_0.x);
}

