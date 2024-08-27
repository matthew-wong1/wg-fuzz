struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>) -> u32 {
    let var_0 = ~global0.a.x == u_input.c;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1001f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-841f * 1817f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(354f, -1447f)), _wgslsmith_f_op_f32(max(1874f, 136f)), true))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-813f * _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1973f * 472f) * _wgslsmith_f_op_f32(ceil(-1004f)))))));
    let var_2 = ~32448u;
    global0 = arg_1.c;
    var var_3 = any(!(!vec4<bool>(global0.b, true, select(arg_2.x, true, true), true)));
    return 11832u;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global0 = Struct_1(abs(vec3<u32>(global0.a.x, _wgslsmith_div_u32(global0.a.x & 96333u, u_input.c), 0u)), true);
    let var_0 = vec4<u32>(global0.a.x, 1u & u_input.b.x, abs(func_3(u_input.a.x | global0.a.x, Struct_2(u_input.c, Struct_1(global0.a, global0.b), Struct_1(u_input.a.zxw, global0.b), vec4<i32>(-1i, 0i, 1i, -2147483647i), Struct_1(vec3<u32>(68678u, 0u, global0.a.x), global0.b)), vec4<bool>(true, true, true, global0.b)) | (4294967295u | global0.a.x)), ~u_input.b.x);
    global0 = Struct_1(_wgslsmith_add_vec3_u32(~(~(~var_0.wzz)), global0.a), !any(!vec4<bool>(global0.b, global0.b, false, global0.b)) & (any(vec3<bool>(false, false, global0.b)) & !all(vec3<bool>(false, global0.b, false))));
    global0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.wyz, max(_wgslsmith_add_vec3_u32(vec3<u32>(62396u, 59695u, var_0.x), vec3<u32>(40617u, 0u, 1u)), var_0.wyx)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 19700u), ~u_input.a.yy), 4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 6873u, global0.a.x), firstLeadingBit(vec4<u32>(22527u, u_input.b.x, 52422u, 28369u)))), global0.a.x != ~(~_wgslsmith_add_u32(u_input.b.x, u_input.a.x)));
    var var_1 = _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(1i, 1i)), ~select(vec2<i32>(-1i, 1i), select(vec2<i32>(8073i, 2147483647i), vec2<i32>(-1i, 54138i), true), !global0.b)) ^ firstTrailingBit(_wgslsmith_add_i32(1i, abs(-51563i)) >> (reverseBits(_wgslsmith_mod_u32(114965u, global0.a.x)) % 32u));
    return Struct_2(_wgslsmith_add_u32(0u, ~(~firstLeadingBit(u_input.a.x))), Struct_1(_wgslsmith_mult_vec3_u32(firstTrailingBit(~vec3<u32>(38480u, 35107u, var_0.x)), vec3<u32>(global0.a.x | 66822u, ~0u, 8368u ^ var_0.x)), any(!vec3<bool>(global0.b, true, global0.b))), Struct_1(vec3<u32>(u_input.c, _wgslsmith_mult_u32(_wgslsmith_add_u32(41648u, global0.a.x), 94871u), ~4294967295u >> (~u_input.a.x % 32u)), all(select(vec4<bool>(false, false, global0.b, false), vec4<bool>(true, true, true, false), global0.b)) & any(vec2<bool>(false, global0.b))), ~abs(select(vec4<i32>(-10174i, 1i, 35241i, 2147483647i), vec4<i32>(40562i, -1i, -32221i, 18944i), false) >> (_wgslsmith_add_vec4_u32(var_0, var_0) % vec4<u32>(32u))), Struct_1(vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(4294967295u), global0.a.x >> (4294967295u % 32u)), ~u_input.a.x, global0.a.x), any(select(!vec2<bool>(global0.b, false), vec2<bool>(global0.b, false), select(vec2<bool>(global0.b, true), vec2<bool>(false, global0.b), vec2<bool>(global0.b, true))))));
}

fn func_4(arg_0: Struct_5) -> vec4<u32> {
    global0 = arg_0.c.b.e;
    var var_0 = vec3<bool>(global0.b, true, arg_0.c.b.c.b);
    var var_1 = 0u;
    var_1 = arg_0.c.b.a;
    let var_2 = ~(arg_0.a | arg_0.a);
    return u_input.a;
}

