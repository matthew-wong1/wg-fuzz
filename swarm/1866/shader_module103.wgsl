struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29>;

var<private> global1: array<vec3<bool>, 26>;

var<private> global2: array<vec3<u32>, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(155f - arg_0.a), 945f, _wgslsmith_f_op_f32(555f - 169f))))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-624f + arg_0.a))))), !select(!vec3<bool>(false, true, arg_0.b.x), global1[_wgslsmith_index_u32(13336u, 26u)], select(global1[_wgslsmith_index_u32(reverseBits(4294967295u), 26u)], !arg_0.b, global1[_wgslsmith_index_u32(~53935u, 26u)])));
    var var_2 = select(0u, 0u, var_1.b.x);
    let var_3 = vec2<i32>(-49986i, ~firstLeadingBit(u_input.a.x ^ 90034i));
    global0 = array<vec2<f32>, 29>();
    return vec4<bool>(any(vec4<bool>(any(arg_0.b.xy), false == any(vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x)), !(true && arg_0.b.x), all(vec2<bool>(false, false)) && (var_0.x > var_1.a))), !(!all(vec3<bool>(true, var_1.b.x, true))), all(select(var_1.b.yx, var_1.b.xx, any(vec4<bool>(false, true, false, arg_0.b.x)) && true)), (any(!arg_0.b) | all(!arg_0.b)) | !any(select(vec4<bool>(var_1.b.x, true, arg_0.b.x, var_1.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, var_1.b.x), vec4<bool>(var_1.b.x, true, true, var_1.b.x))));
}

fn func_2() -> Struct_2 {
    global2 = array<vec3<u32>, 4>();
    global1 = array<vec3<bool>, 26>();
    var var_0 = select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false), true), vec4<bool>(true, true, true, true)), select(func_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1967f), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false))), vec4<bool>(!all(vec2<bool>(false, true)), any(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u)), 26u)]), true, false), vec4<bool>(func_3(Struct_2(1147f, global1[_wgslsmith_index_u32(1u, 26u)])).x, any(vec2<bool>(false, false)) || false, _wgslsmith_f_op_f32(select(-134f, 1000f, true)) <= _wgslsmith_f_op_f32(min(-1282f, 1451f)), func_3(Struct_2(197f, vec3<bool>(false, true, false))).x)), true);
    var var_1 = Struct_1(!vec4<bool>(!(!var_0.x), all(var_0.ywy) || true, all(!var_0.zyw), true));
    let var_2 = reverseBits(~max(max(~vec4<u32>(51566u, 21125u, 42654u, 1u), vec4<u32>(64030u, 4294967295u, 0u, 1u)), ~(~vec4<u32>(21148u, 34294u, 15093u, 56906u))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 501f))) * _wgslsmith_f_op_f32(-512f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -558f))))), select(select(vec3<bool>(func_3(Struct_2(220f, var_0.zxx)).x, var_1.a.x, var_2.x == var_2.x), vec3<bool>(u_input.a.x < u_input.a.x, true, !var_0.x), !select(global1[_wgslsmith_index_u32(var_2.x, 26u)], var_1.a.xyw, vec3<bool>(var_0.x, false, false))), var_0.xyw, !(true != var_0.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(169f)), -473f);
    var var_1 = _wgslsmith_dot_vec4_i32(-(vec4<i32>(-1i, 2147483647i, 1i, arg_1) ^ countOneBits(u_input.a)), u_input.a) << (min(arg_0.x, abs(~0u)) % 32u);
    global0 = array<vec2<f32>, 29>();
    let var_2 = arg_3.c;
    var var_3 = ~u_input.a.xxz ^ u_input.a.zyw;
    return _wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(~countOneBits(~50832u), 29u)], _wgslsmith_f_op_vec2_f32(ceil(global0[_wgslsmith_index_u32(arg_0.x, 29u)])));
}

fn func_1(arg_0: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(max(1u, ~39694u), 27150u, min(4294967295u, ~76315u)), _wgslsmith_div_u32(1u, ~(~1u))), 29u)] * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, _wgslsmith_div_f32(-160f, _wgslsmith_f_op_f32(-1064f + 798f))))));
    var var_1 = _wgslsmith_mod_vec2_i32(-((u_input.a.xx | vec2<i32>(-5458i, -15032i)) >> (vec2<u32>(1u, ~1u) % vec2<u32>(32u))), u_input.a.zx << (~min(vec2<u32>(1u, 10914u), vec2<u32>(2171u, 3328u)) % vec2<u32>(32u)));
    global1 = array<vec3<bool>, 26>();
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(41144u, 29u)])) + _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(12175u, 29u)])) * vec2<f32>(_wgslsmith_f_op_f32(841f - -473f), _wgslsmith_f_op_f32(f32(-1f) * -495f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(~vec4<u32>(0u, 28604u, 62053u, 6423u), ~(~(-2147483647i)), func_2(), Struct_3(Struct_2(1388f, vec3<bool>(true, arg_0, arg_0)), ~var_1.x, Struct_1(vec4<bool>(arg_0, arg_0, arg_0, arg_0))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(abs(-531f)))));
    var_0 = global0[_wgslsmith_index_u32(max(15718u, ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(73823u, 0u)), vec2<u32>(reverseBits(34323u), 14520u << (1u % 32u)))), 29u)];
    return _wgslsmith_sub_vec4_u32(vec4<u32>(0u, ~abs(select(0u, 122520u, true)), _wgslsmith_div_u32(firstTrailingBit(~113672u), ~5003u), ~4294967295u), min(select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 33560u), ~vec4<u32>(4294967295u, 48416u, 76465u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), !vec4<bool>(false, arg_0, arg_0, arg_0)), ~vec4<u32>(min(41536u, 29567u), firstTrailingBit(28418u), 16946u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(12540u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(~vec4<u32>(1u, 1u, 19769u, 0u) & (~vec4<u32>(1u, 31215u, 12059u, 1u) >> (func_1(true) % vec4<u32>(32u))));
    global0 = array<vec2<f32>, 29>();
    global0 = array<vec2<f32>, 29>();
    global2 = array<vec3<u32>, 4>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(995f * 827f)), vec3<bool>(!(func_3(Struct_2(-778f, global1[_wgslsmith_index_u32(var_0.x, 26u)])).x & true), select(true, false | (var_0.x == var_0.x), all(func_2().b)), all(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, ~var_0.x), 26u)])));
    global2 = array<vec3<u32>, 4>();
    var var_2 = func_3(func_2()).xw;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xww);
}

