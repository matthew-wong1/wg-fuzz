struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<u32>(46701u, 0u), -202f, -180f, false), Struct_1(vec2<u32>(17398u, 12542u), 644f, -1641f, false), Struct_1(vec2<u32>(68656u, 24559u), 747f, -306f, false), Struct_1(vec2<u32>(4294967295u, 66109u), -1706f, 735f, true), Struct_1(vec2<u32>(0u, 4294967295u), -1684f, 434f, false), Struct_1(vec2<u32>(34086u, 4294967295u), -1981f, 1199f, true), Struct_1(vec2<u32>(6471u, 4294967295u), -422f, 861f, true), Struct_1(vec2<u32>(4294967295u, 13982u), -387f, -140f, true), Struct_1(vec2<u32>(9507u, 4294967295u), 453f, -1077f, true), Struct_1(vec2<u32>(16902u, 1u), 411f, 1323f, true), Struct_1(vec2<u32>(92132u, 1u), -1728f, 353f, false), Struct_1(vec2<u32>(1u, 4294967295u), 1218f, 2105f, false), Struct_1(vec2<u32>(1u, 75998u), -1095f, -880f, false), Struct_1(vec2<u32>(3281u, 1u), 753f, 790f, false), Struct_1(vec2<u32>(4294967295u, 37503u), -449f, 115f, false), Struct_1(vec2<u32>(0u, 48740u), 598f, 1000f, false), Struct_1(vec2<u32>(111421u, 38857u), -1380f, -967f, true), Struct_1(vec2<u32>(5903u, 19318u), 336f, -586f, false), Struct_1(vec2<u32>(31687u, 19846u), 658f, -1253f, true), Struct_1(vec2<u32>(28775u, 66069u), 1000f, -293f, false), Struct_1(vec2<u32>(1u, 20626u), -510f, 1922f, false), Struct_1(vec2<u32>(25125u, 0u), 708f, -1000f, true), Struct_1(vec2<u32>(1u, 4294967295u), 1000f, -1165f, true), Struct_1(vec2<u32>(4210u, 48360u), 916f, 142f, true), Struct_1(vec2<u32>(1u, 12635u), 935f, -1144f, false), Struct_1(vec2<u32>(32758u, 1u), 183f, 1585f, false));

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    global1 = vec3<bool>(arg_0.d, true, !global1.x);
    global2 = !vec4<bool>(!(!(u_input.a < 1i)), select(true, global2.x, select(true, global1.x, global2.x | arg_0.d)), arg_0.d, true);
    return 41972u;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = Struct_2(vec3<bool>(true, all(!global2.wzx), true), arg_2.c);
    global1 = var_0.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1764f, arg_2.b))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, -466f) * vec2<f32>(arg_3, arg_3)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, var_0.b)), select(global1.xx, vec2<bool>(global1.x, true), vec2<bool>(true, true)))) + vec2<f32>(524f, _wgslsmith_f_op_f32(arg_1.b - 1000f)))));
    let var_2 = arg_1.d;
    let var_3 = true;
    return ~(~func_2(arg_2, Struct_2(global2.wwx, var_1.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_1(vec2<u32>(~func_2(global0[_wgslsmith_index_u32(~1u, 26u)], Struct_2(global2.yzy, 715f)), u_input.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -421f))), -1000f, (firstLeadingBit(1i) | _wgslsmith_mult_i32(u_input.b.x, -24550i)) == arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1677f + -107f)), true);
    let var_1 = var_0.c;
    global1 = select(!(!vec3<bool>(var_0.d || false, false | var_0.d, true)), global2.yxw, true);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1038f, var_0.c), _wgslsmith_f_op_f32(-272f + var_0.c), global2.x)), 1287f, 1717f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(156f)), _wgslsmith_div_f32(-731f, -438f), 1f, _wgslsmith_f_op_f32(var_0.b * 553f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -1408f, 1790f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, var_0.c, var_0.b)), var_0.d)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -1144f, -1427f, -106f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1546f, var_0.b, -328f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b, -1061f, 1820f, var_0.c))))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-668f, var_1, var_0.c, _wgslsmith_f_op_f32(-var_1))))));
    global2 = select(select(select(vec4<bool>(true, var_0.a.x < var_0.a.x, var_0.d, global1.x), vec4<bool>(true, true, true, var_0.d), (-345f != var_0.c) && all(vec4<bool>(global2.x, false, global2.x, false))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, var_0.d, false), false)), u_input.d != (func_3(vec4<u32>(var_0.a.x, 26364u, var_0.a.x, var_0.a.x), var_0, global0[_wgslsmith_index_u32(11707u, 26u)], -1540f) | min(9846u, 0u))), !select(vec4<bool>(!var_0.d, all(vec4<bool>(global1.x, false, global1.x, false)), u_input.a != -1i, !var_0.d), !vec4<bool>(var_0.d, global2.x, var_0.d, global1.x), var_0.d || var_0.d), true);
    return Struct_2(select(vec3<bool>(!var_0.d, global2.x, _wgslsmith_clamp_i32(u_input.a, -1i, 2147483647i) == -13166i), vec3<bool>(any(global1.zy), true, all(select(global1.yz, global1.zx, true))), global2.x), _wgslsmith_f_op_f32(trunc(var_1)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(~vec2<u32>(4294967295u, abs(28500u)), _wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_f32(-arg_2.b), true);
    global1 = select(select(vec3<bool>(false, !(global1.x && arg_0.a.x), global2.x), vec3<bool>(false, func_1(var_0.a, -1i).a.x, arg_2.a.x), all(!(!global2.yx))), vec3<bool>(any(!global1.zx) && true, any(func_1(~vec2<u32>(0u, 4294967295u), -u_input.a).a.xx), var_0.d), global1.x);
    var var_1 = firstLeadingBit(vec4<u32>(u_input.d, _wgslsmith_add_u32(~u_input.d, ~var_0.a.x) << (_wgslsmith_mult_u32(4294967295u, 1u) % 32u), u_input.c, 1u));
    let var_2 = arg_0;
    var var_3 = false;
    return Struct_2(vec3<bool>(true, (_wgslsmith_div_i32(u_input.b.x, -2147483647i) & 1i) >= -firstLeadingBit(u_input.b.x), !var_2.a.x), -529f);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = vec3<bool>(!(any(vec4<bool>(global2.x, false, arg_3.a.x, true)) & arg_0.a.x), !(!arg_2.d), reverseBits(arg_2.a.x) <= 1u);
    global0 = array<Struct_1, 26>();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.b - _wgslsmith_div_f32(arg_2.b, arg_3.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1260f + _wgslsmith_f_op_f32(max(arg_0.b, arg_0.b))) - _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1075f, _wgslsmith_f_op_f32(func_1(arg_2.a, u_input.b.x).b - _wgslsmith_f_op_f32(562f + -410f)), arg_2.c))), select(_wgslsmith_sub_i32(~(-33029i), ~(-44842i)) != u_input.b.x, true, true)));
    var var_2 = _wgslsmith_f_op_f32(exp2(var_1.x));
    let var_3 = select(vec3<u32>(1u, arg_2.a.x, u_input.d) | ~(~vec3<u32>(arg_2.a.x, 111085u, 1u)), vec3<u32>(~_wgslsmith_mod_u32(~arg_2.a.x, 4294967295u), _wgslsmith_mult_u32(u_input.d & ~8556u, ~(~4294967295u)), max(~(arg_2.a.x << (arg_2.a.x % 32u)), ~55009u)), (select(arg_2.d, false, false) & false) == true);
    return ~18721u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(!(!vec4<bool>(true, global1.x, global2.x, false)), vec4<bool>(!global2.x, true, true, true), any(vec3<bool>(global2.x, !global1.x, all(global2.wwx))));
    global0 = array<Struct_1, 26>();
    let var_0 = Struct_1(vec2<u32>(func_5(func_4(func_1(vec2<u32>(u_input.c, u_input.c), u_input.b.x), vec2<f32>(-805f, -1092f), func_1(vec2<u32>(1u, u_input.c), u_input.a), Struct_2(vec3<bool>(global2.x, false, global1.x), 1580f)), all(select(vec3<bool>(false, global1.x, global1.x), global2.zwx, false)), Struct_1(vec2<u32>(u_input.c, 21218u) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-1237f + 1000f), 561f, !global1.x), Struct_2(global2.yyz, _wgslsmith_f_op_f32(f32(-1f) * -250f))), 35179u), 503f, -1347f, global1.x);
    global2 = select(select(vec4<bool>(true, global1.x, true, true), !(!(!vec4<bool>(true, var_0.d, false, false))), false), vec4<bool>(func_1(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(21405u, 4294967295u)), u_input.a).a.x, false, true, any(select(vec4<bool>(global2.x, false, global1.x, var_0.d), vec4<bool>(true, global1.x, false, var_0.d), global1.x)) && (any(vec3<bool>(var_0.d, true, true)) == (false != var_0.d))), !(!select(vec4<bool>(true, false, var_0.d, true), vec4<bool>(false, global2.x, false, true), vec4<bool>(var_0.d, var_0.d, true, global2.x))));
    var var_1 = vec2<bool>(global1.x, true);
    var var_2 = var_0.b;
    global0 = array<Struct_1, 26>();
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(abs(var_3.b)), -463f))), u_input.b.x, firstTrailingBit(_wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, 11176u, 0u, 0u), vec4<u32>(71380u, 21107u, 1u, var_3.a.x), vec4<u32>(var_0.a.x, var_3.a.x, var_3.a.x, 0u)), ~countOneBits(vec4<u32>(var_3.a.x, var_0.a.x, var_0.a.x, var_3.a.x)))), ~firstTrailingBit(vec4<i32>(u_input.a, u_input.a, -u_input.b.x, 1i >> (var_0.a.x % 32u))));
}

