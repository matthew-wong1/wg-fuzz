struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 20>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 81839u, 4294967295u, 1u);

var<private> global3: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<f32>(1727f, 455f, -814f), true)), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<f32>(-1874f, 547f, 1000f), true)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<f32>(1020f, -141f, -637f), true)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec3<f32>(-245f, -561f, -130f), false)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<f32>(618f, -230f, 833f), false)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<f32>(-422f, -176f, 1279f), false)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<f32>(812f, -1085f, 2990f), true)), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<f32>(-2386f, 421f, -381f), false)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<f32>(-1147f, 1532f, -1318f), true)), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<f32>(-2246f, 664f, -455f), false)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<f32>(-912f, 900f, -177f), true)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<f32>(400f, 1000f, -1305f), false)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<f32>(414f, -285f, -377f), true)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<f32>(-1496f, -744f, 221f), false)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<f32>(-1695f, 2144f, -347f), true)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec3<f32>(-357f, -1290f, 859f), false)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<f32>(-564f, 598f, -672f), true)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<f32>(-949f, 526f, -854f), false)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec3<f32>(-995f, 141f, -150f), true)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<f32>(-196f, 1705f, 219f), true)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<f32>(1283f, -2706f, -1000f), true)), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<f32>(928f, -579f, -242f), true)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec3<f32>(909f, 753f, -305f), false)), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<f32>(402f, 1000f, 1610f), false)), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<f32>(-1083f, -2210f, -1361f), true)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<f32>(359f, -1540f, 400f), false)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<f32>(-204f, 3253f, -1204f), false)), Struct_2(vec3<bool>(true, true, false), Struct_1(vec3<f32>(1000f, 157f, 168f), false)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec3<f32>(-552f, 1496f, 1126f), true)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<f32>(586f, -102f, 1130f), false)));

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b.a.x, arg_1.b.a.x, false))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.a.x, 909f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(822f * global4.b.a.x), 1776f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.a.x)));
    var var_1 = arg_1.b;
    let var_2 = arg_1;
    let var_3 = -2147483647i;
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_2.b.a)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = global4.b;
    let var_1 = any(vec4<bool>(!(var_0.a.x <= -328f), true, true, true)) & true;
    global4 = Struct_2(!vec3<bool>(true, any(!vec4<bool>(var_0.b, var_0.b, false, var_1)), any(select(global4.a, global4.a, global4.a))), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(-1i, Struct_2(vec3<bool>(false, var_1, global4.a.x), global4.b))), any(vec2<bool>(global2.x == global2.x, !var_1))));
    global4 = Struct_2(!vec3<bool>(firstTrailingBit(1u) >= ~1u, all(select(vec4<bool>(var_0.b, false, false, true), vec4<bool>(true, global4.b.b, var_1, var_1), vec4<bool>(var_0.b, var_1, global4.b.b, false))), !all(vec4<bool>(var_1, global4.b.b, global4.b.b, false))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x * 384f), _wgslsmith_f_op_f32(-137f - 281f))), var_1));
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(min(_wgslsmith_mod_i32(arg_0, u_input.b), _wgslsmith_div_i32(u_input.b, u_input.b)), arg_0 & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0), vec2<i32>(1i, 0i))), ~(-u_input.b)), max(abs(vec2<i32>(arg_0, 13792i) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), reverseBits(vec2<i32>(0i, arg_0) << (global2.xx % vec2<u32>(32u))) & ~(~vec2<i32>(2147483647i, u_input.b))));
    return Struct_2(global4.a, Struct_1(global4.b.a, true));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_2 {
    global4 = func_2(~(~_wgslsmith_div_i32(u_input.b, -20728i)) << ((~_wgslsmith_add_u32(global2.x, arg_0.x) | 33351u) % 32u));
    global1 = array<Struct_2, 20>();
    var var_0 = global4.b.b;
    return Struct_2(vec3<bool>(true, !(firstTrailingBit(global2.x) < ~arg_0.x), true), func_2(_wgslsmith_mod_i32(~1i, -62079i)).b);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.a.x, -289f)), _wgslsmith_f_op_f32(global4.b.a.x * arg_1.a.x), _wgslsmith_f_op_f32(-914f * 211f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.b.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + -1314f)) + _wgslsmith_f_op_f32(abs(345f))) == arg_1.a.x);
    var var_1 = func_4(vec2<u32>(~firstTrailingBit(41223u), ~51863u), vec4<bool>(all(select(select(vec3<bool>(var_0.b, true, global4.b.b), vec3<bool>(true, true, var_0.b), vec3<bool>(var_0.b, false, global4.a.x)), vec3<bool>(true, false, global4.b.b), u_input.b <= -24445i)), arg_2 < ~arg_2, global4.b.b, false & !(!arg_1.b)), func_2(u_input.b));
    var var_2 = func_2(~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-4731i, -u_input.a), 23392i, i32(-1i) * -2147483647i)).b;
    let var_3 = _wgslsmith_sub_vec3_i32(min(~(-vec3<i32>(u_input.a, 1i, arg_0.x)), ~(~_wgslsmith_mult_vec3_i32(arg_0, arg_0))), vec3<i32>(~arg_0.x, u_input.a, u_input.a ^ ~arg_0.x));
    return global1[_wgslsmith_index_u32(abs(~select(arg_2, 28468u, arg_2 > 25396u) | arg_2), 20u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_2(firstTrailingBit(~(~u_input.a) << (~global2.x % 32u)));
    global4 = func_4(vec2<u32>(max(~global2.x, 60557u), global2.x), select(!select(!vec4<bool>(false, global4.a.x, arg_1.b.b, false), select(vec4<bool>(false, var_0.b.b, false, false), vec4<bool>(global4.b.b, global4.a.x, true, true), vec4<bool>(var_0.b.b, var_0.a.x, true, false)), !vec4<bool>(global4.b.b, false, false, arg_1.a.x)), select(select(vec4<bool>(var_0.b.b, var_0.b.b, arg_0.a.x, var_0.a.x), select(vec4<bool>(arg_0.a.x, false, false, true), vec4<bool>(false, global4.b.b, arg_0.b.b, var_0.b.b), true), arg_1.a.x), vec4<bool>(func_2(u_input.b).a.x, !arg_0.a.x, func_4(vec2<u32>(global2.x, global2.x), vec4<bool>(arg_1.b.b, arg_0.a.x, false, true), arg_0).b.b, true), arg_0.b.b), true || func_1(vec3<i32>(u_input.a, 26187i, -49490i), Struct_1(vec3<f32>(var_0.b.a.x, 811f, -1065f), true), _wgslsmith_div_u32(0u, global2.x)).a.x), global3[_wgslsmith_index_u32(firstLeadingBit(reverseBits(~_wgslsmith_clamp_u32(global2.x, 1u, 35823u))), 30u)]);
    global3 = array<Struct_2, 30>();
    let var_1 = vec2<bool>(!var_0.a.x, _wgslsmith_dot_vec2_u32(~(vec2<u32>(global2.x, 0u) >> (global2.yy % vec2<u32>(32u))), global2.zz) < (_wgslsmith_mult_u32(~global2.x, 0u) ^ (_wgslsmith_sub_u32(global2.x, global2.x) << (select(global2.x, global2.x, var_0.a.x) % 32u))));
    let var_2 = select(vec4<bool>(select((u_input.b >> (global2.x % 32u)) < _wgslsmith_mult_i32(-1i, u_input.a), false, false | (var_0.a.x && global4.a.x)), !(!(861f <= var_0.b.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(1i, global3[_wgslsmith_index_u32(global2.x, 30u)])).x + _wgslsmith_f_op_f32(sign(-271f))) == _wgslsmith_f_op_f32(global4.b.a.x * _wgslsmith_f_op_f32(-var_0.b.a.x)), true | (global2.x == global2.x)), !(!select(!vec4<bool>(false, false, global4.a.x, arg_0.a.x), select(vec4<bool>(arg_1.b.b, global4.b.b, false, var_0.a.x), vec4<bool>(true, true, true, true), true), global4.a.x)), vec4<bool>(true, func_4(vec2<u32>(1u, global2.x), select(vec4<bool>(true, var_1.x, var_0.a.x, true), !vec4<bool>(false, var_1.x, global4.a.x, var_0.a.x), select(false, false, true)), arg_0).b.b, false, any(!func_1(vec3<i32>(-2147483647i, 13487i, u_input.a), global4.b, global2.x).a)));
    return func_1(vec3<i32>(-1i, u_input.b, _wgslsmith_div_i32(~1i, u_input.b)) << (select(vec3<u32>(0u, ~1u, 0u), ~(~global2.zwy), func_2(_wgslsmith_div_i32(14835i, -45022i)).a) % vec3<u32>(32u)), global4.b, ~0u).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global3[_wgslsmith_index_u32(~max(global2.x, ~_wgslsmith_clamp_u32(global2.x, 4294967295u, global2.x)), 30u)], func_1(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 2147483647i)), countOneBits(~vec3<i32>(1i, 1i, u_input.b))), global4.b, _wgslsmith_sub_u32(82748u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(global2.x, global2.x, global2.x), global2.x))));
    let var_1 = vec4<i32>((u_input.b << (50763u % 32u)) & select(u_input.a, i32(-1i) * -6972i, true), (max(u_input.b, u_input.a >> (23225u % 32u)) ^ ~(-2147483647i >> (0u % 32u))) << (~global2.x % 32u), -abs(u_input.a), -1i);
    let var_2 = func_1(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(var_1.ww, vec2<i32>(~1i, ~u_input.a)), var_1.x), global4.b, _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(global2.x, 1u, 4294967295u, 4294967295u) & vec4<u32>(global2.x, 1u, 69349u, global2.x))), reverseBits(vec4<u32>(4294967295u, 35240u, 12211u, 26199u)) & min(vec4<u32>(global2.x, 0u, 63522u, 10595u) & vec4<u32>(global2.x, 0u, global2.x, 2186u), reverseBits(vec4<u32>(global2.x, global2.x, 4429u, global2.x))))).b;
    global1 = array<Struct_2, 20>();
    var_0 = global4.b;
    let var_3 = Struct_1(global4.b.a, global4.b.b);
    let var_4 = -vec4<i32>(abs(1i), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, var_1.x), -64689i), var_1.x), max(u_input.a, -u_input.b), -4640i);
    var var_5 = var_0.a.x;
    let var_6 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(global2.ww, vec2<u32>(global2.x, ~global2.x)), (global2.x | ~(~25981u)) | global2.x);
}

