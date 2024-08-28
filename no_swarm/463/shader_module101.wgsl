struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i, vec4<i32>(0i, 7302i, -38539i, 16031i), 1074u, vec2<u32>(1u, 13364u), true);

var<private> global1: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false));

var<private> global2: bool;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    global0 = arg_1;
    let var_0 = true;
    let var_1 = !arg_1.e;
    let var_2 = select(vec3<bool>(!var_0, var_0 | var_1, true), select(vec3<bool>(false, 0i == max(arg_1.a, 0i), false), select(vec3<bool>(true, true, true), vec3<bool>(arg_0.x >= arg_0.x, var_1 | false, true), !vec3<bool>(var_0, var_0, false)), true), false);
    return vec4<u32>(_wgslsmith_div_u32(~reverseBits(~arg_1.d.x), 1u), _wgslsmith_add_u32(min(_wgslsmith_clamp_u32(4294967295u, 1u, 4294967295u) << ((69244u >> (global0.c % 32u)) % 32u), select(~1u, 0u, true)), _wgslsmith_mod_u32(global0.c ^ arg_1.d.x, 4294967295u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~global0.c, 4294967295u, ~71263u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(global0.d.x, 4294967295u, arg_1.d.x))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(93046u, 21772u, 1u, 17321u), vec4<u32>(74800u, arg_1.c, 1u, 16401u), vec4<u32>(arg_1.d.x, global0.d.x, 11351u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(37812u, 4424u, arg_1.c, arg_1.d.x), vec4<u32>(global0.c, global0.d.x, 13240u, 4294967295u)))), abs(_wgslsmith_add_vec4_u32(vec4<u32>(global0.c, arg_1.d.x, arg_1.c, 18398u) | vec4<u32>(arg_1.d.x, 4294967295u, 3092u, global0.d.x), abs(vec4<u32>(arg_1.d.x, global0.c, arg_1.d.x, 10773u))))), reverseBits(~1u));
}

