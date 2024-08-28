struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_3,
    d: Struct_3,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 29> = array<bool, 29>(true, true, true, false, false, false, true, true, true, true, true, false, false, true, true, false, true, true, false, false, true, false, false, true, false, false, true, false, true);

var<private> global2: vec3<f32>;

var<private> global3: array<vec3<i32>, 17>;

var<private> global4: u32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_add_vec2_i32(~vec2<i32>(abs(~u_input.a.x), countOneBits(u_input.a.x & 31391i)), vec2<i32>(u_input.a.x, -4383i));
    let var_1 = Struct_4(Struct_1(-2147483647i, max(vec3<i32>(-2147483647i, ~1i, 9216i), -abs(vec3<i32>(u_input.a.x, var_0.x, u_input.a.x)))), vec4<u32>(arg_2, arg_2, min(arg_2 & 1u, ~0u | ~arg_2), 1u), Struct_3(firstLeadingBit(var_0.x)), Struct_3(_wgslsmith_mod_i32(64086i, abs(u_input.a.x))), _wgslsmith_clamp_vec2_i32(u_input.a.ww, -vec2<i32>(abs(var_0.x), 2147483647i), ~_wgslsmith_add_vec2_i32(max(vec2<i32>(u_input.a.x, -2192i), vec2<i32>(0i, u_input.a.x)), u_input.a.xw)));
    var var_2 = var_1;
    var var_3 = var_1;
    let var_4 = var_1.c;
    return _wgslsmith_add_i32(u_input.a.x, var_3.d.a);
}

fn func_2() -> Struct_1 {
    global1 = array<bool, 29>();
    let var_0 = vec4<f32>(global2.x, _wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) - _wgslsmith_f_op_f32(-global2.x)), 905f);
    global4 = ~44121u;
    var var_1 = ~countOneBits(vec4<u32>(1u, 1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(36378u, 1u), 1u), ~11830u));
    var var_2 = all(select(!select(!vec2<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 29u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(41991u, 29u)], global1[_wgslsmith_index_u32(var_1.x, 29u)]), vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 29u)])), global1[_wgslsmith_index_u32(0u, 29u)] & global1[_wgslsmith_index_u32(0u, 29u)]), !vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 29u)], true), !(!(!vec2<bool>(false, global1[_wgslsmith_index_u32(10128u, 29u)])))));
    return Struct_1(-2147483647i, select(vec3<i32>(~abs(u_input.a.x), func_3(Struct_2(303f), _wgslsmith_f_op_f32(max(-674f, global2.x)), ~1u), u_input.a.x), ~vec3<i32>(-u_input.a.x, -20962i & u_input.a.x, -11276i), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, global1[_wgslsmith_index_u32(34454u, 29u)])), select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 29u)], false, true), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(var_1.x, 29u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(var_1.x, 29u)], global1[_wgslsmith_index_u32(68702u, 29u)])), !vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 29u)], false, global1[_wgslsmith_index_u32(var_1.x, 29u)]))));
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 1256f)))) - vec3<f32>(_wgslsmith_f_op_f32(932f * global2.x), _wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_div_f32(1891f, 773f))), vec3<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x)))), all(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)])))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1458f, global2.x, global2.x)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1019f), global2.x, global2.x))) + vec3<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(-152f + -931f)), -760f)));
    global4 = 43191u;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-175f, global2.x, -1015f)))) * vec3<f32>(global2.x, -109f, _wgslsmith_f_op_f32(-global2.x))));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.b.xx, vec2<i32>(u_input.a.x, 0i)) >> (1u % 32u), var_0.a, _wgslsmith_clamp_i32(abs(2147483647i), firstTrailingBit(firstTrailingBit(~var_0.a)), func_3(Struct_2(_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-global2.x), 1u)));
    return Struct_3(~(select(10794i, var_1.x, global1[_wgslsmith_index_u32(0u, 29u)] | true) << (~1u % 32u)));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    global1 = array<bool, 29>();
    global4 = arg_0.b.x;
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -350f)))), 661f));
    global1 = array<bool, 29>();
    global0 = ~_wgslsmith_add_u32(~arg_2.x, 0u);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~4294967295u;
    let var_0 = Struct_4(func_4(Struct_4(Struct_1(u_input.a.x, global3[_wgslsmith_index_u32(62868u << (0u % 32u), 17u)]), vec4<u32>(~4294967295u, ~1u, 1u, 58496u), func_1(), func_1(), _wgslsmith_clamp_vec2_i32(u_input.a.xy, u_input.a.xw, vec2<i32>(u_input.a.x, u_input.a.x))), !all(vec2<bool>(true, false)), vec2<u32>(firstLeadingBit(1u), reverseBits(_wgslsmith_sub_u32(49251u, 1u)))), ~vec4<u32>(1u, 1u, 1u, 1u), Struct_3(~func_2().b.x), Struct_3(-1i), ~_wgslsmith_div_vec2_i32(u_input.a.xx, _wgslsmith_add_vec2_i32(vec2<i32>(-64908i, 0i), vec2<i32>(-1948i, u_input.a.x))) & (u_input.a.zy & u_input.a.ww));
    let var_1 = Struct_3(_wgslsmith_mod_i32(~var_0.e.x, var_0.d.a));
    global0 = var_0.b.x;
    var var_2 = !(!(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 29u)], !global1[_wgslsmith_index_u32(26145u, 29u)], var_0.b.x >= var_0.b.x)));
    var_2 = !(!(!select(!vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, var_2.x, global1[_wgslsmith_index_u32(var_0.b.x, 29u)]), vec3<bool>(var_2.x, true, false))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(547f + -1548f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_sub_u32(var_0.b.x, var_0.b.x)), max(70959u, abs(var_0.b.x)), var_0.b.x), var_0.b.x), var_0.b.x & var_0.b.x, _wgslsmith_add_i32(-1i, -28095i & reverseBits(-var_1.a)), _wgslsmith_f_op_f32(global2.x + 1308f));
}

