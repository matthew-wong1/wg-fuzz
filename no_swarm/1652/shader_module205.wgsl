struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 7>;

var<private> global2: Struct_2 = Struct_2(-404f, vec3<f32>(1263f, -1134f, 367f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    global2 = Struct_2(global2.a, global2.b);
    global1 = array<i32, 7>();
    let var_0 = select(!vec4<bool>(!select(true, false, true), true, !(arg_0 >= 1i), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)))), select(!select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), select(any(vec2<bool>(all(vec4<bool>(true, false, true, false)), true)), true, !((global1[_wgslsmith_index_u32(u_input.c, 7u)] > arg_0) && any(vec2<bool>(true, true)))));
    let var_1 = vec4<i32>(-1i, ~global1[_wgslsmith_index_u32(1u, 7u)], -(~(-29076i)), 7108i);
    var var_2 = vec4<u32>(u_input.b, 1u, 77256u, 4294967295u);
    return ~_wgslsmith_mult_vec4_u32(vec4<u32>(~(~68881u), var_2.x, var_2.x, ~(var_2.x >> (29114u % 32u))), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(1u, 121583u, 19509u, 61929u)) | ~vec4<u32>(var_2.x, 31184u, 26950u, 1u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 13516u, u_input.b, 63425u), vec4<u32>(47682u, u_input.c, 22246u, 10658u), vec4<u32>(68447u, u_input.b, 4294967295u, u_input.b))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: bool, arg_3: f32) -> vec4<u32> {
    global0 = -88505i > global1[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(1u, 49038u)), 7u)];
    var var_0 = Struct_4(arg_3, ~(~(~(~vec3<u32>(72306u, 6150u, u_input.c)))), Struct_1(~countOneBits(func_3(-1i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a, arg_3) - -1210f), _wgslsmith_div_f32(arg_0.x, arg_3)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(457f, arg_0.x, -965f, 756f))), vec4<f32>(arg_3, global2.b.x, global2.a, global2.a), select(vec4<bool>(false, false, arg_2, arg_2), vec4<bool>(true, false, false, arg_2), vec4<bool>(true, arg_2, arg_2, arg_2)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(378f, -417f, global2.a, global2.b.x)))))), 1u, arg_0), ~2147483647i, Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, arg_1, u_input.b, 4294967295u), ~(vec4<u32>(u_input.b, 39794u, arg_1, 9270u) | vec4<u32>(u_input.b, 0u, u_input.b, 50563u))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1000f) - vec2<f32>(1654f, arg_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_0.x) + global2.b.zy))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1098f, arg_0.x, arg_3)) - _wgslsmith_div_vec4_f32(vec4<f32>(global2.b.x, 403f, 1581f, global2.a), vec4<f32>(arg_3, arg_0.x, 1231f, global2.a)))), arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1692f, arg_3, 166f) * global2.b), _wgslsmith_div_vec3_f32(arg_0, vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-845f, arg_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.e.b.x, arg_3))) - 974f))));
    var var_2 = select(vec3<bool>(arg_2, arg_2, !all(vec4<bool>(arg_2, arg_2, arg_2, arg_2))), select(!vec3<bool>(false, all(vec4<bool>(false, arg_2, arg_2, false)), all(vec4<bool>(true, arg_2, arg_2, true))), vec3<bool>(all(vec4<bool>(false, true, true, arg_2)) && !arg_2, !arg_2, false), true), arg_2);
    let var_3 = Struct_3(4294967295u, vec3<i32>(-3052i, _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_clamp_i32(var_0.d, -67054i, var_0.d)), var_0.d), -_wgslsmith_mult_i32(_wgslsmith_mult_i32(20424i, var_0.d), global1[_wgslsmith_index_u32(13980u, 7u)] << (74947u % 32u))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(287f)), -138f, arg_3))), Struct_2(-461f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 370f, arg_0.x))))));
    return var_0.e.a;
}

