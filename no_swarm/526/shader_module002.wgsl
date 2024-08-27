struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 12>;

var<private> global2: vec4<f32> = vec4<f32>(653f, 714f, -902f, -2029f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1139f, global2.x))) - _wgslsmith_f_op_f32(f32(-1f) * -1206f))));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_4(u_input.e.xzy | u_input.e.wyx, _wgslsmith_div_vec2_i32(arg_0.a.yy, vec2<i32>(-1i) * -vec2<i32>(arg_0.b.x, arg_0.a.x)), vec2<u32>(arg_2.e, 2886u));
    var var_1 = arg_2;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1.a, global2.x, false)))), -933f)), !global1[_wgslsmith_index_u32(~(~77355u) | var_0.c.x, 12u)], var_0.c.x, arg_2.d, ~var_0.c.x);
    var_0 = arg_0;
    let var_3 = Struct_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(var_1.e), max(arg_0.c.x, 1u), ~15027u, ~0u), countOneBits(vec4<u32>(var_2.c, var_2.d.x, 66873u, 4294967295u) ^ vec4<u32>(1u, 40450u, arg_2.e, 0u))) & _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.x, 4294967295u, 0u, var_0.c.x), vec4<u32>(var_2.c, arg_2.e, 0u, 99320u)), var_2.e), vec3<i32>(u_input.c & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -58426i, 15052i), vec3<i32>(var_0.b.x, 2147483647i, -25993i)), ~var_0.a.x, var_0.b.x), _wgslsmith_f_op_vec2_f32(-global2.yw));
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.x, arg_0.c.x & 16033u), _wgslsmith_mod_vec2_u32(var_0.c, abs(vec2<u32>(var_0.c.x, 1u)))), firstTrailingBit(abs(73668u))) | 1u;
}

fn func_1() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2())));
    global0 = false;
    global1 = array<bool, 12>();
    var_0 = _wgslsmith_div_f32(global2.x, 1956f);
    var var_1 = ~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 0u, 27679u)), ~50016u), ~(~func_3(Struct_4(u_input.e.yyy, vec2<i32>(u_input.d, u_input.e.x), vec2<u32>(6145u, 1513u)), 775f, Struct_3(global2.x, false, 42074u, vec4<u32>(4294967295u, 1u, 115390u, 4294967295u), 4294967295u))));
    return vec3<f32>(969f, 941f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-295f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - 1042f) - _wgslsmith_f_op_f32(global2.x + global2.x))) + 1f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 12>();
    let var_0 = 0u;
    global0 = -287f > global2.x;
    var var_1 = global2.yxw;
    let var_2 = _wgslsmith_f_op_vec3_f32(func_1());
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(var_2));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(~(vec2<i32>(u_input.b, 1i) << (vec2<u32>(var_0, var_0) % vec2<u32>(32u)))), vec2<i32>(0i, ~u_input.d), all(vec2<bool>(!global1[_wgslsmith_index_u32(0u, 12u)], false))), reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, var_0, 4294967295u) << (vec4<u32>(var_0, 28306u, 1u, var_0) % vec4<u32>(32u)), reverseBits(vec4<u32>(var_0, var_0, 0u, 1u)))));
}

