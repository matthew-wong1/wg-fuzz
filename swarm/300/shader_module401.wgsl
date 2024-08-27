struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec3<i32>(30438i, 2147483647i, 41355i), vec3<f32>(-290f, -255f, 667f), vec4<f32>(740f, -1187f, 1422f, -145f), 0i);

var<private> global1: vec2<u32> = vec2<u32>(17259u, 36375u);

var<private> global2: array<u32, 21>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec3<f32> {
    global0 = Struct_1(~u_input.b, global0.b, _wgslsmith_f_op_vec3_f32(global0.c - _wgslsmith_f_op_vec3_f32(round(global0.d.yzw))), _wgslsmith_f_op_vec4_f32(global0.d - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.d.d)))), max(global0.e, i32(-1i) * -24036i));
    var var_0 = true;
    let var_1 = Struct_1(0u, select(vec3<i32>(arg_0.d.e, ~(-1i), arg_0.d.e) >> (countOneBits(~vec3<u32>(global1.x, 68147u, 19570u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(arg_0.d.b, abs(arg_0.a.b)) >> (vec3<u32>(1u, firstLeadingBit(u_input.a.x), 4294967295u) % vec3<u32>(32u)), select(vec3<bool>(all(vec3<bool>(true, arg_0.c, false)), arg_0.c, any(vec2<bool>(true, true))), !select(vec3<bool>(arg_0.c, false, false), vec3<bool>(arg_0.c, arg_0.c, arg_0.c), vec3<bool>(false, true, false)), vec3<bool>(arg_0.c, true, true))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, 1000f, arg_1), global0.d.wwx))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, -565f, global0.d.x), _wgslsmith_f_op_vec3_f32(arg_0.d.c + vec3<f32>(430f, global0.c.x, -547f))) - global0.d.zxz))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.c.x - global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-339f))), arg_1, _wgslsmith_f_op_f32(max(-842f, 429f)))), ~(-2147483647i));
    global0 = Struct_1(~global1.x, arg_0.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.c, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, var_1.d.x, var_1.c.x)), _wgslsmith_div_vec3_f32(arg_0.a.c, vec3<f32>(348f, arg_1, global0.d.x))))))), arg_0.a.d, -1i);
    let var_2 = select(select(vec3<bool>(false, true, true), select(!(!vec3<bool>(arg_0.c, arg_0.c, false)), !(!vec3<bool>(true, false, arg_0.c)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), vec4<bool>(true, true, arg_0.c, false)))), arg_0.c), !vec3<bool>(false, false, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, arg_0.c), arg_0.c))), !vec3<bool>(all(vec3<bool>(arg_0.c, false, arg_0.c)) | !arg_0.c, !select(arg_0.c, true, arg_0.c), true));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.d.x, arg_1, -544f), _wgslsmith_f_op_vec3_f32(floor(global0.c)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-1732f + -1078f), _wgslsmith_div_f32(-345f, 377f))))));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(global0.a, abs(-(vec3<i32>(global0.e, -1i, 1i) | vec3<i32>(-1i, global0.b.x, 34483i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, 129f, -247f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(411f - global0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1048f), _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_f32(max(1872f, -2130f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))), global0.b.x), global0.d.xx, true, Struct_1(countOneBits(59286u), -global0.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(global0.c, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(0u, vec3<i32>(global0.e, 45413i, -1i), vec3<f32>(2009f, global0.d.x, -241f), vec4<f32>(-224f, global0.d.x, -1687f, 1000f), global0.b.x), global0.d.zz, false, Struct_1(23680u, vec3<i32>(8983i, -8745i, global0.e), global0.c, global0.d, -14632i)), global0.d.x)))))), _wgslsmith_div_vec4_f32(global0.d, global0.d), countOneBits(global0.b.x)));
    global1 = vec2<u32>(global1.x, ~_wgslsmith_mult_u32(~u_input.c, 0u) | _wgslsmith_sub_u32(78031u, global0.a));
    global2 = array<u32, 21>();
    return select(select(!vec2<bool>(var_0.c & var_0.c, select(false, var_0.c, var_0.c)), vec2<bool>(true, -var_0.a.e > global0.e), false), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, var_0.c), select(vec2<bool>(false, false), vec2<bool>(false, false), var_0.c)), !select(select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(true, var_0.c), true), vec2<bool>(true, var_0.c), !vec2<bool>(true, var_0.c))), true);
}

