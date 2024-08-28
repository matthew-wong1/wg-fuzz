struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), -13966i, 10102i), vec2<f32>(685f, -1227f));

var<private> global1: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true));

var<private> global2: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-955f, 561f, -590f), vec3<f32>(764f, -1049f, 558f), vec3<f32>(1000f, -544f, 948f), vec3<f32>(418f, 1000f, 2099f), vec3<f32>(-1000f, -365f, -330f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(ceil(global0.b)));
    global1 = array<vec3<bool>, 22>();
    let var_1 = Struct_2(firstTrailingBit(~vec2<u32>(1u | u_input.b, u_input.b)));
    var var_2 = Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1607f, -1000f), vec2<f32>(var_0.b.x, -172f))) * global0.b) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, -259f) + var_0.b))));
    var_2 = Struct_1(~reverseBits(~(-vec3<i32>(global0.a.x, global0.a.x, global0.a.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b.x, _wgslsmith_f_op_f32(ceil(1180f)), true))), _wgslsmith_f_op_f32(exp2(global0.b.x))));
    return select(select(vec3<i32>(_wgslsmith_mult_i32(u_input.c, _wgslsmith_mult_i32(global0.a.x, -46551i)), select(_wgslsmith_dot_vec2_i32(vec2<i32>(-9169i, 0i), global0.a.xx), 1i, 1000f < global0.b.x), 3332i), vec3<i32>(select(12836i, -var_0.a.x, true), global0.a.x | (10677i << (var_1.a.x % 32u)), 1i), global1[_wgslsmith_index_u32(1u, 22u)]), _wgslsmith_add_vec3_i32(min(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.x, -1i, -2147483647i), vec3<i32>(2870i, 27737i, 2147483647i), vec3<i32>(global0.a.x, 23132i, 41681i)), vec3<i32>(var_0.a.x, var_0.a.x, u_input.c)), min(var_0.a, global0.a) & vec3<i32>(1i, 0i, -3348i)), (_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.x, 34283i, -28648i), vec3<i32>(2147483647i, -1728i, 16548i)) | vec3<i32>(-1i, u_input.a.x, var_0.a.x)) & -var_2.a), any(vec3<bool>(true, true, true)));
}

fn func_1() -> vec3<i32> {
    global0 = Struct_1(func_2(), global0.b);
    let var_0 = _wgslsmith_f_op_f32(-1680f - 140f);
    global2 = array<vec3<f32>, 5>();
    let var_1 = Struct_3(Struct_2(abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(44696u, u_input.b), vec2<u32>(1u, 0u), vec2<u32>(u_input.b, u_input.b)))));
    var var_2 = Struct_2(vec2<u32>(~41985u, u_input.b));
    return ~(max(vec3<i32>(global0.a.x, global0.a.x, -2147483647i) >> (~vec3<u32>(0u, var_2.a.x, u_input.b) % vec3<u32>(32u)), u_input.a) << (_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.b, var_2.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, var_2.a.x)), ~u_input.b), _wgslsmith_add_vec3_u32(~vec3<u32>(var_2.a.x, var_1.a.a.x, var_2.a.x), vec3<u32>(u_input.b, 1u, u_input.b) ^ vec3<u32>(4294967295u, 1u, var_1.a.a.x))) % vec3<u32>(32u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_4 {
    let var_0 = all(global1[_wgslsmith_index_u32(~min(50296u, ~firstLeadingBit(u_input.b)), 22u)]);
    global2 = array<vec3<f32>, 5>();
    let var_1 = Struct_3(Struct_2(firstLeadingBit(vec2<u32>(~59931u, u_input.b))));
    var var_2 = select(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_1.a.a.x, var_1.a.a.x, 4294967295u), vec4<u32>(u_input.b, u_input.b, var_1.a.a.x, 48521u)) ^ firstTrailingBit(reverseBits(vec4<u32>(var_1.a.a.x, var_1.a.a.x, 1u, var_1.a.a.x))), firstLeadingBit(abs(vec4<u32>(1u, 0u, var_1.a.a.x, var_1.a.a.x)) & vec4<u32>(var_1.a.a.x, u_input.b, 1u, u_input.b))), abs(vec4<u32>(var_1.a.a.x, _wgslsmith_add_u32(u_input.b, _wgslsmith_sub_u32(43584u, 5685u)), _wgslsmith_mod_u32(u_input.b, ~1u), 4294967295u)), true);
    let var_3 = u_input.c;
    return Struct_4(var_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1416f, -1285f, var_0))) - 1123f), 201f)), ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 4294967295u, 4294967295u, 1u)), firstTrailingBit(~vec4<u32>(1u, 44595u, 26946u, u_input.b))), Struct_2(var_1.a.a), _wgslsmith_f_op_f32(abs(-200f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 5>();
    global2 = array<vec3<f32>, 5>();
    var var_0 = func_3(Struct_1(func_1(), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1110f - -184f), _wgslsmith_f_op_f32(step(-201f, 2265f)), true)), _wgslsmith_f_op_f32(-1f))), 209f);
    let var_1 = vec3<i32>(~(u_input.a.x >> (u_input.b % 32u)) << (0u % 32u), -2147483647i, u_input.a.x) & ~global0.a;
    var var_2 = var_0.d;
    var var_3 = _wgslsmith_sub_i32(var_1.x, 0i);
    var_3 = abs(func_1().x);
    let var_4 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(var_0.b - 1845f), _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_f_op_f32(-1392f * global0.b.x), -724f), _wgslsmith_div_u32(1u, 34699u), var_0.a.a, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e - 1933f)))));
}

