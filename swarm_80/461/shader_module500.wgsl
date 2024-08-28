struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false), false, vec3<u32>(7888u, 61097u, 1u));

var<private> global2: u32;

var<private> global3: array<u32, 29>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_5, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 1i, reverseBits(u_input.a.x)) >> (abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.d.c.x, 4294967295u, arg_0.d.c.x, 0u), vec4<u32>(16573u, 4294967295u, 10324u, 4294967295u))) % vec4<u32>(32u)), ~((u_input.a | u_input.a) & -vec4<i32>(u_input.c.x, -86869i, -34i, u_input.c.x))), u_input.a.x);
    global1 = Struct_1(select(vec2<bool>(true, false), select(select(!arg_2.a.yw, global1.a, true), vec2<bool>(true, true), select(!arg_3.a, vec2<bool>(true, true), global1.a)), vec2<bool>(true, any(!vec4<bool>(true, false, arg_2.a.x, arg_2.a.x)))), all(arg_2.a), ~(~vec3<u32>(46802u, ~46675u, ~33758u)));
    let var_1 = 4294967295u;
    global0 = u_input.c.x;
    global1 = arg_0.a;
    return ~select(_wgslsmith_div_vec3_i32(vec3<i32>(-u_input.a.x, abs(-1i), reverseBits(u_input.b.x)), ~u_input.b), firstLeadingBit(vec3<i32>(u_input.a.x ^ 18485i, 16638i, max(1i, u_input.b.x))), !((var_1 & arg_0.e.b.x) >= _wgslsmith_dot_vec3_u32(global1.c, arg_0.d.c)));
}

