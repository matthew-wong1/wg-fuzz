struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25>;

var<private> global1: array<vec3<f32>, 29>;

var<private> global2: array<vec2<f32>, 26>;

var<private> global3: Struct_3;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~arg_0, 29u)])) - global1[_wgslsmith_index_u32(firstLeadingBit(countOneBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_0, arg_0)), ~vec2<u32>(42023u, 26611u)))), 29u)]);
    let var_1 = (vec2<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(arg_0, arg_0)), ~arg_0) >> (~(~(~vec2<u32>(arg_0, 0u))) % vec2<u32>(32u))) >> (vec2<u32>(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(2317u, 4294967295u, 1u, 4363u), vec4<u32>(arg_0, arg_0, 4122u, arg_0) >> (vec4<u32>(arg_0, 1u, 0u, 21333u) % vec4<u32>(32u)))), firstLeadingBit(arg_0 ^ min(46782u, arg_0))) % vec2<u32>(32u));
    var var_2 = Struct_4(vec3<u32>(0u, ~42961u, 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-868f, var_0.x, var_0.x, var_0.x))) + vec4<f32>(1411f, -1263f, var_0.x, 1484f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1133f, 1278f)))), !any(vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(~arg_0, 29u)] - _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(arg_0, 25u)]))))), firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 6833u), ~vec2<u32>(arg_0, var_1.x)), ~(~var_1))));
    var var_3 = Struct_3(vec2<bool>(~select(var_2.d, var_2.d, false) <= ~_wgslsmith_sub_u32(arg_0, 16223u), _wgslsmith_sub_i32(-u_input.a.x, u_input.a.x) > -u_input.a.x));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_div_f32(var_2.b.x, var_0.x), var_0.x, var_2.b.x)))), (abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.d, var_1.x, var_1.x, var_2.a.x), vec4<u32>(4294967295u, 64348u, 0u, var_1.x))) << (reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 17309u, 1u, 0u), vec4<u32>(var_1.x, arg_0, 1u, 27438u))) % vec4<u32>(32u))) ^ reverseBits(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(41797u, 7261u, 31633u, var_1.x), vec4<u32>(1u, var_1.x, arg_0, var_2.d)))));
    return _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~var_4.b, ~var_4.b), firstTrailingBit(vec4<u32>(arg_0, var_4.b.x, var_4.b.x, var_2.a.x)) | vec4<u32>(arg_0, var_4.b.x, 41086u, 1u))) != 1u;
}

fn func_2() -> vec3<i32> {
    var var_0 = select(vec3<bool>(all(global3.a), !func_3(abs(33550u)), any(global3.a)), select(vec3<bool>(true, true, global3.a.x), !select(select(vec3<bool>(false, true, true), vec3<bool>(global3.a.x, false, true), vec3<bool>(global3.a.x, global3.a.x, true)), vec3<bool>(global3.a.x, false, global3.a.x), false), all(vec3<bool>(all(global3.a), false, true))), !global3.a.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(635f + -257f), -951f)), -127f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2119f)) - -468f), _wgslsmith_f_op_f32(round(469f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1379f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(250f * 1382f), _wgslsmith_f_op_f32(trunc(698f)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-146f))), 726f))), vec4<u32>(~(~_wgslsmith_div_u32(4294967295u, 14750u)), _wgslsmith_div_u32(~16200u, 16077u) << (abs(_wgslsmith_mod_u32(0u, 37629u)) % 32u), countOneBits(_wgslsmith_div_u32(1u, ~1u)), 47944u));
    let var_2 = Struct_1(var_1.a, var_1.b);
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a.x * 307f), _wgslsmith_f_op_f32(abs(-1110f)))))))));
    var var_4 = !select(vec3<bool>(select(15706i >= u_input.a.x, global3.a.x, var_3 < var_1.a.x), all(vec4<bool>(false, true, global3.a.x, global3.a.x)), select(select(global3.a.x, false, global3.a.x), all(vec3<bool>(global3.a.x, var_0.x, var_0.x)), var_1.a.x < var_2.a.x)), select(select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), !vec3<bool>(global3.a.x, var_0.x, false), !vec3<bool>(var_0.x, true, global3.a.x)), vec3<bool>(true, !global3.a.x, !var_0.x), vec3<bool>(all(vec3<bool>(var_0.x, true, true)), true, all(vec2<bool>(true, global3.a.x)))), vec3<bool>(any(!vec3<bool>(true, var_0.x, var_0.x)), var_0.x, func_3(4294967295u)));
    return _wgslsmith_mult_vec3_i32(firstTrailingBit(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a.x, -23937i, 1i), ~vec3<i32>(u_input.a.x, u_input.a.x, 4581i), vec3<i32>(u_input.a.x, u_input.a.x, 1068i))), abs(vec3<i32>(15519i, u_input.a.x, u_input.a.x)));
}

