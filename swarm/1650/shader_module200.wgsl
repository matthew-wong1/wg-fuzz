struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec2<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    let var_0 = -((u_input.b.zx | vec2<i32>(_wgslsmith_div_i32(67520i, 1i), countOneBits(u_input.b.x))) & reverseBits(-vec2<i32>(u_input.d.x, 1i)));
    global0 = Struct_4(reverseBits(~vec4<u32>(~24065u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.b.x, global0.b.x), global0.b), _wgslsmith_mod_u32(u_input.a, 1u), abs(41224u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, 1u, ~23461u), vec3<u32>(41260u, abs(~4294967295u), arg_0 << (1u % 32u)), global0.a.wyw ^ global0.a.zwx));
    let var_1 = firstLeadingBit(vec3<u32>(4516u, ~123747u, ~select(101553u, _wgslsmith_clamp_u32(global0.a.x, arg_0, global0.b.x), true)));
    var var_2 = _wgslsmith_f_op_f32(-global1.x);
    var var_3 = -abs(~(-(var_0.x ^ 1i)));
    return abs(vec2<i32>(_wgslsmith_div_i32(24309i, abs(u_input.d.x)), _wgslsmith_add_i32(0i, -2147483647i | u_input.b.x))) & firstTrailingBit(u_input.d.yy);
}

fn func_2() -> i32 {
    var var_0 = u_input.b;
    var var_1 = Struct_5(Struct_4(global0.a, _wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a, global0.b.x)), global0.a.wyy)));
    var var_2 = func_3(var_1.a.a.x) & u_input.d.zw;
    let var_3 = _wgslsmith_f_op_f32(sign(-1344f));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-417f, -1979f, 684f) + vec3<f32>(964f, 516f, global1.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(975f, -916f, global1.x))), vec3<bool>(false, true, true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-703f, -2051f, global1.x) * vec3<f32>(var_3, 1000f, -880f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1121f, global1.x) * vec3<f32>(-1440f, 339f, var_3))))));
    return -_wgslsmith_sub_i32(i32(-1i) * -5245i, _wgslsmith_add_i32(func_3(74520u).x, func_3(u_input.c).x)) << (var_1.a.b.x % 32u);
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: bool, arg_3: vec4<bool>) -> Struct_4 {
    let var_0 = firstTrailingBit(~(~func_2() ^ u_input.d.x));
    return Struct_4(vec4<u32>(24319u, ~u_input.c, ~722u, 4294967295u), global0.b);
}

fn func_4(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: u32) -> Struct_4 {
    global1 = arg_1.wy;
    var var_0 = -1i;
    let var_1 = arg_0.a;
    global0 = var_1;
    var var_2 = !(!all(vec3<bool>(false, true, false)) | !any(vec2<bool>(true, true)));
    return arg_0.a;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: u32) -> Struct_4 {
    let var_0 = _wgslsmith_dot_vec4_u32(~func_4(Struct_5(Struct_4(vec4<u32>(global0.a.x, global0.a.x, u_input.c, 45473u), vec3<u32>(32630u, arg_2.a.x, arg_3))), vec4<f32>(global1.x, 152f, arg_0.x, arg_1.x), 12231u).a >> (firstTrailingBit(~arg_2.a) % vec4<u32>(32u)), abs(vec4<u32>(~u_input.c, abs(global0.b.x), u_input.c, u_input.c))) >> (~(~0u) % 32u);
    let var_1 = max(u_input.d.x >> (~_wgslsmith_dot_vec2_u32(arg_2.b.xz | vec2<u32>(97310u, var_0), arg_2.b.xy) % 32u), 2147483647i);
    let var_2 = arg_1.x;
    var var_3 = u_input.d.x;
    let var_4 = countOneBits(64043u);
    return Struct_4(global0.a, vec3<u32>(arg_3, ~(~arg_2.a.x), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(3862f, 1176f, global1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -1000f) + vec3<f32>(global1.x, 1102f, global1.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(global1.x)), global1.x))), func_4(Struct_5(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(177f, global1.x, global1.x, global1.x) - vec4<f32>(global1.x, global1.x, 226f, global1.x)), _wgslsmith_f_op_f32(sign(global1.x)), 4294967295u != u_input.c, vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(global1.x, -696f)), _wgslsmith_f_op_f32(max(global1.x, global1.x)), _wgslsmith_f_op_f32(floor(global1.x)), global1.x)), reverseBits(global0.a.x)), func_4(Struct_5(Struct_4(global0.a, vec3<u32>(145040u, u_input.c, 1u))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-973f, 550f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global1.x) - _wgslsmith_div_f32(global1.x, 721f)), -1008f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_mod_u32(45459u, u_input.a)).a.x);
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(285f, global1.x, global1.x) + vec3<f32>(-1000f, global1.x, global1.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -1000f, -137f), vec3<f32>(global1.x, -1011f, -1517f), vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -825f, global1.x) + vec3<f32>(global1.x, 445f, global1.x))))), vec3<f32>(_wgslsmith_f_op_f32(sign(173f)), _wgslsmith_f_op_f32(floor(-610f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(919f + -417f))), global0.b.x == ~(~global0.b.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-190f, global1.x, global1.x), vec3<f32>(global1.x, -555f, global1.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -484f, global1.x), vec3<f32>(global1.x, -895f, global1.x)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-508f, 215f, -1086f), vec3<f32>(-356f, 1276f, 2031f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2513f, -613f, global1.x) - vec3<f32>(-1456f, global1.x, global1.x)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1588f, global1.x, global1.x))))));
    let var_1 = u_input.a;
    var var_2 = !(!vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)))));
    var var_3 = Struct_3(Struct_1(select(vec2<bool>(true, any(var_2.xx)), select(!vec2<bool>(var_2.x, false), vec2<bool>(false, true), any(vec4<bool>(false, true, true, false))), select(true, all(var_2.xy), var_2.x)), select(select(select(var_2.zy, var_2.yx, false), !var_2.xz, select(vec2<bool>(false, var_2.x), var_2.xy, var_2.x)), vec2<bool>(4294967295u < global0.b.x, !var_2.x), true), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(sign(var_0.x)))), max(abs(var_1 ^ (var_1 >> (1u % 32u))), ~4294967295u), Struct_1(var_2.zx, !select(!var_2.zx, select(vec2<bool>(var_2.x, true), var_2.zy, var_2.x), vec2<bool>(var_2.x, var_2.x)), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 939f) - -1906f))), Struct_2(~28736u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)) + var_0.x), _wgslsmith_f_op_f32(var_0.x * global1.x)), Struct_1(!vec2<bool>(!var_2.x, !var_2.x), select(!(!vec2<bool>(var_2.x, var_2.x)), select(!vec2<bool>(var_2.x, var_2.x), !var_2.yy, vec2<bool>(var_2.x, var_2.x)), u_input.b.x != abs(-65041i)), -912f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(18003i, 2760i), abs(_wgslsmith_div_i32(u_input.b.x, u_input.b.x))), u_input.d.x, _wgslsmith_dot_vec2_i32(-u_input.d.xx, vec2<i32>(u_input.d.x, u_input.d.x)) | ~_wgslsmith_sub_i32(u_input.d.x, -8792i), 54251i), global1.x, var_3.b, 1i);
}

