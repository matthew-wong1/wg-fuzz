struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(-666f, -1507f), 1u);

var<private> global1: array<f32, 23> = array<f32, 23>(106f, -2011f, 981f, -101f, 2069f, -885f, -1000f, 1533f, 659f, -256f, -1264f, -476f, 134f, 582f, -693f, -1094f, 615f, 1000f, 104f, -579f, 128f, -1032f, -112f);

var<private> global2: array<f32, 16> = array<f32, 16>(-1608f, -782f, -1105f, 885f, -2237f, -420f, -511f, -1269f, 1872f, 483f, 670f, 837f, 580f, 418f, 392f, 1182f);

var<private> global3: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-177f * -198f);
    var var_1 = arg_2;
    var var_2 = arg_2;
    var var_3 = vec3<u32>(min(~(~_wgslsmith_mult_u32(u_input.a, global3.b)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.b, global3.b, u_input.b.x, global0.b) ^ vec4<u32>(4294967295u, arg_0, 9063u, u_input.a), abs(vec4<u32>(4294967295u, 0u, u_input.b.x, 4294967295u)))), _wgslsmith_mult_u32(select(33427u, max(u_input.b.x, global3.b) >> (~59828u % 32u), (var_2.c <= var_1.c) && (arg_2.b.x < global3.a.x)), ~(~4294967295u)), _wgslsmith_sub_u32(~0u, 67041u));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.b.xz, var_1.b.zz))), _wgslsmith_f_op_vec2_f32(-var_2.b.xz))), _wgslsmith_add_u32(min(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0, 17465u), vec3<u32>(u_input.b.x, 0u, global3.b)), ~(~var_3.x)), 4294967295u));
    return var_1.a;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = vec3<u32>(global3.b, 0u, ~(~abs(global3.b)));
    var_0 = ~vec3<u32>(_wgslsmith_add_u32(~1u, _wgslsmith_mod_u32(min(global0.b, var_0.x), ~global0.b)), _wgslsmith_mult_u32(0u, 24021u), ~firstTrailingBit(_wgslsmith_add_u32(1u, var_0.x)));
    var var_1 = _wgslsmith_dot_vec4_u32(~(abs(vec4<u32>(45105u, global0.b, global3.b, u_input.a)) >> (~(vec4<u32>(global0.b, var_0.x, 4294967295u, 6714u) >> (vec4<u32>(global0.b, 2736u, var_0.x, global0.b) % vec4<u32>(32u))) % vec4<u32>(32u))), reverseBits(select(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.b, u_input.a, global3.b, global0.b), vec4<u32>(u_input.a, 4294967295u, 28312u, 22377u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 12406u, var_0.x), vec4<u32>(global0.b, global0.b, global0.b, u_input.a)), !vec4<bool>(true, arg_2, arg_2, arg_2))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 91645u, global0.b, 1u), select(~vec4<u32>(var_0.x, global0.b, 48040u, 0u), firstLeadingBit(vec4<u32>(23053u, 1u, var_0.x, global3.b)), vec4<bool>(true, arg_2, arg_2, arg_1.a.x))) % vec4<u32>(32u)));
    global3 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.xy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(501f, arg_1.b.x) - global0.a) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(347f, -204f)))))), ~(max(1u, var_0.x) >> (global3.b % 32u)));
    global3 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(686f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(33613u, 23u)])) * _wgslsmith_f_op_f32(step(arg_1.b.x, -228f)))) + _wgslsmith_f_op_vec2_f32(global3.a - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1584f, arg_0)))), countOneBits(var_0.x));
    return 7341u ^ ~select(max(65070u, var_0.x) ^ _wgslsmith_dot_vec2_u32(var_0.xz, var_0.zx), select(reverseBits(13653u), reverseBits(global3.b), arg_2), true);
}

