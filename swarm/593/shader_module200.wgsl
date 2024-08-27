struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, vec3<bool>(true, false, false), 1u, Struct_1(0u, vec4<f32>(1023f, -247f, -142f, -572f), -1381f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = false;
    var var_1 = Struct_2(!global0.a, global0.b, max(35903u, ~global0.d.a), arg_0);
    var_1 = Struct_2(all(var_1.b), select(!vec3<bool>(true, true, !var_1.b.x), var_1.b, vec3<bool>(false, true, true)), ((1u >> (var_1.c % 32u)) & global0.c) ^ firstLeadingBit(~(~0u)), Struct_1(_wgslsmith_div_u32(~arg_0.a, u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.c)), 2104f, _wgslsmith_f_op_f32(step(894f, _wgslsmith_f_op_f32(ceil(285f)))), 522f), var_1.d.b.x));
    let var_2 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 0i, _wgslsmith_clamp_i32(-u_input.b, 50158i, -9629i)), -(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)) | -vec3<i32>(u_input.b, 0i, 0i)), ~(-vec3<i32>(2147483647i, 4536i, u_input.b) & select(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(u_input.b, u_input.b, 2147483647i), true)));
    var_1 = Struct_2(!(!(316f >= _wgslsmith_f_op_f32(round(arg_0.c)))), global0.b, ~22290u, Struct_1(min(u_input.a.x, 72211u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global0.d.b, vec4<f32>(global0.d.b.x, arg_0.c, 797f, 234f))) + var_1.d.b), vec4<f32>(_wgslsmith_f_op_f32(-global0.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -998f), _wgslsmith_f_op_f32(1000f * -638f), arg_0.c), false)), _wgslsmith_f_op_f32(sign(global0.d.c))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(232f)))));
}

fn func_2() -> vec2<i32> {
    global0 = Struct_2(false, global0.b, 36137u ^ global0.d.a, global0.d);
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(979f, -346f), vec2<f32>(global0.d.c, 1286f), global0.a))), global0.d.b.zx))) + global0.d.b.wx);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_1(global0.c, vec4<f32>(1558f, -1252f, -655f, 2058f), global0.d.b.x)))));
    global0 = Struct_2(true, global0.b, ~global0.c, global0.d);
    global0 = Struct_2(global0.b.x, global0.b, _wgslsmith_add_u32(39498u, ~global0.d.a), Struct_1(73450u, vec4<f32>(444f, _wgslsmith_f_op_f32(f32(-1f) * -437f), global0.d.c, global0.d.c), global0.d.c));
    return vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b, -14410i, 0i), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -24053i), vec3<i32>(u_input.b, u_input.b, 0i)) >> (_wgslsmith_clamp_vec3_u32(u_input.a.zxz, u_input.a.zzx, u_input.a.xzy) % vec3<u32>(32u))), vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(48864i, u_input.b)), min(-1i, u_input.b) >> (1u % 32u), u_input.b)), _wgslsmith_add_i32(1i, 2147483647i | u_input.b));
}

