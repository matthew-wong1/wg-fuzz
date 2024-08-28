struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(false, true, true, false, false, true, false, true, true, false, true, true, false);

var<private> global1: Struct_1 = Struct_1(1281f, false, 338f, -1000f);

var<private> global2: u32 = 0u;

var<private> global3: Struct_2 = Struct_2(true, 1u, vec4<f32>(369f, 334f, -344f, 447f), vec2<f32>(-985f, 1040f), Struct_1(2001f, false, 175f, 226f));

var<private> global4: vec3<f32> = vec3<f32>(-1297f, -1265f, -1446f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c.zyz) * _wgslsmith_f_op_vec3_f32(exp2(global3.c.zxx))) * global3.c.wxw)));
    var var_0 = firstTrailingBit(arg_0.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - 1000f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(943f + var_1) * global4.x);
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, -1000f, global4.x) * global3.c.wyw) + _wgslsmith_f_op_vec3_f32(-global3.c.yyw)) - global3.c.wyz)));
    return max(_wgslsmith_dot_vec2_i32(-(vec2<i32>(-27259i, 28101i) << (~vec2<u32>(1u, arg_0.x) % vec2<u32>(32u))), vec2<i32>(-1i) * -vec2<i32>(arg_2, u_input.b)), select(u_input.b, 45575i, true));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    global1 = Struct_1(global4.x, global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.e.d)))), -117f);
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1355f), _wgslsmith_f_op_f32(-234f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-727f - 608f), _wgslsmith_f_op_f32(f32(-1f) * -515f)))));
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(u_input.b, _wgslsmith_add_i32(~(-66180i), ~u_input.b)), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1250i, u_input.b), vec2<i32>(-24284i, u_input.b) | vec2<i32>(2147483647i, u_input.b))), select(u_input.b, i32(-1i) * -8730i, any(vec3<bool>(false, global3.a, true))), func_3(~u_input.d, vec4<bool>(all(vec4<bool>(true, global3.a, false, global3.e.b)), !global3.a, global3.a, true), u_input.b)) ^ _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(reverseBits(2147483647i), u_input.b >> (0u % 32u), i32(-1i) * -2147483647i, -2147483647i)), -reverseBits(-vec4<i32>(-29929i, -23192i, u_input.b, u_input.b)));
    let var_2 = arg_0.x;
    return var_0.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = true;
    let var_1 = global3.e;
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1789f * var_1.d), _wgslsmith_f_op_f32(-global3.d.x), any(arg_0.zy))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c.x - 468f), _wgslsmith_f_op_f32(global4.x - global1.c)))));
    global3 = Struct_2(any(vec4<bool>(!any(vec4<bool>(var_0, false, global1.b, global0[_wgslsmith_index_u32(28745u, 13u)])), false, !global1.b, all(select(arg_0.wwx, vec3<bool>(true, false, arg_0.x), var_0)))), 75229u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3.c), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global4.x, global3.c.x, -1397f, 510f))), select(arg_0, arg_0, arg_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1680f, -775f, global1.a, global4.x), vec4<f32>(-766f, 1000f, var_1.c, global3.e.d))) - global3.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, -2410f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global1.c, var_1.d)), _wgslsmith_f_op_f32(trunc(231f))) + global3.d)), global3.e);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - 934f), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.d.x, _wgslsmith_f_op_f32(-var_1.a))) + _wgslsmith_f_op_f32(ceil(global4.x))) - global1.a), _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.d.yx, global3.e)))));
    return Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.a + var_2.d))) * var_2.c))), arg_0.x, var_2.d, _wgslsmith_f_op_f32(-global1.a));
}

fn func_1() -> Struct_1 {
    global1 = func_4(select(vec4<bool>(u_input.b <= u_input.b, _wgslsmith_f_op_f32(func_2(u_input.c.wz, global3.e)) >= _wgslsmith_f_op_f32(global3.d.x - global3.e.a), !(!global3.a), _wgslsmith_f_op_f32(floor(-1539f)) == _wgslsmith_f_op_f32(ceil(1000f))), select(!(!vec4<bool>(global3.a, false, global3.a, true)), !vec4<bool>(false, true, global1.b, global3.e.b), false), !all(vec4<bool>(global3.a, global1.b, false, global0[_wgslsmith_index_u32(global3.b, 13u)]))), ~(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global3.b, 9042u, u_input.c.x, 90225u)), ~u_input.c)));
    return func_4(!vec4<bool>(!(!global3.e.b), any(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 13u)], false)), global0[_wgslsmith_index_u32(global3.b, 13u)], false), ~4294967295u);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> vec3<u32> {
    let var_0 = ~(~select(u_input.d, vec3<u32>(4294967295u, ~7695u, _wgslsmith_div_u32(0u, u_input.a)), select(vec3<bool>(true, true, global3.e.b), !vec3<bool>(arg_0.b, false, global3.e.b), true)));
    return ~u_input.c.xxx;
}

