struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec2<u32>(108598u, 1u), vec3<i32>(-9750i, 64516i, 1i), vec4<f32>(175f, 423f, -1374f, 883f), vec3<i32>(-1i, 0i, -15124i), Struct_1(vec4<bool>(true, true, false, false), -30002i, 2117f));

var<private> global1: vec3<u32> = vec3<u32>(42571u, 4294967295u, 1u);

var<private> global2: Struct_4;

var<private> global3: array<vec2<f32>, 14>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = vec4<i32>(reverseBits(13456i), -global2.e, firstLeadingBit(i32(-1i) * -reverseBits(u_input.b.x)), select(0i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-31311i, u_input.b.x), abs(-2147483647i)), false) ^ 2147483647i);
    global3 = array<vec2<f32>, 14>();
    global0 = Struct_5(vec2<u32>(_wgslsmith_clamp_u32(72459u, ~0u, 31436u) << (u_input.a % 32u), ~_wgslsmith_div_u32(~global1.x, 1u)), -((abs(global0.b) & _wgslsmith_add_vec3_i32(global0.b, vec3<i32>(24838i, 1i, -2147483647i))) << (~vec3<u32>(global2.c, global1.x, global0.a.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(643f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -505f), -854f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global0.c.x), true)), -301f))), -(~vec3<i32>(~4301i, ~var_0.x, -32856i)), global0.e);
    return any(!vec3<bool>(true, !(!global0.e.a.x), true));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_1(arg_0.a, _wgslsmith_div_i32(arg_0.b, arg_3.x), 1000f);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-600f, _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(-arg_0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c.xz + global0.c.ww))))));
    let var_2 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(-1112f + _wgslsmith_f_op_f32(abs(-1360f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, 1238f)) - _wgslsmith_f_op_f32(arg_0.c * -1719f)), global0.e.a.x, !func_3(-1123f), true), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_1.zyx, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)) << (29437u % 32u), _wgslsmith_dot_vec4_i32(select(vec4<i32>(67915i, 1i, 1i, arg_1.x), arg_1, vec4<bool>(false, global0.e.a.x, false, global0.e.a.x)), arg_1), min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.e, global0.e.b, global0.b.x), vec3<i32>(global2.e, -2147483647i, 56125i))), firstLeadingBit(u_input.b.x)), vec4<i32>(-35112i, -42682i | var_0.b, _wgslsmith_sub_i32(max(u_input.b.x, arg_3.x), abs(-2147483647i)), u_input.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1166f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-arg_0.c))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c.wwz)))));
    var var_4 = Struct_5(countOneBits(global0.a) << ((_wgslsmith_div_vec2_u32(~global0.a, firstTrailingBit(vec2<u32>(27880u, 4294967295u))) >> (~global0.a % vec2<u32>(32u))) % vec2<u32>(32u)), global0.b, global0.c, vec3<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-2088i, 18832i, 0i), vec3<i32>(arg_0.b, global0.d.x, var_0.b)), u_input.b.x), _wgslsmith_dot_vec2_i32((global0.b.zx & arg_3) >> (max(vec2<u32>(94179u, arg_2), global0.a) % vec2<u32>(32u)), select(vec2<i32>(global0.d.x, arg_0.b), vec2<i32>(34471i, var_2.b), arg_0.a.x)), ~global2.e), Struct_1(var_0.a, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f))));
    return Struct_3(_wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(13577u, 4294967295u), global0.a) & vec2<u32>(global0.a.x, countOneBits(7059u)), vec2<u32>(25073u, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, 0u), ~36300u))), vec3<u32>(_wgslsmith_sub_u32(~abs(1u), ~_wgslsmith_mult_u32(0u, arg_2)), ~(~(~var_4.a.x)), global1.x), 1f, Struct_2(Struct_1(select(select(arg_0.a, var_2.a, vec4<bool>(global0.e.a.x, false, true, global0.e.a.x)), select(vec4<bool>(global0.e.a.x, false, true, false), vec4<bool>(var_2.a.x, var_0.a.x, false, var_2.a.x), var_2.a.x), global0.e.a), 44742i, _wgslsmith_f_op_f32(-var_3.x))), var_4.e.c);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1594f, arg_1.d.a.c, _wgslsmith_f_op_f32(floor(672f)), -1022f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.d.a.c, global0.c.x, global0.e.c, arg_0.x))) * vec4<f32>(arg_1.d.a.c, global0.c.x, arg_0.x, -294f))))));
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(~u_input.b.x, abs(reverseBits(-u_input.b.x))), abs(arg_2.e) & (i32(-1i) * -1i));
    let var_2 = max(_wgslsmith_dot_vec4_u32(vec4<u32>(func_2(Struct_1(vec4<bool>(global0.e.a.x, arg_1.d.a.a.x, arg_1.d.a.a.x, arg_1.d.a.a.x), var_1.x, 465f), vec4<i32>(1i, -1i, -1i, arg_1.d.a.b), u_input.a, vec2<i32>(47892i, var_1.x)).b.x, ~4294967295u, 4294967295u, 8519u >> (global1.x % 32u)), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(0u, global2.a, global1.x, arg_1.b.x), vec4<u32>(4294967295u, 45280u, 4294967295u, 63516u)), vec4<u32>(arg_1.b.x, arg_2.a, 12272u, 1u) << (vec4<u32>(arg_2.d, global2.b, 80574u, arg_1.b.x) % vec4<u32>(32u)), ~vec4<u32>(arg_1.b.x, global0.a.x, 33912u, 1u))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global2.d, global0.a.x, arg_2.c, 1u) << (vec4<u32>(1u, global0.a.x, global2.d, u_input.a) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 18848u, 14042u, arg_1.a.x), vec4<u32>(global1.x, u_input.a, 35721u, arg_2.d)) ^ vec4<u32>(1u, 4406u, global2.a, 4294967295u))) > global1.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c + global0.c))));
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.c, var_0))))));
    return func_2(func_2(Struct_1(select(select(global0.e.a, arg_1.d.a.a, vec4<bool>(arg_1.d.a.a.x, arg_1.d.a.a.x, true, false)), vec4<bool>(true, true, global0.e.a.x, false), global0.e.a), global2.e, -1162f), countOneBits(abs(-vec4<i32>(47250i, 2694i, global0.e.b, u_input.b.x))), ~firstLeadingBit(arg_1.a.x), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-1i, -15894i)) & _wgslsmith_add_vec2_i32(global0.b.zz, vec2<i32>(global0.b.x, arg_2.e)), ~global0.d.zz)).d.a, _wgslsmith_div_vec4_i32(min(firstLeadingBit(-vec4<i32>(arg_1.d.a.b, 2147483647i, -1i, global0.d.x)), vec4<i32>(i32(-1i) * -1i, global2.e, 5138i, -6069i)), vec4<i32>(~u_input.b.x, u_input.b.x, arg_2.e >> (global0.a.x % 32u), arg_2.e) | firstLeadingBit(-vec4<i32>(-25571i, global2.e, -2147483647i, global0.e.b))), 1u, vec2<i32>(u_input.b.x, ~2147483647i ^ var_1.x)).d.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(global0.c - global0.c);
    let var_1 = ~(~vec3<u32>(4294967295u, abs(~1u), 1u));
    global2 = arg_1;
    var var_2 = -2147483647i;
    let var_3 = Struct_3(abs(vec2<u32>(~3523u, ~global2.b | abs(global0.a.x))), var_1, -433f, Struct_2(func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c, global0.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 503f) - global0.c.zy), true)), func_2(Struct_1(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_3, arg_0.x), global2.e, 969f), select(vec4<i32>(global2.e, arg_2.b, arg_1.e, -33229i), vec4<i32>(arg_2.b, global2.e, global2.e, global2.e), global0.e.a), 10619u, abs(global0.d.xx)), Struct_4(~global0.a.x, countOneBits(1u), ~u_input.a, var_1.x & arg_1.c, min(arg_1.e, u_input.b.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - arg_2.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c, global0.c.x) - global0.c.x))), _wgslsmith_f_op_f32(trunc(global0.e.c)))));
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, 54725u, select(1u, global1.x, arg_3)), ~vec4<u32>(arg_1.d, u_input.a, 1u, var_3.a.x)) >> (~firstTrailingBit(var_3.a.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~9321i;
    var var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, 1i, 1i, 26664i)), -firstLeadingBit(max(vec4<i32>(0i, u_input.b.x, 31439i, -2147483647i), ~vec4<i32>(global0.d.x, u_input.b.x, 7724i, global0.b.x))));
    let var_2 = Struct_3(~vec2<u32>(max(global1.x, func_1(vec3<bool>(global0.e.a.x, false, false), Struct_4(u_input.a, 26894u, 12883u, 29196u, -1i), Struct_1(global0.e.a, var_1.x, global0.c.x), global0.e.a.x)), global2.b), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(~vec3<u32>(0u, 4294967295u, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 84440u, global1.x), min(vec3<u32>(7054u, 30348u, 1u), vec3<u32>(u_input.a, global2.b, 1u)), vec3<u32>(37895u, global0.a.x, 4294967295u))), ~vec3<u32>(79154u, global0.a.x, 4294967295u) ^ (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 38634u, u_input.a), vec3<u32>(0u, 1u, 16014u)) ^ ~vec3<u32>(128905u, 4294967295u, 43388u))), 1620f, func_2(global0.e, select(vec4<i32>(firstTrailingBit(-1i), _wgslsmith_add_i32(u_input.b.x, global0.b.x), ~global2.e, ~global0.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, var_1.x, var_1.x, global2.e), vec4<i32>(-1752i, var_1.x, var_1.x, -39557i)) << ((vec4<u32>(global0.a.x, global2.a, global2.b, global0.a.x) << (vec4<u32>(13707u, 30903u, u_input.a, global1.x) % vec4<u32>(32u))) % vec4<u32>(32u)), true), min(countOneBits(func_1(global0.e.a.zyx, Struct_4(global0.a.x, global1.x, global2.d, u_input.a, 1i), Struct_1(vec4<bool>(global0.e.a.x, false, true, global0.e.a.x), u_input.b.x, -1564f), true)), countOneBits(~1u)), min(vec2<i32>(-13959i, _wgslsmith_dot_vec4_i32(vec4<i32>(9594i, 16996i, var_1.x, -3683i), vec4<i32>(global0.e.b, var_1.x, var_1.x, 1i))), select(~vec2<i32>(-31656i, 0i), firstTrailingBit(global0.d.zy), func_2(global0.e, vec4<i32>(global0.e.b, 31038i, 0i, u_input.b.x), global2.b, vec2<i32>(15306i, -2147483647i)).d.a.a.wx))).d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1027f, 1617f)), _wgslsmith_f_op_f32(-915f + _wgslsmith_f_op_f32(ceil(global0.e.c))))));
    global1 = vec3<u32>(_wgslsmith_mod_u32(reverseBits(~(global2.d ^ 4294967295u)), 10461u), global0.a.x, _wgslsmith_dot_vec2_u32(global1.zx, max(~(vec2<u32>(0u, 84730u) | global1.yx), firstLeadingBit(var_2.a) << (_wgslsmith_add_vec2_u32(global0.a, vec2<u32>(var_2.b.x, 33170u)) % vec2<u32>(32u)))));
    var var_3 = Struct_5(min(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_2.a.x), ~var_2.a), vec2<u32>(30778u, ~_wgslsmith_clamp_u32(58726u, var_2.b.x, 14904u))), reverseBits(_wgslsmith_div_vec3_i32(~_wgslsmith_div_vec3_i32(var_1.xyz, var_1.xyw), -firstLeadingBit(global0.d))), vec4<f32>(_wgslsmith_f_op_f32(var_2.c - func_4(vec2<f32>(global0.c.x, global0.e.c), func_2(var_2.d.a, vec4<i32>(global0.b.x, -2147483647i, global2.e, global0.b.x), 1u, u_input.b), Struct_4(global0.a.x, 76484u, 4294967295u, 4571u, var_2.d.a.b)).c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(func_2(Struct_1(global0.e.a, -8348i, -238f), vec4<i32>(0i, -4426i, 54081i, var_2.d.a.b), 9665u, global0.d.xx).c, _wgslsmith_f_op_f32(round(-1000f)), global0.e.a.x && var_2.d.a.a.x)) - _wgslsmith_f_op_f32(-846f * -716f)), global0.c.x, 272f), -(~abs(vec3<i32>(u_input.b.x, -2147483647i, -1i))), func_2(Struct_1(vec4<bool>(false, true, func_4(vec2<f32>(var_2.e, global0.c.x), Struct_3(vec2<u32>(0u, global0.a.x), vec3<u32>(0u, 4294967295u, 0u), var_2.d.a.c, var_2.d, global0.e.c), Struct_4(26560u, 0u, global2.d, 4294967295u, var_2.d.a.b)).a.x, true), select(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.e, 2147483647i, -2147483647i, -40021i), vec4<i32>(-1i, u_input.b.x, -1i, global2.e)), var_1.x, true), var_2.e), min(vec4<i32>(_wgslsmith_add_i32(var_2.d.a.b, -11251i), _wgslsmith_div_i32(var_1.x, global2.e), -var_1.x, max(17873i, u_input.b.x)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.d.x, -2147483647i, u_input.b.x, 2147483647i), vec4<i32>(-1771i, 268i, 2147483647i, u_input.b.x), vec4<i32>(0i, -2147483647i, -1i, global0.e.b))), reverseBits(select(_wgslsmith_mult_u32(32985u, 1u), _wgslsmith_mult_u32(37996u, 0u), global0.e.a.x)), vec2<i32>(1764i, func_4(global3[_wgslsmith_index_u32(var_2.b.x, 14u)], Struct_3(global1.yy, var_2.b, 169f, var_2.d, -162f), Struct_4(global1.x, global2.c, global0.a.x, u_input.a, 33106i)).b)).d.a);
    var var_4 = _wgslsmith_div_vec2_i32(~_wgslsmith_add_vec2_i32(global0.d.xx, (vec2<i32>(2147483647i, 0i) << (vec2<u32>(4294967295u, var_2.b.x) % vec2<u32>(32u))) ^ ~var_1.yz), select(u_input.b, global0.d.yy, vec2<bool>(var_3.e.a.x || !var_2.d.a.a.x, false)));
    let var_5 = func_2(var_3.e, vec4<i32>(1i, var_3.d.x, _wgslsmith_mod_i32(-min(global0.b.x, -1i), _wgslsmith_div_i32(1i, ~u_input.b.x)), ~firstLeadingBit(var_3.d.x)), 0u, -_wgslsmith_clamp_vec2_i32(var_3.d.zy, vec2<i32>(select(12392i, 1i, global0.e.a.x), func_4(vec2<f32>(var_3.e.c, -238f), Struct_3(var_2.a, var_2.b, var_3.c.x, Struct_2(global0.e), var_3.e.c), Struct_4(global2.d, 72778u, u_input.a, 75457u, 30082i)).b), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-31261i, 1i, -12427i, 0i), vec4<i32>(-8889i, var_1.x, var_4.x, var_1.x)), _wgslsmith_sub_i32(u_input.b.x, global2.e))));
    var var_6 = ~(~(max(global0.a.x, firstTrailingBit(var_2.b.x)) << (~_wgslsmith_mult_u32(global0.a.x, 0u) % 32u)));
    let var_7 = func_2(Struct_1(var_2.d.a.a, firstLeadingBit(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-41100i, -1i)), global0.b.xz)), 838f), vec4<i32>(~(min(717i, var_4.x) & ~u_input.b.x), _wgslsmith_mod_i32(-_wgslsmith_sub_i32(var_2.d.a.b, -1i), -(-74471i ^ var_2.d.a.b)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2.d.a.b, -1i), vec3<i32>(var_2.d.a.b, 1i, -1i)) & func_4(vec2<f32>(1627f, -681f), var_2, Struct_4(var_2.a.x, 4294967295u, global1.x, 4294967295u, global2.e)).b), -var_1.x), countOneBits(var_2.b.x << (72864u % 32u)), vec2<i32>(~1i, var_5.d.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.e.c, var_2.d.a.c), vec2<f32>(var_7.c, var_3.e.c)))))), var_7, Struct_4(_wgslsmith_add_u32(~1u, func_2(var_2.d.a, vec4<i32>(var_7.d.a.b, var_1.x, -1i, global2.e), var_2.a.x, u_input.b).a.x), _wgslsmith_dot_vec2_u32(func_2(Struct_1(var_2.d.a.a, 2335i, var_7.e), vec4<i32>(2147483647i, -50375i, -1i, -6820i), 1u, global0.d.zy).a, func_2(Struct_1(var_5.d.a.a, global2.e, var_5.c), vec4<i32>(var_1.x, var_5.d.a.b, -7221i, 2147483647i), var_7.a.x, vec2<i32>(var_4.x, -35217i)).a), ~1u, reverseBits(~var_7.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -32933i, -28375i), vec3<i32>(2147483647i, global2.e, -44097i)))).b, vec4<u32>(~(~(~global0.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.d, var_2.b.x, var_3.a.x, 0u), ~vec4<u32>(1u, 2682u, var_2.b.x, 24657u)), vec4<u32>(global0.a.x, global2.d << (global1.x % 32u), _wgslsmith_add_u32(global2.b, 1u), var_7.b.x)), var_3.a.x, global2.c >> (~_wgslsmith_sub_u32(global0.a.x, 20092u) % 32u)), var_7.b.x, _wgslsmith_f_op_vec4_f32(-var_3.c));
}

