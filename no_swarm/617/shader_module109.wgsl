struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(815f, 1387f, 1439f);

var<private> global1: Struct_2;

var<private> global2: array<i32, 17>;

var<private> global3: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: bool, arg_3: f32) -> vec2<f32> {
    global4 = Struct_1(4294967295u, _wgslsmith_add_vec4_u32(global4.b, min(~(~global1.d.b), min(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global1.c.a, 1u, 51690u), global1.d.b), global4.b))), arg_2, global1.c.d);
    let var_0 = Struct_3(Struct_2(global4.d >> (max(u_input.a, global1.d.a) % 32u), countOneBits(firstLeadingBit(vec3<i32>(-64684i, -1i, global2[_wgslsmith_index_u32(1u, 17u)]) & global1.b)), global1.c, global1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-607f, arg_1.x), arg_1, vec2<bool>(arg_2, global1.d.c))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, global1.e.x))))), !(!global4.c), all(vec2<bool>(~4294967295u > global4.a, true)), global1.c);
    var var_1 = var_0.a;
    var var_2 = select(vec2<bool>(global1.c.c | !all(vec2<bool>(var_1.d.c, arg_2)), !select(var_1.c.c & false, !global4.c, all(vec2<bool>(true, false)))), select(vec2<bool>(var_0.c & false, false & global4.c), vec2<bool>(global4.c, max(global1.c.d, -1i) >= -5957i), !select(select(vec2<bool>(global1.c.c, var_0.b), vec2<bool>(true, false), var_1.c.c), vec2<bool>(global4.c, false), !vec2<bool>(false, var_0.b))), !select(vec2<bool>(!var_1.c.c, true), select(!vec2<bool>(false, global1.c.c), vec2<bool>(true, true), true), !select(vec2<bool>(global4.c, global4.c), vec2<bool>(var_1.d.c, var_1.d.c), true)));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-857f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.x) - _wgslsmith_f_op_f32(f32(-1f) * -1547f))))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(841f, global0.x), vec2<f32>(var_3, arg_3)))))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.x))))))) * _wgslsmith_f_op_vec2_f32(-arg_1));
}