fn func_2() -> f32 {
    var var_0 = select(_wgslsmith_div_vec3_i32(u_input.c, ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x), u_input.b)) & -(~(u_input.b ^ vec3<i32>(45796i, 0i, 0i))), reverseBits(~vec3<i32>(u_input.b.x, -17531i, u_input.b.x) & func_3(Struct_4(Struct_1(global1.a, true, global1.c), Struct_2(global1.b, vec2<u32>(57793u, 4294967295u)), vec4<f32>(831f, -1354f, 656f, -601f), Struct_1(global1.a, global1.a.x, global1.c), Struct_2(true, global1.c.zx)), -257f, Struct_5(vec4<bool>(global1.a.x, true, false, global1.a.x)), Struct_1(global1.a, global1.b, global1.c))) >> (max(~abs(vec3<u32>(global1.c.x, 1u, global3[_wgslsmith_index_u32(global1.c.x, 29u)])), global1.c) % vec3<u32>(32u)), select(!select(vec3<bool>(global1.b, false, global1.a.x), select(vec3<bool>(global1.b, true, true), vec3<bool>(false, true, global1.a.x), vec3<bool>(false, global1.a.x, true)), vec3<bool>(false, true, true)), vec3<bool>(all(!vec4<bool>(true, global1.a.x, global1.b, global1.a.x)), true, false), false));
    global0 = _wgslsmith_add_i32(~(_wgslsmith_mult_i32(countOneBits(u_input.b.x), -1i | var_0.x) >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(global1.c, vec3<u32>(global1.c.x, 38027u, global3[_wgslsmith_index_u32(0u, 29u)]))) % 32u)), reverseBits(abs(_wgslsmith_dot_vec4_i32(reverseBits(u_input.a), vec4<i32>(u_input.c.x, u_input.c.x, var_0.x, var_0.x) << (vec4<u32>(global1.c.x, 12118u, global3[_wgslsmith_index_u32(0u, 29u)], 4294967295u) % vec4<u32>(32u))))));
    let var_1 = vec2<i32>(var_0.x, var_0.x);
    var_0 = _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(abs(var_0.x), var_1.x, _wgslsmith_clamp_i32(firstTrailingBit(1i), _wgslsmith_clamp_i32(1i, var_0.x, 1i), 0i | -var_1.x)));
    var var_2 = Struct_1(!global1.a, !all(select(select(vec4<bool>(false, global1.a.x, true, true), vec4<bool>(global1.b, global1.a.x, true, true), vec4<bool>(true, true, global1.b, global1.a.x)), select(vec4<bool>(global1.b, false, global1.a.x, false), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, true), true), select(vec4<bool>(true, global1.b, false, true), vec4<bool>(global1.a.x, global1.b, false, global1.b), true))), global1.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-543f + 199f) - _wgslsmith_f_op_f32(1005f - 2638f)) + _wgslsmith_f_op_f32(f32(-1f) * -1027f))) - _wgslsmith_f_op_f32(f32(-1f) * -864f));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(arg_0 * arg_0), Struct_2(true, global1.c.zz), select(select(!select(vec3<bool>(arg_3.a.x, true, arg_3.b), vec3<bool>(arg_2.a, arg_2.a, true), arg_3.b), vec3<bool>(true, false, !arg_3.b), select(select(vec3<bool>(true, arg_2.a, arg_2.a), vec3<bool>(true, arg_2.a, true), global1.a.x), !vec3<bool>(arg_2.a, arg_2.a, true), all(vec3<bool>(true, false, arg_3.b)))), !vec3<bool>(!global1.b, true, arg_2.a), (_wgslsmith_f_op_f32(arg_0 * -545f) == _wgslsmith_f_op_f32(sign(arg_0))) && true), Struct_1(vec2<bool>(true, false), all(select(select(vec4<bool>(false, true, arg_3.a.x, arg_3.a.x), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, arg_3.a.x), arg_3.b), vec4<bool>(false, global1.b, true, true), select(vec4<bool>(global1.b, global1.a.x, false, arg_2.a), vec4<bool>(false, arg_2.a, false, false), true))), vec3<u32>(global3[_wgslsmith_index_u32(arg_2.b.x, 29u)], 23979u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.c.x, 20077u), global1.c.xy), arg_2.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(651f, 1414f)), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 1483f, -1020f)) - vec4<f32>(arg_0, arg_0, 509f, 1111f))))));
    global1 = arg_3;
    var var_1 = var_0.e;
    let var_2 = 439f;
    global2 = _wgslsmith_dot_vec2_u32(var_0.b.b, select(vec2<u32>(select(~1797u, abs(arg_3.c.x), !arg_3.b), ~(~1u)), vec2<u32>(~30543u, 4294967295u), true));
    return var_0;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    let var_0 = Struct_5(select(!vec4<bool>(u_input.c.x <= -1i, true, u_input.a.x != 38847i, arg_1.a.x && global1.a.x), vec4<bool>(~32245u == _wgslsmith_mult_u32(arg_2.d.c.x, 37003u), !(!arg_2.b.a), arg_2.d.a.x, arg_2.c.x && true), !(true && arg_2.c.x)));
    global3 = array<u32, 29>();
    let var_1 = -847f;
    global0 = _wgslsmith_add_i32(-1i, 0i);
    var var_2 = Struct_4(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.c.x, 20016u), ~vec2<u32>(25419u, arg_3.c.x), ~vec2<u32>(global3[_wgslsmith_index_u32(arg_3.c.x, 29u)], arg_3.c.x)), _wgslsmith_sub_vec2_u32(global1.c.yy, global1.c.zy)), arg_2.b, func_4(_wgslsmith_f_op_f32(var_1 - arg_2.e.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global3[_wgslsmith_index_u32(global1.c.x, 29u)]), global1.c.zy, arg_2.b.b), Struct_2(true, countOneBits(vec2<u32>(4294967295u, arg_3.c.x))), arg_2.d).d).d, arg_2.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.e.x, _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(min(1329f, -435f))))) - arg_2.e), Struct_1(global1.a, true, max(~firstTrailingBit(vec3<u32>(arg_2.d.c.x, arg_3.c.x, global3[_wgslsmith_index_u32(arg_3.c.x, 29u)])), firstLeadingBit(global1.c))), arg_2.b);
    return any(arg_2.c.zz);
}

