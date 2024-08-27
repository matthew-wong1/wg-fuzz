struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: u32;

var<private> global2: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(-1164f, -167f, -2646f));

var<private> global3: vec3<f32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> u32 {
    return 6574u;
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(0i, ~(~u_input.a ^ (20074i | u_input.b.x)), ~1i, select(50447i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 0u, arg_1.c.x), vec4<u32>(arg_0, 0u, arg_0, 25536u)) % 32u), 1i, any(vec2<bool>(true, true)))), vec4<i32>(select(firstTrailingBit(arg_1.b.b), 20867i, true), 26608i, -arg_1.b.b, u_input.a) << (vec4<u32>(36822u, arg_1.c.x, 32285u, ~68567u) % vec4<u32>(32u)));
    let var_1 = min(countOneBits(arg_1.c), vec3<u32>(arg_1.b.c.x, _wgslsmith_mod_u32(~(~32223u), arg_0), ~(arg_0 & ~arg_1.b.c.x)));
    var var_2 = countOneBits(arg_1.a.x);
    global1 = ~(~arg_0);
    let var_3 = Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_1.b.a, global3.x)), arg_1.b.a)))), -(19355i << (~4294967295u % 32u)), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-u_input.b.x, i32(-1i) * -2147483647i, u_input.b.x, -1i), vec4<i32>(_wgslsmith_mult_i32(u_input.a, -12855i), ~(-1i), 5249i, 13330i))));
    return -10101i;
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global3.x)), -920f, any(vec4<bool>(true, true, true, -2147483647i > u_input.a)))), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + -926f)))));
    var var_1 = Struct_1(-539f, -u_input.a, vec2<u32>(func_2(), firstTrailingBit(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(30935u, 20860u), vec2<u32>(22042u, 895u))))), arg_0.x & _wgslsmith_mod_i32(_wgslsmith_sub_i32(14448i, 2147483647i), -func_3(1u, Struct_3(u_input.b, Struct_1(global3.x, arg_0.x, vec2<u32>(41967u, 47707u), u_input.b.x), vec3<u32>(14107u, 0u, 56241u)))));
    var var_2 = Struct_3(select(-max(-u_input.b, -vec3<i32>(21811i, var_1.b, arg_0.x)), vec3<i32>(~u_input.a, -1i, -1i), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), false)), Struct_1(996f, _wgslsmith_clamp_i32(arg_0.x, -u_input.a, min(u_input.a, var_1.b)) & arg_0.x, var_1.c, 20106i), select(firstTrailingBit(~vec3<u32>(43119u, var_1.c.x, 22086u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.c.x, var_1.c.x, var_1.c.x), vec3<u32>(11121u, var_1.c.x, 0u)), true) ^ vec3<u32>(1u, ~var_1.c.x << (reverseBits(6183u) % 32u), var_1.c.x));
    global3 = _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~(~var_2.b.c.x), 1u)]);
    var var_3 = Struct_3(firstLeadingBit(vec3<i32>(abs(~(-1i)), arg_0.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, var_2.b.b, u_input.b.x, u_input.a), reverseBits(vec4<i32>(-13225i, 1i, 1i, 1i))))), Struct_1(1665f, ~(-68463i), abs(var_1.c), 2147483647i), var_2.c);
    return Struct_3(firstTrailingBit(~firstLeadingBit(-vec3<i32>(26908i, -62248i, -2147483647i))), var_2.b, var_2.c >> (~firstTrailingBit(min(vec3<u32>(var_2.b.c.x, 1u, 12985u), vec3<u32>(var_2.b.c.x, var_3.b.c.x, 12782u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~u_input.b.yx);
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-global3.x);
    let var_3 = func_1(var_0.a.yx).b;
    global0 = u_input.a;
    let var_4 = ~(~vec4<u32>(~func_1(var_0.a.yy).c.x, var_0.c.x, var_3.c.x, ~var_0.c.x));
    let var_5 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global3.zy, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2, -378f), vec2<f32>(1177f, 1539f))), !vec2<bool>(var_1, var_1))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a, var_0.b.a) - global3.zz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-959f, -672f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.a, -1556f), global3.xz, var_1)))))));
    global3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(1165f)), -2099f, var_2), global2[_wgslsmith_index_u32(4294967295u, 1u)], vec3<bool>(var_1, var_1, var_3.a == -849f)))))));
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(var_4.x, ~_wgslsmith_add_u32(34707u, var_4.x)), vec2<f32>(-245f, -989f));
}

