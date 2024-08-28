struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(87487u, 0u, 1u, 50136u, 4294967295u, 0u, 27524u, 0u, 82516u, 32678u, 0u, 0u, 1u, 56729u, 2560u, 69814u, 0u);

var<private> global1: array<Struct_1, 11>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_u32(countOneBits(countOneBits(~vec2<u32>(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)]))), ~(~firstTrailingBit(max(vec2<u32>(arg_3, arg_3), vec2<u32>(global0[_wgslsmith_index_u32(arg_0, 17u)], 4294967295u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.e.x, arg_1.c)));
    global1 = array<Struct_1, 11>();
    var var_2 = var_1;
    var var_3 = var_1;
    return -501f;
}

fn func_2() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(-965f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5821u, 17u)] & 44960u, 17u)], Struct_1(vec3<i32>(-28059i, 2147483647i, 2147483647i), 537f, -495f, vec4<bool>(false, false, false, false), vec2<f32>(679f, 319f)), true, firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)])))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1629f, 162f)) - -194f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(171f, -851f)));
    var var_1 = Struct_1(vec3<i32>(u_input.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), firstTrailingBit(vec2<i32>(u_input.a, u_input.a))), -_wgslsmith_clamp_i32(-11382i, 0i, -30083i)), max(_wgslsmith_sub_i32(select(u_input.a, -48198i, false), _wgslsmith_mod_i32(u_input.a, 98903i)), -17383i)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_3(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19823u, 17u)], 17u)], Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), 182f, 882f, vec4<bool>(true, false, false, false), vec2<f32>(1027f, -706f)), true, reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46987u, 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 17u)])))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-128f, -1000f) * 1512f)), vec4<bool>(any(vec4<bool>(all(vec4<bool>(false, true, true, false)), false, all(vec3<bool>(false, true, true)), select(true, true, false))), ~global0[_wgslsmith_index_u32(~19769u, 17u)] != global0[_wgslsmith_index_u32(reverseBits(1u) | global0[_wgslsmith_index_u32(~1u, 17u)], 17u)], true, true), vec2<f32>(-860f, -450f));
    return vec4<u32>(global0[_wgslsmith_index_u32(1u & ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~abs(global0[_wgslsmith_index_u32(6707u, 17u)]), 17u)], 17u)], 17u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(30366u, ~(~0u >> (~global0[_wgslsmith_index_u32(4294967295u, 17u)] % 32u)), firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 17u)], 17u)])), 17u)], 36416u, _wgslsmith_mult_u32(countOneBits(1u), ~firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)] & 59202u)));
}

fn func_1() -> f32 {
    global0 = array<u32, 17>();
    global1 = array<Struct_1, 11>();
    var var_0 = 2147483647i;
    var var_1 = min(firstTrailingBit(max(abs(vec4<u32>(49550u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17059u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32263u, 17u)], 17u)]) ^ vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18360u, 17u)], 17u)], 17u)], 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6204u, 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)])), _wgslsmith_sub_vec4_u32(func_2(), vec4<u32>(global0[_wgslsmith_index_u32(71108u, 17u)], 96701u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)]) >> (vec4<u32>(34898u, 0u, 47948u, global0[_wgslsmith_index_u32(56173u, 17u)]) % vec4<u32>(32u))))), vec4<u32>(global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2747u, 17u)], 17u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2438u, 17u)], 17u)], 17u)], 17u)])), 17u)]), 17u)], firstTrailingBit(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 17u)], 17u)])), ~1u, 11987u));
    let var_2 = global1[_wgslsmith_index_u32(27459u, 11u)];
    return 1045f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 17>();
    var var_0 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~abs(~global0[_wgslsmith_index_u32(4294967295u, 17u)]), 17u)], 11u)];
    let var_1 = Struct_1(vec3<i32>(-(~abs(1i)), 1i ^ (_wgslsmith_div_i32(u_input.a, -1i) >> (global0[_wgslsmith_index_u32(0u, 17u)] % 32u)), firstLeadingBit(var_0.a.x) << (4294967295u % 32u)), 604f, _wgslsmith_f_op_f32(func_1()), vec4<bool>(all(var_0.d.zzz), any(vec4<bool>(var_0.d.x, false, all(var_0.d.xwy), true)), var_0.d.x, all(!select(var_0.d.xz, var_0.d.wx, vec2<bool>(var_0.d.x, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.e) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1938f, 901f)))));
    let var_2 = !all(var_0.d.zy);
    var var_3 = -1i;
    var var_4 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(60650u, 1u), _wgslsmith_sub_u32(0u, ~global0[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_clamp_u32(abs(0u), 1u, func_2().x), ~func_2().x), select(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64687u, 17u)], 17u)], 17u)], 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)], 46652u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 17u)], 1u, global0[_wgslsmith_index_u32(35681u, 17u)], 4294967295u))), _wgslsmith_div_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 1u, 4294967295u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)]) | vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31615u, 17u)], 17u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(103072u, 17u)], 17u)], global0[_wgslsmith_index_u32(10876u, 17u)])), !var_1.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(var_4.x, var_4.x), 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), -1553f, 582f) - vec3<f32>(-282f, var_0.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c))))));
}

