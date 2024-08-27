struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(2147483647i, 63965i), vec2<i32>(1i, -1i), vec2<i32>(-43021i, 1i), vec2<i32>(1i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(59429i, 2147483647i), vec2<i32>(14951i, i32(-2147483648)), vec2<i32>(-12347i, 1i), vec2<i32>(-27120i, -3246i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, 14552i), vec2<i32>(21065i, 33190i), vec2<i32>(-21040i, 2147483647i), vec2<i32>(30758i, 0i), vec2<i32>(21958i, 11642i), vec2<i32>(-7126i, -37181i), vec2<i32>(1i, 43656i), vec2<i32>(i32(-2147483648), 9067i), vec2<i32>(26257i, 79253i), vec2<i32>(46394i, 16989i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, 72786i), vec2<i32>(1i, 2147483647i), vec2<i32>(22100i, -59787i), vec2<i32>(-1i, 2147483647i), vec2<i32>(29287i, 1i));

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 2304u, 41465u, 4294967295u);

var<private> global2: vec2<f32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<u32> {
    global1 = ~reverseBits(vec4<u32>(~reverseBits(global1.x), 14798u, ~reverseBits(0u), 2314u));
    var var_0 = Struct_2(global1.xzz, 4294967295u, Struct_1(!vec4<bool>(any(vec4<bool>(true, true, false, false)), false, false, all(vec2<bool>(true, true))), all(vec4<bool>(true, true, true, true)), _wgslsmith_div_u32((4117u | global1.x) ^ global1.x, _wgslsmith_clamp_u32(1u, 4294967295u, global1.x) << (global1.x % 32u))), false, global2.x);
    var var_1 = Struct_3(global1.x, _wgslsmith_div_vec3_i32(~u_input.a.xwy, abs(~_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -27317i, 1325i), vec3<i32>(u_input.a.x, -5473i, 23647i), vec3<i32>(u_input.a.x, -1i, u_input.a.x)))), true);
    var var_2 = Struct_3(~_wgslsmith_div_u32(0u << (firstTrailingBit(1u) % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, global1.x, var_0.b, 67648u), vec4<u32>(var_1.a, 69496u, var_1.a, var_1.a))), ((_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), u_input.a.ywy) >> ((var_0.a << (vec3<u32>(var_0.b, var_1.a, var_1.a) % vec3<u32>(32u))) % vec3<u32>(32u))) & vec3<i32>(-1i, -2147483647i, ~42028i)) & (abs(_wgslsmith_sub_vec3_i32(var_1.b, vec3<i32>(u_input.a.x, 2147483647i, 0i))) | _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, var_1.b.x, var_1.b.x)), reverseBits(var_1.b))), var_0.d);
    global2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)) + global2.x))), -1332f);
    return ~vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, var_2.a), var_0.a.xx) << (~39671u % 32u), _wgslsmith_div_u32(min(_wgslsmith_sub_u32(var_2.a, 85774u), firstTrailingBit(4294967295u)), 1u), 21579u, ~6711u);
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: i32, arg_3: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_4(Struct_2(abs(~vec3<u32>(global1.x, 1u, global1.x) | global1.xxx), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a.c.c, 71540u, 46581u, 1u), ~vec4<u32>(4294967295u, 4294967295u, 29950u, 1u) | func_3()), arg_1.a.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-4514i, -48955i), vec2<i32>(-389i, u_input.a.x)) <= ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_2), vec2<i32>(u_input.a.x, arg_2)), _wgslsmith_div_f32(-521f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.x)) * arg_1.a.e))), vec3<bool>(arg_1.a.c.a.x & arg_1.a.c.a.x, _wgslsmith_add_u32(arg_1.a.c.c, global1.x & global1.x) != _wgslsmith_mod_u32(0u ^ global1.x, ~arg_1.a.a.x), (-59348i != u_input.a.x) && true), vec4<bool>(select(all(arg_1.a.c.a.zx), true, !all(vec2<bool>(arg_1.a.c.b, true))), true, !any(vec2<bool>(false, true)), all(vec3<bool>(true, !arg_1.a.d, all(vec2<bool>(arg_0, arg_1.b))))));
    global1 = ~(~(vec4<u32>(4294967295u, 95198u, 15766u, var_0.a.b) >> (reverseBits(vec4<u32>(arg_1.a.c.c, 1559u, 50511u, var_0.a.c.c)) % vec4<u32>(32u)))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(~1u, _wgslsmith_mod_u32(~10382u, func_3().x), max(func_3().x, 10705u), _wgslsmith_dot_vec2_u32(global1.xy, arg_1.a.a.yz)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(67730u, 1u, var_0.a.b, global1.x), ~vec4<u32>(var_0.a.a.x, 15497u, global1.x, global1.x))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -857f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -711f))) - arg_1.a.e));
    var var_2 = vec4<bool>(arg_1.a.d, var_0.b.x, !arg_1.b, true);
    return select(var_0.b, !vec3<bool>(arg_0, all(select(vec4<bool>(arg_0, var_0.b.x, true, var_0.c.x), arg_1.a.c.a, vec4<bool>(true, arg_0, false, false))), firstTrailingBit(u_input.a.x) >= arg_2), !all(arg_1.a.c.a.wz));
}

