struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<i32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9>;

var<private> global1: vec2<f32>;

var<private> global2: array<i32, 10>;

var<private> global3: i32 = -1i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = ~2147483647i;
    global0 = array<vec2<bool>, 9>();
    global2 = array<i32, 10>();
    global0 = array<vec2<bool>, 9>();
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_div_f32(1021f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1632f, arg_1), vec2<f32>(_wgslsmith_f_op_f32(global1.x * arg_1), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(global1.x * -1000f))), select(vec2<bool>(true, arg_2.a.x), select(!vec2<bool>(true, arg_2.a.x), select(vec2<bool>(arg_2.a.x, false), arg_2.a.yz, arg_2.a.x), arg_0.a.a.a.x), !select(global0[_wgslsmith_index_u32(28791u, 9u)], vec2<bool>(arg_0.a.a.a.x, false), vec2<bool>(arg_0.a.a.a.x, arg_0.a.a.a.x))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 449f, 672f, -211f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -900f, arg_1, 497f) * vec4<f32>(global1.x, -1136f, arg_1, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-global1.x)), global1.x, -357f, -476f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, arg_1, arg_1, 945f), vec4<f32>(-952f, 1000f, -257f, global1.x)))))));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1174f) * _wgslsmith_f_op_f32(f32(-1f) * -1356f))), _wgslsmith_f_op_f32(f32(-1f) * -1279f), 423f, 1518f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_2(arg_0.a.a), arg_1.x, vec2<i32>(u_input.b.x, global2[_wgslsmith_index_u32(1u, 10u)]), global2[_wgslsmith_index_u32(31950u, 10u)]), arg_2, Struct_1(vec4<bool>(arg_0.a.a.a.x, arg_0.a.a.a.x, arg_3.a.a.x, true))))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_2), arg_2, 1000f, -1106f)), vec4<f32>(-150f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1748f + global1.x))), global1.x, _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-694f - 1864f))))));
    var var_1 = Struct_3(!vec4<bool>(true, true, true, any(vec2<bool>(true, false)) && all(vec4<bool>(false, arg_3.a.a.x, true, arg_0.a.a.a.x))), arg_0.a, ~(~countOneBits(u_input.b.xzw)), min(global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 57828u, 16267u), firstLeadingBit(vec3<u32>(0u, 1u, 0u))), 1u), 10u)], arg_0.c.x), arg_3);
    var var_2 = Struct_4(Struct_2(arg_3.a), ~arg_0.c.x, -vec2<i32>(u_input.a.x, -68325i ^ ~global2[_wgslsmith_index_u32(0u, 10u)]), 1i);
    global0 = array<vec2<bool>, 9>();
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global1.x)))), -660f, _wgslsmith_f_op_vec4_f32(func_3(Struct_4(var_1.e, global2[_wgslsmith_index_u32(130926u, 10u)], vec2<i32>(global2[_wgslsmith_index_u32(1u, 10u)], arg_1.x), global2[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_div_f32(arg_2, 261f), Struct_1(vec4<bool>(arg_0.a.a.a.x, var_2.a.a.a.x, true, arg_0.a.a.a.x)))).x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 119f, 192f, _wgslsmith_f_op_f32(global1.x - -170f)))) + _wgslsmith_f_op_vec4_f32(func_3(Struct_4(var_2.a, -arg_1.x, vec2<i32>(-39491i, 2147483647i), -19762i), 852f, arg_0.a.a)));
    return arg_0;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec2<u32>) -> vec2<i32> {
    let var_0 = Struct_3(!arg_2, arg_0.a, select(-u_input.b.wwx, select(vec3<i32>(abs(-34530i), 21333i, arg_0.d & global2[_wgslsmith_index_u32(arg_3.x, 10u)]), vec3<i32>(2147483647i, -49116i, -21169i), true), true), -2147483647i, func_2(Struct_4(func_2(func_2(arg_1, vec3<i32>(u_input.a.x, -2147483647i, 16977i), global1.x, arg_0.a), vec3<i32>(-42965i, -5932i, -74963i), _wgslsmith_f_op_f32(603f * global1.x), arg_0.a).a, firstTrailingBit(max(8089i, arg_0.c.x)), vec2<i32>(u_input.a.x, -1i), arg_0.d >> (arg_3.x % 32u)), ~abs(countOneBits(u_input.b.wwz)), global1.x, Struct_2(Struct_1(vec4<bool>(arg_0.a.a.a.x, arg_0.a.a.a.x, true, arg_2.x)))).a);
    let var_1 = 17834u & arg_3.x;
    var var_2 = 225f;
    var var_3 = _wgslsmith_div_vec4_u32(countOneBits(select(_wgslsmith_div_vec4_u32(vec4<u32>(var_1, var_1, 1u, 32367u) & vec4<u32>(var_1, arg_3.x, var_1, 34902u), ~vec4<u32>(var_1, 1u, 1u, 11978u)), _wgslsmith_mod_vec4_u32(vec4<u32>(19607u, var_1, var_1, var_1), vec4<u32>(23117u, 40112u, 23027u, var_1)), func_2(Struct_4(arg_0.a, var_0.c.x, vec2<i32>(-29228i, u_input.b.x), 2147483647i), var_0.c, _wgslsmith_f_op_f32(exp2(global1.x)), arg_0.a).a.a.a)), ~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.x, 4294967295u, arg_3.x, 0u), vec4<u32>(arg_3.x, 4294967295u, var_1, 0u)) | reverseBits(vec4<u32>(0u, 50068u, arg_3.x, arg_3.x))));
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1.x, global1.x, global1.x) * vec4<f32>(global1.x, -707f, global1.x, global1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-152f, -231f, global1.x, global1.x), vec4<f32>(global1.x, -1332f, global1.x, global1.x))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -469f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))), true)))));
    return reverseBits(arg_1.c);
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec2<i32>, arg_3: bool) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~(~38462u), 1u) & select(~min(vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(42876u, 1u, 4294967295u)), ~(~vec3<u32>(arg_1, arg_1, 4294967295u)), true), _wgslsmith_div_vec3_u32(~vec3<u32>(~arg_1, _wgslsmith_mult_u32(arg_1, 4294967295u), abs(arg_1)), vec3<u32>(1u, 1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(64878u, 0u), vec2<u32>(0u, 0u)))));
    let var_1 = Struct_4(func_2(func_2(func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(arg_3, arg_3, arg_3, true))), -1i, arg_2, 5502i), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, arg_2.x, 71956i), vec3<i32>(arg_2.x, arg_2.x, 16963i)), -1279f, func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(arg_0, true, true, false))), arg_2.x, vec2<i32>(30540i, -37192i), 1i), u_input.b.yyw, global1.x, Struct_2(Struct_1(vec4<bool>(false, true, false, true)))).a), vec3<i32>(~(-38885i), -1i, _wgslsmith_mod_i32(0i, 14517i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 418f) - _wgslsmith_div_f32(global1.x, 1058f)), func_2(func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(arg_3, arg_3, arg_0, arg_3))), 26832i, u_input.a, -2147483647i), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(48576u, 10u)], 742i), global1.x, Struct_2(Struct_1(vec4<bool>(true, arg_0, false, false)))), -vec3<i32>(-2147483647i, arg_2.x, 19036i), _wgslsmith_div_f32(global1.x, global1.x), Struct_2(Struct_1(vec4<bool>(arg_3, arg_0, true, arg_3)))).a), -vec3<i32>(0i, func_4(Struct_4(Struct_2(Struct_1(vec4<bool>(arg_0, arg_3, arg_0, arg_3))), global2[_wgslsmith_index_u32(arg_1, 10u)], vec2<i32>(u_input.b.x, arg_2.x), -31750i), Struct_4(Struct_2(Struct_1(vec4<bool>(true, arg_0, false, arg_3))), 2147483647i, arg_2, u_input.a.x), vec4<bool>(false, arg_0, false, false), vec2<u32>(75815u, 1u)).x, _wgslsmith_add_i32(-83934i, 9271i)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f), -238f), -340f)), func_2(func_2(func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(arg_3, arg_3, false, false))), -25198i, arg_2, global2[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<i32>(-37303i, 0i, global2[_wgslsmith_index_u32(var_0, 10u)]), 561f, Struct_2(Struct_1(vec4<bool>(true, true, true, false)))), ~vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(trunc(global1.x)), Struct_2(Struct_1(vec4<bool>(arg_0, arg_3, false, true)))), -_wgslsmith_mult_vec3_i32(vec3<i32>(-11129i, -18408i, u_input.b.x), vec3<i32>(global2[_wgslsmith_index_u32(1u, 10u)], 1i, 46916i)), _wgslsmith_div_f32(-520f, -1648f), func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, arg_0, arg_0))), global2[_wgslsmith_index_u32(4294967295u, 10u)], vec2<i32>(u_input.a.x, 57088i), u_input.a.x), vec3<i32>(arg_2.x, -40923i, global2[_wgslsmith_index_u32(var_0, 10u)]) << (vec3<u32>(41404u, var_0, 4294967295u) % vec3<u32>(32u)), global1.x, func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(arg_3, arg_0, arg_3, true))), arg_2.x, arg_2, 1i), u_input.b.zyy, 1833f, Struct_2(Struct_1(vec4<bool>(false, arg_0, false, arg_3)))).a).a).a).a, 0i, func_4(func_2(func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(arg_3, arg_0, false, false))), u_input.a.x, arg_2, arg_2.x), vec3<i32>(2147483647i, 1i, 0i), -1080f, Struct_2(Struct_1(vec4<bool>(arg_0, false, false, arg_3)))), vec3<i32>(2147483647i, -10172i, u_input.b.x), global1.x, func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(arg_3, false, arg_0, arg_0))), 2147483647i, u_input.a, arg_2.x), vec3<i32>(-2753i, arg_2.x, arg_2.x), global1.x, Struct_2(Struct_1(vec4<bool>(false, arg_0, true, arg_3)))).a), func_2(func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(true, true, arg_0, true))), -40720i, vec2<i32>(-10992i, global2[_wgslsmith_index_u32(1u, 10u)]), 1i), vec3<i32>(arg_2.x, 14813i, 13282i), -1004f, Struct_2(Struct_1(vec4<bool>(true, arg_0, arg_3, true)))), vec3<i32>(65658i, arg_2.x, arg_2.x), _wgslsmith_f_op_f32(-global1.x), Struct_2(Struct_1(vec4<bool>(arg_0, arg_0, false, arg_0)))), !vec4<bool>(arg_3, arg_3, arg_0, true), vec2<u32>(firstLeadingBit(arg_1), var_0 >> (arg_1 % 32u))) >> (firstLeadingBit(~vec2<u32>(23318u, 4294967295u)) % vec2<u32>(32u)), u_input.a.x);
    var var_2 = global1.x;
    var var_3 = var_1.a.a.a.ywy;
    var var_4 = Struct_3(select(vec4<bool>(any(!var_1.a.a.a.yxw), false, (arg_3 || false) & true, all(!vec4<bool>(var_3.x, var_3.x, false, true))), !vec4<bool>(true, arg_1 <= arg_1, true, any(var_1.a.a.a)), var_1.a.a.a), func_2(Struct_4(var_1.a, global2[_wgslsmith_index_u32(countOneBits(arg_1 & 70007u), 10u)], -vec2<i32>(-2147483647i, u_input.b.x), u_input.a.x), u_input.b.zyy, 705f, var_1.a).a, vec3<i32>(_wgslsmith_add_i32(-33721i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -79588i), var_1.c), arg_2.x)), -2147483647i << (var_0 % 32u), u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, 31125i, 0i), firstTrailingBit(var_1.c.x)), Struct_2(Struct_1(var_1.a.a.a)));
    return Struct_3(!var_1.a.a.a, Struct_2(var_4.e.a), vec3<i32>(-2147483647i, _wgslsmith_div_i32(arg_2.x, u_input.b.x) | -42855i, _wgslsmith_add_i32(~2147483647i, arg_2.x)) << (select(vec3<u32>(_wgslsmith_add_u32(1u, 31193u), var_0, _wgslsmith_mult_u32(30205u, 2109u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0, 1u, 41247u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0, 43488u, var_0), vec3<u32>(var_0, var_0, 68311u))), global1.x >= global1.x) % vec3<u32>(32u)), _wgslsmith_clamp_i32(1i, var_1.d, u_input.a.x), var_1.a);
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: vec4<i32>) -> bool {
    let var_0 = arg_1.e.a;
    global2 = array<i32, 10>();
    let var_1 = _wgslsmith_mod_i32(u_input.b.x, -(u_input.b.x | (-37012i & global2[_wgslsmith_index_u32(9511u, 10u)]))) ^ _wgslsmith_add_i32(_wgslsmith_add_i32(func_4(func_2(Struct_4(Struct_2(var_0), arg_0, vec2<i32>(arg_1.d, arg_0), arg_2.x), vec3<i32>(2876i, global2[_wgslsmith_index_u32(76473u, 10u)], -40231i), -570f, arg_1.e), func_2(Struct_4(arg_1.e, -2147483647i, vec2<i32>(-2147483647i, 0i), arg_1.d), arg_1.c, 454f, Struct_2(arg_1.b.a)), arg_1.b.a.a, ~vec2<u32>(26980u, 1u)).x, ~arg_0), 56440i);
    var var_2 = !(!vec4<bool>(arg_1.b.a.a.x, arg_1.b.a.a.x, var_0.a.x, !var_0.a.x));
    global2 = array<i32, 10>();
    return firstTrailingBit(1u) >= ~4294967295u;
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<bool>(true, func_6(max(~u_input.a.x, u_input.a.x), func_5(!any(vec4<bool>(false, true, true, false)), _wgslsmith_add_u32(~4294967295u, ~69907u), func_4(Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, false, true))), u_input.b.x, u_input.a, u_input.b.x), func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, false, false))), 0i, u_input.b.zw, u_input.a.x), vec3<i32>(global2[_wgslsmith_index_u32(53069u, 10u)], -31531i, -2147483647i), -386f, Struct_2(Struct_1(vec4<bool>(true, false, false, true)))), vec4<bool>(true, true, true, true), vec2<u32>(1u, 1u)), !all(vec4<bool>(false, false, true, false))), ~u_input.b >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), all(func_5(all(func_5(false, 4294967295u, u_input.a, true).a.zwz), 4294967295u, abs(u_input.a) & _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -64962i), vec2<i32>(global2[_wgslsmith_index_u32(1155u, 10u)], -3349i)), true).b.a.a), true);
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(firstTrailingBit(99330u)), 1u, 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(6433u, 0u, 1u), vec3<u32>(~39590u, 0u, 66113u))), vec4<u32>(1u, 1u, 1u, 1u));
    var var_2 = Struct_1(!vec4<bool>(all(var_0.wzw), var_0.x, !(var_1.x != var_1.x), select(!var_0.x, var_0.x, func_2(Struct_4(Struct_2(Struct_1(var_0)), 12895i, u_input.a, global2[_wgslsmith_index_u32(var_1.x, 10u)]), u_input.b.zzx, global1.x, Struct_2(Struct_1(var_0))).a.a.a.x)));
    var var_3 = Struct_1(select(vec4<bool>(!var_0.x | all(var_2.a.zwy), !var_0.x, any(select(vec2<bool>(true, var_2.a.x), var_2.a.zy, var_0.x)), any(select(vec3<bool>(false, var_2.a.x, true), var_2.a.zyz, var_0.x))), !vec4<bool>(true, var_2.a.x, var_2.a.x, global1.x <= -291f), false));
    var_2 = func_2(func_2(func_2(func_2(Struct_4(Struct_2(Struct_1(var_3.a)), u_input.a.x, u_input.b.zy, -1i), vec3<i32>(u_input.a.x, 0i, global2[_wgslsmith_index_u32(var_1.x, 10u)]), _wgslsmith_f_op_f32(f32(-1f) * -1219f), func_5(var_3.a.x, var_1.x, u_input.b.yw, true).e), ~u_input.b.wyw, global1.x, func_5(true | var_0.x, 1u, _wgslsmith_add_vec2_i32(u_input.b.zz, vec2<i32>(u_input.a.x, 0i)), select(var_3.a.x, var_0.x, false)).b), u_input.b.yxy, 575f, func_5(select(true, select(false, true, false), true), _wgslsmith_mult_u32(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 8718u), vec4<u32>(0u, var_1.x, var_1.x, var_1.x))), select(vec2<i32>(global2[_wgslsmith_index_u32(var_1.x, 10u)], -11935i), vec2<i32>(-8312i, 60989i), vec2<bool>(true, true)) ^ vec2<i32>(-1i, 1i), var_0.x).e), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-global2[_wgslsmith_index_u32(var_1.x, 10u)], -u_input.a.x, u_input.b.x), vec3<i32>(u_input.b.x << (var_1.x % 32u), 41343i, global2[_wgslsmith_index_u32(var_1.x, 10u)] << (var_1.x % 32u))), u_input.b.wzx), -536f, func_5(any(!select(vec3<bool>(false, var_2.a.x, false), vec3<bool>(var_0.x, false, var_3.a.x), var_2.a.x)), _wgslsmith_mult_u32(~(~1u), var_1.x), u_input.a, true).e).a.a;
    return func_2(func_2(Struct_4(func_2(func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(var_3.a.x, var_3.a.x, var_2.a.x, var_2.a.x))), global2[_wgslsmith_index_u32(var_1.x, 10u)], u_input.b.yz, u_input.a.x), vec3<i32>(global2[_wgslsmith_index_u32(var_1.x, 10u)], -1i, -270i), 975f, Struct_2(Struct_1(var_3.a))), ~vec3<i32>(global2[_wgslsmith_index_u32(var_1.x, 10u)], global2[_wgslsmith_index_u32(52994u, 10u)], -51143i), -1306f, func_5(false, var_1.x, vec2<i32>(-2682i, global2[_wgslsmith_index_u32(1u, 10u)]), var_2.a.x).b).a, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b.x, global2[_wgslsmith_index_u32(128863u, 10u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.b.x), vec3<i32>(u_input.a.x, -2147483647i, -1i))), vec2<i32>(-31108i, _wgslsmith_mod_i32(2147483647i, 12870i)), 15750i), u_input.b.yzy, global1.x, func_2(Struct_4(Struct_2(Struct_1(var_0)), u_input.a.x, vec2<i32>(1867i, 1i), ~global2[_wgslsmith_index_u32(var_1.x, 10u)]), u_input.b.zyw, global1.x, Struct_2(func_2(Struct_4(Struct_2(Struct_1(vec4<bool>(false, var_2.a.x, true, true))), u_input.b.x, vec2<i32>(global2[_wgslsmith_index_u32(6300u, 10u)], u_input.a.x), u_input.a.x), vec3<i32>(u_input.b.x, u_input.a.x, -2147483647i), global1.x, Struct_2(Struct_1(vec4<bool>(var_2.a.x, true, var_3.a.x, var_0.x)))).a.a)).a), u_input.b.xzz, global1.x, Struct_2(Struct_1(vec4<bool>(false, func_5(var_2.a.x, 1u, u_input.b.ww, var_3.a.x).b.a.a.x, true, all(var_3.a))))).a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 9u)];
    let var_1 = func_1();
    global2 = array<i32, 10>();
    let var_2 = func_5(false, max(min(firstTrailingBit(_wgslsmith_sub_u32(71042u, 3574u)), 9662u), countOneBits(~(~4294967295u))), select(min(u_input.b.zy, abs(countOneBits(u_input.a))), -(~vec2<i32>(0i, u_input.b.x)), true), true);
    global1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(649f * global1.x)))));
    global3 = 59699i;
    let var_3 = vec3<i32>(func_2(Struct_4(var_2.b, (u_input.a.x >> (0u % 32u)) << (_wgslsmith_sub_u32(10276u, 1u) % 32u), min(_wgslsmith_sub_vec2_i32(u_input.b.xx, vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], -2147483647i)), firstTrailingBit(vec2<i32>(global2[_wgslsmith_index_u32(8988u, 10u)], -2310i))), func_4(Struct_4(var_2.b, global2[_wgslsmith_index_u32(29493u, 10u)], var_2.c.yx, 0i), func_2(Struct_4(Struct_2(Struct_1(var_2.b.a.a)), global2[_wgslsmith_index_u32(0u, 10u)], vec2<i32>(28273i, 1i), global2[_wgslsmith_index_u32(84755u, 10u)]), u_input.b.xzw, global1.x, Struct_2(var_1)), !vec4<bool>(false, true, var_0.x, true), ~vec2<u32>(1u, 76768u)).x), reverseBits(var_2.c), global1.x, var_2.b).b, 2147483647i, ~(-countOneBits(abs(u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global1.x, _wgslsmith_f_op_f32(872f - -1062f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) - -472f))), _wgslsmith_mult_vec3_u32(vec3<u32>(14597u, 1u, 1u), countOneBits(vec3<u32>(4294967295u, max(54431u, 23063u), 4294967295u))), u_input.b);
}

