struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-307f, -1750f, -268f), vec3<f32>(692f, -937f, -555f), vec3<f32>(429f, -485f, 1124f), vec3<f32>(-850f, 188f, 768f), vec3<f32>(-405f, 709f, 1193f), vec3<f32>(-1203f, 913f, -521f), vec3<f32>(-1165f, -213f, 513f), vec3<f32>(-839f, 990f, -345f), vec3<f32>(-959f, -1435f, -1289f), vec3<f32>(-1000f, 1099f, 300f));

var<private> global2: array<Struct_2, 9>;

var<private> global3: array<bool, 5>;

var<private> global4: vec2<u32> = vec2<u32>(1u, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec4<u32>(~u_input.a, abs(~41765u), _wgslsmith_clamp_u32(firstTrailingBit(0u), global0.d.b, _wgslsmith_mod_u32(global4.x, 61367u)), _wgslsmith_clamp_u32(0u, 81679u, _wgslsmith_mod_u32(795u, _wgslsmith_dot_vec2_u32(~vec2<u32>(10086u, arg_2.b), vec2<u32>(1u, global4.x)))));
    var var_1 = arg_2;
    global2 = array<Struct_2, 9>();
    let var_2 = _wgslsmith_mult_u32(abs(_wgslsmith_clamp_u32(arg_2.b, var_0.x, ~var_0.x)), 0u);
    global4 = var_0.yw;
    return global2[_wgslsmith_index_u32(1381u, 9u)];
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.d.d - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.d.c)))), _wgslsmith_f_op_f32(max(global0.d.c, _wgslsmith_f_op_f32(-arg_3.d.d)))));
    global3 = array<bool, 5>();
    let var_1 = countOneBits(vec2<u32>(67319u, 4294967295u));
    let var_2 = arg_3.d;
    global0 = Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.a.x, select(~5505i, -38130i, func_1(vec3<f32>(arg_3.d.d, global0.d.d, -739f), vec4<i32>(var_2.a, var_2.a, arg_3.a.x, var_2.a), global0.d).b.x)), -vec2<i32>(-2875i, -1i)), arg_3.b, ~(-(~(arg_1 & 38292i))), global0.d);
    return ~abs(max(arg_1, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.a, arg_2, u_input.b), vec3<i32>(1i, arg_1, global0.d.a)), vec3<i32>(-24476i, arg_1, -29232i))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32((global0.d.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 38972u, u_input.a, 4294967295u), vec4<u32>(arg_2.d.b, 0u, 53726u, u_input.a)) % 32u)) | firstLeadingBit(min(28415i, global0.a.x)), _wgslsmith_sub_i32(func_3(arg_2.b.x, arg_1.a, 0i, arg_2) | -arg_0.x, arg_1.a)), arg_0.x);
    let var_1 = ~arg_1.b;
    global3 = array<bool, 5>();
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1261f, arg_1.c)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-328f, global0.d.d)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.d.c, arg_2.d.d), vec2<f32>(-1824f, 1684f)))))))));
    global2 = array<Struct_2, 9>();
    return func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(~(~52223u), 10u)] * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.c, arg_2.d.d, var_2.x)))), vec4<i32>(0i, _wgslsmith_sub_i32(27600i, firstLeadingBit(u_input.b)), ~(~global0.c) ^ ~(~(-1i)), arg_1.a ^ arg_2.d.a), arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(~1u, 10u)] - _wgslsmith_div_vec3_f32(vec3<f32>(global0.d.d, 1263f, 1000f), global1[_wgslsmith_index_u32(global4.x, 10u)]))))), abs(~(-vec4<i32>(-2147483647i, global0.a.x, -1i, global0.d.a)) & -vec4<i32>(global0.d.a, global0.a.x, global0.c, global0.d.a)), Struct_1(-55999i, ~42247u, _wgslsmith_f_op_f32(-447f + global0.d.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.c, -370f) - _wgslsmith_f_op_f32(global0.d.c * global0.d.c))));
    global0 = func_2(~reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(global0.c, global0.d.a, 11084i, 2147483647i), min(vec4<i32>(global0.d.a, 2147483647i, 2147483647i, -9129i), vec4<i32>(global0.c, global0.d.a, 26175i, 1i)))), Struct_1(~_wgslsmith_div_i32(u_input.c.x, firstTrailingBit(global0.a.x)), ~(~155733u) & _wgslsmith_add_u32(~u_input.a, global0.d.b ^ global4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.d * _wgslsmith_div_f32(global0.d.d, -325f))), -173f), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4.x, global4.x) << ((6685u << (1u % 32u)) % 32u), 9u)]);
    let var_0 = global2[_wgslsmith_index_u32(0u, 9u)];
    var var_1 = func_2(vec4<i32>(abs(u_input.d), _wgslsmith_mod_i32(_wgslsmith_mod_i32(func_2(vec4<i32>(2147483647i, 2147483647i, var_0.c, var_0.a.x), var_0.d, global2[_wgslsmith_index_u32(38151u, 9u)]).c, firstTrailingBit(u_input.b)), _wgslsmith_clamp_i32(abs(u_input.d), _wgslsmith_clamp_i32(-4500i, -2147483647i, global0.d.a), ~u_input.c.x)), -1i, func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-951f, var_0.d.c, 454f), vec3<f32>(-628f, global0.d.c, global0.d.c)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -15830i, u_input.b, var_0.d.a), vec4<i32>(u_input.c.x, var_0.d.a, 22484i, 4603i)), func_2(-vec4<i32>(1i, 69960i, var_0.d.a, u_input.c.x), global0.d, Struct_2(vec2<i32>(6916i, global0.a.x), var_0.b, var_0.c, Struct_1(var_0.d.a, global4.x, -634f, global0.d.d))).d).d.a), global0.d, func_2(vec4<i32>(~42609i, 17461i, abs(44759i) | _wgslsmith_sub_i32(var_0.a.x, u_input.c.x), -6894i), func_2(vec4<i32>(1i, u_input.d, -var_0.a.x, 1i & var_0.a.x), Struct_1(var_0.a.x, global4.x, _wgslsmith_f_op_f32(-404f + 1028f), _wgslsmith_f_op_f32(-893f + global0.d.c)), Struct_2(firstLeadingBit(vec2<i32>(var_0.c, 2147483647i)), vec2<bool>(true, true), u_input.d, var_0.d)).d, global2[_wgslsmith_index_u32(7658u, 9u)]));
    var_1 = func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.d.c, -168f, 562f))), all(vec3<bool>(var_0.b.x, false, false)))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.d.c)), _wgslsmith_f_op_f32(-var_0.d.c), var_1.d.d)))), vec4<i32>(2147483647i, -u_input.c.x, -6858i, _wgslsmith_dot_vec2_i32(-abs(var_1.a), -u_input.c ^ (vec2<i32>(u_input.c.x, u_input.d) ^ u_input.c))), var_0.d);
    global2 = array<Struct_2, 9>();
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.c, 568f) * vec2<f32>(638f, 1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.c, var_0.d.d), vec2<f32>(-2311f, 1439f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(~firstLeadingBit(vec3<i32>(-6567i, u_input.b, -43135i)), -(~vec3<i32>(var_0.d.a, var_1.a.x, -104276i)), true)), _wgslsmith_mod_vec3_i32(vec3<i32>(select(-29901i, u_input.c.x, false), u_input.b, func_2(vec4<i32>(u_input.d, var_1.c, 0i, 76279i), var_1.d, Struct_2(global0.a, var_0.b, global0.c, Struct_1(1i, var_1.d.b, 1296f, 521f))).c), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-25598i, -19427i, u_input.b)), -vec3<i32>(1146i, u_input.c.x, 1i))) | reverseBits(vec3<i32>(var_0.d.a, -7741i, global0.c)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.c.x, var_0.c, 3069i, u_input.c.x), reverseBits(min(vec4<i32>(var_0.d.a, 40628i, 2147483647i, var_0.d.a), vec4<i32>(-5735i, u_input.b, var_1.c, global0.a.x)))), vec4<i32>(~_wgslsmith_sub_i32(2147483647i, 40638i), -_wgslsmith_dot_vec4_i32(vec4<i32>(31940i, var_1.d.a, var_1.d.a, 34034i), vec4<i32>(0i, -4809i, global0.c, -47687i)), ~var_1.d.a >> (global4.x % 32u), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -2510i, 27919i), vec4<i32>(u_input.b, -12120i, u_input.b, global0.d.a))))), _wgslsmith_f_op_vec2_f32(-var_2), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.d.c));
}

