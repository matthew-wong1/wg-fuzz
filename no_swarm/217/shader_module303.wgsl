struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 85208u, 66910u);

var<private> global1: Struct_1 = Struct_1(1i, vec4<bool>(false, false, false, true), vec2<f32>(899f, -1000f));

var<private> global2: Struct_1;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = Struct_3(Struct_1(~u_input.b, !select(select(vec4<bool>(global1.b.x, global1.b.x, true, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, global1.b.x, false, true), vec4<bool>(global2.b.x, global1.b.x, true, false), global2.b.x), select(global1.b, vec4<bool>(global1.b.x, false, global1.b.x, global2.b.x), global2.b)), vec2<f32>(-456f, 1000f)));
    var var_1 = Struct_2(Struct_1(1i, select(!global2.b, select(select(vec4<bool>(var_0.a.b.x, false, global2.b.x, false), vec4<bool>(true, true, true, var_0.a.b.x), global2.b), !global1.b, true), all(!vec2<bool>(global2.b.x, true))), var_0.a.c), global2.c.x, !select(select(!global2.b.zx, select(vec2<bool>(false, global2.b.x), vec2<bool>(false, global1.b.x), global2.b.wy), global2.b.x), !(!vec2<bool>(true, global2.b.x)), !(!vec2<bool>(true, var_0.a.b.x))), var_0.a);
    var var_2 = Struct_1(-42941i, !select(select(select(global2.b, global2.b, global1.b.x), vec4<bool>(false, var_0.a.b.x, var_0.a.b.x, false), var_1.d.c.x <= -461f), vec4<bool>(!global2.b.x, any(var_0.a.b), global2.b.x, all(var_1.a.b.xxy)), !(false != global1.b.x)), _wgslsmith_f_op_vec2_f32(global1.c * vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.c.x), var_1.a.c.x)));
    var var_3 = 50281u;
    var var_4 = global0.x;
    return var_0.a.b.xw;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(arg_0.a, 988f, !select(!func_3(vec3<u32>(u_input.a, 1u, global0.x)), func_3(vec3<u32>(23615u, 4345u, global0.x) << (vec3<u32>(1u, 1u, global0.x) % vec3<u32>(32u))), func_3(vec3<u32>(u_input.a, 0u, u_input.a))), arg_0.a);
    global2 = arg_0.a;
    global1 = var_0.d;
    let var_1 = Struct_1(_wgslsmith_clamp_i32(~abs(_wgslsmith_mult_i32(arg_0.a.a, global1.a)), 1i, _wgslsmith_add_i32(abs(~u_input.c), global2.a)), !vec4<bool>(u_input.b <= var_0.d.a, all(vec3<bool>(global2.b.x, false, arg_0.a.b.x)), true, u_input.c != countOneBits(-2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1039f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(612f)), _wgslsmith_f_op_f32(max(1161f, -248f)), false)))));
    global1 = Struct_1(countOneBits(countOneBits(-(~u_input.c))), select(select(vec4<bool>(all(var_0.a.b.wxy), var_0.c.x, !global2.b.x, true), vec4<bool>(global2.c.x <= var_0.d.c.x, var_1.b.x, true, true), var_0.d.b), !select(global1.b, select(arg_0.a.b, global2.b, false), vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, false, true)), !(!select(vec4<bool>(global2.b.x, global1.b.x, false, true), vec4<bool>(arg_0.a.b.x, global1.b.x, false, true), arg_0.a.b.x))), _wgslsmith_f_op_vec2_f32(arg_0.a.c - vec2<f32>(-270f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b + global1.c.x), var_1.c.x)))));
    return Struct_3(var_1);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<f32>) -> u32 {
    let var_0 = global2.b.x;
    global0 = vec3<u32>(u_input.a, abs(100505u), countOneBits(~global0.x)) << (~vec3<u32>(_wgslsmith_clamp_u32(1u, ~12212u, 1u), global0.x, ~u_input.a) % vec3<u32>(32u));
    let var_1 = arg_2;
    let var_2 = func_2(func_2(func_2(var_1)));
    global1 = func_2(Struct_3(Struct_1(1i, vec4<bool>(func_3(vec3<u32>(12430u, global0.x, 1u)).x, arg_2.a.b.x, false, !global1.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.c))))).a;
    return ~global0.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: bool, arg_3: u32) -> Struct_1 {
    global0 = vec3<u32>(0u, global0.x, _wgslsmith_add_u32(func_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.c.x, 702f, global2.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, global1.c.x, global1.c.x)))), Struct_1(select(global1.a, 36008i, global1.b.x), select(vec4<bool>(true, global2.b.x, global1.b.x, arg_1), vec4<bool>(false, false, false, global2.b.x), global2.b.x), global2.c), func_2(Struct_3(Struct_1(-32589i, global1.b, vec2<f32>(global2.c.x, 616f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global2.c)))), ~(~74410u)));
    var var_0 = func_2(Struct_3(Struct_1(arg_0.x, !vec4<bool>(false, false, true, global2.b.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1511f, -174f))), global2.c))));
    let var_1 = ~(~abs(-1i));
    var var_2 = func_2(func_2(Struct_3(var_0.a))).a;
    var_0 = Struct_3(var_0.a);
    return func_2(Struct_3(func_2(func_2(Struct_3(var_0.a))).a)).a;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = false;
    let var_1 = Struct_2(func_1(vec4<i32>(-abs(global2.a), min(u_input.b, _wgslsmith_sub_i32(29684i, global1.a)), ~u_input.b, firstLeadingBit(_wgslsmith_div_i32(-37765i, -50282i))), _wgslsmith_div_f32(arg_1.a.c.x, _wgslsmith_f_op_f32(-1000f - global2.c.x)) >= -621f, func_3(~vec3<u32>(7652u, 1u, global0.x)).x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 71572u, 51153u), max(vec3<u32>(39369u, 1u, u_input.a), vec3<u32>(16555u, u_input.a, global0.x))), abs(vec3<u32>(u_input.a, 12839u, u_input.a)))), arg_1.a.c.x, vec2<bool>(!var_0, ((global1.a << (0u % 32u)) > ~(-2147483647i)) || true), arg_1.a);
    let var_2 = func_2(Struct_3(var_1.a)).a.a;
    global0 = countOneBits(~(~(vec3<u32>(25380u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 0u, global0.x)))) | _wgslsmith_mod_vec3_u32(min(vec3<u32>(1u, 38975u, u_input.a), vec3<u32>(0u >> (global0.x % 32u), 1u, 44747u)), ~(~vec3<u32>(0u, 16113u, global0.x)));
    global2 = Struct_1(min(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(global1.a, 28727i, global1.a), -vec3<i32>(1i, 9979i, 0i)), -40820i), -_wgslsmith_dot_vec2_i32(vec2<i32>(-18069i, -1i), vec2<i32>(global2.a, global1.a)) << ((max(8622u, global0.x) >> (~u_input.a % 32u)) % 32u)), global2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.c, var_1.d.c)))));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(select(vec2<bool>(true, global1.b.x), vec2<bool>(_wgslsmith_mod_u32(global0.x, global0.x) != u_input.a, global1.c.x != _wgslsmith_f_op_f32(-global2.c.x)), vec2<bool>(true, true)), Struct_3(func_1(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(global2.a, global2.a, u_input.b, u_input.b), vec4<i32>(global2.a, global1.a, 0i, global2.a)), -vec4<i32>(u_input.b, 0i, 35801i, 2147483647i), -vec4<i32>(global2.a, u_input.c, -11146i, 1884i)), !all(vec4<bool>(global2.b.x, global1.b.x, false, true)), !global1.b.x, _wgslsmith_sub_u32(~u_input.a, reverseBits(u_input.a)))));
    global1 = Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-max(vec2<i32>(-1i, u_input.c), vec2<i32>(global1.a, global2.a)), reverseBits(vec2<i32>(-46680i, u_input.b))), 1247i), !vec4<bool>(false, global1.b.x, _wgslsmith_mod_i32(global1.a, -1i) <= func_2(Struct_3(Struct_1(global1.a, vec4<bool>(global1.b.x, global1.b.x, false, true), vec2<f32>(global1.c.x, global1.c.x)))).a.a, !global2.b.x), vec2<f32>(-528f, _wgslsmith_div_f32(global2.c.x, 1569f)));
    global0 = reverseBits(~vec3<u32>(1u << (u_input.a % 32u), global0.x, _wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(1u, global0.x))));
    global1 = Struct_1(abs(global1.a), !select(func_2(func_2(Struct_3(Struct_1(u_input.c, global2.b, vec2<f32>(-361f, global1.c.x))))).a.b, func_2(Struct_3(Struct_1(global1.a, vec4<bool>(global1.b.x, global1.b.x, false, global2.b.x), global2.c))).a.b, !global2.b), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, 525f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1179f, -551f) + vec2<f32>(global1.c.x, -1581f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1396f, global2.c.x) * vec2<f32>(global2.c.x, 643f)))), func_2(Struct_3(func_5(vec2<bool>(global2.b.x, true), Struct_3(Struct_1(u_input.c, vec4<bool>(true, false, global2.b.x, true), vec2<f32>(global2.c.x, 874f)))))).a.c, all(!(!vec4<bool>(global2.b.x, false, global2.b.x, global2.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global1.c.x, global1.c.x, 1326f), vec3<f32>(-1181f, global1.c.x, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, -485f, 1000f) * vec3<f32>(global2.c.x, 452f, 564f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1045f, global1.c.x, global1.c.x), vec3<f32>(global1.c.x, global1.c.x, global1.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, -1047f, global2.c.x) - vec3<f32>(1143f, -336f, 618f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1000f, 1772f), 1943f, _wgslsmith_f_op_f32(global2.c.x + global1.c.x)), vec3<f32>(-380f, _wgslsmith_f_op_f32(min(676f, 828f)), -1000f))), vec4<i32>(-(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a, 15415i), vec2<i32>(global1.a, 2147483647i)) << (~u_input.a % 32u)), reverseBits(firstLeadingBit(global2.a)), -2147483647i, 67651i), _wgslsmith_f_op_f32(step(func_1(vec4<i32>(global2.a, 73075i, u_input.b ^ global2.a, 26313i), func_4(vec3<f32>(-1927f, global1.c.x, 1596f), Struct_1(u_input.b, vec4<bool>(true, true, global1.b.x, false), global2.c), Struct_3(Struct_1(-29226i, global2.b, global1.c)), global2.c) != 67327u, true != (0u != global0.x), _wgslsmith_clamp_u32(8151u, ~u_input.a, ~1u)).c.x, global2.c.x)), func_1(-_wgslsmith_div_vec4_i32(~vec4<i32>(24816i, -1i, -2147483647i, u_input.b), max(vec4<i32>(u_input.b, -8035i, global1.a, global1.a), vec4<i32>(6872i, global1.a, u_input.b, -1i))), !func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, 1u, global0.x))).x, func_2(func_2(func_2(Struct_3(Struct_1(global1.a, vec4<bool>(global2.b.x, false, global2.b.x, global1.b.x), global1.c))))).a.b.x, u_input.a).a);
}

