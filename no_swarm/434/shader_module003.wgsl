struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<u32, 1> = array<u32, 1>(9875u);

var<private> global2: vec3<f32> = vec3<f32>(1047f, -1551f, 355f);

var<private> global3: array<vec2<u32>, 28>;

var<private> global4: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global1 = array<u32, 1>();
    let var_0 = ~((_wgslsmith_mult_i32(-1i >> (0u % 32u), countOneBits(u_input.d.x)) >> (0u % 32u)) >> (((global1[_wgslsmith_index_u32(0u, 1u)] & firstLeadingBit(93543u)) << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 1u), 1u, firstLeadingBit(4294967295u)) % 32u)) % 32u));
    var var_1 = abs(max(select(~reverseBits(vec3<i32>(var_0, 1i, var_0)), u_input.d, true), firstLeadingBit(vec3<i32>(~u_input.d.x, u_input.d.x, -var_0))));
    return -258f;
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * global2.x));
    var var_1 = Struct_3(_wgslsmith_sub_vec2_i32(~(-vec2<i32>(-1i, 2147483647i)) | (_wgslsmith_mod_vec2_i32(vec2<i32>(5005i, u_input.d.x), vec2<i32>(21161i, 297i)) | select(vec2<i32>(u_input.d.x, 1816i), global4.zx, vec2<bool>(false, true))), _wgslsmith_div_vec2_i32(-global4.zz, vec2<i32>(-38478i, -u_input.d.x))), ~_wgslsmith_sub_vec3_u32(u_input.b.wxz << (u_input.b.zyy % vec3<u32>(32u)), vec3<u32>(u_input.e, 35763u, 48427u)) | ~u_input.b.xwz, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(826f)), global2.x), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, global2.x, 1165f)))), ~(~u_input.b.yxw)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.yy) * global2.xx)), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), vec3<f32>(global2.x, -1507f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global2.x)), global2.x))), select(u_input.b.xzy, countOneBits(u_input.b.www), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, global2.x, 1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -710f, var_0) * vec3<f32>(-282f, 458f, var_0)))), _wgslsmith_div_vec2_i32(vec2<i32>(~u_input.d.x, global4.x), vec2<i32>(~(-2147483647i), ~(-32873i))), ~(~vec2<u32>(global1[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 11u)])), any(vec3<bool>(false, any(vec2<bool>(false, true)), global2.x >= var_0)), -_wgslsmith_mult_vec4_i32(vec4<i32>(global4.x, 36674i, 30728i, -34751i), vec4<i32>(global4.x, -1i, u_input.d.x, global4.x)) ^ vec4<i32>(1i, _wgslsmith_mod_i32(global4.x, u_input.d.x), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, global4.x, 1i)), u_input.d.x ^ u_input.d.x)));
    var var_2 = max(var_1.c.d.xy, var_1.d.d.xx);
    let var_3 = !vec4<bool>(!(!(u_input.d.x > 1i)), var_1.d.b, var_1.d.b, var_1.e.d && true);
    return ~min(vec3<u32>(~5363u | global0[_wgslsmith_index_u32(abs(0u), 11u)], ~reverseBits(var_1.b.x), global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<u32>(4294967295u, max(select(123391u, 4294967295u, var_3.x), global0[_wgslsmith_index_u32(var_1.c.d.x, 11u)]), _wgslsmith_mult_u32(select(58069u, var_1.b.x, false), u_input.b.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<f32>, arg_3: u32) -> vec3<u32> {
    global3 = array<vec2<u32>, 28>();
    let var_0 = global2.x;
    let var_1 = Struct_4(Struct_3(select(vec2<i32>(0i, _wgslsmith_sub_i32(62069i, global4.x)), u_input.d.yy, select(vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, false), arg_1 | arg_1)), u_input.b.xww, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -702f), 2133f), true, vec3<f32>(_wgslsmith_div_f32(832f, -981f), _wgslsmith_f_op_f32(-399f + arg_0.x), _wgslsmith_div_f32(508f, 261f)), func_2()), Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-891f, global2.x))), false, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1448f, 614f, arg_2.x) - vec3<f32>(global2.x, -1134f, arg_0.x)))), ~min(u_input.b.wxx, vec3<u32>(arg_3, global0[_wgslsmith_index_u32(4294967295u, 11u)], 2624u))), Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_2.yyw), arg_2.wyy)), -u_input.d.zy, vec2<u32>(u_input.b.x << (4294967295u % 32u), ~19784u), true, -abs(vec4<i32>(u_input.d.x, u_input.d.x, global4.x, global4.x)))), Struct_3(select(_wgslsmith_mod_vec2_i32(u_input.d.xy, vec2<i32>(2147483647i, global4.x)), vec2<i32>(global4.x, u_input.d.x), true) << (vec2<u32>(~global0[_wgslsmith_index_u32(12976u, 11u)], global0[_wgslsmith_index_u32(~3205u, 11u)]) % vec2<u32>(32u)), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40860u, 1u)], 1u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 1u)]), 0u << (0u % 32u)), global1[_wgslsmith_index_u32(37809u, 1u)], countOneBits(~global1[_wgslsmith_index_u32(4294967295u, 1u)])), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -581f))), arg_1, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 988f, global2.x), arg_2.yzz))), vec3<u32>(~global1[_wgslsmith_index_u32(821u, 1u)], ~4294967295u, 10142u)), Struct_1(vec2<f32>(-1394f, _wgslsmith_f_op_f32(-205f * -1196f)), false, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.x, global2.x, global2.x), arg_2.xyy)), u_input.b.xww), Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(arg_2.yxz)))), firstTrailingBit(global4.zx), ~u_input.a, -50400i <= (2147483647i | global4.x), -select(vec4<i32>(-20888i, 0i, 2147483647i, global4.x), vec4<i32>(global4.x, 2147483647i, 1i, 2147483647i), arg_1))), Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(290f, arg_0.x, -1730f))))), min(-(global4.yz & vec2<i32>(1i, global4.x)), _wgslsmith_mod_vec2_i32(firstLeadingBit(u_input.d.yx), vec2<i32>(18988i, global4.x))), u_input.b.yw, any(vec3<bool>(arg_1, arg_1, false)) == false, vec4<i32>(0i, -global4.x, 0i, ~(-1i))), arg_1, global2.x);
    global3 = array<vec2<u32>, 28>();
    return ~(~vec3<u32>(_wgslsmith_clamp_u32(100263u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17830u, 1u)], 1u)], 1u)], 11u)], var_1.a.e.c.x) >> (~35305u % 32u), ~(~var_1.b.b.x), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, select(false, false, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, all(vec4<bool>(false, false, true, true)), any(vec3<bool>(false, false, false))), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, select(true, true, false))), (-25372i << (global0[_wgslsmith_index_u32(~14196u, 11u)] % 32u)) != reverseBits(firstTrailingBit(47951i)));
    let var_1 = Struct_3(-global4.yz, min(~func_1(_wgslsmith_f_op_vec2_f32(-global2.yx), any(var_0.yy), vec4<f32>(global2.x, global2.x, -1462f, global2.x), u_input.c), ~(~_wgslsmith_sub_vec3_u32(u_input.b.xxz, vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10199u, 11u)], 11u)], 11u)], 44051u)))), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2.yx, global2.yz))))), var_0.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1225f, global2.x, 1413f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 1000f) + vec3<f32>(-517f, 290f, global2.x))))), vec3<u32>(func_2().x, 3500u, func_1(vec2<f32>(2230f, -749f), !var_0.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-561f, 618f, global2.x, global2.x), vec4<f32>(651f, 578f, global2.x, global2.x), var_0.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], 28u)], u_input.b.wx), 11u)]).x)), Struct_1(global2.yy, true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -102f, 777f) + vec3<f32>(global2.x, global2.x, global2.x))))), ~vec3<u32>(40350u, 0u, global1[_wgslsmith_index_u32(8559u, 1u)] << (0u % 32u))), Struct_2(vec3<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(trunc(global2.x))), vec2<i32>(-2147483647i, _wgslsmith_div_i32(659i, 1i)) ^ (_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(1i, -2147483647i)) >> (countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(69368u, 11u)], 0u)) % vec2<u32>(32u))), vec2<u32>(u_input.e, 16473u), (var_0.x & select(true, var_0.x, var_0.x)) || var_0.x, vec4<i32>(6853i, -firstTrailingBit(global4.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, -17016i, global4.x)), ~u_input.d), global4.x)));
    let var_2 = Struct_3(max(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 25657i) >> (var_1.c.d.yz % vec2<u32>(32u)), ~vec2<i32>(-1i, 2147483647i)), _wgslsmith_mod_i32(var_1.e.e.x, u_input.d.x) >> (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.d.x, 1u), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.c.d.x, 1u)], 1u)], 28u)]), 11u)] % 32u)), vec2<i32>(select(_wgslsmith_add_i32(u_input.d.x, var_1.e.b.x), _wgslsmith_add_i32(global4.x, -2147483647i), var_0.x), _wgslsmith_dot_vec2_i32(global4.xz, vec2<i32>(var_1.e.e.x, -14411i) | vec2<i32>(u_input.d.x, global4.x)))), ~vec3<u32>(~341u, 4294967295u, 56840u), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1874f, _wgslsmith_f_op_f32(max(616f, 1887f)))), var_1.d.b & var_1.e.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1557f, -748f, global2.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -2361f, 1804f))) + var_1.c.c), ~(~vec3<u32>(16167u, 15514u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)]))), var_1.c, var_1.e);
    let var_3 = ~vec2<u32>(86u, _wgslsmith_mod_u32(0u, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-818f, -971f) * var_2.d.c.yz), true, _wgslsmith_div_vec4_f32(vec4<f32>(var_2.e.a.x, 623f, 1000f, 693f), vec4<f32>(824f, global2.x, var_2.c.c.x, var_2.c.a.x)), 52005u).x));
    let var_4 = -3071i;
    global1 = array<u32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec3_i32(select(-u_input.d, u_input.d, select(vec3<bool>(var_0.x, true, var_0.x), var_0.ywz, var_0.x)), vec3<i32>(u_input.d.x, var_1.a.x, 1i) & var_1.e.e.yxx), ~countOneBits(var_2.e.e.zzz & vec3<i32>(var_1.a.x, var_4, 44876i)), var_1.e.d), select(reverseBits(_wgslsmith_clamp_vec4_u32(min(u_input.b, u_input.b), u_input.b, u_input.b)), _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(u_input.b, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7478u, 11u)], 1u)], 49206u, 0u, 51001u), vec4<u32>(var_3.x, var_2.b.x, u_input.c, 10083u))), true));
}