fn func_1(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = Struct_4(247f, ~vec3<u32>(_wgslsmith_add_u32(u_input.c, u_input.b), u_input.c, ~63263u) ^ reverseBits(~(vec3<u32>(arg_1, 0u, 0u) & vec3<u32>(arg_1, u_input.c, 4294967295u))), Struct_1(vec4<u32>(u_input.b, arg_1, 24124u, ~1214u) ^ func_2(_wgslsmith_f_op_vec3_f32(ceil(global2.b)), arg_1, true, _wgslsmith_f_op_f32(round(-220f))), vec2<f32>(global2.a, _wgslsmith_f_op_f32(floor(global2.a))), vec4<f32>(-951f, global2.b.x, 264f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a)))), ~arg_1, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1730f, _wgslsmith_f_op_f32(f32(-1f) * -1163f), -927f), global2.b))), global1[_wgslsmith_index_u32(arg_1, 7u)], Struct_1(~(~vec4<u32>(u_input.a.x, arg_1, u_input.a.x, 7827u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, arg_1, 48356u) >> (vec4<u32>(arg_1, arg_1, 14309u, arg_1) % vec4<u32>(32u)), vec4<u32>(u_input.c, 1u, 0u, u_input.c) << (vec4<u32>(24711u, 14092u, 33044u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec2<f32>(714f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.b.x + -1910f), _wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.b.x, global2.b.x, -1173f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(626f, 309f, global2.b.x, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, -334f, global2.a, global2.b.x))))), 11396u & abs(_wgslsmith_div_u32(arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.a, global2.a, global2.a), global2.b)))), vec3<f32>(_wgslsmith_f_op_f32(-2361f + global2.b.x), global2.b.x, _wgslsmith_f_op_f32(global2.a * global2.b.x)), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), false)))));
    global1 = array<i32, 7>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1220f);
    var var_2 = ~var_0.b.xx;
    var var_3 = 1u;
    return _wgslsmith_dot_vec3_u32(~(~min(select(vec3<u32>(1u, 4294967295u, 4294967295u), var_0.c.a.xyw, vec3<bool>(false, true, false)), vec3<u32>(4294967295u, arg_1, 28419u))), ~firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, 0u), vec3<u32>(1u, 31360u, 0u))) & vec3<u32>(63462u, ~var_2.x, reverseBits(countOneBits(27081u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a;
    let var_1 = Struct_1(vec4<u32>(u_input.b, 47243u, ~77095u, _wgslsmith_mod_u32(func_1(global1[_wgslsmith_index_u32(4294967295u, 7u)] | -3463i, 452u), 0u)), vec2<f32>(_wgslsmith_f_op_f32(ceil(global2.b.x)), global2.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.b.x, global2.a, global2.b.x, global2.b.x))))) * vec4<f32>(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(exp2(global2.a))), global2.b.x, 147f)), u_input.a.x, global2.b);
    var_0 = -748f;
    global1 = array<i32, 7>();
    var var_2 = Struct_1(~func_3(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~51000u, func_1(global1[_wgslsmith_index_u32(1u, 7u)], 0u)), 7u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.a, global2.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global2.b.xz)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1099f, -1621f)), vec2<bool>(true, true))), global2.b.xz, any(vec4<bool>(true, true, true, true))))), var_1.c, _wgslsmith_mult_u32(~(~(~var_1.a.x)), 0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(floor(global2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.e.x))), 1214f)));
    let var_3 = _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(~var_2.a.yw, ~vec2<u32>(var_1.a.x, 42966u)) ^ ~(~var_1.a.ww), select(vec2<u32>(~(~var_1.d), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, 0u, u_input.a.x, 6879u) & var_2.a, vec4<u32>(1u, var_1.d, 19918u, 3279u))), ~var_2.a.zx, !(true | any(vec4<bool>(false, false, false, false)))));
    global2 = Struct_2(757f, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-179f, 216f, var_2.b.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-342f, var_2.c.x, 454f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.b.x, var_1.e.x, var_2.e.x))) * _wgslsmith_f_op_vec3_f32(var_1.e - var_1.c.ywz))))));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(abs(-874f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.b.x))) * _wgslsmith_f_op_f32(abs(var_1.e.x))), _wgslsmith_f_op_f32(var_2.b.x + 696f), _wgslsmith_f_op_f32(f32(-1f) * -1386f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(37825i, abs(-1303i)), _wgslsmith_f_op_vec2_f32(-global2.b.yy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c)), vec2<i32>(max(~_wgslsmith_div_i32(0i, 27280i), -5478i), -reverseBits(38641i)), -(~vec2<i32>(i32(-1i) * -41970i, global1[_wgslsmith_index_u32(var_1.d, 7u)])));
}

