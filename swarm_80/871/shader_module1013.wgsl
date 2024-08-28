struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<i32>(24957i, 0i, 1i, -22293i)), Struct_1(vec4<i32>(0i, -36537i, -12153i, i32(-2147483648))), Struct_1(vec4<i32>(-14603i, i32(-2147483648), 0i, i32(-2147483648))), Struct_1(vec4<i32>(2147483647i, -7260i, 8726i, 31162i)), Struct_1(vec4<i32>(2147483647i, -37471i, 0i, -24244i)), Struct_1(vec4<i32>(2147483647i, 1i, 7810i, 0i)));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<i32>(-38833i, -1i, 2147483647i, 1i)), 2042f, 2147483647i, Struct_1(vec4<i32>(-10897i, -15832i, 35536i, -1i)), Struct_1(vec4<i32>(-1232i, 2147483647i, -18551i, 33171i)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>) -> vec3<i32> {
    global1 = Struct_2(global0[_wgslsmith_index_u32(36366u, 6u)], _wgslsmith_f_op_f32(round(235f)), abs(-1i), Struct_1(global1.a.a), Struct_1(vec4<i32>(2147483647i | ~arg_0.x, u_input.b.x, i32(-1i) * -u_input.b.x, ~(~1i))));
    let var_0 = global1.b;
    let var_1 = vec2<bool>(arg_1.x <= (arg_1.x >> (abs(arg_1.x) % 32u)), any(!select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), true)));
    var var_2 = global1.e.a.x;
    var var_3 = u_input.c;
    return global1.e.a.yzx & vec3<i32>(_wgslsmith_mult_i32(-_wgslsmith_add_i32(u_input.d.x, -1i), arg_0.x), max(_wgslsmith_clamp_i32(-global1.d.a.x, 0i, ~66062i), -2147483647i), -_wgslsmith_dot_vec4_i32(u_input.d, global1.d.a >> (arg_1 % vec4<u32>(32u))));
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    let var_0 = arg_0.xyw;
    var var_1 = func_3(~(~u_input.d.wy), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(u_input.c.x, 4294967295u, u_input.a)), ~(~u_input.c.x), 11423u, u_input.c.x));
    var var_2 = select(vec2<bool>(var_0.x <= _wgslsmith_f_op_f32(334f + 297f), true), vec2<bool>(all(vec4<bool>(false, true, true, all(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(f32(-1f) * -669f) == _wgslsmith_f_op_f32(-var_0.x)), true);
    let var_3 = !select(select(!vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(var_2.x, true, var_2.x), var_2.x), !vec3<bool>(var_0.x != global1.b, all(vec3<bool>(true, var_2.x, var_2.x)), false), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, var_2.x), vec3<bool>(false, var_2.x, false), vec3<bool>(var_2.x, var_2.x, true)), !vec3<bool>(var_2.x, var_2.x, var_2.x)));
    let var_4 = var_0.x;
    return global1.d.a.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> Struct_3 {
    var var_0 = global1.d;
    let var_1 = _wgslsmith_f_op_f32(min(717f, _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(global1.b * global1.b))));
    global1 = Struct_2(Struct_1(u_input.d), _wgslsmith_f_op_f32(f32(-1f) * -658f), _wgslsmith_sub_i32(arg_2.a.x, -func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1000f, var_1, 699f)))), Struct_1(vec4<i32>(countOneBits(_wgslsmith_add_i32(u_input.d.x, -4977i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(20321i, u_input.d.x, 37549i), vec3<i32>(u_input.d.x, -31174i, arg_0.x)), func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, global1.b, var_1, global1.b)))), 1i)), Struct_1(vec4<i32>(-5529i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.x, arg_2.a.x, 65082i), vec3<i32>(global1.a.a.x, 2147483647i, var_0.a.x)), arg_2.a.x), abs(var_0.a.x), -33852i)));
    var_0 = arg_2;
    global1 = Struct_2(arg_2, _wgslsmith_f_op_f32(608f * global1.b), 1i, Struct_1(u_input.b >> ((vec4<u32>(84980u, arg_3, 4294967295u, arg_3) & vec4<u32>(1u, arg_3, u_input.c.x, 0u)) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(0u, 6u)]);
    return Struct_3(Struct_2(Struct_1(vec4<i32>(countOneBits(-46933i), firstTrailingBit(-17027i), arg_0.x, -1i)), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2213f))), 7459i, Struct_1(-_wgslsmith_mod_vec4_i32(global1.a.a, vec4<i32>(-1i, 876i, 6379i, arg_1))), Struct_1(u_input.d)), Struct_1(vec4<i32>(i32(-1i) * -2147483647i, 1i, i32(-1i) * -1i, arg_0.x | -1i) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(arg_3, 38865u, u_input.c.x, 2986u), vec4<u32>(arg_3, 12638u, u_input.c.x, 76384u)) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(arg_3, _wgslsmith_div_u32(20896u, arg_3) >> (~u_input.c.x % 32u))), 6u)], Struct_2(global0[_wgslsmith_index_u32(10343u, 6u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1))), arg_2.a.x, global1.d, Struct_1(-arg_2.a)), Struct_2(global0[_wgslsmith_index_u32(~(~(~1u)), 6u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), 171f, true))), -min(firstLeadingBit(arg_0.x), 0i), Struct_1(global1.a.a), global1.d));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global0 = array<Struct_1, 6>();
    var var_0 = global1.b;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(175f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.d.b, global1.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.d.b - 1407f))), any(vec4<bool>(true, true, true, false)))))));
    global0 = array<Struct_1, 6>();
    var var_2 = vec2<bool>(!(arg_0.e.b <= -439f), any(vec4<bool>(all(vec3<bool>(false, true, true)), all(vec4<bool>(true, false, true, true)), true, true)) | true);
    return Struct_1(-vec4<i32>(_wgslsmith_clamp_i32(49400i, -23772i ^ u_input.b.x, _wgslsmith_dot_vec2_i32(arg_0.e.d.a.xw, vec2<i32>(-57005i, -1i))), global1.d.a.x, -25600i, _wgslsmith_div_i32(global1.d.a.x, u_input.b.x) << (u_input.a % 32u)));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    global1 = func_1(_wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i, -40269i, 2147483647i), vec3<i32>(-1i ^ u_input.d.x, 1i, _wgslsmith_clamp_i32(global1.a.a.x, arg_1.a.x, 2147483647i)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(54397u, arg_0, u_input.c.x), ~u_input.c) % vec3<u32>(32u))), reverseBits(64527i), func_4(Struct_3(Struct_2(arg_1, _wgslsmith_f_op_f32(trunc(global1.b)), select(0i, -1i, true), Struct_1(vec4<i32>(-37769i, -17646i, -1355i, 1i)), Struct_1(u_input.d)), Struct_1(-arg_3.a), func_4(Struct_3(Struct_2(global0[_wgslsmith_index_u32(2234u, 6u)], global1.b, u_input.d.x, arg_3, Struct_1(vec4<i32>(global1.d.a.x, 2147483647i, -2147483647i, -23267i))), arg_3, global1.e, Struct_2(Struct_1(arg_3.a), global1.b, -8375i, global1.d, Struct_1(vec4<i32>(u_input.d.x, 7706i, 1i, 1i))), Struct_2(Struct_1(vec4<i32>(-1i, 0i, 14184i, 59663i)), -1588f, -2147483647i, Struct_1(vec4<i32>(-1i, 10026i, global1.c, u_input.b.x)), global0[_wgslsmith_index_u32(u_input.c.x, 6u)]))), func_1(arg_1.a.yzy, _wgslsmith_add_i32(global1.e.a.x, 2147483647i), func_4(Struct_3(Struct_2(arg_1, 1000f, 0i, arg_1, Struct_1(u_input.b)), global1.e, global0[_wgslsmith_index_u32(arg_0, 6u)], Struct_2(global1.e, -2101f, arg_3.a.x, global0[_wgslsmith_index_u32(0u, 6u)], Struct_1(u_input.b)), Struct_2(Struct_1(arg_1.a), global1.b, 11315i, Struct_1(vec4<i32>(arg_3.a.x, u_input.b.x, global1.c, -2147483647i)), global1.d))), 37135u).e, Struct_2(Struct_1(u_input.d), global1.b, func_3(vec2<i32>(-7223i, u_input.d.x), vec4<u32>(arg_0, arg_2.x, 29405u, u_input.c.x)).x, arg_1, Struct_1(vec4<i32>(arg_3.a.x, global1.a.a.x, -1i, 0i))))), _wgslsmith_mult_u32(min(arg_0, reverseBits(arg_2.x) ^ ~1u), 0u)).e;
    global0 = array<Struct_1, 6>();
    var var_0 = func_3(_wgslsmith_add_vec2_i32(-arg_1.a.zy, vec2<i32>(arg_3.a.x, -36715i)) << (vec2<u32>(arg_2.x, abs(~1u)) % vec2<u32>(32u)), ~vec4<u32>(firstTrailingBit(abs(23273u)), ~abs(arg_2.x), ~36820u, ~_wgslsmith_dot_vec3_u32(arg_2.zxy, u_input.c))).x;
    let var_1 = func_4(func_1(func_4(func_1(global1.e.a.wxx << (vec3<u32>(u_input.c.x, 16282u, u_input.c.x) % vec3<u32>(32u)), arg_3.a.x, func_1(arg_3.a.wxy, -1i, arg_3, arg_0).e.d, ~arg_0)).a.zxy, arg_1.a.x, func_1(firstTrailingBit(vec3<i32>(u_input.d.x, u_input.b.x, 34757i)), -2147483647i, Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(-16005i, 627i, 2147483647i, 30137i), arg_1.a)), arg_0).c, 33835u));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(251f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_div_f32(1000f, 737f)), global1.b)), _wgslsmith_f_op_f32(floor(global1.b)), -651f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b, 2199f)) + 1953f))));
    return func_1(func_3(global1.d.a.zw, vec4<u32>(u_input.c.x, ~41674u, ~arg_0, min(24815u, arg_0)) & arg_2), _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, -1i), -2147483647i), Struct_1(vec4<i32>(_wgslsmith_mult_i32(countOneBits(65171i), arg_3.a.x >> (arg_2.x % 32u)), _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, -1i), -u_input.d.x), arg_3.a.x, -1i)), ~u_input.c.x).d;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_1 {
    global0 = array<Struct_1, 6>();
    var var_0 = func_5(u_input.c.x, global1.a, vec4<u32>(u_input.c.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12764u, 52314u, 1u, u_input.a), vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.a)), u_input.c.x) >> (4169u % 32u), 4294967295u, ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(13282u, u_input.a, 1u, 45272u)), vec4<u32>(45040u, 4294967295u, u_input.a, u_input.a))), Struct_1(select(vec4<i32>(_wgslsmith_div_i32(u_input.d.x, 1i), -60246i, ~1i, ~37036i), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.c, global1.d.a.x, arg_1.e.a.x, 1i), global1.a.a, arg_1.a.a), vec4<bool>(arg_0.x, arg_0.x, all(vec4<bool>(true, arg_0.x, arg_0.x, false)), false)))).e;
    var_0 = arg_1.a;
    let var_1 = func_1(u_input.b.zzz, arg_1.a.a.x, Struct_1(u_input.d), u_input.a).d;
    global1 = arg_1;
    return func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(~71249u | _wgslsmith_clamp_u32(u_input.c.x, 1u, u_input.a), _wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.yz), 12531u, u_input.a | 62892u), _wgslsmith_mult_vec4_u32(max(abs(vec4<u32>(41056u, 31356u, u_input.a, 0u)), vec4<u32>(u_input.a, u_input.a, u_input.c.x, u_input.a) >> (vec4<u32>(u_input.a, 2562u, u_input.c.x, 4294967295u) % vec4<u32>(32u))), ~vec4<u32>(1u, 2627u, u_input.c.x, 0u))), Struct_1(((vec4<i32>(14291i, 0i, var_1.d.a.x, -2147483647i) | u_input.d) << ((vec4<u32>(u_input.c.x, 20551u, u_input.a, u_input.a) >> (vec4<u32>(0u, u_input.a, 4294967295u, 51784u) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (abs(vec4<u32>(1u, 36188u, 10600u, u_input.a) ^ vec4<u32>(9778u, 0u, u_input.a, 94256u)) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(4294967295u), 1u, ~4364u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 45074u, u_input.c.x, 12867u))), countOneBits(~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)))), func_1(vec3<i32>(global1.e.a.x, ~0i, func_4(Struct_3(Struct_2(arg_1.e, 136f, 1i, Struct_1(vec4<i32>(arg_1.c, -2147483647i, var_1.d.a.x, var_1.a.a.x)), Struct_1(vec4<i32>(global1.a.a.x, 0i, var_0.a.x, -1i))), Struct_1(vec4<i32>(1i, -2147483647i, u_input.b.x, -22467i)), Struct_1(global1.d.a), Struct_2(global1.a, arg_1.b, var_0.a.x, var_1.a, var_1.a), var_1)).a.x), abs(global1.c), func_1(vec3<i32>(_wgslsmith_mult_i32(global1.e.a.x, -2147483647i), select(var_0.a.x, -2147483647i, true), 26339i), _wgslsmith_dot_vec3_i32(~arg_1.e.a.wxx, ~vec3<i32>(-1i, 1i, var_0.a.x)), func_4(Struct_3(Struct_2(global0[_wgslsmith_index_u32(0u, 6u)], -1789f, global1.a.a.x, Struct_1(vec4<i32>(-22310i, 2147483647i, -1i, -2147483647i)), Struct_1(global1.d.a)), Struct_1(var_1.a.a), Struct_1(u_input.b), Struct_2(global0[_wgslsmith_index_u32(78243u, 6u)], global1.b, 1i, Struct_1(arg_1.e.a), global0[_wgslsmith_index_u32(39903u, 6u)]), arg_1)), select(1u, 56761u, true)).b, _wgslsmith_dot_vec2_u32(~reverseBits(u_input.c.xz), select(vec2<u32>(40774u, 0u), vec2<u32>(u_input.a, 1u) & vec2<u32>(1u, u_input.c.x), select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, arg_0.x), arg_0.yy)))).a.a).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1170f - global1.b)), global1.b) + vec3<f32>(330f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(671f, -1293f), _wgslsmith_f_op_f32(-337f + global1.b)), -1096f)));
    global1 = Struct_2(func_6(vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), any(vec2<bool>(false, false)), !select(true, true, false), true), func_5(u_input.a, Struct_1(vec4<i32>(global1.d.a.x, global1.d.a.x, global1.a.a.x, u_input.d.x)), vec4<u32>(u_input.a, u_input.c.x, max(0u, u_input.a), ~17301u), func_4(func_1(u_input.b.wzw, global1.d.a.x, global1.a, 0u)))), _wgslsmith_f_op_f32(-106f + global1.b), ~(-func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1633f, global1.b, -1556f, global1.b) + vec4<f32>(697f, global1.b, 243f, global1.b)))), Struct_1(_wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(u_input.b.x, -2147483647i, ~(-1i), global1.a.a.x))), func_6(vec4<bool>(true, true, true, true), func_1(vec3<i32>(2147483647i, u_input.b.x, global1.c) | -u_input.d.xyx, select(firstLeadingBit(u_input.d.x), u_input.d.x, true), func_4(Struct_3(Struct_2(global0[_wgslsmith_index_u32(1u, 6u)], -1000f, global1.e.a.x, Struct_1(u_input.b), global0[_wgslsmith_index_u32(0u, 6u)]), global1.e, global1.d, Struct_2(Struct_1(u_input.b), -819f, 235i, global0[_wgslsmith_index_u32(u_input.c.x, 6u)], Struct_1(global1.d.a)), Struct_2(global1.e, 467f, global1.d.a.x, global0[_wgslsmith_index_u32(4294967295u, 6u)], global1.a))), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.a, 13874u, u_input.c.x)) << (min(0u, u_input.a) % 32u)).e));
    global0 = array<Struct_1, 6>();
    var var_1 = func_1(_wgslsmith_add_vec3_i32(global1.e.a.xxz, func_3(abs(abs(u_input.b.yz)), vec4<u32>(select(1u, 12312u, true), u_input.a, u_input.c.x, u_input.c.x))), -func_2(vec4<f32>(-1308f, -1040f, global1.b, _wgslsmith_f_op_f32(-global1.b))), global1.e, 10776u ^ u_input.a).a.b;
    let var_2 = func_1(vec3<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(global1.e.a.xyy, u_input.b.wzz) | global1.a.a.x, 44396i), -56610i, Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(global1.a.a.x | global1.e.a.x, u_input.b.x, _wgslsmith_sub_i32(-1i, u_input.d.x), 36270i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, global1.c, global1.d.a.x, 1385i) ^ global1.a.a, vec4<i32>(-8677i, 33902i, u_input.b.x, global1.a.a.x)))), 56629u);
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-185f - var_2.d.b), _wgslsmith_f_op_f32(func_5(0u, func_4(Struct_3(Struct_2(global1.a, -1154f, u_input.b.x, var_2.b, global1.a), var_2.d.a, Struct_1(vec4<i32>(-14549i, global1.e.a.x, -14212i, var_2.e.d.a.x)), Struct_2(Struct_1(var_2.d.a.a), global1.b, global1.e.a.x, Struct_1(u_input.b), Struct_1(vec4<i32>(44570i, u_input.b.x, global1.d.a.x, global1.d.a.x))), Struct_2(Struct_1(var_2.c.a), -336f, 1i, var_2.d.a, global0[_wgslsmith_index_u32(0u, 6u)]))), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, u_input.c.x, 61791u), vec4<u32>(u_input.a, 22009u, u_input.a, 0u)), Struct_1(u_input.d)).b * _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_2.a.b))), -1000f)));
    var var_4 = Struct_2(global0[_wgslsmith_index_u32(u_input.a, 6u)], global1.b, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(var_2.e.d.a.wyz, vec3<i32>(34731i, var_2.e.e.a.x, -7526i)), global1.a.a.x >> (u_input.c.x % 32u), global1.a.a.x) << (vec3<u32>(u_input.a, 0u, _wgslsmith_sub_u32(4294967295u, u_input.a)) % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_i32(global1.e.a.wzw, vec3<i32>(2147483647i, 1376i, 1i)) & var_2.c.a.wzz), var_2.d.a, func_1(~select(func_4(var_2).a.yzw, global1.e.a.wwy, vec3<bool>(true, true, true)), -(~(global1.a.a.x ^ global1.c)), Struct_1(~vec4<i32>(2147483647i, u_input.d.x, var_2.e.c, -1i)), ~(0u & firstLeadingBit(u_input.a))).a.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_0.x, var_4.b, 127f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(318f, -1300f, 750f, global1.b)))))), vec3<u32>(u_input.c.x, _wgslsmith_sub_u32(12270u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 1u, 1u), max(~vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), countOneBits(vec4<u32>(5864u, u_input.a, 4138u, 0u))))), _wgslsmith_f_op_f32(952f * var_4.b), _wgslsmith_f_op_vec2_f32(floor(var_0.xx)));
}

