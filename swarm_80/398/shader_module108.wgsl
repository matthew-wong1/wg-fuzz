struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27>;

var<private> global1: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 6692u), vec2<u32>(1u, 57163u), vec2<u32>(4294967295u, 56285u), vec2<u32>(1u, 1u), vec2<u32>(0u, 77019u), vec2<u32>(53626u, 0u), vec2<u32>(0u, 0u), vec2<u32>(1u, 101984u), vec2<u32>(46845u, 15132u), vec2<u32>(0u, 1u), vec2<u32>(16198u, 13837u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 8532u), vec2<u32>(47804u, 5770u), vec2<u32>(13246u, 4931u), vec2<u32>(67214u, 0u), vec2<u32>(27458u, 19766u), vec2<u32>(58776u, 12036u), vec2<u32>(25526u, 117337u), vec2<u32>(30107u, 0u), vec2<u32>(4294967295u, 335u), vec2<u32>(15619u, 38690u), vec2<u32>(7307u, 1871u), vec2<u32>(32827u, 4294967295u));

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec4<bool> {
    var var_0 = select(!select(select(select(vec4<bool>(global2.x, true, false, global2.x), vec4<bool>(global2.x, false, true, true), global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), !global0[_wgslsmith_index_u32(36613u, 27u)], !vec4<bool>(global2.x, global2.x, true, global2.x)), vec4<bool>(global2.x, global2.x, all(vec4<bool>(global2.x, true, global2.x, global2.x)), true), global0[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(u_input.a.x, 49725u), u_input.a.x >> (1u % 32u)), 27u)]), !vec4<bool>(u_input.b.x == u_input.b.x, true, !(!global2.x), global2.x), !global2.x && all(!global0[_wgslsmith_index_u32(~4294967295u, 27u)]));
    let var_1 = var_0.wzx;
    let var_2 = Struct_3(Struct_2(!(!global2.x), var_0.ww, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, 501f))), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x ^ 1927u))), Struct_2(any(select(vec4<bool>(false, var_0.x, global2.x, var_0.x), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(52969u, u_input.a.x), 27u)], 17017u < u_input.a.x)), vec2<bool>(!(!var_0.x), var_1.x), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + -1000f))), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 67940u, u_input.a.x, 33378u), vec4<u32>(54127u, u_input.a.x, 0u, u_input.a.x))))), (u_input.a.x <= 1u) && var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -236f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 975f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-410f))))));
    let var_3 = !select(vec4<bool>(false, !var_2.a.b.x, true, !(10091u >= u_input.a.x)), select(select(vec4<bool>(false, true, global2.x, var_2.c), select(vec4<bool>(false, global2.x, true, true), global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(var_2.b.c.b, 27u)]), true), vec4<bool>(var_0.x & true, any(var_0.xy), !var_2.b.b.x, true), vec4<bool>(any(var_2.b.b), true, true && var_1.x, !global2.x)), select(!var_0.x && any(vec3<bool>(var_2.b.b.x, true, true)), true, _wgslsmith_div_f32(1801f, var_2.b.c.a) <= var_2.d));
    var var_4 = u_input.b;
    return select(select(vec4<bool>(any(vec3<bool>(var_3.x, true, true)), true, all(global2.zw) | (var_0.x && global2.x), any(vec4<bool>(var_1.x, var_2.c, var_0.x, var_1.x))), select(var_3, var_3, vec4<bool>(var_3.x, true, global2.x && var_0.x, all(var_0.yyz))), true), !select(!(!vec4<bool>(true, var_3.x, var_0.x, var_1.x)), !(!vec4<bool>(var_1.x, false, var_1.x, false)), any(vec4<bool>(var_1.x, var_2.a.b.x, false, global2.x))), !var_2.b.a);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> f32 {
    var var_0 = !select(vec4<bool>(any(vec2<bool>(arg_1, arg_1)), !arg_1, any(vec2<bool>(false, arg_1)), false), !select(func_3(), select(global0[_wgslsmith_index_u32(arg_0, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], global2.x), global2.x), func_3());
    var_0 = !func_3();
    global2 = select(global0[_wgslsmith_index_u32(arg_0, 27u)], !vec4<bool>(!(arg_0 > arg_0), true, var_0.x, var_0.x), all(var_0.zw));
    let var_1 = Struct_1(arg_2.x, ~34530u);
    let var_2 = Struct_5(Struct_3(Struct_2(global2.x, !vec2<bool>(var_0.x, false), var_1), Struct_2(var_0.x, vec2<bool>(true, arg_1), var_1), arg_0 <= (41467u ^ var_1.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1085f)))))));
    return _wgslsmith_f_op_f32(abs(-354f));
}

