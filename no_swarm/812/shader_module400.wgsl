struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 17> = array<bool, 17>(false, false, false, false, true, true, true, false, false, true, false, false, true, false, false, false, true);

var<private> global2: i32;

var<private> global3: vec3<f32>;

var<private> global4: array<f32, 13> = array<f32, 13>(620f, -487f, -1700f, -1565f, 1000f, -349f, 696f, 2972f, 429f, -1047f, 1000f, -128f, -116f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<bool> {
    global2 = 56596i;
    var var_0 = select(!(!vec4<bool>(all(vec4<bool>(arg_2.c.x, global1[_wgslsmith_index_u32(1u, 17u)], true, arg_2.c.x)), true, true, arg_2.c.x & global1[_wgslsmith_index_u32(0u, 17u)])), select(vec4<bool>(-911f > _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(6239u, 13u)] * arg_2.b), true, true, _wgslsmith_f_op_f32(1514f - arg_0.x) == global3.x), !(!vec4<bool>(false, arg_2.c.x, global1[_wgslsmith_index_u32(8582u, 17u)], true)), any(select(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 17u)], true, false, global1[_wgslsmith_index_u32(1u, 17u)]), select(vec4<bool>(true, arg_2.c.x, global1[_wgslsmith_index_u32(4294967295u, 17u)], arg_2.c.x), vec4<bool>(true, arg_2.c.x, true, false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(50328u, 17u)], false, global1[_wgslsmith_index_u32(9355u, 17u)])), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 17u)], false, global1[_wgslsmith_index_u32(42904u, 17u)], true)))), !vec4<bool>(true, !global1[_wgslsmith_index_u32(1u, 17u)], any(!vec4<bool>(false, arg_2.c.x, arg_2.c.x, true)), true));
    let var_1 = arg_2;
    let var_2 = max(0u, ~min(~0u, 0u));
    global2 = u_input.a;
    return vec2<bool>(true, u_input.b.x >= (firstTrailingBit(~u_input.a) & u_input.a));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_f32(-global3.x);
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2273f * global3.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 13u)] * global3.x))), 577f))))));
    global4 = array<f32, 13>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_div_f32(global3.x, arg_3.a)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, var_0, var_0))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(261f, 1000f, global3.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(185f, global4[_wgslsmith_index_u32(76378u, 13u)], var_0) - vec3<f32>(var_0, 1867f, 1260f))), vec3<f32>(-574f, var_0, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(38765u, 13u)] - -1124f))))), var_0, vec2<bool>(global1[_wgslsmith_index_u32(1u, 17u)], !all(select(arg_1.d, arg_3.b.d, false))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(110f, -365f, -1314f))), vec3<f32>(-1456f, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(44094u, 32949u), 13u)], var_0), select(vec3<bool>(true, true, arg_3.c.b), select(arg_1.e, vec3<bool>(true, false, false), global1[_wgslsmith_index_u32(15847u, 17u)]), !arg_3.d)))), _wgslsmith_f_op_f32(-1659f - global4[_wgslsmith_index_u32(1u, 13u)]), !vec2<bool>(true, arg_2));
    return var_1.a.x;
}

