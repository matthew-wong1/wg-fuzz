struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(3263u, 46299u, 1u);

var<private> global1: array<f32, 8>;

var<private> global2: array<u32, 23> = array<u32, 23>(30978u, 19419u, 4294967295u, 0u, 4294967295u, 1u, 0u, 0u, 1u, 16884u, 0u, 0u, 26516u, 45441u, 0u, 0u, 4294967295u, 0u, 51750u, 10465u, 30805u, 1u, 4294967295u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    let var_0 = select(~vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(14170u, 4294967295u, 64669u, global2[_wgslsmith_index_u32(u_input.a, 23u)]), vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], 4294967295u, global0.x)), firstTrailingBit(0u), 49901u), ~(~global0.x)), ~(~firstTrailingBit(global0.xy << (global0.xy % vec2<u32>(32u)))), true);
    var var_1 = Struct_2(select(!vec3<bool>(true, all(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, true))), vec3<bool>(var_0.x != 0u, (arg_0 & arg_0) >= (arg_0 & -2748i), true), !select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), false, 1u);
    var_1 = Struct_2(var_1.a, !(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(0u, 18986u, var_1.c))) == _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(var_1.c >> (var_0.x % 32u), 23u)], _wgslsmith_dot_vec2_u32(vec2<u32>(8082u, var_1.c), vec2<u32>(global0.x, 72428u)))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(7131u, ~u_input.a), reverseBits(1u)));
    let var_2 = var_1.a.x;
    var_1 = Struct_2(var_1.a, all(select(select(!vec4<bool>(false, var_1.b, false, false), !vec4<bool>(true, false, var_1.b, var_1.b), var_1.a.x), !vec4<bool>(false, false, false, var_1.b), !var_1.b)), ~40985u);
    return ~(~vec4<u32>(abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(52290u, u_input.a, u_input.a, 59783u), vec4<u32>(56132u, var_0.x, 4294967295u, 4294967295u)), ~u_input.a, reverseBits(global2[_wgslsmith_index_u32(var_0.x, 23u)])) >> (~(~(vec4<u32>(global0.x, var_1.c, global2[_wgslsmith_index_u32(var_1.c, 23u)], 4294967295u) >> (vec4<u32>(global0.x, 3583u, var_0.x, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
}

fn func_2() -> vec2<f32> {
    let var_0 = firstTrailingBit(-(i32(-1i) * -reverseBits(-19352i)));
    var var_1 = _wgslsmith_div_vec4_i32(abs(~(vec4<i32>(var_0, var_0, var_0, var_0) | vec4<i32>(var_0, var_0, 0i, var_0))) << (func_3((-39508i | var_0) ^ var_0) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, abs(var_0), var_0, -8775i << (global2[_wgslsmith_index_u32(4294967295u, 23u)] % 32u)), ~(-vec4<i32>(0i, var_0, var_0, -1i))) & (countOneBits(firstLeadingBit(vec4<i32>(var_0, 15300i, 1105i, -85894i))) ^ ~(vec4<i32>(-1i, var_0, 17993i, 39565i) | vec4<i32>(var_0, var_0, 23272i, 2147483647i))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(696f, -435f, global1[_wgslsmith_index_u32(global0.x, 8u)], -1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f)), 405f), vec3<u32>(_wgslsmith_div_u32(~37514u, global2[_wgslsmith_index_u32(u_input.a, 23u)]), reverseBits(~(global2[_wgslsmith_index_u32(54021u, 23u)] ^ u_input.a)), _wgslsmith_dot_vec3_u32(~vec3<u32>(24080u, 4294967295u, global0.x), ~select(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(global2[_wgslsmith_index_u32(1u, 23u)], u_input.a, 4294967295u), false))), Struct_1(u_input.a != reverseBits(0u)));
    var var_3 = var_2.d.a;
    var var_4 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-var_2.a), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 8u)] * -522f), -372f), var_2.b)), ~(~var_2.c), Struct_1(false)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1284f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 8u)] - -2127f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 771f)))), _wgslsmith_f_op_f32(f32(-1f) * -271f), global1[_wgslsmith_index_u32(4294967295u, 8u)], _wgslsmith_f_op_f32(max(-827f, 595f))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_2.c.x, 8u)] + -430f), global1[_wgslsmith_index_u32(~4294967295u, 8u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 60328u, u_input.a, u_input.a), vec4<u32>(67310u, global0.x, var_2.c.x, 17728u)), 8u)], _wgslsmith_f_op_f32(f32(-1f) * -296f)), _wgslsmith_f_op_f32(round(var_2.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -431f), ~firstTrailingBit(~var_2.c), var_2.d));
    return var_4.b.wx;
}

