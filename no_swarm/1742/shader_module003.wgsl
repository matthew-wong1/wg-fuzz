struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(52485u, 4294967295u, 22951u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    global0 = vec3<u32>(13274u, ~arg_2.x, ~max(arg_2.x, ~global0.x));
    var var_0 = Struct_1(0u, select(select(select(!vec3<bool>(true, true, arg_3), !vec3<bool>(arg_3, false, arg_0), any(vec3<bool>(arg_0, false, false))), !select(vec3<bool>(false, arg_3, arg_0), vec3<bool>(arg_0, arg_3, true), vec3<bool>(false, arg_3, arg_3)), select(!vec3<bool>(arg_3, arg_0, arg_3), vec3<bool>(true, true, true), true)), select(select(vec3<bool>(false, arg_0, arg_3), vec3<bool>(arg_0, true, arg_0), select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(false, false, arg_0), arg_3)), !select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(arg_0, arg_0, true)), vec3<bool>(true, true, true)), true), 50170u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(344f, 2014f, -1000f, -617f), vec4<f32>(609f, 475f, 758f, 1335f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(686f, 835f, -1000f, 1197f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(603f, 820f, -1701f, -944f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(652f, 1587f, -153f, -1088f)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(-608f, -229f)), _wgslsmith_f_op_f32(round(2453f)), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -721f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1193f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(291f, -256f)) * 1970f)));
    global0 = ~arg_2.wxz;
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(~(~arg_2.x) ^ arg_1, _wgslsmith_mult_u32(~global0.x, u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 4294967295u), ~arg_2.yx)), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~arg_2.x, ~4294967295u), arg_1, ~77268u), u_input.a, var_1));
    return max(~(~select(0u, 26482u, false)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, var_2.x, var_2.x) >> (~vec3<u32>(0u, 6243u, global0.x) % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_u32(arg_2.yzx, arg_2.zwz)), ~(~_wgslsmith_add_vec3_u32(arg_2.zxz, vec3<u32>(var_0.c, arg_1, 1u)))));
}

