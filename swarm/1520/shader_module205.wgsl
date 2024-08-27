struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(4294967295u, true), Struct_1(1u, false), vec4<i32>(2147483647i, 19536i, 23053i, -33922i), vec3<i32>(5306i, 1i, 2147483647i), vec3<bool>(false, false, false));

var<private> global1: array<Struct_2, 15>;

var<private> global2: array<Struct_2, 32>;

var<private> global3: Struct_2;

var<private> global4: vec4<f32> = vec4<f32>(3031f, -2474f, -757f, -1216f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    global1 = array<Struct_2, 15>();
    let var_0 = Struct_1(global3.b.a, true);
    let var_1 = Struct_3(global3.e.x, global4.ww, -global0.d.x, global1[_wgslsmith_index_u32(9982u, 15u)], Struct_2(Struct_1(global3.a.a >> (0u % 32u), 2157f >= _wgslsmith_f_op_f32(global4.x + global4.x)), Struct_1(var_0.a, true != global0.a.b), global3.c, global3.d, global0.e));
    var var_2 = !(!(!(!(!global0.e))));
    let var_3 = any(!(!(!vec3<bool>(global0.b.b, false, true)))) | all(global3.e.xx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1155f));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> vec3<u32> {
    global1 = array<Struct_2, 15>();
    var var_0 = arg_0.d;
    global4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -1577f, 455f, global4.x)) * vec4<f32>(arg_0.b.x, 350f, _wgslsmith_f_op_f32(-global4.x), 1178f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-114f * arg_0.b.x), _wgslsmith_f_op_f32(floor(arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -618f))))));
    var var_1 = Struct_3(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1031f)), -700f) * vec2<f32>(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(910f - global4.x)), _wgslsmith_f_op_f32(round(-1000f)))), arg_2.c.x, Struct_2(global0.b, Struct_1(1u, true), vec4<i32>(-1i) * -reverseBits(arg_2.c), ~vec3<i32>(i32(-1i) * -28919i, -arg_2.d.x, firstLeadingBit(global0.c.x)), arg_2.e), global2[_wgslsmith_index_u32(global3.b.a, 32u)]);
    global3 = var_1.d;
    return u_input.c.yyw;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: vec4<bool>) -> u32 {
    global1 = array<Struct_2, 15>();
    var var_0 = arg_2;
    global3 = global1[_wgslsmith_index_u32(countOneBits(u_input.c.x | _wgslsmith_dot_vec3_u32(select(vec3<u32>(global0.b.a, 1u, u_input.c.x), u_input.c.xzy | u_input.c.yyw, vec3<bool>(global3.b.b, arg_0.x, arg_2.x)), func_2(Struct_3(true, global4.xx, 1i, global2[_wgslsmith_index_u32(15056u, 32u)], Struct_2(Struct_1(0u, false), Struct_1(u_input.c.x, false), vec4<i32>(global0.c.x, global3.c.x, global0.c.x, 1i), vec3<i32>(-25371i, global0.c.x, global3.d.x), var_0.yxw)), global3.a, Struct_2(Struct_1(global0.a.a, arg_0.x), Struct_1(u_input.c.x, arg_2.x), vec4<i32>(arg_1.x, global3.c.x, arg_1.x, arg_1.x), vec3<i32>(0i, global0.c.x, 34948i), vec3<bool>(false, arg_0.x, global0.e.x))))), 15u)];
    let var_1 = _wgslsmith_mult_vec3_u32(u_input.c.zxy, vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, global0.b.a), ~global0.a.a, ~47006u)) | _wgslsmith_add_vec3_u32(vec3<u32>(1u, reverseBits(global3.a.a ^ u_input.c.x), 15368u), vec3<u32>(1484u, _wgslsmith_dot_vec2_u32(vec2<u32>(13617u, global0.b.a), vec2<u32>(76981u, u_input.c.x)) & u_input.c.x, select(_wgslsmith_add_u32(global0.a.a, 99644u), global0.b.a, global4.x <= global4.x)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 15>();
    let var_0 = func_1(global0.e, min(max(vec4<i32>(global3.c.x, global0.c.x, global3.c.x >> (0u % 32u), _wgslsmith_sub_i32(15026i, global3.d.x)), vec4<i32>(abs(u_input.a.x), -8900i, 1i, ~(-194i))), ((global0.c & vec4<i32>(global3.c.x, -2147483647i, -607i, 30294i)) << (u_input.c % vec4<u32>(32u))) | ~(vec4<i32>(u_input.b, 2147483647i, -2147483647i, -1i) << (u_input.c % vec4<u32>(32u)))), !select(vec4<bool>(true, false, select(false, false, true), true), vec4<bool>(global3.e.x && global3.a.b, select(false, true, false), global3.e.x == global3.b.b, select(global0.a.b, global3.b.b, false)), !select(vec4<bool>(false, global0.a.b, global3.b.b, global0.a.b), vec4<bool>(global3.a.b, true, global0.a.b, true), false)));
    let var_1 = ~_wgslsmith_mult_vec3_u32(u_input.c.yyz & select(vec3<u32>(0u, var_0, 16925u), vec3<u32>(global3.b.a, 12753u, 60248u), global3.e), ~_wgslsmith_add_vec3_u32(u_input.c.xzz, u_input.c.zwx)) | _wgslsmith_sub_vec3_u32(u_input.c.wzy, ~u_input.c.xzx);
    let var_2 = vec4<bool>(!((1i << ((global0.a.a | var_1.x) % 32u)) == _wgslsmith_add_i32(47980i, global3.d.x)), !(!(3044f < _wgslsmith_f_op_f32(ceil(global4.x)))), global3.b.b, all(!vec4<bool>(!global3.e.x, false, true, !global0.e.x)));
    let var_3 = !vec4<bool>(false, global3.b.b, (u_input.a.x >= global0.c.x) | !var_2.x, true & global3.e.x);
    var var_4 = global0.c;
    var var_5 = select(!var_3.x, select(var_2.x, var_3.x, var_3.x), true && any(!vec3<bool>(global3.b.b, true, var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i >> (~max(var_0, 1u) % 32u), max(-14778i << (u_input.c.x % 32u), -9432i), u_input.a.x));
}

