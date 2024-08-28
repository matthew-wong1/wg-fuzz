struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(28277u, 1u, 120943u);

var<private> global1: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(Struct_1(vec2<i32>(-1i, 0i), false, vec2<i32>(1i, 2147483647i), true), -1528i, Struct_1(vec2<i32>(14882i, -1371i), false, vec2<i32>(-1i, 0i), true)), Struct_4(Struct_1(vec2<i32>(1i, 1i), false, vec2<i32>(-38498i, 1i), true), -2025i, Struct_1(vec2<i32>(-1i, -2538i), false, vec2<i32>(-3804i, 2147483647i), false)), Struct_4(Struct_1(vec2<i32>(23860i, 1i), true, vec2<i32>(-41242i, 18409i), true), 12835i, Struct_1(vec2<i32>(i32(-2147483648), 3974i), false, vec2<i32>(-1i, i32(-2147483648)), true)), Struct_4(Struct_1(vec2<i32>(22159i, -20717i), true, vec2<i32>(i32(-2147483648), -41764i), true), -1i, Struct_1(vec2<i32>(i32(-2147483648), -9877i), true, vec2<i32>(17332i, -41861i), true)), Struct_4(Struct_1(vec2<i32>(29207i, 0i), true, vec2<i32>(-13277i, 12473i), true), 0i, Struct_1(vec2<i32>(32214i, 2147483647i), true, vec2<i32>(1i, -1i), false)), Struct_4(Struct_1(vec2<i32>(-5296i, i32(-2147483648)), true, vec2<i32>(35369i, -1i), true), 17924i, Struct_1(vec2<i32>(-1i, 36943i), true, vec2<i32>(29250i, 41973i), false)), Struct_4(Struct_1(vec2<i32>(29156i, 0i), false, vec2<i32>(26821i, -19640i), false), -62060i, Struct_1(vec2<i32>(-1467i, 1i), false, vec2<i32>(i32(-2147483648), -6803i), true)), Struct_4(Struct_1(vec2<i32>(23054i, 19012i), true, vec2<i32>(2147483647i, i32(-2147483648)), false), 48434i, Struct_1(vec2<i32>(1i, -1851i), false, vec2<i32>(2147483647i, 2147483647i), false)), Struct_4(Struct_1(vec2<i32>(i32(-2147483648), 0i), true, vec2<i32>(2147483647i, i32(-2147483648)), false), i32(-2147483648), Struct_1(vec2<i32>(-10207i, 2147483647i), false, vec2<i32>(33736i, 0i), false)), Struct_4(Struct_1(vec2<i32>(19896i, 27972i), false, vec2<i32>(54239i, 2147483647i), false), 0i, Struct_1(vec2<i32>(45567i, -27599i), true, vec2<i32>(0i, 2147483647i), true)), Struct_4(Struct_1(vec2<i32>(0i, 2147483647i), false, vec2<i32>(-17074i, 2147483647i), true), 0i, Struct_1(vec2<i32>(-1i, 2147483647i), true, vec2<i32>(27567i, -25330i), false)), Struct_4(Struct_1(vec2<i32>(1848i, 1i), false, vec2<i32>(0i, 38733i), true), -89678i, Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), true, vec2<i32>(1i, i32(-2147483648)), true)), Struct_4(Struct_1(vec2<i32>(2147483647i, 61458i), true, vec2<i32>(1998i, 2147483647i), false), 56009i, Struct_1(vec2<i32>(15193i, i32(-2147483648)), true, vec2<i32>(-43212i, 2147483647i), false)), Struct_4(Struct_1(vec2<i32>(-29282i, i32(-2147483648)), true, vec2<i32>(-39178i, -1i), false), 1i, Struct_1(vec2<i32>(-5849i, -43538i), true, vec2<i32>(39901i, -1i), true)));

