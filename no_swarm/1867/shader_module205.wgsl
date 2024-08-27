struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(1u, 8644u, 99128u), vec3<u32>(1u, 115185u, 25403u), vec3<u32>(4294967295u, 1u, 67441u), vec3<u32>(4294967295u, 0u, 37275u), vec3<u32>(0u, 1u, 28987u), vec3<u32>(4294967295u, 0u, 94449u));

var<private> global1: array<u32, 18>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec4<f32>) -> f32 {
    global1 = array<u32, 18>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-159f, arg_2.x, -109f)) - _wgslsmith_f_op_vec3_f32(floor(arg_3.zzy)));
    global1 = array<u32, 18>();
    global0 = array<vec3<u32>, 6>();
    global1 = array<u32, 18>();
    return -1070f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: Struct_4) -> vec4<bool> {
    global1 = array<u32, 18>();
    let var_0 = _wgslsmith_f_op_f32(func_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1387f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-132f - 446f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(412f)) + _wgslsmith_f_op_f32(trunc(506f)))), Struct_3((~31237u & abs(global1[_wgslsmith_index_u32(1u, 18u)])) >> (31021u % 32u), true, any(!(!vec4<bool>(arg_1.x, true, arg_1.x, arg_3.e.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-646f, 174f, -1113f, 587f) * vec4<f32>(1655f, 285f, -1035f, 1391f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2023f, -1665f, 1135f, -444f)))), vec4<f32>(_wgslsmith_div_f32(-232f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f), _wgslsmith_f_op_f32(f32(-1f) * -1705f))), -339f, -265f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(710f - -724f))) + -1000f))));
    return vec4<bool>(arg_3.e.x, any(vec2<bool>(true, !(!arg_1.x))), false, true && arg_1.x);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = !select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), func_2(vec2<u32>(u_input.d.x, 33757u), vec3<bool>(true, false, true), vec4<bool>(true, true, false, true), Struct_4(0i, vec4<bool>(true, true, true, true), vec3<u32>(4294967295u, u_input.b.x, arg_0.a), true, vec3<bool>(true, true, false)))), !func_2(vec2<u32>(0u, global1[_wgslsmith_index_u32(arg_1, 18u)]), vec3<bool>(false, false, true), vec4<bool>(false, false, false, true), Struct_4(u_input.c.x, vec4<bool>(false, false, false, true), u_input.b.yyx, true, vec3<bool>(true, false, true))), func_2(abs(vec2<u32>(arg_1, 27175u)), vec3<bool>(true, false, true), vec4<bool>(true, true, true, true), Struct_4(-17867i, vec4<bool>(false, true, true, true), vec3<u32>(1u, arg_1, 36510u), true, vec3<bool>(true, false, false)))), select(func_2(vec2<u32>(u_input.b.x, 1u), vec3<bool>(false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), Struct_4(u_input.c.x, vec4<bool>(true, true, false, false), u_input.b.xwy, false, vec3<bool>(true, false, false))), vec4<bool>(true, true, true, false), false), ~7964u == ~(u_input.d.x ^ arg_1));
    global1 = array<u32, 18>();
    let var_1 = abs(_wgslsmith_sub_vec2_u32(~u_input.b.zw, ~(select(vec2<u32>(u_input.b.x, 1u), u_input.d.yy, vec2<bool>(var_0.x, var_0.x)) >> (vec2<u32>(arg_1, u_input.d.x) % vec2<u32>(32u)))));
    let var_2 = !(!(!(!select(vec2<bool>(false, false), var_0.wx, var_0.x))));
    let var_3 = _wgslsmith_dot_vec4_u32(u_input.b, ~_wgslsmith_sub_vec4_u32(u_input.b, select(u_input.b, min(vec4<u32>(57885u, var_1.x, u_input.b.x, 68374u), u_input.b), !vec4<bool>(false, false, var_2.x, var_2.x))));
    return global1[_wgslsmith_index_u32(~(reverseBits(min(~var_3, 561u)) << (4294967295u % 32u)), 18u)];
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = i32(-1i) * -_wgslsmith_mult_i32(u_input.c.x, firstLeadingBit(-1i) << (~global1[_wgslsmith_index_u32(arg_1.x, 18u)] % 32u));
    global1 = array<u32, 18>();
    let var_1 = -abs(min(_wgslsmith_mod_vec3_i32(u_input.c, u_input.c << (vec3<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], arg_1.x, arg_1.x) % vec3<u32>(32u))), -vec3<i32>(var_0, 0i, u_input.a)));
    let var_2 = global1[_wgslsmith_index_u32(arg_0, 18u)];
    let var_3 = select(1i, 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(sign(-289f))))) == -912f);
    return Struct_3(4294967295u, arg_2.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 6>();
    let var_0 = func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(61300u, func_1(Struct_1(u_input.d.x, global1[_wgslsmith_index_u32(2733u, 18u)]), ~u_input.b.x), ~0u), global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), _wgslsmith_mult_vec2_u32(select(u_input.d.zz, ~abs(u_input.b.xw), select(vec2<bool>(true, true), func_2(u_input.d.yy, vec3<bool>(false, true, true), vec4<bool>(false, false, true, true), Struct_4(u_input.a, vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 18u)], 6u)], true, vec3<bool>(true, true, true))).wy, true)), min(~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 18u)]), u_input.d.yz)), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), -2147483647i >= u_input.a), false));
    global0 = array<vec3<u32>, 6>();
    global1 = array<u32, 18>();
    global1 = array<u32, 18>();
    var var_1 = func_2(~vec2<u32>(4294967295u, 48202u) << (~(~abs(vec2<u32>(var_0.a, 39028u))) % vec2<u32>(32u)), func_2(u_input.d.wz, vec3<bool>(!var_0.c, true, true), select(vec4<bool>(all(vec2<bool>(var_0.b, true)), true, var_0.c, var_0.b), !(!vec4<bool>(true, var_0.c, false, false)), vec4<bool>(true, var_0.c || false, true, true)), Struct_4(select(-2147483647i, abs(-2147483647i), any(vec2<bool>(false, var_0.b))), vec4<bool>(all(vec3<bool>(false, true, var_0.c)), false, true, var_0.b), firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60013u, 18u)], 18u)], 25082u, 4294967295u)), ~52070u >= _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 16779u), vec3<u32>(var_0.a, 0u, u_input.d.x)), !(!vec3<bool>(var_0.b, true, true)))).xwz, vec4<bool>(var_0.b, var_0.b, var_0.c, all(vec4<bool>(true, true, true, true))), Struct_4(1i, select(select(!vec4<bool>(var_0.b, var_0.c, true, false), select(vec4<bool>(var_0.b, var_0.c, true, true), vec4<bool>(var_0.c, var_0.b, var_0.c, var_0.c), true), any(vec2<bool>(true, var_0.b))), vec4<bool>(true, any(vec3<bool>(var_0.c, true, true)), !var_0.c, all(vec3<bool>(var_0.c, true, true))), !var_0.b), ~firstTrailingBit(vec3<u32>(var_0.a, 6886u, global1[_wgslsmith_index_u32(4294967295u, 18u)]) >> (vec3<u32>(var_0.a, 0u, 0u) % vec3<u32>(32u))), !(!var_0.c), !select(select(vec3<bool>(var_0.c, var_0.b, true), vec3<bool>(var_0.b, false, var_0.b), true), vec3<bool>(var_0.b, true, true), !vec3<bool>(var_0.c, var_0.b, false)))).zzw;
    let var_2 = ~u_input.c;
    var var_3 = Struct_4(firstTrailingBit(var_2.x), !vec4<bool>(false, var_1.x, true, (var_0.a != u_input.b.x) && (var_1.x & true)), ~(u_input.b.yyz & vec3<u32>(62345u, ~var_0.a, reverseBits(17409u))), true, !(!select(select(vec3<bool>(var_0.b, false, true), vec3<bool>(false, var_0.c, var_1.x), vec3<bool>(false, false, var_1.x)), !vec3<bool>(var_0.c, var_1.x, var_0.b), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c.yx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-866f)) - _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -823f), true)))));
}

