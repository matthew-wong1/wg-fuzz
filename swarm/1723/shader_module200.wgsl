struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true));

var<private> global2: array<bool, 5> = array<bool, 5>(true, true, true, true, false);

var<private> global3: f32;

var<private> global4: Struct_2 = Struct_2(vec3<bool>(false, true, true), vec4<i32>(-1i, -17282i, 1i, 6637i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global3 = _wgslsmith_div_f32(611f, 1774f);
    var var_0 = -_wgslsmith_clamp_vec2_i32(~(~u_input.a), reverseBits(countOneBits(vec2<i32>(4133i, u_input.a.x))), select(~vec2<i32>(u_input.a.x, global4.b.x), global4.b.zy << (vec2<u32>(20054u, 7393u) % vec2<u32>(32u)), arg_0.xx) & (select(vec2<i32>(12016i, u_input.a.x), global4.b.xy, global4.a.yy) << (~vec2<u32>(1u, 15463u) % vec2<u32>(32u))));
    var_0 = -_wgslsmith_add_vec2_i32(firstLeadingBit(global4.b.wy), ~(_wgslsmith_add_vec2_i32(global4.b.ww, vec2<i32>(u_input.a.x, u_input.a.x)) << (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))));
    var_0 = ~u_input.a;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1081f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1791f)) * -647f))));
    return all(select(!(!(!global4.a.zx)), vec2<bool>(true, false), vec2<bool>(arg_0.x, true)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_1(!vec3<bool>(true, true, any(global4.a)));
    global4 = Struct_2(global1.a, global4.b);
    let var_1 = ~(countOneBits(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -10492i, 2147483647i), vec3<i32>(u_input.a.x, global4.b.x, -2147483647i)), 1i)) | reverseBits(u_input.a));
    var_0 = Struct_1(select(!global4.a, !global4.a, vec3<bool>(u_input.a.x > _wgslsmith_mod_i32(1i, 19855i), true & arg_2, arg_2)));
    var var_2 = ~(~(~vec2<u32>(arg_1, arg_1)) | ~abs(vec2<u32>(arg_1, arg_1))) ^ (~_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_1, 4294967295u), ~vec2<u32>(13489u, arg_1)) ^ ((~vec2<u32>(1u, 17128u) & vec2<u32>(arg_1, 4294967295u)) & vec2<u32>(_wgslsmith_mult_u32(0u, arg_1), 53410u)));
    return Struct_2(vec3<bool>(!func_3(!vec4<bool>(true, var_0.a.x, true, arg_2)), !(max(arg_1, arg_1) != min(77284u, 4294967295u)), !var_0.a.x), max(vec4<i32>(~(u_input.a.x & u_input.a.x), firstTrailingBit(firstTrailingBit(global4.b.x)), _wgslsmith_div_i32(u_input.a.x, -global4.b.x), -43926i), global4.b));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = -7971i;
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f - 1000f))))), arg_0.x, global1.a.x);
    var_0 = -12094i;
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1506f, 591f, 1184f, 1476f)))))))));
    global0 = u_input.a.x;
    return 42466u;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mod_vec4_u32(~reverseBits(_wgslsmith_clamp_vec4_u32(~arg_1, arg_1, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, arg_0, arg_1.x), arg_1))), vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, arg_1.x), vec2<bool>(false, global2[_wgslsmith_index_u32(42406u, 5u)])), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, arg_0), arg_1.yy)), ~_wgslsmith_add_u32(arg_0, arg_1.x), func_4(~vec4<u32>(arg_0, arg_0, arg_1.x, 74u), arg_3, func_2(-1930f, arg_0, global4.a.x)), _wgslsmith_add_u32(~1u, arg_0)) & reverseBits(_wgslsmith_div_vec4_u32(arg_1, ~arg_1)));
    var var_1 = ~(~arg_0 >> (93910u % 32u));
    var var_2 = -26600i & -_wgslsmith_dot_vec2_i32(arg_2.b.zy, min(firstLeadingBit(vec2<i32>(arg_2.b.x, 1i)), arg_2.b.ww));
    var_2 = -10629i;
    return 5074u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 5>();
    var var_0 = Struct_1(!vec3<bool>(true, all(!vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 5u)], true)), global2[_wgslsmith_index_u32(25723u, 5u)]));
    var var_1 = ~(~func_1(52563u, vec4<u32>(1u, 1u, 1u, 1u), Struct_2(!global1.a, global4.b), Struct_1(vec3<bool>(false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1301f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-331f, -1623f, -390f, -377f) + vec4<f32>(1000f, -417f, 706f, 172f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-814f, 916f, 421f, 805f))) + vec4<f32>(-1237f, _wgslsmith_f_op_f32(sign(-382f)), _wgslsmith_f_op_f32(f32(-1f) * -539f), -1000f))));
}

