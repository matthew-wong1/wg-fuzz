struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-689f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(515f)) + -1209f)), 387f), vec3<f32>(-233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1609f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2371f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    let var_2 = arg_0;
    global0 = Struct_4(all(!vec4<bool>(true, var_0.x == var_1, false, global0.a | arg_0.x)));
    global1 = array<vec3<bool>, 11>();
    return Struct_4(!var_2.x);
}

fn func_3() -> f32 {
    global1 = array<vec3<bool>, 11>();
    var var_0 = u_input.b.zw ^ _wgslsmith_mult_vec2_i32(max(~vec2<i32>(-38814i, u_input.b.x), ~(~u_input.b.zz)), min((u_input.b.yw & vec2<i32>(2147483647i, -20296i)) | countOneBits(vec2<i32>(u_input.b.x, 21731i)), u_input.b.wz));
    var var_1 = true;
    var var_2 = ~_wgslsmith_mult_i32(~2147483647i, -(u_input.c & -21029i) & ~_wgslsmith_div_i32(var_0.x, var_0.x));
    let var_3 = Struct_4(any(!(!select(vec3<bool>(global0.a, true, global0.a), vec3<bool>(true, global0.a, global0.a), global0.a))));
    return _wgslsmith_f_op_f32(round(-1850f));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<f32> {
    global0 = func_2(vec4<bool>(!global0.a, false, u_input.a < ~4294967295u, !((u_input.a & u_input.a) < 4294967295u)));
    let var_0 = Struct_4(true);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -788f))), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1441f) * _wgslsmith_f_op_f32(-arg_2.x)) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3())))) | !any(select(vec2<bool>(false, var_0.a), vec2<bool>(true, false), true)));
    let var_2 = vec4<u32>(u_input.a, _wgslsmith_sub_u32(~(~max(0u, u_input.a)), 37979u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a << (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(51234u, 1u, u_input.a)), 80694u), firstTrailingBit(vec3<u32>(1u, u_input.a, 47805u) | vec3<u32>(u_input.a, 1u, u_input.a))), _wgslsmith_div_u32(5622u, 1438u));
    var_1 = Struct_2(651f, false);
    return vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(285f * arg_2.x) + -898f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(108f + 642f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a, _wgslsmith_f_op_f32(step(arg_2.x, arg_0.a))) * _wgslsmith_f_op_f32(1802f + arg_0.a))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_3(global0.a, !vec2<bool>(true | arg_2.b, true), arg_3.yzx, Struct_1(625f));
    global0 = Struct_4(arg_0.a);
    let var_1 = u_input.b.xx ^ u_input.b.wx;
    var var_2 = Struct_3(false, !(!(!select(vec2<bool>(global0.a, arg_2.b), var_0.b, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_3.xwy, var_0.c) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(284f, 191f, 423f), vec3<f32>(var_0.c.x, var_0.d.a, 632f), global1[_wgslsmith_index_u32(arg_1.x, 11u)]))), vec3<f32>(131f, _wgslsmith_f_op_f32(f32(-1f) * -330f), -1994f))), var_0.d);
    global1 = array<vec3<bool>, 11>();
    return var_0;
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    var var_0 = abs(u_input.b.yx);
    var var_1 = false;
    var var_2 = arg_2.d.a;
    let var_3 = Struct_2(-1000f, global0.a);
    var var_4 = var_3;
    return func_4(Struct_4(true && any(vec3<bool>(arg_2.a, false, arg_1))), countOneBits(max(~max(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(18156u, u_input.a, 0u)), firstLeadingBit(~vec3<u32>(u_input.a, u_input.a, u_input.a)))), Struct_2(-433f, !select(!arg_1, any(arg_2.b), !global0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, arg_2.c.x, _wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(-arg_2.d.a)), -393f))).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(false, global0.a, func_4(Struct_4(all(global1[_wgslsmith_index_u32(u_input.a, 11u)]) || global0.a), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 1u), vec4<u32>(0u, 4294967295u, u_input.a, 19957u)), u_input.a, 69060u)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(808f, -102f) * _wgslsmith_f_op_f32(-610f * -559f)), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(-1187f), !global0.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-213f, -698f))), Struct_1(1400f))))));
    let var_1 = func_2(select(vec4<bool>(false, true, (i32(-1i) * -1i) > _wgslsmith_dot_vec3_i32(u_input.b.wzz, vec3<i32>(-13445i, -40593i, -2147483647i)), func_4(Struct_4(global0.a), max(vec3<u32>(u_input.a, u_input.a, 32106u), vec3<u32>(u_input.a, u_input.a, u_input.a)), Struct_2(var_0.a, false), _wgslsmith_div_vec4_f32(vec4<f32>(288f, var_0.a, -105f, var_0.a), vec4<f32>(var_0.a, var_0.a, -805f, var_0.a))).b.x), select(!vec4<bool>(global0.a, false, global0.a, false), select(vec4<bool>(true, global0.a, false, global0.a), select(vec4<bool>(false, global0.a, global0.a, false), vec4<bool>(true, true, true, global0.a), true), vec4<bool>(false, global0.a, false, global0.a)), select(vec4<bool>(true, true, false, false), vec4<bool>(global0.a, global0.a, false, global0.a), global0.a)), false));
    let var_2 = _wgslsmith_f_op_f32(max(-1292f, _wgslsmith_f_op_f32(-531f + var_0.a)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1797f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, -554f)))))));
    let var_4 = _wgslsmith_mod_u32(14828u, _wgslsmith_add_u32(abs(95951u), countOneBits(abs(u_input.a))));
    var var_5 = func_4(func_2(vec4<bool>(true, any(select(vec3<bool>(var_1.a, global0.a, true), global1[_wgslsmith_index_u32(var_4, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)])), !select(false, var_1.a, true), (global0.a || var_1.a) && var_1.a)), firstTrailingBit(((vec3<u32>(u_input.a, u_input.a, 38117u) >> (vec3<u32>(10752u, u_input.a, 4294967295u) % vec3<u32>(32u))) >> (reverseBits(vec3<u32>(4294967295u, 4294967295u, var_4)) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, var_4, 28489u), select(vec3<u32>(16678u, 1u, var_4), vec3<u32>(var_4, var_4, 1u), var_1.a)) % vec3<u32>(32u))), Struct_2(-1000f, func_2(vec4<bool>(false, true, false, !var_1.a)).a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_3.x, var_3.x), _wgslsmith_f_op_f32(round(-688f)), _wgslsmith_f_op_f32(-var_0.a), var_2)) - vec4<f32>(_wgslsmith_f_op_f32(sign(-1076f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(928f - -1707f) * _wgslsmith_f_op_f32(-3051f - 1835f)), var_0.a, var_2))).c.x;
    var_5 = 766f;
    let var_6 = _wgslsmith_f_op_vec3_f32(abs(func_4(var_1, vec3<u32>(abs(~66002u), abs(var_4) ^ u_input.a, u_input.a), Struct_2(_wgslsmith_f_op_f32(trunc(202f)), true), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * 540f)), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(func_3()), -510f)).c));
    let var_7 = Struct_1(_wgslsmith_f_op_f32(-613f * var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.b.x >> (_wgslsmith_add_u32(firstLeadingBit(var_4 >> (1572u % 32u)), ~max(0u, var_4)) % 32u));
}