fn func_1(arg_0: bool) -> vec2<bool> {
    global2 = global0[_wgslsmith_index_u32(u_input.a.x, 27u)];
    global2 = global0[_wgslsmith_index_u32(u_input.a.x, 27u)];
    let var_0 = _wgslsmith_f_op_f32(func_2(u_input.a.x, !global2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-935f, -1000f, 478f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(372f, -1000f, -337f), vec3<f32>(766f, 646f, 766f), vec3<bool>(arg_0, global2.x, true)))), vec3<f32>(_wgslsmith_div_f32(-324f, -751f), _wgslsmith_f_op_f32(f32(-1f) * -652f), -425f), true)))));
    var var_1 = Struct_2(true, vec2<bool>(false, true), Struct_1(var_0, _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 4293u), vec3<u32>(u_input.a.x, 2249u, u_input.a.x)), _wgslsmith_div_u32(24892u, u_input.a.x), ~4294967295u), _wgslsmith_mult_u32(0u, countOneBits(u_input.a.x)))));
    var var_2 = -u_input.b.x;
    return !func_3().zw;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: i32) -> u32 {
    var var_0 = Struct_2(_wgslsmith_mod_u32(u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.c.b, 4294967295u, arg_0.b.c.b), vec3<u32>(arg_0.b.c.b, arg_0.a.c.b, u_input.a.x))) >= u_input.a.x, arg_0.b.b, arg_0.a.c);
    var_0 = Struct_2(var_0.a, select(arg_1.xz, select(select(arg_0.b.b, func_1(true), true || var_0.b.x), arg_1.yy, var_0.a), select(select(vec2<bool>(arg_0.a.b.x, true), vec2<bool>(true, false), vec2<bool>(var_0.a, true)), global2.zx, vec2<bool>(false, arg_0.c & true))), arg_0.a.c);
    var var_1 = u_input.a & global1[_wgslsmith_index_u32(var_0.c.b, 27u)];
    let var_2 = Struct_2(any(var_0.b), select(select(vec2<bool>(true, true), arg_0.b.b, arg_1.yx), !vec2<bool>(any(global2.wx), 16023u > var_1.x), vec2<bool>(global2.x, true)), arg_0.b.c);
    var var_3 = ~select(min(~vec2<u32>(4294967295u, var_2.c.b), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(6501u, 27u)], vec2<u32>(var_0.c.b, var_2.c.b)), ~vec2<u32>(var_1.x, 1u))), u_input.a, !arg_1.xz);
    return var_2.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(Struct_2(!global2.x, func_1(global2.x), Struct_1(_wgslsmith_div_f32(323f, 2032f), ~30580u)), Struct_2(true, vec2<bool>(all(global2.wy), global2.x), Struct_1(_wgslsmith_f_op_f32(-915f * -122f), 0u)), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(842f - _wgslsmith_f_op_f32(f32(-1f) * -166f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1327f, -874f)))), select(vec3<bool>(false, true, true), !(!vec3<bool>(true, global2.x, global2.x)), !(!global2.x)), u_input.b.x);
    var var_1 = Struct_2(global2.x, global2.xy, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(-110f))), 1f), 41473u));
    let var_2 = Struct_5(Struct_3(Struct_2(true, var_1.b, var_1.c), Struct_2(true, var_1.b, Struct_1(_wgslsmith_f_op_f32(-var_1.c.a), 26787u)), var_1.c.a < 137f, var_1.c.a));
    global1 = array<vec2<u32>, 27>();
    let var_3 = false;
    let var_4 = _wgslsmith_div_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(151414u, ~var_2.a.b.c.b, 33792u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 13669u, 63206u) & vec3<u32>(var_1.c.b, var_2.a.b.c.b, 40396u), countOneBits(vec3<u32>(var_2.a.a.c.b, var_1.c.b, var_2.a.b.c.b)))), select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_2.a.a.c.b) >> (vec3<u32>(0u, 82666u, var_1.c.b) % vec3<u32>(32u)), vec3<u32>(4294967295u, 1u, 661u) << (vec3<u32>(9751u, u_input.a.x, var_1.c.b) % vec3<u32>(32u))), abs(firstLeadingBit(vec3<u32>(var_1.c.b, 51150u, 21638u))), vec3<bool>(select(var_2.a.a.a, global2.x, var_3), func_3().x, true)), any(!global2.wyw) & var_1.a), vec3<u32>(~var_1.c.b, 4294967295u, u_input.a.x));
    var var_5 = firstTrailingBit(abs(countOneBits(var_4))) >> (~select(var_4 >> (var_4 % vec3<u32>(32u)), var_4, false) % vec3<u32>(32u));
    var var_6 = var_2.a.b;
    let var_7 = vec4<u32>(max(var_2.a.a.c.b, ~(65904u & _wgslsmith_dot_vec3_u32(vec3<u32>(38745u, var_1.c.b, 4294967295u), var_4))), _wgslsmith_div_u32(4294967295u, abs(_wgslsmith_add_u32(4294967295u, u_input.a.x)) << (1u % 32u)), firstTrailingBit(0u), ~var_1.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(-351f, -1129f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(165f, -685f) - vec2<f32>(586f, -2410f))))));
}

