struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_4,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_5) -> bool {
    return all(vec4<bool>(!arg_1.c.a.c.e.x, !all(arg_0.wz), !any(vec4<bool>(false, false, false, arg_1.b.c.d)) == all(arg_0), !(!all(vec2<bool>(arg_0.x, arg_1.b.b.d)))));
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    var var_0 = ~abs(arg_0);
    let var_1 = _wgslsmith_f_op_f32(arg_1.a.b.b * -581f);
    var_0 = arg_1.a.b.a;
    var var_2 = false;
    global0 = array<vec2<i32>, 15>();
    return Struct_1(-2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1148f)), _wgslsmith_f_op_f32(var_1 + -1223f)), -15381i, true, select(vec2<bool>(firstTrailingBit(u_input.b.x) <= -32204i, arg_2), vec2<bool>(true, !any(vec2<bool>(true, true))), func_3(vec4<bool>(arg_2 || true, true, all(vec4<bool>(true, true, true, arg_2)), false), Struct_5(u_input.b, arg_1.a, arg_1, -16670i))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2468f, -1261f) - vec2<f32>(-142f, 1107f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-930f, -654f), vec2<f32>(746f, -808f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-951f, -1513f) + vec2<f32>(466f, -935f)))));
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    let var_1 = select(arg_1.yz, arg_1.xy, true);
    return Struct_5(_wgslsmith_mult_vec3_i32(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.a, 0i), u_input.b)), ~_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, u_input.b), max(u_input.b, u_input.b))), Struct_2(_wgslsmith_div_vec3_u32(abs(~vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), select(arg_0, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 12824u, 1u), vec3<u32>(arg_0.x, 65621u, arg_0.x)), false)), func_2(u_input.a, Struct_4(Struct_2(arg_0, Struct_1(u_input.b.x, var_0.x, 18907i, var_1.x, vec2<bool>(true, arg_1.x)), Struct_1(u_input.a, var_0.x, 28648i, var_1.x, arg_1.yz))), true), func_2(-_wgslsmith_mult_i32(1i, 26355i), Struct_4(Struct_2(vec3<u32>(0u, arg_0.x, arg_0.x), Struct_1(-26427i, var_0.x, -1i, false, arg_1.xy), Struct_1(1i, var_0.x, -2147483647i, arg_1.x, vec2<bool>(true, true)))), arg_1.x && (arg_1.x != arg_1.x))), Struct_4(Struct_2(~abs(arg_0), func_2(u_input.b.x, Struct_4(Struct_2(arg_0, Struct_1(u_input.b.x, 1708f, 300i, arg_1.x, vec2<bool>(true, false)), Struct_1(u_input.a, 1000f, -1i, false, vec2<bool>(false, true)))), true), Struct_1(u_input.b.x, 1750f, _wgslsmith_div_i32(-2147483647i, u_input.b.x), var_1.x, !var_1))), 1i);
}

fn func_4(arg_0: Struct_5, arg_1: f32) -> Struct_3 {
    let var_0 = func_1(vec3<u32>(abs(reverseBits(~arg_0.b.a.x)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstTrailingBit(18485u), 17499u), arg_0.c.a.a.x, ~43695u), arg_0.b.a.x), select(vec3<bool>(true, true, true), !(!(!vec3<bool>(true, arg_0.b.b.d, false))), arg_0.c.a.b.d));
    let var_1 = func_1(var_0.b.a ^ (firstTrailingBit(var_0.b.a) | abs(firstTrailingBit(arg_0.c.a.a))), select(vec3<bool>(arg_0.c.a.b.d | any(vec3<bool>(arg_0.b.c.e.x, false, false)), all(!vec2<bool>(var_0.c.a.b.d, var_0.c.a.c.e.x)), var_0.b.b.d), vec3<bool>(false, false, true | func_1(vec3<u32>(var_0.c.a.a.x, 0u, arg_0.b.a.x), vec3<bool>(arg_0.b.c.d, true, true)).b.b.d), select(select(!vec3<bool>(true, true, var_0.b.b.e.x), !vec3<bool>(var_0.c.a.b.d, arg_0.b.c.e.x, true), true), vec3<bool>(select(arg_0.c.a.b.e.x, arg_0.b.b.d, arg_0.b.b.e.x), arg_0.b.b.d, arg_0.b.b.e.x && true), any(select(vec4<bool>(var_0.c.a.b.e.x, false, true, var_0.b.b.d), vec4<bool>(var_0.b.b.e.x, arg_0.c.a.c.e.x, var_0.c.a.c.d, false), var_0.c.a.b.d))))).c.a;
    var var_2 = !vec3<bool>(!all(select(vec4<bool>(arg_0.b.b.d, false, true, var_0.b.b.d), vec4<bool>(var_1.c.d, true, true, true), vec4<bool>(arg_0.b.c.e.x, var_1.c.d, false, arg_0.c.a.c.d))), true, var_1.c.e.x);
    global0 = array<vec2<i32>, 15>();
    var var_3 = var_1.c;
    return Struct_3(var_3.d, var_0.c.a.b);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>) -> i32 {
    var var_0 = vec4<bool>(false, arg_0.a, !arg_0.a, true);
    let var_1 = Struct_1(1i, _wgslsmith_f_op_f32(-arg_0.b.b), abs(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(-6588i, -16968i, -2147483647i, 13662i)), vec4<i32>(1i, 1i, 1i, 1i))), arg_0.a, !vec2<bool>(func_2(firstTrailingBit(1i), func_1(vec3<u32>(1u, 118877u, 0u), var_0.yzw).c, select(var_0.x, arg_0.b.d, arg_0.b.e.x)).d, false));
    var var_2 = func_4(func_1(~vec3<u32>(_wgslsmith_sub_u32(45344u, 19571u), 1u, abs(41728u)), select(var_0.wyy, select(!var_0.xww, select(vec3<bool>(var_1.d, true, true), vec3<bool>(true, var_0.x, var_0.x), false), vec3<bool>(true, true, false)), var_0.yzx)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(func_1(vec3<u32>(4294967295u, 0u, 0u), var_0.xyx).b.c.b, _wgslsmith_f_op_f32(round(arg_0.b.b)))) + _wgslsmith_f_op_f32(-arg_0.b.b)), -194f, !(!var_1.e.x != true)))).b.e;
    var_0 = vec4<bool>(var_0.x, var_1.d, func_3(vec4<bool>(false, var_0.x, false, any(var_0.zw)), func_1(~firstTrailingBit(vec3<u32>(0u, 1u, 61456u)), vec3<bool>(-1i != var_1.a, true, true))), var_1.d);
    var_0 = select(vec4<bool>(!var_2.x, true & var_2.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 9802u), vec2<u32>(12001u, 1518u)) < 12811u, var_2.x), !select(!vec4<bool>(var_1.d, arg_0.a, arg_0.b.d, var_0.x), !vec4<bool>(arg_0.b.d, var_2.x, arg_0.b.d, var_2.x), all(vec3<bool>(true, true, false))), vec4<bool>(true, func_3(!vec4<bool>(arg_0.b.d, var_2.x, false, true), Struct_5(vec3<i32>(arg_1.x, -23727i, var_1.c), func_1(vec3<u32>(52991u, 11025u, 20074u), var_0.yxw).b, func_1(vec3<u32>(26138u, 1u, 1u), var_0.yyy).c, arg_0.b.c)), (_wgslsmith_mod_i32(arg_1.x, arg_0.b.c) != 0i) | !func_2(2147483647i, Struct_4(Struct_2(vec3<u32>(25963u, 4294967295u, 3302u), var_1, var_1)), var_2.x).e.x, true));
    return abs(var_1.c);
}

