struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<f32>,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 12> = array<i32, 12>(-1i, 0i, -1i, i32(-2147483648), 18854i, -50977i, i32(-2147483648), 1i, 7807i, 38542i, -59827i, 5284i);

var<private> global2: array<u32, 19>;

var<private> global3: vec2<i32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<u32> {
    var var_0 = true;
    var_0 = any(!vec3<bool>(any(vec4<bool>(true, true, false, false)), true, all(vec3<bool>(true, false, false)) | all(vec3<bool>(true, true, true))));
    let var_1 = -vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, ~(~(-2147483647i)), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1505u, 19u)] ^ (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36994u, 19u)], 19u)], 19u)], 19u)] | 42200u), 12u)]), _wgslsmith_mult_i32(-global3.x, global3.x), 1i, abs(global1[_wgslsmith_index_u32(~91948u, 12u)]));
    let var_2 = ~((var_1 | vec4<i32>(21280i, 16773i, -u_input.a.x, ~var_1.x)) ^ var_1);
    global3 = (~u_input.a.zz >> (vec2<u32>(_wgslsmith_clamp_u32(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)], 19u)], 39111u), _wgslsmith_dot_vec3_u32(vec3<u32>(32943u, 166219u, 56007u), vec3<u32>(46248u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)])), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62282u, 19u)], 19u)], 1u)), ~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10619u, 19u)], 19u)], 19u)] ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 19u)])) % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(abs(~reverseBits(vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)]))), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 1u | ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17637u, 19u)], 19u)]), vec2<u32>(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<u32>(global2[_wgslsmith_index_u32(0u, 19u)], 725u)), 19u)], ~31790u), _wgslsmith_mod_u32(select(global2[_wgslsmith_index_u32(19191u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], true), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)]))) % vec2<u32>(32u));
    return _wgslsmith_sub_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59280u, 19u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)] % 32u), 19u)] | ~0u, global2[_wgslsmith_index_u32(~reverseBits(global2[_wgslsmith_index_u32(80524u, 19u)]), 19u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4878u, 19u)], 19u)]), vec3<u32>(~countOneBits(global2[_wgslsmith_index_u32(48302u, 19u)]), max(1u, 1u), global2[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45709u, 19u)], 19u)], 19u)], 61856u), _wgslsmith_add_u32(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)]), false), 19u)]) >> (~_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(21385u, global2[_wgslsmith_index_u32(107326u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)])), vec3<u32>(1u, 1u, global2[_wgslsmith_index_u32(4294967295u, 19u)])) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(step(1604f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -788f), _wgslsmith_f_op_f32(arg_1.e.x + 300f))))));
    var var_1 = Struct_1(select(vec3<u32>(4294967295u, arg_1.a.x, select(4294967295u, 0u, false)) | _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(arg_0.a.x, 19u)], arg_0.a.x, 0u)), _wgslsmith_clamp_vec3_u32(arg_0.a, arg_0.a, arg_1.a)), func_3(), arg_1.b), false | all(!vec2<bool>(true, arg_1.b)), arg_0.c, arg_1.d, arg_1.c);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-749f)));
    let var_3 = _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(min(firstTrailingBit(4294967295u), 21185u), var_1.a.x, arg_1.a.x)), arg_1.a);
    let var_4 = countOneBits(0u) == var_1.a.x;
    return _wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, ~_wgslsmith_clamp_i32(32299i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.a.x, 19u)], 12u)] ^ global1[_wgslsmith_index_u32(1477u, 12u)], max(global3.x, global1[_wgslsmith_index_u32(4294967295u, 12u)]))), _wgslsmith_mod_i32(countOneBits(~u_input.a.x), _wgslsmith_mult_i32(global3.x, global3.x) >> (var_1.a.x % 32u)));
}

fn func_1() -> u32 {
    let var_0 = -2147483647i;
    let var_1 = select(func_2(Struct_1(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(42783u, 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], 96571u) >> (vec3<u32>(global2[_wgslsmith_index_u32(43189u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12454u, 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)]) % vec3<u32>(32u)), true, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -891f), -1484f, -768f), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, 225f, -1151f))), Struct_1(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(8363u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)]), 19u)]), select(select(false, true, false), true, all(vec2<bool>(false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(124f, -757f, 147f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-898f, -1679f, 447f))), !(global1[_wgslsmith_index_u32(1u, 12u)] == 23388i), vec3<f32>(_wgslsmith_f_op_f32(555f - 1342f), _wgslsmith_f_op_f32(f32(-1f) * -883f), 735f))), ~(-19742i), true);
    var var_2 = !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true), false), vec2<bool>(true, true), vec2<bool>(false, any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false))));
    global3 = u_input.a.yz << (_wgslsmith_add_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40965u, 19u)], 19u)]), vec2<u32>(91161u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)]))), firstTrailingBit(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10611u, 19u)], 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)])), vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(86166u, 19u)], 19u)], 19u)], 19u)])))) % vec2<u32>(32u));
    let var_3 = 0i;
    return ~countOneBits(global2[_wgslsmith_index_u32(1u, 19u)]);
}

