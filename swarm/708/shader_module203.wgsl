struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-240f, 1418f, 530f, 428f);

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 14442u, 0u, 33504u);

var<private> global2: Struct_2 = Struct_2(vec4<u32>(1u, 4294967295u, 112034u, 70133u), vec4<f32>(821f, -977f, 1929f, -2141f));

var<private> global3: array<Struct_1, 15>;

var<private> global4: array<f32, 26>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_2(vec4<u32>(firstTrailingBit(firstTrailingBit(1u)), max(1u, ~27976u), _wgslsmith_mult_u32(~(global2.a.x >> (18163u % 32u)), global1.x ^ (u_input.e >> (45853u % 32u))), 42582u), vec4<f32>(_wgslsmith_div_f32(1389f, 1626f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.b.x * -184f)))), _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x + 959f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = Struct_3(true && !select(true, any(vec3<bool>(true, false, false)), any(vec3<bool>(false, false, false))));
    var var_2 = Struct_1(u_input.b & ~1i, _wgslsmith_f_op_vec2_f32(select(var_0.b.xz, global2.b.yx, all(vec3<bool>(any(vec3<bool>(var_1.a, var_1.a, true)), true, var_1.a)))), firstLeadingBit(-13236i), vec2<i32>(abs(~u_input.b), 1i >> (firstTrailingBit(4294967295u) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(856f, var_0.b.x, var_0.b.x, 1694f) + var_0.b) - _wgslsmith_f_op_vec4_f32(abs(var_0.b))))));
    let var_3 = var_1.a;
    global1 = _wgslsmith_sub_vec4_u32(global2.a >> (~vec4<u32>(firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(global1.xw, vec2<u32>(u_input.e, global1.x)), max(global2.a.x, 36903u), ~u_input.e) % vec4<u32>(32u)), select(var_0.a, vec4<u32>(~firstTrailingBit(global1.x), 2952u, global1.x, ~0u), !select(select(vec4<bool>(var_1.a, var_1.a, var_3, false), vec4<bool>(true, false, false, var_1.a), vec4<bool>(true, false, false, var_1.a)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, var_1.a, true), true), true)));
    return ~var_2.d;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(-18063i, global0.yz, -36414i, func_3(), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(335f, 575f, global4[_wgslsmith_index_u32(global2.a.x, 26u)], global0.x), vec4<f32>(global0.x, global2.b.x, global2.b.x, 136f), true))))))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1377f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(818f))))), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(global2.a.xx, _wgslsmith_clamp_vec2_u32(vec2<u32>(19274u, 11881u), global1.xy, global2.a.yw))), 26u)]));
    global3 = array<Struct_1, 15>();
    global0 = global2.b;
    return u_input.d;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = global2.b.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1803f, arg_1.b.x))));
    var var_1 = abs((-53851i ^ (-u_input.a << (~global2.a.x % 32u))) << (max(~(~u_input.e), 1u) % 32u));
    global1 = vec4<u32>(_wgslsmith_mod_u32(4294967295u | (u_input.d ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 0u, 4294967295u, u_input.e), vec4<u32>(global2.a.x, 6647u, 48244u, global2.a.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(45442u, global2.a.x, global2.a.x, u_input.e), abs(vec4<u32>(46566u, global2.a.x, 0u, u_input.e))) << (~4357u % 32u)), func_2(), global2.a.x, ~(~max(global2.a.x, 41347u)) << (~(~56829u) % 32u));
    var var_2 = -(~vec4<i32>(-(i32(-1i) * -24964i), -2147483647i, u_input.b, firstLeadingBit(-arg_1.d.x)));
    var var_3 = !select(vec4<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), any(vec3<bool>(true, false, false)), true), select(vec4<bool>(true, select(false, false, true), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), _wgslsmith_sub_u32(50240u, u_input.e) > (global2.a.x & u_input.e)), any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), var_2.x > var_2.x)));
    return Struct_2(select(global2.a, vec4<u32>(abs(25952u >> (global2.a.x % 32u)), ~global1.x, global1.x, 1u), all(!vec3<bool>(var_3.x, var_3.x, true))), vec4<f32>(global2.b.x, 1025f, _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(global1.x, 26u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + global2.b.x))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(vec4<u32>(36634u, abs(~_wgslsmith_sub_u32(arg_0.a.x, 1u)), ~(~func_2()), 4294967295u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global2.b, func_1(-33715i, Struct_1(u_input.b, vec2<f32>(644f, arg_0.b.x), u_input.b, vec2<i32>(u_input.a, u_input.a), vec4<f32>(arg_0.b.x, 615f, 1848f, -398f))).b)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(global2.b, vec4<f32>(global2.b.x, 463f, global0.x, global4[_wgslsmith_index_u32(global2.a.x, 26u)]), false))))) + arg_0.b));
    let var_1 = countOneBits(global2.a);
    var var_2 = vec4<bool>(false, true, _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(-global0.x))) <= global0.x, true);
    var_0 = arg_0;
    var var_3 = var_0.b.xxy;
    return Struct_2(vec4<u32>(0u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1556u, var_1.x, var_0.a.x), var_1.xww)), arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.x, global2.a.x), 26u)]), -664f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(u_input.e, 26u)], global4[_wgslsmith_index_u32(8626u, 26u)])) * _wgslsmith_f_op_f32(sign(global2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))) + var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 26>();
    var var_0 = func_4(func_1(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2147483647i ^ u_input.b, countOneBits(u_input.a), firstLeadingBit(19353i)), u_input.b, u_input.a), global3[_wgslsmith_index_u32(~global1.x, 15u)]));
    var_0 = Struct_2((vec4<u32>(4294967295u, 1u << (var_0.a.x % 32u), u_input.d, 832u) | global2.a) | vec4<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(global2.a, global2.a), 0u), 4294967295u, _wgslsmith_sub_u32(1u, 1u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global4[_wgslsmith_index_u32(u_input.d, 26u)], -362f, -501f))), _wgslsmith_div_vec4_f32(var_0.b, var_0.b))))))));
    let var_1 = 1i;
    global2 = Struct_2(~(~_wgslsmith_add_vec4_u32(~global2.a, abs(global2.a))), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(var_0.a.x, 8241u) << (global2.a.wy % vec2<u32>(32u))));
}

