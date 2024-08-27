struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<i32> {
    let var_0 = ~(abs(min(vec3<i32>(u_input.e, u_input.c, -30900i), ~vec3<i32>(43639i, 16137i, u_input.c))) ^ -vec3<i32>(1i, 1i, 1i));
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-330f, 221f, false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -630f), 1647f)), !all(vec2<bool>(false, false)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -987f)));
    var var_3 = Struct_3(min(~vec2<u32>(4294967295u, 20691u) << (u_input.b % vec2<u32>(32u)), select(~vec2<u32>(4294967295u, u_input.b.x), min(u_input.b, vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)])), vec2<bool>(true, true))) & ~vec2<u32>(1u, 14204u & u_input.b.x), vec4<u32>(~0u, 27004u, ~(4294967295u << (global0[_wgslsmith_index_u32(1u, 18u)] % 32u)), 4294967295u) | vec4<u32>(global0[_wgslsmith_index_u32(~(~11739u), 18u)], ~43035u, 0u, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, -651f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(212f, 1000f, -1545f, 3455f), vec4<f32>(var_2, 820f, var_2, 153f)))))), Struct_1(countOneBits(vec2<i32>(max(15057i, 17344i), _wgslsmith_mod_i32(var_0.x, -56993i)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_2)), _wgslsmith_f_op_f32(-var_2))));
    var_3 = Struct_3(u_input.b, var_3.b, _wgslsmith_f_op_vec4_f32(abs(var_3.c)), var_3.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2063f, 1330f)), _wgslsmith_div_f32(var_2, var_3.e))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-909f, _wgslsmith_f_op_f32(abs(866f)))))));
    return var_3.d.a;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(2147483647i, _wgslsmith_clamp_i32(reverseBits(u_input.e), _wgslsmith_clamp_i32(0i, 62436i, -arg_0.a.x), arg_0.a.x));
    var var_1 = arg_0;
    let var_2 = Struct_1(vec2<i32>(arg_0.a.x, var_1.a.x));
    let var_3 = Struct_2(_wgslsmith_div_i32(var_1.a.x, -u_input.c), Struct_1(func_3()), arg_0);
    var_0 = -var_1.a.x & var_1.a.x;
    return var_2;
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    global0 = array<u32, 18>();
    let var_0 = select(~firstLeadingBit(~vec3<i32>(u_input.e, arg_0.a.x, u_input.c)) & ((firstLeadingBit(vec3<i32>(arg_0.a.x, u_input.c, u_input.c)) | -vec3<i32>(1i, -10107i, arg_0.a.x)) << ((countOneBits(u_input.d.ywx) >> (countOneBits(vec3<u32>(u_input.d.x, 19190u, u_input.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(arg_0.a.x >> (46247u % 32u), _wgslsmith_add_i32(15355i, u_input.c), -arg_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, u_input.e, 14801i, 9800i) >> (u_input.d % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.c, u_input.c, -1i, u_input.e))), 2147483647i), firstLeadingBit(min(select(vec3<i32>(u_input.c, -18676i, -25417i), vec3<i32>(37504i, -45376i, -1i), vec3<bool>(false, true, true)), vec3<i32>(1i, 0i, 6188i) | vec3<i32>(u_input.e, -2147483647i, u_input.c))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 2147483647i, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-25077i, -19105i, -1i), vec3<i32>(0i, arg_0.a.x, arg_0.a.x), vec3<i32>(-34815i, arg_0.a.x, u_input.e))) << (_wgslsmith_mod_vec3_u32(~u_input.d.zzw, countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(1u, 18u)], 16903u, global0[_wgslsmith_index_u32(24399u, 18u)]))) % vec3<u32>(32u))), vec3<bool>(true, true, true));
    var var_1 = -1095f;
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(865f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-587f)), _wgslsmith_f_op_f32(trunc(-198f))))))));
    let var_2 = ~(~(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 13765i, var_0.x, -30205i), vec4<i32>(arg_0.a.x, var_0.x, -1i, arg_0.a.x))) << (u_input.d % vec4<u32>(32u))));
    return _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(min(u_input.c, 2147483647i), -var_0.x)), ~firstLeadingBit(var_0.xz & arg_0.a)) | var_2.xx;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)] >> (global0[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(u_input.d.x, u_input.d.x, 78202u))), 18u)] % 32u), u_input.b.x);
    var var_1 = !(!vec3<bool>(4294967295u == u_input.a, any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))));
    global0 = array<u32, 18>();
    let var_2 = Struct_3(u_input.d.yy, _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(_wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 18u)]), ~u_input.a, global0[_wgslsmith_index_u32(~1u, 18u)], ~0u) >> (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(u_input.d, u_input.d), u_input.d) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1245f, 122f, 1667f, -498f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-173f, 315f, 637f, -1627f) - vec4<f32>(227f, 916f, -377f, 510f)))))), Struct_1(func_4(func_2(Struct_1(vec2<i32>(-21353i, u_input.e))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(290f, 1326f))), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -619f)))))));
    let var_3 = Struct_2(~1i, func_2(func_2(Struct_1(-vec2<i32>(var_2.d.a.x, 32605i)))), func_2(var_2.d));
    return func_2(func_2(var_3.c));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    let var_0 = arg_2.c;
    var var_1 = Struct_3(reverseBits(~vec2<u32>(u_input.a, _wgslsmith_sub_u32(24398u, 0u))), vec4<u32>(_wgslsmith_clamp_u32(~(~4294967295u), ~4294967295u, u_input.b.x), _wgslsmith_dot_vec3_u32(arg_2.b.xyx, u_input.d.xxy), 4294967295u, max(u_input.d.x, 0u)), var_0, func_1(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(step(-237f, _wgslsmith_f_op_f32(arg_2.c.x + -402f)))), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(var_0.x + -416f))))));
    let var_2 = 25871u;
    return func_1();
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = vec2<bool>(all(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(u_input.b.x >= u_input.b.x, true), true)), all(vec4<bool>(true, true, all(vec4<bool>(false, false, true, true)), all(vec2<bool>(true, true)))) == true);
    var var_1 = Struct_3(u_input.b, ~abs(~vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 18u)], 1u, 0u)), _wgslsmith_f_op_vec4_f32(arg_3 - vec4<f32>(_wgslsmith_div_f32(152f, arg_0.x), 175f, _wgslsmith_f_op_f32(547f * _wgslsmith_div_f32(arg_2, 472f)), arg_2)), arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-981f)), _wgslsmith_f_op_f32(trunc(-167f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x * -455f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_3.x)), arg_0.x))));
    var var_2 = func_4(Struct_1(arg_1.c.a)) & vec2<i32>(i32(-1i) * -34659i, i32(-1i) * -10779i);
    global0 = array<u32, 18>();
    let var_3 = ~(~vec4<u32>(20411u, max(4294967295u, 1u), 1u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(14835u, global0[_wgslsmith_index_u32(u_input.d.x, 18u)]), 18u)])) << (abs(~max(vec4<u32>(u_input.b.x, u_input.b.x, var_1.a.x, 11089u), vec4<u32>(30258u, global0[_wgslsmith_index_u32(u_input.d.x, 18u)], u_input.a, global0[_wgslsmith_index_u32(22999u, 18u)]))) % vec4<u32>(32u));
    return func_1();
}

