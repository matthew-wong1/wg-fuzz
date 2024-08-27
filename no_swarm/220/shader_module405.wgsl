struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: Struct_2 = Struct_2(Struct_1(true, vec3<u32>(32289u, 113554u, 0u), true), 16780u, Struct_1(false, vec3<u32>(0u, 7708u, 16446u), true));

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(false, vec3<u32>(27883u, 40588u, 20598u), true), Struct_1(true, vec3<u32>(0u, 83734u, 4294967295u), false), Struct_1(true, vec3<u32>(95585u, 29224u, 10299u), true), Struct_1(true, vec3<u32>(66487u, 28985u, 36250u), true), Struct_1(true, vec3<u32>(93973u, 44828u, 0u), false), Struct_1(true, vec3<u32>(4294967295u, 12493u, 4294967295u), false), Struct_1(false, vec3<u32>(4294967295u, 0u, 1u), true), Struct_1(true, vec3<u32>(1u, 1u, 0u), true), Struct_1(true, vec3<u32>(0u, 0u, 4294967295u), false), Struct_1(false, vec3<u32>(64751u, 1u, 1u), true), Struct_1(true, vec3<u32>(53767u, 150247u, 65263u), true), Struct_1(true, vec3<u32>(3863u, 33934u, 1u), false), Struct_1(false, vec3<u32>(1u, 0u, 0u), false), Struct_1(true, vec3<u32>(59252u, 63689u, 1u), true), Struct_1(true, vec3<u32>(23403u, 38201u, 0u), true), Struct_1(true, vec3<u32>(4294967295u, 2745u, 36166u), false));

