struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(-510f, vec3<i32>(1i, 31406i, -59607i), 1u), Struct_1(1000f, vec3<i32>(4057i, -46585i, 845i), 21472u), Struct_1(-1188f, vec3<i32>(-10327i, 2147483647i, -1i), 34053u), false, 1722f), Struct_2(Struct_1(-2716f, vec3<i32>(51624i, 1i, -1i), 4294967295u), Struct_1(355f, vec3<i32>(2147483647i, -14596i, -1i), 14606u), Struct_1(-1000f, vec3<i32>(-3584i, 0i, 21646i), 4294967295u), true, -364f), Struct_2(Struct_1(-2224f, vec3<i32>(0i, 27461i, -1i), 782u), Struct_1(-1945f, vec3<i32>(22497i, 0i, 0i), 40789u), Struct_1(488f, vec3<i32>(34495i, 21441i, 0i), 1u), false, 337f), Struct_2(Struct_1(1467f, vec3<i32>(15037i, 2147483647i, -4611i), 1u), Struct_1(216f, vec3<i32>(25630i, 1i, -1i), 1u), Struct_1(374f, vec3<i32>(25200i, 0i, -16220i), 4294967295u), false, -1000f), Struct_2(Struct_1(-1568f, vec3<i32>(-1i, i32(-2147483648), 1i), 82770u), Struct_1(-1717f, vec3<i32>(70586i, -13667i, 16466i), 1431u), Struct_1(206f, vec3<i32>(28258i, -1i, -57753i), 1u), false, 670f));

var<private> global1: array<i32, 18>;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 27752u, 12112u);

