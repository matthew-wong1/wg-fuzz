struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: Struct_2;

var<private> global2: vec3<f32>;

var<private> global3: Struct_3;

var<private> global4: Struct_2 = Struct_2(Struct_1(34409u, vec3<i32>(2139i, 0i, 1i)), vec4<u32>(1u, 4294967295u, 4294967295u, 26356u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_1, 1>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(110f * _wgslsmith_f_op_f32(max(global2.x, arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + -1249f))), ~select(vec4<u32>(_wgslsmith_div_u32(global1.b.x, 44244u), _wgslsmith_dot_vec2_u32(global1.b.xx, arg_0.b.xy), ~arg_0.e.x, ~114408u), _wgslsmith_add_vec4_u32(~vec4<u32>(global4.b.x, 4294967295u, 0u, arg_3.a.a), firstTrailingBit(global3.e)), arg_1), select(select(vec3<bool>(true, arg_1, false), select(!vec3<bool>(arg_1, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, arg_1, arg_1), arg_1), !vec3<bool>(arg_1, arg_1, arg_1)), !vec3<bool>(arg_1, true, arg_1)), vec3<bool>(true, false && arg_1, true && (arg_1 || arg_1)), all(vec2<bool>(true, true))), arg_0.e.x);
    global1 = arg_3;
    global3 = arg_0;
    let var_1 = arg_0;
    return abs(85358u);
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    global3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a - -1000f)), -309f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * arg_0.a)))), vec3<u32>(34816u, _wgslsmith_div_u32(1u, ~global1.a.a), global1.b.x & global1.b.x) << (_wgslsmith_div_vec3_u32(vec3<u32>(func_3(Struct_3(global3.a, global1.b.wwy, Struct_1(global3.c.a, vec3<i32>(global1.a.b.x, global4.a.b.x, global3.d.b.x)), global3.d, global3.e), arg_0.c.x, 1i, Struct_2(Struct_1(global3.b.x, vec3<i32>(-1i, -20758i, 1i)), arg_0.b)), ~global3.c.a, _wgslsmith_dot_vec2_u32(global1.b.yz, arg_0.b.xw)), ~select(vec3<u32>(arg_0.d, global4.a.a, 1u), vec3<u32>(0u, 4294967295u, global3.e.x), arg_0.c.x)) % vec3<u32>(32u)), global3.c, global3.c, ~(~_wgslsmith_div_vec4_u32(~global1.b, global1.b)));
    global0 = array<Struct_1, 1>();
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(117f, -451f, arg_0.a)))))));
    global4 = Struct_2(Struct_1(63237u, firstLeadingBit(global3.c.b)), global4.b);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 186f, -2197f)))) - vec3<f32>(global3.a, _wgslsmith_f_op_f32(select(-881f, _wgslsmith_f_op_f32(trunc(global2.x)), arg_0.c.x || true)), _wgslsmith_div_f32(-1855f, _wgslsmith_f_op_f32(round(1000f))))));
    return arg_0;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_4) -> vec3<i32> {
    global4 = Struct_2(Struct_1(arg_2.b.x, -_wgslsmith_sub_vec3_i32(arg_1.b ^ global3.c.b, arg_0 | vec3<i32>(0i, global4.a.b.x, 4902i))), reverseBits(_wgslsmith_mod_vec4_u32(global4.b, global3.e)));
    let var_0 = Struct_2(Struct_1(33676u, ~max(global1.a.b, firstLeadingBit(vec3<i32>(1i, -2147483647i, global3.c.b.x)))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.d, _wgslsmith_dot_vec2_u32(vec2<u32>(45803u, arg_3.d), global4.b.xw), ~arg_3.d, 0u), ~(~global4.b)));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(var_0.b.x, 1u)], var_0.b);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global3.a, _wgslsmith_f_op_f32(sign(arg_2.a)), all(arg_2.c))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(505f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x))))), ~(~max(min(global1.b.zzw, global1.b.yxy), global3.b << (global4.b.zxw % vec3<u32>(32u)))), global4.a, Struct_1(71683u, global3.c.b), select(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 6880u, global4.b.x, arg_2.b.x), ~arg_2.b), vec4<u32>(firstTrailingBit(33523u), _wgslsmith_clamp_u32(28371u, 64318u, 39745u), _wgslsmith_div_u32(1u, var_0.a.a), abs(4294967295u)), !vec4<bool>(true, false, false, arg_2.c.x)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 24428u, var_0.b.x, 1u) | vec4<u32>(global3.d.a, arg_2.d, 13809u, global4.b.x), ~global1.b, _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a, 68335u, arg_1.a, 1u), var_0.b, vec4<u32>(1u, arg_3.d, 1u, arg_1.a)), vec4<u32>(arg_1.a, 85828u, var_1.a.a, 124538u) & global3.e)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a)))) + _wgslsmith_f_op_f32(trunc(func_2(arg_3).a))));
    return ~_wgslsmith_sub_vec3_i32(var_2.d.b, var_0.a.b);
}

