struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 1u, 0u);

var<private> global1: vec4<u32> = vec4<u32>(26676u, 17807u, 1u, 4294967295u);

var<private> global2: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true));

var<private> global3: array<bool, 2> = array<bool, 2>(false, false);

var<private> global4: u32 = 7538u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> f32 {
    let var_0 = reverseBits(_wgslsmith_dot_vec2_u32(global0.yy << (~vec2<u32>(global1.x, 1u) % vec2<u32>(32u)), global1.wz ^ (select(global1.ww, vec2<u32>(global1.x, 4294967295u), vec2<bool>(true, true)) | firstLeadingBit(u_input.b))));
    global0 = vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(global0.x), abs(global0.x ^ global1.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global0.xx | u_input.b, min(firstLeadingBit(vec2<u32>(arg_1.c.x, 4798u)), global1.xy)), 4294967295u), _wgslsmith_mod_u32(~max(~1u, 32202u), 40535u));
    global0 = max(~u_input.d << (~(~vec3<u32>(6718u, var_0, 119717u)) % vec3<u32>(32u)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(15593u, 1u, 20100u), ~vec3<u32>(4294967295u, global0.x, arg_1.c.x)), 38340u, 14026u));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.d, _wgslsmith_f_op_vec2_f32(-arg_1.d), (57513u != global1.x) || all(vec3<bool>(false, global3[_wgslsmith_index_u32(70835u, 2u)], global3[_wgslsmith_index_u32(19651u, 2u)])))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.e.d, _wgslsmith_f_op_f32(-arg_1.d.x)))))));
    var var_2 = _wgslsmith_mult_vec4_u32(arg_1.b.a.b, firstLeadingBit(arg_1.c));
    return _wgslsmith_f_op_f32(-271f + 1189f);
}

fn func_2() -> i32 {
    let var_0 = -vec2<i32>(_wgslsmith_clamp_i32(10409i, u_input.c.x, 0i) ^ countOneBits(u_input.e.x), u_input.c.x) << (vec2<u32>(min(4294967295u, 23514u), 0u) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(661f, -472f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false, Struct_3(0i, Struct_2(Struct_1(0u, vec4<u32>(720u, u_input.d.x, global0.x, 37869u), global3[_wgslsmith_index_u32(u_input.d.x, 2u)], 1059f)), vec4<u32>(global0.x, 57924u, global1.x, 0u), vec2<f32>(-721f, 1000f), Struct_1(29564u, vec4<u32>(55330u, 1988u, 30758u, u_input.a), true, -491f)))) * _wgslsmith_f_op_f32(2422f * 1245f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) * -148f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-873f, 1185f, -407f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-596f, 1345f, -756f) - vec3<f32>(1469f, -1046f, 265f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-223f + 1683f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 285f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-511f + -582f)))))), select(select(!select(vec3<bool>(global3[_wgslsmith_index_u32(66607u, 2u)], global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(global1.x, 2u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.d.x, 2u)], global3[_wgslsmith_index_u32(u_input.d.x, 2u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 2u)], false)), select(vec3<bool>(global3[_wgslsmith_index_u32(global0.x, 2u)], false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.d.x, 2u)], true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 2u)], global3[_wgslsmith_index_u32(global0.x, 2u)], false)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 0u), 2u)]), vec3<bool>(true, true, true)), vec3<bool>(countOneBits(50465u) <= (4294967295u >> (global1.x % 32u)), true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 1u, 1725u, 44065u), countOneBits(vec4<u32>(u_input.d.x, 1u, 4294967295u, 4294967295u))), 2u)]), vec3<bool>(true, any(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 2u)], global3[_wgslsmith_index_u32(global1.x, 2u)], true), vec3<bool>(true, global3[_wgslsmith_index_u32(global0.x, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)]), true)), !global3[_wgslsmith_index_u32(0u, 2u)]))));
    global1 = vec4<u32>(abs(firstTrailingBit(~1u)), ~4294967295u, 1u << (max(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), 81898u) % 32u), _wgslsmith_clamp_u32(global1.x, u_input.b.x, select(4294967295u, select(global0.x, ~global1.x, global3[_wgslsmith_index_u32(57610u >> (global0.x % 32u), 2u)]), !any(vec3<bool>(global3[_wgslsmith_index_u32(46387u, 2u)], false, true)))));
    var var_2 = Struct_2(Struct_1(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 7003u, global0.x) & vec3<u32>(0u, 4294967295u, 55830u), ~vec3<u32>(global0.x, global1.x, u_input.a))), _wgslsmith_div_vec4_u32(~max(vec4<u32>(global1.x, global1.x, global1.x, 1u), vec4<u32>(4294967295u, global0.x, 30506u, global0.x)), vec4<u32>(1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(46293u, 1u, 16030u), global1.zww), 4294967295u)), true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), var_1.x))));
    global2 = array<vec4<bool>, 26>();
    return u_input.c.x;
}