fn func_1(arg_0: u32) -> vec3<u32> {
    var var_0 = Struct_5(select(vec4<bool>(false, global1.b, global1.a.x | true, global1.b), vec4<bool>(true == global1.a.x, true, false, (1u != global1.c.x) || global1.a.x), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(688f, 487f, true))), Struct_1(!global1.a, all(vec2<bool>(global1.a.x, global1.a.x)), ~vec3<u32>(64841u, 4294967295u, 19491u)), func_4(_wgslsmith_f_op_f32(func_2()), vec2<u32>(arg_0, 4294967295u), Struct_2(global1.a.x, vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 29u)], 29u)], 29u)])), Struct_1(vec2<bool>(global1.a.x, global1.a.x), global1.b, global1.c)), Struct_1(!global1.a, global1.b, abs(vec3<u32>(arg_0, arg_0, 4294967295u))))));
    let var_1 = Struct_1(select(global1.a, var_0.a.xy, true || !global1.a.x), var_0.a.x, ~firstLeadingBit(vec3<u32>(max(1u, 0u), ~4642u, ~global3[_wgslsmith_index_u32(arg_0, 29u)])));
    var var_2 = Struct_2(all(select(!select(var_0.a.zyy, vec3<bool>(global1.b, true, var_1.a.x), false), var_0.a.yww, !var_1.b)), ~var_1.c.yy);
    var var_3 = i32(-1i) * -(_wgslsmith_mult_i32(0i, u_input.b.x) & _wgslsmith_add_i32(u_input.a.x, i32(-1i) * -62464i));
    var var_4 = func_4(2166f, max(var_1.c.zz & (var_2.b >> (~vec2<u32>(arg_0, 4294967295u) % vec2<u32>(32u))), vec2<u32>(firstTrailingBit(1u), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.b.x), var_1.c.yy), reverseBits(2486u)), 29u)])), func_4(_wgslsmith_f_op_f32(sign(605f)), global1.c.xz & ~(~vec2<u32>(global3[_wgslsmith_index_u32(arg_0, 29u)], 1u)), func_4(1116f, abs(~vec2<u32>(var_2.b.x, var_2.b.x)), func_4(_wgslsmith_f_op_f32(193f * -1150f), ~global1.c.zz, Struct_2(true, vec2<u32>(31571u, 10545u)), var_1).b, var_1).b, Struct_1(vec2<bool>(var_1.a.x || var_2.a, any(vec2<bool>(var_0.a.x, false))), !(!var_2.a), vec3<u32>(var_2.b.x, ~var_1.c.x, 0u))).b, var_1);
    return vec3<u32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(11836u) ^ _wgslsmith_mult_u32(0u, global1.c.x), 106055u), 29u)] & global3[_wgslsmith_index_u32(var_4.b.b.x, 29u)], var_2.b.x, 109381u);
}

