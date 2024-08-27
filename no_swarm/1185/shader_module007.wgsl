struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<vec2<u32>, 4>;

var<private> global2: vec3<bool>;

var<private> global3: bool = true;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = !(!any(select(!vec4<bool>(true, true, false, global2.x), !vec4<bool>(global2.x, false, global2.x, global2.x), !vec4<bool>(true, true, false, global2.x))));
    var_0 = all(!vec2<bool>(true, any(select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, false), global2.x))));
    var var_1 = select(select(!vec3<bool>(u_input.a.x >= 10190u, global2.x, global2.x), vec3<bool>(global2.x, any(vec4<bool>(false, false, true, global2.x)), !all(vec3<bool>(global2.x, true, global2.x))), select(select(vec3<bool>(global2.x, true, false), !vec3<bool>(global2.x, true, false), vec3<bool>(true, global2.x, global2.x)), vec3<bool>(true, true, any(global2.yy)), global2.x)), !(!(!(!vec3<bool>(global2.x, true, global2.x)))), true);
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 6u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(396f - 1100f) - -2097f), _wgslsmith_f_op_f32(f32(-1f) * -487f), _wgslsmith_f_op_f32(abs(-449f))))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.x, -468f, -1875f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_3.x, var_3.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 336f, 983f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1000f, 274f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 731f, var_3.x)))) - vec3<f32>(_wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_f_op_f32(trunc(var_3.x)))), _wgslsmith_f_op_f32(min(137f, _wgslsmith_f_op_f32(var_3.x - var_3.x))))), true));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: u32, arg_3: f32) -> f32 {
    global2 = select(arg_0.yyx, arg_0.wwz, max(-_wgslsmith_sub_i32(921i, 2147483647i), max(37608i, _wgslsmith_dot_vec4_i32(vec4<i32>(29740i, -1i, 96387i, -19318i), vec4<i32>(-2147483647i, 2913i, -2147483647i, 1i)))) < _wgslsmith_add_i32(_wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(-27177i, 1i, -5708i)), 1i));
    return -791f;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>) -> vec2<u32> {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1799f + _wgslsmith_f_op_f32(func_4(select(vec4<bool>(false, false, true, false), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), arg_2.x), _wgslsmith_f_op_vec3_f32(func_3()), arg_0.a ^ u_input.a.x, -2741f))) * -1563f));
    global2 = !select(!(!vec3<bool>(false, false, global2.x)), select(vec3<bool>(all(vec3<bool>(global2.x, true, false)), !global2.x, any(global2.yy)), vec3<bool>(!arg_2.x, true, true), !(!global2.x)), select(select(!vec3<bool>(global2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, global2.x, false), all(vec3<bool>(true, true, arg_2.x))), select(vec3<bool>(true, true, true), vec3<bool>(global2.x, false, false), arg_2.x), !(!vec3<bool>(false, arg_2.x, global2.x))));
    let var_2 = -(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, var_0.b.x), ~arg_0.b.x), _wgslsmith_mod_i32(1i, 11243i), -26659i, _wgslsmith_sub_i32(64635i, -arg_0.b.x)) ^ vec4<i32>(-arg_0.b.x ^ -1i, 1i, ~(-2147483647i), ~firstTrailingBit(39275i)));
    var var_3 = 1u;
    return vec2<u32>(~var_0.a, firstTrailingBit(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(22225u, 65630u, 1u, arg_0.a)), ~vec4<u32>(u_input.a.x, 0u, var_0.a, u_input.a.x))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> u32 {
    var var_0 = vec2<u32>(0u, select(_wgslsmith_sub_u32(u_input.a.x, arg_0.x), (~arg_0.x | ~4294967295u) >> (~(~58562u) % 32u), !global2.x));
    let var_1 = Struct_1(_wgslsmith_add_u32(u_input.a.x, 1u), reverseBits(max(vec3<i32>(-arg_2.x, -52685i, ~arg_2.x), countOneBits(~vec3<i32>(-38300i, 2147483647i, arg_2.x)))));
    global3 = false;
    var var_2 = global0[_wgslsmith_index_u32(arg_0.x, 6u)];
    var_0 = u_input.a;
    return var_2.a;
}

fn func_1() -> Struct_1 {
    var var_0 = !(!select(!global2.zz, vec2<bool>(true, !global2.x), any(vec2<bool>(global2.x, global2.x))));
    var var_1 = reverseBits(~select(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 62542u, 4294967295u, u_input.a.x) & vec4<u32>(u_input.a.x, 22516u, u_input.a.x, 0u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 2172u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)), u_input.a.x >= (u_input.a.x & 0u)));
    var_1 = vec4<u32>(func_5(func_2(global0[_wgslsmith_index_u32(4294967295u, 6u)], -1i, vec2<bool>(var_0.x, false)), vec2<f32>(-277f, -1378f), vec3<i32>(1i, 1i, 1i)) | ~firstTrailingBit(u_input.a.x), _wgslsmith_add_u32(u_input.a.x | _wgslsmith_div_u32(var_1.x, 16671u), 1u), var_1.x, 47477u) | ~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(var_1.x, u_input.a.x, u_input.a.x, u_input.a.x)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.a.x), vec4<u32>(var_1.x, 1u, var_1.x, 1u), vec4<u32>(140055u, u_input.a.x, u_input.a.x, var_1.x)), vec4<u32>(u_input.a.x, var_1.x, ~u_input.a.x, 4209u));
    let var_2 = ~countOneBits(var_1.x);
    global2 = !select(!vec3<bool>(true, true, var_2 != var_2), vec3<bool>(false && !global2.x, ~1i == _wgslsmith_dot_vec2_i32(vec2<i32>(60168i, 71113i), vec2<i32>(-10597i, -20780i)), global2.x), var_0.x);
    return Struct_1(_wgslsmith_clamp_u32(34810u, ~(~(~u_input.a.x)), 79909u), _wgslsmith_mult_vec3_i32(min(abs(-vec3<i32>(-18389i, 2147483647i, -16551i)), vec3<i32>(1i, 25037i, i32(-1i) * -29483i)), vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = any(vec4<bool>(true, global2.x, true, true));
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_0 = func_1();
    var var_1 = global0[_wgslsmith_index_u32(98525u, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1756f), -738f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1549f, -706f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-444f, -1144f), _wgslsmith_f_op_f32(1212f + -478f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-899f, 406f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-725f, 613f)) + vec2<f32>(-502f, -293f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-159f, -1955f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_f32(1107f - 1286f))), _wgslsmith_f_op_f32(abs(407f)))));
}

