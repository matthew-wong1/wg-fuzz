struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_3,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: array<vec3<f32>, 9>;

var<private> global2: Struct_4 = Struct_4(Struct_3(vec4<f32>(992f, 1000f, -672f, 104f), Struct_2(Struct_1(1i, 1u, 1u, 6046u)), true), vec2<bool>(true, false), Struct_3(vec4<f32>(2081f, 1000f, 585f, -620f), Struct_2(Struct_1(50994i, 1u, 17173u, 47099u)), false), vec4<i32>(-42786i, 1i, 0i, 23700i), Struct_1(66180i, 97111u, 84605u, 4294967295u));

var<private> global3: array<bool, 14> = array<bool, 14>(false, false, false, false, false, true, false, true, true, false, false, false, false, true);

var<private> global4: vec3<f32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.c.a.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1787f)))))));
    var var_1 = arg_0.e.d;
    var var_2 = abs(firstTrailingBit(arg_1.wy));
    var var_3 = Struct_5(arg_2.c.b, ~arg_1, vec4<u32>(59156u, _wgslsmith_clamp_u32(1u, 33068u, ~7542u) << (0u % 32u), select(select(abs(22529u), abs(0u), global3[_wgslsmith_index_u32(arg_2.e.d, 14u)]), ~_wgslsmith_dot_vec2_u32(arg_1.yz, vec2<u32>(15011u, arg_1.x)), _wgslsmith_f_op_f32(round(global4.x)) != _wgslsmith_f_op_f32(step(arg_0.a.a.x, arg_2.c.a.x))), ~(~min(4294967295u, 9868u))), _wgslsmith_f_op_vec3_f32(arg_0.a.a.wzx - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a.a.yyw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.e, 23u)], -1153f, global0[_wgslsmith_index_u32(arg_0.a.b.a.c, 23u)]))))), _wgslsmith_f_op_f32(sign(-1000f)));
    var_3 = Struct_5(Struct_2(arg_0.a.b.a), ~arg_1, arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1199f, -547f, _wgslsmith_f_op_f32(-arg_2.c.a.x))) * arg_2.a.a.xyz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1373f))), _wgslsmith_f_op_f32(-arg_2.c.a.x))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(trunc(-1329f)))))));
    return any(select(!vec2<bool>(false, arg_0.a.c), select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.e, 14u)] | arg_2.b.x, arg_0.b.x), vec2<bool>(any(vec2<bool>(arg_2.a.c, false)), global3[_wgslsmith_index_u32(select(0u, 40877u, arg_2.c.c), 14u)]), true), any(!select(vec3<bool>(true, false, global2.b.x), vec3<bool>(arg_0.a.c, arg_2.c.c, true), vec3<bool>(false, arg_2.a.c, arg_0.b.x)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec4<f32>) -> u32 {
    global2 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.a.x, -473f, global2.c.a.x, global2.c.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, global0[_wgslsmith_index_u32(arg_0.b.a.b, 23u)], -1164f, 328f))), Struct_2(global2.c.b.a), false || global2.b.x), select(global2.b, select(select(select(vec2<bool>(global3[_wgslsmith_index_u32(31381u, 14u)], false), global2.b, global2.b), select(global2.b, global2.b, global3[_wgslsmith_index_u32(8540u, 14u)]), func_3(Struct_4(Struct_3(vec4<f32>(-1886f, arg_2.x, arg_0.a.x, -125f), arg_0.b, global2.c.c), vec2<bool>(true, false), Struct_3(vec4<f32>(global0[_wgslsmith_index_u32(8142u, 23u)], arg_0.a.x, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(82088u, 23u)]), Struct_2(global2.a.b.a), global2.c.c), global2.d, Struct_1(10722i, 11545u, 48467u, 23961u)), vec4<u32>(1u, 16079u, 1u, 0u), Struct_4(arg_0, global2.b, arg_0, arg_1, Struct_1(arg_0.b.a.a, u_input.e, 79910u, 1u)), u_input.c)), select(global2.b, vec2<bool>(global3[_wgslsmith_index_u32(115823u, 14u)], global2.a.c), global2.b), true), global3[_wgslsmith_index_u32(firstLeadingBit(~1u), 14u)]), global2.a, global2.d, arg_0.b.a);
    global0 = array<f32, 23>();
    var var_0 = Struct_5(Struct_2(arg_0.b.a), vec4<u32>(~arg_0.b.a.b, min(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.b.a.c, arg_0.b.a.d), vec3<u32>(110118u, 4294967295u, 1u))), ~13722u), 1u, global2.e.c), ~min(min(vec4<u32>(u_input.e, 51414u, 4294967295u, u_input.e), vec4<u32>(u_input.e, 1u, 25461u, 5092u)), firstTrailingBit(vec4<u32>(4294967295u, 42627u, u_input.e, 4294967295u))) >> (vec4<u32>(~(~0u), ~abs(global2.a.b.a.c), min(global2.e.b, 4294967295u) << ((u_input.e | 33914u) % 32u), arg_0.b.a.c) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.x, 1239f, _wgslsmith_f_op_f32(-1781f - _wgslsmith_f_op_f32(341f + global0[_wgslsmith_index_u32(u_input.e, 23u)]))))), 1185f);
    global0 = array<f32, 23>();
    let var_1 = select(arg_1.ww, _wgslsmith_mult_vec2_i32(vec2<i32>(0i, ~arg_0.b.a.a << ((global2.a.b.a.b & u_input.e) % 32u)), -u_input.a.zy), select(global2.b, vec2<bool>(_wgslsmith_f_op_f32(select(arg_2.x, global4.x, true)) < arg_2.x, !arg_0.c), global2.b));
    return 0u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: f32, arg_3: Struct_5) -> vec3<f32> {
    global4 = vec3<f32>(_wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x)))), _wgslsmith_f_op_f32(floor(798f)), _wgslsmith_f_op_f32(min(780f, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(36306u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, u_input.e, arg_1.a.a.c, arg_3.c.x) >> (arg_1.c % vec4<u32>(32u)), arg_1.b << (vec4<u32>(22272u, global2.a.b.a.d, 47173u, 29363u) % vec4<u32>(32u)))), 23u)])));
    var var_0 = vec3<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e, 1u, 13792u), _wgslsmith_mod_vec4_u32(~arg_1.c, vec4<u32>(0u, 9497u, 0u, arg_3.a.a.d)))), _wgslsmith_mult_u32(u_input.e, 34290u), arg_0.b);
    var var_1 = Struct_4(global2.a, !vec2<bool>(~112015u >= _wgslsmith_add_u32(arg_0.d, 4294967295u), false), Struct_3(vec4<f32>(1280f, -1044f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.x))), arg_3.d.x), Struct_2(Struct_1(select(-1i, -14655i, true), _wgslsmith_add_u32(arg_1.a.a.b, 71701u), var_0.x, abs(0u))), false), u_input.c, arg_3.a.a);
    let var_2 = ~(-26421i) ^ var_1.c.b.a.a;
    let var_3 = Struct_2(Struct_1(firstLeadingBit(max(-u_input.a.x, ~2740i)), min(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_1.c.b.a.b, 15665u), vec3<u32>(arg_0.c, 5751u, 30468u))), arg_1.b.x), arg_3.c.x, _wgslsmith_add_u32(_wgslsmith_div_u32(abs(arg_3.a.a.b), arg_1.b.x), ~4294967295u)));
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.x))), 352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.x, var_1.c.a.x))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_5) -> Struct_3 {
    let var_0 = vec3<f32>(-569f, -189f, _wgslsmith_f_op_f32(select(-1345f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~arg_1.b.a.d, 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1659f, global4.x, true)))), !global3[_wgslsmith_index_u32(0u, 14u)])));
    var var_1 = 34157i;
    let var_2 = arg_3.a;
    var_1 = _wgslsmith_mult_i32(-42331i, _wgslsmith_clamp_i32(min(-1i, ~(global2.c.b.a.a ^ 2147483647i)), countOneBits(1i ^ (-1i << (var_2.a.c % 32u))), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_2.a.a, -2147483647i, global2.a.b.a.a), vec4<i32>(arg_3.a.a.a, -43550i, u_input.b.x, var_2.a.a)))));
    var var_3 = Struct_5(Struct_2(Struct_1(-39102i, arg_1.b.a.b, arg_2.a.b, 1u)), ~min(arg_3.c, vec4<u32>(reverseBits(1u), ~0u, 1u, arg_1.b.a.b)), vec4<u32>(~62236u, _wgslsmith_add_u32(arg_3.a.a.c, ~abs(22444u)), 15675u, ~113172u), arg_1.a.wwx, _wgslsmith_f_op_f32(exp2(var_0.x)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global2.c.a - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.x, var_0.x, arg_1.a.x, -1343f)))))), global2.c.b, select(all(!vec3<bool>(true, global3[_wgslsmith_index_u32(global2.c.b.a.d, 14u)], false)), global3[_wgslsmith_index_u32(var_2.a.d << (var_3.c.x % 32u), 14u)], !all(vec3<bool>(false, false, false))));
}

