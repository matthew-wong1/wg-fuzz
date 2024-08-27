struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: Struct_1 = Struct_1(32938i, 19503u, vec4<u32>(34548u, 0u, 23096u, 44653u), -13253i);

var<private> global2: array<bool, 14>;

var<private> global3: i32 = -18930i;

var<private> global4: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(Struct_2(-1010f, Struct_1(51804i, 4294967295u, vec4<u32>(1u, 20094u, 18757u, 14u), -43671i)), vec3<bool>(false, false, true), 4294967295u, vec2<u32>(23440u, 52455u), false), Struct_3(Struct_2(734f, Struct_1(1482i, 1u, vec4<u32>(0u, 63157u, 71235u, 4294967295u), -14351i)), vec3<bool>(false, false, false), 4294967295u, vec2<u32>(4294967295u, 4294967295u), true), Struct_3(Struct_2(-1817f, Struct_1(-14306i, 0u, vec4<u32>(4294967295u, 1u, 22753u, 98084u), 40191i)), vec3<bool>(true, true, false), 22776u, vec2<u32>(1u, 4294967295u), false), Struct_3(Struct_2(-516f, Struct_1(1i, 1u, vec4<u32>(22567u, 3757u, 4294967295u, 10866u), 2147483647i)), vec3<bool>(false, false, false), 1u, vec2<u32>(0u, 1u), true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = 1u;
    global0 = array<Struct_1, 25>();
    global3 = countOneBits(-18062i) & (-1i ^ global1.a);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1081f * -395f)), -1262f)))));
    return global0[_wgslsmith_index_u32(~firstLeadingBit(~arg_0.x), 25u)];
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: vec3<i32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-819f, arg_2.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1973f, arg_2.a), vec2<f32>(arg_2.a, 1278f), vec2<bool>(global2[_wgslsmith_index_u32(arg_1, 14u)], false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_2.a))))), global2[_wgslsmith_index_u32(~(~(~arg_1)), 14u)])) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_2.a)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_2.a)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.a, 1323f), vec2<f32>(arg_2.a, 114f)))))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    let var_0 = arg_0.c.xy;
    let var_1 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.x, -1131f))), func_2(vec3<u32>(var_0.x, global1.b, var_0.x), vec4<bool>(true, global2[_wgslsmith_index_u32(50670u, 14u)], global2[_wgslsmith_index_u32(0u, 14u)], false))), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.c.xxx, arg_0.c.www), 14u)], global2[_wgslsmith_index_u32(~arg_0.c.x, 14u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(82018u, arg_0.b), 14u)]), abs(18632u), _wgslsmith_div_vec2_u32(vec2<u32>(77279u, arg_0.c.x), ~firstTrailingBit(var_0)), !any(!vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0.c.x, 14u)], false, true))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_1 - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_1 * vec2<f32>(arg_1.x, 558f))))), arg_1)));
    var var_2 = -51245i;
    var var_3 = Struct_4(global4[_wgslsmith_index_u32(~arg_0.b, 4u)], var_1.b);
    global3 = var_1.a.a.b.a & u_input.a;
    return global1.d;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: bool) -> Struct_4 {
    global4 = array<Struct_3, 4>();
    global1 = arg_2.a.a.b;
    let var_0 = arg_1;
    global4 = array<Struct_3, 4>();
    let var_1 = (true || all(arg_2.a.b)) || true;
    return Struct_4(arg_2.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-415f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1340f + arg_2.a.a.a) * var_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-778f)))))));
}

fn func_1() -> vec2<f32> {
    global1 = global0[_wgslsmith_index_u32(2217u, 25u)];
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-578f + _wgslsmith_f_op_f32(select(-714f, 755f, false))))));
    let var_1 = func_5(vec2<i32>(func_4(func_2(abs(global1.c.zyx), vec4<bool>(global2[_wgslsmith_index_u32(global1.c.x, 14u)], global2[_wgslsmith_index_u32(global1.c.x, 14u)], true, global2[_wgslsmith_index_u32(global1.c.x, 14u)])), _wgslsmith_f_op_vec2_f32(func_3(-69601i, ~4294967295u, Struct_2(-414f, global0[_wgslsmith_index_u32(65820u, 25u)]), vec3<i32>(u_input.a, 4642i, global1.d) & vec3<i32>(14567i, -41793i, global1.d)))), u_input.b & 2147483647i), Struct_2(_wgslsmith_f_op_f32(-1f), func_2(global1.c.wxx & ~vec3<u32>(1u, 0u, 67712u), vec4<bool>(global2[_wgslsmith_index_u32(~0u, 14u)], u_input.a <= u_input.a, !global2[_wgslsmith_index_u32(global1.c.x, 14u)], global2[_wgslsmith_index_u32(~global1.c.x, 14u)]))), Struct_4(global4[_wgslsmith_index_u32(~abs(global1.b), 4u)], vec2<f32>(1f, 1f)), (global1.d >= _wgslsmith_clamp_i32(2147483647i, max(global1.a, u_input.a), ~1i)) && any(vec4<bool>(true, global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 14u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.b, global1.c.x), 14u)], global2[_wgslsmith_index_u32(global1.b, 14u)] & true)));
    return vec2<f32>(-1300f, 363f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global4[_wgslsmith_index_u32(~0u, 4u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) + vec2<f32>(3117f, -1485f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 728f))))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -272f);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.zxx, max(~(global1.c.yw >> (vec2<u32>(45621u, var_0.a.a.b.b) % vec2<u32>(32u))), min(~global1.c.zy, ~global1.c.xy)));
}

