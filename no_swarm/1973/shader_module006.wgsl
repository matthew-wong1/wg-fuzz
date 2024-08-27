struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<f32, 23>;

var<private> global3: Struct_1 = Struct_1(30121u, 2147483647i, vec3<bool>(true, false, false), 33483u, vec2<bool>(false, true));

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(global3.a, 23u)], global2[_wgslsmith_index_u32(30114u, 23u)], global2[_wgslsmith_index_u32(global3.a, 23u)], global2[_wgslsmith_index_u32(global3.a, 23u)])))));
    let var_1 = global3.a;
    var var_2 = select(all(select(vec2<bool>(global3.c.x, true), vec2<bool>(true, true), vec2<bool>(false, true))), all(vec4<bool>(!arg_0.x, true, global3.c.x, global3.c.x)), all(select(!(!vec4<bool>(true, global3.c.x, global3.e.x, false)), vec4<bool>(any(vec4<bool>(false, true, false, global3.c.x)), all(vec3<bool>(true, true, global3.e.x)), global4.x, true), global4.x || all(vec3<bool>(false, true, arg_0.x)))));
    return max(vec3<u32>(~(~4294967295u), _wgslsmith_mod_u32(global3.d >> (global3.a % 32u), global3.a), global3.a), ~vec3<u32>(~4294967295u, 1u, 70564u) & vec3<u32>(countOneBits(74219u), global3.d, ~select(59062u, 19137u, arg_0.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(reverseBits(global3.a), ~(~26141u)), _wgslsmith_dot_vec3_u32(vec3<u32>(16345u, 103787u, 2812u) >> (~vec3<u32>(arg_1.d, arg_1.a, 69663u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global3.d, 1u, arg_1.a), vec3<u32>(arg_2.a, global3.a, 94843u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.a, 31335u, arg_2.a), vec3<u32>(22159u, 23740u, arg_2.d), vec3<u32>(20681u, 82946u, 4294967295u)))), arg_2.a), min(select(vec3<u32>(arg_2.d, ~global3.d, ~arg_1.d), func_3(select(vec2<bool>(false, global3.e.x), arg_2.e, true)), select(select(arg_2.c, arg_2.c, true), select(vec3<bool>(false, global4.x, true), vec3<bool>(true, arg_1.e.x, true), global4.x), select(arg_1.c, global3.c, vec3<bool>(false, true, true)))), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(global3.d, 34785u, global3.d)), vec3<u32>(55257u, 4294967295u, arg_1.d)) >> (~select(vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 0u, 13415u), arg_1.c) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(abs(firstLeadingBit(~vec3<u32>(4294967295u, global3.d, 90556u))), vec3<u32>(max(4294967295u, arg_2.d), arg_1.d, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global3.a), vec2<u32>(25845u, 27691u)))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u << (global3.d % 32u), 23u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 23u)]), -1976f, -1355f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(820f, 2614f, global2[_wgslsmith_index_u32(arg_1.d, 23u)], global2[_wgslsmith_index_u32(0u, 23u)]))), select(vec4<bool>(arg_2.c.x, false, global3.e.x, true), !vec4<bool>(false, global4.x, global4.x, false), !vec4<bool>(false, true, global3.e.x, arg_2.c.x)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(919f, global2[_wgslsmith_index_u32(arg_2.a, 23u)], -181f, 1505f) - vec4<f32>(global2[_wgslsmith_index_u32(17473u, 23u)], -1501f, global2[_wgslsmith_index_u32(4294967295u, 23u)], 1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4711u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], 1243f, global2[_wgslsmith_index_u32(arg_1.a, 23u)]) - vec4<f32>(-524f, -148f, global2[_wgslsmith_index_u32(71293u, 23u)], -769f)))))));
    var_0 = _wgslsmith_add_vec3_u32(~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a, 0u, 0u), vec3<u32>(arg_2.a, global3.a, arg_2.a))), ~vec3<u32>(~arg_1.d, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.d, var_0.x), vec2<u32>(arg_1.a, arg_2.a)), _wgslsmith_div_u32(arg_1.d, var_0.x))) << (vec3<u32>(min(firstTrailingBit(arg_2.d & 0u), 21690u), 1u, 4294967295u) % vec3<u32>(32u));
    let var_2 = i32(-1i) * -1i;
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1412f * global2[_wgslsmith_index_u32(arg_1.d, 23u)]))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1083f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.d, 23u)]))), 850f)), global2[_wgslsmith_index_u32(~firstTrailingBit(global3.a), 23u)], _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(~func_3(!global3.c.yx).x, 23u)], 1098f)));
    return _wgslsmith_add_u32(var_0.x, ~32200u) & reverseBits(~(~1u));
}

