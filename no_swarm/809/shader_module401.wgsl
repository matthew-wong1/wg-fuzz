struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(vec4<f32>(-700f, -319f, -1000f, -1000f), vec4<i32>(23009i, 10261i, 0i, i32(-2147483648)), -33426i), Struct_4(vec4<f32>(-2455f, -1139f, -175f, -1153f), vec4<i32>(-5127i, 8131i, -51895i, -19918i), -13734i), Struct_4(vec4<f32>(783f, 142f, 701f, -368f), vec4<i32>(-1i, 3893i, 4621i, 0i), i32(-2147483648)), Struct_4(vec4<f32>(-3055f, 893f, -2723f, -2678f), vec4<i32>(i32(-2147483648), 0i, 40841i, 0i), 43045i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> u32 {
    let var_0 = -(vec3<i32>(firstTrailingBit(1i) >> (firstLeadingBit(arg_1) % 32u), 34186i, u_input.a) & reverseBits(-vec3<i32>(arg_0.b.d, 2147483647i, 221i)));
    return arg_0.b.b.x;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_3(arg_1.b);
    global0 = min(countOneBits(reverseBits(18940u)), arg_2.b.b.x);
    global1 = array<Struct_4, 4>();
    let var_1 = select(!vec4<bool>(any(!vec3<bool>(var_0.a.c.x, false, true)), any(arg_2.b.c), true, arg_2.b.c.x), vec4<bool>(all(vec4<bool>(all(vec2<bool>(arg_2.b.c.x, true)), var_0.a.c.x || false, arg_0.x <= arg_1.a.x, true)), any(select(!vec3<bool>(arg_2.b.c.x, false, arg_2.b.c.x), select(vec3<bool>(true, arg_1.b.c.x, true), vec3<bool>(arg_2.b.c.x, false, arg_2.b.c.x), vec3<bool>(arg_2.b.c.x, false, arg_1.b.c.x)), select(vec3<bool>(var_0.a.c.x, true, arg_1.b.c.x), vec3<bool>(false, var_0.a.c.x, arg_1.b.c.x), vec3<bool>(arg_2.b.c.x, true, false)))), arg_1.b.c.x, reverseBits(~var_0.a.a.x) <= -1i), select(!vec4<bool>(false, arg_1.b.c.x && false, true, false), select(!select(vec4<bool>(arg_2.b.c.x, var_0.a.c.x, false, arg_2.b.c.x), vec4<bool>(arg_1.b.c.x, true, true, false), var_0.a.c.x), vec4<bool>(arg_2.b.c.x, true, !arg_1.b.c.x, arg_2.b.c.x), select(select(vec4<bool>(var_0.a.c.x, false, var_0.a.c.x, arg_1.b.c.x), vec4<bool>(false, var_0.a.c.x, false, arg_1.b.c.x), var_0.a.c.x), !vec4<bool>(arg_1.b.c.x, true, false, var_0.a.c.x), vec4<bool>(true, arg_1.b.c.x, arg_2.b.c.x, true))), arg_1.b.c.x));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(arg_1.a - vec4<f32>(-1788f, var_0.a.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(-arg_2.b.e)), var_0.a.e)), var_0.a);
    return arg_1.b.a.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_4) -> vec4<u32> {
    var var_0 = true;
    global1 = array<Struct_4, 4>();
    var_0 = arg_1;
    let var_1 = _wgslsmith_clamp_i32(func_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(arg_2.a.wyx)))), Struct_2(arg_2.a, Struct_1(vec3<i32>(u_input.a, -2470i, -34084i), vec4<u32>(43652u, 86311u, 47736u, 10972u), vec2<bool>(false, false), arg_2.c, 373f)), Struct_2(_wgslsmith_f_op_vec4_f32(-arg_2.a), Struct_1(arg_2.b.wzz, vec4<u32>(17808u, 0u, 4294967295u, 53828u), vec2<bool>(false, true), 53940i, arg_2.a.x))) & u_input.a, max(_wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, 2147483647i), vec2<i32>(arg_0, 2147483647i)), countOneBits(vec2<i32>(arg_0, -43935i)) | (vec2<i32>(-35871i, 32194i) ^ vec2<i32>(-3472i, u_input.a))), _wgslsmith_add_i32(arg_2.c, -2147483647i)), ~min(0i, select(arg_2.b.x ^ arg_0, _wgslsmith_mod_i32(u_input.a, 73458i), true)));
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(~102600u, select(24345u, 90692u, arg_1), 0u), select(~43115u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(68253u, 1u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u)) % 32u), ~(~1u), true), 1u, 1u), countOneBits(~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 15380u, 28973u, 4294967295u), vec4<u32>(36832u, 15181u, 22859u, 340u)))), ~(~(~(~vec4<u32>(1u, 120047u, 1u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~20624u, 1u);
    var var_1 = _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(~(~23801u), abs(4294967295u), func_1(Struct_2(vec4<f32>(443f, -389f, 1348f, 847f), Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<u32>(var_0.x, 4294967295u, var_0.x, 0u), vec2<bool>(true, false), 13620i, -311f)), 4294967295u, -1040f) << (abs(var_0.x) % 32u), var_0.x)), select(vec4<u32>(~(~var_0.x), _wgslsmith_clamp_u32(firstLeadingBit(5378u), var_0.x >> (var_0.x % 32u), var_0.x), ~(~var_0.x), min(~var_0.x, func_1(Struct_2(vec4<f32>(-479f, 2848f, 1971f, 1023f), Struct_1(vec3<i32>(26495i, u_input.a, 29504i), vec4<u32>(var_0.x, var_0.x, 1u, var_0.x), vec2<bool>(false, false), u_input.a, -504f)), var_0.x, -2134f))), ~func_2(_wgslsmith_clamp_i32(u_input.a, u_input.a, 1i), true, Struct_4(vec4<f32>(-1152f, -223f, 656f, -429f), vec4<i32>(u_input.a, 0i, u_input.a, 35964i), 16604i)), true));
    let var_2 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -6238i, firstTrailingBit(~u_input.a)), ~vec3<i32>(_wgslsmith_clamp_i32(-26875i, u_input.a, 0i), _wgslsmith_mult_i32(-18626i, u_input.a), u_input.a << (var_1.x % 32u)));
    global1 = array<Struct_4, 4>();
    let var_3 = vec4<u32>(func_1(Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1206f, -1254f, 1000f, -1256f), vec4<f32>(1174f, -1034f, 1000f, -844f)))), Struct_1(vec3<i32>(0i, -26586i, var_2.x), reverseBits(vec4<u32>(var_0.x, 24062u, var_1.x, 1u)), select(vec2<bool>(true, false), vec2<bool>(false, true), true), u_input.a, -1000f)), var_1.x, -2147f), var_1.x, 4294967295u, 1u);
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1638f, -554f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1002f, _wgslsmith_f_op_f32(f32(-1f) * -759f)) - -338f))));
    var_0 = ~min(var_3.xw, var_1.xx);
    let var_5 = ~u_input.a;
    var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1283f)), _wgslsmith_f_op_f32(f32(-1f) * -275f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 4294967295u, var_0.x), vec3<u32>(0u, 39026u, 64516u))), ~_wgslsmith_mult_u32(var_1.x, var_1.x) ^ 5113u), 10930u, ~_wgslsmith_mult_i32(var_5, 2147483647i), select(vec3<i32>(-8378i, u_input.a, ~var_2.x), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, var_2.x, firstTrailingBit(var_5)), var_2), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec2<bool>(false, true))))));
}

