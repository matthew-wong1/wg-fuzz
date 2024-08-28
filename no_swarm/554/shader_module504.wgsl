struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: vec4<bool>;

var<private> global2: vec4<i32>;

var<private> global3: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-982f, -931f, 1955f, -341f), vec4<f32>(1456f, -138f, -1269f, -1000f), vec4<f32>(-1000f, -2122f, -1000f, -1299f), vec4<f32>(-738f, 374f, 1000f, -1669f), vec4<f32>(893f, -2241f, 1475f, 507f), vec4<f32>(-1000f, 319f, 323f, -2359f), vec4<f32>(-969f, -1339f, 1852f, 1472f), vec4<f32>(203f, 1000f, -341f, 1000f), vec4<f32>(-709f, -846f, 1660f, -920f), vec4<f32>(-364f, -942f, 448f, 655f), vec4<f32>(146f, 251f, -291f, 752f), vec4<f32>(-958f, 857f, -779f, 116f), vec4<f32>(-593f, -1797f, -1442f, -1000f), vec4<f32>(-1543f, -918f, -197f, 1000f), vec4<f32>(860f, -383f, 1364f, -1950f), vec4<f32>(-1107f, -818f, 838f, 2231f), vec4<f32>(-921f, 1166f, -309f, -844f), vec4<f32>(1000f, 235f, 1000f, -385f), vec4<f32>(-547f, 2098f, 106f, -1377f), vec4<f32>(469f, -2229f, -945f, 1971f), vec4<f32>(-1361f, 130f, -1590f, -1865f), vec4<f32>(551f, 989f, -1370f, -878f), vec4<f32>(-598f, -996f, 693f, 848f), vec4<f32>(485f, 667f, -519f, 155f), vec4<f32>(554f, 572f, 453f, 1505f), vec4<f32>(-386f, 346f, -947f, -1155f), vec4<f32>(253f, 436f, 1181f, 176f), vec4<f32>(1669f, -231f, 318f, 855f));

var<private> global4: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<i32>(-29485i, -13010i), true), Struct_1(vec2<i32>(-6508i, 106215i), false), Struct_1(vec2<i32>(-47762i, -14977i), false), Struct_1(vec2<i32>(i32(-2147483648), 28800i), true), Struct_1(vec2<i32>(1i, 2147483647i), false), Struct_1(vec2<i32>(2147483647i, 37535i), true), Struct_1(vec2<i32>(2147483647i, 2223i), false), Struct_1(vec2<i32>(2147483647i, 0i), true), Struct_1(vec2<i32>(12527i, -27039i), true), Struct_1(vec2<i32>(-67897i, 2147483647i), true), Struct_1(vec2<i32>(i32(-2147483648), -958i), true), Struct_1(vec2<i32>(-50115i, 34611i), true), Struct_1(vec2<i32>(0i, -1i), true), Struct_1(vec2<i32>(-1i, 0i), true), Struct_1(vec2<i32>(-1i, -42644i), false), Struct_1(vec2<i32>(23878i, 11328i), true), Struct_1(vec2<i32>(-32401i, i32(-2147483648)), true));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1328f)) - _wgslsmith_f_op_f32(ceil(-1681f))))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1056f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -166f)))) + _wgslsmith_f_op_f32(-1653f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(302f)))))));
    let var_1 = all(!(!select(vec4<bool>(false, global1.x, global1.x, true), select(vec4<bool>(true, global1.x, false, true), vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(true, true, global1.x, false)), false)));
    var var_2 = _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(round(-192f))));
    let var_3 = vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, global2.x, 1i, firstTrailingBit(u_input.a)), vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(12410i, 15235i, -2147483647i), global2.yzw), -12911i, 28549i), _wgslsmith_div_vec4_i32(vec4<i32>(-7385i, -37071i, -78445i, 42995i), select(vec4<i32>(global2.x, global2.x, u_input.a, global2.x), vec4<i32>(-8424i, -6413i, global2.x, 34949i), global1.x)));
    var var_4 = countOneBits(-1i);
    return global2.wx;
}