fn func_4(arg_0: vec2<bool>) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(min(u_input.a.x, _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, global2[_wgslsmith_index_u32(9522u, 21u)]), vec2<u32>(92209u, 4294967295u), arg_0), reverseBits(u_input.a))), _wgslsmith_mod_vec3_i32(select(global0.b, global0.b, true), _wgslsmith_div_vec3_i32(global0.b, firstTrailingBit(global0.b))), _wgslsmith_f_op_vec3_f32(global0.c + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(global0.c, vec3<f32>(global0.d.x, global0.c.x, global0.d.x)), _wgslsmith_f_op_vec3_f32(floor(global0.d.wzw))))), global0.d, reverseBits(firstLeadingBit(global0.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.c.yx, global0.c.zz, _wgslsmith_div_f32(-719f, global0.d.x) >= _wgslsmith_f_op_f32(-1014f - -703f)))), arg_0.x, Struct_1(global1.x, vec3<i32>(global0.e, global0.b.x, global0.e), _wgslsmith_f_op_vec3_f32(sign(global0.d.wxz)), vec4<f32>(826f, global0.d.x, _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-1000f * -827f)), global0.b.x >> (_wgslsmith_clamp_u32(9895u, 17871u, 80927u) % 32u)));
    let var_1 = (~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], 14781u), u_input.a), 21u)] ^ (1u ^ abs(~u_input.b))) | _wgslsmith_dot_vec3_u32(~max(~vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(global0.a, global1.x, 4294967295u) ^ vec3<u32>(25131u, global2[_wgslsmith_index_u32(global0.a, 21u)], global2[_wgslsmith_index_u32(global0.a, 21u)])), ~(_wgslsmith_div_vec3_u32(vec3<u32>(27488u, u_input.a.x, global0.a), vec3<u32>(global1.x, 11701u, 4294967295u)) << (min(vec3<u32>(4294967295u, 0u, global1.x), vec3<u32>(0u, global0.a, global2[_wgslsmith_index_u32(0u, 21u)])) % vec3<u32>(32u))));
    let var_2 = (i32(-1i) * -global0.e) >> (~_wgslsmith_div_u32(~(global1.x | 124149u), global0.a) % 32u);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, 835f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0.d.xx)), _wgslsmith_f_op_vec2_f32(-var_0.b))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(510f, global0.c.x))), var_0.a.d.yw)), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(global2[_wgslsmith_index_u32(1u, 21u)], vec3<i32>(-21218i, -1i, -77862i), vec3<f32>(217f, -1019f, -2569f), var_0.d.d, global0.b.x), vec2<f32>(1354f, 563f), arg_0.x, Struct_1(global0.a, vec3<i32>(var_0.d.e, 0i, 2147483647i), var_0.a.c, vec4<f32>(-1965f, -1000f, global0.d.x, 583f), global0.b.x)), _wgslsmith_div_f32(var_0.a.d.x, -415f))).x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(393f, -1116f)))));
    global2 = array<u32, 21>();
    return firstLeadingBit(global0.b & vec3<i32>(countOneBits(-86707i), min(11088i, var_2), _wgslsmith_mult_i32(0i, var_2))) ^ abs(~select(vec3<i32>(-34937i, -2147483647i, global0.b.x), vec3<i32>(2147483647i, var_2, -1i), vec3<bool>(true, arg_0.x, false)));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = func_4(func_2());
    var_0 = -_wgslsmith_sub_vec3_i32(abs(~vec3<i32>(-1i, global0.e, 0i)), max(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, arg_1, 1i), global0.b), vec3<i32>(global0.b.x, arg_1, var_0.x))) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(93333u, firstLeadingBit(25904u), min(global0.a, 66672u)), min(~vec3<u32>(1u, 14635u, 0u), abs(vec3<u32>(1u, u_input.a.x, 20488u))) & countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(16111u, 21u)], global1.x), vec3<u32>(global0.a, global0.a, 1u)))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(717f, -410f, -1163f) + arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(1538f, global0.c.x, arg_0.x)) * vec3<f32>(1107f, 249f, global0.d.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, -2225f, _wgslsmith_f_op_f32(-1380f * 647f)) - _wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(arg_0.x, global0.d.x, arg_0.x))) * vec3<f32>(-1224f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) - 803f), _wgslsmith_f_op_f32(step(-656f, _wgslsmith_f_op_f32(global0.c.x * global0.c.x))))));
    let var_2 = global0.b;
    global1 = u_input.a;
    return Struct_1(1u, -global0.b, _wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(var_1.x, -915f, _wgslsmith_div_f32(1000f, arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-663f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0.c.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(max(648f, arg_0.x)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x + arg_0.x) - _wgslsmith_f_op_f32(max(global0.c.x, var_1.x))))), countOneBits(min(var_2.x, abs(max(2147483647i, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<f32>(-1931f, 358f, 1f), global0.b.x);
    global0 = var_0;
    var var_1 = ~(vec4<u32>(~(~29499u), max(global2[_wgslsmith_index_u32(~var_0.a, 21u)], 3399u), ~(~u_input.b), _wgslsmith_clamp_u32(abs(global0.a), ~global0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, u_input.b, var_0.a), vec3<u32>(4294967295u, global1.x, 1u)))) & vec4<u32>(_wgslsmith_sub_u32(abs(global1.x), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.a, 1u), 21u)]), ~global1.x, 1u, 40095u << (1u % 32u)));
    var var_2 = Struct_2(Struct_1(abs(~1u), _wgslsmith_div_vec3_i32(~(~global0.b), firstLeadingBit(_wgslsmith_add_vec3_i32(var_0.b, vec3<i32>(-2147483647i, 4429i, -2147483647i)))), vec3<f32>(global0.d.x, global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.d.x, global0.d.x)) * _wgslsmith_div_f32(var_0.d.x, global0.c.x))), _wgslsmith_div_vec4_f32(global0.d, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, 1193f, -149f, var_0.c.x) + var_0.d)))), ~min(i32(-1i) * -2147483647i, var_0.b.x)), _wgslsmith_f_op_vec2_f32(-global0.d.wx), false, Struct_1(_wgslsmith_add_u32(~1u, firstTrailingBit(u_input.c | 0u)), vec3<i32>(var_0.b.x, ~(i32(-1i) * -45644i), _wgslsmith_mult_i32(i32(-1i) * -22336i, 1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.d.ywx - global0.d.zyz) * var_0.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d * vec4<f32>(1579f, 528f, 517f, global0.c.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.d)))), ~firstLeadingBit(-32969i)));
    global2 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(12482u, vec3<i32>(-1i) * -select(var_0.b, ~vec3<i32>(var_2.a.e, var_0.b.x, 0i), select(vec3<bool>(true, var_2.c, false), vec3<bool>(true, true, false), vec3<bool>(true, true, var_2.c))), select(~(~(0u << (global0.a % 32u))), _wgslsmith_dot_vec3_u32(var_1.xyy, _wgslsmith_sub_vec3_u32(~var_1.xwy, var_1.xzy)), var_2.c));
}