fn func_1() -> f32 {
    global2 = array<u32, 23>();
    global0 = vec3<u32>(u_input.a, 4294967295u | (abs(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 23u)]) << (4294967295u % 32u)), _wgslsmith_mult_u32(u_input.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, global0.x), _wgslsmith_dot_vec2_u32(~global0.xx, abs(vec2<u32>(global0.x, 46372u))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()));
    let var_1 = Struct_5(abs(1i));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 23u)], 8u)] * var_0.x)))), -809f, true));
    return _wgslsmith_f_op_f32(max(1000f, 300f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)));
    global1 = array<f32, 8>();
    let var_2 = !(!(!vec3<bool>(false | var_1.x, -1524f <= global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29391u, 23u)], 8u)], var_1.x)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.x, 8u)] - -646f), var_0, var_0, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 8u)]), vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 8u)] + global1[_wgslsmith_index_u32(34714u, 8u)]), -1000f, _wgslsmith_f_op_f32(abs(var_0)), var_0)))), 116f, abs((vec3<u32>(0u, u_input.a, global2[_wgslsmith_index_u32(global0.x, 23u)]) >> (vec3<u32>(global2[_wgslsmith_index_u32(37295u, 23u)], global2[_wgslsmith_index_u32(u_input.a, 23u)], 25362u) % vec3<u32>(32u))) ^ ~vec3<u32>(global2[_wgslsmith_index_u32(5933u, 23u)], global0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 23u)], 23u)], 23u)])) & (abs(~vec3<u32>(u_input.a, 17258u, 4294967295u)) | ~vec3<u32>(1u, u_input.a, u_input.a)), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 8u)] >= 226f));
    global0 = max((_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(var_3.c, vec3<u32>(4294967295u, 10805u, 0u)), vec3<u32>(global0.x, 1u, var_3.c.x)) ^ vec3<u32>(1u, _wgslsmith_mult_u32(0u, var_3.c.x), _wgslsmith_clamp_u32(var_3.c.x, u_input.a, u_input.a))) << (abs(~min(vec3<u32>(global0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 14326u), vec3<u32>(global2[_wgslsmith_index_u32(424u, 23u)], 1u, 8437u))) % vec3<u32>(32u)), ~vec3<u32>(40761u, ~0u, global2[_wgslsmith_index_u32(var_3.c.x, 23u)]));
    let var_4 = ~global2[_wgslsmith_index_u32(var_3.c.x, 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(200f, vec4<u32>(_wgslsmith_dot_vec2_u32(var_3.c.xx, var_3.c.zx), max(~var_3.c.x, var_3.c.x), global0.x, ~(u_input.a << (62262u % 32u))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(10415u, 22336u, 0u, global2[_wgslsmith_index_u32(4294967295u, 23u)]) | ~vec4<u32>(1u, 112174u, 1542u, var_3.c.x), ~vec4<u32>(0u, 89042u, 4294967295u, 26908u) | vec4<u32>(u_input.a, 45431u, var_3.c.x, 0u), vec4<u32>(~0u, 71948u, var_3.c.x ^ 48576u, 37135u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(var_3.a.x + 161f), ~var_4);
}

