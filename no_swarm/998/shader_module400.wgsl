struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global2: array<Struct_1, 27>;

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global4: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1103f, -279f) + vec2<f32>(_wgslsmith_f_op_f32(round(-840f)), _wgslsmith_f_op_f32(-global0.b.x)))));
    let var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 27u)];
    global4 = !(!(_wgslsmith_add_u32(19204u, 1u) == var_1.e));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1135f, global0.d.x, var_0.x, var_1.d.x)))) - vec4<f32>(_wgslsmith_f_op_f32(step(var_1.d.x, -1135f)), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(exp2(global0.d.x)), _wgslsmith_f_op_f32(var_0.x - var_1.d.x))), vec4<f32>(var_1.d.x, global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(abs(global0.b.x)), -696f, var_1.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -429f)), var_0.x, _wgslsmith_f_op_f32(floor(2212f)), var_1.d.x))), !global0.c));
    let var_3 = vec2<i32>(min(~53642i, 2147483647i), ~(-1i >> (var_1.e % 32u)));
    return abs(select(reverseBits(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(8961u, 4294967295u, global0.e)), ~vec3<u32>(global0.e, 10991u, arg_0))), min(reverseBits(~vec3<u32>(13844u, 45840u, var_1.e)), vec3<u32>(26600u, global0.e, 1u) ^ vec3<u32>(u_input.a, arg_0, 1u)), false));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(~_wgslsmith_div_u32(u_input.a, global0.e))), 27u)], global2[_wgslsmith_index_u32(~(~global0.e), 27u)], global2[_wgslsmith_index_u32(1u, 27u)]);
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global0.d * vec3<f32>(1183f, var_0.c.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-357f - global0.d.x) * var_0.c.d.x)))));
    var var_3 = false;
    let var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(0u, ~35871u & ~global0.e, global0.e) | _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.c.e, global0.e), vec3<u32>(4294967295u, 13059u, u_input.a)), vec3<u32>(global0.e, 1u, 11567u) << (vec3<u32>(9864u, var_0.a.e, 90596u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(vec3<u32>(28173u, 25598u, 7104u) ^ vec3<u32>(63157u, global0.e, 1u), func_3(global0.e))), ~vec3<u32>(abs(max(var_1.c.e, 114273u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u)), _wgslsmith_dot_vec2_u32(min(vec2<u32>(var_1.b.e, 1u), vec2<u32>(4294967295u, var_1.b.e)), reverseBits(vec2<u32>(19244u, var_1.c.e)))));
    return Struct_2(Struct_1(!(!global0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1096f, -1827f), var_1.b.d.zy, true)) + var_1.c.b)), var_1.b.a, var_1.b.d, ~_wgslsmith_mult_u32(u_input.a, 0u)), var_1.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: f32) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(1u, 27u)];
    return false;
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 27>();
    global3 = vec4<bool>(any(!global1[_wgslsmith_index_u32(1u, 13u)]), all(vec3<bool>(func_4(Struct_2(global2[_wgslsmith_index_u32(98403u, 27u)], Struct_1(global0.a, vec2<f32>(global0.d.x, 461f), global0.a, vec3<f32>(702f, global0.b.x, -699f), 4294967295u)), func_2(vec3<bool>(global0.c.x, global3.x, true)), select(vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(-1i, -22811i, 1i), global1[_wgslsmith_index_u32(1u, 13u)]), global0.b.x), global0.c.x, false)), !all(global3.yxy), true);
    global3 = select(vec4<bool>(all(vec3<bool>(true, global3.x, false)) & global0.c.x, true, global0.a.x, true), select(select(vec4<bool>(true, false, true, global3.x), global0.c, vec4<bool>(true, true, global0.c.x, true)), vec4<bool>(all(global1[_wgslsmith_index_u32(15706u, 13u)]), false, any(select(vec3<bool>(true, global0.c.x, false), global1[_wgslsmith_index_u32(global0.e, 13u)], global0.a.x)), func_2(func_2(global1[_wgslsmith_index_u32(0u, 13u)]).a.a.wxy).a.c.x), !vec4<bool>(true, true, false, global0.c.x)), select(_wgslsmith_f_op_f32(f32(-1f) * -1207f) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -361f))), any(global0.c) && false, 30933u >= (u_input.a ^ u_input.a)));
    global0 = global2[_wgslsmith_index_u32(4294967295u, 27u)];
    global4 = true;
    return Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(global0.d.xy - vec2<f32>(_wgslsmith_div_f32(global0.d.x, func_2(vec3<bool>(global3.x, false, false)).a.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d.x + -579f), -293f))), select(global0.a, vec4<bool>(!global3.x || global0.c.x, select(global3.x, !global0.c.x, true), !(!global3.x), !global0.a.x), vec4<bool>(true, !(u_input.a > 55955u), !global0.c.x | !global0.c.x, all(global3.yy))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -598f), -1421f) * vec3<f32>(_wgslsmith_f_op_f32(-1364f - -820f), _wgslsmith_f_op_f32(1129f * global0.d.x), 838f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.d.x, -295f, 257f))), _wgslsmith_f_op_vec3_f32(-global0.d)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global0.d - global0.d), vec3<f32>(-1000f, global0.d.x, -2600f)))))), firstTrailingBit(28086u));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec3<f32> {
    global3 = func_2(vec3<bool>(false, select(func_4(func_2(vec3<bool>(global0.c.x, true, arg_1.b.c.x)), func_2(vec3<bool>(arg_0.a.a.x, arg_1.a.a.x, arg_1.b.c.x)), ~vec3<i32>(31909i, 0i, -47086i), 1563f), arg_1.a.a.x, 1f <= arg_1.b.b.x), true)).b.a;
    var var_0 = func_1();
    global0 = func_2(!vec3<bool>(true, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -4640i), vec2<i32>(0i, 35427i)) <= (i32(-1i) * -2147483647i), global3.x)).b;
    global4 = (func_2(vec3<bool>(var_0.d.x != -887f, all(global3.yx), global0.a.x)).a.e >= _wgslsmith_mult_u32(global0.e, ~min(1u, 1u))) | !any(vec2<bool>(true, false));
    var var_1 = vec3<u32>(_wgslsmith_add_u32(func_2(!var_0.a.xyx).a.e, arg_0.b.e), arg_0.b.e, min(~1u, 1u)) | ((_wgslsmith_mult_vec3_u32(vec3<u32>(global0.e, var_0.e, arg_1.b.e), vec3<u32>(4294967295u, 33320u, global0.e)) ^ (vec3<u32>(var_0.e, var_0.e, 12813u) ^ (vec3<u32>(u_input.a, 0u, 4294967295u) << (vec3<u32>(47473u, 4294967295u, u_input.a) % vec3<u32>(32u))))) >> (vec3<u32>(u_input.a, ~func_3(global0.e).x, u_input.a) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(-global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 27>();
    var var_0 = Struct_2(Struct_1(global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0.d.xy)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.d.zy + vec2<f32>(1000f, global0.b.x))))), !select(vec4<bool>(true, global0.a.x, global0.c.x, global3.x), global0.c, true), _wgslsmith_f_op_vec3_f32(func_5(Struct_2(func_1(), Struct_1(vec4<bool>(true, false, true, global0.c.x), global0.b, vec4<bool>(true, global0.a.x, global0.c.x, false), vec3<f32>(485f, global0.d.x, 1111f), global0.e)), func_2(select(global1[_wgslsmith_index_u32(global0.e, 13u)], global3.ywx, vec3<bool>(global0.c.x, true, true))))), _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 3240u, 0u), vec3<u32>(17800u, global0.e, global0.e)), firstTrailingBit(~vec3<u32>(global0.e, 1u, u_input.a)))), func_1());
    global2 = array<Struct_1, 27>();
    var var_1 = vec3<i32>(14021i, 1i, 2147483647i) << (~_wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.a, 0u, global0.e) ^ vec3<u32>(4294967295u, 4724u, 22019u), vec3<u32>(global0.e, var_0.b.e, 41164u) >> (vec3<u32>(global0.e, u_input.a, global0.e) % vec3<u32>(32u)), vec3<bool>(var_0.b.a.x, false, global0.a.x)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.e, var_0.b.e, u_input.a), vec3<u32>(4294967295u, 64595u, global0.e))) % vec3<u32>(32u));
    let var_2 = -46525i;
    var var_3 = abs(firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(global0.e, u_input.a), ~1u, min(var_0.b.e, u_input.a))));
    global4 = all(global3.zz);
    let x = u_input.a;
    s_output = StorageBuffer(global0.e, vec2<u32>(~var_3.x, var_3.x) ^ vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.e, 1u, u_input.a, 3471u) & vec4<u32>(var_0.a.e, 0u, var_3.x, u_input.a), vec4<u32>(47435u, u_input.a, 21086u, 1u) ^ vec4<u32>(10493u, var_3.x, u_input.a, 4294967295u)), ~global0.e), _wgslsmith_div_vec2_i32(var_1.zx, select(abs(var_1.yy) | -var_1.xz, ~var_1.xy, false)), i32(-1i) * -1i, min(u_input.a, 9829u));
}

