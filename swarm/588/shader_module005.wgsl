struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_3, 31>;

var<private> global2: vec3<bool>;

var<private> global3: u32 = 1u;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> vec3<bool> {
    global2 = !vec3<bool>(-581f != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))), all(select(select(vec4<bool>(true, global2.x, false, false), vec4<bool>(false, global2.x, false, global2.x), vec4<bool>(false, false, arg_2.c, global2.x)), vec4<bool>(arg_2.c, global2.x, false, true), vec4<bool>(false, arg_2.c, arg_2.c, true))), !global2.x);
    let var_0 = Struct_4(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 4294967295u, arg_2.b) | _wgslsmith_div_vec3_u32(vec3<u32>(arg_1, arg_2.b, 0u), vec3<u32>(4294967295u, 60274u, arg_2.b)), ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.b, arg_1, 0u), vec3<u32>(1u, arg_2.b, 1u)))), Struct_2(~(~8282u), true, Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(36803i, u_input.a.x, 12890i, arg_3), u_input.a), -25585i >> (1u % 32u), arg_2.a.x, _wgslsmith_clamp_i32(-27932i, 2147483647i, -1i)), ~arg_1, any(global2.yx)), arg_2), Struct_1(_wgslsmith_mult_vec4_i32(~(-arg_2.a), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-19594i, arg_3, 2147483647i, arg_3)), u_input.a)), firstLeadingBit(0u), global2.x), select(!vec3<bool>(true, true, global2.x & false), vec3<bool>(any(vec3<bool>(false, global2.x, arg_2.c)), firstTrailingBit(-53594i) > -1i, any(vec2<bool>(true, global2.x))), vec3<bool>(global2.x, arg_2.c, !global2.x)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -215f);
    var var_2 = _wgslsmith_add_u32(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 43424u, 1u, 67305u), min(vec4<u32>(25221u, var_0.c.b, 0u, arg_2.b), vec4<u32>(1u, var_0.b.a, 0u, arg_1)))), _wgslsmith_add_u32(var_0.c.b, var_0.a.x)), _wgslsmith_add_u32((_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 1u, var_0.b.d.b), vec4<u32>(arg_1, 1u, arg_2.b, 71011u)) ^ ~2397u) << (var_0.b.d.b % 32u), arg_1));
    var var_3 = Struct_4(vec3<u32>(var_0.b.c.b, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, ~0u, 61950u), var_0.c.b), var_0.c.b), Struct_2(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(85540u, var_0.c.b, arg_1, var_0.b.c.b)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.b, arg_2.b, 103705u, 39651u), vec4<u32>(0u, arg_2.b, 0u, 4294967295u), vec4<u32>(arg_1, 16909u, arg_2.b, arg_1))), !(!var_0.c.c), Struct_1(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b, arg_2.b), _wgslsmith_mod_vec2_u32(vec2<u32>(7216u, var_0.c.b), vec2<u32>(arg_1, 22372u))), true), arg_2), Struct_1(var_0.c.a, var_0.a.x, all(select(vec3<bool>(true, false, var_0.b.d.c), var_0.d, !var_0.c.c))), select(var_0.d, var_0.d, true));
    return vec3<bool>(var_3.b.d.c, any(!var_0.d), any(vec2<bool>(arg_2.c, var_0.d.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: vec3<bool>) -> u32 {
    var var_0 = select(select(!select(!vec4<bool>(arg_2.b.d.c, global2.x, arg_3.x, false), !vec4<bool>(arg_2.d.x, true, arg_2.d.x, arg_3.x), arg_2.d.x), select(vec4<bool>(arg_2.c.c || arg_3.x, any(arg_2.d.zx), arg_2.c.a.x < u_input.a.x, true), !(!vec4<bool>(arg_3.x, false, global2.x, false)), any(vec3<bool>(false, true, false))), vec4<bool>(!(!arg_2.d.x), all(select(vec4<bool>(arg_2.b.b, arg_2.d.x, global2.x, true), vec4<bool>(false, false, false, true), arg_2.b.b)), select(global2.x & arg_3.x, arg_3.x, arg_3.x), all(arg_2.d.yy))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, any(arg_3.zz), true), arg_3.x), !vec4<bool>(false && arg_3.x, !global2.x, true, arg_2.d.x || global2.x), false), select(vec4<bool>(any(!vec4<bool>(arg_3.x, true, false, false)), false, !global2.x, true), vec4<bool>(true, any(vec2<bool>(global2.x, true)), all(vec2<bool>(arg_3.x, false)), true), true || arg_3.x));
    let var_1 = Struct_2(~4294967295u, any(!vec4<bool>(arg_2.b.d.a.x != u_input.a.x, !arg_3.x, false, true)), Struct_1(_wgslsmith_sub_vec4_i32(-abs(vec4<i32>(2147483647i, u_input.b.x, -30296i, 1i)), ~(-u_input.a)), firstLeadingBit(58533u << (_wgslsmith_mult_u32(0u, 0u) % 32u)), false), Struct_1(u_input.a, select(_wgslsmith_clamp_u32(arg_1.x, arg_2.c.b, arg_1.x), ~75152u, all(vec4<bool>(true, true, arg_3.x, false)) & func_3(-1080f, 16920u, arg_2.c, 2147483647i).x), true));
    let var_2 = reverseBits(~(~(~countOneBits(vec2<u32>(0u, 44180u)))));
    let var_3 = global2.xy;
    let var_4 = countOneBits(u_input.b.xx);
    return ~(4294967295u & arg_2.a.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: i32) -> Struct_3 {
    return Struct_3(Struct_1(u_input.a, func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_0.zy * vec2<f32>(arg_0.x, arg_1.x)))), ~vec3<u32>(1u, 1u, 1u), Struct_4(vec3<u32>(1u, 1u, 1u), Struct_2(0u, true, Struct_1(u_input.a, 1u, global2.x), Struct_1(vec4<i32>(u_input.a.x, -1i, 53085i, -53881i), 1u, true)), Struct_1(vec4<i32>(-15803i, arg_2, arg_2, arg_2), 4294967295u, false), func_3(arg_0.x, 28392u, Struct_1(vec4<i32>(u_input.a.x, arg_2, 11433i, 0i), 4294967295u, true), arg_2)), vec3<bool>(any(vec3<bool>(global2.x, false, global2.x)), true, global2.x)), _wgslsmith_f_op_f32(max(arg_0.x, 334f)) > _wgslsmith_f_op_f32(f32(-1f) * -2218f)), Struct_2(~0u, false, Struct_1(u_input.a, 1u, all(!vec4<bool>(false, false, global2.x, global2.x))), Struct_1(~vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, 0i), 1u, !(!global2.x))), reverseBits(vec3<i32>(_wgslsmith_add_i32(-1i, -2147483647i) & _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), u_input.b.x, u_input.b.x)), Struct_1(_wgslsmith_div_vec4_i32(u_input.a, -vec4<i32>(45567i, arg_2, 2147483647i, u_input.b.x)), ~(~(~4294967295u)), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-400f * -1603f) - _wgslsmith_div_f32(arg_0.x, arg_1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 63388u, 17333u), vec4<u32>(0u, 0u, 34004u, 0u))), Struct_1(u_input.a, ~4294967295u, false), -1i).x), !vec4<bool>(!(!global2.x), !(!global2.x), global2.x, !(false & global2.x)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_1 {
    var var_0 = abs(u_input.a.zw);
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1819f, 277f, -1000f)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-985f, _wgslsmith_f_op_f32(-809f - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-113f)) - _wgslsmith_f_op_f32(step(-728f, 447f))), -127f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 662f, 642f, 442f))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-228f, -234f, 153f, -1000f)))))))), 2147483647i).a;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    let var_0 = arg_2.b.a;
    var var_1 = arg_2;
    global2 = vec3<bool>(true, _wgslsmith_div_u32(1u, select(arg_0.b, ~arg_3.a.x, true)) < ~arg_0.b, true);
    global1 = array<Struct_3, 31>();
    var var_2 = Struct_2(47249u, !global2.x, func_2(vec3<f32>(-3994f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-827f * -927f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -197f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2255f, -1022f, -347f, 1477f)) - vec4<f32>(_wgslsmith_f_op_f32(-573f + -2226f), _wgslsmith_f_op_f32(select(-326f, -1026f, false)), _wgslsmith_f_op_f32(ceil(-437f)), -179f)), select(_wgslsmith_clamp_i32(arg_3.c.a.x, 2147483647i, -2147483647i), u_input.a.x ^ 1i, true)).d, Struct_1(-vec4<i32>(arg_3.c.a.x >> (arg_2.a.x % 32u), arg_0.a.x, -11033i & var_1.b.c.a.x, arg_2.c.a.x), ~(~13414u), any(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_mult_u32(var_0, 0u), func_2(vec3<f32>(-238f, 1731f, -880f), vec4<f32>(-265f, 2187f, 694f, 562f), 33262i).a, func_2(vec3<f32>(-1000f, 1150f, 306f), vec4<f32>(1136f, -150f, -200f, -115f), arg_0.a.x).a.a.x).zy)));
    return var_1.c;
}