fn func_1() -> Struct_2 {
    var var_0 = select(vec3<i32>(-66619i, u_input.a.x, u_input.a.x), ~select(_wgslsmith_div_vec3_i32(vec3<i32>(-1436i, -13083i, -71978i), vec3<i32>(0i, -1i, u_input.a.x)) << (vec3<u32>(0u, 11721u, 41755u) % vec3<u32>(32u)), func_2(), true), select(select(vec3<bool>(!global3.a.x, global3.a.x, global3.a.x), !(!vec3<bool>(true, global3.a.x, false)), select(!vec3<bool>(global3.a.x, false, false), !vec3<bool>(global3.a.x, true, global3.a.x), global3.a.x)), !select(vec3<bool>(global3.a.x, false, global3.a.x), vec3<bool>(false, global3.a.x, true), vec3<bool>(global3.a.x, true, global3.a.x)), true));
    let var_1 = firstTrailingBit(vec3<u32>(23392u, 0u, max(21244u, ~0u | firstTrailingBit(0u))));
    global0 = array<vec3<f32>, 25>();
    global1 = array<vec3<f32>, 29>();
    var var_2 = var_1;
    return Struct_2(vec4<f32>(1f, 1f, 1f, 1f), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-154f + 1000f), _wgslsmith_f_op_f32(select(1398f, -1394f, global3.a.x)), -1835f, _wgslsmith_f_op_f32(f32(-1f) * -2418f))), select(firstLeadingBit(~vec4<u32>(var_1.x, var_1.x, var_2.x, var_2.x)), vec4<u32>(~21754u, var_2.x, _wgslsmith_mod_u32(14187u, 1u), firstTrailingBit(35850u)), vec4<bool>(global3.a.x, select(global3.a.x, true, global3.a.x), true, global3.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a.x;
    global3 = Struct_3(select(!(!(!global3.a)), global3.a, any(global3.a)));
    let var_1 = global0[_wgslsmith_index_u32(1u, 25u)];
    let var_2 = !(!global3.a);
    let var_3 = func_1();
    var var_4 = var_3.b;
    var var_5 = var_3.b.b.xy << (var_4.b.yy % vec2<u32>(32u));
    let var_6 = !select(!select(vec3<bool>(var_2.x, false, true), !vec3<bool>(false, var_2.x, false), vec3<bool>(true, true, true)), !(!(!vec3<bool>(var_2.x, var_2.x, true))), select(!vec3<bool>(var_2.x, true, true), !select(vec3<bool>(false, var_2.x, false), vec3<bool>(var_2.x, false, true), false), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, 4294967295u, var_3.b.b.x), select(reverseBits(max(var_3.b.b.wz, func_1().b.b.yw)), ~firstTrailingBit(var_3.b.b.ww) >> (vec2<u32>(4294967295u, _wgslsmith_sub_u32(1u, var_5.x)) % vec2<u32>(32u)), var_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1313f)), 128f, _wgslsmith_f_op_f32(floor(-609f)), _wgslsmith_f_op_f32(select(var_4.a.x, -1651f, var_2.x))) * _wgslsmith_f_op_vec4_f32(var_4.a + vec4<f32>(-1471f, var_4.a.x, -819f, var_1.x)))), var_5.x);
}

