struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec3<i32>(1i, i32(-2147483648), -32762i), 1044f, vec2<u32>(12498u, 73749u));

var<private> global1: array<Struct_1, 13>;

var<private> global2: vec2<f32>;

var<private> global3: u32 = 4294967295u;

var<private> global4: array<vec3<u32>, 17>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: f32) -> vec2<u32> {
    var var_0 = global1[_wgslsmith_index_u32(~abs(~0u), 13u)];
    var_0 = global1[_wgslsmith_index_u32(~countOneBits(18870u), 13u)];
    return var_0.d;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    global3 = 4294967295u;
    var var_0 = ~select(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(func_3(vec4<f32>(global2.x, -716f, 860f, global2.x), u_input.a.wyy, u_input.c, 1000f), ~vec2<u32>(global0.d.x, 479u)), vec2<u32>(4294967295u, global0.d.x) & (vec2<u32>(7674u, u_input.a.x) | global0.d)), min(arg_0.xx, global0.d), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.c.ww, u_input.c.yw), global0.b.x) <= (abs(u_input.b) & _wgslsmith_dot_vec2_i32(global0.b.yx, u_input.c.zz)));
    let var_1 = Struct_2(max(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u, u_input.a.x), 4294967295u, ~u_input.a.x, ~arg_0.x), ~select(vec4<u32>(0u, arg_0.x, var_0.x, 28575u), u_input.a, vec4<bool>(true, global0.a, true, global0.a))), _wgslsmith_add_vec4_u32(select(~u_input.a, ~vec4<u32>(51490u, 7704u, 18398u, 1u), global0.a & true), min(u_input.a, vec4<u32>(98106u, 4783u, var_0.x, var_0.x)))), select(u_input.a, vec4<u32>(min(4294967295u, _wgslsmith_mult_u32(global0.d.x, 1u)), ~arg_0.x, ~(~global0.d.x), u_input.a.x), vec4<bool>(false, !global0.a, global0.a & global0.a, _wgslsmith_f_op_f32(global2.x * 753f) >= _wgslsmith_f_op_f32(542f + global2.x))), 10573u, u_input.e);
    global3 = ~1u;
    var var_2 = ~12182u;
    return var_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> vec4<u32> {
    var var_0 = global0.b;
    var var_1 = false;
    let var_2 = func_2(vec3<u32>(~_wgslsmith_mult_u32(countOneBits(u_input.e), arg_0.x), 1u, max(u_input.e, arg_0.x)));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.b.zw, global0.d), 13u)];
    var var_4 = global0.a;
    return vec4<u32>(_wgslsmith_div_u32(4294967295u, ~firstLeadingBit(u_input.e)), var_2.a.x, 17510u, u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32((u_input.a ^ u_input.a) ^ abs(reverseBits(u_input.a)), countOneBits(u_input.a) << (~(~u_input.a) % vec4<u32>(32u))) << (~abs(func_1(vec4<u32>(45770u, u_input.e, 16840u, 4294967295u) ^ vec4<u32>(u_input.e, u_input.e, 53051u, 4294967295u), 1i)) % vec4<u32>(32u));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(round(2729f))) + vec2<f32>(_wgslsmith_f_op_f32(global0.c * -488f), -1341f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_f_op_f32(213f * global2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(200f, global2.x))))));
    let var_1 = vec2<f32>(1161f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1855f, _wgslsmith_f_op_f32(f32(-1f) * -2176f))))));
    let var_2 = ~var_0;
    global0 = Struct_1(!global0.a, global0.b, _wgslsmith_f_op_f32(-global0.c), vec2<u32>(80543u & ~func_2(global4[_wgslsmith_index_u32(1u, 17u)]).b.x, ~_wgslsmith_add_u32(var_2.x, global0.d.x & 2192u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.c.x, ~u_input.d));
}