fn func_2() -> i32 {
    global0 = Struct_1(1i, min(global0.b << (func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1070f, 540f, 1502f) * vec4<f32>(-772f, 197f, 389f, 1287f)), Struct_1(u_input.a, global0.b, 1u, vec2<u32>(1u, global0.d.x), false), false) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(countOneBits(global0.b.x), max(u_input.a, global0.b.x)), global0.b.x ^ -10168i, u_input.a, 1i)), global0.c, _wgslsmith_sub_vec2_u32(vec2<u32>(~10407u, 9539u), vec2<u32>(global0.d.x, ~global0.c)) | firstTrailingBit(_wgslsmith_mult_vec2_u32(abs(global0.d), vec2<u32>(global0.c, 1u))), global0.e);
    let var_0 = vec2<bool>(any(vec2<bool>(all(vec2<bool>(false, global0.e)), !global0.e)) & true, false);
    global2 = any(vec4<bool>(all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, var_0.x, true), vec3<bool>(global0.e, global0.e, true)), vec3<bool>(var_0.x, false, true), true)), var_0.x, any(select(select(vec3<bool>(global0.e, var_0.x, var_0.x), vec3<bool>(global0.e, false, global0.e), vec3<bool>(global0.e, global0.e, global0.e)), select(vec3<bool>(true, true, false), vec3<bool>(var_0.x, true, global0.e), vec3<bool>(var_0.x, global0.e, global0.e)), true)), all(!vec3<bool>(var_0.x, false, global0.e))));
    global1 = array<vec4<bool>, 31>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-996f * 882f), -697f)));
    return abs(abs(u_input.b));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = Struct_1(-(u_input.b ^ global0.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, global0.a, -5331i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b.x, 0i, u_input.b, 0i), vec4<i32>(u_input.b, -1i, 5304i, -40770i), global0.b), vec4<i32>(u_input.b, func_2(), global0.a | 33141i, -1i)) | ~global0.b, 19320u, global0.d, !global0.e & !any(!vec3<bool>(true, global0.e, true)));
    var var_1 = ~vec3<i32>(2147483647i, u_input.b, ~(abs(var_0.a) ^ var_0.a));
    var var_2 = _wgslsmith_clamp_u32(~func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-368f, 1807f, 133f, 577f))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 6169i), var_0.b.ww), global0.b & vec4<i32>(global0.a, -40941i, global0.a, var_0.b.x), ~global0.c, vec2<u32>(arg_0, global0.d.x), true), var_0.e).x, arg_0, 20766u);
    global1 = array<vec4<bool>, 31>();
    let var_3 = Struct_1(abs(var_0.a), -((global0.b ^ max(global0.b, var_0.b)) << (vec4<u32>(min(7564u, global0.c), 85258u, var_0.d.x, 1u) % vec4<u32>(32u))), 41585u, select(vec2<u32>(45836u, 6865u), vec2<u32>((49012u >> (global0.d.x % 32u)) >> (arg_0 % 32u), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1713f, 1635f, -1026f, 839f) * vec4<f32>(-775f, -799f, 1138f, 497f)), Struct_1(var_1.x, vec4<i32>(u_input.b, global0.b.x, 62116i, -51376i), 12581u, vec2<u32>(var_0.d.x, 4294967295u), var_0.e), false).x), !select(select(vec2<bool>(false, global0.e), vec2<bool>(true, true), var_0.e), select(vec2<bool>(false, false), vec2<bool>(var_0.e, global0.e), true), var_1.x > -40004i)), !(_wgslsmith_f_op_f32(f32(-1f) * -1000f) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-306f)), -1000f)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-442f, 321f))) * 1000f) - _wgslsmith_f_op_f32(ceil(-1402f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-222f)) * _wgslsmith_f_op_f32(round(-1020f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> u32 {
    global1 = array<vec4<bool>, 31>();
    var var_0 = 4294967295u;
    return _wgslsmith_dot_vec4_u32(max(firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(arg_2.d.x, 1997u), arg_2.d.x ^ arg_0.c, ~global0.d.x, ~62441u)), _wgslsmith_mult_vec4_u32(max(abs(vec4<u32>(87137u, 1u, 8896u, arg_0.d.x)), vec4<u32>(global0.c, arg_2.c, 1u, 1u)), vec4<u32>(~arg_0.d.x, global0.c, reverseBits(global0.c), ~0u))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~81036u, 33056u, 39293u), 4294967295u, firstTrailingBit(24076u), ~(~arg_0.c)), firstTrailingBit(vec4<u32>(reverseBits(arg_2.d.x), 4294967295u, firstTrailingBit(global0.c), 4294967295u))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 197f) + -1138f), _wgslsmith_f_op_f32(select(-516f, arg_0, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2643f, -2655f) - vec2<f32>(-582f, 1375f))), true));
    let var_1 = arg_1.d.x;
    var var_2 = 1u;
    var_2 = _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(0u, 11376u, arg_1.d.x, 31248u))), reverseBits(vec4<u32>(54221u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(10476u, var_1, 4294967295u), vec3<u32>(32020u, 1u, 23040u)), 1u, _wgslsmith_mult_u32(firstLeadingBit(arg_1.d.x), 64075u))));
    let var_3 = select(!select(!(!arg_2), vec4<bool>(false, any(global1[_wgslsmith_index_u32(0u, 31u)]), 0u <= global0.c, true), select(!vec4<bool>(arg_2.x, false, false, arg_1.e), !vec4<bool>(arg_1.e, false, arg_2.x, false), !vec4<bool>(true, global0.e, global0.e, false))), global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(445f, Struct_1(2147483647i, max(vec4<i32>(u_input.b, ~(-2147483647i), 1i ^ global0.a, -2147483647i), global0.b), global0.d.x, ~_wgslsmith_div_vec2_u32(min(global0.d, global0.d), max(vec2<u32>(global0.c, 1u), vec2<u32>(0u, global0.d.x))), global0.e), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_4(Struct_1(i32(-1i) * -2147483647i, global0.b, ~0u, global0.d, any(vec2<bool>(global0.e, false))), _wgslsmith_f_op_f32(func_1(max(global0.c, global0.d.x))), Struct_1(u_input.b << (26072u % 32u), -vec4<i32>(1i, u_input.b, global0.a, 0i), _wgslsmith_clamp_u32(0u, 19441u, global0.c), ~vec2<u32>(6242u, global0.c), !global0.e), u_input.a), _wgslsmith_add_u32(48221u, ~global0.d.x | global0.d.x)), 31u)]);
    var var_1 = vec2<bool>(true, any(select(!select(vec3<bool>(true, var_0.e, global0.e), vec3<bool>(global0.e, true, true), global0.e), !(!vec3<bool>(global0.e, false, global0.e)), !vec3<bool>(var_0.e, var_0.e, global0.e))));
    global1 = array<vec4<bool>, 31>();
    let var_2 = func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -485f))), var_0, global1[_wgslsmith_index_u32(var_0.d.x | _wgslsmith_mult_u32(11127u, 24171u), 31u)]);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-504f + 435f), _wgslsmith_f_op_f32(sign(-1204f)), _wgslsmith_div_f32(270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1729f, 298f, var_1.x))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-383f - -1018f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1286f)), _wgslsmith_f_op_f32(f32(-1f) * -385f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    global1 = array<vec4<bool>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(max(-_wgslsmith_dot_vec2_i32(global0.b.ww, var_0.b.xz | vec2<i32>(41882i, 1i)), 1i), -(~vec2<i32>(_wgslsmith_mult_i32(var_0.b.x, -1i), firstTrailingBit(var_2.b.x))), _wgslsmith_f_op_vec4_f32(step(var_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3 * var_3))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3) + var_3)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3 * var_3)) - var_3))));
}

