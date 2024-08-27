struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(1236f, -363f), vec2<f32>(1820f, 908f), vec2<f32>(2336f, 502f), vec2<f32>(983f, -797f), vec2<f32>(-473f, -211f), vec2<f32>(-1648f, 1872f));

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(0i, 2147483647i, -1i), 4294967295u, -686f, vec2<u32>(0u, 4294967295u), Struct_1(-26494i, 33813i, 0i)), Struct_2(Struct_1(i32(-2147483648), -55381i, i32(-2147483648)), 58117u, -1522f, vec2<u32>(4294967295u, 23929u), Struct_1(2147483647i, 2147483647i, -21570i)), Struct_2(Struct_1(19990i, -10731i, 16586i), 54280u, 688f, vec2<u32>(42480u, 4294967295u), Struct_1(i32(-2147483648), -33942i, 0i)), Struct_2(Struct_1(-8586i, -1i, 0i), 0u, -746f, vec2<u32>(32795u, 4660u), Struct_1(2147483647i, -9152i, 37871i)), Struct_2(Struct_1(-6622i, 1i, 18209i), 5745u, -711f, vec2<u32>(43316u, 0u), Struct_1(-67260i, 21193i, -2408i)), Struct_2(Struct_1(2147483647i, 2147483647i, i32(-2147483648)), 135032u, 509f, vec2<u32>(4294967295u, 41213u), Struct_1(22639i, i32(-2147483648), -32301i)), Struct_2(Struct_1(43109i, -14865i, 0i), 22065u, -776f, vec2<u32>(23456u, 21901u), Struct_1(90977i, 38973i, -31631i)), Struct_2(Struct_1(-21427i, -30442i, 17035i), 0u, 208f, vec2<u32>(42825u, 30806u), Struct_1(-1i, -46385i, -1i)), Struct_2(Struct_1(-14087i, 26613i, 0i), 4294967295u, 1355f, vec2<u32>(12419u, 1u), Struct_1(-20157i, 17219i, -38831i)), Struct_2(Struct_1(41799i, 2426i, i32(-2147483648)), 47030u, 1307f, vec2<u32>(20817u, 1u), Struct_1(i32(-2147483648), -30177i, -1i)), Struct_2(Struct_1(-12696i, -1i, 0i), 0u, 562f, vec2<u32>(104980u, 4294967295u), Struct_1(0i, 2147483647i, 26865i)), Struct_2(Struct_1(-16059i, -59651i, 0i), 4294967295u, 583f, vec2<u32>(59306u, 1u), Struct_1(25025i, 2899i, 2147483647i)), Struct_2(Struct_1(1i, 12401i, 7863i), 201u, 412f, vec2<u32>(1u, 1u), Struct_1(1i, 2147483647i, -10740i)), Struct_2(Struct_1(-13069i, 1i, 0i), 1u, 499f, vec2<u32>(54359u, 4294967295u), Struct_1(-18357i, i32(-2147483648), 2147483647i)), Struct_2(Struct_1(i32(-2147483648), -1i, 1i), 17495u, -125f, vec2<u32>(0u, 27982u), Struct_1(-15027i, 24793i, -1i)), Struct_2(Struct_1(1i, 0i, 0i), 43358u, -865f, vec2<u32>(1u, 42568u), Struct_1(0i, -5128i, 34040i)));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-1i, -1i, 0i), Struct_1(10598i, 60030i, 44604i), Struct_1(-27388i, 23141i, -28562i), Struct_1(31475i, -58809i, -1i), Struct_1(0i, i32(-2147483648), 1i), Struct_1(-25566i, 18840i, -1i), Struct_1(-30573i, -295i, 1i), Struct_1(-33232i, -38579i, 0i), Struct_1(57184i, -1i, 0i), Struct_1(21850i, 0i, 14267i), Struct_1(14893i, -26169i, 1i), Struct_1(20081i, 0i, 21618i), Struct_1(36642i, 1i, -47568i), Struct_1(13308i, -14122i, 1i), Struct_1(-31572i, -24435i, -700i), Struct_1(0i, 50213i, -1801i), Struct_1(2147483647i, -34572i, 1i), Struct_1(24073i, 2147483647i, 0i), Struct_1(2147483647i, -1i, 7168i), Struct_1(0i, i32(-2147483648), -23514i), Struct_1(1i, 2147483647i, 2147483647i), Struct_1(-46650i, 7982i, 2147483647i), Struct_1(-9023i, 70174i, -54263i));