fn func_6(arg_0: vec3<u32>, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_4(Struct_1(!global1.a, true, arg_0), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-343f - -1224f) - -220f)), vec2<u32>(~global1.c.x, ~arg_0.x) ^ firstLeadingBit(vec2<u32>(arg_1, 27425u)), Struct_2(any(vec2<bool>(true, true)), func_1(30605u).zx), func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2()))), arg_0.xx, func_4(_wgslsmith_f_op_f32(1243f * 987f), ~vec2<u32>(1u, 73044u), func_4(860f, global1.c.zy, Struct_2(global1.a.x, vec2<u32>(global1.c.x, 1u)), Struct_1(global1.a, true, vec3<u32>(1u, 4294967295u, 4294967295u))).b, Struct_1(global1.a, global1.b, arg_0)).b, Struct_1(vec2<bool>(global1.a.x, global1.b), !global1.a.x, vec3<u32>(arg_1, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.c.x, 29u)], 29u)], global1.c.x) | vec3<u32>(global3[_wgslsmith_index_u32(1u, 29u)], 0u, 1u))).d).b, vec4<f32>(-817f, _wgslsmith_f_op_f32(trunc(427f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-853f - 1098f)) * -620f), 1000f), Struct_1(vec2<bool>(true, global1.b), true, arg_0), func_4(471f, arg_0.zx >> (arg_0.yy % vec2<u32>(32u)), Struct_2(false, abs(_wgslsmith_clamp_vec2_u32(global1.c.xy, arg_0.xz, vec2<u32>(arg_1, global3[_wgslsmith_index_u32(40929u, 29u)])))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -750f)), _wgslsmith_div_vec2_u32(vec2<u32>(global1.c.x, 4294967295u), ~arg_0.yy), func_4(_wgslsmith_f_op_f32(trunc(-1115f)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_0.x), arg_0.zy, vec2<u32>(global1.c.x, arg_0.x)), Struct_2(global1.a.x, global1.c.yz), Struct_1(global1.a, false, vec3<u32>(global1.c.x, 39780u, 1u))).b, Struct_1(vec2<bool>(global1.b, false), true, vec3<u32>(0u, global3[_wgslsmith_index_u32(7964u, 29u)], 81132u) >> (arg_0 % vec3<u32>(32u)))).d).b);
    var var_1 = !(!global1.a.x);
    let var_2 = vec3<f32>(1484f, _wgslsmith_f_op_f32(ceil(-1383f)), 1207f);
    var var_3 = Struct_4(var_0.a, var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.c)) * _wgslsmith_f_op_vec4_f32(-var_0.c)) + vec4<f32>(_wgslsmith_f_op_f32(var_2.x * 1011f), -413f, 1f, -1760f)) * _wgslsmith_f_op_vec4_f32(ceil(var_0.c))), Struct_1(vec2<bool>(!(u_input.b.x < u_input.c.x), any(vec3<bool>(true, true, true))), global1.b, vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_0.x, 29399u), 29u)], firstLeadingBit(firstTrailingBit(arg_1)))), func_4(var_2.x, vec2<u32>(_wgslsmith_mod_u32(0u, 103931u), var_0.a.c.x) >> (var_0.b.b % vec2<u32>(32u)), Struct_2(var_0.e.a, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, var_0.e.b.x), vec2<u32>(global1.c.x, 0u)) & arg_0.zz), Struct_1(!func_4(var_0.c.x, vec2<u32>(global1.c.x, global3[_wgslsmith_index_u32(var_0.e.b.x, 29u)]), var_0.e, var_0.a).c.xx, true, ~vec3<u32>(arg_1, arg_1, 4294967295u))).b);
    let var_4 = !(!vec2<bool>(any(!vec3<bool>(var_0.d.a.x, false, true)), !global1.a.x));
    return Struct_2(all(vec3<bool>(true, true, true)), _wgslsmith_sub_vec2_u32(~(arg_0.xx >> (var_0.e.b % vec2<u32>(32u))), global1.c.yz) << (~max(~global1.c.yx, vec2<u32>(0u, 21226u) >> (vec2<u32>(global1.c.x, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_7(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<f32>) -> Struct_4 {
    global2 = _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(max(min(min(4294967295u, 26333u), ~arg_0.b.b.x), arg_2.x), arg_2.x), firstTrailingBit(countOneBits(1u)));
    global3 = array<u32, 29>();
    var var_0 = vec3<bool>(true, arg_0.c.x, all(select(arg_0.c, vec3<bool>(true, arg_0.b.a, false), !(!vec3<bool>(global1.a.x, global1.a.x, true)))));
    var_0 = vec3<bool>(false, !func_6(~vec3<u32>(arg_0.d.c.x, 14463u, arg_2.x) << (firstLeadingBit(vec3<u32>(0u, 39951u, global3[_wgslsmith_index_u32(1441u, 29u)])) % vec3<u32>(32u)), reverseBits(max(0u, 1u))).a, abs(53270u) <= global1.c.x);
    var var_1 = Struct_5(!vec4<bool>(!arg_0.b.a, select(func_6(arg_2.ywy, 0u).a, arg_1 == 1964f, !global1.b), !(u_input.c.x < 2147483647i), !var_0.x));
    return Struct_4(Struct_1(vec2<bool>(true, any(var_1.a)), true, max(_wgslsmith_add_vec3_u32(max(vec3<u32>(16904u, 4294967295u, 4294967295u), vec3<u32>(arg_0.d.c.x, arg_0.b.b.x, 1u)), vec3<u32>(global1.c.x, 99371u, 68636u)), _wgslsmith_sub_vec3_u32(arg_2.wzx, vec3<u32>(arg_2.x, arg_0.d.c.x, arg_2.x)))), arg_0.b, _wgslsmith_f_op_vec4_f32(floor(arg_0.e)), func_4(-553f, firstLeadingBit(func_6(global1.c, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1127u, 29u)], 29u)]).b), arg_0.b, func_4(-935f, arg_2.xy, func_6(arg_2.xxx, _wgslsmith_mod_u32(22448u, 6939u)), Struct_1(vec2<bool>(true, false), any(vec3<bool>(var_1.a.x, global1.b, var_0.x)), min(arg_0.d.c, vec3<u32>(0u, 82395u, global3[_wgslsmith_index_u32(1u, 29u)])))).d).d, Struct_2(any(var_1.a), vec2<u32>(arg_2.x, 25803u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_3(899f, func_6(max(func_1(global1.c.x), vec3<u32>(1u, global3[_wgslsmith_index_u32(1u, 29u)], 1u) >> (global1.c % vec3<u32>(32u))), 1u), !vec3<bool>(u_input.c.x == -2147483647i, global1.a.x, false || global1.a.x), Struct_1(global1.a, !func_6(vec3<u32>(35087u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.c.x, 29u)], 29u)], 22053u), global3[_wgslsmith_index_u32(1u, 29u)]).a, ~(global1.c | vec3<u32>(84059u, 58553u, 60260u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(-1000f - 528f), -462f, -1005f))), 2439f, ~abs(vec4<u32>(global1.c.x >> (global1.c.x % 32u), countOneBits(global3[_wgslsmith_index_u32(global1.c.x, 29u)]), _wgslsmith_sub_u32(1u, global1.c.x), global1.c.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f + 935f), _wgslsmith_f_op_f32(max(-2002f, -526f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2354f, -1083f), vec2<f32>(1374f, -442f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 2014f)))) * func_4(-1353f, ~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33265u, 29u)], 29u)], 20591u), Struct_2(false, vec2<u32>(0u, global3[_wgslsmith_index_u32(0u, 29u)])), Struct_1(vec2<bool>(global1.a.x, true), true, global1.c)).e.yx)));
    let var_1 = true;
    var_0 = func_7(func_4(878f, global1.c.zy, var_0.b, var_0.a), _wgslsmith_f_op_f32(1123f - _wgslsmith_f_op_f32(var_0.c.x + -413f)), abs(max(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(global1.c.x, 760u, 9520u, var_0.b.b.x)), vec4<u32>(4294967295u, global1.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], global1.c.x), firstTrailingBit(vec4<u32>(global1.c.x, 14608u, global3[_wgslsmith_index_u32(33022u, 29u)], global3[_wgslsmith_index_u32(var_0.b.b.x, 29u)]))), reverseBits(~vec4<u32>(53104u, var_0.d.c.x, var_0.e.b.x, 1u)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x * -973f), _wgslsmith_f_op_f32(max(-291f, 588f))) + var_0.c.yx), var_0.c.zz)));
    var_0 = func_7(Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -607f) - var_0.c.x))), Struct_2(global1.a.x, vec2<u32>(4294967295u, var_0.a.c.x)), select(!(!vec3<bool>(global1.b, false, global1.a.x)), vec3<bool>(var_1, var_0.a.b, false), !select(vec3<bool>(global1.a.x, false, true), vec3<bool>(true, true, var_0.e.a), vec3<bool>(false, var_1, global1.b))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, -720f)), vec2<u32>(abs(57505u), ~1u), Struct_2(true, vec2<u32>(27916u, 71640u) ^ var_0.b.b), Struct_1(select(var_0.a.a, var_0.d.a, true), true, vec3<u32>(global1.c.x, global1.c.x, var_0.a.c.x) & var_0.a.c)).d, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1633f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -663f), _wgslsmith_f_op_f32(-var_0.c.x))), var_0.c.x, var_0.c.x)), -1000f, _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(abs(~vec4<u32>(var_0.b.b.x, 73634u, 0u, 14457u)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.e.b.x, global3[_wgslsmith_index_u32(global1.c.x, 29u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(48526u, 29u)], 29u)]), vec4<u32>(55155u, var_0.b.b.x, 86909u, global3[_wgslsmith_index_u32(57044u, 29u)])))), max(~_wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 29u)], 1u, 55939u, global3[_wgslsmith_index_u32(1u, 29u)]), vec4<u32>(global3[_wgslsmith_index_u32(global1.c.x, 29u)], global3[_wgslsmith_index_u32(global1.c.x, 29u)], 1u, 19642u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.e.b.x, global3[_wgslsmith_index_u32(4294967295u, 29u)], var_0.e.b.x, var_0.e.b.x), vec4<u32>(var_0.a.c.x, 0u, 0u, global1.c.x)), min(vec4<u32>(global3[_wgslsmith_index_u32(var_0.b.b.x, 29u)], global1.c.x, 3090u, var_0.b.b.x), vec4<u32>(0u, global3[_wgslsmith_index_u32(var_0.b.b.x, 29u)], global1.c.x, 4294967295u))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(172f - 470f), var_0.c.x))));
    global2 = 0u;
    var var_2 = Struct_4(var_0.d, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.c.x)), _wgslsmith_div_f32(var_0.c.x, 650f))), vec2<u32>(global3[_wgslsmith_index_u32(~62063u, 29u)], ~3500u ^ firstLeadingBit(global1.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(216f, _wgslsmith_f_op_f32(190f - -2544f), _wgslsmith_f_op_f32(-522f * var_0.c.x), _wgslsmith_div_f32(var_0.c.x, var_0.c.x)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(445f, var_0.c.x, var_0.c.x, var_0.c.x))))) - _wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c), vec4<f32>(var_0.c.x, -1513f, -1208f, var_0.c.x), all(vec3<bool>(false, global1.b, global1.b)))))), var_0.a, Struct_2(true, ~_wgslsmith_add_vec2_u32(global1.c.xy, vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 29u)]))));
    var var_3 = max(~_wgslsmith_dot_vec2_i32(u_input.b.zz, u_input.a.xx), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.c.x), vec3<i32>(u_input.b.x, -38344i, u_input.c.x) >> (vec3<u32>(96184u, var_2.b.b.x, var_0.b.b.x) % vec3<u32>(32u))), -firstTrailingBit(1195i), 0i, u_input.a.x));
}

