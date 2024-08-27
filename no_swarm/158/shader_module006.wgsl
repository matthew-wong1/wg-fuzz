struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(-1i, i32(-2147483648), 2147483647i, 0i, 0i, -36016i, i32(-2147483648), i32(-2147483648), -1i, i32(-2147483648), 26075i, i32(-2147483648), -1i, -1i, 50773i, 58355i, 9024i, -1i, 2147483647i, -30944i, 0i, -16480i, -7727i, -113015i, -32904i, i32(-2147483648), i32(-2147483648), 49088i);

var<private> global1: array<Struct_2, 10>;

var<private> global2: array<vec4<i32>, 4>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2() -> bool {
    var var_0 = firstLeadingBit(_wgslsmith_sub_vec3_i32(countOneBits(reverseBits(-vec3<i32>(u_input.a, 56384i, global0[_wgslsmith_index_u32(1u, 28u)]))), abs(_wgslsmith_sub_vec3_i32(~vec3<i32>(0i, -33076i, u_input.a), max(vec3<i32>(global0[_wgslsmith_index_u32(0u, 28u)], 1i, u_input.a), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 28u)], 41183i, 2147483647i))))));
    global1 = array<Struct_2, 10>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(771f * _wgslsmith_f_op_f32(1116f + -128f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-317f, 2380f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(392f - -389f)))));
    global1 = array<Struct_2, 10>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1049f, -1000f))), _wgslsmith_div_vec2_f32(vec2<f32>(-629f, var_1), vec2<f32>(-294f, -1000f)))), _wgslsmith_div_vec2_f32(vec2<f32>(1003f, var_1), vec2<f32>(-291f, 1292f)), _wgslsmith_mult_u32(4294967295u, u_input.b) >= 24262u)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_1, -2306f), _wgslsmith_f_op_f32(-var_1)))));
    return false;
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_u32(min(~min(~vec2<u32>(u_input.b, 0u), vec2<u32>(0u, 107068u)), ~(~(~vec2<u32>(u_input.b, u_input.b)))), ~vec2<u32>(_wgslsmith_div_u32(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(u_input.b, 17025u, 109992u, 4294967295u))), reverseBits(9557u)));
    var var_1 = abs(select(firstLeadingBit(vec3<i32>(-2147483647i, 1i, global0[_wgslsmith_index_u32(var_0.x, 28u)])), vec3<i32>(-(global0[_wgslsmith_index_u32(u_input.b, 28u)] << (65054u % 32u)), firstTrailingBit(~u_input.a), _wgslsmith_sub_i32(arg_0.x, _wgslsmith_dot_vec3_i32(arg_0, arg_0))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))));
    var var_2 = -454f;
    let var_3 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, func_2(), false, !all(vec4<bool>(true, false, true, true))), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false))), vec4<bool>(all(vec2<bool>(select(true, false, true), var_0.x > 1u)), select(any(vec4<bool>(true, true, false, false)) && any(vec2<bool>(false, true)), any(vec3<bool>(true, false, false)) | (var_1.x >= arg_0.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 17772u), 28u)] < -29563i), true, func_2()), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(903f, 362f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-832f, -902f), vec2<f32>(796f, -549f), var_3.x))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-995f, 1551f) - vec2<f32>(-1000f, 407f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1255f, 550f) - vec2<f32>(476f, -1004f))))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-130f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(288f + -893f) - 110f))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(223f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -660f), _wgslsmith_f_op_f32(-var_4.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -452f))))), any(var_3.wyz)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(true != func_2(), true);
    var var_1 = ~firstLeadingBit(_wgslsmith_sub_i32(u_input.a, i32(-1i) * -global0[_wgslsmith_index_u32(27478u, 28u)]));
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-733f)), _wgslsmith_f_op_f32(func_3(vec3<i32>(33839i, global0[_wgslsmith_index_u32(69135u, 28u)], 34759i)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-884f, -1951f)) * _wgslsmith_div_vec2_f32(vec2<f32>(1917f, 875f), vec2<f32>(333f, 1991f))))), firstTrailingBit(4294967295u));
    global1 = array<Struct_2, 10>();
    let var_3 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(-(global2[_wgslsmith_index_u32(var_2.b, 4u)] & vec4<i32>(-21974i, global0[_wgslsmith_index_u32(var_2.b, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(u_input.b, 28u)])), global2[_wgslsmith_index_u32(u_input.b, 4u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-6374i), 1i, 1i, 2147483647i), ~vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 28u)], 15118i, global0[_wgslsmith_index_u32(0u, 28u)]), min(~vec4<i32>(506i, -17385i, global0[_wgslsmith_index_u32(var_2.b, 28u)], 2147483647i), _wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(var_2.b, 4u)], global2[_wgslsmith_index_u32(u_input.b, 4u)]))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.b, _wgslsmith_clamp_u32(u_input.b, var_2.b, 1u)), 4u)] << (~(~vec4<u32>(4294967295u, var_2.b, 22567u, u_input.b)) % vec4<u32>(32u))) & abs(~vec4<i32>(u_input.a, 28043i, ~0i, 55412i));
    return Struct_1(var_2.a.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    global2 = array<vec4<i32>, 4>();
    var var_0 = arg_2;
    let var_1 = -823f;
    return 590f;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    global1 = array<Struct_2, 10>();
    var var_0 = _wgslsmith_div_f32(524f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d * -900f) + 1f) - arg_1.x)));
    var var_1 = _wgslsmith_sub_vec3_u32(~abs(~firstLeadingBit(vec3<u32>(1u, arg_3, u_input.b))), ~(~vec3<u32>(arg_3, 0u, arg_3)) << (select(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_3, 1u, 4294967295u), ~vec3<u32>(arg_3, 23914u, arg_3)), countOneBits(vec3<u32>(2230u, arg_3, arg_3)), !all(vec2<bool>(false, true))) % vec3<u32>(32u)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(u_input.b, 28u)], u_input.a))) + _wgslsmith_f_op_f32(max(1884f, arg_2.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -125f)))), _wgslsmith_f_op_f32(1446f - _wgslsmith_f_op_f32(func_3(~(-vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(arg_3, 28u)], arg_2.c.x))))));
    var var_2 = !(!vec4<bool>(any(vec3<bool>(true, true, true)), false, select(func_2(), true, any(vec2<bool>(false, false))), select(global0[_wgslsmith_index_u32(u_input.b, 28u)], global0[_wgslsmith_index_u32(46589u, 28u)], true) < ~global0[_wgslsmith_index_u32(u_input.b, 28u)]));
    return Struct_1(arg_0.zx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 28>();
    global1 = array<Struct_2, 10>();
    let var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1318f))), 292f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1292f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1086f, 1566f, -1000f)))) - vec3<f32>(_wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(4294967295u ^ u_input.b, 28u)], Struct_2(Struct_1(vec2<f32>(-449f, -272f)), Struct_1(vec2<f32>(-876f, -1148f)), vec2<i32>(-11171i, -56559i), -1099f, vec2<i32>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(42198u, 28u)])), func_1())), -624f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f + -2174f)))), global1[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(~vec3<u32>(26753u, u_input.b, 59785u), ~vec3<u32>(1u, 54190u, 3563u)) | _wgslsmith_sub_u32(~42932u, u_input.b)) << (countOneBits(_wgslsmith_clamp_u32(firstTrailingBit(25989u), ~4294967295u, ~1u)) % 32u), 10u)], abs(~abs(u_input.b)) & ~firstTrailingBit(76139u));
    global0 = array<i32, 28>();
    global2 = array<vec4<i32>, 4>();
    global1 = array<Struct_2, 10>();
    let var_1 = vec4<bool>(false, func_2(), !(4294967295u != ~u_input.b), var_0.a.x <= _wgslsmith_f_op_f32(min(-975f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_0.a.x)))))));
    global2 = array<vec4<i32>, 4>();
    global2 = array<vec4<i32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>((_wgslsmith_clamp_i32(u_input.a, global0[_wgslsmith_index_u32(1u, 28u)], -52048i) | -14215i) ^ 4935i, u_input.a, -(~(-64377i)), global0[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 555f, var_0.a.x, var_0.a.x) - vec4<f32>(204f, var_0.a.x, var_0.a.x, var_0.a.x))))))), vec4<u32>(7075u, ~reverseBits(u_input.b), ~1u, ~_wgslsmith_clamp_u32(u_input.b, 59885u, u_input.b)));
}

