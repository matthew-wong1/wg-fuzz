struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 12>;

var<private> global3: Struct_2 = Struct_2(vec3<i32>(18082i, -1i, -3760i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3) -> f32 {
    return -589f;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(floor(1f));
    let var_1 = vec2<bool>(global1.d.x, true);
    global0 = array<bool, 12>();
    let var_2 = reverseBits(~global1.b.x);
    let var_3 = _wgslsmith_dot_vec2_i32(global3.a.zz << (_wgslsmith_div_vec2_u32(firstTrailingBit(~u_input.a.zz), u_input.a.xx) % vec2<u32>(32u)), vec2<i32>(2147483647i, global1.a));
    return _wgslsmith_f_op_f32(func_3(Struct_3(global0[_wgslsmith_index_u32(global1.b.x, 12u)], Struct_2(firstTrailingBit(vec3<i32>(-6369i, arg_0, u_input.c))), arg_1.xz)));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global3.a.x, vec3<f32>(global1.c, global1.c, global1.c), select(vec4<bool>(global1.d.x, true, true, global1.d.x), vec4<bool>(global1.d.x, true, global1.d.x, false), global1.d))) * _wgslsmith_f_op_f32(-global1.c)))) + _wgslsmith_f_op_f32(-1416f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global1.c)), -579f, false))))));
    let var_1 = 10867i;
    var var_2 = (vec4<i32>(~abs(global1.a), _wgslsmith_dot_vec3_i32(global3.a << (u_input.a.wxw % vec3<u32>(32u)), global3.a), ~(-1i), reverseBits(_wgslsmith_sub_i32(u_input.d, -1i))) & -vec4<i32>(firstTrailingBit(u_input.b), 27424i, firstTrailingBit(arg_0.x), -1i)) >> (vec4<u32>(u_input.a.x | ~u_input.a.x, 1u, min(4294967295u, 79616u), select((u_input.a.x | 4294967295u) & global1.b.x, 4294967295u >> (_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x) % 32u), any(vec3<bool>(true, true, true)))) % vec4<u32>(32u));
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u & abs(select(76225u, 1u, global1.d.x)), global1.b.x), 1u), 12u)];
    global0 = array<bool, 12>();
    return Struct_2(global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.d.x;
    global2 = array<Struct_1, 12>();
    global0 = array<bool, 12>();
    global3 = func_1(vec3<i32>(-2147483647i, i32(-1i) * -2147483647i, ~_wgslsmith_sub_i32(_wgslsmith_add_i32(38541i, -177i), -u_input.c)));
    let var_1 = ~vec2<i32>(-20607i, select(u_input.c, _wgslsmith_dot_vec3_i32(global3.a, vec3<i32>(-1i, global3.a.x, -49374i)) | 1i, true));
    global1 = global2[_wgslsmith_index_u32(global1.b.x, 12u)];
    let var_2 = select(select(var_1.x, firstTrailingBit(64776i), !global0[_wgslsmith_index_u32(countOneBits(40825u), 12u)]), u_input.b, global1.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(0i & u_input.d, vec3<u32>(_wgslsmith_mod_u32(1u, global1.b.x), global1.b.x, ~reverseBits(~global1.b.x)), 729f, vec2<i32>(func_1(-vec3<i32>(global3.a.x, global3.a.x, var_1.x)).a.x, -_wgslsmith_clamp_i32(-58811i, -18601i, min(u_input.b, var_1.x))));
}

