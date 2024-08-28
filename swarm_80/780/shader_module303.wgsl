struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(30093u, 0u, 1u, 1u, 43888u, 43766u, 68835u, 4294967295u, 0u, 17253u, 0u, 4294967295u, 52370u, 4294967295u, 4294967295u, 0u, 34093u, 4294967295u, 0u, 1u, 0u, 4294967295u, 0u, 20155u, 1u, 1u, 1u, 4294967295u, 18423u, 4294967295u, 50832u, 90584u);

var<private> global1: i32;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(false, true), Struct_1(true, false), Struct_1(true, true), Struct_1(false, true), Struct_1(false, false), Struct_1(true, true), Struct_1(false, true), Struct_1(true, false), Struct_1(false, false), Struct_1(true, false), Struct_1(false, true), Struct_1(false, true), Struct_1(true, false), Struct_1(false, false), Struct_1(false, true), Struct_1(false, true), Struct_1(false, false), Struct_1(true, false), Struct_1(false, true), Struct_1(false, true), Struct_1(true, false), Struct_1(false, false), Struct_1(false, false), Struct_1(true, false), Struct_1(false, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<u32> {
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(!(86540u < u_input.c.x), true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), false);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-3373f + -1534f)))) - -570f));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -136f))) - -1573f);
    let var_3 = Struct_4(vec4<i32>(reverseBits(u_input.a), u_input.a, u_input.a, -2649i) << (vec4<u32>(4294967295u, ~1u, 28161u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)]) % vec4<u32>(32u)), ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(66222u, u_input.c.x), firstLeadingBit(vec2<u32>(40874u, 16225u))), 32u)], _wgslsmith_add_u32(~u_input.c.x, min(1u, u_input.c.x))), 32u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<u32>(1u, 4294967295u, 0u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(8860u, 1u, u_input.c.x, global0[_wgslsmith_index_u32(0u, 32u)]), select(vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(71172u, 32u)], 4294967295u), vec4<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 32u)], 4294967295u), true)), 32u)], _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_sub_u32(28792u, global0[_wgslsmith_index_u32(u_input.c.x, 32u)]))), 32u)]));
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1353f) - 685f)));
    return reverseBits(~(~(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], var_3.b, var_3.d.x)))) >> (vec3<u32>(_wgslsmith_mod_u32(~var_3.b, 11996u), abs(0u), countOneBits(_wgslsmith_div_u32(33775u, _wgslsmith_mod_u32(u_input.c.x, 4294967295u)))) % vec3<u32>(32u));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> vec2<bool> {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-444f * -1000f), _wgslsmith_f_op_f32(140f - -397f))) - _wgslsmith_f_op_f32(-1241f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(1680f * 1210f)), _wgslsmith_sub_vec2_u32(reverseBits(~(arg_1.yz ^ arg_1.yz)), ~max(arg_1.yz, _wgslsmith_div_vec2_u32(u_input.c.zy, u_input.c.zy))), 0u | min(1u, _wgslsmith_mult_u32(72576u, arg_1.x)), max(max(func_3(), u_input.c), vec3<u32>(_wgslsmith_clamp_u32(0u, global0[_wgslsmith_index_u32(u_input.c.x & arg_1.x, 32u)], firstTrailingBit(24682u)), arg_1.x, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(316f, 1227f))) * -1000f));
    global2 = array<Struct_1, 25>();
    global2 = array<Struct_1, 25>();
    let var_1 = Struct_1(all(vec2<bool>(true, true)), true);
    var var_2 = -u_input.b.yw;
    return select(select(select(!(!vec2<bool>(false, var_1.b)), vec2<bool>(var_1.a, true), any(!vec3<bool>(var_1.b, var_1.a, var_1.b))), select(vec2<bool>(any(vec4<bool>(false, false, var_1.b, var_1.b)), !var_1.a), vec2<bool>(!var_1.b, var_1.a), var_1.a), true), vec2<bool>(false, true), !(!vec2<bool>(all(vec4<bool>(var_1.b, var_1.a, var_1.b, true)), false)));
}

