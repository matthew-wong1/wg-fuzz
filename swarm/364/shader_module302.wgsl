struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<vec2<bool>, 12>;

var<private> global2: f32 = 174f;

var<private> global3: Struct_1 = Struct_1(vec3<i32>(45959i, 0i, 2147483647i), true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> vec2<u32> {
    let var_0 = global1[_wgslsmith_index_u32(countOneBits(countOneBits(~1u)), 12u)];
    global0 = array<Struct_1, 4>();
    let var_1 = Struct_1(vec3<i32>(-(~1i) ^ max(~18062i, _wgslsmith_dot_vec2_i32(vec2<i32>(-17603i, arg_0.a.x), arg_0.a.zz)), -2995i, -42174i), var_0.x);
    let var_2 = firstLeadingBit(abs(vec3<i32>(~u_input.a, -(global3.a.x >> (12235u % 32u)), -var_1.a.x)));
    global2 = -362f;
    return ~(~vec2<u32>(~(~1u), select(13951u, 48813u, arg_0.b) << (~4294967295u % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    global1 = array<vec2<bool>, 12>();
    var var_0 = abs(~arg_1);
    let var_1 = arg_2.b;
    var var_2 = !(!(!select(!vec3<bool>(arg_0.b, global3.b, true), select(vec3<bool>(var_1, arg_0.b, false), vec3<bool>(true, false, arg_2.b), vec3<bool>(arg_2.b, arg_0.b, false)), global3.b && true)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(873f, 1434f)))), _wgslsmith_f_op_f32(abs(-138f)))))), 1067f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1662f * _wgslsmith_f_op_f32(461f - 1341f)))) * _wgslsmith_div_f32(-151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1010f))))));
    return abs(abs(12067u));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = vec2<i32>(17142i, ~(global3.a.x & arg_0.a.x));
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(479f, 1f))));
    var var_1 = _wgslsmith_div_vec4_u32(~(~max(_wgslsmith_mult_vec4_u32(vec4<u32>(26766u, 1u, 353u, 31017u), vec4<u32>(24225u, 1u, 0u, 77659u)), vec4<u32>(27u, 49720u, 53503u, 19678u))), vec4<u32>(1u, 1u, _wgslsmith_clamp_u32(func_4(arg_0, ~76040u, Struct_1(global3.a, true), func_3(global0[_wgslsmith_index_u32(0u, 4u)], -861f, 1038f)), ~16806u, ~_wgslsmith_sub_u32(36105u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), max(_wgslsmith_div_vec2_u32(vec2<u32>(83530u, 0u), vec2<u32>(19490u, 1u)), ~vec2<u32>(0u, 4294967295u)))));
    global1 = array<vec2<bool>, 12>();
    return -global3.a.x;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec3<i32>(26009i, abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global3.a, vec3<i32>(u_input.a, global3.a.x, 1i)), global3.a.x)), max(u_input.a, ~global3.a.x)), true);
    let var_1 = vec4<bool>(1u > _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 0u, 30865u), vec4<u32>(11942u, 73324u, 4294967295u, 4294967295u))), any(vec2<bool>(func_2(var_0, -1i) >= var_0.a.x, var_0.b)), !(all(select(global1[_wgslsmith_index_u32(83970u, 12u)], global1[_wgslsmith_index_u32(6086u, 12u)], true)) & global3.b), global3.b);
    let var_2 = var_0.a.x;
    global2 = 187f;
    var var_3 = (select(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(13920u, 1u, 4294967295u)), !var_1.xyx) ^ vec3<u32>(1u, 1u, 1u)) ^ ~vec3<u32>(1u, ~reverseBits(0u), func_3(var_0, 223f, -513f).x | min(0u, 40945u));
    return Struct_1(select(max(global3.a, var_0.a), vec3<i32>(i32(-1i) * -u_input.a, var_0.a.x, var_0.a.x), !(!(var_1.x & true))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = _wgslsmith_f_op_f32(step(554f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(696f)), _wgslsmith_f_op_f32(f32(-1f) * -1426f), false))))));
    var var_1 = global0[_wgslsmith_index_u32(1u, 4u)];
    global1 = array<vec2<bool>, 12>();
    global2 = 1462f;
    var var_2 = select(_wgslsmith_mod_vec3_u32(reverseBits(countOneBits(vec3<u32>(1u, 1u, 1u))), ~vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(9646u, 4294967295u, 0u), vec3<u32>(0u, 0u, 4294967295u)), select(27636u, 0u, global3.b))), vec3<u32>(1u, reverseBits(59832u), 1u), !select(!vec3<bool>(true, var_1.b, true), vec3<bool>(select(global3.b, false, true), all(global1[_wgslsmith_index_u32(0u, 12u)]), any(vec3<bool>(var_1.b, var_1.b, false))), var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-172f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-212f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1257f, -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-952f - 449f), _wgslsmith_f_op_f32(-1000f + -497f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2173f, 926f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1675f, -1623f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-794f, 1480f))))) * vec2<f32>(_wgslsmith_f_op_f32(-2806f + 389f), _wgslsmith_f_op_f32(select(1000f, 588f, global3.b)))))), vec2<i32>(1i, firstTrailingBit(_wgslsmith_sub_i32(global3.a.x, _wgslsmith_mult_i32(-14933i, -1i)))), func_3(Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, -22198i, 1i), ~vec3<i32>(2147483647i, var_0.a.x, var_0.a.x)), global3.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1302f - -685f) - _wgslsmith_div_f32(1742f, -145f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1364f))), 305f))).x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(189f - 379f), _wgslsmith_f_op_f32(max(-234f, 1036f)))))));
}

