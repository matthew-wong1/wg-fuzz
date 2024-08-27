struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_3;

var<private> global1: f32 = -2554f;

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global3: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(4294967295u, 48638u, 4294967295u), vec3<u32>(4294967295u, 0u, 4579u), vec3<u32>(1u, 1u, 1u), vec3<u32>(25927u, 51502u, 28565u), vec3<u32>(1u, 16923u, 97748u), vec3<u32>(4294967295u, 30176u, 1u), vec3<u32>(41102u, 1u, 4294967295u), vec3<u32>(30739u, 13058u, 4294967295u), vec3<u32>(1u, 6424u, 1u), vec3<u32>(0u, 0u, 5572u), vec3<u32>(16258u, 1u, 57710u), vec3<u32>(1u, 0u, 54945u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(8632u, 3726u, 36922u), vec3<u32>(20894u, 47946u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4643u, 26718u, 7653u), vec3<u32>(4294967295u, 9781u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(73480u, 30951u, 4294967295u), vec3<u32>(30742u, 4294967295u, 4294967295u), vec3<u32>(23291u, 1u, 50311u), vec3<u32>(3388u, 0u, 5205u), vec3<u32>(5787u, 11658u, 1u), vec3<u32>(4577u, 0u, 43588u), vec3<u32>(4294967295u, 1u, 1u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = Struct_3(Struct_1(281f, !all(vec4<bool>(arg_0.c.b, arg_0.c.b, global0.b.b, arg_0.c.b)), arg_0.b.c), arg_0.c, global2.xwx, Struct_2(global0.b, global0.b, Struct_1(global0.b.a, true, vec3<f32>(_wgslsmith_f_op_f32(-global0.d.c.a), _wgslsmith_f_op_f32(-global0.b.c.x), 1115f))));
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(~_wgslsmith_sub_i32(28241i, 5616i), select(36433i, _wgslsmith_add_i32(18952i, -1i), true)) & _wgslsmith_mult_i32(69225i, firstLeadingBit(-217i)), countOneBits(1i));
    var var_1 = -14699i;
    global1 = -592f;
    var var_2 = ~vec4<u32>(23857u, 26298u, ~u_input.a, 84692u);
    return false;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_5) -> f32 {
    var var_0 = vec2<bool>(false, global0.a.b);
    global0 = arg_1.d;
    global3 = array<vec3<u32>, 26>();
    let var_1 = arg_1.d.a;
    let var_2 = Struct_4(arg_1.c.x, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), false, _wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, global0.a.c.x, arg_1.a.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1690f, arg_2.a.a, global0.a.c.x) * vec3<f32>(global0.b.c.x, var_1.c.x, arg_1.a.c.x)))), Struct_1(-336f, arg_1.d.d.b.b & true, arg_2.c.zyw), Struct_1(arg_1.c.x, func_3(Struct_2(arg_1.d.a, Struct_1(arg_1.c.x, var_1.b, var_1.c), Struct_1(var_1.a, global0.c.x, vec3<f32>(-970f, arg_2.a.c.x, var_1.c.x)))), global0.d.a.c)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_0.x, 0u, 8486u) >> (vec4<u32>(u_input.a, arg_0.x, 21244u, arg_0.x) % vec4<u32>(32u)), ~vec4<u32>(52292u, arg_0.x, 114256u, 0u))), -arg_2.e, select(vec4<bool>(select(var_1.b, var_0.x, true), false, false, !var_0.x), select(select(select(vec4<bool>(global2.x, false, var_0.x, arg_1.d.c.x), vec4<bool>(global2.x, true, false, true), vec4<bool>(var_1.b, false, arg_2.a.b, arg_2.b)), vec4<bool>(true, false, global2.x, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(global2.x, false, global2.x, false), !vec4<bool>(true, arg_1.b, arg_1.d.b.b, arg_2.b), global0.c.x), true & (arg_2.e != arg_1.e)), (_wgslsmith_mult_i32(arg_2.e, arg_2.e) == -arg_2.e) && !select(false, true, false)));
    return _wgslsmith_div_f32(-332f, _wgslsmith_f_op_f32(-global0.a.c.x));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, 1u, 1u) % vec3<u32>(32u)), Struct_5(global0.a, global2.x, vec4<f32>(-193f, global0.a.c.x, 609f, -960f), Struct_3(global0.b, global0.b, global2.xxx, global0.d), -2147483647i), Struct_5(Struct_1(global0.d.c.c.x, global2.x, global0.a.c), false, vec4<f32>(global0.b.a, 694f, global0.d.b.c.x, global0.a.a), Struct_3(Struct_1(857f, global2.x, global0.a.c), global0.a, vec3<bool>(false, false, global2.x), Struct_2(Struct_1(global0.a.a, true, global0.a.c), Struct_1(-866f, global0.b.b, vec3<f32>(-1429f, global0.d.c.a, -727f)), Struct_1(global0.b.a, global0.a.b, vec3<f32>(1130f, -1566f, 528f)))), -31655i))), global0.b.a), global0.d.a.b, _wgslsmith_f_op_vec3_f32(trunc(global0.b.c))), Struct_1(global0.b.a, false, _wgslsmith_f_op_vec3_f32(sign(global0.d.b.c))), Struct_1(global0.b.a, any(select(vec4<bool>(global0.d.c.b, false, global2.x, true), !vec4<bool>(global2.x, global0.a.b, true, false), all(global2.yyz))), _wgslsmith_f_op_vec3_f32(-global0.a.c)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.c.x, global0.b.a, true)) - _wgslsmith_f_op_f32(min(1000f, -369f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a.c.x)) + _wgslsmith_f_op_f32(max(var_0.b.c.x, -698f))))), any(select(vec4<bool>(true, false, global0.c.x, global2.x), select(vec4<bool>(false, global0.b.b, global0.c.x, true), vec4<bool>(var_0.c.b, false, true, var_0.b.b), vec4<bool>(var_0.a.b, global0.a.b, var_0.b.b, false)), true)), _wgslsmith_f_op_vec3_f32(-global0.a.c)), Struct_1(_wgslsmith_f_op_f32(select(-591f, -160f, false)), global2.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-344f, var_0.c.a, -162f)), _wgslsmith_f_op_vec3_f32(abs(global0.a.c))))), vec3<bool>(var_0.c.b, true, var_0.b.b), Struct_2(var_0.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a)), false, _wgslsmith_f_op_vec3_f32(global0.b.c - _wgslsmith_f_op_vec3_f32(global0.a.c + vec3<f32>(-579f, 359f, -519f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.a, global0.a.c.x))), true, var_0.a.c)));
    var var_2 = -_wgslsmith_sub_i32(firstLeadingBit(1i), firstLeadingBit(abs(~(-21548i))));
    global2 = !select(vec4<bool>(true, false, select(any(vec3<bool>(var_0.b.b, true, true)), !global2.x, true), true), vec4<bool>(any(select(global0.c, global2.wxx, true)), var_0.c.b, any(select(vec4<bool>(true, var_1.b.b, false, false), vec4<bool>(false, false, true, global0.c.x), var_0.c.b)), false), !var_0.b.b);
    var_1 = Struct_3(var_0.b, global0.d.c, select(vec3<bool>(any(!global2.xz), _wgslsmith_f_op_f32(f32(-1f) * -677f) < _wgslsmith_f_op_f32(ceil(var_1.a.a)), var_1.a.b & true), select(!select(global0.c, global2.xxy, vec3<bool>(true, true, var_0.a.b)), global0.c, vec3<bool>(global0.b.b, !global0.c.x, global2.x)), true), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(-2374f)), true, var_0.b.c), var_1.b, global0.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.c.x * _wgslsmith_f_op_f32(sign(-836f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = select(true, any(vec3<bool>(!(false | global0.c.x), global0.a.b, any(vec4<bool>(false, true, global2.x, global2.x)) & true)), true);
    global3 = array<vec3<u32>, 26>();
    var var_2 = vec4<bool>(!(!global0.a.b), false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.c.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -1000f)), true);
    global0 = Struct_3(Struct_1(-652f, func_3(global0.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.b.c)) + _wgslsmith_f_op_vec3_f32(global0.b.c * vec3<f32>(global0.d.c.a, global0.a.a, 246f))))), global0.a, vec3<bool>(any(!select(vec4<bool>(true, true, true, var_2.x), vec4<bool>(true, var_1, var_2.x, var_2.x), global0.b.b)), !(!var_2.x & (global0.b.a >= global0.b.a)), var_2.x), Struct_2(global0.d.b, Struct_1(_wgslsmith_f_op_f32(646f * _wgslsmith_f_op_f32(global0.b.a * 181f)), global0.b.b, vec3<f32>(_wgslsmith_f_op_f32(global0.b.a * global0.b.a), -1000f, _wgslsmith_f_op_f32(-global0.a.a))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a)), any(!vec4<bool>(global2.x, false, true, var_1)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(635f, global0.d.b.a, 182f), vec3<f32>(global0.d.c.c.x, global0.b.c.x, 1000f))), vec3<f32>(-1151f, global0.d.c.a, 735f))))));
    global3 = array<vec3<u32>, 26>();
    global3 = array<vec3<u32>, 26>();
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer((countOneBits(firstTrailingBit(vec3<i32>(66871i, 1i, -16820i))) | _wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, 22319i, 22912i), -vec3<i32>(-68168i, 14928i, -2537i))) & -(firstTrailingBit(vec3<i32>(17222i, -75678i, 18805i)) ^ vec3<i32>(0i, -70902i, -1i)), vec4<u32>(firstTrailingBit(21192u), u_input.a, u_input.a, u_input.a));
}