fn func_1() -> Struct_1 {
    let var_0 = -vec3<i32>(firstTrailingBit(u_input.c.x), func_2(), u_input.c.x >> (_wgslsmith_add_u32(global1.x, abs(102749u)) % 32u));
    let var_1 = Struct_1(u_input.d.x, vec4<u32>(1u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global0.x), vec2<u32>(8146u, global1.x)) >> (global0.x % 32u)), firstLeadingBit(global1.x), _wgslsmith_mod_u32(global1.x & ~12068u, 21961u)), true, _wgslsmith_f_op_f32(f32(-1f) * -456f));
    global2 = array<vec4<bool>, 26>();
    global1 = var_1.b & vec4<u32>(min(countOneBits(0u & u_input.a), _wgslsmith_div_u32(~global1.x, global0.x)), ~0u, ~4294967295u, firstLeadingBit(_wgslsmith_mod_u32(global1.x, firstLeadingBit(u_input.b.x))));
    let var_2 = global3[_wgslsmith_index_u32(max(18803u, 0u), 2u)];
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(arg_0.d + 659f) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_0.c, Struct_3(1i, Struct_2(Struct_1(4294967295u, arg_1.a.b, false, -3069f)), arg_0.b, vec2<f32>(-1563f, arg_1.a.d), Struct_1(13225u, arg_1.a.b, global3[_wgslsmith_index_u32(global0.x, 2u)], arg_0.d)))), 1690f)), arg_1.a.d >= _wgslsmith_f_op_f32(round(-1324f)), arg_0.c);
    var var_1 = !arg_0.c;
    let var_2 = Struct_1(global0.x, ~arg_1.a.b, !global3[_wgslsmith_index_u32(~(~(4294967295u | arg_1.a.b.x)), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(974f, -1182f), arg_1.a.d))));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.d, var_2.d, arg_1.a.d)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.d, arg_0.d, arg_1.a.d))))) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d, _wgslsmith_f_op_f32(arg_1.a.d - arg_0.d), -751f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(533f, arg_0.d, arg_0.d) + vec3<f32>(var_2.d, -171f, 1303f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.d, 987f, arg_1.a.d), vec3<f32>(-682f, arg_0.d, arg_0.d)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(671f, 2109f, var_2.d), vec3<f32>(var_2.d, -344f, 302f)))))));
    let var_4 = var_0;
    return Struct_1(min(select(1u, 0u, all(var_0.xx)) | ~min(arg_0.b.x, global0.x), var_2.b.x), vec4<u32>(firstTrailingBit(~(~22639u)), ~(~56054u) << (_wgslsmith_mult_u32(u_input.d.x, u_input.b.x) % 32u), ~global1.x, 4294967295u ^ arg_0.b.x), any(var_0.yy), -853f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -719f;
    global0 = _wgslsmith_add_vec3_u32(~vec3<u32>(68795u ^ u_input.d.x, _wgslsmith_sub_u32(global0.x, 0u), global0.x) << (_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(38731u, u_input.a), _wgslsmith_mod_u32(99848u, 34582u), _wgslsmith_div_u32(u_input.a, global1.x)), vec3<u32>(~1u, ~global0.x, 36761u)) % vec3<u32>(32u)), vec3<u32>(countOneBits(~_wgslsmith_clamp_u32(u_input.a, u_input.d.x, global0.x)), ~42853u, _wgslsmith_dot_vec2_u32(global0.yz, select(vec2<u32>(4294967295u, global0.x), global1.xw >> (vec2<u32>(global1.x, u_input.d.x) % vec2<u32>(32u)), select(vec2<bool>(false, false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 2u)], global3[_wgslsmith_index_u32(u_input.d.x, 2u)]), global3[_wgslsmith_index_u32(global1.x, 2u)])))));
    var var_1 = Struct_2(func_4(func_1(), Struct_2(func_1())));
    let var_2 = !(!select(vec4<bool>(!var_1.a.c, var_1.a.c, var_1.a.c, true), select(vec4<bool>(var_1.a.c, false, var_1.a.c, false), !global2[_wgslsmith_index_u32(var_1.a.b.x, 26u)], !var_1.a.c), (global3[_wgslsmith_index_u32(21003u, 2u)] == false) & all(vec4<bool>(var_1.a.c, true, var_1.a.c, global3[_wgslsmith_index_u32(var_1.a.b.x, 2u)]))));
    let var_3 = -1i;
    var var_4 = Struct_2(func_4(var_1.a, Struct_2(func_1())));
    var var_5 = -1040f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.wxx);
}

