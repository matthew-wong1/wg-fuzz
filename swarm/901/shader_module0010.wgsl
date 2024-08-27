struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<u32>,
    d: Struct_3,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-1i, vec4<bool>(false, false, false, false), 5664i, false), Struct_1(4926i, vec4<bool>(false, true, false, false), 1i, true), Struct_1(-10406i, vec4<bool>(true, false, false, false), i32(-2147483648), false), Struct_1(2147483647i, vec4<bool>(false, false, true, true), 23990i, false), Struct_1(i32(-2147483648), vec4<bool>(false, false, false, true), i32(-2147483648), false), Struct_1(i32(-2147483648), vec4<bool>(true, false, false, true), 2147483647i, false), Struct_1(0i, vec4<bool>(true, true, true, true), 2147483647i, false), Struct_1(0i, vec4<bool>(false, true, true, false), -1i, true), Struct_1(-1i, vec4<bool>(false, true, true, false), -2824i, false), Struct_1(-26068i, vec4<bool>(false, false, true, true), 1i, false), Struct_1(2147483647i, vec4<bool>(false, true, true, true), 59393i, false), Struct_1(51424i, vec4<bool>(true, true, true, false), 2147483647i, true), Struct_1(2147483647i, vec4<bool>(false, true, false, false), 15600i, false), Struct_1(i32(-2147483648), vec4<bool>(true, true, false, false), 17686i, false), Struct_1(71373i, vec4<bool>(false, false, true, false), -1i, false), Struct_1(-10582i, vec4<bool>(true, false, false, false), -39410i, false), Struct_1(12217i, vec4<bool>(false, false, true, true), 6853i, false), Struct_1(73260i, vec4<bool>(false, false, false, true), i32(-2147483648), true), Struct_1(1i, vec4<bool>(true, false, true, false), 53627i, false), Struct_1(1i, vec4<bool>(true, true, true, false), -5872i, false), Struct_1(i32(-2147483648), vec4<bool>(true, true, true, true), i32(-2147483648), false), Struct_1(i32(-2147483648), vec4<bool>(false, true, false, false), 16632i, false), Struct_1(-1i, vec4<bool>(false, false, true, false), -1i, false));

var<private> global1: array<i32, 16> = array<i32, 16>(2147483647i, 69192i, -27687i, i32(-2147483648), -1i, 0i, -4285i, 0i, -9711i, 0i, 1i, i32(-2147483648), 29821i, 6044i, 9971i, -9739i);

var<private> global2: array<Struct_3, 20>;

var<private> global3: Struct_4;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<bool>) -> f32 {
    global0 = array<Struct_1, 23>();
    global3 = Struct_4(Struct_2(global3.a.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-720f - global3.e.x)), 657f)), _wgslsmith_div_u32(global3.a.c, _wgslsmith_sub_u32(u_input.a.x | u_input.a.x, ~18132u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.d.b.d * -1000f)))), select(!vec2<bool>(all(arg_2), any(arg_2.xz)), global3.b, arg_2.yx), abs(_wgslsmith_add_vec4_u32(global3.c, vec4<u32>(1u, u_input.a.x, 0u, ~24020u))), global3.d, global3.e);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3.d.b.b, _wgslsmith_f_op_f32(arg_0 - 513f)))))) * 777f);
    let var_1 = arg_1.x;
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x | 0u)), abs(4294967295u)), 20u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e.x)));
}