fn func_2() -> Struct_2 {
    global3 = Struct_2(_wgslsmith_f_op_vec2_f32(step(global0.a, global3.a)), func_4(global1[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(~48686u)), 23u)], Struct_1(!func_3(4294967295u, true, Struct_1(vec2<bool>(true, false), vec3<f32>(982f, global2[_wgslsmith_index_u32(71292u, 16u)], global0.a.x), u_input.c.x)), vec3<f32>(global2[_wgslsmith_index_u32(global3.b, 16u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.b, global0.b), vec3<u32>(u_input.b.x, global0.b, 4294967295u)), 16u)], _wgslsmith_div_f32(-1000f, global3.a.x)), _wgslsmith_clamp_i32(-2147483647i, u_input.c.x, 52322i) | _wgslsmith_mult_i32(u_input.c.x, 2147483647i)), func_3(4294967295u, true, Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 16u)], 738f, global0.a.x)), 2147483647i)).x));
    var var_0 = Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, 71381u >= global3.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -551f, _wgslsmith_f_op_f32(sign(-123f)))), ~abs(max(36242i, -17877i)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1779f, _wgslsmith_div_f32(global3.a.x, -268f))) + _wgslsmith_f_op_vec2_f32(global3.a - _wgslsmith_f_op_vec2_f32(global3.a + vec2<f32>(global3.a.x, -2124f)))), _wgslsmith_div_u32(u_input.b.x | 1u, ~global3.b << (global0.b % 32u)) ^ ((max(30253u, 4294967295u) ^ global0.b) & 0u));
    global2 = array<f32, 16>();
    var var_2 = var_1;
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: vec3<bool>) -> i32 {
    let var_0 = ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b, global3.b, 0u, 31573u), vec4<u32>(29972u, global0.b, u_input.a, global0.b)), abs(vec4<u32>(4294967295u, global0.b, 0u, arg_0.b))), ~firstTrailingBit(arg_0.b)), _wgslsmith_add_u32(global3.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.b, global3.b, u_input.b.x, 47640u), vec4<u32>(u_input.a, global3.b, u_input.b.x, u_input.b.x))));
    global3 = Struct_2(_wgslsmith_f_op_vec2_f32(global3.a - global0.a), ~var_0);
    global0 = arg_0;
    let var_1 = select(!vec4<bool>(~1i != firstTrailingBit(526i), arg_3.x, select(arg_2, true, false), u_input.c.x != u_input.c.x), select(vec4<bool>(all(arg_3.zz), !any(arg_3), true, true), vec4<bool>(true, true, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, arg_0.b), 16u)] <= -658f, true), any(vec2<bool>(true, global2[_wgslsmith_index_u32(var_0, 16u)] > global3.a.x))), vec4<bool>(_wgslsmith_div_u32(4294967295u, ~global0.b) == _wgslsmith_div_u32(~arg_0.b, arg_0.b), arg_2, arg_3.x, arg_2));
    let var_2 = Struct_1(vec2<bool>(false, all(arg_3)), vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -244f)), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 23u)]) + _wgslsmith_f_op_f32(-187f * -554f)))), 0i);
    return i32(-1i) * -31516i;
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(func_2(), _wgslsmith_f_op_f32(-global3.a.x), !any(vec2<bool>(true, true)), !vec3<bool>(~global3.b >= 0u, true, any(vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(-global0.a.x);
    global1 = array<f32, 23>();
    var var_2 = Struct_1(!func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, 1u, u_input.a, global3.b), vec4<u32>(global3.b, u_input.a, global3.b, global3.b)), any(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global0.b, 16u)], global3.a.x, global1[_wgslsmith_index_u32(16456u, 23u)])), select(u_input.c.x, u_input.c.x, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(505f, -1815f, global3.a.x))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, -1000f, -1189f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.a.x, global3.a.x, 180f))), true)), vec3<f32>(_wgslsmith_f_op_f32(abs(186f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.b, 16u)]), 542f))), (_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.c.x, -1i), func_5(Struct_2(global0.a, global0.b), global2[_wgslsmith_index_u32(u_input.a, 16u)], true, vec3<bool>(false, true, false)), -23134i) & -12378i) ^ _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), u_input.c.x, i32(-1i) * -2147483647i), -10742i));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(max(643f, -1738f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(min(988f, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(6135u, global3.b), 16u)]))), -1110f) - var_2.b);
    return Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1096f, _wgslsmith_f_op_f32(147f + _wgslsmith_f_op_f32(max(1535f, 499f))))), max(~(~0u), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = global3.b;
    let var_2 = vec2<u32>(0u, ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec4_u32(~min(vec4<u32>(4294967295u, 680u, global0.b, 0u), vec4<u32>(var_2.x, 1u, 55535u, 11180u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(8480u, 1u, var_0.b, u_input.b.x), vec4<u32>(global3.b, 4294967295u, 0u, u_input.a)))), -(select(~vec3<i32>(-37681i, 2147483647i, -13089i), vec3<i32>(u_input.c.x, u_input.c.x, -27285i), true) >> (select(_wgslsmith_sub_vec3_u32(vec3<u32>(80734u, global3.b, global0.b), vec3<u32>(global3.b, 0u, var_2.x)), vec3<u32>(u_input.a, var_2.x, 48420u), vec3<bool>(true, true, false)) % vec3<u32>(32u))));
}

