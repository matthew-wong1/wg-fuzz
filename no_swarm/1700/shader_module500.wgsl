struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(25317u, 1u), vec4<f32>(371f, 512f, 390f, 2233f), true, Struct_2(Struct_1(false, vec2<bool>(true, true), -1i, -20043i, vec2<u32>(2301u, 13207u))), Struct_1(true, vec2<bool>(true, false), 0i, 10092i, vec2<u32>(6700u, 21031u)));

var<private> global1: Struct_4 = Struct_4(Struct_3(vec2<u32>(106209u, 1u), vec4<f32>(802f, -416f, 553f, 373f), true, Struct_2(Struct_1(false, vec2<bool>(true, false), -42621i, 13460i, vec2<u32>(1u, 6160u))), Struct_1(false, vec2<bool>(false, true), 17749i, -7934i, vec2<u32>(1u, 1u))));

var<private> global2: array<vec3<u32>, 24>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = Struct_4(Struct_3(~(~(vec2<u32>(0u, 55577u) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(-1000f * global0.b.x), _wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_div_f32(global1.a.b.x, global0.b.x)))), global1.a.d.a.a, Struct_2(Struct_1(false, vec2<bool>(false, global1.a.c), u_input.e, ~u_input.e, vec2<u32>(arg_0.x, 0u))), global0.e));
    global0 = var_0.a;
    let var_1 = global0.d.a;
    let var_2 = global0.d.a;
    var var_3 = ~87222u;
    return _wgslsmith_f_op_f32(764f * var_0.a.b.x);
}

