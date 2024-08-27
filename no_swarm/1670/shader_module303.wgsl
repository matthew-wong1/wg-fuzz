struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_2,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<bool>;

var<private> global2: array<bool, 4>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_1) -> u32 {
    let var_0 = u_input.a >= arg_2.c.d;
    let var_1 = vec4<bool>(true, true, select(firstTrailingBit(arg_2.c.d << (u_input.a % 32u)), abs(u_input.a), true) != ~(~52475u), var_0);
    let var_2 = !select(vec2<bool>(true, false), select(!(!vec2<bool>(var_1.x, true)), arg_3.a.yx, var_1.x), !vec2<bool>(arg_0.x >= 1i, false));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -140f), arg_2.e.a)));
    return (10720u & ~abs(arg_2.c.d)) | 4294967295u;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_4) -> vec3<bool> {
    var var_0 = arg_3;
    let var_1 = var_0.c.c;
    let var_2 = false;
    let var_3 = Struct_1(vec3<bool>(all(vec4<bool>(false, true, var_0.e.a, true)), _wgslsmith_f_op_f32(trunc(-1000f)) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.c.a.x))), !(arg_0.a.x == arg_3.c.a.x)));
    global1 = var_3.a.yy;
    return !(!select(!var_0.c.e.a, vec3<bool>(3940u >= u_input.a, var_1.a.x, true), all(select(var_3.a.yz, var_3.a.xx, arg_0.e.a.yy))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -939f)));
    var var_1 = Struct_3(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -164f))));
    var var_2 = abs(abs(firstLeadingBit(0u ^ u_input.c))) & ~14729u;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2042f, var_1.b, 1383f, var_1.b) - vec4<f32>(-1779f, -1000f, var_1.b, var_1.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(434f, 129f, -1309f, var_1.b))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, var_1.b, -785f, 410f), vec4<f32>(305f, var_1.b, var_1.b, -141f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(826f, var_1.b, var_1.b, -778f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(581f, 1000f, var_1.b, var_1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -2562f, 2190f, -909f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1147f, 1000f, var_1.b, var_1.b) + vec4<f32>(-832f, 316f, 849f, var_1.b))))))), !vec4<bool>(false, all(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 4u)], false)), _wgslsmith_f_op_f32(var_1.b + var_1.b) < 1f, select(var_1.a & global1.x, false, !global2[_wgslsmith_index_u32(u_input.a, 4u)])), Struct_1(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, var_1.b, -572f)), vec4<bool>(false, true, global1.x, false), Struct_1(vec3<bool>(var_1.a, false, global2[_wgslsmith_index_u32(u_input.a, 4u)])), 4918u, Struct_1(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)]))), Struct_2(vec4<f32>(-932f, -1436f, -333f, 774f), vec4<bool>(true, global1.x, global2[_wgslsmith_index_u32(u_input.c, 4u)], global2[_wgslsmith_index_u32(0u, 4u)]), Struct_1(vec3<bool>(true, false, false)), ~41474u, Struct_1(vec3<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 4u)]))), u_input.b.x, Struct_4(!vec4<bool>(var_1.a, false, false, false), func_3(u_input.b, vec4<bool>(true, true, var_1.a, false), Struct_4(vec4<bool>(true, true, var_1.a, global2[_wgslsmith_index_u32(0u, 4u)]), u_input.a, Struct_2(vec4<f32>(605f, 1386f, -776f, -1023f), vec4<bool>(true, true, true, global1.x), Struct_1(vec3<bool>(global1.x, true, false)), 0u, Struct_1(vec3<bool>(global1.x, false, true))), 1590f, Struct_3(global2[_wgslsmith_index_u32(u_input.c, 4u)], 1209f)), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 4u)], global1.x, global2[_wgslsmith_index_u32(u_input.c, 4u)]))), Struct_2(vec4<f32>(1071f, -495f, var_1.b, var_1.b), vec4<bool>(var_1.a, true, global2[_wgslsmith_index_u32(27940u, 4u)], true), Struct_1(vec3<bool>(global1.x, true, true)), u_input.a, Struct_1(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 4u)], global2[_wgslsmith_index_u32(3908u, 4u)]))), var_1.b, Struct_3(var_1.a, var_1.b)))), u_input.a, Struct_1(vec3<bool>(true, true, global1.x | (global1.x || global2[_wgslsmith_index_u32(1672u, 4u)]))));
    let var_4 = var_3;
    return var_4;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_1 {
    var var_0 = !arg_0.c.b;
    let var_1 = arg_0.a;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -699f)) * -846f);
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-131f, arg_0.e.b, global2[_wgslsmith_index_u32(u_input.a, 4u)])), arg_1.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-214f - -1937f))), arg_1.b)));
    let var_2 = -(~reverseBits(vec2<i32>(0i, -1i))) ^ (-u_input.d & ~firstTrailingBit(-vec2<i32>(8230i, -20351i)));
    return arg_0.c.e;
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = func_5(Struct_4(!select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(u_input.c, 4u)], false, global2[_wgslsmith_index_u32(u_input.a, 4u)]), !vec4<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.c, 4u)], global1.x, global2[_wgslsmith_index_u32(0u, 4u)]), true), _wgslsmith_sub_u32(u_input.c, ~0u), func_2(), -919f, Struct_3(global2[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f)))), Struct_3(all(!func_2().b.yw), _wgslsmith_f_op_f32(1438f * _wgslsmith_f_op_f32(-169f - -593f))));
    global1 = vec2<bool>(var_0.a.x, all(!func_4(Struct_2(vec4<f32>(-1000f, -1524f, arg_0, arg_0), vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(74578u, 4u)]), Struct_1(var_0.a), u_input.a, Struct_1(var_0.a)), Struct_2(vec4<f32>(arg_0, -1468f, 1197f, arg_0), vec4<bool>(true, false, false, true), Struct_1(vec3<bool>(true, true, var_0.a.x)), u_input.c, Struct_1(var_0.a)), -5317i, Struct_4(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 4u)], false, global1.x), 1u, Struct_2(vec4<f32>(arg_0, -1171f, arg_0, -754f), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 4u)], var_0.a.x, var_0.a.x), Struct_1(var_0.a), 0u, Struct_1(var_0.a)), arg_0, Struct_3(var_0.a.x, arg_0)))));
    let var_1 = Struct_4(vec4<bool>(any(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 4u)], var_0.a.x, true, true)), false, !any(select(vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(false, var_0.a.x, global1.x), vec3<bool>(true, global1.x, global1.x))), func_5(Struct_4(vec4<bool>(global1.x, global2[_wgslsmith_index_u32(15703u, 4u)], true, false), u_input.a, func_2(), _wgslsmith_f_op_f32(-arg_0), Struct_3(global2[_wgslsmith_index_u32(u_input.c, 4u)], arg_0)), Struct_3(global1.x, arg_0)).a.x), 4294967295u, Struct_2(func_2().a, vec4<bool>(_wgslsmith_sub_u32(u_input.a, 4294967295u) >= 34041u, global1.x, select(u_input.a >= u_input.c, func_2().c.a.x, !global1.x), func_5(Struct_4(vec4<bool>(false, true, true, true), u_input.c, Struct_2(vec4<f32>(1641f, 166f, arg_0, arg_0), vec4<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)]), Struct_1(vec3<bool>(false, global1.x, global2[_wgslsmith_index_u32(0u, 4u)])), 0u, Struct_1(vec3<bool>(global1.x, false, var_0.a.x))), -295f, Struct_3(false, arg_0)), Struct_3(global1.x, 972f)).a.x), func_2().c, u_input.a << (9561u % 32u), func_5(Struct_4(!vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(12055u, 4u)]), max(u_input.a, 18272u), Struct_2(vec4<f32>(444f, arg_0, arg_0, 408f), vec4<bool>(true, var_0.a.x, global2[_wgslsmith_index_u32(u_input.c, 4u)], false), Struct_1(var_0.a), 4294967295u, Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, global1.x))), func_2().a.x, Struct_3(global2[_wgslsmith_index_u32(5197u, 4u)], arg_0)), Struct_3(true, -525f))), _wgslsmith_f_op_f32(-arg_0), Struct_3(var_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2513f)) + arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(244f + arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_2 = func_2();
    let var_3 = 1140f;
    return Struct_3(all(vec2<bool>(false, any(vec3<bool>(false, true, false)))) | (0u >= (~1u ^ ~u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c.a.x))) - var_1.e.b)));
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    let var_0 = min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, ~u_input.c, ~(u_input.c & 44698u)), ~(~(~vec3<u32>(u_input.a, 1u, u_input.c)))), max(firstLeadingBit(vec3<u32>(u_input.a, 40183u, u_input.a)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.c, 4294967295u), vec3<u32>(u_input.c, 36370u, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, 1u))));
    let var_1 = vec2<i32>(u_input.e, -23596i);
    var var_2 = func_2();
    var var_3 = Struct_4(vec4<bool>(true, global1.x, any(var_2.b.ww), var_2.e.a.x), 19946u, func_2(), _wgslsmith_f_op_f32(-arg_0.b), func_1(var_2.a.x));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_3.d)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a.x * 664f), _wgslsmith_f_op_f32(var_2.a.x * var_2.a.x)))))) - _wgslsmith_f_op_f32(floor(168f)));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)));
    let var_1 = func_6(func_1(_wgslsmith_f_op_f32(step(642f, 1f))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(974f)), -1168f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(562f)))))));
    let var_3 = ~min(reverseBits(-vec3<i32>(-64028i, 38625i, 1i)), u_input.b);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1013f)), func_1(func_2().a.x).b, func_2().a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.c, 53685u), vec3<u32>(u_input.c, 66517u, u_input.c)) >> (vec3<u32>(u_input.a, u_input.c, u_input.a) % vec3<u32>(32u)), min(vec3<u32>(12040u, u_input.c, u_input.a), vec3<u32>(u_input.a, u_input.c, 0u) >> (vec3<u32>(0u, 943u, 8186u) % vec3<u32>(32u)))), _wgslsmith_clamp_u32(u_input.c, 1u, u_input.c), abs(u_input.c), _wgslsmith_div_u32(~_wgslsmith_mod_u32(98125u, u_input.a), func_2().d)), firstTrailingBit(u_input.d), vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(ceil(131f))))), -1000f, func_1(var_4.x).b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)) + 698f), -1637f)));
}