fn func_4(arg_0: f32, arg_1: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_add_vec2_u32(abs(firstLeadingBit(func_3(vec2<bool>(global4.x, global4.x)).xx << (~vec2<u32>(4294967295u, global3.a) % vec2<u32>(32u)))), ~vec2<u32>(~(~global3.d), ~38093u >> (global3.a % 32u)));
    let var_1 = vec2<bool>(global2[_wgslsmith_index_u32(~arg_1, 23u)] > _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~12585u, 23u)], -1180f)), any(select(!(!vec4<bool>(global4.x, global3.e.x, false, true)), !vec4<bool>(global4.x, false, global3.e.x, global3.e.x), all(select(vec2<bool>(false, false), global3.e, global3.e)))));
    var var_2 = global1[_wgslsmith_index_u32(~var_0.x, 27u)];
    global0 = array<vec4<i32>, 21>();
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(76128u, 23u)], global2[_wgslsmith_index_u32(25009u, 23u)], arg_0, 407f)), vec4<f32>(arg_0, arg_0, arg_0, 751f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(global3.d, 23u)], -213f, 919f, global2[_wgslsmith_index_u32(var_0.x, 23u)]))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1778f, arg_0, global2[_wgslsmith_index_u32(global3.a, 23u)], -622f), vec4<f32>(global2[_wgslsmith_index_u32(58441u, 23u)], 260f, arg_0, arg_0)))))))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = arg_3.x;
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u) ^ ~_wgslsmith_div_u32(abs(_wgslsmith_sub_u32(global3.d, 1u)), arg_0.a), 27u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(arg_1, 23u)], global2[_wgslsmith_index_u32(reverseBits(~var_0), 23u)])), (func_2(vec2<i32>(1631i, arg_2), global1[_wgslsmith_index_u32(arg_1, 27u)], arg_0) << (_wgslsmith_sub_u32(arg_3.x, global3.a) % 32u)) << (_wgslsmith_dot_vec3_u32(firstLeadingBit(arg_3.www), ~vec3<u32>(22590u, 0u, arg_3.x)) % 32u))));
    return global3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(select(!vec3<bool>(true, false, global4.x), select(vec3<bool>(true, global3.e.x, false), global3.c, true), select(global3.c, global3.c, global3.c.x)), select(vec3<bool>(global4.x, false, global3.c.x), !global3.c, select(global3.c, global3.c, global3.c)), select(vec3<bool>(false, global3.e.x, global4.x), func_1(Struct_1(1u, 14217i, vec3<bool>(global3.e.x, global4.x, global4.x), 0u, vec2<bool>(false, global4.x)), global3.a, -2147483647i, vec4<u32>(global3.a, 4294967295u, global3.a, global3.d)), global3.c)));
    let var_1 = -641f;
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-52012i >> (~_wgslsmith_mod_u32(1u, global3.a) % 32u), _wgslsmith_clamp_i32(min(countOneBits(global3.b), countOneBits(-2147483647i)), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-23483i, 2147483647i, global3.b)), _wgslsmith_mod_i32(u_input.a.x, global3.b))), min(abs(u_input.a.zy) | ~abs(vec2<i32>(3751i, global3.b)), ~firstTrailingBit(vec2<i32>(0i, global3.b))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1416f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, abs(64907u)), 23u)]))));
    global4 = vec2<bool>(true & !global3.c.x, var_0.x);
    global3 = global1[_wgslsmith_index_u32(abs(1913u), 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-262f, _wgslsmith_f_op_f32(-317f - var_3)), 758f, global2[_wgslsmith_index_u32(~(~global3.d), 23u)], var_3), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1120f, -1945f, -567f, -581f))))), true)), _wgslsmith_div_vec2_u32(vec2<u32>(global3.a, ~(~1u)), ~(~vec2<u32>(39292u, 13612u))), 27034u, -586f, vec3<u32>(_wgslsmith_mult_u32(~_wgslsmith_add_u32(0u, 52010u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.a, 4294967295u, 26152u, global3.d), vec4<u32>(global3.a, global3.a, global3.d, 0u)) >> (global3.a % 32u)), global3.d, global3.d));
}