fn func_6(arg_0: vec3<u32>, arg_1: bool) -> f32 {
    var var_0 = true;
    let var_1 = ~_wgslsmith_clamp_vec4_u32(u_input.c, reverseBits(vec4<u32>(~1u, ~u_input.c.x, global3.b, 16886u)), u_input.c);
    var var_2 = Struct_2(!func_4(vec4<bool>(global1.b, u_input.b > -2147483647i, global1.b, all(vec4<bool>(global1.b, false, arg_1, false))), ~_wgslsmith_mult_u32(45024u, global3.b)).b, ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x), vec2<u32>(26389u, 4294967295u)))), global3.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-641f * _wgslsmith_f_op_f32(-global4.x)), -1000f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(578f, _wgslsmith_div_f32(-714f, 1120f))), true, _wgslsmith_f_op_f32(step(-507f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e.c) - -190f))), global1.a));
    var var_3 = Struct_2(arg_0.x <= 16139u, var_2.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_2.c * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.d, var_2.c.x, global4.x, global3.d.x), var_2.c))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.x, -127f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(410f, global1.d) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.yz - vec2<f32>(-211f, -1170f))))), Struct_1(global1.c, !func_1().b, global1.d, global3.c.x));
    var var_4 = -875f;
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-258f)), 376f)))), _wgslsmith_f_op_f32(-global3.e.a))), min(_wgslsmith_add_i32(~18332i, -u_input.b), u_input.b) != _wgslsmith_sub_i32(min(66787i, abs(2147483647i)), ~select(u_input.b, -2147483647i, true)), _wgslsmith_f_op_f32(func_6(countOneBits(~vec3<u32>(5926u, 91237u, global3.b)) & func_5(func_1(), vec2<f32>(global1.d, global4.x), select(vec2<bool>(true, global3.e.b), vec2<bool>(true, global3.e.b), global3.e.b), select(vec3<i32>(-4576i, u_input.b, 1i), vec3<i32>(2147483647i, -1i, -26713i), false)), !any(vec4<bool>(global3.a, global0[_wgslsmith_index_u32(4294967295u, 13u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 13u)])) && true)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -788f)), _wgslsmith_f_op_f32(1802f * _wgslsmith_f_op_f32(min(global1.a, global1.d)))), global1.a));
    var var_1 = vec3<i32>(abs(~u_input.b), ~u_input.b, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, 45067i), vec3<i32>(u_input.b, -37338i, -2147483647i))), vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, -54580i))));
    let var_2 = _wgslsmith_mod_vec2_u32(~(~(u_input.d.yy | (u_input.d.xy << (u_input.c.yw % vec2<u32>(32u))))), select(u_input.c.yy, u_input.c.yx, select(vec2<bool>(false, global0[_wgslsmith_index_u32(min(1u, global3.b), 13u)]), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, var_0.b, false)), global0[_wgslsmith_index_u32(countOneBits(1u), 13u)]))));
    global2 = u_input.c.x;
    global2 = 4189u;
    var_1 = vec3<i32>(-21849i, max(0i, -var_1.x) ^ _wgslsmith_mult_i32(reverseBits(2747i), (i32(-1i) * -23737i) ^ abs(u_input.b)), -(_wgslsmith_sub_i32(var_1.x, -24361i) << (~u_input.c.x % 32u)) | _wgslsmith_div_i32(-1i, -38776i));
    let var_3 = ~(-11604i);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec4_u32(~u_input.c, u_input.c, min(vec4<u32>(u_input.d.x, 4701u, 86174u, 0u) & u_input.c, vec4<u32>(0u, var_2.x, 25128u, 1u))), ~select(u_input.c, vec4<u32>(1u, var_2.x, 0u, 1u), global0[_wgslsmith_index_u32(0u, 13u)]) << (select(u_input.c, vec4<u32>(var_2.x, 20113u, 44873u, var_2.x), !vec4<bool>(false, true, var_0.b, true)) % vec4<u32>(32u)), !select(vec4<bool>(true, var_0.b, true, global3.e.b), select(vec4<bool>(global0[_wgslsmith_index_u32(var_2.x, 13u)], false, var_0.b, global0[_wgslsmith_index_u32(36328u, 13u)]), vec4<bool>(global3.a, true, global0[_wgslsmith_index_u32(var_2.x, 13u)], false), global1.b), all(vec2<bool>(false, false)))));
}

