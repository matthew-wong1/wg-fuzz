struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, Struct_1(0i), -806f, vec2<i32>(-1i, 78776i));

var<private> global1: array<vec2<bool>, 19>;

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(false, Struct_1(-26704i), -1255f, vec2<i32>(1i, 35251i)), Struct_3(false, Struct_1(17048i), -2517f, vec2<i32>(-19966i, i32(-2147483648))), Struct_3(false, Struct_1(-3469i), 659f, vec2<i32>(2005i, 1i)), Struct_3(false, Struct_1(2147483647i), 195f, vec2<i32>(1i, i32(-2147483648))), Struct_3(false, Struct_1(i32(-2147483648)), -1528f, vec2<i32>(-45082i, 25321i)), Struct_3(true, Struct_1(-1i), -702f, vec2<i32>(i32(-2147483648), -1i)), Struct_3(false, Struct_1(-1i), -2053f, vec2<i32>(17889i, -1i)), Struct_3(false, Struct_1(2147483647i), 991f, vec2<i32>(-1i, 32951i)));

var<private> global4: u32 = 39287u;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>) -> vec4<u32> {
    let var_0 = vec4<bool>(global0.a, global0.a, true, false);
    let var_1 = Struct_2(arg_0.ywy);
    var var_2 = var_1;
    var_2 = Struct_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(min(var_1.a.x, var_2.a.x), ~arg_0.x, 0u), select(min(global2.xzw, vec3<u32>(4294967295u, 11276u, u_input.a)) & var_1.a, abs(global2.yyx ^ global2.yzx), any(!vec3<bool>(global0.a, true, false)))));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global0.c, global0.c)))))))));
    return ~vec4<u32>(countOneBits((var_2.a.x & 0u) >> (_wgslsmith_mult_u32(1u, 0u) % 32u)), var_1.a.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(var_2.a, var_1.a), vec3<u32>(45606u, arg_0.x, ~80027u)), 101001u);
}