fn func_1() -> u32 {
    var var_0 = ~0i;
    let var_1 = Struct_4(func_5(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(2147483647i, ~0u, _wgslsmith_mult_u32(1u, global2.c.b.a.c), func_2(global2.a, u_input.c, vec4<f32>(-2647f, 1745f, global4.x, 112f))), Struct_5(Struct_2(Struct_1(global2.a.b.a.a, global2.a.b.a.d, global2.c.b.a.d, 10869u)), vec4<u32>(56725u, global2.a.b.a.c, global2.e.c, global2.a.b.a.d) | vec4<u32>(20506u, 18986u, u_input.e, 4294967295u), countOneBits(vec4<u32>(global2.a.b.a.d, 1u, 4294967295u, 12580u)), global2.c.a.wyx, global2.a.a.x), _wgslsmith_f_op_f32(min(-154f, _wgslsmith_div_f32(global2.c.a.x, 736f))), Struct_5(global2.c.b, ~vec4<u32>(u_input.e, global2.e.b, global2.e.d, 4294967295u), ~vec4<u32>(u_input.e, u_input.e, 17336u, 60308u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], -875f, -304f), global2.c.a.wwz)), -1112f))), global2.a, global2.c.b, Struct_5(Struct_2(global2.c.b.a), ~(vec4<u32>(1u, u_input.e, u_input.e, u_input.e) ^ vec4<u32>(u_input.e, 0u, global2.a.b.a.b, u_input.e)), vec4<u32>(~84306u, u_input.e, 1u, 67191u), global2.c.a.wwx, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.a.b.a.c, 9030u), 23u)] + 977f))), select(select(vec2<bool>(select(global2.a.c, global3[_wgslsmith_index_u32(global2.e.b, 14u)], false), global3[_wgslsmith_index_u32(global2.e.d, 14u)]), !(!vec2<bool>(global2.c.c, global3[_wgslsmith_index_u32(u_input.e, 14u)])), global2.b), vec2<bool>(global2.a.c, global2.b.x), true), global2.a, -(~global2.d), global2.a.b.a);
    var var_2 = global2.c;
    global1 = array<vec3<f32>, 9>();
    let var_3 = 1374f;
    return _wgslsmith_dot_vec4_u32(abs(select(~countOneBits(vec4<u32>(global2.a.b.a.c, 4294967295u, 4294967295u, 1u)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_2.b.a.c, 12185u, var_2.b.a.d, 0u), vec4<u32>(4294967295u, global2.e.b, 1u, 0u)), select(select(vec4<bool>(var_2.c, global2.c.c, false, true), vec4<bool>(var_2.c, false, true, var_1.c.c), global3[_wgslsmith_index_u32(var_2.b.a.d, 14u)]), !vec4<bool>(global3[_wgslsmith_index_u32(var_1.a.b.a.b, 14u)], var_2.c, var_2.c, false), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 14u)], true, global3[_wgslsmith_index_u32(4294967295u, 14u)], false)))), select(_wgslsmith_clamp_vec4_u32(~(vec4<u32>(var_2.b.a.d, var_2.b.a.c, global2.e.b, global2.c.b.a.c) & vec4<u32>(5160u, var_1.a.b.a.c, global2.a.b.a.c, 0u)), vec4<u32>(max(var_2.b.a.d, var_2.b.a.c), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 71521u), vec2<u32>(0u, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.b.a.b, 1u, 0u), vec3<u32>(0u, 1u, var_2.b.a.c))), ~(~vec4<u32>(4294967295u, 0u, 50429u, global2.e.c))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 2382u), countOneBits(vec4<u32>(38861u, 17905u, var_1.e.b, 38000u)), vec4<u32>(19753u, 12600u, global2.a.b.a.b, 4294967295u)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~2147483647i, _wgslsmith_mult_u32(u_input.e, 1u), ~(~_wgslsmith_sub_u32(0u >> (global2.a.b.a.d % 32u), func_1())), ~308u);
    global4 = _wgslsmith_f_op_vec3_f32(-global2.a.a.xwx);
    let var_1 = ~(reverseBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(38788u, var_0.c), vec2<u32>(69020u, global2.e.c))) ^ reverseBits(max(~vec2<u32>(45388u, u_input.e), ~vec2<u32>(0u, 120292u))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -905f);
    global3 = array<bool, 14>();
    var var_3 = vec3<bool>(!global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.e.b, var_0.c, global2.a.b.a.b), firstTrailingBit(vec4<u32>(69486u, 4294967295u, u_input.e, 64053u)))), 14u)], all(!select(select(vec3<bool>(true, global2.a.c, true), vec3<bool>(global2.b.x, global2.a.c, true), true), select(vec3<bool>(true, global3[_wgslsmith_index_u32(var_1.x, 14u)], global2.b.x), vec3<bool>(global2.b.x, global3[_wgslsmith_index_u32(u_input.e, 14u)], true), vec3<bool>(false, false, global3[_wgslsmith_index_u32(0u, 14u)])), !vec3<bool>(true, true, global3[_wgslsmith_index_u32(global2.c.b.a.d, 14u)]))), false || select(global3[_wgslsmith_index_u32(34408u, 14u)], false, !global3[_wgslsmith_index_u32(~34582u, 14u)]));
    global0 = array<f32, 23>();
    var var_4 = Struct_5(func_5(global2.a.a.www, func_5(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(global2.a.b.a.d, 23u)], -1047f))), global2.c.a.yzy)), global2.a, func_5(vec3<f32>(-2331f, global4.x, 1349f), func_5(vec3<f32>(627f, 522f, 1248f), Struct_3(global2.c.a, global2.a.b, true), Struct_2(Struct_1(u_input.c.x, var_1.x, 0u, global2.e.d)), Struct_5(Struct_2(var_0), vec4<u32>(var_1.x, 1u, 56483u, 24658u), vec4<u32>(global2.a.b.a.c, 75795u, var_1.x, var_0.c), global2.c.a.wxw, global2.a.a.x)), func_5(vec3<f32>(var_2, 1452f, global0[_wgslsmith_index_u32(var_1.x, 23u)]), Struct_3(vec4<f32>(global2.c.a.x, var_2, 435f, global0[_wgslsmith_index_u32(global2.a.b.a.d, 23u)]), Struct_2(Struct_1(-23708i, var_0.d, 4294967295u, var_1.x)), global2.c.c), Struct_2(global2.c.b.a), Struct_5(global2.a.b, vec4<u32>(4294967295u, 0u, var_1.x, var_1.x), vec4<u32>(u_input.e, 13062u, 0u, 4294967295u), global2.c.a.zyx, global2.c.a.x)).b, Struct_5(global2.a.b, vec4<u32>(0u, var_1.x, 43051u, global2.a.b.a.b), vec4<u32>(u_input.e, global2.a.b.a.d, var_0.b, var_1.x), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 411f, 358f), var_2)).b, Struct_5(Struct_2(var_0), vec4<u32>(0u, var_1.x, var_0.d, var_1.x) ^ vec4<u32>(1u, var_1.x, u_input.e, 1u), vec4<u32>(1u, u_input.e, 0u, global2.e.c), _wgslsmith_f_op_vec3_f32(global2.a.a.xyz - global1[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_f_op_f32(max(global4.x, global2.a.a.x)))), global2.c.b, Struct_5(global2.a.b, vec4<u32>(~u_input.e, 7725u, var_0.b << (0u % 32u), abs(var_1.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, var_0.b, 25393u, u_input.e), vec4<u32>(global2.c.b.a.b, 48665u, global2.e.b, u_input.e) & vec4<u32>(1u, 0u, u_input.e, 53059u)), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(12445u, 17824u), 9u)], var_2)).b, _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.e, var_1.x, var_1.x, u_input.e), vec4<u32>(43525u, var_0.b, var_1.x, 4294967295u), false) | ~vec4<u32>(0u, global2.c.b.a.c, 29273u, 0u), ~(vec4<u32>(26626u, 4294967295u, var_0.b, 1u) | vec4<u32>(6556u, var_0.c, u_input.e, u_input.e))), vec4<u32>(max(_wgslsmith_mult_u32(33396u, var_0.d), ~u_input.e), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(70141u, global2.c.b.a.d), func_2(global2.c, vec4<i32>(u_input.c.x, global2.e.a, var_0.a, 2147483647i), global2.c.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(29098u, var_0.d), reverseBits(var_1)))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global2.c.b.a.b, var_0.b, global2.e.b), vec4<u32>(u_input.e, 12082u, var_1.x, u_input.e))) >> (~_wgslsmith_mult_vec4_u32(select(vec4<u32>(8057u, 1u, var_0.b, global2.e.c), vec4<u32>(4294967295u, var_0.b, u_input.e, var_0.b), global3[_wgslsmith_index_u32(var_0.b, 14u)]), vec4<u32>(u_input.e, 20539u, u_input.e, 21339u)) % vec4<u32>(32u)), global2.a.a.wzx, -522f);
    let x = u_input.a;
    s_output = StorageBuffer(~(-(-global2.d.xwz << (var_4.c.wzx % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(428f, global0[_wgslsmith_index_u32(1u, 23u)]), vec2<f32>(global4.x, var_2))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(760f, var_4.e) + _wgslsmith_f_op_vec2_f32(abs(var_4.d.zx)))))), vec3<i32>(min(-1i, global2.c.b.a.a), firstLeadingBit(-16019i ^ ~u_input.b.x), -var_0.a), u_input.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(1064u, 9u)] * global2.c.a.ywx) - var_4.d)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * _wgslsmith_f_op_f32(f32(-1f) * -924f)), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(global2.c.b.a.c, 23u)], _wgslsmith_f_op_f32(-var_2))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.e.d, ~var_4.b.x, 7517u), 23u)]), select(select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(var_4.a.a.c, 14u)]), !vec3<bool>(global2.b.x, false, global3[_wgslsmith_index_u32(u_input.e, 14u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(var_0.c, 14u)], true)), !vec3<bool>(global2.b.x, global3[_wgslsmith_index_u32(var_4.a.a.d, 14u)], global2.a.c), global3[_wgslsmith_index_u32(firstTrailingBit(7690u), 14u)] || false))));
}

