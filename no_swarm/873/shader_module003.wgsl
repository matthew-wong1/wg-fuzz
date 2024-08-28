struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 26>;

var<private> global2: vec3<f32>;

var<private> global3: array<i32, 1> = array<i32, 1>(20365i);

var<private> global4: array<Struct_1, 25>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec4<u32> {
    return abs(~(~(~(~vec4<u32>(34397u, 1u, 0u, 0u)))));
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    global4 = array<Struct_1, 25>();
    var var_0 = select(vec3<bool>((arg_0.e.e.x && arg_0.e.e.x) | !(!arg_0.d.e.x), any(!(!vec3<bool>(true, arg_0.e.e.x, false))), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4294967295u, arg_0.d.d, arg_0.b.d)), ~vec4<u32>(arg_0.d.d, arg_0.d.d, arg_0.b.d, u_input.b)) > _wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a)), select(!vec3<bool>(false, true, select(false, false, true)), arg_0.b.e.xyy, arg_0.e.e.wxy), true);
    global1 = array<Struct_3, 26>();
    global3 = array<i32, 1>();
    let var_1 = abs(select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 58014u, 288u), min(vec4<u32>(arg_0.d.d, u_input.a.x, u_input.a.x, arg_0.b.d), vec4<u32>(1u, u_input.a.x, 53880u, arg_0.b.d))), arg_0.b.d, ~reverseBits(u_input.c.x), _wgslsmith_div_u32(~arg_0.d.d, _wgslsmith_div_u32(4294967295u, u_input.b))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - arg_0.e.a.a.x) - arg_0.e.c.a.x)), !arg_0.e.e));
    return arg_0.d;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    var var_0 = Struct_3(arg_1.e.x, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1084f, 1819f, arg_2.a.x, -482f) - vec4<f32>(212f, arg_3.x, -1000f, -1009f)) + _wgslsmith_f_op_vec4_f32(floor(arg_1.a.a)))), arg_1.b, arg_1.c, 13265u, !vec4<bool>(any(arg_1.e), global2.x > -393f, func_2(Struct_3(arg_1.e.x, arg_1, vec2<bool>(arg_1.e.x, arg_1.e.x), arg_1, arg_1)).e.x, true)), !arg_1.e.ww, Struct_2(global4[_wgslsmith_index_u32(u_input.b, 25u)], global3[_wgslsmith_index_u32(arg_1.d, 1u)], arg_2, u_input.b, !arg_1.e), Struct_2(arg_2, select(func_2(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 26u)]).b, _wgslsmith_dot_vec4_i32(max(vec4<i32>(-7938i, 2147483647i, 56823i, -1404i), vec4<i32>(arg_1.b, global3[_wgslsmith_index_u32(1u, 1u)], 10736i, -1i)), vec4<i32>(0i, 0i, arg_1.b, 1i) << (vec4<u32>(8813u, arg_1.d, 1940u, arg_1.d) % vec4<u32>(32u))), arg_1.e.x), arg_1.c, arg_1.d, arg_1.e));
    global2 = _wgslsmith_f_op_vec3_f32(-arg_0);
    global3 = array<i32, 1>();
    let var_1 = global1[_wgslsmith_index_u32(var_0.d.d, 26u)];
    global4 = array<Struct_1, 25>();
    return _wgslsmith_add_i32(var_0.d.b, max(1i << (countOneBits(~55011u) % 32u), 0i));
}