fn func_6(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: f32) -> Struct_2 {
    global0 = array<vec2<i32>, 15>();
    let var_0 = vec3<i32>(-6571i, countOneBits(_wgslsmith_add_i32(_wgslsmith_mult_i32(~(-1i), arg_0.x & u_input.a), u_input.a)), 0i);
    global0 = array<vec2<i32>, 15>();
    let var_1 = !select(vec4<bool>(true, false, any(vec4<bool>(true, true, true, true)), true), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, func_4(Struct_5(vec3<i32>(u_input.a, 2147483647i, 28498i), Struct_2(vec3<u32>(1u, 35985u, 46856u), Struct_1(u_input.a, -807f, 1i, false, vec2<bool>(false, true)), Struct_1(var_0.x, 1090f, arg_1.x, false, vec2<bool>(true, false))), Struct_4(Struct_2(vec3<u32>(88806u, 0u, 66348u), Struct_1(0i, arg_2, arg_1.x, false, vec2<bool>(false, false)), Struct_1(2147483647i, arg_2, -16366i, true, vec2<bool>(true, false)))), arg_1.x), arg_2).b.d, true)), func_4(Struct_5(var_0, Struct_2(vec3<u32>(20292u, 81370u, 0u), Struct_1(arg_1.x, arg_2, 44985i, false, vec2<bool>(true, true)), Struct_1(0i, arg_2, 0i, true, vec2<bool>(true, false))), Struct_4(Struct_2(vec3<u32>(11557u, 17108u, 4294967295u), Struct_1(arg_1.x, -784f, arg_1.x, true, vec2<bool>(false, false)), Struct_1(arg_0.x, 948f, arg_0.x, true, vec2<bool>(false, true)))), -var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(947f)), arg_2)).b.d);
    global0 = array<vec2<i32>, 15>();
    return func_1(~vec3<u32>(1u, 1u, 1u), vec3<bool>(u_input.a > abs(~0i), false, select(var_1.x, true, false))).c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(select(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a) >> (vec3<u32>(97312u, 0u, 1u) % vec3<u32>(32u)), ~u_input.b), vec3<i32>(2147483647i, ~0i, min(u_input.a, u_input.b.x))), ~(~u_input.b), vec3<bool>(true, true, true)));
    let var_1 = 21859i;
    global0 = array<vec2<i32>, 15>();
    var var_2 = func_6(var_0.xy, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, var_0.x, 18637i), vec4<i32>(-2147483647i, var_1, u_input.b.x, u_input.a)), var_1, ~var_0.x), -firstLeadingBit(1i)), -5322i, func_5(func_4(func_1(vec3<u32>(46191u, 9540u, 119773u), vec3<bool>(true, false, false)), -103f), abs(var_0)), var_0.x), -1445f);
    var var_3 = Struct_4(Struct_2(~vec3<u32>(var_2.a.x, var_2.a.x, 87399u) ^ var_2.a, var_2.b, func_1(_wgslsmith_sub_vec3_u32(min(vec3<u32>(4294967295u, var_2.a.x, 914u), vec3<u32>(var_2.a.x, 1u, 0u)), _wgslsmith_mod_vec3_u32(var_2.a, var_2.a)), !select(vec3<bool>(var_2.c.e.x, false, true), vec3<bool>(var_2.b.d, var_2.c.e.x, false), true)).b.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.b.b, var_3.a.b.b, 549f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1166f, 2218f, 1750f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.b.b, -1214f, -100f) + vec3<f32>(var_2.b.b, 1528f, var_3.a.c.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.b.b, 1000f, -166f))))));
}

