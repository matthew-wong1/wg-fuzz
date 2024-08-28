struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8>;

var<private> global1: Struct_4 = Struct_4(true, Struct_3(Struct_2(vec4<u32>(4294967295u, 0u, 0u, 31112u), vec2<bool>(true, false), vec2<i32>(49103i, i32(-2147483648))), true, Struct_2(vec4<u32>(4294967295u, 44338u, 38566u, 3632u), vec2<bool>(false, true), vec2<i32>(44959i, 47369i)), -358f, Struct_2(vec4<u32>(0u, 4294967295u, 28017u, 0u), vec2<bool>(true, true), vec2<i32>(4088i, -1i))), Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)));

var<private> global2: i32;

var<private> global3: vec4<i32> = vec4<i32>(0i, 0i, 0i, 0i);

var<private> global4: array<Struct_2, 2>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    global3 = vec4<i32>(min(_wgslsmith_div_i32(countOneBits(global3.x), _wgslsmith_div_i32(-2147483647i, -1i)), 1i), -2147483647i, u_input.a, ~global3.x);
    global1 = Struct_4(global1.c.b.x, global1.b, global1.c, Struct_1(select(global1.c.b, global1.d.a, global1.c.b.x), vec4<bool>(all(!vec4<bool>(global1.b.b, false, global1.c.a.x, global1.b.b)), global1.a || true, global1.a, !all(vec3<bool>(false, global1.d.b.x, false)))));
    var var_0 = global1.d;
    let var_1 = ~(~u_input.c.x);
    let var_2 = global1.b;
    return ~var_2.c.a.x;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = ~func_3();
    var var_1 = _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(u_input.c, arg_0.b.e.a.zxw));
    let var_2 = global1.c;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(466f + _wgslsmith_f_op_f32(max(257f, global1.b.d))), _wgslsmith_f_op_f32(-arg_0.b.d))) + 1000f)));
    var var_4 = global1.d.b.x & !any(select(arg_0.d.b.wwz, vec3<bool>(arg_0.d.b.x, arg_1.x, false), any(vec3<bool>(false, true, false))));
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec2<bool>) -> Struct_1 {
    global0 = array<vec2<u32>, 8>();
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(global3.zw, max(vec2<i32>(_wgslsmith_sub_i32(global3.x, -27193i), _wgslsmith_mod_i32(global1.b.c.c.x, 32236i)), global3.yz)), 17014i, global3.x >> (~_wgslsmith_mult_u32(min(arg_1.b.a.a.x, 35095u), min(78311u, 4294967295u)) % 32u), _wgslsmith_mult_i32(u_input.e.x, abs(abs(u_input.a << (u_input.d % 32u)))));
    let var_1 = arg_1;
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.b.e.a.x, min(0u, 27519u)), min(var_1.b.a.a.x, ~(~_wgslsmith_div_u32(global1.b.c.a.x, 2698u)))), 2u)];
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(global1.b.d)), var_1.b.d);
    return arg_1.c;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<f32>) -> bool {
    global1 = Struct_4(arg_0.c.a.x || true, arg_0.b, Struct_1(vec4<bool>(all(vec3<bool>(arg_0.d.a.x, arg_0.a, global1.d.a.x)), any(vec3<bool>(true, true, arg_0.b.b)), arg_0.b.c.b.x, global1.d.b.x || arg_0.b.a.b.x), vec4<bool>(false, !(global1.d.b.x & false), all(!vec3<bool>(false, global1.a, arg_0.d.a.x)), true)), arg_1.d);
    return (~_wgslsmith_mod_u32(u_input.d, 20969u) >= firstTrailingBit(4294967295u)) || true;
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: vec4<u32>) -> Struct_4 {
    var var_0 = 6582u;
    let var_1 = ~(~(~(vec4<u32>(arg_3.x, u_input.d, 4294967295u, u_input.b) | vec4<u32>(u_input.b, arg_3.x, 0u, 9252u))) << (reverseBits(~reverseBits(global1.b.e.a)) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(452f * global1.b.d), -675f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b.d, global1.b.d), vec2<f32>(1000f, -745f))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(734f, 699f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.b.d), -1093f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.b.d, global1.b.d)))))));
    var var_3 = func_2(Struct_4(true, Struct_3(Struct_2(vec4<u32>(u_input.d, 102321u, 1103u, 4294967295u), select(global1.c.b.xw, vec2<bool>(global1.b.c.b.x, true), vec2<bool>(true, true)), global1.b.c.c), false, Struct_2(min(vec4<u32>(0u, 22905u, 6243u, arg_1), vec4<u32>(arg_1, 1u, arg_1, 1u)), func_2(Struct_4(true, Struct_3(Struct_2(global1.b.c.a, global1.d.b.yx, vec2<i32>(arg_2, global3.x)), false, global1.b.e, global1.b.d, Struct_2(vec4<u32>(u_input.d, 51612u, 1u, global1.b.a.a.x), vec2<bool>(global1.c.b.x, true), global1.b.c.c)), global1.d, global1.d), global1.d.b.wzx).b.a.b, vec2<i32>(-2147483647i, arg_2)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.b.d * 346f), _wgslsmith_f_op_f32(var_2.x + 1337f))), func_2(func_2(Struct_4(global1.b.b, Struct_3(global1.b.a, global1.c.a.x, global1.b.c, global1.b.d, global4[_wgslsmith_index_u32(1u, 2u)]), Struct_1(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(global1.a, global1.c.b.x, true, global1.d.a.x)), Struct_1(vec4<bool>(global1.b.b, global1.c.b.x, arg_0, global1.a), global1.c.a)), vec3<bool>(false, true, global1.d.b.x)), select(global1.c.a.zww, vec3<bool>(true, false, true), global1.c.b.ywy)).b.a), func_4(func_4(true, func_2(Struct_4(false, global1.b, Struct_1(global1.c.b, vec4<bool>(global1.a, true, false, true)), Struct_1(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(global1.b.e.b.x, global1.a, false, arg_0))), vec3<bool>(false, true, false)), global1.b.a.b).a.x, Struct_4(any(global1.c.b.yz), Struct_3(Struct_2(vec4<u32>(32558u, 1u, arg_1, 1u), vec2<bool>(true, true), global3.ww), false, global4[_wgslsmith_index_u32(arg_3.x, 2u)], global1.b.d, global1.b.a), Struct_1(global1.d.a, global1.d.a), global1.c), select(select(vec2<bool>(global1.c.b.x, arg_0), vec2<bool>(false, true), global1.d.a.x), global1.c.a.xw, vec2<bool>(true, true))), global1.c), vec3<bool>(false, false, false));
    var var_4 = Struct_5(vec2<u32>(~var_1.x, 4294967295u) & _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_1, global1.b.c.a.x) >> (firstTrailingBit(global1.b.a.a.yw) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.d, var_3.b.e.a.x)), func_2(Struct_4(true, var_3.b, var_3.c, Struct_1(vec4<bool>(var_3.c.a.x, var_3.d.a.x, false, arg_0), var_3.c.a)), vec3<bool>(var_3.d.a.x, arg_0, global1.c.a.x)).b.a.a.wx), firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(335u, 0u), vec2<u32>(u_input.c.x, 0u)))), global1.b.d);
    return Struct_4(global1.b.e.b.x, global1.b, func_4(_wgslsmith_f_op_f32(-func_2(Struct_4(false, Struct_3(var_3.b.e, false, var_3.b.a, -1000f, Struct_2(vec4<u32>(0u, 1u, var_1.x, 4294967295u), vec2<bool>(false, global1.c.a.x), vec2<i32>(global3.x, arg_2))), var_3.d, global1.d), vec3<bool>(false, global1.c.b.x, false)).b.d) >= _wgslsmith_f_op_f32(-var_2.x), func_2(Struct_4(false, func_2(Struct_4(global1.d.a.x, global1.b, Struct_1(vec4<bool>(false, var_3.c.a.x, arg_0, false), vec4<bool>(arg_0, true, true, true)), Struct_1(vec4<bool>(arg_0, false, arg_0, var_3.a), global1.d.a)), vec3<bool>(arg_0, var_3.a, arg_0)).b, func_2(Struct_4(var_3.b.c.b.x, global1.b, var_3.d, Struct_1(vec4<bool>(global1.a, arg_0, arg_0, true), vec4<bool>(true, global1.d.a.x, arg_0, true))), var_3.d.a.xxx).c, global1.d), var_3.d.a.yxx), global1.c.b.yz), var_3.d);
}