fn func_5(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_3 {
    let var_0 = ~u_input.a.zx;
    var var_1 = 4294967295u >= (arg_2.b.d ^ (u_input.c.x << (55778u % 32u)));
    var var_2 = true;
    var var_3 = vec4<u32>(arg_2.b.d, 2319u, max(61455u, _wgslsmith_dot_vec4_u32(vec4<u32>(31910u, var_0.x, arg_0.x, 4294967295u) | vec4<u32>(72581u, arg_2.b.d, var_0.x, 43840u), ~vec4<u32>(arg_2.e.d, var_0.x, var_0.x, 37650u))), _wgslsmith_mult_u32(abs(24966u), ~func_3(global2.x).x)) | (vec4<u32>(_wgslsmith_dot_vec2_u32(~var_0, u_input.c.zz), ~(~arg_2.d.d), 1u, 1u) << (select(vec4<u32>(1u, 62u, arg_2.b.d, var_0.x), countOneBits(vec4<u32>(0u, 7084u, 1u, 13690u)), true) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(var_3.x, arg_2.d.d, u_input.a.x, arg_2.e.d)), func_3(_wgslsmith_f_op_f32(-global2.x))), arg_0.x) << (~_wgslsmith_mult_u32(u_input.c.x, func_3(_wgslsmith_f_op_f32(-global2.x)).x) % 32u);
    return Struct_3(true, func_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(1u, _wgslsmith_add_u32(9190u, 0u), all(arg_3.wyz)), firstLeadingBit(arg_0.x) >> (_wgslsmith_mult_u32(13314u, var_0.x) % 32u)), 26u)]), vec2<bool>(!((u_input.b | arg_0.x) == abs(25890u)), any(select(arg_2.d.e.xy, vec2<bool>(true, true), arg_3.x)) | any(vec4<bool>(arg_2.c.x, false, true, arg_2.c.x))), func_2(global1[_wgslsmith_index_u32(~arg_2.d.d, 26u)]), Struct_2(func_2(arg_2).a, arg_2.e.b, func_2(Struct_3(true, func_2(Struct_3(arg_2.b.e.x, Struct_2(arg_2.d.c, arg_2.d.b, arg_2.e.c, u_input.b, vec4<bool>(arg_3.x, arg_3.x, true, arg_2.b.e.x)), vec2<bool>(arg_2.c.x, arg_2.d.e.x), Struct_2(arg_2.e.a, arg_1, global4[_wgslsmith_index_u32(var_0.x, 25u)], var_3.x, arg_2.d.e), Struct_2(global4[_wgslsmith_index_u32(11337u, 25u)], 1i, Struct_1(vec4<f32>(250f, global2.x, -699f, global2.x)), 0u, arg_3))), !vec2<bool>(false, arg_2.e.e.x), func_2(Struct_3(false, arg_2.b, vec2<bool>(false, false), arg_2.b, Struct_2(Struct_1(arg_2.e.c.a), arg_2.b.b, global4[_wgslsmith_index_u32(u_input.a.x, 25u)], 1u, vec4<bool>(arg_3.x, false, true, true)))), Struct_2(global4[_wgslsmith_index_u32(1u, 25u)], 0i, Struct_1(arg_2.d.c.a), var_3.x, vec4<bool>(arg_2.e.e.x, true, false, arg_2.a)))).c, func_2(Struct_3(arg_2.a, Struct_2(global4[_wgslsmith_index_u32(var_3.x, 25u)], arg_2.e.b, global4[_wgslsmith_index_u32(arg_0.x, 25u)], var_0.x, vec4<bool>(true, arg_3.x, arg_3.x, false)), func_2(global1[_wgslsmith_index_u32(0u, 26u)]).e.yw, arg_2.b, arg_2.d)).d, func_2(arg_2).e));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    var var_0 = func_5(_wgslsmith_mult_vec2_u32(u_input.c.yx ^ u_input.c.zy, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.a.x) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), u_input.c.yy), firstLeadingBit(~vec2<u32>(u_input.a.x, u_input.c.x)), ~(~vec2<u32>(4294967295u, 4294967295u)))), i32(-1i) * -3557i, Struct_3(2147483647i < func_4(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, -341f, -818f), vec3<f32>(global2.x, global2.x, global2.x)), func_2(Struct_3(false, Struct_2(global4[_wgslsmith_index_u32(u_input.c.x, 25u)], 0i, global4[_wgslsmith_index_u32(u_input.c.x, 25u)], u_input.b, vec4<bool>(true, true, false, true)), vec2<bool>(true, false), Struct_2(global4[_wgslsmith_index_u32(0u, 25u)], arg_0.x, global4[_wgslsmith_index_u32(0u, 25u)], 34328u, vec4<bool>(true, true, true, false)), Struct_2(global4[_wgslsmith_index_u32(98174u, 25u)], arg_0.x, global4[_wgslsmith_index_u32(u_input.b, 25u)], 0u, vec4<bool>(false, true, true, false)))), func_2(global1[_wgslsmith_index_u32(u_input.c.x, 26u)]).c, global2.yx), func_2(global1[_wgslsmith_index_u32(0u, 26u)]), vec2<bool>(select(select(true, true, true), all(vec4<bool>(true, false, true, false)), true), false), Struct_2(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(16347u, 4294967295u)), 25u)], _wgslsmith_dot_vec4_i32(arg_0, firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, global3[_wgslsmith_index_u32(2765u, 1u)], 2147483647i))), func_2(Struct_3(false, Struct_2(Struct_1(vec4<f32>(-628f, global2.x, 619f, 1296f)), -33442i, Struct_1(vec4<f32>(global2.x, -410f, 902f, global2.x)), u_input.b, vec4<bool>(false, false, true, false)), vec2<bool>(true, true), Struct_2(global4[_wgslsmith_index_u32(6147u, 25u)], 0i, global4[_wgslsmith_index_u32(u_input.b, 25u)], u_input.b, vec4<bool>(false, false, false, false)), Struct_2(Struct_1(vec4<f32>(global2.x, -1000f, global2.x, global2.x)), 5006i, global4[_wgslsmith_index_u32(u_input.a.x, 25u)], 48431u, vec4<bool>(false, false, true, false)))).a, u_input.a.x, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(global1[_wgslsmith_index_u32(0u, 26u)]).e)), func_2(Struct_3(any(vec4<bool>(false, false, true, true)), Struct_2(Struct_1(vec4<f32>(global2.x, 1098f, global2.x, global2.x)), 1i, global4[_wgslsmith_index_u32(1u, 25u)], 4294967295u, vec4<bool>(true, false, true, false)), vec2<bool>(true, true), Struct_2(Struct_1(vec4<f32>(606f, 994f, 1269f, global2.x)), arg_0.x, Struct_1(vec4<f32>(global2.x, -166f, 688f, global2.x)), u_input.c.x, vec4<bool>(false, true, true, false)), func_2(global1[_wgslsmith_index_u32(u_input.b, 26u)])))), vec4<bool>(false, false, false, false));
    let var_1 = var_0.e.e.x;
    let var_2 = func_5(~(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.c.x), vec2<u32>(var_0.d.d, 1u))) << (u_input.c.yz % vec2<u32>(32u))), _wgslsmith_mod_i32(var_0.d.b, ~firstLeadingBit(select(arg_0.x, var_0.b.b, var_0.e.e.x))), Struct_3(var_0.d.e.x | var_0.b.e.x, func_2(global1[_wgslsmith_index_u32(min(4294967295u, var_0.e.d), 26u)]), select(vec2<bool>(!var_0.c.x, false), var_0.b.e.xw, true), func_2(global1[_wgslsmith_index_u32(~var_0.e.d, 26u)]), Struct_2(global4[_wgslsmith_index_u32(min(var_0.e.d, var_0.e.d) & 1u, 25u)], -2147483647i, func_5(vec2<u32>(33087u, var_0.e.d), abs(arg_0.x), global1[_wgslsmith_index_u32(4294967295u << (var_0.e.d % 32u), 26u)], select(var_0.b.e, vec4<bool>(true, var_0.a, var_0.b.e.x, false), var_0.e.e)).e.a, var_0.e.d, select(vec4<bool>(false, true, false, var_0.d.e.x), func_5(u_input.a.zy, -2147483647i, global1[_wgslsmith_index_u32(1u, 26u)], vec4<bool>(var_0.c.x, var_0.a, false, false)).e.e, any(var_0.d.e)))), select(vec4<bool>(!(!var_0.d.e.x), var_0.b.e.x, false, func_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), 26u)]).e.x), var_0.e.e, vec4<bool>(var_0.e.a.a.x < global2.x, false, var_0.d.e.x, true)));
    global4 = array<Struct_1, 25>();
    let var_3 = var_0.d.c.a.zz;
    return _wgslsmith_f_op_f32(abs(1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(629f - _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1667f) - -1000f)) - _wgslsmith_f_op_f32(-global2.x)), 1273f, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(func_1(firstTrailingBit(vec4<i32>(2147483647i, 6293i, global3[_wgslsmith_index_u32(u_input.c.x, 1u)], global3[_wgslsmith_index_u32(0u, 1u)]))))));
    let var_0 = ~firstTrailingBit(abs(-vec3<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 1u)], 2262i, global3[_wgslsmith_index_u32(49675u, 1u)])) >> (abs(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(289f, global2.x, -1172f, -319f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, -1426f)))))), ~var_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 805f, 500f, global2.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(866f, -1008f, global2.x, 1230f))))), u_input.c.x | ~21746u, !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)));
    global1 = array<Struct_3, 26>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(593f, var_1.c.a.x, global2.x, var_1.c.a.x) * var_1.a.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2326f, 1000f, -647f, -523f)))), firstTrailingBit(max(-51492i, ~_wgslsmith_mod_i32(-2147483647i, global3[_wgslsmith_index_u32(4294967295u, 1u)]))), Struct_1(var_1.a.a), 4294967295u, !select(select(vec4<bool>(var_1.e.x, var_1.e.x, var_1.e.x, var_1.e.x), func_2(global1[_wgslsmith_index_u32(38259u, 26u)]).e, false), var_1.e, true));
    var var_3 = Struct_3(var_2.e.x, Struct_2(var_2.a, 46497i, func_5(reverseBits(~vec2<u32>(4294967295u, var_2.d)), -1i, func_5(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.d, 0u), u_input.a.yy), _wgslsmith_mult_i32(var_1.b, var_0.x), func_5(u_input.c.zx, -43535i, Struct_3(var_1.e.x, var_2, var_1.e.yx, var_2, var_2), vec4<bool>(var_2.e.x, true, var_1.e.x, var_1.e.x)), select(var_2.e, vec4<bool>(false, false, var_2.e.x, false), true)), select(vec4<bool>(var_2.e.x, var_1.e.x, var_1.e.x, var_1.e.x), func_2(Struct_3(true, Struct_2(var_2.c, 45503i, Struct_1(var_1.a.a), var_2.d, vec4<bool>(true, var_1.e.x, true, false)), var_2.e.zz, var_2, Struct_2(Struct_1(vec4<f32>(-1000f, 549f, var_1.a.a.x, -729f)), var_1.b, var_2.c, u_input.b, vec4<bool>(false, var_2.e.x, true, var_2.e.x)))).e, var_2.e)).e.a, _wgslsmith_dot_vec2_u32(u_input.a.xz, ~reverseBits(vec2<u32>(u_input.a.x, 3738u))), var_1.e), var_1.e.wy, func_5(vec2<u32>(1u, _wgslsmith_clamp_u32(u_input.c.x, 1u, firstLeadingBit(4294967295u))), firstLeadingBit(~var_0.x) >> (_wgslsmith_mult_u32(4294967295u, 1u << (var_2.d % 32u)) % 32u), Struct_3(!all(vec4<bool>(false, true, true, var_2.e.x)), var_2, !var_1.e.xz, Struct_2(func_5(u_input.a.yz, 31678i, global1[_wgslsmith_index_u32(var_2.d, 26u)], vec4<bool>(true, var_1.e.x, var_1.e.x, true)).b.c, -1i, func_2(global1[_wgslsmith_index_u32(u_input.c.x, 26u)]).c, 12290u, !vec4<bool>(var_1.e.x, false, true, false)), var_2), !(!var_1.e)).d, func_5(u_input.a.zz, var_0.x, Struct_3(false, Struct_2(func_2(Struct_3(false, Struct_2(Struct_1(vec4<f32>(1161f, -289f, global2.x, global2.x)), -24416i, var_2.a, u_input.c.x, var_2.e), var_1.e.yx, var_2, var_2)).c, var_2.b, var_2.a, _wgslsmith_add_u32(var_1.d, 0u), !vec4<bool>(true, var_1.e.x, false, true)), var_1.e.yx, var_2, func_5(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.d, 0u), u_input.c.zz), _wgslsmith_sub_i32(var_1.b, var_0.x), global1[_wgslsmith_index_u32(var_2.d, 26u)], var_2.e).d), vec4<bool>(any(func_5(u_input.a.yy, var_1.b, Struct_3(true, var_2, var_2.e.wy, var_2, var_2), var_2.e).b.e), var_1.e.x, all(var_2.e.ww), ~var_2.d <= _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.d, 30963u), vec2<u32>(76509u, 0u)))).e);
    var var_4 = var_1.a;
    global1 = array<Struct_3, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-68297i, global3[_wgslsmith_index_u32(var_3.e.d, 1u)]), var_0.yy, var_0.yx) ^ vec2<i32>(var_0.x, var_1.b)), vec2<i32>(min(-3349i, var_3.e.b), -27494i)), ~(~u_input.a.zx), var_0.zy >> (_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xx, u_input.a.zx), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, var_3.d.d), u_input.c.yz)), vec2<u32>(0u, 30754u) & ~vec2<u32>(u_input.a.x, 5992u)) % vec2<u32>(32u)), _wgslsmith_clamp_i32(firstTrailingBit(var_1.b), -var_3.b.b, 1i));
}

