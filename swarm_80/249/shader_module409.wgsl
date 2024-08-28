struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_3,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false);

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_5, 9>;

var<private> global3: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-646f, -763f), vec2<f32>(-195f, 1360f), vec2<f32>(-246f, -424f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec2<i32> {
    var var_0 = global1.x;
    let var_1 = abs(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)));
    var var_2 = -u_input.b;
    let var_3 = var_1.x;
    global3 = array<vec2<f32>, 3>();
    return u_input.b.zw;
}

fn func_3(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = 1i;
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-939f, -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(557f)), -308f, true))))), Struct_1(vec3<u32>(1u, ~4294967295u, 1u) ^ vec3<u32>(max(6360u, 57081u), ~0u, firstTrailingBit(6408u))), select(vec2<bool>(false, any(vec2<bool>(global0.a, true))), vec2<bool>(true, true), !(global0.a != global0.a)));
    var var_2 = global2[_wgslsmith_index_u32(var_1.b.a.x, 9u)];
    var var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_2.a.x, var_1.a.x, -818f) - var_2.a))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a * var_2.a), _wgslsmith_f_op_vec4_f32(select(var_2.a, vec4<f32>(1280f, var_2.c.x, var_1.a.x, var_2.c.x), var_2.b)))))), vec4<bool>(!var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1606f)) * var_2.c.x) >= var_1.a.x, !all(var_1.c), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, var_1.a.x, var_1.a.x)))), Struct_3(any(var_2.b.zyy)), Struct_4(any(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, global0.a, true, var_2.e.a), var_2.b)), vec4<u32>(8364u, (var_1.b.a.x | 65939u) | (4294967295u >> (0u % 32u)), var_1.b.a.x, countOneBits(0u)), var_1.b.a.x));
    var var_4 = -980f;
    return Struct_3(!any(!vec4<bool>(var_2.e.a, false, false, true)));
}

fn func_1(arg_0: f32) -> Struct_3 {
    global0 = func_3(func_2());
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_f32(f32(-1f) * -244f)))));
    global3 = array<vec2<f32>, 3>();
    var var_2 = Struct_3(true);
    return func_3(-u_input.b.yw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1489f)), _wgslsmith_f_op_f32(min(-630f, -928f))), _wgslsmith_f_op_f32(-1025f - _wgslsmith_f_op_f32(trunc(-1466f))), _wgslsmith_f_op_f32(-1f), -1009f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1468f, 1000f, 135f, 126f))))));
    global2 = array<Struct_5, 9>();
    var var_1 = firstLeadingBit(u_input.b >> (~(~(~vec4<u32>(41423u, 1u, 0u, 44678u))) % vec4<u32>(32u)));
    global0 = func_1(_wgslsmith_f_op_f32(floor(var_0.x)));
    var var_2 = firstLeadingBit(-firstTrailingBit(u_input.a.x));
    var var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0))), vec4<bool>(true, true, true, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.yxx, var_0.xxw) + _wgslsmith_f_op_vec3_f32(max(var_0.yzy, vec3<f32>(var_0.x, -742f, var_0.x)))) - _wgslsmith_f_op_vec3_f32(var_0.yzw - var_0.zyx)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-334f, _wgslsmith_f_op_f32(min(346f, -255f)), 162f) - var_0.yxy)), Struct_3(all(vec2<bool>(true, global0.a))), Struct_4(!any(vec3<bool>(false, false, true)), _wgslsmith_clamp_vec4_u32(reverseBits(abs(vec4<u32>(14418u, 1u, 23268u, 0u))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(64059u, 40310u, 22072u, 57678u))), vec4<u32>(1u, 1u, 1u, 1u)), ~(~max(0u, 15618u))));
    global0 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-849f, var_3.a.x, var_3.c.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)), true)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_3.a))))))), select(vec2<u32>(var_3.e.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.e.b.x, 4294967295u, var_3.e.c, 4294967295u), vec4<u32>(27174u, 0u, var_3.e.b.x, 34018u))), _wgslsmith_sub_vec2_u32(vec2<u32>(max(66569u, 27545u), var_3.e.c), ~var_3.e.b.zy), vec2<bool>(true, true)), firstTrailingBit(u_input.a.x));
}

