struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
    c: vec3<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(vec4<f32>(-1000f, 790f, -704f, -257f), true, vec3<u32>(46429u, 28784u, 5719u), Struct_3(Struct_2(vec2<u32>(35919u, 4240u)), Struct_2(vec2<u32>(4294967295u, 44975u)), -443f)), Struct_5(vec4<f32>(1000f, 845f, -388f, 816f), false, vec3<u32>(0u, 3848u, 97700u), Struct_3(Struct_2(vec2<u32>(41677u, 1u)), Struct_2(vec2<u32>(0u, 46612u)), 1186f)), Struct_5(vec4<f32>(-1000f, 2021f, -1000f, 1000f), false, vec3<u32>(1u, 0u, 56152u), Struct_3(Struct_2(vec2<u32>(4294967295u, 1u)), Struct_2(vec2<u32>(46603u, 1u)), 818f)), Struct_5(vec4<f32>(1500f, 169f, -320f, 1079f), true, vec3<u32>(8124u, 23762u, 4294967295u), Struct_3(Struct_2(vec2<u32>(1u, 0u)), Struct_2(vec2<u32>(1548u, 5666u)), 163f)), Struct_5(vec4<f32>(1077f, -413f, -724f, 308f), false, vec3<u32>(57224u, 36371u, 29577u), Struct_3(Struct_2(vec2<u32>(69758u, 26588u)), Struct_2(vec2<u32>(0u, 30652u)), 1000f)));

var<private> global1: Struct_5 = Struct_5(vec4<f32>(-470f, -2110f, 1714f, 1456f), true, vec3<u32>(1u, 16268u, 15884u), Struct_3(Struct_2(vec2<u32>(4294967295u, 1u)), Struct_2(vec2<u32>(1u, 0u)), 544f));

var<private> global2: array<Struct_3, 24>;

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(0u, vec2<bool>(true, true), vec4<bool>(true, false, false, true), vec4<f32>(1401f, 1729f, 375f, 1000f)), Struct_1(0u, vec2<bool>(true, true), vec4<bool>(false, true, false, false), vec4<f32>(-1195f, -696f, -954f, -2110f)), Struct_1(4294967295u, vec2<bool>(false, false), vec4<bool>(true, true, false, true), vec4<f32>(-434f, -400f, 1000f, 924f)), Struct_1(4294967295u, vec2<bool>(true, true), vec4<bool>(true, true, false, true), vec4<f32>(-1149f, -643f, -427f, -151f)), Struct_1(4294967295u, vec2<bool>(true, true), vec4<bool>(false, false, false, true), vec4<f32>(-751f, 274f, 1744f, 1188f)), Struct_1(0u, vec2<bool>(false, true), vec4<bool>(false, true, true, false), vec4<f32>(1000f, 864f, -2120f, 1414f)), Struct_1(0u, vec2<bool>(false, true), vec4<bool>(true, false, false, false), vec4<f32>(-628f, -208f, 367f, 1000f)));

var<private> global4: array<Struct_1, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(global1.a.zyy, vec3<f32>(1094f, 2371f, arg_0.b.c), countOneBits(min(72328u, _wgslsmith_sub_u32(global1.c.x, u_input.a))) < 4294967295u));
    global3 = array<Struct_1, 7>();
    var var_1 = arg_0.c.b.a.x;
    let var_2 = arg_0.d;
    let var_3 = select(select(vec3<bool>(true & any(vec3<bool>(global1.b, false, global1.b)), any(!vec2<bool>(global1.b, true)), !(global1.b || false)), vec3<bool>(global1.b, true, true || (global1.b && true)), vec3<bool>(true, all(select(vec2<bool>(global1.b, false), vec2<bool>(global1.b, global1.b), false)), true)), select(vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -587f) != _wgslsmith_f_op_f32(-var_0.x), !global1.b | all(vec2<bool>(false, false)), all(select(vec4<bool>(global1.b, global1.b, false, global1.b), vec4<bool>(true, global1.b, global1.b, true), false))), vec3<bool>(false, !all(vec3<bool>(false, global1.b, global1.b)), !global1.b)), true);
    return _wgslsmith_f_op_f32(f32(-1f) * -891f);
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = vec2<u32>(11322u, firstLeadingBit(u_input.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-807f, _wgslsmith_f_op_f32(func_3(Struct_4(10723u, global2[_wgslsmith_index_u32(var_0.x, 24u)], global1.d, global1.d.a))))))));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global1.c, global1.c), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.d.a.a.x ^ 1u, global1.c.x, 1u), global1.c)), select(!vec2<bool>(!global1.b, global1.b), vec2<bool>(true, true), select(!vec2<bool>(global1.b, global1.b), vec2<bool>(any(vec4<bool>(global1.b, global1.b, false, global1.b)), true), _wgslsmith_f_op_f32(ceil(1000f)) > _wgslsmith_div_f32(global1.d.c, global1.a.x))), !select(select(select(vec4<bool>(global1.b, global1.b, global1.b, global1.b), vec4<bool>(global1.b, false, false, global1.b), vec4<bool>(false, false, global1.b, false)), select(vec4<bool>(global1.b, global1.b, global1.b, false), vec4<bool>(global1.b, global1.b, global1.b, global1.b), true), select(vec4<bool>(global1.b, false, true, global1.b), vec4<bool>(global1.b, false, false, false), vec4<bool>(global1.b, true, global1.b, global1.b))), vec4<bool>(all(vec2<bool>(global1.b, true)), true | global1.b, all(vec3<bool>(global1.b, false, false)), -44078i >= u_input.b.x), global1.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(global1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-651f, global1.a.x, 1034f, -166f))), !(!global1.b))) - vec4<f32>(-574f, _wgslsmith_f_op_f32(174f + _wgslsmith_f_op_f32(min(1134f, -268f))), 1089f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * _wgslsmith_f_op_f32(1037f * global1.d.c)))));
    return firstLeadingBit(arg_0);
}