fn func_4(arg_0: vec3<u32>) -> u32 {
    global0 = arg_0.x >= max(24050u, 8429u);
    let var_0 = Struct_1(vec3<u32>(~1u, 41421u, global2[_wgslsmith_index_u32(25938u, 19u)]), !(_wgslsmith_mod_i32(global3.x << (global2[_wgslsmith_index_u32(arg_0.x, 19u)] % 32u), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.x, arg_0.x), 12u)]) >= _wgslsmith_sub_i32(-u_input.a.x, -1i)), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(517f))))), 644f), true, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, -386f) + vec3<f32>(554f, -1096f, 634f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-490f, 518f, 2136f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(243f, 219f, 202f))))))));
    let var_1 = vec2<i32>(global3.x, func_2(Struct_1(var_0.a, select(39168u > arg_0.x, 8211u == global2[_wgslsmith_index_u32(0u, 19u)], false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.c, vec3<f32>(1238f, 914f, var_0.e.x))) + _wgslsmith_f_op_vec3_f32(exp2(var_0.e))), any(select(vec4<bool>(false, var_0.d, false, true), vec4<bool>(true, false, false, var_0.d), vec4<bool>(var_0.b, true, false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, var_0.c.x, var_0.c.x)))), Struct_1(~vec3<u32>(arg_0.x, 17556u, arg_0.x), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.c, vec3<f32>(var_0.c.x, var_0.e.x, 964f)))), (var_0.c.x <= var_0.e.x) | true, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.e * vec3<f32>(var_0.e.x, 573f, var_0.e.x)))))));
    var var_2 = !select(select(select(!vec3<bool>(false, var_0.d, var_0.b), !vec3<bool>(var_0.d, var_0.b, var_0.d), select(false, true, false)), select(vec3<bool>(var_0.b, false, true), !vec3<bool>(var_0.b, var_0.d, true), true), true), vec3<bool>(true, true, true), var_0.d);
    var var_3 = var_0;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, ~5376u, ~var_3.a.x), ~(firstTrailingBit(var_3.a) ^ _wgslsmith_add_vec3_u32(arg_0, vec3<u32>(0u, global2[_wgslsmith_index_u32(var_0.a.x, 19u)], var_3.a.x)))) >> (6588u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 19>();
    var var_0 = func_4(vec3<u32>(_wgslsmith_mult_u32(select(global2[_wgslsmith_index_u32(4294967295u, 19u)], 38708u, true), 1u), _wgslsmith_mod_u32(func_1(), ~global2[_wgslsmith_index_u32(0u, 19u)]), ~(~global2[_wgslsmith_index_u32(22301u, 19u)])) >> (~vec3<u32>(0u, 23511u, 27158u) % vec3<u32>(32u)));
    global2 = array<u32, 19>();
    let var_1 = _wgslsmith_clamp_vec3_u32(~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(global2[_wgslsmith_index_u32(1u, 19u)], 26144u, 16042u)), vec3<u32>(52659u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(71741u, 19u)], 19u)], 19u)], 19u)] % 32u), firstTrailingBit(global2[_wgslsmith_index_u32(14788u, 19u)]), global2[_wgslsmith_index_u32(~62436u, 19u)])), ~(~(~vec3<u32>(global2[_wgslsmith_index_u32(52714u, 19u)], 1u, 4294967295u) >> (firstLeadingBit(vec3<u32>(17350u, 0u, global2[_wgslsmith_index_u32(75860u, 19u)])) % vec3<u32>(32u)))), vec3<u32>(~global2[_wgslsmith_index_u32(~4956u, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~50396u, 19u)], 19u)], _wgslsmith_mult_u32(4294967295u, ~(~global2[_wgslsmith_index_u32(21208u, 19u)]))));
    var var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(32207i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8936u, 19u)], 12u)], global3.x), vec3<i32>(26682i, global1[_wgslsmith_index_u32(1u, 12u)], global3.x)), -12696i), (~(~var_1.xy) ^ var_1.zx) << (~(~countOneBits(var_1.zx)) % vec2<u32>(32u)));
}

