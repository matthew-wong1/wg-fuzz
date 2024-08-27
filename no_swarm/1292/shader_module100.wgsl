struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(952f, 1398f, vec4<f32>(-401f, -1351f, -1704f, -257f), vec4<bool>(false, false, false, false), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 2473u));

var<private> global1: bool = true;

var<private> global2: bool = false;

var<private> global3: vec3<f32> = vec3<f32>(653f, 784f, -1320f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>) -> f32 {
    global1 = global0.d.x;
    let var_0 = Struct_3(vec2<bool>(true, false), Struct_1(any(!select(vec4<bool>(true, true, false, global0.d.x), vec4<bool>(global0.d.x, false, global0.d.x, global0.d.x), global0.d)), _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), 4294967295u, global0.e.xy, firstLeadingBit(u_input.a.x)));
    let var_1 = ~(~11415i);
    var var_2 = Struct_2(-116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b - -953f)) + _wgslsmith_f_op_f32(select(159f, -1944f, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global0.c * _wgslsmith_f_op_vec4_f32(-global0.c)))), _wgslsmith_f_op_vec4_f32(-global0.c)), vec4<bool>(false, global0.d.x, var_0.a.x, all(select(vec4<bool>(global0.d.x, global0.d.x, var_0.a.x, true), select(vec4<bool>(global0.d.x, var_0.a.x, global0.d.x, var_0.a.x), vec4<bool>(global0.d.x, false, global0.d.x, var_0.a.x), global0.d), global0.d))), ~global0.e);
    global3 = _wgslsmith_f_op_vec3_f32(var_2.c.xwx * arg_1);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> vec3<bool> {
    var var_0 = arg_0.x;
    var var_1 = Struct_1(-1000f <= _wgslsmith_f_op_f32(-449f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(-132f, arg_1), global0.c.yzy)) + _wgslsmith_f_op_f32(arg_1 + 1165f))), _wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_sub_u32(countOneBits(global0.e.x), ~global0.e.x), ~_wgslsmith_sub_vec2_u32(min(vec2<u32>(5667u, 2755u) >> (vec2<u32>(global0.e.x, global0.e.x) % vec2<u32>(32u)), global0.e.zw ^ global0.e.xy), vec2<u32>(_wgslsmith_mod_u32(1u, 4294967295u), 0u)), 0i);
    var var_2 = _wgslsmith_mod_vec3_u32(global0.e.wyw | ~(~vec3<u32>(global0.e.x, var_1.c, var_1.c) | global0.e.xyz), ~(firstTrailingBit(_wgslsmith_sub_vec3_u32(global0.e.www, global0.e.wwx)) ^ _wgslsmith_div_vec3_u32(global0.e.yzz, select(global0.e.zwx, global0.e.zwx, global0.d.x))));
    global0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(652f * -1444f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-461f - 1254f) + _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -1432f), var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(391f - _wgslsmith_f_op_f32(abs(var_1.b)))), _wgslsmith_f_op_vec4_f32(global0.c * global0.c), vec4<bool>(any(select(vec2<bool>(var_1.a, false), global0.d.wy, true)) & false, false, true, !(!all(global0.d.yx))), max(_wgslsmith_add_vec4_u32(vec4<u32>(31580u, ~25173u, firstTrailingBit(global0.e.x), _wgslsmith_add_u32(0u, global0.e.x)), vec4<u32>(_wgslsmith_mod_u32(var_2.x, global0.e.x), _wgslsmith_add_u32(global0.e.x, 0u), _wgslsmith_clamp_u32(41287u, var_1.c, var_2.x), global0.e.x << (var_2.x % 32u))), _wgslsmith_mod_vec4_u32((vec4<u32>(63914u, 4294967295u, 11366u, 1u) << (global0.e % vec4<u32>(32u))) << (reverseBits(vec4<u32>(4294967295u, var_1.d.x, 4294967295u, 4294967295u)) % vec4<u32>(32u)), global0.e)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_1.b)))) - global0.b), _wgslsmith_div_f32(183f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-617f))))), !all(select(vec3<bool>(var_1.a, var_1.a, var_1.a), global0.d.xyw, vec3<bool>(global0.d.x, var_1.a, global0.d.x))))), _wgslsmith_f_op_f32(f32(-1f) * -1310f), _wgslsmith_f_op_vec4_f32(global0.c * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.b)), -798f, -2144f, 683f) + global0.c)), vec4<bool>(all(global0.d), var_1.a, true, true), vec4<u32>(_wgslsmith_mult_u32((1u >> (0u % 32u)) >> (var_2.x % 32u), var_1.d.x), ~_wgslsmith_add_u32(var_1.d.x & var_1.c, _wgslsmith_div_u32(var_1.d.x, var_1.d.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.e.x, var_1.d.x, var_2.x), global0.e.zyz), global0.e.ywy) >> (3545u % 32u), _wgslsmith_dot_vec4_u32(global0.e, vec4<u32>(1u >> (var_2.x % 32u), ~1u, countOneBits(89010u), var_2.x))));
    return var_3.d.wyy;
}

