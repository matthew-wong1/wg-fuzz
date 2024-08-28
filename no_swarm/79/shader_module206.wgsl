struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-10288i), Struct_1(2147483647i), Struct_1(0i), Struct_1(24327i));

var<private> global1: array<bool, 21>;

var<private> global2: f32 = -750f;

var<private> global3: vec2<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = firstLeadingBit(u_input.b.x);
    var var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1600f), 1044f, -443f))));
    global1 = array<bool, 21>();
    var var_3 = -u_input.d.xy;
    return ~49179u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(round(arg_3.a)));
    let var_1 = vec3<bool>(false, !(!(!global1[_wgslsmith_index_u32(arg_2.x, 21u)])), true);
    var var_2 = arg_0;
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1238f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.a)))))))));
    global0 = array<Struct_1, 4>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -299f))) - _wgslsmith_f_op_f32(-1045f + 142f));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: f32) -> i32 {
    let var_0 = ~54074u;
    global1 = array<bool, 21>();
    var var_1 = Struct_2(arg_0);
    let var_2 = Struct_2(651f);
    let var_3 = Struct_1(-2147483647i);
    return u_input.d.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: u32) -> Struct_2 {
    let var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1147f)) * 1000f), _wgslsmith_f_op_f32(min(-1194f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-978f, 762f)) * _wgslsmith_f_op_f32(1414f - 718f))))), u_input.d.x, abs(~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.c, 4u)], Struct_2(915f), ~vec4<u32>(u_input.a, 21450u, arg_1.x, global3.x), Struct_2(331f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-338f - -1448f)))));
    return Struct_2(_wgslsmith_f_op_f32(246f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1024f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~4294967295u, 4u)];
    global1 = array<bool, 21>();
    var var_1 = func_2(~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(global3.x, 0u, u_input.a), min(vec3<u32>(1u, 87958u, global3.x), vec3<u32>(4294967295u, 1u, 0u)))), vec2<u32>(reverseBits(max(firstTrailingBit(global3.x), _wgslsmith_div_u32(4294967295u, global3.x))), ~(~func_1(vec3<bool>(global1[_wgslsmith_index_u32(global3.x, 21u)], true, global1[_wgslsmith_index_u32(global3.x, 21u)]), Struct_2(-1595f), Struct_2(301f)))), ~vec2<u32>(~9274u, ~u_input.a | 68508u), 59417u);
    var var_2 = global0[_wgslsmith_index_u32(global3.x, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.d), ~vec3<u32>(50485u, ~global3.x << (~4294967295u % 32u), ~4294967295u));
}

