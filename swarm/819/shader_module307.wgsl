struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 11074u;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    var var_0 = reverseBits(~(~vec3<u32>(u_input.a.x, min(u_input.a.x, u_input.a.x), u_input.c.x)));
    let var_1 = 887f;
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -515f, var_1, var_1) * vec4<f32>(var_1, 323f, var_1, var_1)), vec4<f32>(-495f, var_1, -564f, var_1))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1403f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1 - 617f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_2.zx))) * _wgslsmith_f_op_vec2_f32(-var_2.wz)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_2.wz, vec2<f32>(var_1, var_1))))))));
    global0 = _wgslsmith_dot_vec2_u32(global1.c.xy >> (vec2<u32>((u_input.a.x >> (global1.a.x % 32u)) | firstLeadingBit(1022u), ~u_input.a.x) % vec2<u32>(32u)), vec2<u32>(u_input.c.x | var_0.x, ~_wgslsmith_dot_vec4_u32(global1.c, global1.c >> (global1.c % vec4<u32>(32u)))));
    return global1.c;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = 53008u;
    var var_1 = vec2<bool>(false, !all(select(vec2<bool>(arg_0.b.x, arg_0.b.x), select(arg_0.b, vec2<bool>(false, true), arg_0.b.x), false)));
    var var_2 = global1.a;
    var var_3 = 1u;
    let var_4 = arg_0;
    return Struct_1(global1.a, firstTrailingBit(-global1.b), ~func_3());
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))), vec2<f32>(2000f, _wgslsmith_f_op_f32(trunc(1506f)))));
    global0 = global1.c.x;
    global2 = array<Struct_2, 13>();
    global1 = func_2(global2[_wgslsmith_index_u32(4294967295u, 13u)]);
    var var_1 = vec2<bool>(!(!(false || any(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-var_0.x) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, 407f, false)), _wgslsmith_f_op_f32(exp2(var_0.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.x)), -781f, any(vec4<bool>(true, false, false, true))))));
    return func_2(global2[_wgslsmith_index_u32(min(1u, ~(~global1.c.x)) ^ 22259u, 13u)]);
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 13>();
    var var_0 = 1i;
    var var_1 = Struct_2(func_4(func_1()), vec2<bool>(u_input.a.x >= 0u, true));
    var var_2 = _wgslsmith_mult_u32(global1.c.x, u_input.a.x);
    var var_3 = func_1();
    var var_4 = vec2<u32>(110622u, _wgslsmith_div_u32(firstTrailingBit(var_3.c.x), ~global1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~global1.b.zz, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -323f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 1f, -1000f, _wgslsmith_div_f32(-768f, 615f))))), u_input.c);
}

