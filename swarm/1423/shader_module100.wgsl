struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-1399f, 143f), vec2<f32>(1000f, 843f), vec2<f32>(161f, 1277f), vec2<f32>(1706f, 1722f), vec2<f32>(297f, 252f), vec2<f32>(1122f, -1297f), vec2<f32>(396f, 380f), vec2<f32>(1260f, -473f), vec2<f32>(1191f, -552f), vec2<f32>(-887f, -329f), vec2<f32>(-1814f, 1151f));

var<private> global2: Struct_1;

var<private> global3: array<i32, 1> = array<i32, 1>(i32(-2147483648));

var<private> global4: array<f32, 10> = array<f32, 10>(-611f, -1031f, -1280f, 1448f, -413f, 420f, 201f, -115f, -244f, 456f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: u32, arg_3: bool) -> i32 {
    global1 = array<vec2<f32>, 11>();
    global3 = array<i32, 1>();
    global0 = Struct_1(~vec4<u32>(~58496u, 326u, firstLeadingBit(arg_2), abs(arg_2)), ~u_input.a, global0.c, 1i, global2.e);
    var var_0 = !(!(_wgslsmith_f_op_f32(ceil(1266f)) > -551f));
    let var_1 = (_wgslsmith_mult_i32(~(-global2.d), 2147483647i) | -u_input.b) ^ -arg_1.x;
    return global2.e.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> Struct_1 {
    global3 = array<i32, 1>();
    global1 = array<vec2<f32>, 11>();
    var var_0 = global2.c.x;
    let var_1 = Struct_1(~global2.a, abs(vec3<i32>(-arg_1, select(~(-2147483647i), func_3(-2147483647i, global0.b.xx, global0.a.x, false), true), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -24198i) >> (vec2<u32>(22356u, global0.a.x) % vec2<u32>(32u)), firstLeadingBit(global2.b.xy)))), vec3<f32>(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.a.x, ~global2.a.x), 10u)], global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(abs(global0.a.x), abs(83122u), all(vec2<bool>(false, true))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global2.a.xy, vec2<u32>(global0.a.x, global0.a.x)), global2.a.x, 1u)), 10u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(2421u, 10u)] + -181f) * _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(global0.a.x, 10u)]))) - global2.c.x)), _wgslsmith_sub_i32(abs(arg_0.x), firstLeadingBit(arg_1)), vec4<i32>(~_wgslsmith_dot_vec4_i32(global0.e, vec4<i32>(0i, arg_0.x, global0.d, 0i)), countOneBits(-50648i), _wgslsmith_sub_i32(482i, firstTrailingBit(11723i)), _wgslsmith_sub_i32(2147483647i, -global3[_wgslsmith_index_u32(63739u, 1u)])) | global0.e);
    let var_2 = var_1;
    return Struct_1(vec4<u32>(select(~var_1.a.x, 4741u, all(vec2<bool>(true, true))), ~(~(var_1.a.x & global2.a.x)), firstLeadingBit(0u), global2.a.x), ~vec3<i32>(28264i, 4505i, firstLeadingBit(global0.d)), _wgslsmith_f_op_vec3_f32(select(global0.c, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -426f), _wgslsmith_f_op_f32(select(-604f, global2.c.x, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.c.x), global4[_wgslsmith_index_u32(52727u, 10u)], true)), _wgslsmith_f_op_f32(f32(-1f) * -2297f)), true)), var_2.b.x, arg_0 << (~var_1.a % vec4<u32>(32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(vec4<i32>(select(i32(-1i) * -1i, -1i, all(vec4<bool>(true, true, false, true))), _wgslsmith_mult_i32(-global3[_wgslsmith_index_u32(4294967295u, 1u)], ~0i) >> (global2.a.x % 32u), _wgslsmith_div_i32(u_input.b >> (_wgslsmith_mod_u32(41273u, global0.a.x) % 32u), ~(-12149i)), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(1u << (_wgslsmith_mult_u32(global0.a.x, global0.a.x) % 32u), 1u)], _wgslsmith_add_i32(u_input.a.x, _wgslsmith_clamp_i32(1i, global2.d, 0i)))), -31436i);
    let var_1 = max(func_2(global2.e, -1i).a.wyw, global0.a.xzz);
    var var_2 = Struct_1(vec4<u32>(select(global0.a.x, 4294967295u, any(vec2<bool>(false, true))), var_1.x, (var_1.x ^ reverseBits(var_1.x)) << (_wgslsmith_dot_vec4_u32(global2.a, global0.a) % 32u), var_1.x), global2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c - vec3<f32>(363f, var_0.c.x, global4[_wgslsmith_index_u32(36428u, 10u)])) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.c.x, global4[_wgslsmith_index_u32(0u, 10u)], -1269f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, -424f, -1019f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-882f * var_0.c.x), _wgslsmith_f_op_f32(640f - -338f), global2.c.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, global2.c.x, global0.c.x) * vec3<f32>(637f, -509f, 1000f)))), _wgslsmith_clamp_i32(countOneBits(0i), 24590i, abs(-global3[_wgslsmith_index_u32(var_1.x, 1u)]) << ((firstTrailingBit(0u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, global0.a.x, global2.a.x, 44229u), vec4<u32>(1u, var_0.a.x, var_0.a.x, var_1.x)) % 32u)) % 32u)), countOneBits(~vec4<i32>(global2.e.x, _wgslsmith_add_i32(global0.b.x, u_input.a.x), var_0.b.x, global3[_wgslsmith_index_u32(var_1.x, 1u)] >> (0u % 32u))));
    global1 = array<vec2<f32>, 11>();
    let var_3 = vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(_wgslsmith_mult_i32(-9584i, -50698i), u_input.b)), min(var_2.e.zx, var_2.b.yy)), max(var_2.b.x, reverseBits(~_wgslsmith_mod_i32(1i, global2.d))), ~firstLeadingBit(1911i), -2147483647i);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1i << (~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 1131u, 63394u), ~4294967295u) % 32u), global0.a.x);
}