fn func_1() -> vec4<i32> {
    global4 = array<Struct_2, 2>();
    let var_0 = global1.d.a.x;
    let var_1 = func_6(func_5(Struct_4(global1.a, global1.b, func_4(global1.d.a.x, func_2(Struct_4(global1.d.a.x, global1.b, global1.c, global1.d), vec3<bool>(true, false, global1.d.a.x)), vec2<bool>(false, global1.d.b.x)), Struct_1(vec4<bool>(global1.a, global1.a, global1.c.a.x, global1.d.b.x), select(vec4<bool>(global1.a, global1.b.b, global1.b.b, false), vec4<bool>(true, global1.d.b.x, true, global1.a), vec4<bool>(false, global1.d.b.x, global1.c.a.x, false)))), Struct_4(_wgslsmith_f_op_f32(-1700f * -327f) >= _wgslsmith_f_op_f32(step(892f, global1.b.d)), Struct_3(Struct_2(vec4<u32>(u_input.d, 15693u, global1.b.e.a.x, 4294967295u), vec2<bool>(true, global1.c.a.x), global3.zy), false && global1.c.a.x, func_2(Struct_4(true, global1.b, global1.c, Struct_1(vec4<bool>(false, false, true, global1.c.b.x), vec4<bool>(true, global1.c.b.x, global1.c.b.x, global1.c.b.x))), vec3<bool>(global1.b.c.b.x, true, global1.c.a.x)).b.c, global1.b.d, Struct_2(vec4<u32>(u_input.c.x, 4294967295u, u_input.b, 0u), vec2<bool>(global1.a, true), u_input.e)), global1.d, Struct_1(global1.c.b, func_4(global1.c.a.x, Struct_4(true, global1.b, global1.c, Struct_1(global1.d.b, vec4<bool>(global1.c.a.x, true, false, false))), vec2<bool>(global1.a, global1.d.b.x)).a)), vec3<f32>(-500f, global1.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2297f - 1144f)))), 0u, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global3.zww, global3.zyw), global3.yww)), vec2<i32>(abs(_wgslsmith_sub_i32(global3.x, 2147483647i)), _wgslsmith_sub_i32(global3.x ^ -55813i, global3.x))), global1.b.c.a & (firstLeadingBit(vec4<u32>(35102u, 4294967295u, u_input.b, global1.b.c.a.x)) ^ _wgslsmith_add_vec4_u32(global1.b.c.a, _wgslsmith_mod_vec4_u32(global1.b.c.a, global1.b.c.a))));
    let var_2 = global3.x;
    let var_3 = func_2(func_2(func_6((-37870i << (1u % 32u)) != select(-29032i, -39625i, true), 12284u, 1i, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1.b.c.a.x, global1.b.e.a.x, global1.b.c.a.x), vec4<u32>(global1.b.a.a.x, 7873u, 119130u, 91408u)), vec4<u32>(global1.b.a.a.x, var_1.b.e.a.x, u_input.d, global1.b.c.a.x) | vec4<u32>(0u, var_1.b.c.a.x, 25007u, u_input.d))), func_6(var_1.c.a.x || false, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(global1.b.e.a.x, u_input.b, var_1.b.c.a.x), ~1u), reverseBits(-u_input.a), vec4<u32>(1u, 0u, var_1.b.c.a.x, _wgslsmith_clamp_u32(1u, u_input.b, 4294967295u))).d.a.www), !(!(!global1.d.b.wzw)));
    return (_wgslsmith_mult_vec4_i32(-(vec4<i32>(global3.x, global1.b.e.c.x, -2147483647i, global3.x) | vec4<i32>(var_3.b.e.c.x, 1i, -1i, var_3.b.a.c.x)), ~abs(vec4<i32>(u_input.a, global3.x, -1i, 0i))) >> (~(_wgslsmith_add_vec4_u32(var_1.b.a.a, var_1.b.c.a) >> (~var_3.b.c.a % vec4<u32>(32u))) % vec4<u32>(32u))) >> (func_2(func_6(max(global1.b.e.a.x, 1u) != ~0u, var_1.b.a.a.x | _wgslsmith_add_u32(u_input.c.x, 66662u), global1.b.a.c.x << (~global1.b.e.a.x % 32u), reverseBits(~var_1.b.c.a)), func_6(any(select(global1.d.a.yyy, vec3<bool>(false, global1.a, global1.b.a.b.x), var_3.c.a.x)), ~4294967295u & min(global1.b.e.a.x, var_3.b.c.a.x), _wgslsmith_mult_i32(1i, global1.b.a.c.x), select(vec4<u32>(30324u, var_3.b.e.a.x, 0u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(global1.b.a.a.x, var_3.b.a.a.x, var_3.b.c.a.x, 6979u), vec4<u32>(var_3.b.a.a.x, 0u, var_3.b.e.a.x, 1u)), all(var_3.c.a))).d.a.ywz).b.e.a % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 8>();
    global3 = func_1() << (~vec4<u32>(_wgslsmith_add_u32(abs(u_input.b), 0u), global1.b.c.a.x ^ u_input.c.x, _wgslsmith_mod_u32(global1.b.e.a.x, 63029u), 51482u) % vec4<u32>(32u));
    global0 = array<vec2<u32>, 8>();
    let var_0 = false | any(func_2(Struct_4(!global1.a, func_2(Struct_4(false, global1.b, global1.c, Struct_1(global1.c.a, vec4<bool>(true, true, global1.d.a.x, global1.b.b))), vec3<bool>(global1.a, global1.a, global1.b.c.b.x)).b, func_6(false, global1.b.a.a.x, global1.b.c.c.x, vec4<u32>(47080u, global1.b.e.a.x, u_input.b, 0u)).d, Struct_1(vec4<bool>(false, global1.c.a.x, true, false), vec4<bool>(global1.d.b.x, global1.a, global1.a, true))), global1.c.a.zxx).b.a.b);
    let var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.c.a, vec4<u32>(4294967295u, abs(0u) ^ _wgslsmith_div_u32(select(18097u, 0u, false), global1.b.e.a.x), max(94799u, ~(~4294967295u)), ~global1.b.a.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-110f - _wgslsmith_f_op_f32(-950f + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.d + global1.b.d) * _wgslsmith_f_op_f32(global1.b.d - 616f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.d, -575f) * vec2<f32>(-1775f, -116f)))))), firstTrailingBit(vec3<i32>(u_input.e.x, -1i, reverseBits(firstTrailingBit(var_1)))), _wgslsmith_mod_vec2_i32(min(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(5242i, global3.x), global3.zx), ~(-6669i)), abs(u_input.e) >> (~vec2<u32>(38121u, 0u) % vec2<u32>(32u))), vec2<i32>(0i, var_1) ^ (abs(vec2<i32>(0i, u_input.a)) >> (min(global0[_wgslsmith_index_u32(0u, 8u)], vec2<u32>(38755u, 4294967295u)) % vec2<u32>(32u)))));
}

