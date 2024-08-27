struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<bool>,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(44903u, 23392u, 1u);

var<private> global1: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(-18727i, 1i), vec2<i32>(-23130i, -1i), vec2<i32>(0i, -1690i), vec2<i32>(-6276i, -15716i));

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = Struct_3(arg_0, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1886f * -852f))), _wgslsmith_f_op_f32(ceil(arg_1.d)), -364f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-593f, 1000f, -1323f)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.d, 461f, 1860f), vec3<f32>(-1462f, arg_1.d, arg_1.b)))))), Struct_2(true));
    let var_1 = !select(vec3<bool>(57744u < max(global0.x, 4294967295u), u_input.c.x < (u_input.d ^ u_input.b.x), arg_0.x), vec3<bool>(max(1u, global0.x) >= global0.x, all(vec3<bool>(true, arg_1.c, true)), false), -2147483647i >= _wgslsmith_mod_i32(arg_1.e.x, _wgslsmith_sub_i32(u_input.b.x, -14648i)));
    return ~vec3<u32>(global0.x, global0.x, global0.x);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(204f + -1547f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1071f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-171f, -1197f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -853f), _wgslsmith_f_op_f32(f32(-1f) * -1641f))), 1000f)));
    global0 = func_3(select(select(vec2<bool>(!global2.a, all(vec2<bool>(true, global2.a))), vec2<bool>(any(vec3<bool>(global2.a, global2.a, false)), true), !select(vec2<bool>(global2.a, true), vec2<bool>(false, true), global2.a)), vec2<bool>(global2.a, global2.a), false), Struct_1(_wgslsmith_mod_i32(20426i, _wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(u_input.d, u_input.a), 1i)), 382f, select(all(select(vec2<bool>(true, true), vec2<bool>(false, global2.a), vec2<bool>(global2.a, true))), true, all(vec3<bool>(global2.a, global2.a, false))), _wgslsmith_f_op_f32(-752f * var_0.x), ~(-vec4<i32>(u_input.d, u_input.a, u_input.d, -2147483647i)) >> (_wgslsmith_mult_vec4_u32(min(vec4<u32>(global0.x, 58933u, 0u, global0.x), vec4<u32>(4294967295u, 5119u, 15481u, 1u)), firstLeadingBit(vec4<u32>(78741u, global0.x, global0.x, global0.x))) % vec4<u32>(32u))));
    let var_1 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -min(vec4<i32>(u_input.d, -20176i, -24279i, -33908i), u_input.c), vec4<i32>(-71670i, ~_wgslsmith_sub_i32(u_input.d, u_input.c.x), u_input.b.x << (max(4294967295u, 4294967295u) % 32u), 1i)), Struct_3(select(vec2<bool>(true, true), !(!vec2<bool>(true, global2.a)), select(select(vec2<bool>(true, global2.a), vec2<bool>(global2.a, true), global2.a), vec2<bool>(global2.a, global2.a), global2.a | false)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(-696f, 1602f, global2.a)), -702f, _wgslsmith_f_op_f32(min(418f, 510f))))), _wgslsmith_f_op_vec3_f32(-var_0), Struct_2(false)), !vec4<bool>(any(vec2<bool>(global2.a, false)), true == any(vec2<bool>(global2.a, global2.a)), global2.a, global2.a), vec3<u32>(_wgslsmith_div_u32(abs(global0.x), ~global0.x) >> (4294967295u % 32u), abs(global0.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 0u), firstLeadingBit(global0.x))), Struct_2(any(!vec3<bool>(global2.a, global2.a, global2.a))));
    global0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~abs(func_3(var_1.c.zw, Struct_1(46217i, 388f, false, var_1.b.b.x, u_input.c))), vec3<u32>(_wgslsmith_sub_u32(0u, global0.x) >> (global0.x % 32u), 0u, 1u), vec3<u32>(var_1.d.x, firstLeadingBit(~31508u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_div_u32(var_1.d.x, var_1.d.x)))), var_1.d, _wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(var_1.d, vec3<u32>(67920u, var_1.d.x, 5453u)), ~var_1.d), var_1.d));
    let var_2 = abs(_wgslsmith_sub_vec2_u32(select(reverseBits(min(vec2<u32>(28885u, global0.x), var_1.d.yy)), min(var_1.d.zz >> (var_1.d.yy % vec2<u32>(32u)), ~vec2<u32>(global0.x, var_1.d.x)), var_1.c.ww), ~select(global0.xz, select(vec2<u32>(var_1.d.x, 13575u), vec2<u32>(var_1.d.x, 11936u), vec2<bool>(true, global2.a)), select(vec2<bool>(true, true), var_1.b.a, var_1.c.yx))));
    return _wgslsmith_clamp_u32(_wgslsmith_mod_u32(global0.x, ~(_wgslsmith_dot_vec3_u32(var_1.d, vec3<u32>(4294967295u, 1u, 1u)) ^ var_1.d.x)), _wgslsmith_sub_u32(max(select(var_1.d.x, firstTrailingBit(0u), global2.a), _wgslsmith_div_u32(var_1.d.x, ~0u)), ~_wgslsmith_mult_u32(var_2.x, var_2.x)), ~_wgslsmith_dot_vec2_u32(~var_1.d.xy, ~countOneBits(var_2)));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<bool>, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_2(true);
    global2 = Struct_2(false);
    var var_1 = arg_1;
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 * 417f), arg_1, false));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_1, arg_1))))))));
    return Struct_2(~abs(1u) > _wgslsmith_dot_vec2_u32(~arg_0.zy, arg_3.xz));
}