fn func_1() -> f32 {
    var var_0 = Struct_3(func_6(func_5(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-2139f, -2000f, 205f), vec3<f32>(1021f, 163f, -1975f)), _wgslsmith_div_vec4_f32(vec4<f32>(278f, 800f, 704f, -1783f), vec4<f32>(-510f, 208f, -1000f, 1000f)), _wgslsmith_div_i32(-2147483647i, -40410i)), Struct_4(vec3<u32>(23645u, 45253u, 1u), Struct_2(15874u, global2.x, Struct_1(u_input.a, 4294967295u, false), Struct_1(vec4<i32>(0i, -1i, -12273i, u_input.b.x), 0u, global2.x)), func_2(vec3<f32>(434f, 614f, -505f), vec4<f32>(-1006f, 368f, -783f, -806f), 209i).d, vec3<bool>(true, global2.x, global2.x))), -vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.wxw, u_input.b), _wgslsmith_sub_i32(-8219i, u_input.b.x)), Struct_4(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(50943u, 1u), vec2<u32>(13798u, 1u)), 1u, 0u), func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -1000f, -2666f), vec3<f32>(108f, 595f, -1294f))), vec4<f32>(429f, -295f, 1208f, -172f), u_input.a.x).b, func_5(global1[_wgslsmith_index_u32(1u, 31u)], Struct_4(vec3<u32>(20889u, 53615u, 7545u), Struct_2(89664u, global2.x, Struct_1(vec4<i32>(-42085i, 17806i, 2147483647i, u_input.b.x), 11838u, global2.x), Struct_1(vec4<i32>(u_input.b.x, 4972i, u_input.a.x, u_input.b.x), 4294967295u, false)), Struct_1(u_input.a, 4294967295u, global2.x), vec3<bool>(false, true, global2.x))), select(select(vec3<bool>(false, false, global2.x), vec3<bool>(false, global2.x, true), vec3<bool>(false, global2.x, true)), !vec3<bool>(false, global2.x, false), false)), Struct_4(~max(vec3<u32>(57650u, 4294967295u, 1u), vec3<u32>(1381u, 25446u, 62271u)), Struct_2(func_4(vec2<f32>(529f, 1539f), vec3<u32>(4294967295u, 1u, 480u), Struct_4(vec3<u32>(25813u, 0u, 4294967295u), Struct_2(0u, global2.x, Struct_1(u_input.a, 1u, global2.x), Struct_1(u_input.a, 4294967295u, false)), Struct_1(u_input.a, 27052u, false), vec3<bool>(global2.x, true, global2.x)), vec3<bool>(false, global2.x, global2.x)), true, func_2(vec3<f32>(381f, 573f, 1570f), vec4<f32>(115f, -879f, 722f, 1230f), u_input.a.x).b.d, func_5(global1[_wgslsmith_index_u32(42635u, 31u)], Struct_4(vec3<u32>(4294967295u, 37120u, 25310u), Struct_2(12271u, true, Struct_1(vec4<i32>(-1788i, -15338i, 9545i, u_input.a.x), 39420u, true), Struct_1(u_input.a, 84491u, global2.x)), Struct_1(u_input.a, 66206u, true), vec3<bool>(global2.x, global2.x, global2.x)))), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b.x) | vec4<i32>(2147483647i, u_input.a.x, 2147483647i, -34866i), _wgslsmith_mult_u32(1u, 34544u), select(global2.x, true, false)), vec3<bool>(true, true, true))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 288f, -722f) - vec3<f32>(1077f, 359f, 2561f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1435f, -317f, 254f, 254f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-717f, -484f, -793f, -345f))))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-916f, -1791f, 942f, 1000f)))), u_input.b.x).b, vec3<i32>(_wgslsmith_sub_i32(3024i, _wgslsmith_mod_i32(u_input.a.x, ~u_input.a.x)), ~(-(u_input.b.x & 0i)), ~_wgslsmith_mult_i32(-50960i, ~u_input.b.x)), Struct_1(vec4<i32>(-min(u_input.b.x, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(5171i, u_input.a.x), vec2<i32>(20057i, 2147483647i)) >> (1u % 32u), _wgslsmith_dot_vec2_i32(func_2(vec3<f32>(-639f, 1354f, -1000f), vec4<f32>(-651f, 1880f, 1015f, -463f), 1i).a.a.xw, u_input.a.xx), -30349i), 4294967295u, true), !vec4<bool>(true & any(vec4<bool>(true, false, true, global2.x)), select(global2.x, global2.x | false, global2.x & global2.x), any(global2.yx), true));
    let var_1 = abs(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(var_0.b.d.b, var_0.d.b, 0u, var_0.a.b), ~vec4<u32>(var_0.a.b, 21927u, var_0.b.d.b, var_0.a.b), var_0.e), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.a.b, 71178u, var_0.b.c.b, var_0.a.b), ~vec4<u32>(4294967295u, var_0.d.b, var_0.b.d.b, var_0.a.b)) ^ vec4<u32>(~var_0.a.b, ~0u, 60001u | var_0.d.b, 4294967295u >> (1u % 32u))));
    global0 = false;
    let var_2 = var_0.b;
    global0 = var_0.e.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-214f)))));
}