var<private> global2: array<i32, 24> = array<i32, 24>(0i, -50735i, 1i, -21298i, 1i, 46370i, 0i, -16223i, 0i, 14060i, -56328i, 1i, 1i, -5557i, 1i, 35163i, 43713i, 53625i, i32(-2147483648), 2568i, 9984i, 33181i, -68393i, -30576i);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = vec4<bool>(any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true))), true | all(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), false, all(select(vec2<bool>(select(true, false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)))));
    global2 = array<i32, 24>();
    var var_1 = max(global0.x, _wgslsmith_div_u32(abs(~global0.x), global0.x));
    global0 = vec3<u32>(~global0.x, ~global0.x & (global0.x ^ global0.x), _wgslsmith_div_u32(73583u, abs(12020u)));
    var_0 = !vec4<bool>(false, var_0.x, false, var_0.x);
    return ~_wgslsmith_sub_u32(global0.x, _wgslsmith_dot_vec2_u32(global0.yz, select(vec2<u32>(1u, 1u), global0.zz | vec2<u32>(0u, 59243u), select(var_0.yw, vec2<bool>(true, var_0.x), var_0.xy))));
}

fn func_2() -> u32 {
    global2 = array<i32, 24>();
    global1 = array<Struct_4, 14>();
    var var_0 = abs(countOneBits(vec2<u32>(func_3(), ~firstTrailingBit(4294967295u))));
    global0 = vec3<u32>(_wgslsmith_mult_u32(min(countOneBits(4294967295u), var_0.x), _wgslsmith_add_u32(global0.x, var_0.x)), 0u, var_0.x) >> (select(reverseBits(vec3<u32>(~52766u, _wgslsmith_sub_u32(global0.x, 37114u), var_0.x >> (1u % 32u))), select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, var_0.x), vec3<u32>(10983u, 23014u, 5301u)), global0.x, ~global0.x), vec3<u32>(31907u, ~4294967295u, ~var_0.x), false), any(vec4<bool>(true, true, true, true))) % vec3<u32>(32u));
    var var_1 = Struct_4(Struct_1(vec2<i32>(-31247i & global2[_wgslsmith_index_u32(global0.x, 24u)], global2[_wgslsmith_index_u32(var_0.x, 24u)]), true, firstLeadingBit(vec2<i32>(u_input.a.x, -37847i)), true), global2[_wgslsmith_index_u32(select(var_0.x, _wgslsmith_mult_u32(~var_0.x, 1u | var_0.x), true) | firstLeadingBit(~(64065u | global0.x)), 24u)], Struct_1(~u_input.a.zy, true, ~((vec2<i32>(6457i, -1i) ^ vec2<i32>(u_input.a.x, 2147483647i)) << (global0.xz % vec2<u32>(32u))), true));
    return ~var_0.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: u32, arg_3: Struct_5) -> Struct_3 {
    let var_0 = all(select(arg_3.c, arg_3.c, false));
    global1 = array<Struct_4, 14>();
    let var_1 = vec3<bool>(arg_3.c.x, true | !arg_3.b.a.d, 0u >= _wgslsmith_dot_vec3_u32(~arg_0.wzw, reverseBits(vec3<u32>(global0.x, global0.x, arg_2))));
    let var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(arg_0.ywy), vec3<u32>(20380u | _wgslsmith_div_u32(34991u, arg_2), global0.x, 4294967295u)), vec3<u32>(arg_2 ^ func_2(), _wgslsmith_mult_u32(select(~41414u, _wgslsmith_sub_u32(arg_2, 0u), var_0), 54769u), 6641u));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-215f, 792f)), _wgslsmith_f_op_f32(f32(-1f) * -175f), -1224f, -115f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1374f, -1560f, -1083f, 533f) + vec4<f32>(-1000f, 1649f, 2678f, -1000f)))))) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1129f)))))), _wgslsmith_f_op_f32(1200f * -1006f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -834f) + -1367f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1504f)))))));
    return Struct_3(Struct_1(arg_3.b.c.c, (arg_0.x == global0.x) | var_0, arg_3.b.c.c, true));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    return func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(countOneBits(74525u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, global0.x, global0.x), vec4<u32>(20094u, global0.x, 4294967295u, 43034u))), 0u, 29560u, 4294967295u), abs(_wgslsmith_mult_vec4_u32(max(vec4<u32>(global0.x, 46551u, global0.x, 1u), vec4<u32>(global0.x, 4294967295u, 19637u, global0.x)), ~vec4<u32>(global0.x, 86979u, global0.x, global0.x)))), 1033i, 1u, Struct_5(_wgslsmith_dot_vec2_i32(u_input.a.zy, select(_wgslsmith_add_vec2_i32(vec2<i32>(-28035i, u_input.a.x), arg_1.a.c), vec2<i32>(2147483647i, arg_1.a.c.x) & arg_0.a.c, arg_0.a.b)), global1[_wgslsmith_index_u32(21305u, 14u)], !select(!vec2<bool>(arg_0.a.b, true), select(vec2<bool>(arg_0.a.d, false), vec2<bool>(true, arg_0.a.b), arg_0.a.d), !vec2<bool>(true, arg_0.a.d)))).a;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_4) -> vec4<u32> {
    global0 = vec3<u32>(global0.x, global0.x, 4294967295u);
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-(_wgslsmith_mult_i32(5241i, arg_1.a.x) & 43520i), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(46570i, func_1(vec4<u32>(1u, 57938u, 40415u, global0.x), 339i, 4294967295u, Struct_5(global2[_wgslsmith_index_u32(59402u, 24u)], Struct_4(arg_1, arg_2.b, Struct_1(u_input.a.xy, arg_2.a.d, vec2<i32>(-28801i, global2[_wgslsmith_index_u32(global0.x, 24u)]), arg_0)), vec2<bool>(false, arg_2.a.b))).a.a.x, -16293i))), ~_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(arg_1.a.x, arg_2.b)), u_input.a.xz ^ vec2<i32>(u_input.a.x, 1i)) << (~(~global0.yz << (~vec2<u32>(27577u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1071f, -634f, 152f)), vec3<f32>(1447f, -1447f, 724f), !vec3<bool>(false, true, arg_1.b))))));
    let var_2 = Struct_3(arg_2.c);
    global0 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~_wgslsmith_div_u32(global0.x, 1u), 113645u, global0.x), ~_wgslsmith_mult_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, global0.x, 1u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, global0.x), vec3<u32>(global0.x, 0u, global0.x))));
    return vec4<u32>(1u, ~(~global0.x), _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(3527u, global0.x, 1u), vec3<u32>(global0.x, 90688u, 1u) & vec3<u32>(0u, global0.x, global0.x)), 38330u), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(i32(-1i) * -(~u_input.a.x), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, 28903u), 24u)]);
    let var_1 = 4294967295u;
    let var_2 = ~func_5(all(vec4<bool>(true, true, false, true)), func_4(func_1(~vec4<u32>(var_1, var_1, 4294967295u, 7028u), u_input.a.x, 37594u, Struct_5(global2[_wgslsmith_index_u32(46654u, 24u)], global1[_wgslsmith_index_u32(1u, 14u)], vec2<bool>(false, false))), func_1(vec4<u32>(var_1, var_1, 65608u, var_1), var_0.x, 24165u | var_1, Struct_5(37834i, Struct_4(Struct_1(u_input.a.zy, true, vec2<i32>(u_input.a.x, 1i), false), u_input.a.x, Struct_1(u_input.a.xx, true, vec2<i32>(u_input.a.x, 24951i), false)), vec2<bool>(true, false)))), Struct_4(func_1(vec4<u32>(33466u, 4294967295u, 1u, 66180u), ~var_0.x, ~var_1, Struct_5(global2[_wgslsmith_index_u32(var_1, 24u)], global1[_wgslsmith_index_u32(global0.x, 14u)], vec2<bool>(false, false))).a, u_input.a.x, Struct_1(u_input.a.xz, var_0.x != 1i, func_4(Struct_3(Struct_1(u_input.a.yx, false, u_input.a.xx, false)), Struct_3(Struct_1(vec2<i32>(global2[_wgslsmith_index_u32(59934u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), true, vec2<i32>(-5878i, 0i), false))).a, true)));
    let var_3 = reverseBits(53976i >> ((_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_2.yzw, vec3<u32>(1u, var_2.x, global0.x)), var_2.x ^ 1u) << (var_1 % 32u)) % 32u));
    global0 = var_2.zzz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1422f, 383f, 703f), vec3<f32>(717f, -391f, -478f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-879f, -1438f, -1129f)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(306f, -1112f, 1698f))))), -global2[_wgslsmith_index_u32(global0.x, 24u)]);
}

