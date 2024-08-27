struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<bool, 26> = array<bool, 26>(true, false, false, false, false, false, true, false, true, true, true, true, true, false, false, true, true, false, false, false, false, true, true, true, false, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = (arg_0 <= (select(abs(arg_2.x), ~arg_2.x, global1[_wgslsmith_index_u32(~0u, 26u)]) & _wgslsmith_sub_i32(arg_2.x, ~13182i))) && global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(1u, 1u)) | _wgslsmith_sub_u32(_wgslsmith_div_u32(select(76977u, 1u, true), select(31605u, 34834u, global0.x)), 0u), 26u)];
    let var_1 = firstTrailingBit(9694i);
    var_0 = _wgslsmith_mult_i32(var_1 >> (abs(min(1u, 1u)) % 32u), reverseBits(~_wgslsmith_div_i32(var_1, var_1))) >= _wgslsmith_dot_vec2_i32(min(arg_2.yz, -countOneBits(arg_2.yx)), select(vec2<i32>(_wgslsmith_mult_i32(u_input.a, 1i), 1i), select(select(arg_2.zz, vec2<i32>(36800i, -13351i), true), firstLeadingBit(vec2<i32>(u_input.a, 2147483647i)), global0.yx), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, 64780u), 26u)]));
    global1 = array<bool, 26>();
    let var_2 = _wgslsmith_f_op_f32(-765f * arg_3.a);
    return select(global0.wx, !select(global0.wx, vec2<bool>(global1[_wgslsmith_index_u32(~44937u, 26u)], !global1[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<bool>(select(global0.x, true, false), true)), true);
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    global0 = !vec4<bool>(all(vec2<bool>(arg_0.c.x, global1[_wgslsmith_index_u32(arg_0.a.x, 26u)])) | false, global0.x, arg_0.b >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.e, 137f))), !(!all(global0.wz)));
    var var_0 = vec2<bool>(all(vec2<bool>(global0.x, global0.x)), arg_0.d < abs(14940u));
    var var_1 = vec4<i32>(min(u_input.a, abs(u_input.a)), -1i, _wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(select(~u_input.a, -27418i, true), u_input.a)), min(_wgslsmith_sub_i32(2147483647i, 2147483647i), -15703i));
    var var_2 = countOneBits(10126u);
    var var_3 = vec4<bool>(global1[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(abs(arg_0.a.x), arg_0.d), 1u, global0.x), 26u)], !(true != any(vec2<bool>(true, true))), global0.x && (-1031f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.e, arg_0.b)) * arg_0.e)), true | !all(global0.wwy));
    return vec2<u32>(max(107576u, max(~4294967295u, 32819u)), arg_0.d);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> vec2<u32> {
    let var_0 = -181f;
    var var_1 = arg_0 >> (_wgslsmith_sub_u32(~_wgslsmith_mult_u32(arg_0, 4294967295u), 0u) % 32u);
    global1 = array<bool, 26>();
    var var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(func_4(Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(12684u, 4294967295u), arg_1.zz, arg_1.zx), _wgslsmith_f_op_f32(var_0 - -914f), func_3(u_input.a, vec2<f32>(366f, var_0), vec4<i32>(-6668i, u_input.a, -69270i, 0i), Struct_2(var_0)), ~4294967295u, -1050f)), ~(~_wgslsmith_add_vec2_u32(arg_1.xz, arg_1.yx)), ~func_4(Struct_1(arg_1.zx, 826f, global0.yy, arg_1.x, -822f))), ~(~(~arg_1.xz)));
    var var_3 = vec3<i32>(u_input.a & abs(0i), reverseBits(~(-2147483647i >> (arg_1.x % 32u))), abs(~(abs(-29397i) >> (~var_2.x % 32u))));
    return ~arg_1.xy;
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    let var_0 = ~_wgslsmith_dot_vec2_u32(func_2(1u, vec3<u32>(3426u, 4294967295u, 23330u)), abs(~vec2<u32>(52109u, 134500u))) < (4294967295u & func_4(Struct_1(vec2<u32>(70886u, 30547u), _wgslsmith_f_op_f32(f32(-1f) * -1308f), arg_0.xz, 1u, _wgslsmith_f_op_f32(max(-540f, -1000f)))).x);
    var var_1 = u_input.a >> (~65256u % 32u);
    global0 = select(vec4<bool>(!(!(global1[_wgslsmith_index_u32(0u, 26u)] & false)), _wgslsmith_div_i32(-u_input.a, -u_input.a) < -(~u_input.a), true == any(vec2<bool>(var_0, true)), any(vec2<bool>(true, all(arg_0)))), select(!(!vec4<bool>(global1[_wgslsmith_index_u32(39182u, 26u)], global0.x, global0.x, true)), vec4<bool>(true, any(select(arg_0, vec3<bool>(global0.x, true, true), vec3<bool>(var_0, true, true))), true, true), vec4<bool>(!all(global0.xx), arg_0.x, !var_0, true)), vec4<bool>(!var_0, true, false, arg_0.x));
    var var_2 = Struct_1(~vec2<u32>(abs(1u), countOneBits(1u)), 1000f, select(vec2<bool>(false, var_0), vec2<bool>(true, any(select(vec2<bool>(global1[_wgslsmith_index_u32(9684u, 26u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 26u)]), global0.yx))), global0.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(select(4294967295u, 6218u, true), ~15753u), _wgslsmith_add_vec2_u32(max(vec2<u32>(30946u, 22715u), vec2<u32>(0u, 1u)) | firstTrailingBit(vec2<u32>(4294967295u, 0u)), func_2(5208u, reverseBits(vec3<u32>(4294967295u, 69655u, 20586u))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1062f, _wgslsmith_div_f32(-704f, -988f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(900f))))));
    var var_3 = _wgslsmith_f_op_f32(step(var_2.e, var_2.e));
    return ~2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 26>();
    var var_0 = vec4<i32>(u_input.a, u_input.a & func_1(select(vec3<bool>(false, true, true), global0.yxz, true)), _wgslsmith_mod_i32(u_input.a, -_wgslsmith_div_i32(u_input.a, -2147483647i)), firstLeadingBit(firstLeadingBit(59607i))) << (_wgslsmith_add_vec4_u32(vec4<u32>(68644u << (_wgslsmith_dot_vec4_u32(vec4<u32>(13462u, 22304u, 1u, 4294967295u), vec4<u32>(4294967295u, 51875u, 3824u, 66938u)) % 32u), 117051u, 1u, abs(~6945u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~max(vec4<u32>(0u, 0u, 4294967295u, 16481u), vec4<u32>(29349u, 1u, 4294967295u, 38547u)), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 4109u, 4294967295u, 18553u)), vec4<u32>(1u, 105036u, 34582u, 52391u)))) % vec4<u32>(32u));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2077f)))))));
    var var_2 = vec4<bool>(global0.x, !all(!vec4<bool>(global0.x, global0.x, false, global0.x)), true, any(vec4<bool>(select(global0.x & true, -602f > var_1.a, func_3(u_input.a, vec2<f32>(var_1.a, var_1.a), vec4<i32>(6073i, -2147483647i, var_0.x, -2147483647i), Struct_2(-733f)).x), all(!global0.www), global0.x, true)));
    let var_3 = Struct_1(vec2<u32>(~select(1u, _wgslsmith_sub_u32(18918u, 1u), false | var_2.x), func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(11338u, 6726u, 46330u), vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(22945u, 1u, 33967u)).x), var_1.a, select(vec2<bool>(false, var_1.a <= _wgslsmith_div_f32(var_1.a, var_1.a)), vec2<bool>(!(false | var_2.x), false), global0.yy), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.a)), _wgslsmith_f_op_f32(floor(-1255f))), 1112f, any(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], true, true, var_2.x))))));
    global1 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.d, vec2<f32>(var_1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b - 444f)), _wgslsmith_f_op_f32(2273f + var_1.a), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(806f, var_1.a), vec2<f32>(var_3.e, var_1.a), true))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-271f, -1000f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(193f, -1060f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 571f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f), _wgslsmith_f_op_f32(-1f))));
}