fn func_2() -> bool {
    let var_0 = ~(~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 71861u, 69966u, u_input.a), select(vec4<u32>(u_input.a, u_input.a, global0.x, u_input.a), vec4<u32>(1u, 42372u, global0.x, 79960u), true))));
    var var_1 = Struct_4(_wgslsmith_add_u32(max(~func_3(false, 63665u, var_0, true), ~(~58973u)), ~_wgslsmith_dot_vec3_u32(var_0.yzy & var_0.yyw, var_0.xzw & var_0.zwx)), Struct_2(Struct_1(0u, select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true)), global0.x, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(696f, 500f, 710f, -1760f), vec4<f32>(1000f, 515f, 1000f, 1478f)))), -347f), ~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(35990i, -1i, 0i, -2147483647i), vec4<i32>(-17683i, -18464i, 0i, 0i)))), Struct_3(Struct_1(53376u | min(4294967295u, global0.x), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, false), all(vec4<bool>(false, false, true, false))), 67982u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1609f, -1576f, 844f, 1316f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(971f, -1000f, -1600f, -507f)))), 400f), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(206f, 1673f), -234f)), 2186f)), ~10477i, _wgslsmith_f_op_f32(-350f - 1743f));
    let var_2 = Struct_4(_wgslsmith_add_u32(global0.x ^ global0.x, _wgslsmith_mod_u32(100460u, 1u)), Struct_2(var_1.b.a, _wgslsmith_div_vec4_i32(~var_1.b.b, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, var_1.b.b.x, var_1.d, var_1.d), vec4<i32>(-2147483647i, var_1.d, var_1.b.b.x, var_1.d)), var_1.b.b.x & var_1.b.b.x, 0i >> (1u % 32u), max(var_1.d, 1i)))), Struct_3(Struct_1(47496u, select(var_1.b.a.b, var_1.c.a.b, any(var_1.b.a.b.xx)), ~var_1.c.a.c & ~19769u, vec4<f32>(2163f, _wgslsmith_f_op_f32(var_1.e + 962f), var_1.c.a.d.x, 1197f), _wgslsmith_f_op_f32(select(-1000f, 1864f, true))), var_1.c.a.d.xy), ~(-10799i << (~var_0.x % 32u)), -1942f);
    let var_3 = -select(abs(vec4<i32>(-59912i, -1i, -14060i, 2147483647i)) << (~var_0 % vec4<u32>(32u)), var_1.b.b, var_2.b.b.x != var_1.d);
    var var_4 = Struct_1(var_1.c.a.c, !var_2.b.a.b, ~(~var_2.c.a.a | _wgslsmith_mult_u32(45071u, u_input.a << (u_input.a % 32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.c.a.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(734f, _wgslsmith_div_f32(var_1.b.a.e, var_2.c.b.x), _wgslsmith_f_op_f32(-859f - -1011f), 803f))), 673f);
    return !var_4.b.x;
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> bool {
    var var_0 = select(vec3<bool>(arg_1, (~u_input.a < u_input.a) & !func_2(), true), vec3<bool>(true, true, _wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 11444u), global0.yx), ~global0.xx) > 44139u), ((~global0.x | max(66341u, 0u)) << ((4294967295u & ~u_input.a) % 32u)) <= u_input.a);
    var var_1 = -firstTrailingBit(~(-1i));
    var var_2 = Struct_3(Struct_1(~arg_0.a.a, select(!select(arg_0.a.b, vec3<bool>(true, true, false), vec3<bool>(false, true, arg_0.a.b.x)), arg_0.a.b, false), ~0u, _wgslsmith_f_op_vec4_f32(abs(arg_0.a.d)), 346f), arg_0.a.d.yx);
    let var_3 = -24749i;
    var var_4 = var_2.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec4<bool>((global0.x < u_input.a) || true, func_1(Struct_3(Struct_1(4294967295u, vec3<bool>(true, true, true), u_input.a, vec4<f32>(131f, 1000f, 852f, 557f), -1273f), vec2<f32>(-843f, 941f)), true), true, false), !vec4<bool>(all(vec3<bool>(true, true, false)), true, false, false), false & select(false, false, func_2())));
    let var_1 = 46749i;
    global0 = ~(~_wgslsmith_mult_vec3_u32(~select(vec3<u32>(global0.x, 0u, u_input.a), vec3<u32>(38458u, 33655u, 0u), var_0), ~vec3<u32>(global0.x, 1u, 4294967295u)));
    let var_2 = Struct_3(Struct_1(10040u, vec3<bool>(var_0, var_0, any(!vec3<bool>(true, true, var_0))), ~global0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1865f, _wgslsmith_f_op_f32(f32(-1f) * -1087f), _wgslsmith_f_op_f32(f32(-1f) * -422f), -370f)), -1233f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1856f, -316f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(148f, -1918f)))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2016f))), -1000f)));
    global0 = max(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 2209u, u_input.a), vec3<u32>(4294967295u, 4294967295u, 72010u)) << (global0.x % 32u), func_3(var_2.a.b.x, var_2.a.a, vec4<u32>(1u, global0.x, 5660u, var_2.a.a) ^ vec4<u32>(global0.x, 51726u, u_input.a, global0.x), !var_0)), global0.x, max(select(u_input.a, 30890u, var_0), 1u) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_2.a.c, u_input.a, 78794u), vec4<u32>(4294967295u, global0.x, var_2.a.c, 60141u))), vec3<u32>(abs(var_2.a.c), ~_wgslsmith_add_u32(4294967295u, global0.x), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~23106u) >> (_wgslsmith_dot_vec2_u32(min(abs(vec2<u32>(16446u, global0.x)), ~global0.yx), ~vec2<u32>(var_2.a.a, global0.x)) % 32u), vec4<u32>(var_2.a.c, firstTrailingBit(~u_input.a ^ global0.x), 0u, firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 1u, 0u, u_input.a), min(vec4<u32>(19401u, u_input.a, 37499u, 12555u), vec4<u32>(var_2.a.a, 9170u, u_input.a, u_input.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.b.x)) * -341f));
}

