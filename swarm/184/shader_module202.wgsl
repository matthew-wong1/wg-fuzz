struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: Struct_3,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: vec2<i32> = vec2<i32>(1i, 38320i);

var<private> global2: array<bool, 15>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec3<bool> {
    let var_0 = Struct_3(_wgslsmith_mod_i32(-2147483647i, max(arg_0, global1.x)), true, !(52360i >= global1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(764f * -834f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, 1000f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))))));
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    let var_1 = u_input.d;
    let var_2 = countOneBits(vec4<u32>(u_input.a ^ _wgslsmith_add_u32(u_input.a, 59186u >> (u_input.a % 32u)), _wgslsmith_sub_u32(u_input.a, u_input.a), firstLeadingBit(u_input.a), u_input.a));
    return vec3<bool>(true, !var_0.c, !(!(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 24159u, 0u), 15u)] & true)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = array<Struct_2, 8>();
    var var_0 = func_3(arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) + _wgslsmith_f_op_f32(arg_1.c.e + arg_1.c.d.x)), 1153f)));
    global0 = array<Struct_2, 8>();
    let var_1 = select(u_input.c, firstTrailingBit(vec2<i32>(0i, i32(-1i) * -arg_2.b)), arg_2.a.xy);
    var var_2 = arg_3.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.e)) < arg_1.c.d.x;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: vec4<bool>) -> bool {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(685f - arg_2.a.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -914f))))), arg_2, Struct_3(arg_2.d.b, arg_2.a.c, !(true & func_2(vec3<u32>(arg_2.b.d.x, u_input.a, u_input.a), Struct_5(arg_2.a.d.x, arg_2, Struct_3(19764i, global2[_wgslsmith_index_u32(arg_2.d.d.x, 15u)], arg_2.a.b, vec2<f32>(352f, arg_2.a.d.x), arg_2.a.e), vec4<f32>(-157f, -1597f, arg_2.a.d.x, -1000f)), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(100254u, 15u)], arg_2.a.b, arg_2.a.b), arg_2.d.b, arg_0, vec2<u32>(88694u, arg_2.d.d.x)), Struct_1(vec3<bool>(arg_3.x, arg_3.x, arg_3.x), 2147483647i, global2[_wgslsmith_index_u32(1u, 15u)], vec2<u32>(4294967295u, u_input.a)))), arg_2.a.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-842f * _wgslsmith_f_op_f32(-arg_2.a.d.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.d.x, arg_2.a.d.x, arg_2.a.e, 1188f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.e, -433f, 1068f, arg_2.a.d.x))))));
    var var_1 = Struct_3(~1i, true, !(~4294967295u >= ~(56076u & arg_2.c.x)), _wgslsmith_f_op_vec2_f32(-var_0.c.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(arg_2.a.e * 1000f)))));
    global2 = array<bool, 15>();
    var var_2 = max(var_0.b.c.ywy, var_0.b.c.ywx);
    let var_3 = var_2.x;
    return arg_2.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = Struct_1(vec3<bool>(!func_1(any(vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 15u)], true)), ~vec3<i32>(u_input.c.x, u_input.d, 0i), Struct_4(Struct_3(7565i, false, global2[_wgslsmith_index_u32(4294967295u, 15u)], vec2<f32>(918f, 2878f), -916f), Struct_1(vec3<bool>(false, false, false), 0i, true, vec2<u32>(1u, u_input.a)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(18222u, 15u)]), global1.x, global2[_wgslsmith_index_u32(u_input.a, 15u)], vec2<u32>(u_input.a, 0u))), vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)])), (global2[_wgslsmith_index_u32(u_input.a, 15u)] | global2[_wgslsmith_index_u32(u_input.a, 15u)]) || select(false, func_3(var_0.x, 863f).x, !global2[_wgslsmith_index_u32(26952u, 15u)]), _wgslsmith_f_op_f32(step(1371f, _wgslsmith_f_op_f32(1589f * -309f))) > _wgslsmith_f_op_f32(ceil(-979f))), ~max(global1.x, var_0.x), global2[_wgslsmith_index_u32(26318u, 15u)], _wgslsmith_mult_vec2_u32(~vec2<u32>(max(u_input.a, 10810u), u_input.a), _wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), reverseBits(~vec2<u32>(u_input.a, 24826u)))));
    global2 = array<bool, 15>();
    global2 = array<bool, 15>();
    let var_2 = Struct_1(!vec3<bool>(global2[_wgslsmith_index_u32(~var_1.d.x, 15u)], any(select(vec3<bool>(var_1.a.x, global2[_wgslsmith_index_u32(4683u, 15u)], false), var_1.a, true)), true), var_1.b, !any(!(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(0u, 15u)]))), ~vec2<u32>(~(var_1.d.x >> (var_1.d.x % 32u)), ~_wgslsmith_mod_u32(u_input.a, u_input.a)));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1536f, -713f, -1450f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-659f, -324f, -1114f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(608f, -104f, 163f) - vec3<f32>(1000f, 1557f, 689f))), !global2[_wgslsmith_index_u32(var_1.d.x, 15u)])) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-642f, 881f, -874f), vec3<f32>(799f, 1614f, 275f), var_1.a.x))))))));
    let var_4 = Struct_3(-2147483647i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~1489u, ~52899u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.d.x, 100617u), ~var_1.d)) % 32u), true, true, _wgslsmith_f_op_vec2_f32(var_3.zz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_3.yy)))), var_3.x);
    let var_5 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d.x))), Struct_4(Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, var_0.x, global1.x), vec3<i32>(var_4.a, var_0.x, -1i)), var_1.a.x, false, vec2<f32>(_wgslsmith_f_op_f32(586f * var_3.x), var_4.d.x), 1f), var_2, max(abs(vec4<u32>(41252u, u_input.a, 31512u, var_1.d.x)), ~vec4<u32>(23964u, var_1.d.x, 0u, 15511u)), Struct_1(!(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 15u)], var_4.c, false)), _wgslsmith_mod_i32(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(var_4.a, u_input.b), vec2<i32>(var_2.b, var_4.a))), false, select(var_1.d, abs(var_2.d), true))), Struct_3(abs(var_2.b), false, _wgslsmith_f_op_f32(var_4.d.x + 629f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-446f + -796f)), _wgslsmith_f_op_vec2_f32(var_3.zx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-273f, 508f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-155f, 619f)))), _wgslsmith_f_op_f32(var_4.d.x - 1000f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1069f + _wgslsmith_f_op_f32(f32(-1f) * -1497f))), var_4.e, var_3.x, _wgslsmith_f_op_f32(round(1262f))));
    let var_6 = var_4.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(1u, countOneBits(1u)));
}