fn func_4(arg_0: u32) -> Struct_4 {
    let var_0 = ~global1.d.a.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global1.a)) + _wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(-2144f, global1.a.x, global1.a.x, global1.a.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)));
    var var_2 = global1.c;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)) - _wgslsmith_f_op_f32(443f - 237f)))))));
    global3 = array<Struct_1, 7>();
    return Struct_4(abs(var_2.x & firstLeadingBit(~4294967295u)), Struct_3(Struct_2(_wgslsmith_mult_vec2_u32(var_2.xx, global1.c.xy) << (global1.d.b.a % vec2<u32>(32u))), Struct_2(_wgslsmith_div_vec2_u32(var_2.xx, global1.d.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(416f)))), global1.d, Struct_2(var_2.xz));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_3, arg_2: bool) -> f32 {
    global3 = array<Struct_1, 7>();
    global2 = array<Struct_3, 24>();
    let var_0 = func_4(func_2(_wgslsmith_div_u32(arg_0.c.x, arg_1.b.a.x)));
    var var_1 = func_4(reverseBits(49237u)).b;
    global2 = array<Struct_3, 24>();
    return _wgslsmith_f_op_f32(min(arg_0.d.c, arg_1.c));
}

fn func_5(arg_0: u32, arg_1: f32) -> Struct_2 {
    var var_0 = 1589f;
    global3 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -262f));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_4(global1.d.a.a.x).b.c, _wgslsmith_f_op_f32(func_3(Struct_4(0u, global1.d, Struct_3(Struct_2(global1.c.yx), Struct_2(global1.c.zz), var_1.x), global1.d.b))), var_1.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.xwz + vec3<f32>(arg_1, var_1.x, var_1.x)))))));
    let var_3 = true;
    return func_4(u_input.a).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global1.c.x, Struct_3(global1.d.b, func_5(max(global1.d.b.a.x, ~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(1u, 5u)], Struct_3(global1.d.a, Struct_2(vec2<u32>(u_input.a, u_input.a)), -1094f), true)))), 2842f), Struct_3(Struct_2(global1.d.b.a), func_4(~1u).d, global1.a.x), Struct_2(~global1.c.yy));
    var var_1 = !(!select(!vec3<bool>(global1.b, global1.b, false), select(vec3<bool>(global1.b, global1.b, false), select(vec3<bool>(global1.b, global1.b, true), vec3<bool>(false, global1.b, global1.b), false), select(true, true, global1.b)), !all(vec3<bool>(false, global1.b, global1.b))));
    global0 = array<Struct_5, 5>();
    global4 = array<Struct_1, 10>();
    var var_2 = global0[_wgslsmith_index_u32(~reverseBits(u_input.a >> (((u_input.a >> (1u % 32u)) >> (u_input.a % 32u)) % 32u)), 5u)];
    let var_3 = 9209u;
    let var_4 = Struct_3(global1.d.a, func_4(_wgslsmith_mult_u32(~26218u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 53766u, global1.d.a.a.x), reverseBits(vec4<u32>(var_0.a, 0u, 135020u, 34138u))))).b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(229f * var_0.c.c))) + _wgslsmith_f_op_f32(global1.d.c + _wgslsmith_f_op_f32(-var_2.a.x))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.d.c)))))));
    var var_5 = func_4(~func_5(10249u, -580f).a.x);
    var var_6 = func_4(~max(var_0.a, var_4.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(16643i, 22284i, 12529i, 7403i), ~vec4<i32>(-1i, u_input.c.x, -2147483647i, 1i)), -vec4<i32>(1i, -2147483647i, u_input.c.x, u_input.b.x) << ((vec4<u32>(var_6.d.a.x, 0u, var_5.b.b.a.x, var_6.a) << (vec4<u32>(11727u, 0u, 0u, 9482u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(34169i, u_input.b.x, 953i, u_input.c.x), vec4<i32>(-70375i, 86960i, u_input.c.x, u_input.c.x)))), _wgslsmith_div_u32(global1.d.b.a.x, func_2(~4294967295u) & var_2.d.b.a.x), min(_wgslsmith_add_i32(firstTrailingBit(u_input.c.x << (0u % 32u)), -2147483647i), min(firstTrailingBit(u_input.c.x) | -2147483647i, _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c.x, -1i), 10483i))), _wgslsmith_div_i32(u_input.b.x, u_input.c.x));
}

