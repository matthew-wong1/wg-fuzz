struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<f32, 22>;

var<private> global1: array<u32, 19>;

var<private> global2: bool;

var<private> global3: array<u32, 8> = array<u32, 8>(15203u, 4294967295u, 0u, 52276u, 19432u, 0u, 11379u, 0u);

var<private> global4: array<u32, 1>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec3<i32>) -> f32 {
    global2 = arg_0.x;
    var var_0 = arg_0.yxx;
    global0 = array<f32, 22>();
    global3 = array<u32, 8>();
    let var_1 = Struct_1(!arg_0, vec2<u32>(4294967295u, 1u));
    return -1072f;
}

fn func_3() -> bool {
    global1 = array<u32, 19>();
    global2 = any(select(select(vec3<bool>(false, all(vec3<bool>(true, true, false)), false), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), select(true, false, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true)), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), true), all(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -266f)) * _wgslsmith_f_op_f32(step(2280f, global0[_wgslsmith_index_u32(0u, 22u)])))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(72438u, 8u)], 19u)], 1u)], 1u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 8u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 19u)], 8u)]), 64328u) & ~abs(1u), countOneBits(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2232u, 19u)], 19u)]), 19u)])), 22u)]);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 22u)])) + global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(select(39817u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(60310u, 19u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8709u, 19u)], 1u)], 44452u), vec3<u32>(11907u, 0u, 11402u)), global3[_wgslsmith_index_u32(26296u, 8u)] ^ 4294967295u), false), 8u)], 19u)] >> (reverseBits(1u) % 32u), 22u)]);
    var var_1 = _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(~_wgslsmith_mult_i32(2147483647i, u_input.a), _wgslsmith_add_i32(u_input.a | -2147483647i, _wgslsmith_sub_i32(-46160i, -1i)))), vec2<i32>(u_input.a, u_input.a));
    return all(select(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(u_input.a >= u_input.a, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), !any(vec3<bool>(false, true, false))), true));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: bool, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_1(vec4<bool>(1i >= firstLeadingBit(firstTrailingBit(u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.d, -197f) * -262f) == _wgslsmith_f_op_f32(998f - arg_0.c.d), !(_wgslsmith_f_op_f32(func_2(vec4<bool>(arg_0.c.a.a.x, true, false, true), arg_0.b, vec3<i32>(8705i, 2147483647i, u_input.a))) < _wgslsmith_f_op_f32(exp2(arg_0.c.d))), func_3()), max(~(~arg_3), ~arg_0.a.xx));
    var var_1 = vec4<u32>(1092u, 4294967295u, 48636u, 34915u);
    global1 = array<u32, 19>();
    var var_2 = Struct_4(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(abs(70818u), _wgslsmith_add_u32(25628u, var_1.x), min(global3[_wgslsmith_index_u32(var_1.x, 8u)], 49518u)), arg_0.a, ~var_1.www >> (select(arg_0.a, var_1.xwz, arg_0.c.b.a.xxx) % vec3<u32>(32u))), vec3<u32>(var_1.x, 1u, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_3.x, _wgslsmith_mult_u32(0u, 0u)), 8u)])), arg_0.b, arg_0.c, vec3<bool>(any(!var_0.a), arg_1.a.x, !(!all(var_0.a))));
    return arg_0.c;
}