fn func_3(arg_0: vec3<f32>) -> Struct_3 {
    global1 = Struct_4(Struct_3(global0.e.e, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2009f, -636f, global1.a.b.x, 1184f), vec4<f32>(global0.b.x, global1.a.b.x, global0.b.x, -2143f), false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-941f, -1216f, -1866f, global1.a.b.x)) - _wgslsmith_div_vec4_f32(global1.a.b, vec4<f32>(global0.b.x, 1453f, global1.a.b.x, 301f))), global0.d.a.b.x)), global0.e.b.x, global1.a.d, Struct_1(any(vec2<bool>(true, global1.a.e.a)) == (global0.e.e.x > global0.a.x), global0.d.a.b, global1.a.d.a.c, select(-27314i, -2147483647i, true), global0.a)));
    global2 = array<vec3<u32>, 24>();
    let var_0 = 361u;
    let var_1 = Struct_2(Struct_1(select(any(vec3<bool>(false, global0.e.b.x, true)) | true, global1.a.e.a, false), !vec2<bool>(global1.a.c && global0.e.b.x, !global0.d.a.a), 46747i, global0.e.d, global1.a.d.a.e));
    var var_2 = 19113u & ~(~min(8783u, 1u) << (abs(~global0.d.a.e.x) % 32u));
    return Struct_3(firstLeadingBit(~var_1.a.e >> (global1.a.d.a.e % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.b))), true, Struct_2(var_1.a), Struct_1(!global0.c, !vec2<bool>(global1.a.b.x <= 334f, global0.e.b.x), max(0i, ~global1.a.e.c >> (countOneBits(52921u) % 32u)), global1.a.e.d, min(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0), global0.a), ~global0.e.e << (var_1.a.e % vec2<u32>(32u)))));
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> i32 {
    var var_0 = 2147483647i;
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(1u & arg_1.e.e.x, 4294967295u), 4294967295u, 0u);
    let var_2 = !select(select(!vec3<bool>(arg_1.c, global0.e.a, false), vec3<bool>(!arg_1.d.a.b.x, global1.a.c || arg_1.e.b.x, arg_1.d.a.a && global0.d.a.b.x), all(select(vec4<bool>(false, false, global0.c, false), vec4<bool>(arg_1.e.b.x, arg_1.d.a.a, true, global0.c), global0.d.a.a))), select(select(select(vec3<bool>(false, global1.a.d.a.a, false), vec3<bool>(arg_1.d.a.a, global1.a.c, global0.d.a.b.x), vec3<bool>(false, global1.a.e.a, arg_1.e.a)), !vec3<bool>(false, global1.a.d.a.b.x, true), !vec3<bool>(false, global0.c, global0.c)), !select(vec3<bool>(arg_1.d.a.b.x, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, global1.a.d.a.b.x)), true), 0u >= ~arg_1.d.a.e.x);
    var var_3 = min(((global2[_wgslsmith_index_u32(_wgslsmith_add_u32(83743u, 1u), 24u)] & _wgslsmith_sub_vec3_u32(global2[_wgslsmith_index_u32(u_input.d, 24u)], global2[_wgslsmith_index_u32(71516u, 24u)])) | global2[_wgslsmith_index_u32(34315u, 24u)]) ^ global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(abs(0u), 61668u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.d.a.e.x, u_input.d), global0.e.e), vec2<u32>(u_input.d, var_1.x) << (global0.e.e % vec2<u32>(32u)))), 24u)], _wgslsmith_sub_vec3_u32(~global2[_wgslsmith_index_u32(global0.e.e.x, 24u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.a.x, 23008u) >> (~global2[_wgslsmith_index_u32(arg_1.a.x, 24u)] % vec3<u32>(32u)), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(29204u, global0.e.e.x, global0.d.a.e.x), vec3<u32>(6423u, u_input.d, 1u)))), 24u)]));
    let var_4 = arg_1.c;
    return -select(_wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_1.d.a.d, arg_1.d.a.d) | _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), max(26764i, -2147483647i), firstLeadingBit(firstTrailingBit(0i))), global1.a.d.a.c, global0.d.a.b.x);
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    let var_0 = func_4(_wgslsmith_f_op_f32(-461f - _wgslsmith_f_op_f32(-global1.a.b.x)), func_3(vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_u32(arg_0.e, vec2<u32>(44235u, 1u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_div_f32(global1.a.b.x, global1.a.b.x)), -594f)));
    let var_1 = vec4<u32>(func_3(global0.b.wyx).e.e.x, global1.a.d.a.e.x, firstTrailingBit(~u_input.d), max(abs(global1.a.a.x >> (0u % 32u)) ^ global1.a.d.a.e.x, 0u));
    var var_2 = _wgslsmith_f_op_f32(func_2(vec2<u32>(4294967295u, abs(~52348u >> (countOneBits(global0.d.a.e.x) % 32u)))));
    let var_3 = u_input.a;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-594f)) * 479f);
    return Struct_3(vec2<u32>(3776u, _wgslsmith_mod_u32(4294967295u, ~5914u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-742f, global1.a.b.x, -1071f, 1004f)))))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, global0.c)), !arg_0.a, global0.e.a, true), select(!vec4<bool>(arg_0.a, true, false, false), !vec4<bool>(global1.a.d.a.a, false, false, true), vec4<bool>(true, global0.c, global1.a.d.a.a, true)))), global1.a.d, global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(global1.a);
    let var_0 = -16034i;
    var var_1 = func_1(Struct_1(false, vec2<bool>(true, !(global0.d.a.d >= -2419i)), global1.a.d.a.c, -12157i, vec2<u32>(48792u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global0.d.a.e, global1.a.a), vec2<u32>(4294967295u, 34142u) >> (vec2<u32>(global1.a.d.a.e.x, 1983u) % vec2<u32>(32u))))));
    var var_2 = Struct_3(var_1.d.a.e, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a.b) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0.b)) + _wgslsmith_f_op_vec4_f32(floor(var_1.b)))))), !func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2173f, 816f, var_1.b.x))) + var_1.b.yzy)).e.b.x, var_1.d, Struct_1(true, !var_1.e.b, 2147483647i, -1i, countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(26914u, 1u), vec2<u32>(1u, var_1.d.a.e.x))) >> (countOneBits(vec2<u32>(global1.a.d.a.e.x, u_input.d) >> (global0.a % vec2<u32>(32u))) % vec2<u32>(32u))));
    global1 = Struct_4(Struct_3(~(var_2.d.a.e << (global0.a % vec2<u32>(32u))) | ~(~vec2<u32>(global1.a.a.x, var_2.e.e.x)), var_1.b, !global0.d.a.a, var_2.d, Struct_1(select(var_2.d.a.b.x, var_1.c, false), !global1.a.d.a.b, 1i, _wgslsmith_sub_i32(-var_0, var_2.e.c >> (global0.a.x % 32u)), ~min(var_1.a, global0.e.e))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1007f);
    var var_4 = Struct_4(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~17771u, firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec3_i32(select(vec3<i32>(3966i, var_2.e.c, var_2.d.a.c), vec3<i32>(u_input.e, 12657i, var_0), vec3<bool>(false, global1.a.d.a.b.x, global1.a.d.a.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.d.a.c, var_1.d.a.c, 14436i), vec3<i32>(var_4.a.e.d, var_4.a.d.a.d, var_4.a.e.d))))), _wgslsmith_div_u32(global1.a.a.x, var_1.a.x) << (~(41764u << (~4294967295u % 32u)) % 32u), func_1(func_1(var_1.d.a).d.a).b.yzx, _wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, -33273i), func_4(_wgslsmith_f_op_f32(ceil(1000f)), func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-222f, var_4.a.b.x, var_3), vec3<f32>(-1375f, var_4.a.b.x, var_1.b.x), vec3<bool>(true, var_1.e.a, true)))))));
}