fn func_2(arg_0: vec4<f32>) -> vec4<u32> {
    let var_0 = Struct_1(-(func_3() ^ global2.xw) | global2.xx, true | any(global1.yyw));
    let var_1 = max(-_wgslsmith_div_vec3_i32(select(_wgslsmith_mod_vec3_i32(global2.xwy, global2.xyw), global2.wxz, !global1.x), ~vec3<i32>(u_input.a, global2.x, global2.x) | _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -33734i, var_0.a.x), vec3<i32>(var_0.a.x, global2.x, 10882i), vec3<i32>(1i, 1i, -44553i))), -_wgslsmith_div_vec3_i32(select(vec3<i32>(var_0.a.x, 7849i, u_input.a), vec3<i32>(global2.x, u_input.a, -1i), vec3<bool>(true, false, global1.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, var_0.a.x), vec3<i32>(global2.x, -67230i, global2.x), global2.wyy)) & firstTrailingBit(vec3<i32>(global2.x, _wgslsmith_div_i32(var_0.a.x, -10581i), -global2.x)));
    let var_2 = ~(vec3<u32>(~1u, 24219u, _wgslsmith_dot_vec4_u32(~vec4<u32>(21769u, 784u, 12958u, 1u), ~vec4<u32>(61097u, 1u, 41982u, 1u))) | vec3<u32>(1u, 1u, 1u));
    global1 = select(vec4<bool>(!(!(!global1.x)), var_0.b, true, true), vec4<bool>((_wgslsmith_div_f32(294f, 381f) <= _wgslsmith_f_op_f32(trunc(arg_0.x))) | ((global1.x & false) & var_0.b), var_0.b, _wgslsmith_f_op_f32(-arg_0.x) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(558f, 507f) * _wgslsmith_f_op_f32(floor(arg_0.x))), any(global1.xw)), vec4<bool>(~max(var_2.x, 41298u) >= (~0u >> (max(var_2.x, 60084u) % 32u)), false, var_0.b, false));
    var var_3 = _wgslsmith_dot_vec4_i32(-select(~vec4<i32>(2147483647i, -1i, global2.x, -5707i) & ~vec4<i32>(-66009i, -2147483647i, 1i, 2147483647i), select(vec4<i32>(1i, var_1.x, global2.x, -26897i), vec4<i32>(u_input.a, var_0.a.x, var_0.a.x, u_input.a), vec4<bool>(global1.x, var_0.b, var_0.b, global1.x)) ^ reverseBits(vec4<i32>(global2.x, 40514i, var_0.a.x, 0i)), vec4<bool>(!global1.x, true, var_0.b & true, var_0.b)), vec4<i32>(min(-2147483647i, reverseBits(1i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, -7236i, 47523i, global2.x), ~vec4<i32>(-42972i, var_0.a.x, -1i, var_1.x)), max(-1i, global2.x) | _wgslsmith_dot_vec2_i32(var_1.zz, _wgslsmith_mult_vec2_i32(global2.zx, vec2<i32>(var_0.a.x, u_input.a))), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-41740i), func_3().x, _wgslsmith_sub_i32(-51890i, var_1.x), _wgslsmith_clamp_i32(1i, u_input.a, 13700i)), min(vec4<i32>(-6402i, 1i, 1i, global2.x), -vec4<i32>(var_0.a.x, 9626i, 0i, -91145i)))));
    return vec4<u32>(var_2.x << (var_2.x % 32u), var_2.x, 1u, var_2.x);
}

fn func_1(arg_0: bool, arg_1: f32) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(exp2(arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) - arg_1), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(349f + -436f), true)), -869f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(0u, 28u)] + vec4<f32>(-328f, arg_1, arg_1, arg_1))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -766f, arg_1, 886f)))))));
    global1 = !(!(!(!select(vec4<bool>(false, arg_0, arg_0, global1.x), vec4<bool>(global1.x, false, global1.x, true), arg_0))));
    let var_1 = -1585f;
    var var_2 = global1.x;
    var var_3 = Struct_1(firstTrailingBit(global2.zx | abs(vec2<i32>(-2147483647i, u_input.a))), true);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 28>();
    global4 = array<Struct_1, 17>();
    global3 = array<vec4<f32>, 28>();
    var var_0 = Struct_1(vec2<i32>(-1i) * -global2.zz, true);
    var_0 = global4[_wgslsmith_index_u32(~func_1(false, _wgslsmith_f_op_f32(sign(385f))), 17u)];
    let var_1 = Struct_1(~_wgslsmith_mod_vec2_i32(global2.wx, reverseBits(var_0.a)), true);
    let var_2 = var_0.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(661f - 906f)), _wgslsmith_f_op_f32(-1000f * -1915f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(17863u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 4294967295u, 29833u), reverseBits(vec3<u32>(1u, 52174u, 4294967295u)), true), vec3<u32>(1u, 1u, 1u)), 38045u), ~(~(~vec3<u32>(1u, 1u, 1u))));
}

