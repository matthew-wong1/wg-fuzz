struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false), vec2<u32>(55310u, 22891u), 25093i);

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(1368f, 717f, 249f), vec3<f32>(631f, -207f, -530f), vec3<f32>(848f, 366f, 2003f), vec3<f32>(-801f, -1013f, 529f), vec3<f32>(-550f, 427f, 1000f), vec3<f32>(754f, -418f, 451f), vec3<f32>(-1043f, 630f, -1369f), vec3<f32>(-904f, 853f, -962f), vec3<f32>(573f, 1625f, 428f), vec3<f32>(1940f, -264f, 468f), vec3<f32>(1000f, -1000f, 601f), vec3<f32>(-575f, -1000f, 597f), vec3<f32>(209f, -1255f, 1000f), vec3<f32>(1790f, -2684f, -340f), vec3<f32>(-183f, -326f, -1122f), vec3<f32>(163f, -441f, -1490f), vec3<f32>(-1000f, 1000f, 786f), vec3<f32>(213f, 123f, -958f), vec3<f32>(-810f, 409f, -1000f), vec3<f32>(352f, -442f, 1505f), vec3<f32>(344f, 484f, 592f), vec3<f32>(799f, -1970f, -441f), vec3<f32>(303f, -695f, -1081f), vec3<f32>(-209f, 1000f, 790f), vec3<f32>(-112f, -532f, -603f), vec3<f32>(-1000f, 1200f, 276f), vec3<f32>(-327f, -1587f, -593f), vec3<f32>(-1000f, 1652f, -449f), vec3<f32>(211f, -1000f, 592f), vec3<f32>(-529f, 189f, -370f), vec3<f32>(416f, -1731f, 157f));

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<u32> {
    let var_0 = u_input.c.wwz & vec3<u32>(~(~u_input.c.x), 4294967295u, ~25367u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1080f, -1379f))) + -933f) + -895f));
    let var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1038f, 595f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -304f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1128f * 1177f) + _wgslsmith_f_op_f32(max(-1037f, 1258f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1415f - 367f)))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-801f)) * -172f) + _wgslsmith_f_op_f32(-var_2.a.x)), 2306f);
    var var_3 = i32(-1i) * -global0.c;
    return min(select(vec2<u32>(4294967295u << (var_0.x % 32u), ~u_input.c.x), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), global0.b & vec2<u32>(global0.b.x, var_0.x)), all(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global0.a.x))), var_0.zx) ^ ~global1.b;
}

fn func_2(arg_0: i32) -> vec2<u32> {
    global3 = array<Struct_1, 28>();
    global3 = array<Struct_1, 28>();
    var var_0 = 33168u;
    global2 = array<vec3<f32>, 31>();
    var var_1 = _wgslsmith_f_op_f32(ceil(-780f));
    return func_3();
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_add_u32(u_input.c.x, 0u);
    global0 = Struct_1(global1.a, firstTrailingBit(~func_2(firstTrailingBit(-21236i))), arg_1.x);
    var var_1 = Struct_1(global1.a, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(global0.b, ~vec2<u32>(var_0, global0.b.x)), func_2(_wgslsmith_dot_vec3_i32(select(vec3<i32>(global1.c, 6068i, 1229i), vec3<i32>(global1.c, 0i, 1i), global0.a.x), select(vec3<i32>(global0.c, global1.c, 41226i), vec3<i32>(2147483647i, -15280i, -2147483647i), vec3<bool>(global1.a.x, global0.a.x, true)))), ~func_2(2147483647i)), -2147483647i);
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, ~0u | _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_0, 0u, 0u, 75391u) >> (u_input.c % vec4<u32>(32u)))), 28u)];
    var var_2 = !select(any(!(!vec4<bool>(global1.a.x, true, var_1.a.x, false))), global1.a.x, (abs(1u) == _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, var_0), vec2<u32>(0u, var_1.b.x))) & ((false & global0.a.x) | !global0.a.x));
    return ~(-(~(countOneBits(arg_1.x) | (arg_1.x | 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(abs(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, -771f)), _wgslsmith_add_vec2_i32(vec2<i32>(-16033i, global0.c), vec2<i32>(11553i, 2147483647i)), Struct_2(vec4<f32>(-619f, 1605f, -257f, 2658f)))), min(_wgslsmith_add_i32(u_input.a, u_input.b) << (~39559u % 32u), global1.c)));
}

