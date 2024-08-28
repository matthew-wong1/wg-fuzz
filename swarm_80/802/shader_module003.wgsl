struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: bool,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32>;

var<private> global2: bool = false;

var<private> global3: array<vec3<u32>, 4>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global0 = arg_0;
    global2 = true;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, global0.d, arg_0.d)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, -627f, global1.x) + vec3<f32>(global1.x, 701f, arg_0.d)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.d, 763f, 1000f))), true))));
    global1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1609f, global1.x, arg_0.d) + vec3<f32>(global1.x, arg_0.d, arg_0.d)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))))))));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-843f, 215f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1224f)) + -237f)));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.d, global1.x, -154f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.d)), -1000f, arg_0.d))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(func_3(arg_0));
    return Struct_1(~global0.e.zz, _wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(8222u), _wgslsmith_clamp_u32(17875u, arg_0.b.x, u_input.a.x) ^ 46679u, 411u, 29351u), u_input.a), all(vec3<bool>(true, any(!vec4<bool>(arg_0.c, true, true, global0.c)), all(!vec3<bool>(arg_0.c, true, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-812f, arg_0.d)))))), arg_0.e);
}

fn func_1(arg_0: Struct_1) -> u32 {
    global3 = array<vec3<u32>, 4>();
    var var_0 = arg_0;
    var var_1 = !all(!vec2<bool>(!global0.c, true));
    let var_2 = func_2(Struct_1(global0.a, _wgslsmith_mult_vec4_u32(min(min(vec4<u32>(arg_0.b.x, arg_0.b.x, 4294967295u, 0u), vec4<u32>(0u, 1u, var_0.b.x, var_0.b.x)), var_0.b), countOneBits(vec4<u32>(global0.b.x, 4294967295u, 36424u, u_input.b)) << (~vec4<u32>(var_0.b.x, u_input.c.x, 1u, arg_0.b.x) % vec4<u32>(32u))), ~var_0.a.x <= -1928i, -499f, global0.e));
    let var_3 = func_2(arg_0);
    return ~8833u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~min(20951u, 45385u), func_1(Struct_1(global0.e.zy, global0.b, !global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-406f + 737f) * _wgslsmith_div_f32(global0.d, -1563f)), _wgslsmith_sub_vec3_i32(select(global0.e, vec3<i32>(23891i, global0.e.x, global0.a.x), true), abs(global0.e)))), _wgslsmith_sub_u32(~(~55938u), 31129u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(288f, global1.x, -976f, 870f) * vec4<f32>(-159f, -642f, global1.x, -189f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1296f, global0.d, global0.d) - vec4<f32>(global0.d, global1.x, 1082f, 402f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.d, global0.d, 959f, global1.x), vec4<f32>(-955f, 1353f, -562f, global0.d)))))));
}