var<private> global3: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(4294967295u, 39219u), vec2<u32>(31392u, 0u), vec2<u32>(27853u, 14072u), vec2<u32>(0u, 1u), vec2<u32>(14367u, 1u), vec2<u32>(0u, 29780u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(93856u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 74425u), vec2<u32>(1u, 80979u), vec2<u32>(4294967295u, 106033u), vec2<u32>(69065u, 6991u), vec2<u32>(76383u, 16172u), vec2<u32>(4294967295u, 74211u), vec2<u32>(4294967295u, 50633u), vec2<u32>(1u, 45862u), vec2<u32>(62024u, 33475u), vec2<u32>(0u, 1u), vec2<u32>(79742u, 71648u), vec2<u32>(19665u, 70704u), vec2<u32>(66666u, 83299u), vec2<u32>(1u, 2886u), vec2<u32>(75468u, 4294967295u), vec2<u32>(28628u, 1u), vec2<u32>(0u, 0u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = 2147483647i & arg_0;
    var var_1 = Struct_1(true, ~u_input.a, global1.a.a);
    var var_2 = Struct_2(Struct_1(global1.c.a, ~reverseBits(~global1.a.b), true), 0u, Struct_1(false, max(global1.a.b, vec3<u32>(var_1.b.x, global1.b, var_1.b.x) << (abs(vec3<u32>(0u, 4294967295u, u_input.a.x)) % vec3<u32>(32u))), !(!global1.c.a && !global1.a.a)));
    let var_3 = Struct_2(var_2.a, _wgslsmith_sub_u32(var_1.b.x, abs(1u)), global2[_wgslsmith_index_u32(global1.c.b.x, 16u)]);
    global2 = array<Struct_1, 16>();
    return ~(_wgslsmith_add_u32(1u, ~var_1.b.x) ^ ~_wgslsmith_mod_u32(0u, var_1.b.x)) >> (~(~u_input.a.x) % 32u);
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<bool>(~max(~47551u, func_3(u_input.b.x)) <= ~25982u, global0[_wgslsmith_index_u32(~65735u, 5u)]);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(475f)) - _wgslsmith_f_op_f32(abs(-1240f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-507f, _wgslsmith_f_op_f32(floor(1000f)))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-857f)), _wgslsmith_f_op_f32(-1000f + -1440f)))))));
    let var_2 = !(!(!vec4<bool>(any(vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(1u, 5u)], global1.a.a)), select(global0[_wgslsmith_index_u32(global1.c.b.x, 5u)], false, var_0.x), 1u < global1.b, any(vec4<bool>(true, false, true, var_0.x)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-640f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(300f, 1529f) - _wgslsmith_f_op_f32(f32(-1f) * -1618f)))))), -966f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1557f))) + _wgslsmith_f_op_f32(-1f)));
    return Struct_1(true, min(global1.c.b, _wgslsmith_clamp_vec3_u32(u_input.a, ~(~vec3<u32>(1u, global1.c.b.x, u_input.a.x)), ~vec3<u32>(1u, global1.c.b.x, u_input.d))), all(vec2<bool>(var_0.x, true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = 1i;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-359f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(718f + -682f), _wgslsmith_f_op_f32(1501f * -1463f))))), 1000f);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) * 1545f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, all(vec3<bool>(true, false, arg_0.a)))), _wgslsmith_f_op_f32(-153f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)))))));
    var var_4 = reverseBits((abs(-vec4<i32>(37422i, -40512i, 3851i, u_input.b.x)) >> (reverseBits(~vec4<u32>(var_0.b, 45422u, arg_1.b, arg_0.b.x)) % vec4<u32>(32u))) | (vec4<i32>(_wgslsmith_clamp_i32(arg_2, 41370i, u_input.b.x), ~u_input.b.x, -88523i, 2147483647i) << ((_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 25053u, u_input.d, arg_1.c.b.x), vec4<u32>(arg_0.b.x, arg_1.a.b.x, arg_0.b.x, 38305u), vec4<u32>(1666u, 33010u, var_0.b, 21628u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(40467u, arg_1.b, global1.b, 4294967295u), vec4<u32>(var_0.a.b.x, 11081u, arg_0.b.x, arg_1.a.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return func_2();
}

fn func_1() -> u32 {
    global0 = array<bool, 5>();
    let var_0 = func_4(func_2(), Struct_2(func_2(), 40190u, func_2()), u_input.c & -u_input.c);
    let var_1 = 789f;
    let var_2 = _wgslsmith_sub_i32(u_input.c, _wgslsmith_clamp_i32(u_input.c, u_input.b.x, 0i));
    global3 = array<vec2<u32>, 27>();
    return min(u_input.a.x, var_0.b.x) >> (var_0.b.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, select(select(~_wgslsmith_div_vec3_u32(global1.c.b, vec3<u32>(1u, 1u, u_input.d)), vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), func_1(), u_input.a.x), all(!vec2<bool>(false, global1.a.c))), vec3<u32>(u_input.d, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global1.b, 0u, global1.b, 55665u)), vec4<u32>(global1.c.b.x, 1u, 1u, 4294967295u) ^ vec4<u32>(1u, 4294967295u, 1806u, u_input.a.x)), 0u), select(func_2().c, global0[_wgslsmith_index_u32(u_input.d, 5u)] | global1.a.c, false) && (global0[_wgslsmith_index_u32(81893u, 5u)] & true)), global1.a.a);
    var var_1 = select(vec3<bool>(true, true, func_4(func_4(Struct_1(true, vec3<u32>(1u, var_0.b.x, 52964u), global1.c.c), Struct_2(Struct_1(true, u_input.a, var_0.c), u_input.a.x, Struct_1(global0[_wgslsmith_index_u32(0u, 5u)], vec3<u32>(u_input.d, 85257u, u_input.a.x), global1.c.a)), u_input.b.x | -1959i), Struct_2(global1.a, 8957u, func_2()), -firstTrailingBit(u_input.c)).c), vec3<bool>(any(!select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(3880u, 5u)], var_0.a))), _wgslsmith_add_i32(29136i, 1i) == ((-24518i | u_input.c) ^ _wgslsmith_add_i32(1i, u_input.c)), all(select(!vec2<bool>(var_0.c, true), select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 5u)], var_0.a), vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.b.x, 5u)]), var_0.a), vec2<bool>(false, true)))), true);
    let var_2 = ~_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(~u_input.b.x, u_input.c), ~48103i), _wgslsmith_sub_i32(~u_input.b.x, u_input.b.x));
    global2 = array<Struct_1, 16>();
    var var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(~reverseBits(_wgslsmith_sub_u32(48560u, 1u)), 18312u), 16u)];
    var var_4 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -871f), -627f, vec2<i32>(firstTrailingBit(-2147483647i), max(-1i, u_input.c)));
}