fn func_2() -> f32 {
    let var_0 = global3.e;
    global0 = array<Struct_1, 23>();
    let var_1 = 1u;
    return _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))), -((_wgslsmith_div_vec3_i32(vec3<i32>(71508i, global3.a.a.a, 5122i), vec3<i32>(1i, global1[_wgslsmith_index_u32(global3.c.x, 16u)], -2830i)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(global3.d.b.c, 15690u, 0u), global3.c.xwx) % vec3<u32>(32u))) >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(global3.d.b.c, global3.c.x, u_input.a.x), global3.c.yyw) % vec3<u32>(32u))), global3.d.b.a.b.ywx));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    var var_0 = global3.b;
    global3 = Struct_4(arg_1.b, !select(arg_1.b.a.b.xz, !arg_1.a.b.yw, arg_1.a.b.x), select(vec4<u32>(arg_2.c, arg_1.b.c, 0u, ~global3.c.x), countOneBits(min(vec4<u32>(global3.a.c, 0u, arg_1.b.c, arg_1.b.c), global3.c)), true), arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.d), arg_0)), _wgslsmith_f_op_f32(-arg_2.d), _wgslsmith_f_op_f32(-773f * _wgslsmith_f_op_f32(f32(-1f) * -1336f)))));
    var var_1 = arg_2.a;
    var_0 = vec2<bool>(true, !all(vec4<bool>(!arg_2.a.d, any(vec4<bool>(arg_2.a.d, var_0.x, arg_1.b.a.b.x, false)), false, !var_1.b.x)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.d.b.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.b, arg_2.d)))), _wgslsmith_f_op_f32(func_2()), (~arg_2.c << (~4294967295u % 32u)) != _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.c, 18079u), ~vec2<u32>(13390u, arg_2.c)))), arg_2.d, -1948f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f)));
    return global3.a;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: bool) -> Struct_4 {
    global1 = array<i32, 16>();
    global3 = Struct_4(Struct_2(Struct_1(~_wgslsmith_mod_i32(-2147483647i, 1i), !vec4<bool>(false, arg_2.b.a.d, false, global3.d.b.a.d), -1i | -u_input.b.x, true), arg_2.b.d, ~((0u ^ arg_2.b.c) ^ _wgslsmith_clamp_u32(55149u, global3.c.x, 0u)), global3.d.b.d), vec2<bool>(!all(func_4(1179f, Struct_3(arg_2.a, Struct_2(global3.a.a, arg_2.b.b, 12052u, arg_0)), global3.d.b).a.b.yz), arg_3 || (-arg_1 < arg_2.a.a)), vec4<u32>(~(31509u | _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b.c, arg_2.b.c, 1u), vec3<u32>(arg_2.b.c, u_input.a.x, global3.a.c))), global3.d.b.c, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(global3.c, vec4<u32>(0u, global3.c.x, u_input.a.x, 1u))) >> (~func_4(arg_0, arg_2, global3.d.b).c % 32u), ~global3.c.x), Struct_3(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-147f))), Struct_3(Struct_1(0i, vec4<bool>(global3.a.a.b.x, global3.d.a.d, false, arg_3), -21625i, false), func_4(arg_2.b.d, Struct_3(global3.d.a, arg_2.b), Struct_2(Struct_1(u_input.b.x, arg_2.b.a.b, 1i, arg_3), arg_0, 35344u, global3.a.d))), Struct_2(global3.a.a, _wgslsmith_f_op_f32(-global3.e.x), ~global3.c.x, -566f)).a, arg_2.b), global3.e);
    global3 = Struct_4(func_4(arg_2.b.b, Struct_3(func_4(-144f, Struct_3(arg_2.a, Struct_2(Struct_1(global3.d.a.a, vec4<bool>(global3.b.x, false, arg_2.a.b.x, global3.b.x), -2147483647i, arg_3), arg_2.b.b, u_input.a.x, -993f)), arg_2.b).a, Struct_2(func_4(arg_2.b.d, global2[_wgslsmith_index_u32(0u, 20u)], global3.d.b).a, arg_0, _wgslsmith_mod_u32(u_input.a.x, 4294967295u), -844f)), arg_2.b), select(arg_2.b.a.b.xy, vec2<bool>(arg_2.b.a.d, true), !(arg_3 | all(global3.d.a.b.yyy))), _wgslsmith_clamp_vec4_u32(u_input.a, ~(~_wgslsmith_add_vec4_u32(u_input.a, u_input.a)), u_input.a & abs(reverseBits(vec4<u32>(64274u, arg_2.b.c, 0u, global3.d.b.c)))), Struct_3(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, 1u), 23u)], global3.d.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1097f)), -1164f, arg_2.b.b));
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global3.c.yzw, _wgslsmith_add_vec3_u32(global3.c.zyw, ~(~u_input.a.zwy))), 23u)], func_4(-173f, arg_2, Struct_2(Struct_1(firstLeadingBit(-1i), arg_2.a.b, _wgslsmith_sub_i32(4513i, 2147483647i), arg_3), _wgslsmith_f_op_f32(f32(-1f) * -221f), ~arg_2.b.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.d.b.b - 1552f), 1000f)))));
    let var_1 = !vec3<bool>(global3.d.a.b.x, arg_3, select(true, true, arg_3));
    return Struct_4(arg_2.b, vec2<bool>(!arg_2.b.a.b.x, false), global3.c, Struct_3(global3.d.a, func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.b.d, arg_2.b.b, arg_2.a.d)))), global3.d, Struct_2(func_4(arg_0, Struct_3(Struct_1(u_input.b.x, var_0.a.b, -34141i, true), global3.a), Struct_2(global0[_wgslsmith_index_u32(0u, 23u)], 985f, u_input.a.x, arg_0)).a, arg_2.b.d, 1u, _wgslsmith_f_op_f32(min(111f, global3.d.b.d))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(431f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1604f)) - _wgslsmith_f_op_f32(exp2(arg_0))), 313f)));
}

