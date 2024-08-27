struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: Struct_1;

var<private> global2: i32 = 850i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = -arg_0.x;
    var var_1 = vec2<bool>(true, true);
    return Struct_3(arg_3.a, arg_3.b);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: vec3<f32>) -> bool {
    let var_0 = !((_wgslsmith_f_op_f32(-arg_1.a.a) > global0[_wgslsmith_index_u32((u_input.d.x ^ 72196u) << (u_input.d.x % 32u), 2u)]) | true);
    let var_1 = min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-4358i, 1i), vec2<i32>(arg_2, _wgslsmith_mod_i32(min(0i, 72222i), firstLeadingBit(-34490i))), firstTrailingBit(_wgslsmith_mod_vec2_i32(~vec2<i32>(9812i, u_input.c.x), -vec2<i32>(arg_2, arg_0)))), max(vec2<i32>(_wgslsmith_clamp_i32(-5489i, 0i, func_2(u_input.c.xx, vec4<u32>(u_input.d.x, u_input.d.x, 23528u, 4294967295u), u_input.d.x, arg_1).b.a), ~arg_2 | 56640i), u_input.c.yy));
    let var_2 = u_input.d.x;
    var var_3 = func_2(vec2<i32>(reverseBits(_wgslsmith_mult_i32(87047i, -2251i)) << (var_2 % 32u), arg_0), ~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, 1u, u_input.d.x, 72603u), min(vec4<u32>(u_input.d.x, 0u, var_2, var_2), vec4<u32>(23754u, var_2, var_2, 32686u)), select(vec4<u32>(var_2, 0u, 0u, u_input.d.x), vec4<u32>(var_2, u_input.d.x, 4294967295u, 21433u), false)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(var_2, 15044u, 4294967295u, 15259u) & vec4<u32>(29526u, u_input.d.x, var_2, u_input.d.x)), !any(vec3<bool>(false, var_0, var_0))), var_2 << (var_2 % 32u), func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(4907i, -2147483647i), u_input.c.xy), _wgslsmith_mod_vec4_u32(vec4<u32>(68208u, 1u, ~var_2, ~4294967295u), vec4<u32>(_wgslsmith_clamp_u32(var_2, 24349u, var_2), max(var_2, var_2), 84228u, var_2)), 1u, arg_1));
    var var_4 = ~(-1i);
    return !any(!select(!vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0), false));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global0[_wgslsmith_index_u32(4294967295u, 2u)], global1.a) * vec3<f32>(global0[_wgslsmith_index_u32(47477u, 2u)], -354f, arg_1.a))))))));
    global2 = func_2(vec2<i32>(-50969i, u_input.c.x) << (_wgslsmith_mult_vec2_u32(vec2<u32>(~0u, select(0u, 0u, false)), firstLeadingBit(select(u_input.d.zz, u_input.d.yx, vec2<bool>(true, arg_0.x)))) % vec2<u32>(32u)), vec4<u32>(34135u, 15968u, ~u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(13319u), 4294967295u, u_input.d.x, u_input.d.x & 0u), ~(~vec4<u32>(75392u, u_input.d.x, u_input.d.x, 18897u)))), 31297u, Struct_3(arg_1, Struct_2(100614i))).b.a;
    var var_2 = _wgslsmith_f_op_f32(696f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1184f + _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(614f * -504f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], 1058f, -1124f), vec3<f32>(-173f, global0[_wgslsmith_index_u32(1u, 2u)], 2145f)), vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], -591f, 771f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 188f, -131f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a, 1170f, -1000f))))))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(select(2943u, 1u, all(vec3<bool>(false, true, false))) >> (8832u % 32u), 2u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1173f), -888f), any(select(arg_0.zz, vec2<bool>(arg_0.x, false), any(arg_0.xz)))))));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(!select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(u_input.a.x != 2147483647i, true, global0[_wgslsmith_index_u32(34514u, 2u)] >= -259f), func_3(35005i, func_2(u_input.a.zx, vec4<u32>(94819u, 0u, u_input.d.x, u_input.d.x), 43715u, Struct_3(Struct_1(1965f), Struct_2(u_input.a.x))), u_input.a.x, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.a, global0[_wgslsmith_index_u32(44826u, 2u)], -581f))))), Struct_1(282f)));
    let var_1 = abs(u_input.d);
    global0 = array<f32, 2>();
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_2(u_input.c.yx, vec4<u32>(75734u, 11501u, var_1.x, 0u), u_input.d.x, Struct_3(Struct_1(-410f), Struct_2(u_input.a.x))).a.a))));
    global0 = array<f32, 2>();
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(func_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, 12313u), 2u)])), 4294967295u), firstLeadingBit(vec2<u32>(countOneBits(~u_input.d.x), ~(~u_input.d.x))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(654f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(235f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(202f + _wgslsmith_f_op_f32(-1645f * global0[_wgslsmith_index_u32(4294967295u, 2u)])) * -1154f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(2949u), 2u)] - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 2u)]), _wgslsmith_f_op_f32(max(-142f, global1.a))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(u_input.a.zy, vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, var_0.x), 7477u, Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 2u)]), Struct_2(u_input.b))).a.a + _wgslsmith_f_op_f32(select(2085f, global1.a, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(489f, 1658f)), true && (1i < u_input.a.x)))));
    global2 = max(-2147483647i, u_input.c.x);
    var var_2 = var_1.x;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(33999u, 2u)] + 1418f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(780f)))), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.d.x, 2u)]))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], var_1.x, global1.a, -505f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(572f, global0[_wgslsmith_index_u32(u_input.d.x, 2u)], global1.a, global0[_wgslsmith_index_u32(4294967295u, 2u)]) * vec4<f32>(-104f, 462f, -439f, global0[_wgslsmith_index_u32(19992u, 2u)]))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1492f, -567f, -463f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global1.a, 789f, var_1.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(144f, -1000f, var_1.x, 2046f), vec4<f32>(303f, 996f, global1.a, var_1.x))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-401f, global1.a, global1.a, 244f), vec4<f32>(-612f, global1.a, 1211f, global1.a)))))));
    let var_3 = func_2(_wgslsmith_mod_vec2_i32(-u_input.a.zz, _wgslsmith_add_vec2_i32(abs(-vec2<i32>(u_input.b, u_input.c.x)), firstTrailingBit(-u_input.a.yx))), _wgslsmith_mult_vec4_u32(~(~abs(vec4<u32>(38013u, u_input.d.x, u_input.d.x, 12779u))), min(vec4<u32>(4294967295u, var_0.x, var_0.x, 50009u) ^ vec4<u32>(u_input.d.x, var_0.x, 60216u, u_input.d.x), vec4<u32>(1u, u_input.d.x, var_0.x, 0u)) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(65150u, 4294967295u, var_0.x, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(34762u, 12394u, 4294967295u, var_0.x), vec4<u32>(u_input.d.x, 94857u, var_0.x, 0u))) % vec4<u32>(32u))), min(_wgslsmith_add_u32(~6363u, max(firstTrailingBit(u_input.d.x), u_input.d.x >> (var_0.x % 32u))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 35764u), vec2<u32>(0u, u_input.d.x))), func_2(abs(u_input.a.zz) << (u_input.d.yz % vec2<u32>(32u)), vec4<u32>(~(~var_0.x), _wgslsmith_sub_u32(4294967295u & u_input.d.x, u_input.d.x >> (u_input.d.x % 32u)), ~44195u, ~_wgslsmith_clamp_u32(32195u, var_0.x, u_input.d.x)), 33328u, Struct_3(func_2(abs(u_input.a.yx), _wgslsmith_sub_vec4_u32(vec4<u32>(9803u, u_input.d.x, u_input.d.x, var_0.x), vec4<u32>(u_input.d.x, var_0.x, 10417u, u_input.d.x)), u_input.d.x, func_2(u_input.a.zz, vec4<u32>(var_0.x, 0u, var_0.x, u_input.d.x), u_input.d.x, Struct_3(Struct_1(global0[_wgslsmith_index_u32(1u, 2u)]), Struct_2(-2147483647i)))).a, func_2(u_input.c.yx & vec2<i32>(-2147483647i, u_input.c.x), abs(vec4<u32>(65442u, 3018u, u_input.d.x, 16575u)), _wgslsmith_sub_u32(var_0.x, u_input.d.x), Struct_3(Struct_1(var_1.x), Struct_2(u_input.c.x))).b))).a;
    var var_4 = Struct_3(var_3, func_2(u_input.c.yx, _wgslsmith_clamp_vec4_u32(max(abs(vec4<u32>(var_0.x, u_input.d.x, u_input.d.x, var_0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 62677u, 1u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 5820u))), vec4<u32>(var_0.x, 43934u, var_0.x, 1u) << (firstLeadingBit(vec4<u32>(33251u, var_0.x, 1u, var_0.x)) % vec4<u32>(32u)), ~vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.d.x)), u_input.d.x, func_2(countOneBits(abs(u_input.a.yx)), vec4<u32>(max(17250u, var_0.x), ~80940u, min(0u, u_input.d.x), 9316u >> (var_0.x % 32u)), var_0.x, Struct_3(var_3, func_2(vec2<i32>(u_input.a.x, u_input.c.x), vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.d.x), 34525u, Struct_3(Struct_1(var_3.a), Struct_2(-21313i))).b))).b);
    var_4 = func_2(firstTrailingBit(u_input.a.zy), ~(~(vec4<u32>(u_input.d.x, 1u, 22617u, 24855u) << (vec4<u32>(51004u, 31097u, 23379u, 25914u) % vec4<u32>(32u)))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(~var_0.x, u_input.d.x, ~1u, ~u_input.d.x), ~vec4<u32>(7193u, var_0.x, 7547u, 4294967295u), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 49639u, u_input.d.x, u_input.d.x), vec4<u32>(0u, 1u, var_0.x, var_0.x))) % vec4<u32>(32u)), 1u, Struct_3(var_4.a, var_4.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.a, _wgslsmith_add_i32(abs(_wgslsmith_add_i32(var_4.b.a & var_4.b.a, reverseBits(1i))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -13542i, var_4.b.a, var_4.b.a), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 1686i, u_input.b, var_4.b.a), vec4<i32>(u_input.a.x, 28422i, var_4.b.a, var_4.b.a)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-689f, _wgslsmith_div_f32(-1927f, global1.a), _wgslsmith_f_op_f32(-202f + global1.a)))))), max(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, 0i, u_input.a.x, u_input.a.x) << (~vec4<u32>(u_input.d.x, 1u, var_0.x, u_input.d.x) % vec4<u32>(32u)), firstLeadingBit(abs(vec4<i32>(34924i, -1i, u_input.c.x, var_4.b.a)))), max(vec4<i32>(var_4.b.a >> (4294967295u % 32u), -1i, -2147483647i, _wgslsmith_clamp_i32(var_4.b.a, -2147483647i, u_input.c.x)), ~abs(vec4<i32>(-50408i, u_input.c.x, var_4.b.a, var_4.b.a)))));
}

