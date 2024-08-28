struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8>;

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(36244u), Struct_1(1288u), Struct_1(16788u), Struct_1(0u), Struct_1(36748u), Struct_1(17695u), Struct_1(7334u), Struct_1(0u), Struct_1(4294967295u), Struct_1(54606u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(6908u), Struct_1(48606u), Struct_1(37960u), Struct_1(31907u), Struct_1(18354u), Struct_1(15174u), Struct_1(10359u), Struct_1(4294967295u), Struct_1(1u), Struct_1(58418u), Struct_1(40412u), Struct_1(0u), Struct_1(41123u), Struct_1(40507u), Struct_1(4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = u_input.d.x;
    global2 = array<Struct_1, 29>();
    global2 = array<Struct_1, 29>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(854f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -665f)))) * -1938f);
    let var_2 = all(select(vec4<bool>(false, false, true, true), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, false)), arg_0.a <= 0u, true, true), true && any(vec2<bool>(false, true)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -930f)));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    var var_0 = 1u;
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 10u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(816f - 2169f), _wgslsmith_f_op_f32(f32(-1f) * -1724f), _wgslsmith_f_op_f32(func_3(Struct_1(4294967295u), 12997i)), -449f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1331f, 1114f, 723f, 565f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1499f, 973f, 440f, -1788f), vec4<f32>(-730f, 268f, 858f, -378f), false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2227f, -1000f, -492f, 1000f), vec4<f32>(494f, -452f, -668f, 762f), vec4<bool>(true, false, false, false))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1263f, 1018f, 1702f, 741f), vec4<f32>(-858f, -1000f, -918f, -115f))))))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-1422f)), -416f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, -677f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1638f - 667f), -327f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1315f - _wgslsmith_f_op_f32(f32(-1f) * -817f)))));
    var var_3 = global1[_wgslsmith_index_u32(var_1.a & var_1.a, 10u)];
    var_3 = Struct_1(4294967295u);
    return select(var_3.a, _wgslsmith_dot_vec4_u32(vec4<u32>(max(select(72118u, 31302u, true), abs(66052u)), var_3.a, ~var_1.a ^ 0u, 1u), _wgslsmith_div_vec4_u32(~vec4<u32>(var_3.a, var_1.a, 0u, 0u), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_3.a), vec2<u32>(1u, var_1.a)), 116757u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a, 0u, var_3.a), vec3<u32>(0u, var_3.a, var_1.a)), ~4294967295u))), !any(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(668f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1169f))))), -863f))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-151f, -199f)) - var_1) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 + 2071f)))))));
    let var_3 = select(select(vec2<bool>(all(vec3<bool>(true, true, true)), false), select(vec2<bool>(arg_0.a <= arg_0.a, all(vec2<bool>(true, true))), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true))), vec2<bool>(true, !all(vec4<bool>(true, true, true, true))), true);
    let var_4 = countOneBits(-1i);
    return Struct_1(firstTrailingBit(9502u));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = func_4(Struct_1(~func_2(u_input.b) | ~(~4294967295u)), reverseBits(_wgslsmith_mult_i32(countOneBits(u_input.e.x), u_input.d.x << (1u % 32u))));
    let var_1 = func_4(func_4(Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(115480u, var_0.a), vec2<u32>(53361u, var_0.a))), 1i), _wgslsmith_add_i32(~(-97822i), 1i));
    var var_2 = Struct_1(abs(var_0.a));
    global1 = array<Struct_1, 10>();
    let var_3 = global1[_wgslsmith_index_u32(64492u, 10u)];
    return ~1u & ~_wgslsmith_mod_u32(countOneBits(var_0.a), var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(0u, 44739u, ~(~_wgslsmith_mod_u32(1u, select(4294967295u, 15491u, true))));
    global0 = array<vec4<u32>, 8>();
    let var_1 = global2[_wgslsmith_index_u32(var_0.x, 29u)];
    var_0 = vec3<u32>(54253u, firstTrailingBit(var_1.a), 4294967295u);
    global2 = array<Struct_1, 29>();
    let var_2 = global2[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(455f, 499f)) + 2198f), -2289f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(393f + 686f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1226f + 144f))))), 29u)];
    let var_3 = select(select(vec2<bool>(false, ~1u != var_1.a), vec2<bool>(false, any(vec2<bool>(true, false))), vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), 1f > _wgslsmith_f_op_f32(func_3(Struct_1(var_0.x), 2147483647i)))), vec2<bool>(all(vec2<bool>(true, true)), !any(vec3<bool>(true, true, true))), select(select(vec2<bool>(false, var_2.a > 0u), vec2<bool>(true, select(false, false, false)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), vec2<bool>(true, true), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(729f, 168f)))), -u_input.b.x);
}

