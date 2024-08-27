struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-14495i, 1i, 9080i);

var<private> global1: array<vec3<bool>, 28>;

var<private> global2: i32 = 0i;

var<private> global3: Struct_3;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    global3 = Struct_3(arg_0.c, arg_0.b, arg_0.d.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-348f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f)), 1f));
    global3 = arg_0;
    global3 = arg_0;
    let var_0 = !vec2<bool>(true, !any(vec3<bool>(true, true, true)));
    global1 = array<vec3<bool>, 28>();
    return 0u;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> vec3<i32> {
    let var_0 = Struct_3(585f, Struct_1(vec4<u32>(func_3(Struct_3(-2294f, global3.b, -1170f, global3.d), Struct_2(Struct_1(arg_1))), _wgslsmith_sub_u32(4294967295u, 4294967295u), global3.b.a.x, min(arg_2, arg_1.x))), _wgslsmith_div_f32(global3.a, -687f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d.x, -462f, global3.d.x) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.d.x, 224f, global3.a), vec3<f32>(global3.c, global3.d.x, global3.a), vec3<bool>(false, false, true)))) - _wgslsmith_f_op_vec3_f32(-global3.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-653f, 126f, true)), _wgslsmith_f_op_f32(select(-415f, 750f, true)), global3.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global3.d, vec3<f32>(global3.a, -1543f, 580f)))))));
    let var_1 = var_0;
    global3 = Struct_3(_wgslsmith_f_op_f32(sign(var_1.d.x)), Struct_1(~select(~vec4<u32>(arg_1.x, 0u, arg_1.x, arg_1.x), ~global3.b.a, all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_1.d.x)), var_1.a, any(global1[_wgslsmith_index_u32(4294967295u ^ (0u & var_1.b.a.x), 28u)]))), _wgslsmith_f_op_vec3_f32(-var_1.d));
    let var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1468f)) - _wgslsmith_f_op_f32(max(-1000f, -728f))), global3.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -699f))), Struct_1((~arg_1 >> (arg_1 % vec4<u32>(32u))) & arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1381f))), vec3<f32>(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-584f - var_0.d.x)), _wgslsmith_f_op_f32(trunc(global3.a))));
    let var_3 = Struct_2(global3.b);
    return u_input.b.zyw;
}

fn func_1() -> Struct_3 {
    var var_0 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(~(-28381i), u_input.b.x), _wgslsmith_mult_i32(0i, firstLeadingBit(0i)), ~u_input.a.x), func_2(-global0.x << (28181u % 32u), vec4<u32>(14296u, global3.b.a.x, global3.b.a.x, 52243u) | vec4<u32>(21400u, 62090u, global3.b.a.x, 20712u), ~47680u));
    global3 = Struct_3(_wgslsmith_f_op_f32(step(2023f, -962f)), global3.b, global3.d.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global3.d)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) + -605f), _wgslsmith_f_op_f32(abs(-1227f)), _wgslsmith_f_op_f32(sign(496f)))));
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(~49620u, global3.b.a.x, 68120u, ~firstLeadingBit(~global3.b.a.x)), vec4<u32>(select(_wgslsmith_add_u32(4294967295u, global3.b.a.x & global3.b.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.b.a.x, global3.b.a.x), global3.b.a.xy << (global3.b.a.zx % vec2<u32>(32u))), false), ~global3.b.a.x, global3.b.a.x, firstTrailingBit(_wgslsmith_add_u32(global3.b.a.x, 3290u))));
    global0 = vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, 2147483647i, -2147483647i, global0.x), vec4<i32>(var_0.x, global0.x, global0.x, global0.x)) & var_0.x), global0.x, _wgslsmith_div_i32(-(global0.x << (var_1.x % 32u)) & 2147483647i, min(-var_0.x, -19885i)));
    let var_2 = Struct_2(Struct_1(~global3.b.a));
    return Struct_3(_wgslsmith_f_op_f32(828f * 1f), var_2.a, _wgslsmith_f_op_f32(-global3.a), vec3<f32>(global3.c, global3.d.x, 1636f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(vec3<i32>(_wgslsmith_mod_i32(-1077i, -(global0.x << (global3.b.a.x % 32u))), ~global0.x, abs(~(-14514i & u_input.b.x))));
    global0 = abs(countOneBits(u_input.b.yyy));
    global3 = func_1();
    var var_0 = false;
    let var_1 = global3.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1804f, global3.c), ~_wgslsmith_div_i32(~(-u_input.a.x), min(firstTrailingBit(u_input.a.x), max(global0.x, 2147483647i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.d.xz) - _wgslsmith_f_op_vec2_f32(-func_1().d.zy)), u_input.a.x);
}