fn func_2() -> i32 {
    let var_0 = true;
    let var_1 = max(max(~vec2<u32>(19088u, 1u), _wgslsmith_sub_vec2_u32(~vec2<u32>(25967u, 48153u), select(~vec2<u32>(37878u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), true))), _wgslsmith_mod_vec2_u32(~vec2<u32>(~32010u, ~1u), firstLeadingBit(~select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(16820u, 33212u), vec2<bool>(true, true)))));
    let var_2 = i32(-1i) * -9555i;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(func_4(select(select(func_3(vec2<f32>(-1747f, -868f), vec4<f32>(1702f, global3.x, 1198f, global4[_wgslsmith_index_u32(var_1.x, 13u)]), Struct_1(vec3<f32>(global3.x, global4[_wgslsmith_index_u32(4294967295u, 13u)], global3.x), global3.x, vec2<bool>(false, true))), !vec2<bool>(var_0, var_0), vec2<bool>(true, var_0)), vec2<bool>(!global1[_wgslsmith_index_u32(var_1.x, 17u)], true), !func_3(vec2<f32>(1096f, global3.x), vec4<f32>(2058f, global4[_wgslsmith_index_u32(4294967295u, 13u)], global4[_wgslsmith_index_u32(var_1.x, 13u)], global3.x), Struct_1(vec3<f32>(-528f, global3.x, global3.x), 1183f, vec2<bool>(true, false)))), Struct_2((vec2<i32>(-38220i, var_2) | vec2<i32>(u_input.b.x, var_2)) ^ _wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(1i, u_input.a), vec2<i32>(2147483647i, -2147483647i)), var_0, ~min(-46098i, 2147483647i), select(!vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 17u)], var_0, var_0, true), vec4<bool>(true, global1[_wgslsmith_index_u32(28604u, 17u)], var_0, true), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(var_1.x, 17u)])), select(vec3<bool>(global1[_wgslsmith_index_u32(16653u, 17u)], true, global1[_wgslsmith_index_u32(var_1.x, 17u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 17u)], true, false), vec3<bool>(false, var_0, false), global1[_wgslsmith_index_u32(1091u, 17u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], false), vec3<bool>(var_0, false, true), var_0))), min(var_1.x, _wgslsmith_mod_u32(4392u, var_1.x)) > var_1.x, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1371f, 1203f))), Struct_2(vec2<i32>(-40711i, u_input.a), global1[_wgslsmith_index_u32(var_1.x, 17u)], -2147483647i >> (var_1.x % 32u), vec4<bool>(false, var_0, true, false), vec3<bool>(var_0, true, false)), Struct_2(countOneBits(u_input.b), all(vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 17u)], true)), -7135i, vec4<bool>(var_0, false, false, global1[_wgslsmith_index_u32(var_1.x, 17u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 17u)], global1[_wgslsmith_index_u32(var_1.x, 17u)])), var_0))), Struct_2(~abs(vec2<i32>(var_2, -49999i)), any(vec2<bool>(true, !global1[_wgslsmith_index_u32(0u, 17u)])), _wgslsmith_sub_i32(firstTrailingBit(-1i), var_2), select(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, var_1.x), 17u)], any(vec3<bool>(var_0, global1[_wgslsmith_index_u32(1u, 17u)], true)), global1[_wgslsmith_index_u32(var_1.x, 17u)], global1[_wgslsmith_index_u32(var_1.x, 17u)]), vec4<bool>(func_3(vec2<f32>(global4[_wgslsmith_index_u32(var_1.x, 13u)], 327f), vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 13u)], global4[_wgslsmith_index_u32(0u, 13u)], 441f, global3.x), Struct_1(vec3<f32>(1630f, global3.x, global4[_wgslsmith_index_u32(33957u, 13u)]), global4[_wgslsmith_index_u32(1u, 13u)], vec2<bool>(true, true))).x, global1[_wgslsmith_index_u32(0u, 17u)], true, any(vec4<bool>(false, false, global1[_wgslsmith_index_u32(20480u, 17u)], global1[_wgslsmith_index_u32(var_1.x, 17u)]))), any(select(vec4<bool>(var_0, false, global1[_wgslsmith_index_u32(var_1.x, 17u)], global1[_wgslsmith_index_u32(var_1.x, 17u)]), vec4<bool>(true, true, var_0, true), global1[_wgslsmith_index_u32(0u, 17u)]))), select(select(select(vec3<bool>(var_0, true, var_0), vec3<bool>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(var_1.x, 17u)], true), false), !vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 17u)], true, false), vec3<bool>(true, true, true)), vec3<bool>(true, !global1[_wgslsmith_index_u32(var_1.x, 17u)], all(vec3<bool>(false, false, true))), true)), Struct_2(vec2<i32>(-21331i, var_2), any(select(!vec3<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 17u)], true), select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, global1[_wgslsmith_index_u32(var_1.x, 17u)], false), vec3<bool>(var_0, false, true)), true != var_0)), _wgslsmith_div_i32(countOneBits(1i >> (var_1.x % 32u)), _wgslsmith_mult_i32(-var_2, i32(-1i) * -14125i)), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(1298u, 17u)], false, var_0, false), global1[_wgslsmith_index_u32(0u, 17u)])), vec3<bool>(1167f > _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(11148u, 13u)]), true, !global1[_wgslsmith_index_u32(4294967295u >> (var_1.x % 32u), 17u)])), true);
    let var_4 = ~(-(vec2<i32>(abs(var_3.c.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, var_2), vec3<i32>(u_input.a, var_2, -2147483647i))) >> (~vec2<u32>(var_1.x, 34934u) % vec2<u32>(32u))));
    return -15224i;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> vec3<i32> {
    global2 = func_2();
    var var_0 = countOneBits(abs(~(vec4<u32>(arg_1.x, 61155u, arg_0, 21603u) >> (vec4<u32>(25462u, 1133u, 1u, 6951u) % vec4<u32>(32u)))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(426f, 921f, -511f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-523f, global3.x, -1817f) * vec3<f32>(1372f, global4[_wgslsmith_index_u32(arg_1.x, 13u)], global4[_wgslsmith_index_u32(1u, 13u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(arg_1.x, 13u)], -1233f, global4[_wgslsmith_index_u32(4294967295u, 13u)]) + vec3<f32>(-545f, global4[_wgslsmith_index_u32(4294967295u, 13u)], 441f))))));
    return ~vec3<i32>(-3954i, u_input.a, -38948i);
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: bool, arg_3: i32) -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~(~30864u), 13u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-693f, _wgslsmith_f_op_f32(-775f * global3.x))), -1622f, global3.x);
    global2 = u_input.a;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -666f), Struct_2(reverseBits(u_input.b & vec2<i32>(-2147483647i, 0i)) | -vec2<i32>(-6220i, arg_1.x), any(func_3(global3.yy, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 965f, 189f, -274f), var_0), Struct_1(vec3<f32>(var_0.x, -557f, 1172f), 710f, vec2<bool>(false, global1[_wgslsmith_index_u32(48460u, 17u)])))), 2147483647i, vec4<bool>(true, false, true, select(arg_2, !arg_2, true)), !select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 17u)], true, arg_2), !vec3<bool>(arg_2, global1[_wgslsmith_index_u32(51796u, 17u)], arg_2), vec3<bool>(true, true, true))), Struct_2(~(u_input.b & _wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_1.x), vec2<i32>(-57502i, u_input.b.x))), true, -(~(~arg_3)), vec4<bool>(all(vec2<bool>(true, arg_2)), any(vec4<bool>(true, true, true, true)), true, true), !select(vec3<bool>(global1[_wgslsmith_index_u32(43150u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], arg_2), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], arg_2, arg_2), vec3<bool>(false, global1[_wgslsmith_index_u32(25945u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 17u)], arg_2, global1[_wgslsmith_index_u32(0u, 17u)])), false)), select(true, arg_2, global1[_wgslsmith_index_u32(1u >> (1u % 32u), 17u)]));
    global0 = -1849f;
    var var_2 = var_1;
    return Struct_3(_wgslsmith_f_op_f32(-var_1.a), var_1.c, Struct_2(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(-arg_1.yy, vec2<i32>(arg_1.x, 15569i), u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(-9471i, arg_3), _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.c.c, -1i), u_input.b))), true, 1i, !vec4<bool>(global1[_wgslsmith_index_u32(~4294967295u, 17u)], any(var_2.b.e.zy), true, true), select(var_2.c.d.www, !vec3<bool>(true, true, arg_2), 2147483647i > ~var_2.b.c)), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~(~4294967295u), 7057u), 17u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-global3.x), ~(-func_1(4294967295u, vec2<u32>(1u, 1u))), func_3(global3.xz, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 931f, 193f, 1938f))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-145f, global4[_wgslsmith_index_u32(9035u, 13u)], 346f)), _wgslsmith_f_op_f32(select(623f, global3.x, true)), vec2<bool>(false, global1[_wgslsmith_index_u32(26043u, 17u)]))).x == func_3(global3.yz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-519f, 609f, global3.x, global3.x) - vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 13u)], global3.x, -1364f, global3.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-458f, -1286f, global3.x)), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 13u)] - 656f), vec2<bool>(global1[_wgslsmith_index_u32(0u, 17u)], true))).x, i32(-1i) * -29580i);
    var var_1 = select(var_0.c.d, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2067f - _wgslsmith_f_op_f32(round(-1839f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1306f, 558f, global1[_wgslsmith_index_u32(49399u, 17u)])))), vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -1i, firstLeadingBit(var_0.b.c)), 54357i, 2147483647i), true, min(max(u_input.b.x, func_2()), select(-1421i, u_input.a, var_0.b.d.x))).c.d, any(var_0.b.e.xx));
    var var_2 = firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(51421u, 44261u, 4294967295u, 4294967295u), abs(vec4<u32>(6436u, 10723u, 0u, 41913u)), vec4<u32>(39821u, 44521u, 10390u, 4294967295u)), firstLeadingBit(firstTrailingBit(vec4<u32>(4294967295u, 13106u, 0u, 37268u))))) < _wgslsmith_mod_u32(select(1u, reverseBits(8186u), global1[_wgslsmith_index_u32(min(0u, 0u), 17u)]) ^ (max(17731u, 43227u) << (countOneBits(58243u) % 32u)), min(abs(~1u), ~abs(81439u)));
    global1 = array<bool, 17>();
    let var_3 = select(func_5(global4[_wgslsmith_index_u32(select(1u, ~12092u, func_5(-1000f, vec3<i32>(-2147483647i, var_0.b.a.x, u_input.a), true, -18150i).d && false), 13u)], _wgslsmith_div_vec3_i32(select(vec3<i32>(var_0.b.c, 2147483647i, -1i), vec3<i32>(2147483647i, -2147483647i, 58258i), var_1.yxz) >> (vec3<u32>(10712u, 0u, 0u) % vec3<u32>(32u)), vec3<i32>(func_2(), u_input.b.x, u_input.a << (25900u % 32u))), var_1.x | ((1162f == global4[_wgslsmith_index_u32(36404u, 13u)]) != true), 31673i).c.d.xw, var_1.xx, true);
    let var_4 = _wgslsmith_f_op_f32(round(2060f));
    var_1 = var_0.c.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-abs(-u_input.a), (_wgslsmith_add_i32(var_0.b.c, u_input.b.x) | -2147483647i) << (0u % 32u), _wgslsmith_mod_i32(countOneBits(~0i), ~reverseBits(var_0.c.a.x))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(57102u, _wgslsmith_dot_vec3_u32(vec3<u32>(12743u, 140594u, 4294967295u), vec3<u32>(1u, 78519u, 46763u)), 0u, firstTrailingBit(1u)), vec4<u32>(_wgslsmith_div_u32(1u, 11877u), ~6708u, 61594u, 52456u)), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 0u, 0u, 4294967295u)), select(vec4<u32>(0u, 13506u, 0u, 66279u), vec4<u32>(16985u, 0u, 8947u, 4495u), var_1.x)), _wgslsmith_div_u32(firstTrailingBit(0u), 1u) << (min(_wgslsmith_dot_vec2_u32(vec2<u32>(15321u, 0u), vec2<u32>(96827u, 38432u)), ~1u) % 32u), 1u));
}

