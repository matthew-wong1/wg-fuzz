struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: vec4<u32> = vec4<u32>(0u, 38720u, 55451u, 1u);

var<private> global2: i32 = 1i;

var<private> global3: array<u32, 14>;

var<private> global4: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> bool {
    global2 = -1i;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(120f, arg_1, arg_1)))))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(456f)), arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(420f, arg_1)))), _wgslsmith_f_op_f32(f32(-1f) * -532f), select(any(global4[_wgslsmith_index_u32(26963u, 8u)]), true, arg_1 < arg_1)))));
    global0 = array<Struct_2, 16>();
    var var_1 = -16196i;
    global4 = array<vec2<bool>, 8>();
    return all(vec3<bool>(true, all(global4[_wgslsmith_index_u32(11459u, 8u)]), !all(vec3<bool>(false, false, true)))) != true;
}

fn func_2() -> Struct_5 {
    return Struct_5(func_3(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(27441u, 4294967295u, 0u, 50364u), ~vec4<u32>(global1.x, 0u, 77695u, global1.x)), ~(~vec4<u32>(1u, global1.x, global1.x, 30311u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(607f, _wgslsmith_f_op_f32(815f + -1022f), global3[_wgslsmith_index_u32(1u, 14u)] > 4294967295u)))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: bool) -> Struct_2 {
    var var_0 = all(!select(select(select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(arg_1.a.x, true, true), arg_3), select(vec3<bool>(arg_1.d, false, arg_3), vec3<bool>(arg_1.a.x, arg_0.a, arg_3), true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, arg_1.d), vec3<bool>(true, arg_0.a, arg_3)), !vec3<bool>(arg_0.a, arg_3, false)));
    var var_1 = ~countOneBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(42591u, global1.x, 1u, 19382u) | vec4<u32>(22188u, arg_1.c.x, global1.x, 1u), firstLeadingBit(vec4<u32>(arg_1.c.x, arg_2.x, global1.x, arg_2.x)), arg_1.a.x), ~(vec4<u32>(global1.x, arg_1.c.x, global3[_wgslsmith_index_u32(arg_1.b.a, 14u)], arg_2.x) << (vec4<u32>(1u, arg_2.x, arg_1.b.a, 106523u) % vec4<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-620f)), _wgslsmith_f_op_f32(f32(-1f) * -1133f), 1051f)))));
    var_1 = arg_2.x;
    var var_3 = arg_1.b;
    return global0[_wgslsmith_index_u32(var_3.a, 16u)];
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-156f, 558f, arg_2.a))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.a, arg_2.a, -516f), vec3<f32>(184f, arg_2.a, arg_2.a))))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(2210f, 1210f)), _wgslsmith_div_f32(-1897f, arg_2.a), arg_2.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, arg_2.a, -1112f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_2.a)), arg_2.a)), arg_2.a)))));
    global0 = array<Struct_2, 16>();
    global1 = vec4<u32>(~(~4294967295u), 19338u, countOneBits(21501u), global1.x);
    var var_1 = arg_0.d;
    global0 = array<Struct_2, 16>();
    return arg_2.b;
}

fn func_1() -> vec4<bool> {
    let var_0 = func_5(func_4(func_2(), Struct_2(!global4[_wgslsmith_index_u32(~35329u, 8u)], Struct_1(firstLeadingBit(63715u)), ~(~global1.xz), any(global4[_wgslsmith_index_u32(firstTrailingBit(33480u), 8u)])), ~(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, 30019u, 8897u), global1.wxw) | global1.yxx), true), u_input.a.x, Struct_4(-850f, Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(20309u, 1u), ~91070u))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1156f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1220f, 359f) + -629f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-259f, 264f))))))), 304f);
    var var_2 = 0u;
    var var_3 = ~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 79874u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(6771u, global3[_wgslsmith_index_u32(var_0.a, 14u)], 1u), countOneBits(global1.xwx), ~global1.ywz), _wgslsmith_clamp_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(0u, 14u)], var_0.a, 6807u) & global1.yxx, ~global1.wxz, global1.ywy)));
    var var_4 = var_1.x;
    return vec4<bool>(!(!func_4(Struct_5(false), global0[_wgslsmith_index_u32(abs(29129u), 16u)], ~global1.zzz, true).d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2531f)), 621f)) == _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1009f))))), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-625f))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(723f, var_1.x) * 1544f)) || true, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1154f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-431f)) * -1268f)));
    let var_1 = 757f == _wgslsmith_f_op_f32(floor(-1000f));
    let var_2 = max(vec3<u32>(global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(~global1.wzz, ~vec3<u32>(global1.x, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 14u)], 14u)], 14u)]))), 14u)], ~global3[_wgslsmith_index_u32(~(~1u), 14u)], ~(global1.x | global3[_wgslsmith_index_u32(firstTrailingBit(1u), 14u)])), global1.xxz);
    let var_3 = Struct_3(select(!select(vec4<bool>(var_1, var_1, var_1, var_1), !vec4<bool>(var_1, var_1, var_1, var_1), true), func_1(), true));
    global2 = -54931i;
    global4 = array<vec2<bool>, 8>();
    global0 = array<Struct_2, 16>();
    let var_4 = select(func_1(), !(!func_1()), !(!(!(!vec4<bool>(true, false, true, var_1)))));
    var var_5 = !func_1().wx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1537f))))), _wgslsmith_f_op_f32(f32(-1f) * -247f)), _wgslsmith_f_op_f32(select(-222f, _wgslsmith_f_op_f32(ceil(-1222f)), var_4.x)), ~vec3<i32>(42465i, u_input.a.x, i32(-1i) * -4860i) >> (reverseBits(var_2) % vec3<u32>(32u)));
}

