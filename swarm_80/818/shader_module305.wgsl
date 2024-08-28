struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(77582u, 63295u, 40727u, 0u);

var<private> global1: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(839f, 302f, 702f));

var<private> global2: array<bool, 1>;

var<private> global3: array<f32, 10>;

var<private> global4: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec2<f32> {
    global1 = array<vec3<f32>, 1>();
    let var_0 = vec4<bool>(-1000f <= global3[_wgslsmith_index_u32(~78393u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)], true, any(select(!select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(29454u, 1u)]), vec3<bool>(global2[_wgslsmith_index_u32(87707u, 1u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(55570u, 1u)])), select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), !vec3<bool>(global2[_wgslsmith_index_u32(7963u, 1u)], global2[_wgslsmith_index_u32(60520u, 1u)], global2[_wgslsmith_index_u32(global0.x, 1u)]), !vec3<bool>(false, false, global2[_wgslsmith_index_u32(global0.x, 1u)])), !global2[_wgslsmith_index_u32(~17300u, 1u)])));
    global0 = firstTrailingBit(min(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1177u, 2212u, 1u), abs(vec4<u32>(u_input.a.x, u_input.a.x, global0.x, u_input.a.x))), vec4<u32>(firstLeadingBit(u_input.a.x), max(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~global0.x), _wgslsmith_mod_u32(1u, 5608u), ~abs(global0.x))));
    var var_1 = reverseBits(u_input.b.x);
    var var_2 = Struct_1(all(var_0.xzw), select(vec2<bool>(all(!var_0), var_0.x), vec2<bool>(var_0.x, !var_0.x), var_0.x), vec3<u32>(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(~global0.x, _wgslsmith_clamp_u32(u_input.a.x, global0.x, u_input.a.x))), _wgslsmith_dot_vec3_u32(~(global0.xww & vec3<u32>(80829u, u_input.a.x, u_input.a.x)), vec3<u32>(global0.x << (u_input.a.x % 32u), max(1u, 42378u), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a))), 2622u << (~u_input.a.x % 32u)));
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3[_wgslsmith_index_u32(0u, 10u)], -740f)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<f32>) -> bool {
    var var_0 = min(_wgslsmith_mod_i32(-(i32(-1i) * -36811i), -_wgslsmith_sub_i32(arg_2.b.a, 1i ^ arg_2.b.a)), _wgslsmith_dot_vec2_i32(select(-(~arg_0.yx), ~(-u_input.c.xx), global2[_wgslsmith_index_u32(36156u, 1u)]), ~vec2<i32>(46343i, reverseBits(u_input.c.x))));
    global4 = abs(_wgslsmith_mult_i32(max(arg_0.x, arg_0.x) | 0i, arg_1.a)) & u_input.b.x;
    return !global2[_wgslsmith_index_u32(global0.x, 1u)];
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<bool>(!(false | !(!global2[_wgslsmith_index_u32(85158u, 1u)])), func_4(-vec4<i32>(-1i, u_input.c.x, ~2147483647i, u_input.c.x), Struct_2(i32(-1i) * -u_input.b.x), Struct_3(Struct_2(firstLeadingBit(2147483647i)), Struct_2(93155i >> (1u % 32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-646f, _wgslsmith_f_op_f32(round(209f))) + _wgslsmith_f_op_vec2_f32(func_3()))), any(vec4<bool>(global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, 0u)), 1u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 10u)] >= _wgslsmith_f_op_f32(-190f * global3[_wgslsmith_index_u32(1u, 10u)]), !global2[_wgslsmith_index_u32(u_input.a.x, 1u)] || any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], true)), !(!global2[_wgslsmith_index_u32(4294967295u, 1u)]))), u_input.b.x > reverseBits(2147483647i));
    var var_1 = ~firstLeadingBit(global0.wyy);
    global0 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~(~firstLeadingBit(vec4<u32>(0u, u_input.a.x, global0.x, 664u))), ~(max(vec4<u32>(global0.x, global0.x, global0.x, 53611u), vec4<u32>(4294967295u, 58511u, 1u, 60961u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, var_1.x, u_input.a.x, 653u), vec4<u32>(28313u, 3869u, var_1.x, 56100u)) % vec4<u32>(32u)))), vec4<u32>(select((var_1.x | 108500u) | global0.x, ~9903u, true), global0.x, countOneBits(~global0.x), 1u));
    let var_2 = Struct_1(any(vec4<bool>(var_0.x, all(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], var_0.x)), any(var_0.zx) || var_0.x, global2[_wgslsmith_index_u32(global0.x, 1u)])), select(!(!var_0.zx), select(var_0.wx, vec2<bool>(var_1.x > u_input.a.x, !global2[_wgslsmith_index_u32(var_1.x, 1u)]), vec2<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)], false)), global2[_wgslsmith_index_u32(0u, 1u)])), true), _wgslsmith_div_vec3_u32(~global0.wyy, ~global0.xxz));
    global2 = array<bool, 1>();
    return Struct_2(~66464i);
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = 0u;
    let var_2 = -1291f;
    global3 = array<f32, 10>();
    let var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(48444u, ~(_wgslsmith_div_u32(7663u, global0.x) ^ (global0.x ^ 63348u)), ~_wgslsmith_sub_u32(var_1 << (global0.x % 32u), 0u), u_input.a.x), vec4<u32>(countOneBits(var_1 ^ u_input.a.x) & 1003u, ~(~13460u), 17175u, u_input.a.x));
    return Struct_3(Struct_2(_wgslsmith_dot_vec4_i32(firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.c.x, -2147483647i, u_input.b.x, var_0.a))), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.c.x, var_0.a, 48558i, u_input.b.x), ~vec4<i32>(arg_0, var_0.a, var_0.a, u_input.b.x)))), Struct_2(-u_input.c.x));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_1(!all(select(!vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<bool>(true, arg_3), false)), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], any(!vec2<bool>(true, global2[_wgslsmith_index_u32(33599u, 1u)]))), vec3<u32>(~28005u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(0u, 1u, 1u, 55254u), vec4<u32>(global0.x, 1u, global0.x, u_input.a.x)), vec4<u32>(u_input.a.x, 1u, global0.x, 61843u) ^ vec4<u32>(global0.x, global0.x, u_input.a.x, 4294967295u)), vec4<u32>(~global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, global0.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, global0.x, global0.x)), 42863u, ~global0.x)), (~u_input.a.x | 8729u) ^ 16730u));
    global2 = array<bool, 1>();
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(398f, global3[_wgslsmith_index_u32(6167u, 10u)], -466f, 628f)), _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(var_0.c.x, 10u)], -685f, global3[_wgslsmith_index_u32(1u, 10u)], 334f), vec4<f32>(-1000f, -205f, 645f, 1340f)), select(vec4<bool>(true, global2[_wgslsmith_index_u32(58834u, 1u)], false, global2[_wgslsmith_index_u32(1927u, 1u)]), vec4<bool>(global2[_wgslsmith_index_u32(17040u, 1u)], var_0.b.x, true, false), vec4<bool>(var_0.b.x, true, var_0.a, global2[_wgslsmith_index_u32(7075u, 1u)])))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(569f, 1085f, 2485f, global3[_wgslsmith_index_u32(0u, 10u)]), vec4<f32>(global3[_wgslsmith_index_u32(global0.x, 10u)], global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global3[_wgslsmith_index_u32(0u, 10u)], -524f))))))));
    let var_2 = -countOneBits(reverseBits(arg_0));
    var var_3 = vec3<i32>(~max(43001i, arg_0.x), _wgslsmith_mult_i32(-17236i, arg_0.x), var_2.x) & vec3<i32>(-(~(-1i)), abs(2147483647i) >> (var_0.c.x % 32u), min(20902i, arg_2.a.a));
    return Struct_2(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, -59232i, -2147483647i)), -countOneBits(~vec3<i32>(1947i, u_input.c.x, 2147483647i)));
    var var_1 = Struct_2(-7975i);
    global1 = array<vec3<f32>, 1>();
    var var_2 = Struct_3(func_5((-vec4<i32>(var_1.a, -26027i, -1i, var_1.a) >> (~vec4<u32>(31224u, 13687u, u_input.a.x, 13796u) % vec4<u32>(32u))) | ((vec4<i32>(-8083i, var_0, var_0, -42357i) & vec4<i32>(u_input.b.x, var_1.a, 26728i, u_input.c.x)) >> (~vec4<u32>(u_input.a.x, global0.x, 1u, global0.x) % vec4<u32>(32u))), func_1(~(i32(-1i) * -2928i)), Struct_3(Struct_2(_wgslsmith_div_i32(-2147483647i, -2147483647i)), func_2()), _wgslsmith_clamp_u32(~global0.x, global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 1996u), vec3<u32>(2994u, u_input.a.x, 4294967295u))) != (max(43197u, 67031u) << (~global0.x % 32u))), Struct_2(var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(global0.zyy) & _wgslsmith_clamp_vec3_u32(vec3<u32>(68506u, 54865u, 4294967295u) & vec3<u32>(1u, 114524u, global0.x), select(global0.zwy, global0.zxx, false), vec3<u32>(13022u, global0.x, global0.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, global0.x, u_input.a.x) & ~global0.xwy, ~global0.zww & _wgslsmith_mod_vec3_u32(global0.xww, vec3<u32>(global0.x, global0.x, u_input.a.x))), !func_4(firstTrailingBit(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, var_1.a)), var_2.a, func_1(var_2.b.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-487f, global3[_wgslsmith_index_u32(28007u, 10u)])))), ~u_input.c, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1959f * global3[_wgslsmith_index_u32(u_input.a.x, 10u)]))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-228f, _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(global0.x, 10u)], global3[_wgslsmith_index_u32(78542u, 10u)], false)), global2[_wgslsmith_index_u32(33215u << (global0.x % 32u), 1u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-657f, 1418f)) * _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(global0.x, 10u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(4294967295u, 10u)])) * _wgslsmith_f_op_f32(790f - 406f)) * global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(173u, 47121u), global0.yx), 10u)]), 1293f));
}