fn func_7(arg_0: f32, arg_1: vec3<u32>) -> Struct_3 {
    var var_0 = 2147483647i;
    global0 = global2.x;
    global1 = array<Struct_3, 31>();
    global3 = arg_1.x & 24981u;
    let var_1 = vec2<i32>(-(~(-1i)), func_5(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, -174f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1376f, arg_0, 1000f) + vec3<f32>(arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -474f, arg_0, arg_0) * vec4<f32>(arg_0, -176f, 989f, 658f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2010f, arg_0, arg_0, 1188f) - vec4<f32>(arg_0, -890f, arg_0, arg_0)))), _wgslsmith_div_i32(u_input.b.x << (125944u % 32u), 2147483647i)), Struct_4(firstTrailingBit(reverseBits(vec3<u32>(4294967295u, 0u, arg_1.x))), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -1867f, arg_0), vec3<f32>(arg_0, 628f, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0, 736f, arg_0)), u_input.a.x).b, Struct_1(u_input.a, arg_1.x, global2.x), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -467f) * vec3<f32>(arg_0, -753f, -1037f)), _wgslsmith_div_vec4_f32(vec4<f32>(412f, 218f, arg_0, arg_0), vec4<f32>(arg_0, 1000f, arg_0, 388f)), -17198i).e.zyz)).a.x);
    return Struct_3(Struct_1(-select(vec4<i32>(var_1.x, u_input.a.x, -34892i, 2147483647i), min(vec4<i32>(u_input.a.x, 1i, 16505i, u_input.b.x), vec4<i32>(0i, 1i, 11908i, var_1.x)), !vec4<bool>(false, true, global2.x, global2.x)), 37505u, global2.x & true), func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(681f, 531f) + 1000f), _wgslsmith_f_op_f32(arg_0 - 1767f), _wgslsmith_div_f32(-563f, _wgslsmith_f_op_f32(-746f * arg_0))), vec4<f32>(_wgslsmith_f_op_f32(400f + arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_f32(step(arg_0, arg_0))), _wgslsmith_div_i32(-1i >> (abs(arg_1.x) % 32u), 33765i)).b, u_input.b, Struct_1(u_input.a, _wgslsmith_mult_u32(~arg_1.x, 13486u), !any(vec2<bool>(true, false))), vec4<bool>(global2.x, !func_5(global1[_wgslsmith_index_u32(func_6(Struct_1(vec4<i32>(-67749i, -1i, -2147483647i, -15515i), 49355u, global2.x), u_input.a.ww, Struct_4(vec3<u32>(59717u, arg_1.x, 14347u), Struct_2(arg_1.x, false, Struct_1(vec4<i32>(var_1.x, 0i, 35309i, -2147483647i), arg_1.x, false), Struct_1(u_input.a, arg_1.x, global2.x)), Struct_1(u_input.a, arg_1.x, true), vec3<bool>(global2.x, false, global2.x)), Struct_4(arg_1, Struct_2(arg_1.x, true, Struct_1(vec4<i32>(var_1.x, var_1.x, 0i, u_input.a.x), 1u, global2.x), Struct_1(u_input.a, arg_1.x, false)), Struct_1(u_input.a, arg_1.x, false), vec3<bool>(global2.x, global2.x, global2.x))).b, 31u)], Struct_4(arg_1, Struct_2(arg_1.x, global2.x, Struct_1(vec4<i32>(1i, -8057i, 45510i, 33485i), 0u, global2.x), Struct_1(vec4<i32>(var_1.x, 2147483647i, u_input.a.x, var_1.x), arg_1.x, global2.x)), Struct_1(u_input.a, arg_1.x, true), vec3<bool>(global2.x, global2.x, true))).c, select(!(!global2.x), global2.x, global2.x), global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))))), min(vec3<u32>(1u, _wgslsmith_div_u32(func_4(vec2<f32>(-261f, 1588f), vec3<u32>(40547u, 4294967295u, 63255u), Struct_4(vec3<u32>(50877u, 1u, 26766u), Struct_2(80730u, true, Struct_1(vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, 0i), 1u, false), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 2663i, 0i), 58502u, global2.x)), Struct_1(u_input.a, 0u, false), vec3<bool>(true, global2.x, false)), vec3<bool>(global2.x, global2.x, true)), 21064u), func_5(func_2(vec3<f32>(-2097f, -356f, -333f), vec4<f32>(-1333f, 552f, 2536f, -435f), u_input.b.x), Struct_4(vec3<u32>(64810u, 14537u, 14979u), Struct_2(1u, global2.x, Struct_1(vec4<i32>(-12783i, -25605i, u_input.b.x, u_input.a.x), 0u, global2.x), Struct_1(u_input.a, 0u, true)), Struct_1(vec4<i32>(-1i, u_input.b.x, -13188i, 20672i), 4294967295u, false), vec3<bool>(global2.x, global2.x, global2.x))).b), _wgslsmith_add_vec3_u32(select(countOneBits(vec3<u32>(19077u, 0u, 5547u)), ~vec3<u32>(1u, 48732u, 17220u), !vec3<bool>(true, global2.x, true)), vec3<u32>(func_4(vec2<f32>(-1000f, 298f), vec3<u32>(1u, 5625u, 3175u), Struct_4(vec3<u32>(4294967295u, 1u, 11516u), Struct_2(1u, global2.x, Struct_1(vec4<i32>(2147483647i, -10797i, u_input.a.x, -2147483647i), 0u, false), Struct_1(u_input.a, 2277u, true)), Struct_1(vec4<i32>(0i, u_input.b.x, u_input.a.x, u_input.b.x), 14500u, global2.x), vec3<bool>(true, global2.x, true)), vec3<bool>(true, true, global2.x)), _wgslsmith_mult_u32(4294967295u, 0u), func_6(Struct_1(vec4<i32>(u_input.a.x, -20806i, u_input.a.x, -2147483647i), 27199u, false), u_input.b.xz, Struct_4(vec3<u32>(38418u, 1u, 0u), Struct_2(16635u, global2.x, Struct_1(u_input.a, 47325u, true), Struct_1(vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, 1i), 0u, true)), Struct_1(u_input.a, 0u, global2.x), vec3<bool>(false, global2.x, false)), Struct_4(vec3<u32>(41564u, 0u, 0u), Struct_2(27348u, global2.x, Struct_1(vec4<i32>(15601i, u_input.a.x, -21358i, -18247i), 4294967295u, global2.x), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, 1i), 50977u, false)), Struct_1(vec4<i32>(-6234i, u_input.a.x, 20264i, 15638i), 84817u, global2.x), vec3<bool>(true, global2.x, true))).b))));
    global3 = abs(25834u);
    let var_1 = _wgslsmith_f_op_f32(step(-632f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(326f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1453f - 1318f), -229f, true))))));
    global2 = !(!vec3<bool>(_wgslsmith_f_op_f32(796f - var_1) >= 668f, func_6(var_0.d, vec2<i32>(var_0.c.x, 25286i), Struct_4(vec3<u32>(22332u, 1u, 1u), Struct_2(16823u, global2.x, var_0.a, Struct_1(var_0.b.d.a, var_0.a.b, global2.x)), var_0.a, var_0.e.zxz), Struct_4(vec3<u32>(var_0.b.d.b, var_0.a.b, 0u), var_0.b, var_0.b.c, vec3<bool>(true, true, global2.x))).c, var_0.d.c));
    var var_2 = Struct_4(vec3<u32>(var_0.b.c.b, _wgslsmith_add_u32(abs(509u >> (0u % 32u)), ~func_6(var_0.b.c, vec2<i32>(var_0.b.d.a.x, u_input.a.x), Struct_4(vec3<u32>(var_0.a.b, var_0.a.b, 1u), var_0.b, var_0.d, var_0.e.xyy), Struct_4(vec3<u32>(var_0.d.b, 4294967295u, var_0.a.b), Struct_2(0u, false, Struct_1(vec4<i32>(var_0.a.a.x, -11231i, 2147483647i, u_input.a.x), 3848u, var_0.b.d.c), Struct_1(var_0.a.a, 0u, var_0.b.d.c)), Struct_1(var_0.a.a, 4294967295u, true), vec3<bool>(true, var_0.e.x, false))).b), ~(~4294967295u | var_0.d.b)), func_7(_wgslsmith_f_op_f32(ceil(var_1)), max(firstLeadingBit(vec3<u32>(var_0.d.b, 0u, var_0.b.d.b) | vec3<u32>(var_0.d.b, 29268u, var_0.d.b)), select(vec3<u32>(4294967295u, var_0.b.a, var_0.b.d.b), vec3<u32>(var_0.b.a, var_0.a.b, var_0.b.a), vec3<bool>(var_0.e.x, false, global2.x)) & ~vec3<u32>(var_0.b.a, 0u, var_0.d.b))).b, var_0.d, !(!var_0.e.zxx));
    var_2 = Struct_4(var_2.a, Struct_2(countOneBits(~var_0.d.b << (max(73836u, var_0.a.b) % 32u)), true, func_5(func_7(_wgslsmith_div_f32(-419f, var_1), vec3<u32>(4294967295u, var_2.c.b, var_2.a.x)), Struct_4(var_2.a, var_0.b, func_7(620f, var_2.a).b.d, !vec3<bool>(false, false, var_2.d.x))), func_6(func_6(var_0.b.c, firstTrailingBit(vec2<i32>(2147483647i, -2147483647i)), Struct_4(var_2.a, var_2.b, var_2.c, vec3<bool>(true, true, global2.x)), Struct_4(var_2.a, Struct_2(4294967295u, false, var_2.c, Struct_1(vec4<i32>(0i, -1i, u_input.b.x, u_input.b.x), 4294967295u, global2.x)), var_0.a, vec3<bool>(false, global2.x, true))), var_0.b.d.a.xw, Struct_4(var_2.a | vec3<u32>(0u, 18772u, var_2.b.a), Struct_2(var_0.a.b, true, Struct_1(u_input.a, var_0.b.a, global2.x), var_0.a), func_6(var_2.c, vec2<i32>(-69087i, 2147483647i), Struct_4(var_2.a, var_0.b, var_2.b.d, vec3<bool>(var_2.b.b, var_0.d.c, true)), Struct_4(var_2.a, Struct_2(9960u, var_0.d.c, var_0.a, var_0.d), Struct_1(vec4<i32>(var_0.a.a.x, -45844i, -1i, -2147483647i), 0u, false), vec3<bool>(global2.x, var_0.e.x, false))), vec3<bool>(false, var_2.c.c, false)), Struct_4(_wgslsmith_mult_vec3_u32(var_2.a, vec3<u32>(7490u, var_2.c.b, var_0.d.b)), func_2(vec3<f32>(-2096f, -570f, 1000f), vec4<f32>(var_1, -1048f, var_1, 1437f), var_0.c.x).b, func_5(Struct_3(var_0.d, var_0.b, vec3<i32>(0i, 47432i, u_input.a.x), var_0.a, vec4<bool>(global2.x, var_0.e.x, true, var_0.b.d.c)), Struct_4(vec3<u32>(0u, 40267u, 4294967295u), var_0.b, var_0.b.d, vec3<bool>(var_2.b.b, true, global2.x))), vec3<bool>(false, false, true)))), var_0.b.c, select(!var_2.d, var_0.e.zxx, !any(func_7(var_1, vec3<u32>(var_2.b.d.b, var_2.b.d.b, 4294967295u)).e)));
    let var_3 = Struct_4(countOneBits(var_2.a), Struct_2(var_0.b.d.b, true, var_0.a, Struct_1(vec4<i32>(var_0.d.a.x, var_0.a.a.x, -73399i, var_2.c.a.x), func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1465f, 465f, var_1), vec3<f32>(var_1, var_1, var_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, var_1) + vec4<f32>(var_1, -283f, var_1, -1894f)), var_0.b.d.a.x & var_2.c.a.x).b.a, true)), var_0.b.d, var_2.d);
    let var_4 = vec4<u32>(_wgslsmith_sub_u32(~1u, min(var_0.d.b, ~31812u)), 30550u, countOneBits(1u), var_3.a.x) | (countOneBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_2.a.x, var_3.c.b, var_3.c.b, 4294967295u), ~vec4<u32>(var_2.c.b, 14754u, 13236u, var_2.c.b))) << (abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.d.b, 1u, 4294967295u, var_3.a.x), select(vec4<u32>(var_2.b.a, var_0.d.b, var_3.c.b, var_3.c.b), vec4<u32>(var_0.b.c.b, 4294967295u, 5032u, var_0.a.b), true))) % vec4<u32>(32u)));
    var var_5 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.a.x, var_2.a << (var_4.zyz % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -640f, var_1) - vec3<f32>(-809f, 892f, 236f)))) * vec3<f32>(_wgslsmith_div_f32(-368f, var_1), var_1, _wgslsmith_div_f32(-367f, -1000f))) - vec3<f32>(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(var_1 - 268f), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(1418f * -221f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(-var_1)))), reverseBits(~(~var_3.a.zy)) & var_3.a.xy);
}

