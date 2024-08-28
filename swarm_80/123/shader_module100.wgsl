struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: Struct_2;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 1u, 85988u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> f32 {
    var var_0 = Struct_1(~1u, !(!all(vec2<bool>(arg_0.b.b, global1.b.b))));
    global2 = abs(~(vec3<u32>(19534u << (var_0.a % 32u), ~global1.a.x, countOneBits(global2.x)) ^ ~abs(vec3<u32>(1u, arg_0.a.x, arg_0.a.x))));
    let var_1 = Struct_2(vec2<u32>(1u, global2.x ^ 4294967295u), arg_0.b);
    var var_2 = Struct_1(var_0.a, !select(false, all(!vec4<bool>(false, arg_1.x, arg_1.x, false)), all(arg_1)));
    let var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(220f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(999f)) * _wgslsmith_div_f32(172f, -538f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-272f, _wgslsmith_f_op_f32(trunc(-1000f))))))), 1123f);
    return -260f;
}

fn func_2(arg_0: bool, arg_1: bool) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~abs(global2.x) >> (global2.x % 32u), 14u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(477f + _wgslsmith_f_op_f32(func_3(Struct_2(vec2<u32>(9261u, 33456u), global0[_wgslsmith_index_u32(0u, 14u)]), vec3<bool>(arg_1, arg_1, var_0.b))))), _wgslsmith_f_op_f32(-779f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1572f, -794f) * -542f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1350f)), _wgslsmith_f_op_f32(476f + 228f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 1000f, false)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1177f, 1047f) - vec2<f32>(-985f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1476f, 1424f) + vec2<f32>(267f, 816f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2662f, -874f), vec2<f32>(-260f, 2086f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(150f, -828f)))))));
    var var_2 = true;
    var var_3 = vec2<u32>(global1.b.a, 2768u);
    let var_4 = abs(abs(_wgslsmith_sub_i32(reverseBits(u_input.a), -u_input.a & reverseBits(u_input.a))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(1890f * _wgslsmith_f_op_f32(min(924f, var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1039f));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    var var_0 = vec4<bool>(global1.b.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1.b.b, arg_0.x))), _wgslsmith_f_op_f32(func_2(arg_0.x, global1.b.b)))) > _wgslsmith_f_op_f32(f32(-1f) * -321f), global1.b.b, true);
    global1 = Struct_2(global2.zy, global0[_wgslsmith_index_u32(0u, 14u)]);
    let var_1 = Struct_2(vec2<u32>(~countOneBits(global1.a.x), _wgslsmith_mult_u32(abs(global1.b.a), global1.b.a << (global1.a.x % 32u)) >> (firstLeadingBit(0u) % 32u)), global1.b);
    global1 = var_1;
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.a, _wgslsmith_mult_i32(~(-14457i), 17484i)), select(countOneBits(0i), -u_input.a, all(arg_0.zx)) & (1i >> (global2.x % 32u))), -vec2<i32>(u_input.a, -2147483647i));
    return select(var_2.x, 2147483647i, true) & ~(~var_2.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: i32) -> u32 {
    global0 = array<Struct_1, 14>();
    global1 = Struct_2(vec2<u32>(~_wgslsmith_clamp_u32(~global2.x, global2.x, max(35568u, global1.b.a)), 0u), Struct_1(_wgslsmith_add_u32(~80996u, countOneBits(global1.b.a)) << (_wgslsmith_mult_u32(10956u >> (arg_1 % 32u), 4294967295u) % 32u), false || !(!global1.b.b)));
    global1 = Struct_2(global1.a, Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(36221u, 24204u, global1.a.x, global1.b.a) & vec4<u32>(global2.x, 33798u, global2.x, 6599u), ~vec4<u32>(0u, 44421u, 3639u, 43717u)), vec4<u32>(_wgslsmith_add_u32(23625u, arg_1), global2.x << (arg_1 % 32u), global2.x, ~24078u)), any(select(select(vec4<bool>(global1.b.b, false, true, arg_0.x), vec4<bool>(global1.b.b, arg_0.x, true, false), vec4<bool>(true, global1.b.b, global1.b.b, arg_0.x)), !vec4<bool>(arg_0.x, global1.b.b, arg_0.x, true), vec4<bool>(global1.b.b, true, global1.b.b, true)))));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(25613u, ~(global1.b.a & global2.x), 0u), 14u)];
    global0 = array<Struct_1, 14>();
    return 13326u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<u32>(0u ^ ~(~global1.b.a), _wgslsmith_add_u32(select(global2.x, global1.b.a, true) | global2.x, _wgslsmith_dot_vec2_u32(global2.xz, ~vec2<u32>(27043u, global2.x))), _wgslsmith_sub_u32(min(~global1.b.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global1.a.x, 4626u, 0u), vec4<u32>(38189u, global1.a.x, 69468u, 91039u))), 12783u)) >> (vec3<u32>(func_4(!vec2<bool>(true, global1.b.b), ~656u, -func_1(vec4<bool>(global1.b.b, global1.b.b, false, global1.b.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~global2.x), global1.a), global2.x) % vec3<u32>(32u));
    global0 = array<Struct_1, 14>();
    global1 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(60544u & _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global1.b.a, 53519u, 0u), vec4<u32>(global2.x, global1.b.a, 4294967295u, 7759u)), _wgslsmith_add_u32(global1.a.x, 19392u | global2.x)), global1.a), Struct_1(abs(global1.b.a), true));
    var var_0 = 454f;
    let var_1 = 995f;
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(_wgslsmith_add_u32(global2.x, 0u), 36407u, _wgslsmith_mult_u32(global2.x, 27981u), _wgslsmith_sub_u32(4294967295u, 1u))), _wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1349f + _wgslsmith_f_op_f32(f32(-1f) * -1435f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, var_1) + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(global2.xx, Struct_1(global2.x, false)), vec3<bool>(global1.b.b, true, global1.b.b))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - 392f) - -790f), _wgslsmith_f_op_f32(select(-167f, _wgslsmith_f_op_f32(func_3(Struct_2(global1.a, global0[_wgslsmith_index_u32(1193u, 14u)]), vec3<bool>(true, global1.b.b, global1.b.b))), true | global1.b.b)))), _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1383f)))));
}