fn func_4(arg_0: Struct_4) -> u32 {
    global4 = array<u32, 1>();
    var var_0 = firstTrailingBit(abs(~arg_0.c.e.b));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c.d, arg_0.c.d)) * arg_0.c.d)))), -123f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(34622u, var_0.x) >> (max(1u, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13236u, 8u)], 8u)], 1u)]) % 32u)), 22u)]));
    var var_2 = arg_0.c.e.a;
    let var_3 = var_1.yz;
    return ~var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 83909u, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 1u)], 8u)]), global4[_wgslsmith_index_u32(15402u, 1u)], global3[_wgslsmith_index_u32(reverseBits(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69664u, 19u)], 19u)], 8u)]), 8u)], ~global1[_wgslsmith_index_u32(4294967295u, 19u)])) | ~(~(~select(vec4<u32>(global3[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(21496u, 19u)], 31039u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9136u, 19u)], 8u)]), vec4<u32>(1u, 0u, 1u, global1[_wgslsmith_index_u32(22057u, 19u)]), vec4<bool>(false, true, true, false))));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(trunc(-886f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(~vec2<u32>(global1[_wgslsmith_index_u32(23990u, 19u)], global4[_wgslsmith_index_u32(113978u, 1u)]), vec2<u32>(~40494u, abs(1u))), ~var_0.yw), 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -497f))), _wgslsmith_f_op_f32(min(1061f, global0[_wgslsmith_index_u32(~(~global4[_wgslsmith_index_u32(~var_0.x, 1u)]), 22u)])));
    global3 = array<u32, 8>();
    global2 = any(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec2<bool>(false, false)), true, true), _wgslsmith_f_op_f32(-var_1.x) != _wgslsmith_f_op_f32(-990f * var_1.x)));
    var var_2 = max(vec4<u32>(62074u, ~(~(~1u)), ~1u, countOneBits(firstLeadingBit(_wgslsmith_sub_u32(35932u, var_0.x)))), vec4<u32>(func_4(Struct_4(abs(vec3<u32>(global4[_wgslsmith_index_u32(4335u, 1u)], global1[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)])), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -48938i, 36578i), vec3<i32>(u_input.a, u_input.a, -15761i)), func_1(Struct_4(var_0.wwy, vec3<i32>(u_input.a, 1i, -1i), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 8u)], 12617u)), Struct_1(vec4<bool>(false, false, true, false), var_0.wz), vec4<bool>(true, false, false, false), -203f, Struct_1(vec4<bool>(true, false, false, false), var_0.zz)), vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, true, false)), true, vec2<u32>(0u, 0u)), vec3<bool>(false, false, true))), max(10431u << ((global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 8u)], 19u)] >> (0u % 32u)) % 32u), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(94812u, min(15038u, var_0.x)), 8u)]), ~0u >> (~(~0u) % 32u), ~(~min(global1[_wgslsmith_index_u32(4294967295u, 19u)], 4294967295u))));
    let var_3 = true;
    let var_4 = Struct_2(Struct_1(vec4<bool>(~(-9153i) == u_input.a, !all(vec2<bool>(var_3, false)), all(!vec2<bool>(var_3, var_3)), true), vec2<u32>(0u, 0u)), Struct_1(select(!func_1(Struct_4(vec3<u32>(77972u, 4294967295u, global4[_wgslsmith_index_u32(544u, 1u)]), vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_2(Struct_1(vec4<bool>(var_3, var_3, true, false), var_0.ww), Struct_1(vec4<bool>(var_3, var_3, var_3, var_3), vec2<u32>(19979u, 12835u)), vec4<bool>(var_3, false, true, var_3), 277f, Struct_1(vec4<bool>(var_3, true, true, false), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)], 19u)]))), vec3<bool>(true, var_3, true)), Struct_3(vec3<bool>(true, false, true)), true, var_0.yw).c, select(select(vec4<bool>(var_3, var_3, var_3, var_3), vec4<bool>(var_3, true, var_3, false), false), select(vec4<bool>(var_3, true, true, var_3), vec4<bool>(true, var_3, var_3, false), vec4<bool>(true, true, var_3, var_3)), select(vec4<bool>(false, false, false, var_3), vec4<bool>(var_3, var_3, var_3, true), var_3)), all(vec3<bool>(true, true, false))), ~firstTrailingBit(vec2<u32>(29424u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(46096u, 1u)], 1u)]))), vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(85598u, 22u)]) - _wgslsmith_div_f32(954f, var_1.x)) >= func_1(Struct_4(vec3<u32>(3895u, 8432u, 30529u), vec3<i32>(33712i, u_input.a, u_input.a), Struct_2(Struct_1(vec4<bool>(false, var_3, var_3, false), vec2<u32>(var_0.x, global1[_wgslsmith_index_u32(4294967295u, 19u)])), Struct_1(vec4<bool>(var_3, var_3, var_3, var_3), vec2<u32>(1u, var_0.x)), vec4<bool>(var_3, false, false, var_3), var_1.x, Struct_1(vec4<bool>(var_3, false, false, true), var_2.ww)), vec3<bool>(false, var_3, var_3)), Struct_3(vec3<bool>(var_3, true, var_3)), func_3(), ~var_0.xz).d, false, false), -1256f, Struct_1(!vec4<bool>(true, !var_3, all(vec4<bool>(false, var_3, var_3, true)), false), vec2<u32>(~global4[_wgslsmith_index_u32(func_1(Struct_4(vec3<u32>(global4[_wgslsmith_index_u32(13440u, 1u)], 104348u, var_0.x), vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_2(Struct_1(vec4<bool>(var_3, false, false, var_3), var_2.zy), Struct_1(vec4<bool>(var_3, true, false, false), var_0.yy), vec4<bool>(var_3, var_3, true, false), 1726f, Struct_1(vec4<bool>(var_3, false, var_3, var_3), vec2<u32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 1u)], 1u)], 19u)], 0u))), vec3<bool>(false, true, var_3)), Struct_3(vec3<bool>(var_3, false, var_3)), false, var_0.zx).e.b.x, 1u)], firstLeadingBit(_wgslsmith_add_u32(65002u, global1[_wgslsmith_index_u32(var_2.x, 19u)])))));
    let var_5 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(-firstTrailingBit(1i), abs(u_input.a) ^ -u_input.a), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), firstTrailingBit(-2147483647i)) ^ _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, -11348i), 1i)), u_input.a);
    let var_6 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 0i, _wgslsmith_sub_i32(var_5.x | 0i, _wgslsmith_mod_i32(0i, _wgslsmith_mult_i32(var_5.x, -1i)))), vec3<i32>(_wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 26110i, u_input.a), vec3<i32>(27719i, var_5.x, 25602i))), -min(-23928i, -2147483647i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, var_5.x, 0i) << (vec4<u32>(16962u, 0u, var_2.x, var_0.x) % vec4<u32>(32u)), -vec4<i32>(u_input.a, -1i, 23043i, u_input.a)), countOneBits(abs(vec4<i32>(2147483647i, -1i, u_input.a, u_input.a)))), min(_wgslsmith_dot_vec2_i32(vec2<i32>(var_5.x, 30180i) << (var_0.zz % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_5.x, var_5.x), var_5)), ~max(-1i, 9250i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-234f, -111f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-164f - _wgslsmith_f_op_f32(select(var_1.x, 547f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-773f + -1408f)))), var_6.x);
}

