struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

var<private> global1: Struct_2;

var<private> global2: vec3<u32> = vec3<u32>(1u, 0u, 5302u);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, false, false, false), -1730i, 811f));

var<private> global4: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    let var_0 = vec4<bool>(all(vec2<bool>(any(!arg_1.a.zxx), true)), arg_1.a.x, true | all(vec3<bool>(false != arg_2.a.a.x, true | arg_2.a.a.x, true)), false);
    var var_1 = Struct_2(arg_1);
    var_1 = arg_2;
    let var_2 = ~abs(u_input.a);
    let var_3 = global0[_wgslsmith_index_u32(70379u, 13u)];
    return -(~(~(~0i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(global3.a.a, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(169f, 948f, global1.a.a.x)) - _wgslsmith_div_f32(global3.a.c, -586f)))));
    global4 = -func_3(Struct_2(var_0.a), Struct_1(select(select(vec4<bool>(var_0.a.a.x, false, true, global3.a.a.x), var_0.a.a, global3.a.a), select(global1.a.a, global1.a.a, vec4<bool>(false, var_0.a.a.x, global1.a.a.x, true)), !global3.a.a), _wgslsmith_add_i32(global1.a.b, global3.a.b) << (_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 20734u, 0u), vec4<u32>(45529u, u_input.e.x, u_input.e.x, u_input.e.x)) % 32u), _wgslsmith_f_op_f32(-var_0.a.c)), Struct_2(var_0.a));
    var var_1 = Struct_2(var_0.a);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.c))) + -1731f) * -1264f);
    var var_3 = global3.a.a.x;
    return global3.a.a;
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    global3 = Struct_2(Struct_1(!func_2(vec3<i32>(global3.a.b, -18936i, 20474i), -902f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(509f, global3.a.c, arg_0.c))), select(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.b, -4875i), vec2<i32>(global3.a.b, arg_0.b)), any(global3.a.a.zz)) & (arg_0.b | u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a.c))))));
    var var_0 = true;
    global4 = 22332i;
    global3 = Struct_2(arg_0);
    let var_1 = -_wgslsmith_sub_i32(~(-37439i >> ((4294967295u >> (u_input.e.x % 32u)) % 32u)), _wgslsmith_dot_vec2_i32(abs(u_input.b.yx | vec2<i32>(-29895i, 1i)), vec2<i32>(-31834i, global1.a.b) | u_input.b.yy));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(global3.a);
    global3 = Struct_2(Struct_1(select(vec4<bool>(global3.a.a.x || true, global3.a.a.x, false, true && global1.a.a.x), func_1(global3.a), global1.a.a), (u_input.a.x & (i32(-1i) * -1i)) >> (0u % 32u), _wgslsmith_f_op_f32(global3.a.c - _wgslsmith_f_op_f32(global3.a.c * _wgslsmith_f_op_f32(abs(339f))))));
    global1 = Struct_2(Struct_1(global1.a.a, func_3(Struct_2(Struct_1(global1.a.a, u_input.d, global3.a.c)), Struct_1(global3.a.a, -2147483647i, -583f), Struct_2(global3.a)), -1020f));
    global1 = Struct_2(Struct_1(global3.a.a, 0i, _wgslsmith_f_op_f32(-274f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.a.c)) - _wgslsmith_f_op_f32(select(global3.a.c, global1.a.c, false))))));
    global2 = vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(u_input.e.xy), (vec2<u32>(u_input.e.x, global2.x) ^ global2.zy) << (~u_input.e.zz % vec2<u32>(32u))), ~max(global2.xx, ~u_input.e.zy)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.x, u_input.e.x, 4294967295u), ~(~vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, u_input.e.x))), 4294967295u);
    global3 = Struct_2(Struct_1(vec4<bool>(global1.a.a.x, select(false, true, true), true, true), global1.a.b, 1000f));
    var var_0 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(78583u, max(0u, 1u), global2.x ^ global2.x, ~18029u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, 29893u, u_input.e.x, global2.x) & vec4<u32>(4294967295u, u_input.e.x, global2.x, u_input.e.x), countOneBits(vec4<u32>(0u, 29042u, global2.x, global2.x)))), 1u);
    global0 = array<Struct_3, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(459f, _wgslsmith_f_op_f32(f32(-1f) * -801f))))), ~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-8848i, 24868i, global3.a.b, -2147483647i)), -19126i | global3.a.b, -12861i, ~(-52654i)), (vec4<i32>(global1.a.b, 0i, 2147483647i, 24252i) << (vec4<u32>(global2.x, 4294967295u, 0u, 1u) % vec4<u32>(32u))) | (vec4<i32>(global1.a.b, 7307i, 2533i, 0i) & u_input.a)), 604u, global1.a.b, global3.a.c);
}