fn func_4(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = u_input.a.xxz;
    global0 = Struct_2(global0.b.x, global0.b, ~_wgslsmith_clamp_u32(global0.d.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(13121u, 4294967295u, 2465u), var_0), countOneBits(global0.d.a)), global0.d);
    var var_1 = global0.d.b.wx;
    let var_2 = var_0.yy & u_input.a.xy;
    return Struct_2(true, global0.b, ~(9639u << (~global0.c % 32u)), Struct_1(var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-512f, global0.d.b.x, var_1.x, global0.d.c)))), _wgslsmith_f_op_f32(step(var_1.x, 1f))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> i32 {
    let var_0 = func_4(~(~(-vec2<i32>(-18597i, 5847i)) | func_2()));
    let var_1 = global0.d;
    global0 = func_4(abs(vec2<i32>(u_input.b ^ u_input.b, u_input.b) ^ ~abs(vec2<i32>(0i, u_input.b))));
    let var_2 = -1i;
    var var_3 = 1u;
    return -2147483647i;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: vec3<f32>) -> Struct_2 {
    global0 = Struct_2(all(global0.b) || (_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, global0.d.a), u_input.a.zw) != _wgslsmith_mult_u32(1u, 40373u)), func_4(vec2<i32>(~(-25847i), _wgslsmith_sub_i32(arg_0, func_2().x))).b, abs(global0.c) ^ ~(~(~4133u)), Struct_1(41723u, global0.d.b, -477f));
    let var_0 = true;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(1659f - arg_3.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1397f)), _wgslsmith_f_op_f32(func_3(Struct_1(arg_1, vec4<f32>(arg_3.x, arg_3.x, 908f, 2296f), arg_3.x)))))), !select(select(!global0.b, vec3<bool>(global0.a, true, false), true), vec3<bool>(!global0.b.x, !global0.b.x, true), !(!vec3<bool>(var_0, global0.a, global0.b.x))), ~(select(1096u & u_input.a.x, func_4(vec2<i32>(arg_2, arg_2)).d.a, all(vec3<bool>(global0.a, true, false))) | 19691u), global0.d);
    var_1 = Struct_2(!all(select(select(global0.b, var_1.b, global0.a), vec3<bool>(true, var_0, true), global0.d.b.x == var_1.d.b.x)), global0.b, ~global0.c, func_4(~(-(~vec2<i32>(-14432i, arg_2)))).d);
    var_1 = func_4(select(_wgslsmith_sub_vec2_i32(~vec2<i32>(-2147483647i, arg_0) ^ -vec2<i32>(0i, arg_2), countOneBits(max(vec2<i32>(-1i, arg_2), vec2<i32>(arg_2, arg_2)))), select(~firstTrailingBit(vec2<i32>(15648i, u_input.b)), vec2<i32>(1i, -2147483647i), var_1.a), var_1.b.x));
    return Struct_2(false, vec3<bool>(var_1.d.c <= _wgslsmith_f_op_f32(f32(-1f) * -175f), !var_0, var_1.b.x), abs(1766u), global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(u_input.b, 88468u, _wgslsmith_div_i32(-min(func_1(global0.d.b, u_input.a.x), u_input.b), _wgslsmith_dot_vec3_i32(select(max(vec3<i32>(0i, u_input.b, u_input.b), vec3<i32>(-23642i, u_input.b, u_input.b)), -vec3<i32>(u_input.b, -15316i, 0i), vec3<bool>(global0.a, false, global0.a)), vec3<i32>(-29809i, u_input.b, u_input.b) >> (~u_input.a.wzy % vec3<u32>(32u)))), _wgslsmith_div_vec3_f32(global0.d.b.yzz, global0.d.b.xzw));
    var var_0 = func_5(-_wgslsmith_add_i32(u_input.b, ~(u_input.b << (u_input.a.x % 32u))), firstTrailingBit(_wgslsmith_div_u32(9663u, ~(~1u))), -1i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global0.d.b.wzz, vec3<f32>(-602f, 341f, -265f))) - global0.d.b.yxz))));
    var var_1 = Struct_2(true, var_0.b, var_0.d.a, var_0.d);
    let var_2 = firstLeadingBit(global0.c);
    let var_3 = var_0.d;
    var var_4 = vec4<i32>(_wgslsmith_sub_i32(~u_input.b, firstLeadingBit(-17453i)), _wgslsmith_div_i32(u_input.b, reverseBits(-1i)), reverseBits(u_input.b) | (u_input.b >> (_wgslsmith_sub_u32(var_0.c, ~1u) % 32u)), -9175i);
    var var_5 = func_5(~42767i, var_1.c, ~u_input.b, _wgslsmith_f_op_vec3_f32(var_0.d.b.zzy - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.c), 1268f, var_3.b.x) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1017f, 816f, var_1.d.b.x) + global0.d.b.ywx))))));
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d.b.yzy));
    var_0 = Struct_2(true, !global0.b, _wgslsmith_dot_vec3_u32(abs(u_input.a.zyz), u_input.a.xyz), func_5(-9394i, func_4(firstTrailingBit(var_4.zw << (u_input.a.ww % vec2<u32>(32u)))).d.a, u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.d.b.x, -195f, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_6.x, var_0.d.c, var_3.c) + var_1.d.b.xwx)))).d);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_6.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.d.c), var_1.d.c), 1714f, _wgslsmith_div_f32(169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -795f)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_5.c, ~var_5.d.a, ~111510u & func_4(var_4.zz).d.a), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_5.c, var_5.d.a, u_input.a.x), vec3<u32>(var_0.d.a, 48894u, var_5.c)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, 49979u), max(u_input.a.yxw, vec3<u32>(61488u, var_1.d.a, var_1.c)))), countOneBits(vec3<u32>(36019u, 1u, max(16588u, var_3.a)))), ~_wgslsmith_add_vec2_u32(u_input.a.yw, reverseBits(reverseBits(vec2<u32>(1u, 117191u)))));
}

