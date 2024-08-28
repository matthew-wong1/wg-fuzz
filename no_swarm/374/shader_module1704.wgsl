struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = true;

var<private> global2: array<bool, 4> = array<bool, 4>(false, false, false, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(103f, -693f)), -349f), 1090f)), _wgslsmith_f_op_f32(415f - _wgslsmith_f_op_f32(step(571f, _wgslsmith_f_op_f32(max(912f, -1000f))))), global2[_wgslsmith_index_u32(1u, 4u)])) - 286f);
}

fn func_3() -> vec4<bool> {
    var var_0 = countOneBits(u_input.c);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f))))));
    global1 = false;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1298f, 2766f, false)) + 2167f))) - -390f)));
    global0 = _wgslsmith_f_op_f32(var_1 * 144f);
    return !(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)], true, any(vec2<bool>(global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)]))));
}

fn func_2() -> f32 {
    global1 = any(select(select(vec4<bool>(!global2[_wgslsmith_index_u32(18358u, 4u)], any(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 4u)])), true, -41561i <= u_input.b.x), func_3(), vec4<bool>(global2[_wgslsmith_index_u32(0u, 4u)], true, any(vec2<bool>(global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)])), u_input.a > u_input.b.x)), select(select(!vec4<bool>(global2[_wgslsmith_index_u32(9803u, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(11233u, 4u)], global2[_wgslsmith_index_u32(8298u, 4u)]), func_3(), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)], false)), select(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(0u, 4u)], true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, global2[_wgslsmith_index_u32(1u, 4u)], true), vec4<bool>(false, false, global2[_wgslsmith_index_u32(0u, 4u)], true)), vec4<bool>(global2[_wgslsmith_index_u32(17520u, 4u)], global2[_wgslsmith_index_u32(59849u, 4u)], global2[_wgslsmith_index_u32(0u, 4u)], false)), vec4<bool>(true, 35637i != u_input.c, !global2[_wgslsmith_index_u32(77818u, 4u)], true)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(select(~107708u, max(6809u, 0u), select(true, global2[_wgslsmith_index_u32(36692u, 4u)], global2[_wgslsmith_index_u32(110237u, 4u)])), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(95554u, 21598u), vec2<u32>(7406u, 74578u)), 1u)), 4u)]));
    var var_0 = vec2<u32>(~(~(~94693u)), (1u >> (firstTrailingBit(21751u) % 32u)) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 50793u), vec2<u32>(1u, 16730u))) & abs(select(~firstLeadingBit(vec2<u32>(0u, 15781u)), vec2<u32>(~61268u, ~43150u), vec2<bool>(true, global2[_wgslsmith_index_u32(~1u, 4u)])));
    var var_1 = Struct_5(Struct_4(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_i32(~(-6137i), ~u_input.b.x) & ~(u_input.a & 8365i), _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_sub_i32(~u_input.b.x, ~u_input.a)), vec3<f32>(279f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-973f)) * _wgslsmith_f_op_f32(-291f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -992f)))));
    let var_2 = true;
    let var_3 = var_1.a;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.d.x - 1333f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(890f - -145f)))) * var_1.a.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1662f, 1000f))), !global2[_wgslsmith_index_u32(countOneBits(29839u), 4u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1541f)) - _wgslsmith_f_op_f32(-407f + _wgslsmith_f_op_f32(min(958f, 1046f))))));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - 2024f))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-336f, -850f), _wgslsmith_f_op_f32(func_1()))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -224f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), -1000f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-290f + 242f), _wgslsmith_f_op_f32(ceil(1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1457f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-561f, -255f, 730f))) + vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1900f, 653f, 1575f) * vec3<f32>(892f, -372f, -1000f)))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-275f, _wgslsmith_f_op_f32(f32(-1f) * -450f), _wgslsmith_div_f32(-563f, 1089f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(163f, 313f, 354f), vec3<f32>(-351f, -1099f, 1000f), all(vec4<bool>(global2[_wgslsmith_index_u32(0u, 4u)], true, false, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(480f, -213f, -877f))), vec3<bool>(func_3().x, !(!global2[_wgslsmith_index_u32(18244u, 4u)]), all(select(vec3<bool>(global2[_wgslsmith_index_u32(39906u, 4u)], false, false), vec3<bool>(false, true, false), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(3213u, 4u)], true)))))));
    let var_2 = Struct_4(vec4<f32>(-524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x))), var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(var_1.x, var_1.x))), -2147483647i, 6480i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(max(var_1.x, 681f)), _wgslsmith_f_op_f32(ceil(1000f))) - vec3<f32>(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, false)), _wgslsmith_f_op_f32(min(-499f, var_1.x)), 1f))));
    let var_3 = Struct_1(select(u_input.b.ww, -reverseBits(u_input.b.zz), true) << (vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(33778u, 1u, 4225u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), ~(~1u)) % vec2<u32>(32u)), vec2<u32>(~firstLeadingBit(_wgslsmith_div_u32(1u, 56693u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(35921u, _wgslsmith_mult_u32(1u, 8401u)), 63740u)));
    global0 = _wgslsmith_f_op_f32(ceil(var_1.x));
    let var_4 = firstLeadingBit(reverseBits(var_2.b));
    var var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(var_4, 0i) << ((min(4294967295u, ~var_3.b.x) << (~var_3.b.x % 32u)) % 32u), var_3.b.x << (43303u % 32u), _wgslsmith_clamp_vec3_i32(-(u_input.b.zxx | _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_2.b, 32540i), u_input.b.wzw)), abs(u_input.b.wzw), u_input.b.yxy));
}