fn func_1() -> vec2<i32> {
    var var_0 = ~func_4(Struct_5(~abs(84634i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-270f * 128f), 2465f)), Struct_4(any(vec2<bool>(global0.b, global0.b)), func_2(vec3<f32>(435f, -1820f, 330f)), u_input.a)));
    let var_1 = ~4294967295u;
    global0 = Struct_1(~_wgslsmith_mult_vec3_u32(~u_input.a.zzy, ~vec3<u32>(4294967295u, 4294967295u, var_0.x)) | vec3<u32>(4294967295u, 0u, _wgslsmith_div_u32(15433u, var_1) << (~46899u % 32u)), func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(344f, 693f, 1048f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-972f, -1000f, 345f)))))))).e.b);
    let var_2 = true;
    let var_3 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~(u_input.b.x >> (1u % 32u))), countOneBits(var_0.yw)), vec2<u32>(_wgslsmith_add_u32(~88524u, _wgslsmith_div_u32(4294967295u, var_1)), _wgslsmith_div_u32(abs(u_input.a.x), 1u)), max(_wgslsmith_clamp_vec2_u32(global0.a.zx, reverseBits(u_input.a.yy), vec2<u32>(~66969u, select(global0.a.x, u_input.c, global0.b))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1, 4294967295u) | vec2<u32>(0u, 4294967295u), ~vec2<u32>(1u, global0.a.x))));
    return abs(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i) ^ firstTrailingBit(vec2<i32>(0i, 1i)), countOneBits(vec2<i32>(-1i, 19430i)) & select(vec2<i32>(12804i, 2147483647i), vec2<i32>(6226i, -71166i), vec2<bool>(global0.b, global0.b))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2195f, 215f, -1000f))).d.zw ^ max(firstLeadingBit(vec2<i32>(-1i, 2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-17205i, 67293i), vec2<i32>(1i, -1i), vec2<i32>(-68794i, 38734i))), true));
}

fn func_5(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = firstLeadingBit(u_input.a.zzz);
    var_0 = global0.a;
    global0 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-126f, 2169f))), 503f, _wgslsmith_f_op_f32(select(-245f, _wgslsmith_f_op_f32(-1000f + 352f), global0.b))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1135f) - _wgslsmith_f_op_f32(-213f * 674f)), _wgslsmith_f_op_f32(-1524f + -1786f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(800f + -2156f) + -1000f)))).b;
    global0 = Struct_1(global0.a ^ (_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, u_input.b.x, global0.a.x), u_input.a.xyw) >> (max(vec3<u32>(u_input.a.x, global0.a.x, var_0.x), u_input.a.xxx) % vec3<u32>(32u))), global0.b | !(!all(vec3<bool>(false, true, global0.b))));
    var var_1 = _wgslsmith_dot_vec3_u32(select(u_input.a.zzw, vec3<u32>(u_input.c, 1u, global0.a.x) >> (vec3<u32>(~0u, 0u, var_0.x) % vec3<u32>(32u)), vec3<bool>(false, true, false)), ~global0.a);
    return func_2(vec3<f32>(1f, 1f, 1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1119f + _wgslsmith_f_op_f32(floor(-168f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-560f))))));
    global0 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.a.x, global0.a.x), global0.a.x, abs(~(1u >> (global0.a.x % 32u)))), global0.b);
    let var_1 = Struct_5(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-1726i), _wgslsmith_sub_i32(-1502i, -2147483647i)), ~vec2<i32>(1i, 1i))), 1227f, Struct_4(any(!vec4<bool>(false, global0.b, true, global0.b)), func_5(func_1()), u_input.a));
    global0 = var_1.c.b.e;
    var var_2 = var_1.c.b.c;
    global0 = var_1.c.b.e;
    var_2 = func_5(-var_1.c.b.d.yx | countOneBits(-_wgslsmith_div_vec2_i32(vec2<i32>(var_1.c.b.d.x, var_1.a), var_1.c.b.d.yy))).b;
    let var_3 = 22528u;
    let var_4 = reverseBits(var_1.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(-1012f, _wgslsmith_f_op_f32(947f + var_0), true)), -790f, _wgslsmith_f_op_f32(min(-103f, -449f)), 272f), min(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(198f, var_0, -401f))).a, min(112923u, 72435u)), ~(~func_2(vec3<f32>(var_1.b, 658f, var_0)).d.zyw));
}