fn func_2() -> u32 {
    global2 = ~func_3(firstTrailingBit(vec4<u32>(global2.x, _wgslsmith_mod_u32(4294967295u, global2.x), 4294967295u, ~1u)));
    let var_0 = select(vec2<bool>(any(global1[_wgslsmith_index_u32(4294967295u, 19u)]), !(global0.a && global0.a)), select(select(select(select(vec2<bool>(global0.a, global0.a), global1[_wgslsmith_index_u32(4294967295u, 19u)], vec2<bool>(false, false)), global1[_wgslsmith_index_u32(global2.x, 19u)], global0.a), !select(vec2<bool>(true, global0.a), vec2<bool>(false, false), global1[_wgslsmith_index_u32(1618u, 19u)]), false), vec2<bool>(true, true), !(!global1[_wgslsmith_index_u32(~4294967295u, 19u)])), select(vec2<bool>(!(!global0.a), true), select(global1[_wgslsmith_index_u32(0u, 19u)], !select(vec2<bool>(global0.a, global0.a), vec2<bool>(false, global0.a), false), global1[_wgslsmith_index_u32(0u, 19u)]), vec2<bool>(all(select(vec4<bool>(true, global0.a, global0.a, global0.a), vec4<bool>(global0.a, global0.a, global0.a, global0.a), vec4<bool>(false, false, global0.a, global0.a))), all(!vec2<bool>(global0.a, global0.a)))));
    let var_1 = ~(~(~select(vec4<u32>(33093u, global2.x, global2.x, 0u), vec4<u32>(46377u, 16855u, global2.x, u_input.a), vec4<bool>(true, global0.a, var_0.x, var_0.x))) ^ reverseBits(~(vec4<u32>(4294967295u, global2.x, 1u, 13638u) | vec4<u32>(4294967295u, 1u, u_input.a, 23464u))));
    global2 = vec4<u32>(~(var_1.x | ~u_input.a), u_input.a, var_1.x, min(~(u_input.a | global2.x), ~_wgslsmith_dot_vec3_u32(var_1.xyy, var_1.wwz)) & 28537u);
    let var_2 = Struct_4(select(vec3<bool>(select(u_input.a, global2.x, true) <= _wgslsmith_mod_u32(var_1.x, var_1.x), false, false), vec3<bool>(all(vec4<bool>(global0.a, false, global0.a, false)) != any(vec4<bool>(false, true, true, global0.a)), any(vec4<bool>(true, true, true, true)), !(!global0.a)), global0.a), var_1.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-464f, -1550f, -897f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, -787f, global0.c) - vec3<f32>(1586f, global0.c, -373f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, 1091f, global0.c))))))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(abs(-1i), max(-2147483647i, u_input.b)), global0.d, global0.d << (~vec2<u32>(global2.x, 4294967295u) % vec2<u32>(32u))), vec2<i32>(-select(1i, u_input.b, false), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, 4986i), global0.d.x))), var_0.x);
    return ~global2.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_2 {
    global2 = _wgslsmith_div_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 1u), vec4<u32>(global2.x, global2.x, 1u, 1u) << (vec4<u32>(0u, global2.x, u_input.a, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(1u, 14976u, global2.x, u_input.a))), ~(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, u_input.a, global2.x, 0u), vec4<u32>(global2.x, 19752u, 1005u, 0u))) & ~(~vec4<u32>(global2.x, u_input.a, u_input.a, 1u))));
    let var_0 = -arg_1.a;
    var var_1 = vec4<i32>(21270i, u_input.b, global0.d.x, _wgslsmith_sub_i32(global0.d.x, _wgslsmith_sub_i32(28896i, arg_1.a ^ abs(9262i))));
    global3 = array<Struct_3, 8>();
    global4 = firstTrailingBit(~func_2()) | ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, u_input.a, global2.x), ~vec3<u32>(49988u, 4294967295u, 3205u)), ~(vec3<u32>(1u, 4294967295u, global2.x) & vec3<u32>(global2.x, 0u, u_input.a)));
    return Struct_2(vec3<u32>(4294967295u, global2.x, ~_wgslsmith_mult_u32(~u_input.a, u_input.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    var var_0 = select(select(select(false, true, all(select(vec3<bool>(true, true, global0.a), vec3<bool>(true, global0.a, global0.a), global0.a))), true, global0.a), global0.a, true);
    var var_1 = Struct_4(select(vec3<bool>(~2147483647i <= arg_1.a, 1129f < _wgslsmith_f_op_f32(trunc(global0.c)), true == global0.a), !(!(!vec3<bool>(false, false, global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.c))) == global0.c), u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1018f, -1639f, 386f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, global0.c, 1222f) - vec3<f32>(global0.c, global0.c, 1245f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 694f, global0.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global0.c, -1364f)))) * vec3<f32>(global0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.c - global0.c))), -799f)), ~arg_1.a, true);
    var var_2 = select(var_1.a.yy, !vec2<bool>(any(select(global1[_wgslsmith_index_u32(arg_0.a.x, 19u)], vec2<bool>(global0.a, false), var_1.a.x)), ~22782i <= _wgslsmith_dot_vec2_i32(global0.d, global0.d)), false);
    let var_3 = !(!var_1.e);
    let var_4 = arg_0;
    return Struct_3(!(!(var_1.c.x > global0.c) == any(!vec4<bool>(false, var_2.x, true, var_1.e))), Struct_1(arg_1.a), 612f, max(~vec2<i32>(-2147483647i, u_input.b) << (~vec2<u32>(67637u, 4040u) % vec2<u32>(32u)), vec2<i32>(firstLeadingBit(arg_1.a), max(7027i, var_1.d)) << (~vec2<u32>(var_4.a.x, 0u) % vec2<u32>(32u))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32) -> Struct_4 {
    var var_0 = func_2();
    global1 = array<vec2<bool>, 19>();
    global4 = _wgslsmith_mod_u32(u_input.a, func_3(~vec4<u32>(0u, _wgslsmith_dot_vec2_u32(global2.zy, vec2<u32>(0u, global2.x)), 0u & u_input.a, 10672u)).x);
    var var_1 = Struct_4(select(select(vec3<bool>(!arg_0.a, false, any(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a))), !vec3<bool>(arg_0.a, arg_0.a, true), select(true, select(global0.a, false, true), all(vec4<bool>(true, false, arg_0.a, global0.a)))), !select(!vec3<bool>(arg_0.a, true, false), select(vec3<bool>(global0.a, true, true), vec3<bool>(false, arg_0.a, arg_0.a), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)), global0.a && !arg_0.a), min(u_input.a, 44340u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(201f)), arg_1.x)), arg_0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1471f))))), arg_0.b.a, arg_0.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_1.c);
    return Struct_4(select(vec3<bool>(any(select(vec2<bool>(var_1.e, true), vec2<bool>(var_1.a.x, true), var_1.e)), true || all(vec3<bool>(false, true, true)), true), select(!var_1.a, select(!vec3<bool>(false, global0.a, false), var_1.a, false), true & !global0.a), vec3<bool>(func_4(Struct_2(vec3<u32>(global2.x, 53884u, var_1.b)), func_4(Struct_2(vec3<u32>(35423u, var_1.b, 0u)), Struct_1(arg_0.b.a)).b).a, any(var_1.a), true)), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.c), _wgslsmith_div_vec3_f32(var_1.c, var_1.c), !vec3<bool>(global0.a, true, arg_0.a))), vec3<f32>(232f, _wgslsmith_f_op_f32(253f + global0.c), arg_1.x))), var_1.d, true);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    var var_0 = Struct_1(global0.b.a);
    return arg_0.a.x && true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1018f, global0.c)), Struct_1(-18415i)), Struct_1(select(global0.b.a, global0.d.x, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(670f, 1000f, 1626f, global0.c) - vec4<f32>(-1151f, global0.c, -145f, 254f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, global0.c, global0.c, -789f) * vec4<f32>(-100f, 758f, global0.c, 914f))))), u_input.b), Struct_1(select(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-85451i, u_input.b), global0.d.x & -2147483647i, -global0.b.a), 0i, global0.a)), global1[_wgslsmith_index_u32(16230u, 19u)]);
    var var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u ^ u_input.a, 0u)), max(~global2.zz, firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(global2.x, 55213u), vec2<u32>(global2.x, 4294967295u))))), vec2<u32>(~2078u, 1u));
    global2 = (vec4<u32>(global2.x, global2.x & 0u, ~func_1(vec2<f32>(1447f, -452f), global0.b).a.x, 27471u) | vec4<u32>(~0u, 22301u, ~4294967295u, ~_wgslsmith_sub_u32(var_1.x, var_1.x))) ^ vec4<u32>(~_wgslsmith_mod_u32(48285u, 4294967295u), 1u, 42729u, func_2());
    global0 = global3[_wgslsmith_index_u32(var_1.x, 8u)];
    let var_2 = vec4<i32>(firstLeadingBit(67642i), select(1i, u_input.b, global0.a), -2147483647i, 35556i);
    let x = u_input.a;
    s_output = StorageBuffer(-42365i, vec2<u32>(~var_1.x, 39466u), 31393u);
}

