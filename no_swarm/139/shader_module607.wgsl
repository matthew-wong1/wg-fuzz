struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(677u, 40804u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 64070u, 46471u), vec3<u32>(66250u, 1u, 38502u), vec3<u32>(0u, 0u, 0u), vec3<u32>(29060u, 12394u, 54593u), vec3<u32>(0u, 32638u, 4294967295u), vec3<u32>(1u, 21915u, 4294967295u), vec3<u32>(33896u, 86961u, 4294967295u), vec3<u32>(98652u, 1u, 1u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(108379u, 4294967295u, 21256u), vec3<u32>(1u, 0u, 7594u), vec3<u32>(0u, 83186u, 26080u), vec3<u32>(14099u, 0u, 34824u), vec3<u32>(15660u, 0u, 25894u), vec3<u32>(4294967295u, 14974u, 64454u), vec3<u32>(15124u, 14205u, 0u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: bool, arg_3: Struct_4) -> vec4<bool> {
    return !vec4<bool>(true, all(vec3<bool>(arg_1.b.a.a.x & arg_2, arg_1.a.a.x, any(arg_1.b.a.a.xz))), arg_2, false);
}

fn func_2() -> bool {
    var var_0 = Struct_1(!func_3(-u_input.b, Struct_4(Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(542f, 885f, -1075f)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(1023f, -155f, 1611f))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 73145u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 84871u, 1u)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), true, Struct_4(Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(174f, 1425f, 1098f)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(-1057f, 2051f, 702f))), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 29804u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-332f, -419f, -1124f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(604f, 118f, -1247f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(395f, -806f, -1116f)) - vec3<f32>(566f, 724f, -212f)))), vec3<bool>(true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), false))))));
    let var_1 = -reverseBits(vec2<i32>(select(u_input.b, -36816i, true), ~(u_input.b << (42632u % 32u))));
    let var_2 = var_0.a.x;
    var var_3 = Struct_1(select(select(vec4<bool>(select(false, var_0.a.x, false), all(var_0.a), true, var_0.a.x), vec4<bool>(var_0.b.x >= var_0.b.x, !var_0.a.x, var_0.a.x, any(vec4<bool>(false, var_0.a.x, false, false))), all(!vec3<bool>(true, var_0.a.x, false))), select(!var_0.a, select(func_3(u_input.b, Struct_4(Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec3<f32>(var_0.b.x, 541f, var_0.b.x)), Struct_2(Struct_1(var_0.a, vec3<f32>(603f, var_0.b.x, -159f))), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec3<u32>(37993u, 15992u, u_input.a.x)), true, Struct_4(Struct_1(vec4<bool>(var_0.a.x, false, false, true), var_0.b), Struct_2(Struct_1(var_0.a, vec3<f32>(1000f, var_0.b.x, var_0.b.x))), vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x), vec3<u32>(0u, 30754u, u_input.a.x))), var_0.a, !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), var_0.a), var_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) - var_0.b));
    global0 = array<vec3<u32>, 19>();
    return var_3.a.x;
}

fn func_1() -> vec3<u32> {
    var var_0 = Struct_4(Struct_1(select(vec4<bool>(any(vec2<bool>(false, true)), true, all(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, func_2()), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-315f, -586f, 402f)))))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(_wgslsmith_f_op_f32(-525f - 1131f), -789f, 1f))), vec4<u32>(~(abs(u_input.a.x) >> (~4294967295u % 32u)), firstTrailingBit(~(~1u)), ~_wgslsmith_div_u32(~0u, ~u_input.a.x), u_input.a.x), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~abs(~u_input.a.x), _wgslsmith_mod_u32(~u_input.a.x, 1u)), 19u)]);
    return global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(min(36499u, _wgslsmith_add_u32(var_0.c.x, 22798u)), firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)))) >> (u_input.a.x % 32u), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(~(((1u & u_input.a.x) ^ u_input.a.x) & (~39596u << (~u_input.a.x % 32u))), 19u)], select(select(global0[_wgslsmith_index_u32(abs(u_input.a.x) & min(4294967295u, 0u), 19u)], func_1(), true), vec3<u32>(reverseBits(87683u), u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(51699u, 4294967295u), u_input.a)) >> (vec3<u32>(4294967295u, u_input.a.x, 58484u) % vec3<u32>(32u)), vec3<bool>(!all(vec2<bool>(false, false)), true, any(vec4<bool>(true, true, true, true)))));
    let var_1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -350f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1649f), _wgslsmith_f_op_f32(ceil(-1277f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1022f)))), _wgslsmith_mod_i32(u_input.b, _wgslsmith_clamp_i32(-36981i, 1i, abs(1i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1574f), _wgslsmith_f_op_f32(f32(-1f) * -1049f), 1653f) * vec3<f32>(_wgslsmith_f_op_f32(min(-620f, _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(abs(-629f)), -694f)), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, u_input.b)), ~vec2<i32>(u_input.b, u_input.b)), ~u_input.b, ~u_input.b), _wgslsmith_sub_vec3_i32(-reverseBits(vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(0i, 1i)), select(u_input.b, u_input.b, true)))));
}

