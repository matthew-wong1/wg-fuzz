struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(1u, 3626u), vec2<u32>(0u, 1u), vec2<u32>(10047u, 43146u), vec2<u32>(19732u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(48718u, 68098u), vec2<u32>(57902u, 16285u), vec2<u32>(1u, 49210u), vec2<u32>(1u, 23328u), vec2<u32>(24637u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 1853u), vec2<u32>(128600u, 35923u), vec2<u32>(72212u, 1u), vec2<u32>(1u, 56607u), vec2<u32>(0u, 18384u), vec2<u32>(27602u, 34630u), vec2<u32>(1u, 3921u), vec2<u32>(36736u, 78057u), vec2<u32>(70967u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u));

var<private> global1: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(0u, 39911u, 57972u, 30967u), vec4<u32>(4294967295u, 16845u, 68686u, 41111u));

var<private> global2: array<vec2<f32>, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = select(arg_1.a.b.xxy, vec3<bool>(false, all(arg_1.a.b.yyw), arg_1.a.a.x), select(!all(select(vec2<bool>(true, true), arg_1.a.b.yx, true)), true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-678f, 1691f) * _wgslsmith_f_op_f32(max(-849f, 696f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(191f)) + -1370f)));
    var_0 = !vec3<bool>(var_0.x, true, var_0.x);
    let var_1 = arg_1.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(588f, -1257f)), vec2<f32>(-1424f, -537f))) + vec2<f32>(_wgslsmith_f_op_f32(step(-222f, -967f)), _wgslsmith_f_op_f32(round(-1252f)))), vec2<f32>(-498f, _wgslsmith_f_op_f32(-743f + _wgslsmith_f_op_f32(-170f * -698f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1944f, _wgslsmith_f_op_f32(f32(-1f) * -1240f)))), !select(all(arg_1.a.a), true, arg_1.b > arg_1.b) & true));
    var var_3 = Struct_3(var_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(394f, var_2.x, var_2.x, var_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -463f, 391f, var_2.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, -1201f, var_2.x, var_2.x), vec4<f32>(1132f, -1164f, var_2.x, var_2.x), arg_1.a.b))))), arg_1, arg_1);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_3.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_3.b, var_3.b)))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec2<i32>) -> Struct_2 {
    global2 = array<vec2<f32>, 8>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-335f, 208f)))))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -423f), 1000f, -1665f, _wgslsmith_f_op_f32(min(-156f, -1000f))))))), Struct_2(Struct_1(!arg_1.wy, select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), !arg_1)), ~(~firstLeadingBit(20684u))), Struct_2(Struct_1(select(!vec2<bool>(arg_1.x, arg_1.x), arg_1.ww, arg_1.x & arg_1.x), arg_1), ~1u));
    global2 = array<vec2<f32>, 8>();
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-944f, var_0.a.x)))) * _wgslsmith_f_op_vec4_f32(func_3((vec2<i32>(-1i, arg_2.x) | arg_3) & vec2<i32>(1i, 1i), var_0.d))), vec4<f32>(_wgslsmith_f_op_f32(-276f - var_0.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(var_0.a.x * 297f)))), _wgslsmith_f_op_vec4_f32(func_3(arg_2, var_0.d)).x, _wgslsmith_f_op_f32(abs(var_0.b.x)))));
    var var_2 = Struct_2(Struct_1(!(!select(vec2<bool>(true, arg_1.x), arg_1.zy, arg_1.yx)), arg_1), abs(4294967295u));
    return Struct_2(var_0.d.a, 0u);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_3 {
    global0 = array<vec2<u32>, 23>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_3.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(378f, 341f))))) - vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_3.x, -636f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, -1000f) * vec4<f32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x)) - vec4<f32>(-216f, arg_3.x, arg_3.x, arg_3.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 585f, arg_3.x, arg_3.x) + vec4<f32>(arg_3.x, arg_3.x, -162f, -231f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1492f, 770f, arg_3.x, 1178f) * vec4<f32>(-296f, arg_3.x, arg_3.x, arg_3.x))))), func_2(firstTrailingBit(vec3<i32>(~u_input.a.x, -44910i, firstLeadingBit(2147483647i))), select(!(!vec4<bool>(true, arg_2.x, arg_1, true)), vec4<bool>(!arg_2.x, arg_2.x, select(false, arg_2.x, false), arg_2.x), !(false | arg_1)), reverseBits(abs(vec2<i32>(arg_0, 14849i) << (global0[_wgslsmith_index_u32(0u, 23u)] % vec2<u32>(32u)))), firstLeadingBit(_wgslsmith_sub_vec2_i32(-vec2<i32>(23706i, u_input.a.x), ~u_input.a))), Struct_2(func_2(abs(_wgslsmith_div_vec3_i32(vec3<i32>(31932i, u_input.a.x, 8424i), vec3<i32>(arg_0, -32626i, 2147483647i))), vec4<bool>(true, true, false & arg_2.x, false), vec2<i32>(i32(-1i) * -2147483647i, select(arg_0, arg_0, arg_2.x)), vec2<i32>(firstLeadingBit(arg_0), abs(1i))).a, max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(73171u, 0u), global0[_wgslsmith_index_u32(~34214u, 23u)]))));
    var var_1 = select(vec2<bool>((arg_2.x & (arg_2.x & true)) || false, var_0.d.b < 42164u), select(arg_2, select(!arg_2, select(vec2<bool>(var_0.c.a.b.x, arg_1), !vec2<bool>(true, arg_1), !vec2<bool>(arg_2.x, arg_2.x)), func_2(-vec3<i32>(-41578i, 0i, 1i), select(var_0.d.a.b, vec4<bool>(arg_1, true, false, var_0.d.a.b.x), arg_2.x), u_input.a, _wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(arg_0, arg_0))).a.b.zz), true), var_0.d.a.b.xz);
    var var_2 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(~var_0.c.b >> ((var_0.c.b & 1u) % 32u), countOneBits(var_0.c.b), var_0.c.b), vec3<u32>(~var_0.c.b, ~(~0u), var_0.c.b));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.a), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) - _wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1432f - -116f))), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.b.x + -795f)), func_2(~vec3<i32>(countOneBits(1i), -23577i, 2147483647i), vec4<bool>(select(true, select(false, var_1.x, var_1.x), true), all(vec2<bool>(true, var_0.c.a.a.x)), arg_2.x, func_2(vec3<i32>(arg_0, arg_0, u_input.a.x) << (vec3<u32>(var_0.d.b, var_2.x, 11723u) % vec3<u32>(32u)), vec4<bool>(true, false, var_0.c.a.b.x, true), vec2<i32>(47653i, arg_0), u_input.a).a.a.x), _wgslsmith_mod_vec2_i32(abs(u_input.a ^ vec2<i32>(1i, arg_0)), u_input.a | vec2<i32>(14846i, arg_0)), vec2<i32>(1i & -arg_0, firstTrailingBit(0i))), func_2(-(~vec3<i32>(arg_0, 26194i, arg_0) << (~vec3<u32>(14871u, var_2.x, var_0.d.b) % vec3<u32>(32u))), !vec4<bool>(any(arg_2), true, true, !arg_2.x), u_input.a, vec2<i32>(5723i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-21964i, -2147483647i, u_input.a.x, u_input.a.x)), abs(vec4<i32>(-2147483647i, u_input.a.x, 1i, -2147483647i))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: vec2<f32>) -> Struct_4 {
    var var_0 = ~vec3<i32>(~u_input.a.x, firstTrailingBit(firstTrailingBit(2147483647i)), i32(-1i) * -23218i) ^ abs(max(~vec3<i32>(0i, -2147483647i, 2147483647i) >> (~vec3<u32>(arg_1.c.b, 36047u, arg_1.d.b) % vec3<u32>(32u)), max(vec3<i32>(u_input.a.x, -1i, -11360i) ^ vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), ~vec3<i32>(51679i, u_input.a.x, u_input.a.x))));
    var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(~abs(vec3<i32>(var_0.x, u_input.a.x, -38819i)) & firstLeadingBit(vec3<i32>(u_input.a.x, 6941i, u_input.a.x)), ~(-max(vec3<i32>(var_0.x, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, var_0.x, u_input.a.x)))), vec3<i32>(u_input.a.x, -35948i, -8823i), _wgslsmith_mult_vec3_i32(~(vec3<i32>(-5028i, 10287i, var_0.x) & vec3<i32>(5325i, 2147483647i, u_input.a.x)), vec3<i32>(0i, firstLeadingBit(-2147483647i), 2147483647i)) ^ ((_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, 32682i), vec3<i32>(var_0.x, -1i, u_input.a.x)) ^ (vec3<i32>(23411i, u_input.a.x, u_input.a.x) | vec3<i32>(var_0.x, 1i, 1i))) & firstLeadingBit(firstLeadingBit(vec3<i32>(-1i, u_input.a.x, u_input.a.x)))));
    let var_1 = arg_1.d.a;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-962f - 1000f), _wgslsmith_f_op_f32(arg_0.b.x - arg_3.x)))) - -1851f), arg_0.b.x);
    var var_3 = arg_0.b;
    return Struct_4(4294967295u, var_0.x, Struct_1(select(vec2<bool>(var_1.b.x || true, true), vec2<bool>(arg_0.d.a.b.x, arg_1.c.a.b.x), arg_0.d.a.b.xx), var_1.b), -137f, select(vec4<bool>(any(vec4<bool>(true, true, false, var_1.a.x)), true, true, all(!arg_1.d.a.b)), vec4<bool>(select(any(arg_1.d.a.b.xzx), false & arg_0.d.a.b.x, arg_1.c.a.b.x), any(select(arg_0.d.a.a, arg_1.c.a.b.yw, true)), false, arg_0.d.a.a.x), all(vec4<bool>(var_1.a.x, var_1.b.x || true, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 3>();
    let var_0 = func_4(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, -2147483647i), _wgslsmith_clamp_i32(-1i, 1i, -23402i), -10156i, -22750i), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -2147483647i, u_input.a.x, 1i), vec4<i32>(u_input.a.x, 1i, -2147483647i, 0i)))), any(vec4<bool>(false, true, true, true)), vec2<bool>(true, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1346f, -790f, -549f) + vec3<f32>(-1141f, 930f, 2045f))), vec3<f32>(_wgslsmith_f_op_f32(max(-333f, -347f)), -327f, _wgslsmith_f_op_f32(abs(1198f))))), func_1(u_input.a.x ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(6307i, u_input.a.x, 1i)), firstTrailingBit(16813i)), true, select(vec2<bool>(true, true), select(func_2(vec3<i32>(2147483647i, u_input.a.x, -13852i), vec4<bool>(false, false, true, true), vec2<i32>(-44106i, -1i), u_input.a).a.a, func_1(u_input.a.x, true, vec2<bool>(false, true), vec3<f32>(690f, -179f, 580f)).d.a.a, true), vec2<bool>(true, true)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1440f, 298f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(656f))), _wgslsmith_div_f32(863f, _wgslsmith_f_op_f32(round(1141f))))), -261f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1108f))), _wgslsmith_f_op_f32(f32(-1f) * -1263f)));
    global1 = array<vec4<u32>, 3>();
    var var_1 = 51674u;
    var var_2 = 935f;
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-478f - 993f), -822f, _wgslsmith_f_op_f32(1706f + -462f), _wgslsmith_f_op_f32(-var_0.d)) - vec4<f32>(var_0.d, _wgslsmith_f_op_f32(var_0.d + -1117f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -227f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(254f, var_0.d, -363f, var_0.d) + vec4<f32>(559f, var_0.d, var_0.d, var_0.d)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(236f, var_0.d, var_0.d, var_0.d), vec4<f32>(928f, 1094f, 556f, 2550f)))))), true))));
    global1 = array<vec4<u32>, 3>();
    var_2 = _wgslsmith_f_op_f32(max(func_4(func_1(var_0.b, !var_0.c.a.x, !func_1(-2147483647i, false, var_0.e.zz, vec3<f32>(var_0.d, var_0.d, 1306f)).d.a.a, var_3.wyy), Struct_3(_wgslsmith_f_op_vec2_f32(select(var_3.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, -1000f) - vec2<f32>(var_0.d, var_0.d)), func_4(Struct_3(vec2<f32>(644f, var_0.d), var_3, Struct_2(Struct_1(var_0.e.wx, var_0.c.b), 33077u), Struct_2(var_0.c, var_0.a)), Struct_3(global2[_wgslsmith_index_u32(24317u, 8u)], vec4<f32>(var_0.d, var_3.x, var_3.x, var_0.d), Struct_2(var_0.c, 0u), Struct_2(var_0.c, 4294967295u)), var_0.d, global2[_wgslsmith_index_u32(var_0.a, 8u)]).c.a)), vec4<f32>(var_3.x, func_4(Struct_3(vec2<f32>(-1646f, var_3.x), vec4<f32>(389f, var_3.x, var_0.d, var_3.x), Struct_2(Struct_1(vec2<bool>(var_0.c.a.x, var_0.c.b.x), vec4<bool>(false, false, true, var_0.e.x)), var_0.a), Struct_2(Struct_1(var_0.e.zx, var_0.c.b), var_0.a)), Struct_3(global2[_wgslsmith_index_u32(var_0.a, 8u)], var_3, Struct_2(var_0.c, 4294967295u), Struct_2(var_0.c, 42400u)), var_0.d, vec2<f32>(var_3.x, var_3.x)).d, -1979f, var_0.d), func_2(select(vec3<i32>(var_0.b, -2147483647i, var_0.b), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), var_0.e.x), !var_0.c.b, vec2<i32>(-1i, -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.b, 1236i), u_input.a)), Struct_2(var_0.c, ~1u)), var_3.x, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a, 58444u, 65861u, 11580u), vec4<u32>(var_0.a, var_0.a, 4294967295u, var_0.a)), 8u)]).d, var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_add_i32(-18383i, u_input.a.x), false, func_4(Struct_3(var_3.zy, var_3, Struct_2(var_0.c, var_0.a), Struct_2(var_0.c, 1u)), Struct_3(global2[_wgslsmith_index_u32(var_0.a, 8u)], vec4<f32>(2186f, var_3.x, -734f, var_0.d), Struct_2(Struct_1(var_0.e.yw, var_0.c.b), 0u), Struct_2(var_0.c, 1u)), var_0.d, global2[_wgslsmith_index_u32(41853u, 8u)]).c.b.zy, vec3<f32>(var_0.d, var_3.x, 1349f)).b.xzw - var_3.ywz) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, 1213f, 215f)) + vec3<f32>(var_3.x, var_0.d, 599f)) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_div_f32(var_3.x, var_0.d), -731f))), vec3<u32>(0u, _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<u32>(12182u, var_0.a, 1u, 0u))), reverseBits(min(vec4<u32>(1u, 0u, 4294967295u, var_0.a), global1[_wgslsmith_index_u32(36682u, 3u)]))), var_0.a), var_3, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, _wgslsmith_f_op_f32(-var_3.x), 109f, _wgslsmith_f_op_f32(-1678f - var_3.x)))) + var_3), vec3<i32>(u_input.a.x, reverseBits(-17717i), firstTrailingBit(_wgslsmith_clamp_i32(i32(-1i) * -5748i, _wgslsmith_sub_i32(u_input.a.x, -47235i), abs(var_0.b)))));
}

