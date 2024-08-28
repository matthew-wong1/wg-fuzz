struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<i32>(-1i, 27860i, i32(-2147483648)), false, 1145f, false, true), Struct_1(vec3<i32>(2141i, 1i, i32(-2147483648)), true, 383f, true, true));

var<private> global2: Struct_2;

var<private> global3: array<vec3<i32>, 27>;

var<private> global4: array<vec2<i32>, 19>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> Struct_2 {
    global3 = array<vec3<i32>, 27>();
    global1 = array<Struct_1, 2>();
    let var_0 = Struct_1(firstLeadingBit(-_wgslsmith_mod_vec3_i32(global2.a.a, arg_1.a) ^ _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(global0.a, vec3<i32>(global2.a.a.x, arg_1.a.x, 2147483647i)), global0.a)), global2.a.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(101f * _wgslsmith_f_op_f32(trunc(1318f))), global0.c)), true, global0.d);
    global0 = arg_1;
    global4 = array<vec2<i32>, 19>();
    return Struct_2(arg_1);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(u_input.a, arg_0.x);
    global1 = array<Struct_1, 2>();
    let var_1 = global2.a;
    var var_2 = Struct_2(func_2(global2.a.a.x, Struct_1(vec3<i32>(-1i, 0i, global0.a.x) ^ vec3<i32>(-2147483647i, -1i, 1346i), all(!vec3<bool>(global0.e, var_1.b, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(804f, arg_3.c)) - -942f), -412f <= _wgslsmith_f_op_f32(-global0.c), true), func_2(global2.a.a.x, func_2(u_input.b.x, func_2(2396i, global1[_wgslsmith_index_u32(u_input.a, 2u)], global2.a.b, vec3<bool>(global0.b, var_1.e, true)).a, u_input.b.x < global0.a.x, vec3<bool>(global0.b, arg_3.e, var_1.d)).a, true, select(!vec3<bool>(true, true, arg_3.b), vec3<bool>(true, true, true), vec3<bool>(true, false, global2.a.b))).a.e, vec3<bool>(any(select(vec4<bool>(true, global2.a.b, var_1.d, arg_3.e), vec4<bool>(false, arg_3.e, global2.a.d, arg_3.e), global2.a.b)), arg_3.d, arg_3.b)).a);
    var var_3 = countOneBits(_wgslsmith_div_u32(countOneBits(~arg_0.x), firstTrailingBit(1u) & 5951u) ^ _wgslsmith_sub_u32(~0u, 4294967295u));
    return func_2(_wgslsmith_dot_vec3_i32(min(~global3[_wgslsmith_index_u32(var_0, 27u)], vec3<i32>(~global2.a.a.x, 5341i, global0.a.x | arg_3.a.x)), ~max(_wgslsmith_add_vec3_i32(global0.a, vec3<i32>(var_1.a.x, u_input.b.x, -1i)), vec3<i32>(-49289i, var_2.a.a.x, -2147483647i))), arg_3, all(vec4<bool>(!(arg_3.d && true), all(!vec4<bool>(true, global0.d, global2.a.d, var_1.e)), true, true)), !vec3<bool>(!(!global0.b), var_2.a.d, var_1.d)).a;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: f32, arg_3: bool) -> f32 {
    global2 = func_2(global2.a.a.x, Struct_1(~select(vec3<i32>(1i, 1i, 1i), -global0.a, true), arg_3, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))), all(!vec3<bool>(global0.b, true, false)), arg_3), global0.e, select(select(!(!vec3<bool>(global0.e, false, global2.a.e)), vec3<bool>(true, all(vec4<bool>(false, false, true, global2.a.e)), any(vec4<bool>(true, arg_3, false, true))), any(select(vec2<bool>(global0.b, global2.a.e), vec2<bool>(false, false), global2.a.b))), !select(vec3<bool>(global2.a.b, global2.a.b, true), select(vec3<bool>(true, true, arg_3), vec3<bool>(true, global0.b, false), global0.d), select(vec3<bool>(true, global2.a.b, false), vec3<bool>(false, global0.b, arg_3), vec3<bool>(global0.d, false, true))), vec3<bool>(all(vec2<bool>(global2.a.d, arg_3)), true, false)));
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.c, global2.a.c)))), 741f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2)))));
    var var_2 = Struct_2(func_3(min(abs(~vec4<u32>(u_input.a, 1u, 1u, 28113u)), vec4<u32>(0u, ~1u, ~0u, 3738u)), vec3<i32>(i32(-1i) * -arg_1.x, 1i, arg_1.x), global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(u_input.a, 1u, _wgslsmith_div_u32(27763u, u_input.a))), 27u)], global1[_wgslsmith_index_u32(~1u & u_input.a, 2u)]));
    let var_3 = func_3(firstTrailingBit(vec4<u32>(22128u, countOneBits(u_input.a) & u_input.a, ~_wgslsmith_mod_u32(u_input.a, u_input.a), min(u_input.a, ~46626u))), -vec3<i32>(global2.a.a.x, global2.a.a.x, global2.a.a.x), vec3<i32>(1i, u_input.b.x, ~(-firstLeadingBit(var_2.a.a.x))), Struct_1(var_2.a.a, true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(11450i, Struct_1(global2.a.a, arg_3, global0.c, true, false), true, vec3<bool>(arg_3, false, global0.d)).a.c - _wgslsmith_f_op_f32(-global2.a.c)))), global0.e, !global0.b));
    return _wgslsmith_f_op_f32(trunc(var_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(max(vec3<i32>(i32(-1i) * -2147483647i, -1i, select(-global2.a.a.x, -1i, !global2.a.e)), -vec3<i32>(global2.a.a.x, u_input.b.x, u_input.b.x) & (vec3<i32>(global2.a.a.x, 9662i, global0.a.x) << (~vec3<u32>(u_input.a, 28048u, 42152u) % vec3<u32>(32u)))), any(!vec2<bool>(!global0.d, global2.a.e)), _wgslsmith_f_op_f32(func_1(i32(-1i) * -(i32(-1i) * -42460i), global2.a.a.zz, 336f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * 391f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1045f)) + _wgslsmith_f_op_f32(global0.c - -648f)))), true, true);
    global1 = array<Struct_1, 2>();
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-281f, func_3(vec4<u32>(u_input.a, 43038u, 1u, u_input.a), vec3<i32>(global0.a.x, global2.a.a.x, 72062i), vec3<i32>(45793i, global0.a.x, global0.a.x), Struct_1(global2.a.a, global0.d, -102f, true, true)).c, global2.a.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.a.c), -275f, _wgslsmith_f_op_f32(sign(-1497f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-534f, global0.c, global2.a.c) + vec3<f32>(554f, -618f, 555f)))), vec3<bool>(true, ~u_input.a < firstTrailingBit(u_input.a), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-630f, -491f, -159f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, 2678f, -1017f) + vec3<f32>(global2.a.c, global2.a.c, -381f))))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.c, _wgslsmith_f_op_f32(ceil(224f)), func_3(vec4<u32>(82926u, 49952u, 1u, u_input.a), global3[_wgslsmith_index_u32(u_input.a, 27u)], global0.a, Struct_1(global0.a, false, global0.c, true, false)).c))))));
    let var_1 = Struct_2(func_3(reverseBits(min(countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), min(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(40868u, 53998u, u_input.a, 1u)))), vec3<i32>(func_3(vec4<u32>(u_input.a, u_input.a, 37348u, 54598u) << (vec4<u32>(0u, u_input.a, 29976u, 1u) % vec4<u32>(32u)), ~global2.a.a, global2.a.a, func_2(global0.a.x, global2.a, global0.d, vec3<bool>(true, true, false)).a).a.x, func_3(~vec4<u32>(u_input.a, 50242u, u_input.a, u_input.a), ~global3[_wgslsmith_index_u32(u_input.a, 27u)], -global2.a.a, Struct_1(vec3<i32>(global0.a.x, -2147483647i, 25228i), true, 576f, false, false)).a.x, global2.a.a.x), vec3<i32>(-40704i, ~(-global2.a.a.x), -55221i << (_wgslsmith_clamp_u32(u_input.a, 21735u, 2430u) % 32u)), func_3(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, 70724u, 4294967295u), vec4<u32>(u_input.a, 0u, 34528u, 4294967295u)), global2.a.a, vec3<i32>(2147483647i, u_input.b.x, ~u_input.b.x), func_3(vec4<u32>(1u, 60688u, 1u, u_input.a), vec3<i32>(11972i, global0.a.x, global0.a.x), global0.a ^ vec3<i32>(1i, global2.a.a.x, 0i), Struct_1(vec3<i32>(global0.a.x, u_input.b.x, global2.a.a.x), global0.b, 673f, true, global2.a.d)))));
    let var_2 = vec3<u32>(~17969u, ~1u, ~u_input.a);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a.c), -1203f, true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a.c, -343f)) * func_2(-11368i, Struct_1(vec3<i32>(global0.a.x, -3311i, 2147483647i), false, -613f, false, global2.a.b), true, vec3<bool>(global2.a.b, false, global2.a.d)).a.c))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(947f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.c), _wgslsmith_div_f32(global0.c, 1170f))), -1057f));
    let var_3 = reverseBits(var_1.a.a.x >> (~(min(1u, var_2.x) << (~80907u % 32u)) % 32u));
    global0 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-202f)), -1000f)));
}