fn func_1(arg_0: bool, arg_1: f32) -> bool {
    var var_0 = !(!func_2(-select(vec4<i32>(u_input.a.x, -17593i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), arg_0), -555f));
    global0 = Struct_2(_wgslsmith_f_op_f32(-826f - global3.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_vec4_f32(sign(global0.c)), !select(global0.d, global0.d, global0.d), firstTrailingBit(global0.e));
    let var_1 = ~2147483647i;
    var var_2 = Struct_2(-1301f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 + -2582f))), -1000f, arg_0 || true)), vec4<f32>(1543f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1299f + 920f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-703f * -161f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-458f - _wgslsmith_f_op_f32(global3.x + global3.x)))), !(!global0.d), vec4<u32>(countOneBits(~1u), ~1u, _wgslsmith_sub_u32(abs(global0.e.x), 29214u | global0.e.x) & select(44187u, ~82427u, false), select(~(~21101u), ~_wgslsmith_clamp_u32(1u, global0.e.x, 0u), true)));
    var var_3 = select(vec3<bool>(!var_2.d.x, any(func_2(vec4<i32>(-1i, var_1, u_input.a.x, u_input.a.x), -1000f).zx) || arg_0, all(select(select(var_0.zx, vec2<bool>(var_0.x, true), var_2.d.xy), func_2(vec4<i32>(var_1, -7638i, u_input.a.x, -17491i), arg_1).xz, select(global0.d.yz, vec2<bool>(false, var_2.d.x), arg_0)))), !vec3<bool>(var_0.x, !var_0.x, !var_0.x), var_2.d.x);
    return !arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = arg_1;
    let var_1 = 33553i;
    let var_2 = firstLeadingBit(~(-var_1));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(abs(1726f)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a * global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.b, arg_0.b.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-659f + _wgslsmith_f_op_f32(round(global0.b))) * -1881f)), vec4<bool>(!var_0.d.x || (_wgslsmith_div_f32(global0.c.x, 108f) > -1963f), true, true, arg_1.d.x), ~(vec4<u32>(0u, arg_0.b.c, 37452u, 0u) ^ firstTrailingBit(vec4<u32>(arg_0.b.c, 36167u, 109513u, arg_1.e.x))) ^ global0.e);
    let var_4 = _wgslsmith_f_op_vec4_f32(arg_1.c - global0.c);
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.b), 485f, -1513f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(global0.e.x) >= 43383u;
    global3 = _wgslsmith_f_op_vec3_f32(func_4(Struct_3(!vec2<bool>(all(global0.d), func_1(false, -2038f)), Struct_1(all(func_2(vec4<i32>(-27226i, 2147483647i, 18302i, u_input.a.x), global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -963f)), ~12337u, firstTrailingBit(vec2<u32>(0u, 4294967295u)), u_input.a.x)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -2130f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1273f))))), -602f, vec4<f32>(global0.b, global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - global3.x)), 1503f), !select(!global0.d, select(global0.d, vec4<bool>(global0.d.x, false, false, false), true), vec4<bool>(global0.d.x, global0.d.x, true, true)), vec4<u32>(1u ^ abs(global0.e.x), _wgslsmith_mult_u32(global0.e.x, global0.e.x) >> ((4294967295u >> (global0.e.x % 32u)) % 32u), ~firstLeadingBit(9065u), ~(13491u >> (global0.e.x % 32u))))));
    var var_0 = Struct_3(global0.d.xx, Struct_1(!((true & global0.d.x) || true), 295f, reverseBits(min(_wgslsmith_sub_u32(global0.e.x, global0.e.x), ~global0.e.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.e.x, 4294967295u, global0.e.x), global0.e.zwy), _wgslsmith_clamp_u32(0u, global0.e.x, 1u)), select(vec2<u32>(78759u, 1u), abs(vec2<u32>(1u, global0.e.x)), true)), ~(~u_input.a.x)));
    global1 = !global0.d.x;
    let var_1 = global0.c;
    let var_2 = func_2(~vec4<i32>(~(-31978i), abs(u_input.a.x), max(1i, u_input.a.x), 2147483647i >> (1u % 32u)) ^ firstTrailingBit(~vec4<i32>(1i, -1i, -17416i, -2147483647i) & ~vec4<i32>(var_0.b.e, -8654i, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -982f));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a)));
    global1 = true;
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(1i << (firstTrailingBit(_wgslsmith_add_u32(global0.e.x, var_0.b.c)) % 32u)), firstTrailingBit(global0.e.zxw), _wgslsmith_f_op_vec4_f32(sign(global0.c)));
}

