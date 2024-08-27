struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, false, false, false, true, false, true, true, true, false, false, false, false, false, false, false, false, false, true, false, true, false, true, true, true, false, false, true, false, false, true);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<bool> {
    var var_0 = min(vec2<i32>(0i, u_input.c.x), max(abs(~u_input.c), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c >> (u_input.a.zz % vec2<u32>(32u)), u_input.c), _wgslsmith_div_vec2_i32(u_input.b, u_input.c))));
    var var_1 = Struct_1(2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(199f - 517f) + -556f)) + 807f), select(vec2<bool>(all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(~(~u_input.a.x), 31u)]), !vec2<bool>(true || global0[_wgslsmith_index_u32(u_input.a.x, 31u)], !global0[_wgslsmith_index_u32(0u, 31u)]), vec2<bool>(true, -129f < _wgslsmith_f_op_f32(sign(403f)))));
    let var_2 = max((~_wgslsmith_div_vec2_u32(u_input.a.xy, vec2<u32>(99451u, u_input.a.x)) >> (~u_input.a.zz % vec2<u32>(32u))) ^ ~(~vec2<u32>(50971u, 4294967295u) & _wgslsmith_add_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, u_input.a.x))), countOneBits(vec2<u32>(_wgslsmith_div_u32(1u, ~u_input.a.x), ~1u)));
    var_0 = u_input.b;
    let var_3 = Struct_2(Struct_1(1i, _wgslsmith_f_op_f32(1513f + 1538f), vec2<bool>(all(vec4<bool>(true, true, true, true)), var_1.c.x)), 2147483647i, Struct_1(u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-788f * -485f)) * 413f), vec2<bool>(!(false | var_1.c.x), false)), Struct_1(abs(453i), var_1.b, select(!var_1.c, !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], true), true & global0[_wgslsmith_index_u32(countOneBits(57476u), 31u)])), Struct_1(u_input.b.x, _wgslsmith_f_op_f32(-var_1.b), !vec2<bool>(var_1.c.x, var_1.a > var_1.a)));
    return !vec3<bool>(all(vec4<bool>(var_1.c.x, true, var_1.c.x, false)), (_wgslsmith_div_f32(322f, var_3.d.b) >= _wgslsmith_f_op_f32(-var_3.d.b)) || all(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_2.x, 31u)], true, false)), !var_3.d.c.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: vec2<i32>) -> u32 {
    global0 = array<bool, 31>();
    let var_0 = arg_0.b;
    let var_1 = !select(func_3(), func_3(), _wgslsmith_add_i32(0i, _wgslsmith_add_i32(arg_3.x, 1i)) <= _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, 1i, u_input.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-20530i, -51736i, -1i, u_input.b.x), vec4<i32>(u_input.c.x, arg_3.x, 0i, 2147483647i))));
    global0 = array<bool, 31>();
    let var_2 = _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(select(141f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1231f - -1000f), _wgslsmith_f_op_f32(arg_1.a.b - 519f))), _wgslsmith_f_op_f32(trunc(-990f))), arg_0.c.x))));
    return u_input.a.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_2 {
    global0 = array<bool, 31>();
    let var_0 = all(!(!(!select(vec4<bool>(arg_1.x, arg_0.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), arg_1.x))));
    var var_1 = !(!vec4<bool>(false, false, select(false, true, true), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1139f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-412f + _wgslsmith_f_op_f32(809f + 1326f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -258f), 1000f, true)), !(!var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-504f, 406f)) - -663f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(393f + 348f)))), -237f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-853f + 1f), 883f, arg_0.x))), u_input.c.x <= u_input.b.x));
    var var_3 = vec2<i32>(min(_wgslsmith_sub_i32(-2147483647i, i32(-1i) * -u_input.b.x), -16018i), u_input.b.x);
    return Struct_2(Struct_1(~u_input.c.x, _wgslsmith_f_op_f32(sign(-2335f)), arg_0), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, 714i), select(vec2<i32>(var_3.x, u_input.c.x), -u_input.b, select(vec2<bool>(false, true), vec2<bool>(true, var_0), vec2<bool>(true, var_0))))), Struct_1(1i, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.x, 1066f)), _wgslsmith_div_f32(889f, -230f)))), !(!vec2<bool>(var_0, arg_1.x))), Struct_1(i32(-1i) * -abs(u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x)))), vec2<bool>(any(!vec2<bool>(false, arg_0.x)), true)), Struct_1(~0i << (_wgslsmith_mod_u32(~88819u, ~u_input.a.x) % 32u), _wgslsmith_f_op_f32(-var_2.x), vec2<bool>(select(true, !var_1.x, true), _wgslsmith_f_op_f32(-var_2.x) > 750f)));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> Struct_1 {
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    let var_0 = func_4(select(vec2<bool>(false, !(88757u < u_input.a.x)), !vec2<bool>(true, global0[_wgslsmith_index_u32(func_2(Struct_1(u_input.c.x, -410f, vec2<bool>(true, false)), Struct_2(Struct_1(-2147483647i, -429f, vec2<bool>(true, arg_0)), arg_1.x, Struct_1(u_input.b.x, 801f, vec2<bool>(false, false)), Struct_1(u_input.c.x, -860f, vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 31u)])), Struct_1(arg_1.x, -1223f, vec2<bool>(true, arg_0))), -194f, u_input.b), 31u)]), arg_0), !select(vec2<bool>(arg_0 & false, all(vec4<bool>(arg_0, global0[_wgslsmith_index_u32(86329u, 31u)], false, true))), func_3().zz, _wgslsmith_sub_u32(26897u, u_input.a.x) != 59117u), _wgslsmith_mod_vec3_u32(~(vec3<u32>(61628u, 49106u, u_input.a.x) & firstTrailingBit(vec3<u32>(u_input.a.x, 126646u, u_input.a.x))), u_input.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.b, var_0.d.b, var_0.d.b, var_0.c.b), vec4<f32>(var_0.d.b, var_0.e.b, 635f, var_0.e.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1626f, -744f, -243f, -727f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.c.b * -536f), var_0.e.b, _wgslsmith_f_op_f32(floor(var_0.e.b)), _wgslsmith_f_op_f32(var_0.d.b * -455f)) + vec4<f32>(_wgslsmith_div_f32(var_0.c.b, 993f), 700f, _wgslsmith_f_op_f32(floor(-954f)), _wgslsmith_f_op_f32(162f + -119f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(176f, var_0.a.b, var_0.e.b, var_0.c.b) * vec4<f32>(-799f, 542f, -1000f, -1548f)) - vec4<f32>(1079f, -1143f, -1309f, var_0.c.b))))), vec4<bool>(all(!select(vec4<bool>(arg_0, var_0.c.c.x, false, true), vec4<bool>(var_0.e.c.x, arg_0, true, var_0.d.c.x), true)), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(arg_1.x, -14880i)) > min(-u_input.c.x, 1i), global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 82273u, 23033u, u_input.a.x)), firstLeadingBit(vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x))), ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), 31u)], func_4(!(!vec2<bool>(arg_0, false)), vec2<bool>(func_4(vec2<bool>(true, var_0.c.c.x), var_0.a.c, vec3<u32>(u_input.a.x, 33601u, u_input.a.x)).c.c.x, 1i == arg_1.x), u_input.a).c.c.x)));
    var var_2 = firstTrailingBit(~u_input.a.xz);
    return func_4(vec2<bool>(true, !(any(vec4<bool>(true, false, false, var_0.e.c.x)) | var_0.e.c.x)), func_4(func_4(vec2<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(var_2.x >> (u_input.a.x % 32u), 31u)]), !vec2<bool>(true, var_0.c.c.x), ~vec3<u32>(var_2.x, 1u, 39482u)).a.c, var_0.d.c, vec3<u32>(reverseBits(26175u), ~var_2.x, ~8141u | u_input.a.x)).e.c, u_input.a).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    var var_0 = Struct_2(func_1(global0[_wgslsmith_index_u32(min(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 9299u, 36707u, u_input.a.x), vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x))), firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, 0u, u_input.a.x))), 31u)], select(~vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, -21974i) | -vec4<i32>(u_input.c.x, 0i, u_input.c.x, 25777i), ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.b.x), vec4<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(7868u, 31u)], true, false)), !global0[_wgslsmith_index_u32(4294967295u, 31u)], true, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], false))))), _wgslsmith_mod_i32(u_input.b.x & u_input.c.x, -u_input.c.x), func_1(4294967295u > _wgslsmith_dot_vec2_u32(~vec2<u32>(31711u, u_input.a.x), u_input.a.zz), vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.b.x)), Struct_1(reverseBits(-22702i), _wgslsmith_f_op_f32(976f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(119f + -1020f) - _wgslsmith_f_op_f32(step(542f, 963f)))), !(!func_3().yy)), Struct_1(_wgslsmith_mod_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.c.x, 60777i), vec4<i32>(1i, u_input.b.x, 53829i, u_input.c.x))), ~23442i), -633f, vec2<bool>(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(22707u, u_input.a.x)), 31u)], true)));
    global0 = array<bool, 31>();
    let var_1 = 506f;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2310f, -993f, var_1)))))));
    var_0 = func_4(select(vec2<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], false, true)) || var_0.e.c.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(84693u, 1u, u_input.a.x)) & ~u_input.a.x, 31u)]), var_0.a.c, var_0.c.c), !var_0.d.c, _wgslsmith_add_vec3_u32(u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_div_i32(u_input.c.x, var_0.b));
}