var<private> global3: array<vec2<i32>, 14>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global3 = array<vec2<i32>, 14>();
    let var_0 = select(vec3<bool>(!(9420i > _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, 1i, arg_0), vec4<i32>(arg_1.a, arg_3.c, -1i, -9106i))), false, true), !vec3<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-arg_2.c) == _wgslsmith_f_op_f32(-arg_2.c), all(vec4<bool>(false, false, true, true))), all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true)));
    let var_1 = Struct_1(arg_1.a, ~(~0i), select(104i, u_input.a.x, any(!(!vec4<bool>(true, true, true, var_0.x)))));
    return _wgslsmith_div_u32(~reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, arg_2.d.x), vec2<u32>(u_input.c.x, 15724u)), u_input.c >> (vec2<u32>(arg_2.b, arg_2.b) % vec2<u32>(32u)))), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(4294967295u, 8059u, arg_2.d.x, 1u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(21010u, arg_2.b, u_input.e), vec3<u32>(4294967295u, arg_2.b, 4294967295u)) & _wgslsmith_mult_u32(arg_2.d.x, 1u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, u_input.c.x), u_input.e, u_input.d.x), max(u_input.e | arg_2.d.x, u_input.c.x), 0u)));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>) -> u32 {
    let var_0 = vec2<u32>(5807u, ~min(u_input.d.x, arg_0));
    global0 = array<vec2<f32>, 6>();
    global1 = array<Struct_2, 16>();
    global3 = array<vec2<i32>, 14>();
    global0 = array<vec2<f32>, 6>();
    return 1u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(72001u, 23u)], ~max(u_input.e, u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(139f))))), ~firstTrailingBit(u_input.c), Struct_1(0i, u_input.b, abs(-max(2147483647i, u_input.a.x))));
    let var_1 = -435f;
    let var_2 = vec4<i32>(_wgslsmith_add_i32(reverseBits(firstLeadingBit(-var_0.a.b)), _wgslsmith_mult_i32(var_0.e.a, u_input.b ^ -22088i)), abs(~_wgslsmith_sub_i32(u_input.a.x, u_input.b)), _wgslsmith_mult_i32(countOneBits(1i), 59829i), -firstLeadingBit(-8693i));
    var var_3 = global2[_wgslsmith_index_u32(~select(func_4(~func_3(0i, Struct_1(var_2.x, u_input.a.x, 19214i), global1[_wgslsmith_index_u32(1u, 16u)], Struct_1(var_0.e.c, u_input.a.x, var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(456f, var_0.c, var_0.c, 1727f) + vec4<f32>(-719f, var_1, var_0.c, var_0.c)))), u_input.e, true && all(vec2<bool>(true, true))), 23u)];
    global3 = array<vec2<i32>, 14>();
    return global2[_wgslsmith_index_u32(4294967295u, 23u)];
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(func_2(), ~u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1425f), u_input.d.yx >> ((~u_input.c | ~(u_input.c & u_input.c)) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(~4294967295u, 23u)]);
    global3 = array<vec2<i32>, 14>();
    var var_1 = _wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(-259f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2182f, var_0.c)) - _wgslsmith_f_op_f32(floor(-1219f)))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1361f)) - -958f))) + var_0.c);
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    global3 = array<vec2<i32>, 14>();
    var var_0 = -695f;
    let var_1 = -2147483647i;
    var var_2 = select(!(!vec2<bool>(any(vec4<bool>(false, false, false, false)), true)), select(vec2<bool>(false, false), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), any(vec4<bool>(false, false, true, false)))), vec2<bool>(true, true)), select(true, true, -173f > _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(arg_0.c + arg_0.c))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, 282f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1552f))), _wgslsmith_f_op_f32(-992f - -908f)))) - _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(~1u >> (((arg_0.b | arg_1) ^ 1u) % 32u), 6u)]));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 16>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1547f)))), -646f, -221f, _wgslsmith_f_op_f32(1000f + 2392f));
    var var_1 = false;
    var var_2 = 4294967295u;
    var var_3 = func_5(func_1(), ~_wgslsmith_sub_u32(1u, u_input.e));
    var var_4 = Struct_2(global2[_wgslsmith_index_u32(4294967295u, 23u)], func_3(4191i, func_5(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u), u_input.d.yx), 16u)], ~69789u & u_input.e), Struct_2(global2[_wgslsmith_index_u32(3227u, 23u)], 26256u, var_0.x, vec2<u32>(countOneBits(u_input.e), 1u), func_1().a), Struct_1(var_3.a, ~(~var_3.b), _wgslsmith_dot_vec2_i32(~u_input.a, _wgslsmith_div_vec2_i32(global3[_wgslsmith_index_u32(u_input.e, 14u)], vec2<i32>(u_input.a.x, 1i))))), var_0.x, vec2<u32>(select(29833u, ~(36246u << (1u % 32u)), false), ~(~0u) << ((~u_input.d.x << (reverseBits(4294967295u) % 32u)) % 32u)), global2[_wgslsmith_index_u32(~(~(~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x))), 23u)]);
    global2 = array<Struct_1, 23>();
    var var_5 = func_1().e;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_4.d.x, ~var_4.d.x, ~1u, 4294967295u), vec3<u32>(~u_input.e << (0u % 32u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_4.b, 47555u, u_input.d.x, 0u)), ~vec4<u32>(u_input.c.x, u_input.e, var_4.b, var_4.d.x)), ~16952u), ~vec3<i32>(2147483647i, -u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, var_0.x)))), ~var_4.b);
}