fn func_7(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = arg_2;
    let var_1 = vec2<i32>(48889i, -50629i);
    var_0 = arg_3.c;
    var var_2 = Struct_3(~(vec2<u32>(0u, _wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(1u, 18u)])) | ~select(u_input.d.yx, vec2<u32>(26472u, global0[_wgslsmith_index_u32(59231u, 18u)]), arg_1)), vec4<u32>(~(abs(24660u) | abs(global0[_wgslsmith_index_u32(4294967295u, 18u)])), u_input.d.x, u_input.d.x, 1u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(537f, 2826f, 1840f, -1204f)) + vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1732f, 1243f, 894f, 1539f))), any(vec2<bool>(arg_1, arg_1)))))), Struct_1(vec2<i32>(-21621i, 2147483647i)), _wgslsmith_div_f32(-3161f, _wgslsmith_f_op_f32(select(-1069f, _wgslsmith_f_op_f32(-1f), !arg_1))));
    var var_3 = Struct_2(-2147483647i, func_1(), Struct_1(_wgslsmith_sub_vec2_i32(~vec2<i32>(1i, arg_2.a.x), vec2<i32>(_wgslsmith_add_i32(var_0.a.x, -2147483647i), _wgslsmith_mult_i32(var_0.a.x, -30105i)))));
    return _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.e)) - _wgslsmith_f_op_f32(ceil(var_2.c.x))))), -608f, _wgslsmith_f_op_f32(select(var_2.e, _wgslsmith_f_op_f32(floor(var_2.e)), any(!vec4<bool>(arg_1, arg_1, false, arg_1))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), var_2.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e - var_2.e)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_7(u_input.e, select(select(-u_input.e > u_input.e, false, true), false, true), func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -969f)) * vec2<f32>(-806f, 2341f))), Struct_2(u_input.e, Struct_1(~vec2<i32>(u_input.c, -22747i)), func_5(4294967295u, func_1(), Struct_3(vec2<u32>(global0[_wgslsmith_index_u32(1u, 18u)], 56094u), vec4<u32>(64273u, u_input.d.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)]), vec4<f32>(1000f, -1261f, 1014f, 870f), Struct_1(vec2<i32>(-2147483647i, -2147483647i)), 155f))), -260f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-482f + 1898f), -1000f, 1079f, 1f))), Struct_2(-18062i, Struct_1(-(~vec2<i32>(-1i, u_input.c))), Struct_1(func_1().a & vec2<i32>(u_input.e, u_input.e)))));
    let var_1 = !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), u_input.c <= u_input.c), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, false), u_input.c == u_input.e)));
    let var_2 = u_input.c;
    var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-508f, var_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1239f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-469f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1000f, 399f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-944f, -500f, -170f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, var_0.x))))))));
    let var_3 = u_input.d.x;
    let var_4 = var_1.x;
    var var_5 = Struct_3(firstLeadingBit(~u_input.d.wx), u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2375f + 522f), _wgslsmith_f_op_f32(-707f * -782f), _wgslsmith_f_op_f32(-804f * 647f), var_0.x) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1256f, var_0.x, var_0.x, 1852f), vec4<f32>(1207f, var_0.x, var_0.x, var_0.x))))), func_6(var_0.zz, Struct_2(~1i, func_2(Struct_1(vec2<i32>(var_2, -1i))), func_6(_wgslsmith_f_op_vec2_f32(-var_0.xz), Struct_2(14127i, Struct_1(vec2<i32>(0i, var_2)), Struct_1(vec2<i32>(-11143i, u_input.c))), var_0.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1654f, 383f, var_0.x), vec4<f32>(var_0.x, -2320f, var_0.x, var_0.x), var_4)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(866f, var_0.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1000f, var_0.x, 1048f), vec4<f32>(var_0.x, var_0.x, -188f, 363f))))), var_0.x);
    global0 = array<u32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_mod_vec4_i32(max(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1i, 15009i, 1084i), vec4<i32>(u_input.c, 8278i, var_5.d.a.x, -9754i))), abs(min(vec4<i32>(u_input.e, 9938i, var_2, var_2), vec4<i32>(var_2, var_5.d.a.x, -26436i, 2147483647i)))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-39671i, u_input.c, -23962i, 0i), select(vec4<i32>(2147483647i, 54094i, 27908i, u_input.e), vec4<i32>(var_5.d.a.x, -83491i, 0i, 10000i), vec4<bool>(true, var_1.x, true, var_1.x))), ~vec4<i32>(-1i, -19497i, -44i, 52309i))), 4294967295u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(294f + var_0.x))))), ~var_5.b.xy);
}

