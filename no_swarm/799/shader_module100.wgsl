struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<f32, 6>;

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false));

var<private> global3: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    global1 = array<f32, 6>();
    var var_0 = global3.c.yw;
    global0 = !(!var_0.x);
    var_0 = select(vec2<bool>(!(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 1u), 6u)] < _wgslsmith_div_f32(210f, -998f)), 1i < reverseBits(-u_input.e)), global3.c.yy, select(vec2<bool>(true, true), global3.c.xw, select(vec2<bool>(-1520f >= global3.a.x, global3.b.x == 3656f), !(!vec2<bool>(global3.c.x, global3.c.x)), select(vec2<bool>(var_0.x, true), vec2<bool>(true, true), global3.c.x))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, 1u), ~0u), 2u)];
    return ~(~select((4294967295u << (u_input.c.x % 32u)) << (u_input.a.x % 32u), _wgslsmith_mult_u32(0u, 4294967295u), any(vec4<bool>(global3.c.x, true, global3.c.x, true))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec2<f32> {
    global3 = Struct_3(arg_0.b.xz, vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(countOneBits(27804u), 6u)]), arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(select(1u, 85046u, arg_0.c.x), 6u)]) + _wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.b.x))), -1000f), select(global2[_wgslsmith_index_u32(arg_2, 2u)], !(!select(arg_0.c, global3.c, global3.c.x)), select(select(vec4<bool>(global3.c.x, global3.c.x, global3.c.x, true), select(vec4<bool>(global3.c.x, false, arg_0.c.x, false), vec4<bool>(global3.c.x, arg_0.c.x, global3.c.x, arg_0.c.x), global3.c), arg_1 < arg_1), vec4<bool>(any(vec3<bool>(true, global3.c.x, false)), any(vec4<bool>(global3.c.x, true, false, arg_0.c.x)), !global3.c.x, all(vec3<bool>(true, arg_0.c.x, global3.c.x))), false)), global3.d);
    var var_0 = Struct_2(1000f, countOneBits(max(vec3<i32>(0i, _wgslsmith_mult_i32(1i, 2147483647i), global3.d.b), vec3<i32>(-1i) * -vec3<i32>(arg_0.d.b, u_input.e, global3.d.b))), arg_3, u_input.a);
    var var_1 = select(select(!vec4<bool>(global3.c.x, true, arg_0.c.x, any(vec3<bool>(arg_0.c.x, true, arg_0.c.x))), global2[_wgslsmith_index_u32(32057u, 2u)], vec4<bool>(arg_0.c.x, true, global3.c.x, true)), global2[_wgslsmith_index_u32(1u, 2u)], any(global2[_wgslsmith_index_u32(1787u, 2u)]));
    let var_2 = Struct_4(arg_0);
    let var_3 = arg_3;
    return _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-114f)) - -656f))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: bool, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(min(global3.b.x, -748f)), -439f), _wgslsmith_f_op_vec4_f32(select(global3.b, vec4<f32>(342f, 1271f, 821f, -1000f), vec4<bool>(arg_2, global3.c.x, false, true))), global2[_wgslsmith_index_u32(~4294967295u, 2u)], global3.d), 32388u & ~func_3(), _wgslsmith_mod_u32(u_input.a.x, u_input.c.x), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(global3.d.b, u_input.e, global3.d.a.x), vec3<i32>(2147483647i, -23299i, 0i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(global3.d.a.x, -1i, u_input.e), vec3<i32>(0i, 36957i, u_input.e))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.b) - _wgslsmith_f_op_vec4_f32(round(global3.b))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 1000f, global3.a.x) - global3.b)))))), select(vec4<bool>(all(vec4<bool>(false, false, global3.c.x, arg_1.x)), false, !arg_1.x, 1i <= global3.d.b), global2[_wgslsmith_index_u32(~78074u, 2u)], !select(!vec4<bool>(false, arg_2, false, global3.c.x), vec4<bool>(false, arg_1.x, false, global3.c.x), !global3.c)), global3.d);
    global2 = array<vec4<bool>, 2>();
    global2 = array<vec4<bool>, 2>();
    global3 = Struct_3(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(vec2<f32>(arg_0.x, -1269f), vec4<f32>(global3.a.x, 646f, arg_3, -2022f), global3.c, Struct_1(global3.d.a, global3.d.a.x)), u_input.b.x, 0u, Struct_1(global3.d.a, global3.d.b))), _wgslsmith_f_op_vec4_f32(floor(global3.b)), vec4<bool>(false, true, false, var_0.c.x), global3.d), ~_wgslsmith_sub_u32(20365u, u_input.a.x), ~(~u_input.a.x), Struct_1(_wgslsmith_add_vec3_i32(global3.d.a, vec3<i32>(var_0.d.a.x, u_input.e, 33792i)), ~u_input.e))).x, _wgslsmith_f_op_f32(step(var_0.a.x, -1092f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3, 1929f, -993f, var_0.a.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, var_0.a.x, 722f, -715f), var_0.b))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1251f, -494f, 2038f, global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), global3.b)) * _wgslsmith_f_op_vec4_f32(round(global3.b)))), !(!var_0.c), Struct_1(vec3<i32>(var_0.d.a.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(global3.d.b, -1i), -2147483647i), firstTrailingBit(u_input.e)), abs(76850i)));
    global2 = array<vec4<bool>, 2>();
    return Struct_1(_wgslsmith_div_vec3_i32(firstTrailingBit(global3.d.a), var_0.d.a), ~reverseBits(-max(var_0.d.b, u_input.e)));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global3.a.x, -772f)), -1363f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(946f, -515f) * global3.b.zz))), global3.b, select(vec4<bool>(global3.c.x, global3.c.x, true, any(select(vec3<bool>(false, global3.c.x, true), vec3<bool>(false, false, true), vec3<bool>(global3.c.x, global3.c.x, false)))), !global3.c, any(vec2<bool>(-59251i > global3.d.a.x, all(vec2<bool>(global3.c.x, true))))), Struct_1(abs(vec3<i32>(firstTrailingBit(global3.d.b), ~(-1732i), firstLeadingBit(global3.d.a.x))), firstLeadingBit(47729i)));
    let var_0 = ~select(abs(~(~0u)), countOneBits(_wgslsmith_mult_u32(abs(20660u), 1u)), all(!vec4<bool>(global3.c.x, global3.c.x, false, true)) && (!global3.c.x == any(vec3<bool>(global3.c.x, global3.c.x, global3.c.x))));
    global2 = array<vec4<bool>, 2>();
    global0 = any(!(!(!select(vec3<bool>(true, global3.c.x, true), global3.c.xxy, vec3<bool>(global3.c.x, global3.c.x, true)))));
    global2 = array<vec4<bool>, 2>();
    return Struct_2(852f, firstTrailingBit(vec3<i32>(u_input.e, 1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-12387i, -2147483647i), arg_0.a.zy))), Struct_1(arg_0.a, (_wgslsmith_mod_i32(-47479i, u_input.e) & abs(u_input.e)) | u_input.e), (vec4<u32>(max(1u, u_input.d), 33222u, _wgslsmith_mult_u32(1001u, u_input.b.x), ~32571u) << (_wgslsmith_mod_vec4_u32(u_input.a & vec4<u32>(4694u, u_input.d, 20177u, u_input.b.x), u_input.b) % vec4<u32>(32u))) ^ (vec4<u32>(abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0, var_0, u_input.c.x), u_input.a), u_input.c.x | 0u, ~var_0) & _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 65767u, 4294967295u, 21514u), _wgslsmith_mod_vec4_u32(vec4<u32>(29991u, var_0, u_input.a.x, 107985u), u_input.b))));
}