fn func_1() -> Struct_2 {
    let var_0 = global3.d.b;
    global0 = array<Struct_1, 23>();
    var var_1 = func_5(_wgslsmith_f_op_f32(select(-1600f, -751f, global3.d.b.d > global3.a.b)), global1[_wgslsmith_index_u32(var_0.c, 16u)], Struct_3(Struct_1(abs(global3.d.b.a.c) ^ _wgslsmith_div_i32(2986i, -17217i), vec4<bool>(all(var_0.a.b.yy), u_input.a.x != u_input.a.x, true, any(vec2<bool>(global3.d.b.a.d, global3.b.x))), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(10061i, 1i, global3.a.a.c)), -vec3<i32>(15446i, -6506i, -2147483647i)), all(!global3.d.b.a.b)), func_4(_wgslsmith_f_op_f32(func_2()), global2[_wgslsmith_index_u32(u_input.a.x | ~37913u, 20u)], Struct_2(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 16u)], global3.d.b.a.b, global1[_wgslsmith_index_u32(global3.d.b.c, 16u)], var_0.a.b.x), _wgslsmith_f_op_f32(830f + 512f), var_0.c, _wgslsmith_f_op_f32(global3.d.b.b - global3.e.x)))), all(var_0.a.b.yy) && global3.a.a.b.x);
    let var_2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1584f, var_1.a.d))))), _wgslsmith_add_i32((-2147483647i ^ global1[_wgslsmith_index_u32(u_input.a.x, 16u)]) >> (global3.a.c % 32u), -2147483647i) << (1u % 32u), Struct_3(Struct_1(~(~u_input.b.x), !var_1.d.a.b, ~_wgslsmith_sub_i32(23461i, 2147483647i), -1000f > _wgslsmith_f_op_f32(-global3.e.x)), global3.a), (-global3.d.a.a >> (countOneBits(var_1.c.x) % 32u)) <= (-24480i ^ firstTrailingBit(_wgslsmith_clamp_i32(-1i, var_0.a.a, 65355i))));
    global2 = array<Struct_3, 20>();
    return var_2.d.b;
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    global2 = array<Struct_3, 20>();
    var var_0 = func_5(global3.e.x, ~(~(-1i)), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1354f) - _wgslsmith_f_op_f32(func_3(505f, vec3<i32>(0i, -52227i, 2147483647i), vec3<bool>(false, false, arg_0.a.b.x)))) - -1000f), 1i, global3.d, 13710u <= (global3.c.x << (abs(4294967295u) % 32u))).d, arg_0.b.a.d).d;
    return func_5(625f, max(0i << (~_wgslsmith_dot_vec3_u32(u_input.a.xxz, global3.c.yxw) % 32u), global1[_wgslsmith_index_u32(select(18442u, abs(_wgslsmith_sub_u32(27658u, 1u)), -399f != func_1().d), 16u)]), Struct_3(func_5(_wgslsmith_f_op_f32(trunc(arg_0.b.b)), -1i, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b.c, func_1().c), 20u)], func_4(_wgslsmith_f_op_f32(trunc(var_0.b.b)), func_5(global3.a.b, -2147483647i, arg_0, false).d, func_1()).a.d).a.a, Struct_2(var_0.a, 1846f, ~_wgslsmith_clamp_u32(u_input.a.x, global3.d.b.c, global3.d.b.c), global3.a.d)), var_0.a.b.x).d;
}

fn func_7(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec3_u32(global3.c.zxw, ~(abs(arg_1.c.yxx) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(14581u, 0u, 26796u), global3.c.zyz))) != 4294967295u;
    var var_1 = arg_0.d.b.d;
    var_1 = -1929f;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.e.yz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1.a.d))) - _wgslsmith_div_vec2_f32(arg_0.e.yy, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global3.e.xx + vec2<f32>(353f, arg_2.b)), _wgslsmith_f_op_vec2_f32(-global3.e.yy))))) - _wgslsmith_f_op_vec2_f32(-global3.e.xy));
    let var_3 = false & var_0;
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_4(global3.a, vec2<bool>(true, true), ~(~vec4<u32>(u_input.a.x, 24698u, 3026u, u_input.a.x)), func_6(Struct_3(global0[_wgslsmith_index_u32(~global3.c.x, 23u)], func_1())), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3.a.d), global3.e.x, _wgslsmith_f_op_f32(-global3.e.x)))), func_5(global3.a.b, ~0i, func_5(global3.d.b.d, global3.a.a.a, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global3.d.b.a.d).d, global3.a.a.d), Struct_2(func_6(func_5(-802f, max(2147483647i, 2147483647i), func_6(Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global3.d.b)), false).d).b.a, func_5(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 4324i, func_6(func_5(global3.e.x, 1i, Struct_3(Struct_1(-1i, vec4<bool>(global3.d.b.a.b.x, global3.b.x, global3.b.x, global3.b.x), u_input.b.x, true), global3.d.b), global3.a.a.d).d), global1[_wgslsmith_index_u32(~global3.d.b.c, 16u)] <= -2210i).d.b.d, _wgslsmith_dot_vec3_u32(u_input.a.zww, ~vec3<u32>(u_input.a.x, 7275u, 159344u)), global3.e.x));
    var var_1 = _wgslsmith_div_i32(-(~24535i) << (global3.d.b.c % 32u), 48977i);
    var var_2 = func_6(global3.d).a.b.x != var_0.b.a.b.x;
    let var_3 = false;
    var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(global3.e.xz, _wgslsmith_f_op_f32(1651f + global3.a.d), 1744f, _wgslsmith_f_op_vec3_f32(global3.e - _wgslsmith_f_op_vec3_f32(-global3.e)));
}

