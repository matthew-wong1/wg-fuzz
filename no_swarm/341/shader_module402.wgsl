struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(564f, vec3<f32>(702f, -664f, -125f), Struct_1(vec4<u32>(59790u, 43214u, 1u, 4294967295u), -259f, vec4<u32>(0u, 4294967295u, 0u, 1u))), Struct_2(395f, vec3<f32>(505f, -708f, -1000f), Struct_1(vec4<u32>(0u, 9703u, 1u, 1u), -1000f, vec4<u32>(64134u, 4294967295u, 18598u, 73541u))), Struct_2(-322f, vec3<f32>(1660f, -632f, 1238f), Struct_1(vec4<u32>(18917u, 4294967295u, 0u, 4294967295u), -1378f, vec4<u32>(56326u, 54928u, 4294967295u, 4294967295u))), Struct_2(-1000f, vec3<f32>(331f, 151f, -1095f), Struct_1(vec4<u32>(18969u, 20660u, 0u, 0u), -260f, vec4<u32>(4294967295u, 35719u, 4294967295u, 18353u))), Struct_2(320f, vec3<f32>(-812f, -203f, 602f), Struct_1(vec4<u32>(1u, 35371u, 68876u, 4294967295u), 1256f, vec4<u32>(65238u, 1u, 8434u, 43616u))));

var<private> global1: array<u32, 20>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<i32>) -> i32 {
    global1 = array<u32, 20>();
    global1 = array<u32, 20>();
    var var_0 = min(firstLeadingBit(min(~(vec4<u32>(9689u, 32143u, 0u, 71239u) >> (vec4<u32>(18696u, global1[_wgslsmith_index_u32(u_input.c.x, 20u)], 67257u, u_input.c.x) % vec4<u32>(32u))), max(firstLeadingBit(vec4<u32>(68929u, 63649u, u_input.a.x, global1[_wgslsmith_index_u32(60905u, 20u)])), reverseBits(vec4<u32>(u_input.c.x, global1[_wgslsmith_index_u32(0u, 20u)], 1u, 1u))))), countOneBits(vec4<u32>(~(~u_input.a.x), ~_wgslsmith_mod_u32(33661u, u_input.c.x), u_input.c.x, ~u_input.c.x)));
    let var_1 = firstTrailingBit(~firstLeadingBit(vec2<u32>(~49096u, var_0.x)));
    var var_2 = _wgslsmith_mult_vec3_u32(var_0.xzy, reverseBits(var_0.zyz) ^ vec3<u32>(var_1.x, var_0.x, ~(~54116u)));
    return _wgslsmith_clamp_i32(reverseBits(-1i), u_input.b, ~(i32(-1i) * -reverseBits(arg_1.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    global1 = array<u32, 20>();
    global1 = array<u32, 20>();
    let var_0 = reverseBits(~arg_0);
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(5231i, arg_0.x, arg_0.x, var_0.x), var_0)), -_wgslsmith_sub_i32(func_3(-1538f, arg_0.xxx, var_0), ~var_0.x), arg_0.x), var_0.yxz);
    return firstTrailingBit(~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(5476u, 20u)], 20u)], ~global1[_wgslsmith_index_u32(119947u, 20u)]), _wgslsmith_clamp_u32(33944u, max(4294967295u, 4294967295u), u_input.c.x >> (31535u % 32u)), global1[_wgslsmith_index_u32(max(~14579u, ~30039u), 20u)]), 20u)]);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = i32(-1i) * -(~arg_2.x);
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(88039u, max(func_2(vec4<i32>(-1i, 2147483647i, u_input.b, arg_2.x), arg_1.x), firstTrailingBit(global1[_wgslsmith_index_u32(0u, 20u)]))), ~u_input.a.x) >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(0u, 20u)]), 20u)], 20u)], ~u_input.a.x) << ((~1u >> (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), u_input.c.zz), 20u)] % 32u)) % 32u), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, global1[_wgslsmith_index_u32(43731u, 20u)], 4294967295u), vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)], 58566u)))) % 32u);
    return Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_div_u32(0u, 1u), 0u, ~17925u), _wgslsmith_add_vec4_u32(vec4<u32>(4421u, var_2, 36217u, 7524u), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 0u, 4217u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 7391u), vec4<u32>(4294967295u, u_input.c.x, var_2, global1[_wgslsmith_index_u32(0u, 20u)]))), vec4<u32>(firstTrailingBit(var_2), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a, arg_1.yy), vec2<u32>(56129u, 1u) >> (u_input.c.xz % vec2<u32>(32u))), 55671u, 4294967295u)), 1563f, _wgslsmith_mult_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 0u, var_2, 28876u))), vec4<u32>(1u, 657u | var_2, firstLeadingBit(4294967295u), _wgslsmith_div_u32(32056u, 1u)) ^ vec4<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 1u), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(74493u, 20u)]), 20u)], var_2, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 20>();
    global1 = array<u32, 20>();
    global0 = array<Struct_2, 5>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1479f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1064f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 805f), -1128f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1671f))))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1684f, 1635f, 565f, 290f)))), !vec3<bool>(true, 46191u > global1[_wgslsmith_index_u32(4294967295u, 20u)], any(vec4<bool>(true, false, true, true))), ~vec2<i32>(u_input.b, 2147483647i) >> (~(~u_input.a) % vec2<u32>(32u))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(-487f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(func_1(vec4<f32>(var_0.c.b, -865f, -384f, 627f), vec3<bool>(true, false, false), vec2<i32>(1i, u_input.b)).b)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.b.x)))));
    var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 5u)];
    global0 = array<Struct_2, 5>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.c.c.x, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), var_0.c.a.x), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f) - 1456f)))), min(var_2.c.c.zz, ~(~vec2<u32>(var_2.c.a.x, 19942u)) << (vec2<u32>(func_2(vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), false), select(var_2.c.c.x, u_input.a.x, false)) % vec2<u32>(32u))), 17620u);
}