var<private> global3: array<vec4<bool>, 6>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global3 = array<vec4<bool>, 6>();
    global3 = array<vec4<bool>, 6>();
    let var_0 = 55446u;
    global1 = array<i32, 18>();
    var var_1 = global0[_wgslsmith_index_u32(4294967295u >> (min(1u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_0, arg_0.x), ~1u), 1u)) % 32u), 5u)];
    return _wgslsmith_f_op_f32(max(var_1.a.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.a)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a, arg_3.a, 293f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-413f, arg_3.a, -146f) - vec3<f32>(1937f, arg_3.a, arg_3.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1965f, arg_3.a, arg_3.a))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-967f, arg_3.a, arg_3.a) * vec3<f32>(1000f, arg_3.a, -1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a, 1494f, arg_3.a) - vec3<f32>(arg_3.a, arg_3.a, 103f))))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, 37287u, 1u, u_input.d), vec4<u32>(59674u, u_input.d, 15887u, u_input.d)))), arg_3.a)), -300f, arg_3.a));
    global2 = vec3<u32>(arg_3.c, abs(u_input.d), ~(~(u_input.d & global2.x)));
    var var_1 = vec3<bool>(all(select(!vec3<bool>(false, arg_0.x, arg_1.x), !vec3<bool>(arg_0.x, false, arg_1.x), (global1[_wgslsmith_index_u32(u_input.d, 18u)] >> (arg_2 % 32u)) >= arg_3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.a, arg_3.a, false)) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-489f * 651f) - var_0.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.x);
    var var_2 = firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(~(~global2.x), u_input.d), _wgslsmith_clamp_vec2_u32(global2.zy, reverseBits(abs(vec2<u32>(57313u, 16479u))), vec2<u32>(arg_2, u_input.d >> (2283u % 32u)))));
    global1 = array<i32, 18>();
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    global1 = array<i32, 18>();
    let var_0 = arg_1.a;
    let var_1 = arg_1.b.zx;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1849f)) - 1219f), func_2(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)), 1u, Struct_1(_wgslsmith_f_op_f32(exp2(arg_0.a)), arg_1.b & arg_0.b, arg_0.c)).b, _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(global2.yx, global2.zx), 4294967295u)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + arg_1.a)))), arg_2, arg_3.c), func_2(vec2<bool>(9964u == abs(arg_3.c), false), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false)), _wgslsmith_add_u32(arg_3.c, func_2(vec2<bool>(true, true), vec2<bool>(true, true), 12665u, arg_0).c), arg_1), select(true, true == (var_1.x <= -44078i), true), arg_3.a);
    let var_3 = Struct_2(func_2(select(!(!vec2<bool>(var_2.d, false)), !(!vec2<bool>(false, var_2.d)), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(var_2.d, var_2.d), vec2<bool>(true, var_2.d)), select(vec2<bool>(false, var_2.d), vec2<bool>(var_2.d, false), vec2<bool>(false, false)))), vec2<bool>(true, any(vec2<bool>(var_2.d, var_2.d)) && !var_2.d), _wgslsmith_clamp_u32(1u, 4294967295u, ~4294967295u), arg_1), Struct_1(-1812f, min(arg_2, min(vec3<i32>(u_input.b, 3011i, 0i) & arg_2, _wgslsmith_mult_vec3_i32(arg_3.b, vec3<i32>(-5695i, 1i, arg_2.x)))), arg_3.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(719f - -301f), -1286f))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(36048i, arg_3.b.x, arg_3.b.x), vec3<i32>(1i, arg_2.x, 1i)) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(3990u, arg_0.c, 82511u), vec3<u32>(12793u, global2.x, arg_1.c)) % vec3<u32>(32u)), 1u), all(vec4<bool>(_wgslsmith_add_u32(1u, arg_1.c) == firstLeadingBit(0u), any(vec2<bool>(true, false)), any(select(vec4<bool>(var_2.d, true, var_2.d, var_2.d), global3[_wgslsmith_index_u32(arg_1.c, 6u)], false)), !(-619f >= arg_3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.a.a * arg_3.a)))) + arg_3.a));
    return -45800i;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(-1000f, ~vec3<i32>(func_4(func_2(vec2<bool>(true, true), vec2<bool>(false, true), 39852u, Struct_1(557f, vec3<i32>(28245i, u_input.c.x, 0i), 29152u)), func_2(vec2<bool>(true, true), vec2<bool>(true, false), u_input.d, Struct_1(-662f, vec3<i32>(global1[_wgslsmith_index_u32(u_input.d, 18u)], u_input.a.x, global1[_wgslsmith_index_u32(u_input.d, 18u)]), 49611u)), ~u_input.a, Struct_1(-204f, vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(26990u, 18u)], global1[_wgslsmith_index_u32(u_input.d, 18u)]), global2.x)), u_input.e.x, -2147483647i), global2.x);
    global2 = ~_wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(4294967295u, u_input.d), 1u, 1u << (global2.x % 32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 1u) & vec4<u32>(global2.x, 26754u, global2.x, var_0.c), vec4<u32>(var_0.c, 23151u, var_0.c, 70615u) << (vec4<u32>(var_0.c, u_input.d, var_0.c, global2.x) % vec4<u32>(32u))), global2.x, ~0u));
    var var_1 = global0[_wgslsmith_index_u32(~firstLeadingBit(~_wgslsmith_add_u32(~var_0.c, u_input.d)), 5u)];
    global0 = array<Struct_2, 5>();
    global1 = array<i32, 18>();
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 5>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1547f)), -1060f, _wgslsmith_f_op_f32(-arg_3.c.a)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.a, arg_3.a.a, arg_3.c.a) * vec3<f32>(-912f, -872f, -888f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a, arg_0.a, 482f), vec3<f32>(arg_0.a, arg_3.b.a, arg_3.b.a))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-935f, 931f, 781f)))) - vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(trunc(arg_3.a.a)), _wgslsmith_f_op_f32(-1000f + arg_0.a)))));
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0))));
    global0 = array<Struct_2, 5>();
    return Struct_1(1000f, firstTrailingBit(arg_0.b), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(~global2.zy, vec2<u32>(29942u, 0u)), _wgslsmith_div_vec2_u32(~select(global2.xx, vec2<u32>(1u, global2.x), false), _wgslsmith_add_vec2_u32(global2.zy, vec2<u32>(u_input.d, 4294967295u)) >> ((global2.zy | vec2<u32>(48876u, 80188u)) % vec2<u32>(32u)))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<i32>) -> StorageBuffer {
    let var_0 = reverseBits(~(_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, arg_1.c, 34277u, 24765u), vec4<u32>(86605u, 2169u, 1u, 0u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, 0u, 54662u, global2.x), vec4<u32>(2929u, u_input.d, 0u, arg_1.c)) % vec4<u32>(32u))) >> (~(vec4<u32>(4294967295u, 590u, 12986u, arg_1.c) ^ vec4<u32>(arg_1.c, 1u, 1u, arg_1.c)) % vec4<u32>(32u)));
    var var_1 = global3[_wgslsmith_index_u32(var_0.x, 6u)];
    let var_2 = Struct_2(arg_1, Struct_1(_wgslsmith_f_op_f32(func_3(var_0)), func_2(vec2<bool>(!var_1.x, true), var_1.zx, ~(u_input.d ^ u_input.d), Struct_1(-755f, abs(vec3<i32>(arg_0, 23116i, 26638i)), ~0u)).b, 4294967295u), func_5(arg_1, true, _wgslsmith_div_vec3_i32(~vec3<i32>(arg_3.x, -1i, global1[_wgslsmith_index_u32(0u, 18u)]), ~u_input.a << (var_0.xxx % vec3<u32>(32u))), global0[_wgslsmith_index_u32(func_5(func_5(Struct_1(arg_1.a, arg_1.b, 27444u), !var_1.x, u_input.a, global0[_wgslsmith_index_u32(13774u, 5u)]), all(!var_1.zxx), _wgslsmith_mod_vec3_i32(-vec3<i32>(2147483647i, u_input.c.x, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.x, arg_1.b.x, arg_3.x), u_input.a, u_input.a)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.c | 4294967295u, global2.x), 5u)]).c, 5u)]), all(vec4<bool>(!(var_1.x && false), any(global3[_wgslsmith_index_u32(~global2.x, 6u)]), var_1.x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + arg_1.a)), 633f));
    var var_3 = func_5(func_5(Struct_1(func_2(!var_1.zw, var_1.ww, var_2.a.c, Struct_1(arg_1.a, u_input.a, global2.x)).a, u_input.a, ~1u), var_1.x && !var_1.x, -vec3<i32>(-1i, firstTrailingBit(-822i), -24422i), Struct_2(var_2.a, arg_1, Struct_1(_wgslsmith_f_op_f32(trunc(117f)), ~vec3<i32>(-2147483647i, -1i, -42106i), ~41671u), var_1.x, -247f)), arg_0 > (i32(-1i) * -39045i), vec3<i32>(abs(_wgslsmith_mod_i32(var_2.b.b.x, arg_0)), _wgslsmith_clamp_i32(~_wgslsmith_sub_i32(-57038i, -2147483647i), global1[_wgslsmith_index_u32(~(var_2.b.c << (0u % 32u)), 18u)], global1[_wgslsmith_index_u32(abs(func_5(Struct_1(var_2.e, vec3<i32>(arg_0, 50781i, var_2.b.b.x), 2316u), var_2.d, u_input.a, Struct_2(Struct_1(-1518f, var_2.b.b, var_2.a.c), Struct_1(var_2.c.a, var_2.c.b, var_0.x), Struct_1(arg_2.x, u_input.a, arg_1.c), true, arg_2.x)).c), 18u)]), var_2.c.b.x), global0[_wgslsmith_index_u32(4294967295u, 5u)]);
    let var_4 = -976f;
    return StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_0, min(var_0, vec4<u32>(u_input.d, arg_1.c, global2.x, global2.x))), firstLeadingBit(var_0)) ^ _wgslsmith_add_u32(u_input.d, _wgslsmith_mod_u32(_wgslsmith_div_u32(var_2.b.c, var_3.c), var_3.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(635f, arg_1.a, -743f, var_4))), arg_2) + vec4<f32>(var_4, _wgslsmith_f_op_f32(arg_1.a + -972f), _wgslsmith_f_op_f32(ceil(-350f)), -1384f)) * arg_2), -func_1().b.zy >> (vec2<u32>(~min(1u, arg_1.c), ~_wgslsmith_mult_u32(var_0.x, 1u)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 5>();
    let var_0 = vec4<i32>(u_input.b, u_input.c.x, global1[_wgslsmith_index_u32(16338u, 18u)], 2147483647i);
    var var_1 = u_input.e.x;
    var var_2 = ~global2.yx;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -684f), _wgslsmith_mult_vec3_i32(countOneBits(u_input.a), vec3<i32>(firstTrailingBit(31951i), global1[_wgslsmith_index_u32(1u, 18u)], u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.x, global2.x, ~4294967295u), vec4<u32>(u_input.d, ~4294967295u, 31990u, var_2.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1566f, -772f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), u_input.a, _wgslsmith_mod_u32(~var_2.x, 4535u)), Struct_1(-895f, _wgslsmith_add_vec3_i32(vec3<i32>(-12696i, 2149i, _wgslsmith_mod_i32(-1i, -19709i)), vec3<i32>(-30597i, var_0.x, 1i)), var_2.x ^ 7257u), !any(global3[_wgslsmith_index_u32(4294967295u, 6u)]), 246f);
    let x = u_input.a;
    s_output = func_6(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(70829u, global2.x), 18u)], func_5(func_1(), !var_3.d, var_0.xzw, global0[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.c.a, var_3.e, var_3.e, 374f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2126f, 831f, var_3.a.a, var_3.a.a))), !global3[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.a, 1000f, var_3.c.a, var_3.e)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.e, var_3.e, var_3.e, var_3.b.a) * vec4<f32>(var_3.a.a, 1000f, 513f, 1759f)), _wgslsmith_div_vec4_f32(vec4<f32>(356f, var_3.b.a, 389f, -1000f), vec4<f32>(-1031f, var_3.c.a, 1350f, var_3.e))))), !vec4<bool>(all(vec2<bool>(var_3.d, var_3.d)), true, false, false))), var_3.a.b.yz);
}

