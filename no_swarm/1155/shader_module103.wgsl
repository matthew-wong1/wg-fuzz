struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(4294967295u, 10689u, 4294967295u), vec3<u32>(4041u, 59745u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 52895u, 57433u), vec3<u32>(89477u, 1u, 83712u), vec3<u32>(7096u, 0u, 1u), vec3<u32>(1u, 55570u, 1u), vec3<u32>(62203u, 0u, 5546u), vec3<u32>(0u, 4294967295u, 6464u), vec3<u32>(1u, 4454u, 19951u), vec3<u32>(1u, 11093u, 0u), vec3<u32>(10242u, 13798u, 0u), vec3<u32>(1u, 56321u, 1u), vec3<u32>(151012u, 4294967295u, 52957u), vec3<u32>(933u, 4294967295u, 1u), vec3<u32>(55746u, 17984u, 6718u), vec3<u32>(4294967295u, 0u, 25025u), vec3<u32>(73908u, 60773u, 9823u), vec3<u32>(67386u, 4294967295u, 2219u), vec3<u32>(4206u, 1u, 34977u), vec3<u32>(117383u, 1u, 4294967295u), vec3<u32>(0u, 23028u, 766u), vec3<u32>(47343u, 4294967295u, 39320u), vec3<u32>(24747u, 1u, 1u));

var<private> global2: array<f32, 17>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = !all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)));
    var var_1 = Struct_3(Struct_2(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, true), true), true)));
    let var_2 = Struct_1(global0.x, global1[_wgslsmith_index_u32(~(~min(0u, ~26115u)), 24u)], ~(~(~2147483647i)) >= -_wgslsmith_dot_vec3_i32(vec3<i32>(-53354i, 60729i, 2147483647i), ~vec3<i32>(-1i, -4952i, -1i)));
    let var_3 = var_2.b.x;
    var_0 = false;
    return _wgslsmith_mult_i32(-5781i, -45802i);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(abs(-1000f))))), global2[_wgslsmith_index_u32(0u, 17u)]), ~global1[_wgslsmith_index_u32(43465u, 24u)], ((4294967295u ^ (28748u >> (u_input.b.x % 32u))) >= abs(12731u)) == ((~(-9236i) ^ func_3()) == abs(-2147483647i)));
    let var_1 = arg_1.yw;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(716f)), _wgslsmith_f_op_f32(step(-2317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f) + _wgslsmith_f_op_f32(global0.x - 1154f)))))), -1000f, _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_div_f32(1564f, 1101f));
    let var_2 = var_0;
    let var_3 = Struct_1(var_2.a, var_2.b, false);
    return Struct_3(Struct_2(arg_1.yy));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_2) -> vec2<bool> {
    global1 = array<vec3<u32>, 24>();
    var var_0 = Struct_1(-1210f, firstTrailingBit(vec3<u32>(4294967295u, max(abs(u_input.c), 27917u), firstTrailingBit(4294967295u))), all(vec4<bool>(!arg_3.a.x, func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1974f, -367f), vec2<f32>(global2[_wgslsmith_index_u32(arg_1, 17u)], global2[_wgslsmith_index_u32(0u, 17u)]))), !arg_2).a.a.x, !all(vec2<bool>(true, true)), arg_0.a.a.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(global0.x)), global1[_wgslsmith_index_u32(29369u, 24u)], false);
    var_0 = var_1;
    let var_2 = ~2259i;
    return select(arg_3.a, func_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -1518f))))), arg_2).a.a, any(select(vec3<bool>(arg_3.a.x, func_2(global0.zy, arg_2).a.a.x, var_0.c), select(!vec3<bool>(arg_2.x, var_0.c, true), vec3<bool>(false, var_1.c, arg_2.x), arg_2.x), arg_2.zzw)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>) -> i32 {
    global2 = array<f32, 17>();
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(574f, -1081f))), _wgslsmith_f_op_f32(global0.x * global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, ~u_input.b.x), 17u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-992f, global0.x))), 1386f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, _wgslsmith_f_op_f32(-global0.x), -206f, -1623f)));
    global1 = array<vec3<u32>, 24>();
    let var_0 = select(!vec2<bool>(~60207u > _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(u_input.e.x, 24u)], u_input.b.wwx), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), func_4(func_2(vec2<f32>(250f, global2[_wgslsmith_index_u32(3100u, 17u)]), vec4<bool>(false, true, false, false)), 5886u >> (arg_0.x % 32u), vec4<bool>(false, true, true, true), Struct_2(vec2<bool>(false, true))), select(func_2(global0.xw, vec4<bool>(true, true, true, false)).a.a, vec2<bool>(true, false), true)), vec2<bool>(!any(vec4<bool>(true, false, false, true)), false), false), all(vec4<bool>(true, !any(vec3<bool>(false, true, false)), all(vec4<bool>(false, false, true, true)) && true, !all(vec3<bool>(false, true, true)))));
    global1 = array<vec3<u32>, 24>();
    return arg_1.x;
}

