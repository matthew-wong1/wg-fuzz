struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: array<f32, 1> = array<f32, 1>(-428f);

var<private> global2: array<Struct_4, 10>;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(1u, 4294967295u, 0u, 14537u), 9730u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32) -> f32 {
    global0 = array<i32, 28>();
    return -2390f;
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> vec2<i32> {
    var var_0 = Struct_2(true, firstLeadingBit(global3.a.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-141f + global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(0u, global3.b)), 1u)]) - 1645f);
    global2 = array<Struct_4, 10>();
    var var_2 = Struct_1(global3.a, ~abs(min(0u, 0u)));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~4294967295u, ~u_input.b.x), 1u)], 1000f), -2039f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-2236f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-209f, 280f))))))));
    return vec2<i32>(~(~u_input.d.x), -1i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: vec2<i32>) -> vec4<i32> {
    var var_0 = abs(-1i);
    let var_1 = vec4<i32>(38684i, _wgslsmith_mod_i32(~(-(global0[_wgslsmith_index_u32(arg_1.b, 28u)] | 1i)), ~(~(-56231i >> (global3.a.x % 32u)))), arg_3.x >> (u_input.b.x % 32u), countOneBits(u_input.d.x << (arg_0.b % 32u)) | 29231i);
    var var_2 = ~(-42334i);
    let var_3 = !select(select(vec4<bool>(!arg_0.a, global0[_wgslsmith_index_u32(1u, 28u)] <= u_input.e, any(vec4<bool>(arg_1.a, arg_0.a, true, true)), true), !(!vec4<bool>(false, true, arg_1.a, arg_1.a)), !all(vec2<bool>(arg_0.a, arg_0.a))), !(!vec4<bool>(true, true, true, arg_0.a)), vec4<bool>(false, all(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), !all(vec4<bool>(true, arg_0.a, true, arg_1.a)), !arg_1.a));
    var var_4 = var_3;
    return var_1;
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = ~global0[_wgslsmith_index_u32(min(abs(global3.b), ~(~firstLeadingBit(0u))), 28u)];
    global1 = array<f32, 1>();
    global0 = array<i32, 28>();
    global3 = Struct_1(firstTrailingBit(reverseBits(vec4<u32>(~global3.b, ~19902u, 4294967295u, 4294967295u))), ~u_input.a);
    var var_1 = Struct_4(firstTrailingBit(func_4(Struct_2(true, _wgslsmith_mod_u32(u_input.b.x, 4294967295u)), Struct_2(true, 1u), global1[_wgslsmith_index_u32(u_input.c.x, 1u)], func_3(Struct_3(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(82720u, 28u)], var_0, var_0), u_input.d), 1802f))), true, vec2<bool>(all(vec3<bool>(true, true, true)), true));
    return select(!vec3<bool>(select(74586u, arg_0.x, false) < ~20559u, select(true, var_1.a.x >= -19390i, all(vec4<bool>(false, var_1.b, var_1.c.x, var_1.c.x))), any(select(vec3<bool>(var_1.c.x, false, var_1.c.x), vec3<bool>(var_1.c.x, var_1.c.x, var_1.b), var_1.b))), vec3<bool>(false, var_1.b, false), select(vec3<bool>(u_input.c.x > 4294967295u, ~u_input.c.x != arg_0.x, any(vec3<bool>(var_1.c.x, true, var_1.b))), !vec3<bool>(!var_1.c.x, 1i > var_0, var_1.c.x), var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], -1038f, global1[_wgslsmith_index_u32(u_input.c.x, 1u)]))) - vec3<f32>(178f, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(global3.b, 1u)])) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2009f, 1770f, global1[_wgslsmith_index_u32(16558u, 1u)]) + vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], 147f, -147f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-520f, global1[_wgslsmith_index_u32(23671u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)])))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_1(6009i, global0[_wgslsmith_index_u32(31403u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)])), 632f, _wgslsmith_f_op_f32(func_1(u_input.d.x, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], 33378i))), vec3<f32>(371f, -1378f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global3.b, 1u)]))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), func_2(global3.a), true)))));
    global2 = array<Struct_4, 10>();
    var var_1 = global2[_wgslsmith_index_u32(global3.a.x, 10u)];
    global3 = Struct_1(vec4<u32>(max((global3.a.x >> (global3.a.x % 32u)) & 4294967295u, ~_wgslsmith_clamp_u32(40422u, global3.a.x, 0u)), ~(~(~56392u)), ~46661u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c, global3.a.xy), u_input.c >> (u_input.c % vec2<u32>(32u))), ~global3.a.x)), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-15817i, ~(abs(u_input.b.x) >> (1u % 32u)));
}