fn func_2() -> i32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(37520i, ~(-15844i), -2147483647i & global1.d.d, global4.d), _wgslsmith_mult_vec4_i32(vec4<i32>(21269i, global1.a, -19842i, 25498i), select(vec4<i32>(global1.b.x, global1.a, -19700i, -1i), vec4<i32>(global1.c.d, -30418i, global2[_wgslsmith_index_u32(4294967295u, 17u)], -1i), global4.c))), global1.b, global1.c, global1.c, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(377f, global1.e.x, 500f, global1.e.x)), vec2<f32>(-366f, global0.x), global4.d <= ~global2[_wgslsmith_index_u32(u_input.a, 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(130f - global0.x) * _wgslsmith_f_op_f32(1353f * global1.e.x))))), any(vec2<bool>(select(any(vec2<bool>(global1.d.c, global4.c)), global4.a < global4.a, true), global1.d.c)), any(global3[_wgslsmith_index_u32(select(~(~30813u), ~select(u_input.a, 1u, true), any(vec4<bool>(false, true, global4.c, global4.c)) || global4.c), 19u)]), global1.d);
    let var_1 = _wgslsmith_f_op_vec2_f32(-global0.yy);
    var var_2 = vec3<u32>(~(max(_wgslsmith_dot_vec4_u32(vec4<u32>(4928u, global4.b.x, 22236u, 20442u), var_0.d.b), ~var_0.a.c.a) >> (firstLeadingBit(~0u) % 32u)), _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.d.b.x, _wgslsmith_dot_vec2_u32(global4.b.yw, var_0.d.b.zw)), _wgslsmith_mod_u32(max(1u, 0u), firstTrailingBit(u_input.a)), 4294967295u)), 0u);
    return 13098i;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> u32 {
    global3 = array<vec3<bool>, 19>();
    let var_0 = vec2<bool>(any(select(select(!vec4<bool>(false, arg_1, false, true), !vec4<bool>(global4.c, true, false, global4.c), select(vec4<bool>(global1.c.c, arg_1, true, false), vec4<bool>(global1.c.c, arg_0.c.c, true, global1.d.c), false)), !select(vec4<bool>(false, true, true, global1.c.c), vec4<bool>(true, global4.c, global1.d.c, global1.d.c), vec4<bool>(global1.c.c, arg_1, true, global4.c)), vec4<bool>(58572u < u_input.a, global1.c.c, !global4.c, true))), all(vec4<bool>(any(select(vec2<bool>(false, global1.d.c), vec2<bool>(false, false), arg_0.c.c)), false, arg_0.d.c, arg_0.c.c)));
    var var_1 = global4.c;
    global1 = arg_0;
    let var_2 = Struct_1(min(global1.c.b.x | abs(_wgslsmith_mult_u32(global4.a, u_input.a)), _wgslsmith_dot_vec4_u32(abs(global4.b << (global4.b % vec4<u32>(32u))), arg_0.d.b)), global1.c.b, true, -2147483647i);
    return ~(~(~1u));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = -2147483647i;
    var_0 = global1.b.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.x, -2249f, global0.x, global1.e.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.x, global1.e.x, 666f, global0.x) * vec4<f32>(715f, global1.e.x, global1.e.x, -2518f))))))));
    var var_2 = func_4(Struct_2(func_2(), vec3<i32>(_wgslsmith_mod_i32(~1i, -global2[_wgslsmith_index_u32(global1.c.b.x, 17u)]), -43248i, firstTrailingBit(reverseBits(1348i))), Struct_1(global1.c.b.x, global1.c.b, all(!vec2<bool>(false, global4.c)), _wgslsmith_add_i32(-arg_1.x, 0i | arg_0.d)), Struct_1(min(~arg_2, 4294967295u), firstLeadingBit(arg_0.b), _wgslsmith_f_op_f32(round(global0.x)) <= _wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(218f, -139f, var_1.x, 150f), global0.xy, arg_0.c, global1.e.x)).x, -(~(-45209i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))), !all(select(select(vec2<bool>(true, false), vec2<bool>(true, arg_0.c), vec2<bool>(false, global1.d.c)), !vec2<bool>(false, global4.c), vec2<bool>(global4.c, arg_0.c))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-696f)));
    return Struct_1(_wgslsmith_clamp_u32(0u, ~firstTrailingBit(arg_0.b.x), min(_wgslsmith_dot_vec4_u32(global1.c.b, firstTrailingBit(arg_0.b)), 1u >> (global1.c.b.x % 32u))), abs(arg_0.b), any(vec4<bool>(arg_0.c, true, true, global0.x >= _wgslsmith_div_f32(-612f, var_1.x))), 33813i);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -190f);
    let var_1 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(1u & firstTrailingBit(0u), 17u)], ~arg_2.a.b, arg_3, arg_2.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(625f, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1462f, 433f) - vec2<f32>(-292f, -363f)))))), !any(vec4<bool>(global4.c, arg_2.b, global4.c, arg_3.c)), false, func_1(global1.d, vec3<i32>(1i, global2[_wgslsmith_index_u32(~u_input.a, 17u)], ~global1.b.x), ~max(63616u, ~1u)));
    let var_2 = !select(!(!select(vec4<bool>(arg_1.c, true, false, false), vec4<bool>(global4.c, arg_1.c, true, arg_1.c), vec4<bool>(global4.c, true, false, true))), select(select(!vec4<bool>(false, global1.c.c, false, false), select(vec4<bool>(var_1.d.c, arg_1.c, var_1.a.d.c, false), vec4<bool>(arg_2.b, global4.c, arg_3.c, arg_2.c), var_1.a.c.c), select(vec4<bool>(false, false, true, global1.c.c), vec4<bool>(arg_2.b, true, true, var_1.b), var_1.a.c.c)), vec4<bool>(true, false, true, false), vec4<bool>(true, arg_3.c, true, true)), select(!(!vec4<bool>(global1.c.c, arg_2.a.d.c, true, global4.c)), vec4<bool>(func_1(global1.c, vec3<i32>(arg_2.a.d.d, -1i, var_1.d.d), arg_2.a.d.a).c, select(arg_3.c, true, false), global1.d.c, !arg_1.c), vec4<bool>(arg_2.a.c.c, any(vec2<bool>(true, global1.d.c)), true, false)));
    let var_3 = 4294967295u;
    global2 = array<i32, 17>();
    return ~_wgslsmith_mult_vec4_i32(~(-max(vec4<i32>(global4.d, 37148i, arg_3.d, 2147483647i), vec4<i32>(-10170i, global2[_wgslsmith_index_u32(4294967295u, 17u)], arg_1.d, 35419i))), countOneBits((vec4<i32>(0i, global1.c.d, 2147483647i, global2[_wgslsmith_index_u32(1u, 17u)]) << (arg_1.b % vec4<u32>(32u))) | reverseBits(vec4<i32>(var_1.a.c.d, global2[_wgslsmith_index_u32(1u, 17u)], global4.d, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_dot_vec4_i32(~vec4<i32>(~global4.d, global2[_wgslsmith_index_u32(global1.c.a, 17u)], -16157i | global1.c.d, _wgslsmith_clamp_i32(global1.c.d, global1.b.x, global1.a)), _wgslsmith_sub_vec4_i32(func_5(533f, func_1(global1.c, global1.b, 1u), Struct_3(Struct_2(1i, vec3<i32>(17350i, 2147483647i, 2147483647i), global1.d, global1.c, vec2<f32>(global1.e.x, global0.x)), global4.c, false, Struct_1(26529u, global4.b, global4.c, 21071i)), func_1(global1.c, vec3<i32>(9550i, 24079i, -2147483647i), u_input.a)), max(vec4<i32>(-1i, global4.d, -48820i, global4.d), vec4<i32>(global1.b.x, 0i, global1.c.d, global4.d)) << ((vec4<u32>(global4.a, global4.b.x, 39002u, 60230u) ^ vec4<u32>(13616u, 0u, 79942u, global4.a)) % vec4<u32>(32u))));
    let var_1 = ~_wgslsmith_mod_vec2_u32(~global4.b.wx, vec2<u32>(59619u, u_input.a));
    let var_2 = Struct_2(_wgslsmith_add_i32(firstTrailingBit(global1.b.x), -(i32(-1i) * -2147483647i)), vec3<i32>(global4.d, func_1(global1.c, firstLeadingBit(vec3<i32>(58681i, global4.d, global2[_wgslsmith_index_u32(u_input.a, 17u)])), _wgslsmith_div_u32(var_1.x, 4294967295u)).d >> (abs(global1.c.b.x) % 32u), 1i & ~_wgslsmith_dot_vec2_i32(global1.b.yy, vec2<i32>(global1.a, global1.d.d))), global1.d, func_1(func_1(global1.d, -vec3<i32>(global1.d.d, global4.d, global2[_wgslsmith_index_u32(global4.b.x, 17u)]), u_input.a), select(global1.b, global1.b, global1.c.c), min(func_1(Struct_1(14706u, vec4<u32>(var_1.x, 1u, 44092u, 1u), global4.c, global2[_wgslsmith_index_u32(global1.c.a, 17u)]), vec3<i32>(-1i, -1i, global2[_wgslsmith_index_u32(20664u, 17u)]), var_1.x).a, _wgslsmith_add_u32(4294967295u, u_input.a)) ^ 79952u), global0.yy);
    var var_3 = var_2;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(111f, -1465f, global1.e.x) - vec3<f32>(-1456f, global0.x, global1.e.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(580f, -845f, global0.x) * vec3<f32>(var_2.e.x, 1319f, 772f))))));
    let var_4 = ~(-global1.b.x) & -1i;
    var var_5 = !select(!select(!vec2<bool>(global4.c, global1.c.c), vec2<bool>(true, global1.d.c), !vec2<bool>(var_3.d.c, false)), vec2<bool>(func_1(func_1(Struct_1(141u, vec4<u32>(65274u, u_input.a, 73380u, var_1.x), var_3.c.c, 32403i), var_3.b, var_2.d.a), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -21509i, -6181i), var_2.b), 88234u).c, all(select(vec2<bool>(var_2.c.c, global4.c), vec2<bool>(false, global4.c), vec2<bool>(true, false)))), any(!vec2<bool>(global4.c, var_2.c.c)) || false);
    var var_6 = var_2.e.x;
    var_0 = var_4 & global2[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.c.a, 107131u, 0u), vec4<u32>(global1.c.b.x, u_input.a, var_1.x, global1.d.a)), var_3.c.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(31990u, global4.a, 1u), abs(vec3<u32>(0u, global1.c.b.x, u_input.a)))) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(24228u, ~1u, _wgslsmith_div_u32(global4.b.x, 46685u), 0u), ~vec4<u32>(243u, var_3.d.a, var_2.d.b.x, 4294967295u)), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_2.e.x, global1.e.x, var_3.e.x), vec4<f32>(780f, var_3.e.x, 428f, 624f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(112f, 442f, var_3.e.x, -155f)))))), countOneBits(_wgslsmith_clamp_u32(min(_wgslsmith_dot_vec2_u32(var_3.c.b.xw, global4.b.xz), ~10698u), _wgslsmith_dot_vec2_u32(vec2<u32>(4852u, var_3.c.a), select(vec2<u32>(var_3.c.a, u_input.a), global1.d.b.wx, vec2<bool>(global1.c.c, false))), _wgslsmith_dot_vec2_u32(var_2.c.b.yx, var_3.d.b.xx))), var_4, _wgslsmith_div_vec2_i32(select(vec2<i32>(global1.d.d << (var_2.c.a % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(var_4, var_4, global1.c.d), vec3<i32>(-67176i, var_2.a, 47386i))), ~min(vec2<i32>(global4.d, -1i), global1.b.zx), select(select(vec2<bool>(true, true), vec2<bool>(var_3.c.c, false), true), !vec2<bool>(global4.c, true), any(vec3<bool>(var_2.d.c, false, true)))), -vec2<i32>(-var_4, ~global1.b.x)), _wgslsmith_sub_u32(~0u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~0u, 4294967295u), var_1.x, 0u)));
}