fn func_1() -> Struct_2 {
    global2 = func_4(_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 1u, func_2()), vec3<u32>(_wgslsmith_mult_u32(global0.x, _wgslsmith_mod_u32(global0.x, 1u)), ~(~global0.x), 55459u)), _wgslsmith_f_op_f32(-1171f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - -1000f), 1f))), vec4<bool>(!global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(708f)) + _wgslsmith_f_op_f32(-1012f - -1003f)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -444f))), false, global2.a), reverseBits(vec3<u32>(global0.x, global0.x << (firstTrailingBit(12739u) % 32u), 26142u)));
    return func_4(vec3<u32>(global0.x, func_2(), ~4294967295u), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1497f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1329f)), -717f))))), !(!(!select(vec4<bool>(global2.a, true, global2.a, true), vec4<bool>(true, true, false, true), global2.a))), _wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(global0.x), 75146u, abs(global0.x)) >> (firstLeadingBit(vec3<u32>(18166u, global0.x, 0u)) % vec3<u32>(32u)), firstLeadingBit(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1601u, 4294967295u, 0u), vec3<u32>(1342u, global0.x, 4294967295u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 4>();
    global2 = func_1();
    global0 = ~firstTrailingBit(~(countOneBits(vec3<u32>(98691u, 20893u, 1u)) | (vec3<u32>(0u, global0.x, 64721u) | vec3<u32>(81875u, global0.x, global0.x))));
    global0 = ~(~_wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(global0.x, global0.x, global0.x)), vec3<u32>(0u, global0.x, 5131u)));
    let var_0 = min(1i, 2147483647i);
    var var_1 = vec3<u32>(~4294967295u, _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(~(~global0.x), _wgslsmith_div_u32(1u, 2091u) ^ global0.x)), ~85114u >> (firstLeadingBit(firstTrailingBit(countOneBits(4294967295u))) % 32u));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(968f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1998f)) * -1337f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(124f * -427f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x, countOneBits(vec3<i32>(var_0, u_input.a, _wgslsmith_sub_i32(-6438i, select(1i, u_input.b.x, global2.a)))), vec2<i32>(-u_input.c.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), ~vec2<i32>(u_input.a, 20557i)), var_0), ~vec4<u32>(_wgslsmith_sub_u32(37366u << (global0.x % 32u), 1u), global0.x, ~_wgslsmith_mod_u32(global0.x, var_1.x), 1u));
}

