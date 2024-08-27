struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-337f, 190f, 727f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1843f, -300f) - vec3<f32>(391f, 1110f, -2003f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(631f, -353f, 1378f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-212f)), _wgslsmith_div_f32(142f, 303f), -1713f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-800f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2089f)) - 1f) + -603f), 1696f));
    var var_1 = global0[_wgslsmith_index_u32(12688u, 27u)];
    var var_2 = Struct_1(~(~(~60962u)), ~vec4<u32>(4294967295u, 42456u, max(~41342u, 1u), _wgslsmith_div_u32(abs(4294967295u), ~0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1106f, 929f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1468f, 1297f, var_0.x) - vec3<f32>(-669f, -1132f, var_0.x))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1651f)))))), -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(41902i, -18521i)), min(vec2<i32>(u_input.a, 4552i), vec2<i32>(-2147483647i, -26522i)) >> (vec2<u32>(54393u, 31488u) % vec2<u32>(32u))));
    var_2 = Struct_1(var_2.a, var_2.b >> ((firstTrailingBit(reverseBits(var_2.b)) ^ var_2.b) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2001f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1493f)))))), var_0.x, 758f), -1i ^ firstTrailingBit(-(u_input.b ^ 41377i)));
    global0 = array<bool, 27>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 1000f), _wgslsmith_div_f32(var_2.c.x, 1321f)) * _wgslsmith_f_op_f32(f32(-1f) * -638f)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<u32> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(func_3());
    return ~select(select(_wgslsmith_div_vec3_u32(~arg_0.b.zxz, reverseBits(vec3<u32>(arg_0.a, 0u, var_0.a))), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a, 52333u, 21414u), var_0.b.xzy, var_0.b.xyw), select(false, false, true)), arg_0.b.wxx, all(vec3<bool>(true, true, true)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<u32> {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(arg_2.a, 0u), 0u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.c.x, arg_1.c.x), vec2<f32>(arg_1.c.x, -611f), all(arg_3.zw)))))));
    let var_2 = _wgslsmith_div_vec3_u32(~func_2(arg_1, _wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-452f, arg_2.c.x, 1260f)))), vec3<u32>(~arg_2.a, _wgslsmith_dot_vec4_u32(abs(arg_2.b) << (~arg_2.b % vec4<u32>(32u)), arg_1.b), 4294967295u));
    global1 = -_wgslsmith_mult_i32(select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_2.d), ~vec2<i32>(arg_2.d, 54477i)), 0i, !any(arg_3.xzw)), arg_2.d);
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_0.x), _wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-309f, _wgslsmith_div_f32(-2197f, _wgslsmith_f_op_f32(f32(-1f) * -215f))) + arg_2.c.xy));
    return arg_1.b.xy;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<i32>) -> StorageBuffer {
    let var_0 = arg_2.b.yyy;
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-480f - _wgslsmith_f_op_f32(f32(-1f) * -533f))))) - _wgslsmith_f_op_f32(-209f - _wgslsmith_div_f32(1848f, _wgslsmith_f_op_f32(-1f))));
    var var_2 = -706f;
    return StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-609f, var_1, !all(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 27u)], false, true)))))), max(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(36044u, arg_2.b.x, arg_2.a), vec3<u32>(var_0.x, arg_2.b.x, var_0.x)) ^ ~var_0, ~arg_2.b.zyy), arg_2.b.wyy), var_0.zy & vec2<u32>(0u, arg_2.a), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-844f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1066f + _wgslsmith_f_op_f32(f32(-1f) * -155f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(168f, -1000f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1531f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -818f))))));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_clamp_u32(~(~17350u), 48412u, 24830u) < _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), firstLeadingBit(func_1(vec3<f32>(var_0, -354f, 552f), Struct_1(1u, vec4<u32>(47323u, 4294967295u, 4294967295u, 9804u), vec3<f32>(var_0, var_0, 567f), -45513i), Struct_1(1u, vec4<u32>(1u, 50811u, 6900u, 0u), vec3<f32>(var_0, -734f, var_0), -41709i), vec4<bool>(global0[_wgslsmith_index_u32(2569u, 27u)], global0[_wgslsmith_index_u32(27207u, 27u)], true, true)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(abs(1177f)), var_0) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1183f, 584f, -1025f))))))), Struct_1(0u, _wgslsmith_sub_vec4_u32(select(max(vec4<u32>(4294967295u, 74256u, 4294967295u, 13000u), vec4<u32>(84016u, 0u, 0u, 0u)), abs(vec4<u32>(1u, 0u, 0u, 1168u)), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], false, true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 27u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], true, global0[_wgslsmith_index_u32(3654u, 27u)], global0[_wgslsmith_index_u32(59798u, 27u)]))), select(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, 20792u, 0u), vec4<u32>(87603u, 1u, 1u, 4294967295u)), true)), vec3<f32>(-492f, -572f, var_0), reverseBits(u_input.b) >> (1u % 32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-_wgslsmith_add_i32(u_input.b, u_input.a), abs(countOneBits(1i)), _wgslsmith_div_i32(select(-49812i, u_input.a, global0[_wgslsmith_index_u32(1u, 27u)]), abs(-1i))), ~max(select(vec3<i32>(-2147483647i, u_input.a, -2147483647i), vec3<i32>(u_input.b, 23556i, u_input.a), global0[_wgslsmith_index_u32(12659u, 27u)]), ~vec3<i32>(2147483647i, u_input.b, 10038i)), max(-(vec3<i32>(u_input.a, 32411i, u_input.a) & vec3<i32>(0i, u_input.a, -22i)), firstTrailingBit(max(vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(u_input.b, 814i, -1i))))));
}

