struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<i32, 3> = array<i32, 3>(1i, 16728i, 23341i);

var<private> global2: Struct_2 = Struct_2(Struct_1(-1073f, 813f), vec3<f32>(1777f, -1161f, 610f), vec3<u32>(51323u, 4294967295u, 15470u), Struct_1(535f, -1000f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global1 = array<i32, 3>();
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(global2.a.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global2.d.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.b - -1149f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.a) - _wgslsmith_f_op_f32(f32(-1f) * -336f)))))));
    let var_1 = !select(vec2<bool>(all(!vec3<bool>(true, global0.x, false)), global0.x), vec2<bool>(true, false), !(!vec2<bool>(global0.x, false)));
    var var_2 = !var_1.x;
    global0 = vec3<bool>(true, any(var_1), !((_wgslsmith_f_op_f32(select(var_0.x, -791f, global0.x)) == _wgslsmith_f_op_f32(f32(-1f) * -1049f)) || any(var_1)));
    return 0u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>) -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(global2.a.a, -194f), global2.b, vec3<u32>(min(~func_3(), _wgslsmith_dot_vec4_u32(vec4<u32>(26069u, arg_2.x, global2.c.x, 36858u), vec4<u32>(global2.c.x, arg_2.x, 113065u, arg_2.x)) & arg_2.x), arg_2.x, firstLeadingBit(abs(~global2.c.x))), Struct_1(274f, 1064f));
    global1 = array<i32, 3>();
    let var_1 = vec4<i32>(-1i) * -min(firstLeadingBit(u_input.a), reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(1u, 3u)], u_input.a.x, u_input.a.x, -2147483647i)));
    let var_2 = firstLeadingBit(~firstTrailingBit(global1[_wgslsmith_index_u32(arg_2.x ^ var_0.c.x, 3u)])) ^ (firstTrailingBit(0i) & ~(~var_1.x));
    var var_3 = ~4294967295u;
    return abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(arg_2.x, 3u)], var_1.x), var_1.x, global1[_wgslsmith_index_u32(104358u, 3u)] ^ -16879i) >> ((firstTrailingBit(vec4<u32>(0u, arg_2.x, global2.c.x, 49451u)) >> ((vec4<u32>(arg_2.x, global2.c.x, 24473u, 25217u) >> (vec4<u32>(var_0.c.x, global2.c.x, var_0.c.x, global2.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), ~var_1));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-global2.b.x);
    let var_1 = Struct_1(283f, _wgslsmith_f_op_f32(global2.a.b - 483f));
    var var_2 = arg_0;
    var var_3 = -select(-func_2(global2.c.x > var_2.c.x, Struct_1(var_2.d.a, 574f), ~vec3<u32>(global2.c.x, arg_0.c.x, arg_0.c.x)), vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(2857u, 3u)], 1i), select(!(!vec4<bool>(global0.x, global0.x, global0.x, true)), select(vec4<bool>(false, global0.x, global0.x, global0.x), !vec4<bool>(true, global0.x, global0.x, global0.x), !vec4<bool>(true, global0.x, true, false)), !vec4<bool>(global0.x, global0.x, false, global0.x)));
    global1 = array<i32, 3>();
    return global2.d;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = 1u;
    var var_1 = Struct_1(arg_2.b, arg_2.a);
    let var_2 = func_1(Struct_2(global2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b), _wgslsmith_f_op_vec3_f32(-global2.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(487f, arg_0.b, -205f) + vec3<f32>(global2.a.a, 679f, 339f)))), ~(~(~global2.c)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b + -452f)), 1160f)));
    global0 = vec3<bool>(select(false, global0.x, !(!all(vec4<bool>(false, arg_3, arg_3, global0.x)))), any(select(select(vec4<bool>(false, global0.x, true, false), select(vec4<bool>(global0.x, false, arg_3, arg_3), vec4<bool>(true, global0.x, false, true), false), vec4<bool>(false, false, false, false)), vec4<bool>(all(vec4<bool>(false, false, true, global0.x)), all(vec4<bool>(arg_3, true, global0.x, false)), !arg_3, global0.x), select(select(vec4<bool>(false, arg_3, global0.x, false), vec4<bool>(true, arg_3, arg_3, arg_3), global0.x), select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(arg_3, global0.x, false, global0.x), vec4<bool>(arg_3, false, global0.x, true)), vec4<bool>(arg_3, arg_3, arg_3, arg_3)))), !(!global0.x));
    let var_3 = firstTrailingBit(global2.c);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(522f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.b + _wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.b + vec3<f32>(-290f, -1545f, _wgslsmith_f_op_f32(step(1651f, global2.a.a)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b))), arg_2.b, arg_1)), vec3<u32>(~(~1u), var_3.x, ~0u), Struct_1(_wgslsmith_f_op_f32(-104f * arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(264f - 302f)) - arg_0.a)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<bool>) -> vec2<u32> {
    var var_0 = Struct_2(arg_1.d, global2.b, ~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.c.x, 34565u, global2.c.x), arg_1.c))), func_1(Struct_2(func_4(global2.d, -745f, func_1(arg_1), true).d, global2.b, min(arg_1.c, arg_1.c), func_1(arg_1))));
    let var_1 = u_input.a.xyx;
    let var_2 = _wgslsmith_mod_vec4_u32(max(max(vec4<u32>(var_0.c.x, global2.c.x ^ 36227u, var_0.c.x >> (39333u % 32u), 4294967295u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 47318u, 8070u), global2.c), reverseBits(var_0.c.x), 30084u, _wgslsmith_mult_u32(21806u, 1u))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.c.x, 31988u, 68949u, global2.c.x), countOneBits(vec4<u32>(1u, 37720u, arg_1.c.x, var_0.c.x))), ~vec4<u32>(14486u, arg_1.c.x, 1u, 0u))), (vec4<u32>(40062u, ~var_0.c.x, max(arg_1.c.x, 4223u), 1u) << (vec4<u32>(_wgslsmith_sub_u32(1u, 0u), arg_1.c.x, global2.c.x, ~global2.c.x) % vec4<u32>(32u))) >> (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(83600u, global2.c.x, 4294967295u, arg_1.c.x), vec4<u32>(4294967295u, 4294967295u, 10792u, 0u))) % vec4<u32>(32u)));
    global1 = array<i32, 3>();
    var var_3 = global2.a;
    return vec2<u32>(select(var_2.x, firstLeadingBit(func_3()), any(arg_2)), _wgslsmith_mod_u32(~countOneBits(1u), global2.c.x)) ^ _wgslsmith_div_vec2_u32(~arg_1.c.zx, global2.c.zz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(false, false, true);
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-746f)) - _wgslsmith_f_op_f32(sign(global2.d.b)))) - global2.b.x)));
    let var_1 = select(!(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(global0.x, true, global0.x, global0.x), false))), vec4<bool>(global2.a.a >= -2134f, global2.c.x <= reverseBits(select(0u, global2.c.x, false)), true, true), !(!vec4<bool>(global0.x & global0.x, false, false, false)));
    var var_2 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global2.b + vec3<f32>(620f, global2.a.b, -725f))))), select(func_5(!var_1.wyy, func_4(func_1(Struct_2(global2.d, vec3<f32>(global2.a.a, global2.a.b, 766f), vec3<u32>(global2.c.x, 31283u, global2.c.x), Struct_1(global2.a.b, 388f))), 292f, Struct_1(global2.b.x, -324f), 533f < global2.d.b), !vec2<bool>(false, var_1.x), !select(vec4<bool>(false, var_1.x, var_1.x, global0.x), vec4<bool>(true, var_1.x, var_1.x, true), var_1)), global2.c.yy, (abs(-32411i) <= -global1[_wgslsmith_index_u32(4294967295u, 3u)]) | (firstLeadingBit(1u) > global2.c.x)), ~_wgslsmith_dot_vec3_u32(select(global2.c, global2.c, vec3<bool>(false, var_1.x, true)) & ~global2.c, global2.c));
}