fn func_1() -> bool {
    var var_0 = vec3<bool>(global3.c.x, true, select(true, true, any(vec3<bool>(u_input.b.x <= u_input.c.x, true, select(global3.c.x, global3.c.x, global3.c.x)))));
    var var_1 = Struct_1(vec3<i32>(-2147483647i, u_input.e, -_wgslsmith_add_i32(firstTrailingBit(u_input.e), _wgslsmith_div_i32(2147483647i, u_input.e))), -10089i);
    var var_2 = func_5(func_2(global3.b.xyy, !select(vec3<bool>(var_0.x, global3.c.x, true), vec3<bool>(var_0.x, global3.c.x, false), select(vec3<bool>(false, var_0.x, false), global3.c.xww, global3.c.x)), var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(164f - global1[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 6u)]))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_2.d.x, 6u)], var_2.a)) - global3.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, global3.b.x, var_2.a, global1[_wgslsmith_index_u32(u_input.b.x, 6u)])))), global2[_wgslsmith_index_u32(select(firstTrailingBit(firstTrailingBit(var_2.d.x)), 1u, all(!global3.c.xwy)), 2u)], func_2(global3.b.wyz, select(vec3<bool>(global3.c.x, false, global3.c.x), !vec3<bool>(false, true, global3.c.x), global3.c.x & false), 454f > _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(-global3.a.x))), 1u, 20622u, Struct_1(var_2.b, 1i))).x;
    var var_4 = global3.c.xzy;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(1i, u_input.e, 1i & global3.d.a.x), -global3.d.a.x >> (u_input.b.x % 32u));
    let var_1 = func_1();
    global2 = array<vec4<bool>, 2>();
    var var_2 = any(select(global3.c.yw, !(!vec2<bool>(global3.c.x, false)), global3.c.xx));
    global3 = Struct_3(_wgslsmith_f_op_vec2_f32(global3.a * vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b.x))), global1[_wgslsmith_index_u32(86635u, 6u)])), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-909f + global3.b.x), -2267f, _wgslsmith_f_op_f32(round(816f)), _wgslsmith_f_op_f32(select(517f, global1[_wgslsmith_index_u32(4294967295u, 6u)], var_1))))))), global3.c, func_5(Struct_1(vec3<i32>(-2147483647i, reverseBits(-31957i), -9213i << (u_input.c.x % 32u)), -_wgslsmith_div_i32(1i, -7658i))).c);
    var var_3 = Struct_5(Struct_4(Struct_3(global3.a, _wgslsmith_f_op_vec4_f32(floor(global3.b)), global3.c, func_5(global3.d).c)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.b.x, 6u)])), global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), _wgslsmith_f_op_f32(exp2(global3.b.x)))), var_1);
    var_3 = Struct_5(var_3.a, -1629f, max(~_wgslsmith_mult_u32(15880u, u_input.b.x), ~abs(u_input.b.x)) >= ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-1077f, _wgslsmith_f_op_f32(f32(-1f) * -447f), all(vec2<bool>(var_3.c, var_0.a.x <= -27483i)))), vec2<i32>(~(-9952i), -1i));
}