fn func_1(arg_0: u32) -> Struct_4 {
    let var_0 = -_wgslsmith_mod_vec3_i32(-func_4(vec3<i32>(u_input.a, global3.d.b.x, global4.a.b.x) << (global1.b.wzw % vec3<u32>(32u)), global1.a, func_2(Struct_4(926f, global1.b, vec3<bool>(true, true, true), global4.b.x)), Struct_4(global2.x, global4.b, vec3<bool>(true, true, true), arg_0)), vec3<i32>(-global4.a.b.x, (-8148i & global3.d.b.x) | 0i, -select(u_input.a, 35361i, false)));
    global3 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-237f + -727f))), func_2(Struct_4(_wgslsmith_f_op_f32(-global3.a), global1.b, vec3<bool>(all(vec2<bool>(true, true)), false, true), 1u)).b.xzx, global3.c, global4.a, vec4<u32>(firstLeadingBit(~(~arg_0)), global4.b.x, ~global3.c.a, 0u));
    global1 = Struct_2(global4.a, global4.b);
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 133f, -475f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global3.a, global2.x), vec3<f32>(391f, global3.a, -1093f), true)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1004f, global2.x, -886f) - vec3<f32>(1000f, global2.x, global3.a)))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(1567f * 1244f), _wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(-global2.x))))));
    let var_1 = global4.b.wxx << (vec3<u32>(global3.b.x & ~abs(global4.b.x), global4.a.a, arg_0) % vec3<u32>(32u));
    return func_2(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(global3.a * 152f))), firstLeadingBit(_wgslsmith_div_vec4_u32(global1.b, vec4<u32>(global1.b.x, 0u, 1u, 22281u) | global1.b)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(global2.x >= global2.x, true, all(vec4<bool>(true, false, false, true))), true), 1u & global4.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    let var_0 = func_1(30307u);
    var var_1 = Struct_1(_wgslsmith_sub_u32(38085u & _wgslsmith_mult_u32(global4.b.x, 1u), 4294967295u), global3.c.b << (vec3<u32>(~max(19255u, global3.b.x), global3.e.x, _wgslsmith_mod_u32(abs(var_0.d), 1u)) % vec3<u32>(32u)));
    var var_2 = (countOneBits(firstTrailingBit(vec4<u32>(var_1.a, 59552u, var_1.a, 30792u))) ^ ~(~_wgslsmith_div_vec4_u32(var_0.b, vec4<u32>(global4.b.x, 21776u, 1u, var_0.b.x)))) ^ vec4<u32>(_wgslsmith_sub_u32(~var_1.a, firstTrailingBit(15219u)) | var_1.a, ~0u, var_0.d, _wgslsmith_mod_u32(global3.d.a, _wgslsmith_div_u32(var_0.d, 9794u)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, 33618u, vec2<u32>(4294967295u, 4294967295u), ~reverseBits(~vec3<u32>(global3.b.x, global1.a.a, global4.a.a)));
}

