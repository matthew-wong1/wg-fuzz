struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = global0.b.wy;
    let var_1 = arg_0;
    var var_2 = var_1.c;
    let var_3 = arg_0.c.a;
    var var_4 = vec3<bool>(var_2.b.x, true, false);
    return firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(firstLeadingBit(48303u), ~6381u, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 1u))), reverseBits(vec4<u32>(1u, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, 36723u, 7019u, u_input.a))));
}

fn func_2() -> u32 {
    let var_0 = ~(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-425f, -1095f)), !global0.b, Struct_1(46214i, global0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(707f, 2139f, 1225f, 671f)))) << (vec4<u32>(~(u_input.a << (4294967295u % 32u)), ~(4294967295u & u_input.a), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(4294967295u, 76930u, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_clamp_u32(u_input.a, firstLeadingBit(u_input.a), abs(var_0.x));
    global0 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -2147483647i, 1i), vec3<i32>(-58252i, 79276i, global0.a))), vec4<bool>(false, any(global0.b), true, !global0.b.x));
    let var_3 = Struct_1(max(1i, firstLeadingBit(-29675i)), vec4<bool>(!any(global0.b.yz), true, -2147483647i > global0.a, !global0.b.x));
    return ~var_2;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(func_2(), 15u)];
    var var_1 = all(vec3<bool>(!all(arg_1.c.b.zzx), any(vec4<bool>(true, true, true, u_input.a >= 79421u)), !any(!vec2<bool>(false, global0.b.x))));
    var var_2 = arg_0.c;
    var var_3 = vec2<i32>(-_wgslsmith_div_i32(-9696i | _wgslsmith_div_i32(global0.a, -27517i), global0.a), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(1i, -48538i, -1i, var_2.a)), vec4<i32>(-arg_0.c.a, i32(-1i) * -9898i, var_2.a, arg_1.c.a | 0i)) >> (1u % 32u));
    let var_4 = ~(~(~(~arg_2)));
    return var_0.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 15>();
    global1 = array<Struct_2, 15>();
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.a, 2147483647i), global0.a), func_1(global1[_wgslsmith_index_u32(max(43006u, 4294967295u), 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)], _wgslsmith_div_u32(u_input.a, 4294967295u)), _wgslsmith_clamp_i32(22575i, reverseBits(2823i), ~global0.a), global0.a) & (vec4<i32>(391i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, global0.a, global0.a, global0.a), vec4<i32>(global0.a, 0i, global0.a, -1i)), global0.a, 10517i) << (~(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))), vec4<i32>(-2147483647i, _wgslsmith_mod_i32(global0.a, 1i), global0.a << (u_input.a % 32u), global0.a));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1824f, -162f), vec2<f32>(-1227f, -683f))))))), _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), vec2<f32>(-1227f, _wgslsmith_f_op_f32(ceil(396f)))))), !global0.b, Struct_1(-21172i, global0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(235f, -1428f, -669f, -726f))) * vec4<f32>(824f, 330f, 1284f, -968f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1097f, -1384f, -105f, -1000f) + vec4<f32>(-642f, 1499f, 395f, -426f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(843f, 1000f, -287f, -987f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(677f, 105f, -337f, -306f), vec4<f32>(671f, -799f, 684f, -1569f), global0.b)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1046f, -866f, -1591f, -222f), vec4<f32>(607f, -457f, -877f, 535f), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false)))))));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(873f, var_1.d.x) * var_1.d.yy))))), global0.b, Struct_1(18201i, vec4<bool>(any(!vec4<bool>(global0.b.x, var_1.b.x, var_1.b.x, global0.b.x)), true, true, var_1.b.x)), _wgslsmith_div_vec4_f32(var_1.d, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.d * var_1.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(-countOneBits(var_0.zyw), var_0.yzx) << (~_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.a, 36409u, u_input.a)), abs(vec3<u32>(39504u, u_input.a, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(u_input.a, 38614u, u_input.a)) % vec3<u32>(32u)), var_1.d, _wgslsmith_mod_u32(0u, ~(u_input.a ^ u_input.a)), ~(vec2<i32>(global0.a, -var_0.x) >> (reverseBits(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))));
}

