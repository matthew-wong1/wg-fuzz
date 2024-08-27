struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-293f, 714f), vec2<f32>(-251f, -1234f), vec2<f32>(386f, -1000f), vec2<f32>(-825f, 1206f), vec2<f32>(-431f, -1133f), vec2<f32>(-1009f, -751f), vec2<f32>(413f, 2032f), vec2<f32>(519f, 497f), vec2<f32>(1000f, -127f), vec2<f32>(383f, -816f), vec2<f32>(214f, -467f), vec2<f32>(-366f, 1000f), vec2<f32>(-1326f, 594f));

var<private> global1: array<Struct_2, 31>;

var<private> global2: vec3<f32> = vec3<f32>(-255f, 1242f, -335f);

var<private> global3: array<Struct_1, 13>;

var<private> global4: Struct_2 = Struct_2(-1000f, 0i, Struct_1(i32(-2147483648), true, vec3<bool>(true, false, false), -1000f, vec3<f32>(672f, 546f, 766f)), Struct_1(-1i, true, vec3<bool>(true, true, true), 825f, vec3<f32>(644f, -1016f, -635f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global1 = array<Struct_2, 31>();
    var var_0 = Struct_3(Struct_1(-2147483647i, false, select(global4.c.c, !(!vec3<bool>(true, global4.d.b, global4.d.c.x)), !vec3<bool>(false, true, global4.d.b)), global4.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(311f, global4.c.e.x, 286f), vec3<f32>(608f, global4.a, global4.d.d)))));
    var_0 = Struct_3(Struct_1((firstLeadingBit(var_0.a.a) ^ max(global4.d.a, 4298i)) & (~var_0.a.a | ~global4.c.a), global4.c.c.x, vec3<bool>(global2.x != global4.d.e.x, all(vec2<bool>(global4.d.c.x, global4.c.b)), true), -1181f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global4.c.e)))));
    global0 = array<vec2<f32>, 13>();
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.d.e));
    return global1[_wgslsmith_index_u32(83168u, 31u)];
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = ~u_input.b;
    global3 = array<Struct_1, 13>();
    global2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(global4.d.e, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(global4.d.e, arg_0.c.e))))))));
    let var_1 = global1[_wgslsmith_index_u32(var_0.x, 31u)];
    let var_2 = -237f;
    return arg_0;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(abs(global2.x));
    var var_1 = global1[_wgslsmith_index_u32(u_input.c ^ u_input.d, 31u)];
    let var_2 = func_3(func_2(~vec2<u32>(u_input.b.x, firstLeadingBit(5524u))), vec3<u32>(~u_input.b.x, u_input.c, 51419u));
    var_0 = _wgslsmith_f_op_f32(ceil(var_1.d.e.x));
    var var_3 = any(vec3<bool>(!(!(!var_2.c.c.x)), true, false));
    return Struct_3(var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 13>();
    global0 = array<vec2<f32>, 13>();
    global3 = array<Struct_1, 13>();
    var var_0 = func_1();
    var var_1 = _wgslsmith_sub_u32(~_wgslsmith_div_u32(u_input.a.x, u_input.d), select(~u_input.b.x, u_input.c, true));
    global3 = array<Struct_1, 13>();
    global2 = vec3<f32>(func_3(Struct_2(var_0.a.d, var_0.a.a, var_0.a, global4.d), vec3<u32>(firstLeadingBit(80319u), reverseBits(~u_input.a.x), u_input.c)).a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.a, func_1().a.d) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.d.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a - 1000f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.e.x, _wgslsmith_f_op_f32(global2.x * global4.a))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-global4.a), -(i32(-1i) * -2147483647i), global4.c, func_3(func_2(firstTrailingBit(vec2<u32>(55225u, 1u)) << (firstLeadingBit(u_input.b.zx) % vec2<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.d, u_input.b.x), abs(vec3<u32>(4294967295u, 4294967295u, u_input.b.x))) << (max(vec3<u32>(1u, u_input.b.x, u_input.c), vec3<u32>(u_input.b.x, 21065u, u_input.a.x) | u_input.b.zzw) % vec3<u32>(32u))).c);
    let var_3 = -_wgslsmith_dot_vec2_i32(select(_wgslsmith_sub_vec2_i32(vec2<i32>(18564i, var_2.c.a), vec2<i32>(var_0.a.a, var_2.c.a)), -vec2<i32>(0i, var_2.b), !var_0.a.c.zy), ~vec2<i32>(-23890i, -2147483647i)) | var_2.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(17368i, global4.b);
}