fn func_1() -> u32 {
    let var_0 = vec3<bool>(any(func_2(1u, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 11693u), ~vec3<u32>(2791u, u_input.c.x, 8313u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-179f + 1926f))), -226f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-804f - -1797f)))), any(select(vec4<bool>(true, any(vec2<bool>(false, false)), all(vec3<bool>(true, false, true)), false), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true), true)));
    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-618f, 540f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-497f, 231f) - vec2<f32>(513f, -759f)), vec2<f32>(1562f, 1119f), u_input.b.x > u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1472f, 352f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~_wgslsmith_add_vec2_u32(min(u_input.c.zx & u_input.c.zz, select(vec2<u32>(1u, u_input.c.x), vec2<u32>(1u, 0u), var_0.zx)), ~_wgslsmith_div_vec2_u32(u_input.c.yz, u_input.c.yx)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.c.x, abs(max(23804u, ~global0[_wgslsmith_index_u32(4278u, 32u)]))), 32u)], _wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(29714u, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]), u_input.c), max(_wgslsmith_mod_vec3_u32(~u_input.c, u_input.c), ~(vec3<u32>(u_input.c.x, 38252u, 25854u) << (vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 4294967295u) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -594f)))) + 577f));
    var var_2 = Struct_4((vec4<i32>(-u_input.b.x, 1i, 1i, u_input.b.x) >> (max(vec4<u32>(11465u, 0u, u_input.c.x, 21048u), vec4<u32>(var_1.d.x, u_input.c.x, var_1.c, global0[_wgslsmith_index_u32(27384u, 32u)])) % vec4<u32>(32u))) & (select(reverseBits(u_input.b), _wgslsmith_div_vec4_i32(u_input.b, u_input.b), true) | ~u_input.b), 0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.a.x, 1771f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -120f) * _wgslsmith_f_op_f32(var_1.a.x * -813f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))), vec4<u32>(var_1.c, u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c.yx ^ vec2<u32>(22098u, global0[_wgslsmith_index_u32(28304u, 32u)]), vec2<u32>(1u, 50755u)), var_1.c) ^ (reverseBits(reverseBits(vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 8986u, 1u))) & ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, var_1.d.x, 4294967295u, u_input.c.x), vec4<u32>(global0[_wgslsmith_index_u32(31430u, 32u)], u_input.c.x, 2799u, 18954u))));
    var_2 = Struct_4(var_2.a, min(4294967295u, ~var_1.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_2.c)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-417f, var_1.e, var_1.a.x, var_2.c.x))) * var_2.c)) * vec4<f32>(1750f, -1246f, _wgslsmith_f_op_f32(floor(-1000f)), 803f)), ~var_2.d);
    var var_3 = var_0.x;
    return 1u;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32) -> vec2<bool> {
    let var_0 = false;
    global1 = firstLeadingBit(min(arg_1, min(8986i >> (~global0[_wgslsmith_index_u32(1u, 32u)] % 32u), 1i)));
    global0 = array<u32, 32>();
    let var_1 = vec4<bool>(!var_0, var_0 & !var_0, var_0, true | all(select(select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, false, var_0)), !vec3<bool>(false, var_0, var_0), true)));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(989f, -117f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1073f, -1736f))))), ~min(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 79542u), vec2<u32>(global0[_wgslsmith_index_u32(arg_0.x, 32u)], u_input.c.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(9095u, 1u), arg_0.zy)), ~(global0[_wgslsmith_index_u32(1u, 32u)] ^ ~global0[_wgslsmith_index_u32(49659u, 32u)]), _wgslsmith_div_vec3_u32(~arg_0.xyx, ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(arg_0.x, 32u)], global0[_wgslsmith_index_u32(4538u, 32u)]), u_input.c)), -854f), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(6892u, _wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(77564u, 32u)], 32u)] | arg_0.x, 32u)], 13942u)), 25u)]);
    return var_1.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~countOneBits(0u), 25u)];
    var var_1 = !select(vec2<bool>(var_0.a, any(select(vec3<bool>(var_0.b, false, false), vec3<bool>(true, var_0.b, var_0.b), true))), vec2<bool>(true, true), var_0.a);
    var_1 = func_4(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.c & ~vec3<u32>(global0[_wgslsmith_index_u32(65990u, 32u)], global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 31849u), abs(vec3<u32>(global0[_wgslsmith_index_u32(1u, 32u)], u_input.c.x, u_input.c.x))), 32u)], u_input.c.x, firstLeadingBit(global0[_wgslsmith_index_u32(9102u, 32u)] >> (global0[_wgslsmith_index_u32(~u_input.c.x, 32u)] % 32u)), func_1()), _wgslsmith_div_i32(u_input.b.x, u_input.a));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1080f))))));
    let var_3 = 32119i;
    global0 = array<u32, 32>();
    let var_4 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-2198f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1985f * -878f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2295f)) + -1229f), -186f))), _wgslsmith_clamp_vec2_u32(u_input.c.xz, ((u_input.c.zx | vec2<u32>(4294967295u, u_input.c.x)) & vec2<u32>(36773u, u_input.c.x)) ^ _wgslsmith_sub_vec2_u32(~u_input.c.yy, vec2<u32>(16592u, u_input.c.x)), ~(~vec2<u32>(0u, 0u)) | vec2<u32>(u_input.c.x & 1u, 0u)), u_input.c.x, select(max(_wgslsmith_add_vec3_u32(u_input.c, abs(vec3<u32>(3758u, 52746u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)]))), _wgslsmith_sub_vec3_u32(u_input.c, ~u_input.c)), max(countOneBits(reverseBits(u_input.c)), vec3<u32>(~4294967295u, u_input.c.x, firstLeadingBit(global0[_wgslsmith_index_u32(0u, 32u)]))), vec3<bool>(all(select(vec3<bool>(var_0.b, var_0.b, var_1.x), vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(false, var_0.a, var_1.x))), !var_1.x, all(vec2<bool>(true, true)))), -1000f);
    let var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-436f, -1305f, var_4.e, var_4.e) - vec4<f32>(var_4.e, 648f, var_4.e, 2157f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1554f, 1814f, var_4.a.x, var_4.e))), !select(vec4<bool>(var_0.b, var_1.x, var_1.x, true), vec4<bool>(var_0.b, false, false, true), vec4<bool>(var_0.b, false, var_0.a, false))))), vec4<f32>(1467f, 588f, -718f, _wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4.e), _wgslsmith_f_op_f32(var_4.a.x + -451f))))));
    var_1 = !vec2<bool>(!all(select(vec4<bool>(false, var_1.x, true, var_0.b), vec4<bool>(var_0.a, true, false, var_1.x), true)), func_2(select(var_4.d.x, global0[_wgslsmith_index_u32(23847u, 32u)], var_0.a), ~var_4.d).x | true);
    let x = u_input.a;
    s_output = StorageBuffer(0u, reverseBits(50908u), _wgslsmith_f_op_f32(222f - var_4.a.x), _wgslsmith_mod_vec3_u32(select(max(u_input.c, select(vec3<u32>(4294967295u, u_input.c.x, 4294967295u), vec3<u32>(10908u, 74174u, 4294967295u), vec3<bool>(var_0.a, var_0.b, var_0.a))), var_4.d & ~u_input.c, !(!vec3<bool>(true, var_1.x, var_0.b))), u_input.c));
}

