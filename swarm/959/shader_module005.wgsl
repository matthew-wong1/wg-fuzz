struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<i32, 19>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(arg_2, max(global1[_wgslsmith_index_u32(arg_0.e.x, 19u)], global1[_wgslsmith_index_u32(arg_3.e.x, 19u)]), i32(-1i) * -1i, -1i)), vec4<i32>(max(arg_0.a.x, arg_3.a.x) ^ -2147483647i, -arg_1.x, -(i32(-1i) * -66212i), i32(-1i) * -286i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x - arg_0.d) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f * arg_3.b))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.d, _wgslsmith_f_op_f32(1137f + _wgslsmith_f_op_f32(arg_3.b - 1000f)), 731f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.b))))), arg_0.e);
    var var_1 = firstLeadingBit(~arg_0.a.x);
    let var_2 = !vec3<bool>(!select(true, true, any(vec2<bool>(false, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * var_0.c.x) < _wgslsmith_f_op_f32(-arg_0.c.x), !(_wgslsmith_mod_i32(arg_1.x, arg_1.x) > ~45053i));
    global0 = var_2;
    let var_3 = arg_0;
    return arg_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<bool> {
    global1 = array<i32, 19>();
    var var_0 = arg_2;
    let var_1 = arg_0;
    var var_2 = ~(~abs(arg_2.e));
    var var_3 = ~11034u;
    return !vec3<bool>(select(global0.x, false, true), false, true);
}

fn func_2() -> vec3<bool> {
    global0 = !select(select(!(!vec3<bool>(global0.x, true, true)), !vec3<bool>(global0.x, true, false), !global0.x), !select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), true), vec3<bool>(global0.x, global0.x, global0.x), global0.x), global0.x);
    global1 = array<i32, 19>();
    let var_0 = !func_4(Struct_1(vec4<i32>(_wgslsmith_mod_i32(-1i, global1[_wgslsmith_index_u32(22544u, 19u)]), firstLeadingBit(30782i), global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(138f - 315f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-589f, 1017f, -535f), vec3<f32>(-1588f, -209f, 1000f), true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2789f, 319f, -262f), vec3<f32>(765f, 975f, -1000f), global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-315f - -634f) * 1676f), min(vec2<u32>(u_input.a.x, 1u) >> (u_input.a.xy % vec2<u32>(32u)), vec2<u32>(u_input.a.x, u_input.a.x))), Struct_1(vec4<i32>(-1i, abs(global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), reverseBits(1i), -32568i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(320f + 1000f) * 580f), vec3<f32>(_wgslsmith_f_op_f32(-241f - -1334f), -989f, _wgslsmith_f_op_f32(f32(-1f) * -469f)), 1f, ~u_input.a.zy), Struct_1(func_3(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(33564u, 19u)], -1i, global1[_wgslsmith_index_u32(4294967295u, 19u)]), -219f, vec3<f32>(-374f, -127f, -497f), 1159f, vec2<u32>(19301u, 28973u)), _wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 25581i), vec3<i32>(global1[_wgslsmith_index_u32(1u, 19u)], 1i, -26187i)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(32271u, 1u, u_input.a.x, u_input.a.x)), 19u)], Struct_1(vec4<i32>(-1i, global1[_wgslsmith_index_u32(0u, 19u)], -11656i, global1[_wgslsmith_index_u32(4294967295u, 19u)]), 569f, vec3<f32>(372f, -1522f, -2002f), -330f, vec2<u32>(u_input.a.x, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), -354f, u_input.a.wx), -firstLeadingBit(-vec4<i32>(20008i, 31681i, 1i, 2147483647i)));
    global1 = array<i32, 19>();
    let var_1 = countOneBits(global1[_wgslsmith_index_u32(31488u, 19u)]);
    return func_4(Struct_1(vec4<i32>(var_1, _wgslsmith_mult_i32(-var_1, -2147483647i), min(2147483647i | var_1, 219i), -_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], -5597i)), -1333f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2530f), 150f, _wgslsmith_f_op_f32(step(1173f, -916f)))), -107f, ~max(_wgslsmith_clamp_vec2_u32(u_input.a.yw, vec2<u32>(63147u, u_input.a.x), u_input.a.xy), ~u_input.a.zz)), Struct_1(vec4<i32>(var_1, ~var_1, global1[_wgslsmith_index_u32(~(4294967295u >> (u_input.a.x % 32u)), 19u)], -global1[_wgslsmith_index_u32(abs(4294967295u), 19u)]), 529f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2075f, 837f, 1158f)))), _wgslsmith_div_f32(-1134f, 1f), vec2<u32>(1u, 5409u)), Struct_1(vec4<i32>(var_1 | global1[_wgslsmith_index_u32(u_input.a.x, 19u)], -var_1, _wgslsmith_mod_i32(var_1, global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), 18302i) ^ vec4<i32>(min(-13634i, global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), ~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-14383i, 1i), vec2<i32>(var_1, 1572i)), _wgslsmith_clamp_i32(2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1668f - 592f)))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(455f - -319f))), _wgslsmith_f_op_f32(select(-720f, _wgslsmith_f_op_f32(ceil(-521f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-189f, -305f)), _wgslsmith_mod_vec2_u32(u_input.a.ww, u_input.a.zz)), _wgslsmith_div_vec4_i32(select(vec4<i32>(2147483647i, 0i, i32(-1i) * -1i, 19843i), -abs(vec4<i32>(var_1, global1[_wgslsmith_index_u32(4294967295u, 19u)], -2147483647i, 1i)), vec4<bool>(true, true, global0.x, true)), vec4<i32>(~var_1, -13701i, 2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 19u)]) << (u_input.a % vec4<u32>(32u))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    global1 = array<i32, 19>();
    let var_0 = arg_1;
    let var_1 = reverseBits(u_input.a.x);
    global0 = select(!vec3<bool>(select(0u >= var_0.e.x, -25153i < var_0.a.x, true), true, !global0.x | !global0.x), func_2(), global0.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(186f))));
    return all(vec3<bool>(global0.x, all(vec2<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(true, global0.x, true, false)))), global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(!vec3<bool>(false, all(vec3<bool>(true, false, global0.x)), func_1(vec3<f32>(154f, -2225f, -1242f), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(17119u, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 21409i, -3731i), -280f, vec3<f32>(386f, 1000f, -1000f), 1000f, u_input.a.xx))), vec3<bool>(false, global0.x, func_4(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(21454u, 19u)]), -773f, vec3<f32>(133f, 117f, -1337f), 1000f, u_input.a.zz), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), 1000f, vec3<f32>(1855f, -1333f, -2503f), -622f, u_input.a.xw), Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(0u, 19u)], 10523i, global1[_wgslsmith_index_u32(16062u, 19u)], 55630i), -146f, vec3<f32>(356f, -233f, -557f), -594f, u_input.a.xy), countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], -11980i, -40360i, global1[_wgslsmith_index_u32(4294967295u, 19u)]))).x), 4294967295u == _wgslsmith_dot_vec2_u32(u_input.a.yw, ~u_input.a.zw));
    let var_0 = Struct_1(~vec4<i32>(global1[_wgslsmith_index_u32(~u_input.a.x, 19u)], -2147483647i, ~(-93430i), global1[_wgslsmith_index_u32(u_input.a.x, 19u)]) | select(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(93963u, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 1i, -2147483647i), vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 54743i, global1[_wgslsmith_index_u32(10603u, 19u)]), vec4<i32>(-22981i, global1[_wgslsmith_index_u32(14408u, 19u)], -1i, 1i)), vec4<i32>(_wgslsmith_mult_i32(0i, -2147483647i), _wgslsmith_sub_i32(-1960i, global1[_wgslsmith_index_u32(1u, 19u)]), ~global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 0i), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, false, global0.x, true), global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f))))), _wgslsmith_div_vec3_f32(vec3<f32>(520f, _wgslsmith_f_op_f32(105f - -168f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1213f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(997f, -1333f, -2007f) - vec3<f32>(682f, 569f, -365f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(191f, 292f, 540f))), vec3<bool>(false, false, true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1803f, -624f, -118f), vec3<f32>(1032f, -502f, 403f))))), _wgslsmith_f_op_f32(max(-138f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1207f, 874f)))))), vec2<u32>(abs(reverseBits(~38316u)), u_input.a.x));
    let var_1 = ~(-(~(-24349i)) & ~_wgslsmith_mod_i32(-global1[_wgslsmith_index_u32(0u, 19u)], _wgslsmith_div_i32(global1[_wgslsmith_index_u32(var_0.e.x, 19u)], 10774i)));
    let var_2 = _wgslsmith_div_u32((~var_0.e.x | var_0.e.x) ^ (85249u & var_0.e.x), 0u);
    global1 = array<i32, 19>();
    let var_3 = !global0.yx;
    global1 = array<i32, 19>();
    global1 = array<i32, 19>();
    let var_4 = !(!all(vec2<bool>(true, var_3.x))) || true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.xy, _wgslsmith_f_op_f32(sign(var_0.c.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(7226u, 42496u) >> (vec2<u32>(var_0.e.x, var_0.e.x) % vec2<u32>(32u)), var_0.e), var_1, vec3<u32>(countOneBits(u_input.a.x), 4294967295u, u_input.a.x));
}

