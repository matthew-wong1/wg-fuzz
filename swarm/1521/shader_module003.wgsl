struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<u32>) -> i32 {
    let var_0 = vec4<i32>(u_input.a, -19480i, -u_input.a, u_input.a);
    return -2147483647i;
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_3) -> bool {
    var var_0 = Struct_2(-46197i, Struct_1(_wgslsmith_mult_vec2_u32(select(u_input.b.xy, arg_3.c.b.a, vec2<bool>(arg_1, arg_1)) ^ ~vec2<u32>(arg_3.b.b.a.x, 79919u), _wgslsmith_div_vec2_u32(vec2<u32>(arg_3.c.b.a.x, arg_3.c.b.a.x), vec2<u32>(42994u, 0u)) & ~arg_2.yy), arg_3.c.b.b, u_input.a, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(arg_3.b.b.e * arg_0.x), arg_0.x, _wgslsmith_f_op_f32(exp2(arg_3.d.x))))), _wgslsmith_f_op_f32(arg_3.d.x + 1359f)), (u_input.a << (57026u % 32u)) < 32673i, arg_0);
    let var_1 = arg_3.b.b;
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_clamp_vec2_u32(firstTrailingBit(countOneBits(vec2<u32>(57905u, 1u))), ~min(vec2<u32>(27714u, var_1.a.x), vec2<u32>(arg_2.x, 1u)), vec2<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 1u, arg_3.b.b.a.x, 0u), vec4<u32>(arg_3.c.b.a.x, u_input.b.x, var_1.a.x, arg_3.e.b.a.x)))), -4102i, _wgslsmith_dot_vec2_i32(arg_3.a.yz, vec2<i32>(-2750i, var_1.c)) | select(-2147483647i & var_0.b.c, _wgslsmith_mod_i32(-2147483647i, 7738i), any(vec4<bool>(true, arg_1, false, var_0.c))), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1221f)), !(!arg_3.c.c | true), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2320f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.x) * _wgslsmith_f_op_f32(exp2(arg_3.b.b.e))), -546f))));
    let var_2 = select(vec2<bool>(arg_1, all(select(vec4<bool>(false, arg_3.c.c, arg_3.c.c, false), !vec4<bool>(arg_3.b.c, false, false, false), vec4<bool>(false, true, true, arg_3.b.c)))), select(vec2<bool>(any(!vec3<bool>(false, arg_1, false)), 1i > -var_0.a), select(select(!vec2<bool>(arg_3.b.c, false), vec2<bool>(true, true), true), vec2<bool>(true, any(vec4<bool>(true, arg_3.e.c, true, arg_3.c.c))), var_0.c), select(!(!vec2<bool>(arg_3.b.c, false)), vec2<bool>(true, arg_3.b.c | true), !vec2<bool>(arg_3.b.c, arg_3.c.c))), true);
    var_0 = Struct_2(max(select(-1i, 12727i ^ u_input.a, -10757i == var_1.c), ~_wgslsmith_mod_i32(u_input.a, 0i)) & min(reverseBits(-2147483647i), 2147483647i), Struct_1(vec2<u32>(~var_1.a.x, var_1.a.x) & select(~var_0.b.a, vec2<u32>(43485u, arg_3.b.b.a.x), var_2), var_0.a, countOneBits(20377i), _wgslsmith_f_op_vec3_f32(max(var_0.d, arg_0)), -964f), true, vec3<f32>(260f, _wgslsmith_f_op_f32(-var_1.d.x), var_0.b.e));
    return !((_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(524f)))) > _wgslsmith_f_op_f32(trunc(-1323f))) != var_0.c);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = false;
    var var_1 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(func_2(vec2<bool>(true, true), all(vec3<bool>(true, true, true)), vec4<u32>(3504u, u_input.b.x, 1u, arg_1.a.x)), 18121i, i32(-1i) * -2147483647i), vec3<i32>(-33425i, ~(-2513i >> (u_input.b.x % 32u)), -64823i)), Struct_1(arg_3, func_2(select(vec2<bool>(true, true), vec2<bool>(true, false), func_3(vec3<f32>(arg_0, -1843f, arg_1.d.x), true, u_input.b, Struct_3(vec4<i32>(32345i, arg_1.b, arg_1.b, 25079i), Struct_2(-29249i, arg_1, false, arg_1.d), Struct_2(11161i, arg_1, true, arg_1.d), vec4<f32>(-1228f, arg_0, arg_0, -1680f), Struct_2(23225i, Struct_1(vec2<u32>(40579u, u_input.c), arg_1.b, 4535i, vec3<f32>(arg_1.e, arg_1.e, 934f), -883f), false, vec3<f32>(arg_0, arg_0, -1117f))))), false, ~u_input.b), arg_1.b | 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1023f, arg_1.d.x, 790f))), arg_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(530f * arg_1.e))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_1.d.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1132f * 160f)))), -504f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -362f)))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.d.x);
    let var_3 = arg_1.d.x;
    let var_4 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(arg_1.b), _wgslsmith_add_i32(-53755i, 7982i), u_input.a, -u_input.a), reverseBits(vec4<i32>(arg_1.b, 7501i, 2147483647i, arg_2) | vec4<i32>(arg_2, 0i, arg_2, arg_2))), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_1.b.b, arg_2), vec3<i32>(arg_2, 26742i, u_input.a)), vec3<i32>(arg_1.c, u_input.a, 8057i)), _wgslsmith_mult_i32(~arg_1.b, -20392i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, -38720i, arg_2), vec3<i32>(-12663i, -32767i, 0i)), -48570i), u_input.a)), arg_1.c);
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: bool) -> u32 {
    var var_0 = select(!vec3<bool>(any(select(vec2<bool>(false, arg_3), vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, false))), _wgslsmith_f_op_f32(-arg_0.d.x) <= _wgslsmith_f_op_f32(arg_0.e + arg_0.e), true), !select(vec3<bool>(u_input.a > -2147483647i, all(vec3<bool>(false, arg_3, arg_3)), false | arg_3), select(vec3<bool>(arg_3, true, arg_3), select(vec3<bool>(true, false, arg_1.x), vec3<bool>(true, false, arg_3), true), vec3<bool>(true, true, true)), arg_3), false);
    let var_1 = Struct_3(vec4<i32>(_wgslsmith_div_i32(-1i, func_1(_wgslsmith_f_op_f32(f32(-1f) * -670f), Struct_1(vec2<u32>(17249u, 11377u), 34102i, -2147483647i, arg_0.d, arg_0.d.x), func_2(var_0.zz, var_0.x, u_input.b), ~vec2<u32>(arg_0.a.x, 0u)).b), 9218i, max(i32(-1i) * -1i, abs(~arg_0.c)), u_input.a), Struct_2(_wgslsmith_sub_i32(3467i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, arg_0.b), vec3<i32>(arg_0.c, u_input.a, arg_0.b)) & (arg_0.c ^ -2147483647i)), Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(54071u, 3909u, 41989u, 14753u), u_input.b), 7472u), -2147483647i, -u_input.a, vec3<f32>(func_1(1241f, Struct_1(vec2<u32>(arg_2.x, u_input.b.x), 1i, arg_0.b, vec3<f32>(arg_0.d.x, arg_0.e, -387f), -1860f), u_input.a, vec2<u32>(0u, u_input.b.x)).e, arg_0.d.x, arg_0.e), 1261f), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.d) * arg_0.d)), Struct_2(68305i, Struct_1(~vec2<u32>(64670u, 1u), ~(-u_input.a), _wgslsmith_add_i32(arg_0.b, -32717i), vec3<f32>(arg_0.d.x, 746f, _wgslsmith_f_op_f32(-arg_0.e)), 193f), all(vec4<bool>(true, var_0.x, true, false)) | arg_1.x, arg_0.d), vec4<f32>(arg_0.e, arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2235f)) - 848f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)))), Struct_2(-2990i, arg_0, false, vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_div_f32(-200f, arg_0.d.x)), -1000f, arg_0.d.x)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0.d.x)))) + -1344f), var_1.e.b.e))));
    let var_3 = !arg_1.x | func_3(var_1.d.zwx, !all(!var_0.yz), select(countOneBits(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, var_1.b.b.a.x))), _wgslsmith_mult_vec4_u32(~u_input.b, min(vec4<u32>(4294967295u, u_input.c, 4294967295u, arg_2.x), u_input.b)), arg_3), var_1);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.x), var_1.b.d.x);
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, false);
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(func_4(func_1(1000f, Struct_1(vec2<u32>(u_input.c, 18583u), 0i, u_input.a, vec3<f32>(598f, -1390f, 331f), -181f), -2147483647i, vec2<u32>(4294967295u, u_input.b.x)), vec2<bool>(false, true), ~vec3<u32>(13875u, u_input.b.x, u_input.b.x), true), _wgslsmith_mult_u32(u_input.c, ~u_input.c)) | _wgslsmith_div_vec2_u32(u_input.b.wx, ~(~vec2<u32>(u_input.b.x, u_input.c))), u_input.b.ww);
    let var_2 = -276f;
    var_1 = _wgslsmith_mod_u32(~countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.zw, u_input.b.yz), vec2<u32>(1u, u_input.c) >> (u_input.b.xx % vec2<u32>(32u)))), u_input.c);
    var var_3 = _wgslsmith_dot_vec4_u32(u_input.b, countOneBits((_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 14056u), u_input.b) | ~vec4<u32>(25516u, 33086u, u_input.c, u_input.c)) << (~abs(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 64011u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, -_wgslsmith_div_vec2_i32(abs(abs(vec2<i32>(1i, 0i))), ~select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, 0i), vec2<bool>(var_0.x, true))), ~(~4294967295u), ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, 0i, 19116i), min(vec3<i32>(-38118i, u_input.a, -10067i), vec3<i32>(u_input.a, u_input.a, u_input.a))), ~select(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(u_input.a, u_input.a, 41959i), var_0.x)), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(select(u_input.c, 0u, true), 8861u), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.xy, vec2<u32>(u_input.c, 4294967295u), vec2<u32>(11860u, u_input.b.x)), ~vec2<u32>(u_input.b.x, u_input.c)))));
}

