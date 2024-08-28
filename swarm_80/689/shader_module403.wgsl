struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 14>;

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-640f, 778f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = vec2<f32>(-2633f, arg_0.b.a.a.x);
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(962f + global3.a.x) + _wgslsmith_f_op_f32(arg_0.b.a.a.x - global3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -954f)) + global3.a.x))));
    let var_1 = select(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(arg_0.b.c, arg_0.b.c, false), vec3<bool>(true, arg_0.b.c, arg_0.b.c), arg_0.b.c), select(vec3<bool>(arg_0.b.c, true, true), vec3<bool>(arg_0.b.c, arg_0.b.c, true), vec3<bool>(arg_0.b.c, arg_0.b.c, arg_0.b.c)), arg_0.b.c), true), vec3<bool>(all(!vec3<bool>(arg_0.b.c, true, arg_0.b.c)), any(select(!vec3<bool>(arg_0.b.c, arg_0.b.c, arg_0.b.c), vec3<bool>(true, true, true), true)), true), _wgslsmith_f_op_f32(-847f * 948f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x + global3.a.x))) - _wgslsmith_f_op_f32(arg_0.b.a.a.x + -481f)));
    global1 = array<Struct_2, 14>();
    var var_2 = var_1.xz;
    return _wgslsmith_dot_vec2_u32(arg_0.a.wy, ~arg_0.a.xy);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<bool>) -> bool {
    var var_0 = -2147483647i;
    var var_1 = arg_2;
    global3 = Struct_1(var_1.b.a.a);
    return all(!vec3<bool>(all(vec2<bool>(var_1.b.c, arg_1.c)), !arg_1.c, arg_0.c));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(569f, global3.a.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), arg_0.a.x))));
    let var_1 = arg_0;
    let var_2 = Struct_2(arg_0, -vec3<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-10137i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -62186i, 16501i)), 1958i), select(any(vec3<bool>(true, false, false)), false, false) & !(arg_1 | (u_input.a.x > u_input.a.x)));
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_div_f32(-193f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.x, arg_0.a.x) + _wgslsmith_f_op_f32(ceil(arg_3.x)))), var_0));
    var var_4 = _wgslsmith_f_op_f32(var_2.a.a.x + -740f);
    return arg_0.a.x;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-687f, global3.a.x) + _wgslsmith_f_op_f32(ceil(global3.a.x)))))))));
    global2 = _wgslsmith_f_op_f32(func_5(arg_0, !func_4(global1[_wgslsmith_index_u32(~func_3(Struct_3(vec4<u32>(5269u, 1u, 75078u, 64353u), Struct_2(arg_0, vec3<i32>(-16307i, 2147483647i, -35217i), true))), 14u)], Struct_2(arg_0, u_input.a.yyw, global3.a.x < global3.a.x), Struct_3(vec4<u32>(1u, 1u, 1u, 1u), Struct_2(Struct_1(vec2<f32>(global3.a.x, 1000f)), vec3<i32>(u_input.a.x, 35870i, u_input.a.x), true)), vec2<bool>(u_input.a.x > u_input.a.x, false)), ~(~(~(~vec2<u32>(33114u, 1u)))), arg_0.a));
    global0 = 1u;
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1421f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(336f, global3.a.x)) * -1169f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-569f, -913f) + arg_0.a) - _wgslsmith_f_op_vec2_f32(min(arg_0.a, vec2<f32>(arg_0.a.x, 523f)))))));
    let var_0 = arg_0.a;
    return ~max(_wgslsmith_div_u32(~37255u >> (~4294967295u % 32u), ~(~38594u)), ~(~countOneBits(0u)));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>) -> u32 {
    let var_0 = Struct_2(arg_0.a, vec3<i32>(firstTrailingBit(u_input.a.x), 35453i, u_input.a.x), max(1u >> (min(0u, 0u) % 32u), 0u) > func_2(arg_0.a));
    var var_1 = _wgslsmith_div_vec2_f32(global3.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a)) - var_0.a.a));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(global3.a.x, 1000f)), _wgslsmith_f_op_f32(func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-global3.a)), true, ~vec2<u32>(1u, 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-931f, var_0.a.a.x)))), global3.a.x);
    var var_3 = arg_0.a.a.x;
    var var_4 = var_0.b.x;
    return _wgslsmith_add_u32(~(~(~(~1u))), _wgslsmith_dot_vec2_u32(vec2<u32>(~22408u, ~22035u), ~vec2<u32>(1u, 1u)) | 51231u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = ~select(~countOneBits(4294967295u), ~func_1(global1[_wgslsmith_index_u32(1u, 14u)], true || var_0, select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0), var_0)), var_0 || any(!vec4<bool>(var_0, true, false, var_0)));
    let var_1 = abs(max(vec4<u32>(21466u, ~44810u, 0u >> (0u % 32u), ~31968u), vec4<u32>(reverseBits(98451u), _wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_sub_u32(19524u, 1u), firstLeadingBit(81967u)))) >> (firstTrailingBit(countOneBits(~vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u));
    global1 = array<Struct_2, 14>();
    let var_2 = ~(~1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(41958u, var_1.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global3.a.x)), _wgslsmith_f_op_f32(func_5(Struct_1(global3.a), false, var_1.xw, global3.a)), _wgslsmith_f_op_f32(global3.a.x * global3.a.x), _wgslsmith_f_op_f32(f32(-1f) * -336f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-645f, 393f, global3.a.x, global3.a.x), vec4<f32>(global3.a.x, -215f, global3.a.x, global3.a.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 650f, -741f, 648f) * vec4<f32>(1591f, global3.a.x, 775f, global3.a.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-160f, 951f, global3.a.x, -238f), vec4<f32>(global3.a.x, global3.a.x, 731f, 1496f), var_0)), vec4<f32>(931f, global3.a.x, 218f, global3.a.x))))))), ~vec3<u32>(25946u, _wgslsmith_dot_vec4_u32(max(var_1, vec4<u32>(4294967295u, 0u, 53636u, 30303u)), vec4<u32>(var_1.x, var_1.x, 20530u, 1u) | vec4<u32>(var_1.x, var_1.x, 4294967295u, var_1.x)), var_1.x));
}