fn func_1() -> vec2<f32> {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) + vec2<f32>(-300f, global2.x)))))) * vec2<f32>(-712f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1308f + 1196f), global2.x)))) * vec2<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * 728f)))));
    let var_0 = _wgslsmith_clamp_u32(~global1.x, 50939u, 4294967295u);
    let var_1 = select(vec3<bool>(true, all(func_2(u_input.a.x >= u_input.a.x, Struct_5(Struct_2(global1.zww, global1.x, Struct_1(vec4<bool>(false, false, false, true), false, 24749u), true, global2.x), false), u_input.a.x, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, 742f, global2.x), vec3<f32>(global2.x, 419f, -1000f))))), (true | (u_input.a.x <= -1i)) || true), vec3<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), !any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(global2.x < global2.x, true, true), select(vec3<bool>(true, false, false), func_2(false, Struct_5(Struct_2(global1.wyx, var_0, Struct_1(vec4<bool>(true, true, true, false), true, 0u), true, -1000f), false), 62531i, vec3<f32>(1131f, 1292f, -473f)), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), u_input.a.x > _wgslsmith_div_i32(reverseBits(-1i), u_input.a.x & 48500i)));
    let var_2 = reverseBits(u_input.a.x & -43452i) >> (4294967295u % 32u);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1720f, global2.x, 1000f, global2.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, -1000f, global2.x, global2.x), vec4<f32>(global2.x, global2.x, global2.x, global2.x), var_1.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(146f, global2.x, global2.x, global2.x))))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-399f, -523f, -614f, 344f) * vec4<f32>(global2.x, 1434f, global2.x, -1733f)), vec4<f32>(-1065f, global2.x, 1215f, -539f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-910f, -1228f, global2.x, global2.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(873f, global2.x, 1000f, -481f) + vec4<f32>(global2.x, 870f, 155f, global2.x)))))));
    return _wgslsmith_f_op_vec2_f32(trunc(var_3.zy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(u_input.a.x);
    let var_1 = (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(global1.x, 72274u), ~global1.x), _wgslsmith_mult_u32(global1.x, firstTrailingBit(global1.x)), _wgslsmith_sub_u32(global1.x, _wgslsmith_mod_u32(4294967295u, global1.x))) | (~vec3<u32>(56212u, global1.x, global1.x) | global1.yzy)) | reverseBits(global1.ywz);
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1()))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-720f, 100f) - vec2<f32>(1794f, 803f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(289f, -311f) * vec2<f32>(global2.x, global2.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1000f) - vec2<f32>(259f, global2.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -3256f) * vec2<f32>(-1486f, global2.x)), select(vec2<bool>(true, true), vec2<bool>(false, true), true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(select(415f, 477f, false)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) - -991f)) >= _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, global2.x))))));
    global0 = array<vec2<i32>, 27>();
    let var_2 = global2.x;
    var var_3 = _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -144f))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~(~_wgslsmith_dot_vec2_u32(var_1.xx, var_1.yy)), select(_wgslsmith_sub_u32(global1.x, 9311u) | 0u, abs(0u), true)), ~_wgslsmith_sub_vec4_i32(max(abs(u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 38535i, u_input.a.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a.zwy, vec3<i32>(0i, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), u_input.a.xxx), u_input.a.x, ~0i)), -u_input.a, abs(_wgslsmith_mult_vec3_u32(var_1 << (var_1 % vec3<u32>(32u)), vec3<u32>(~30487u, 45299u, abs(var_1.x)))));
}