fn func_5(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_1(456f, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~firstLeadingBit(u_input.e.x), ~4177u | u_input.a.x), ~u_input.e.x), 24u)], (_wgslsmith_f_op_f32(269f * _wgslsmith_f_op_f32(-1583f - -2880f)) <= _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 19425u), 17u)] * 1000f)) && true);
    let var_1 = select(vec3<bool>(false, ~(-18173i) > arg_0, func_2(global0.wy, vec4<bool>(all(vec3<bool>(var_0.c, true, var_0.c)), true, var_0.c, false)).a.a.x), select(vec3<bool>(true, func_4(func_2(global0.yw, vec4<bool>(true, var_0.c, var_0.c, var_0.c)), u_input.b.x, vec4<bool>(var_0.c, var_0.c, true, true), func_2(vec2<f32>(var_0.a, global0.x), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c)).a).x, var_0.c), select(!vec3<bool>(true, var_0.c, var_0.c), !select(vec3<bool>(var_0.c, true, var_0.c), vec3<bool>(var_0.c, false, false), vec3<bool>(true, true, true)), true), vec3<bool>(var_0.c, var_0.c, !var_0.c)), var_0.b.x < 4294967295u);
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(var_0.b.x, 17u)], -452f))) * vec2<f32>(var_0.a, -1377f)))), !(!vec4<bool>(true || var_1.x, all(vec3<bool>(var_1.x, var_1.x, var_0.c)), all(vec4<bool>(false, var_0.c, false, var_0.c)), true))).a;
    let var_3 = u_input.e;
    let var_4 = var_0;
    return func_2(_wgslsmith_f_op_vec2_f32(-global0.zy), vec4<bool>(var_0.c, true, !(!var_2.a.x), !all(var_1)));
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    global1 = array<vec3<u32>, 24>();
    let var_0 = Struct_3(Struct_2(!arg_0.a.a));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.c, 29758u), max(vec3<u32>(72110u, 15576u, u_input.e.x), vec3<u32>(u_input.e.x, 1u, u_input.b.x))), abs(u_input.e.x)), 17u)]) * 1129f);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], var_1, 797f, global2[_wgslsmith_index_u32(14039u, 17u)]) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], 1966f, 1281f, -1469f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-915f + -1614f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(18115u, 17u)] + -127f), -754f, _wgslsmith_div_f32(global0.x, -160f)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global0.x, var_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f + _wgslsmith_f_op_f32(var_1 + var_1))), 1f, var_1));
    global1 = array<vec3<u32>, 24>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.e.x, 17u)])))) * _wgslsmith_f_op_f32(sign(var_1))), global1[_wgslsmith_index_u32(u_input.c, 24u)], !(!any(!vec4<bool>(arg_0.a.a.x, var_0.a.a.x, var_0.a.a.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.d, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(8037u, ~u_input.b.x | ~u_input.d), u_input.d, ~u_input.d), 1u, ~u_input.e.x);
    let var_1 = !select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, true, false))), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), true));
    let var_2 = func_6(func_5(-func_1(u_input.e, _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(32214i, 1i)))));
    var var_3 = !vec4<bool>(!var_1.x, func_6(func_2(vec2<f32>(global2[_wgslsmith_index_u32(u_input.c, 17u)], var_2.a), vec4<bool>(var_2.c, var_1.x, var_1.x, true))).c, true, !(~4294967295u > ~var_2.b.x));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~var_0.x, 17u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_2.b.x, 17u)], global0.x)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) + global0.x)))), 248f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -171f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(trunc(global0.x))))))));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -719f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.a)), -1000f)), func_6(func_2(_wgslsmith_f_op_vec2_f32(global0.zx - global0.yw), select(vec4<bool>(false, var_1.x, true, true), vec4<bool>(true, var_1.x, false, var_2.c), vec4<bool>(var_2.c, var_3.x, var_3.x, true)))).a)));
    var_3 = !select(vec4<bool>(func_2(_wgslsmith_f_op_vec2_f32(round(global0.xw)), vec4<bool>(var_1.x, true, var_3.x, false)).a.a.x, true, all(var_3.yxx), var_3.x), vec4<bool>(830f <= _wgslsmith_f_op_f32(var_2.a * 106f), true, false & (var_2.b.x >= var_0.x), true), !select(!vec4<bool>(var_2.c, false, true, true), !vec4<bool>(false, var_3.x, var_1.x, false), 1u != u_input.d));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1649f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(553f * -274f)), _wgslsmith_f_op_f32(f32(-1f) * -1139f));
    let var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(23114u, 22813u), 17u)], _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(var_0.x, 17u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~abs(~vec2<i32>(0i, 1i)), ~select(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(10656i, 1i)), reverseBits(vec2<i32>(-8537i, -24432i)), var_1.x)), reverseBits(~_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.x, var_0.x), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 30633u), vec2<u32>(var_2.b.x, u_input.b.x)))));
}

