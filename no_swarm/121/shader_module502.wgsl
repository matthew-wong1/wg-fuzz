struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(36666u, vec3<u32>(0u, 54923u, 1u)));

var<private> global1: Struct_1 = Struct_1(0u, vec3<u32>(1640u, 1u, 1u));

var<private> global2: array<u32, 28>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    global1 = Struct_1(77750u, _wgslsmith_mod_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(arg_0.b, vec3<u32>(1u, 1u, global1.b.x), global1.b)), ~vec3<u32>(u_input.a, 48762u, arg_0.b.x)) ^ ~global1.b);
    global1 = Struct_1(global2[_wgslsmith_index_u32(1u, 28u)], ~global1.b);
    var var_0 = _wgslsmith_div_vec3_u32(max(~_wgslsmith_div_vec3_u32(~u_input.b.yyw, global1.b), vec3<u32>((u_input.d ^ 1u) | 32038u, ~1u, 90103u)), ~(~select(arg_0.b, vec3<u32>(0u, 4294967295u, 19498u), vec3<bool>(true, true, true))) ^ arg_0.b);
    var_0 = min(~(~vec3<u32>(~u_input.a, 1u, 65457u)), vec3<u32>(21194u, ~1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 56348u, 4294967295u, 1u), u_input.b & u_input.b)));
    global1 = arg_0;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1242f + -268f), -1165f)) - _wgslsmith_f_op_f32(f32(-1f) * -506f)), -235f, -449f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + 1243f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(715f)) + -242f))), 1000f, -1000f));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global2 = array<u32, 28>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-261f - -425f) - _wgslsmith_f_op_f32(f32(-1f) * -1169f)), _wgslsmith_f_op_f32(f32(-1f) * -2398f), _wgslsmith_f_op_f32(max(-138f, -220f)), 556f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-527f, -2351f, -1529f, -1077f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-127f, 1139f, -1296f, 1497f), _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(u_input.a, 1u)]))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, var_0.x, -618f), vec4<f32>(var_0.x, var_0.x, var_0.x, 219f))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, 1284f, var_0.x))))))));
    let var_1 = global0[_wgslsmith_index_u32(global1.b.x, 1u)];
    var var_2 = arg_0;
    return Struct_1(~_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.a, 53727u), var_1.b.xx), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(19108u, u_input.b.x, global1.b.x), global1.b)), vec3<u32>(reverseBits(27466u), ~1u, ~global2[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_clamp_vec3_u32(var_1.b | vec3<u32>(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(15367u, 28u)], u_input.b.x), var_1.b, ~select(u_input.b.xyw, var_1.b, vec3<bool>(true, false, arg_0))), vec3<u32>(25748u, 1u, _wgslsmith_sub_u32(0u, select(4294967295u, global1.b.x, false)))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<f32>) -> f32 {
    let var_0 = !(!arg_0);
    let var_1 = max(~41089u, _wgslsmith_add_u32(~4294967295u, ~1u));
    var var_2 = func_2(!arg_0);
    global1 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(~firstLeadingBit(4294967295u), select(22776u, u_input.a, arg_0 != true))), vec3<u32>(var_2.b.x, var_1, var_2.b.x));
    var var_3 = Struct_1(~global1.a, max(max(global1.b | vec3<u32>(4294967295u, u_input.b.x, u_input.d), ~global1.b), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(var_2.b, u_input.b.wxy), ~vec3<u32>(1u, 4294967295u, u_input.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.b.x, 1u, u_input.b.x), vec3<u32>(global2[_wgslsmith_index_u32(var_2.a, 28u)], global1.b.x, u_input.a)))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(var_2.b.x, _wgslsmith_sub_u32(4294967295u, u_input.a), countOneBits(global1.a)), global1.b | u_input.b.xyx));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true)));
    global2 = array<u32, 28>();
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-450f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -967f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1134f - 2627f) - _wgslsmith_f_op_f32(f32(-1f) * -629f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_0, u_input.c, vec4<f32>(1000f, -862f, 2271f, 326f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(512f, -1265f, -1296f) - vec3<f32>(1049f, 1174f, -2853f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(304f, -748f, 990f) + vec3<f32>(1356f, 448f, -132f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(524f, 1706f, -3388f)), vec3<f32>(-874f, 160f, 2369f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(568f, 260f, -1785f))), vec3<f32>(_wgslsmith_f_op_f32(step(1070f, -1344f)), _wgslsmith_f_op_f32(sign(1634f)), _wgslsmith_f_op_f32(f32(-1f) * -649f)))));
    let var_2 = vec2<bool>(false, var_0);
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.b.x, global2[_wgslsmith_index_u32(~(~u_input.d), 28u)]), 28u)]), 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(vec2<u32>(0u, var_3.a << (global2[_wgslsmith_index_u32(44559u, 28u)] % 32u)), var_3.b.zz, (u_input.c & u_input.c) != -18054i)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(953f, 214f, var_1.x, -2422f) * vec4<f32>(208f, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1036f, var_1.x, var_1.x, var_1.x), vec4<f32>(-261f, var_1.x, var_1.x, var_1.x))), all(vec4<bool>(var_0, var_2.x, var_2.x, var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-503f, var_1.x, 1083f, var_1.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_1.x, var_1.x), 858f, _wgslsmith_f_op_f32(-308f - 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) * vec4<f32>(var_1.x, -1000f, -1000f, var_1.x))), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 0u) == global2[_wgslsmith_index_u32(firstTrailingBit(53852u), 28u)]))), ~2147483647i);
}

