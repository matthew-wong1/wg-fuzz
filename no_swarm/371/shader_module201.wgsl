struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 9017i, i32(-2147483648), 0i), vec4<f32>(-921f, -634f, 2226f, -1622f), 11808u, vec2<f32>(-1845f, 406f)), Struct_2(vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(13497i, -32359i, 21796i, 34235i), vec4<f32>(1000f, -221f, -438f, -1601f), 0u, vec2<f32>(688f, -194f)));

var<private> global1: Struct_3 = Struct_3(Struct_1(vec4<i32>(2147483647i, -84441i, -1i, 36246i), vec4<f32>(296f, -192f, -830f, 267f), 38761u, vec2<f32>(-827f, -1478f)), Struct_2(vec4<bool>(false, true, true, true)), Struct_1(vec4<i32>(-1i, i32(-2147483648), -31834i, 2147483647i), vec4<f32>(-2778f, -1000f, -857f, 1000f), 1u, vec2<f32>(-2015f, 348f)));

var<private> global2: array<vec3<u32>, 23>;

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, false, true, false)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(false, true, true, true)));

var<private> global4: array<vec3<bool>, 20>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>) -> vec3<u32> {
    var var_0 = Struct_1(firstLeadingBit(vec4<i32>(0i, ~(-2147483647i), u_input.b, -(global1.a.a.x >> (global1.a.c % 32u)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1304f, 397f, 147f, 198f) - vec4<f32>(global1.c.d.x, global1.a.d.x, 964f, 1381f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.d.x, -574f, global0.c.b.x, -1801f)))))), 1u, _wgslsmith_f_op_vec2_f32(global1.c.d + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(977f, -451f), global1.c.b.wx, vec2<bool>(select(global1.b.a.x, true, global0.b.a.x), !global0.b.a.x)))));
    var var_1 = global1.b.a.x;
    var var_2 = vec4<i32>(max(global0.a.a.x, var_0.a.x), ~var_0.a.x, -var_0.a.x, reverseBits(reverseBits(_wgslsmith_dot_vec2_i32(global1.c.a.wx, vec2<i32>(global0.a.a.x, 1i)) ^ abs(20300i))));
    let var_3 = countOneBits(_wgslsmith_clamp_i32(firstTrailingBit(var_0.a.x), ~(-2147483647i), _wgslsmith_dot_vec2_i32(var_0.a.wx, vec2<i32>(u_input.a, global0.a.a.x))) & ~(global0.c.a.x | var_2.x)) | _wgslsmith_clamp_i32(min(29695i, 0i & global1.c.a.x) << (~global1.a.c % 32u), ~(~select(u_input.a, u_input.a, global1.b.a.x)), i32(-1i) * -8645i);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -262f);
    return ~(~_wgslsmith_add_vec3_u32(~select(vec3<u32>(4294967295u, global1.a.c, 4294967295u), vec3<u32>(global1.a.c, global1.a.c, 0u), global1.b.a.x), vec3<u32>(~var_0.c, firstTrailingBit(29279u), 0u)));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c.d.x))) - 1961f) - 148f)));
    let var_1 = _wgslsmith_div_vec3_u32(global2[_wgslsmith_index_u32(reverseBits(arg_1.x), 23u)], func_3(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(49001u, 19205u), arg_1.xz), 20u)]));
    let var_2 = !vec2<bool>(any(vec2<bool>(arg_0, true)) & true, false);
    var var_3 = Struct_1(global1.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1358f, -408f, 1244f, var_0), vec4<f32>(var_0, global1.c.b.x, -462f, var_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.d.x, -193f, var_0, 361f) - vec4<f32>(global1.a.d.x, 1000f, -463f, arg_2.a.d.x)))) - vec4<f32>(-1829f, global1.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.b.x)), _wgslsmith_f_op_f32(-global0.c.d.x))), arg_2.c.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a.d))));
    var var_4 = -16904i;
    return func_3(vec3<bool>(global0.b.a.x, all(select(select(vec2<bool>(false, var_2.x), vec2<bool>(false, global0.b.a.x), true), !vec2<bool>(false, var_2.x), !global0.b.a.ww)), all(vec4<bool>(any(vec3<bool>(arg_2.b.a.x, true, var_2.x)), global0.b.a.x, true, true))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(0u, 1u, global1.a.c) >> (vec3<u32>(global1.c.c, 68186u, global0.c.c) % vec3<u32>(32u))) ^ vec3<u32>(_wgslsmith_mod_u32(global1.a.c, firstLeadingBit(global0.c.c)), ~86294u, ~min(3688u, 4294967295u)), _wgslsmith_sub_vec3_u32(min(firstLeadingBit(global2[_wgslsmith_index_u32(global1.a.c, 23u)]), global2[_wgslsmith_index_u32(13607u, 23u)]) ^ global2[_wgslsmith_index_u32(global1.c.c, 23u)], ~(~global2[_wgslsmith_index_u32(global1.a.c, 23u)])), _wgslsmith_mod_vec3_u32(~(~func_2(false, vec4<u32>(global0.a.c, 54189u, global1.c.c, global0.a.c), Struct_3(Struct_1(vec4<i32>(-2147483647i, -2147483647i, global1.a.a.x, global0.c.a.x), vec4<f32>(-896f, global1.a.b.x, global0.c.b.x, global1.a.d.x), global0.c.c, global0.a.b.ww), global1.b, Struct_1(vec4<i32>(global1.a.a.x, global1.c.a.x, 1i, 2147483647i), global1.c.b, 4294967295u, global0.c.d)))), vec3<u32>(func_3(global0.b.a.wwx).x, 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.a.c, 40319u, global0.c.c, global1.c.c), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.c, 1u, 45356u, 71186u), vec4<u32>(1u, 0u, global1.c.c, 1u))))));
    var var_1 = Struct_1(vec4<i32>(-1i) * -vec4<i32>(0i, _wgslsmith_mult_i32(-9921i, 0i), ~42460i, -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.b.x, global0.c.d.x, global0.c.d.x, global1.a.d.x)))), _wgslsmith_mult_u32(~firstTrailingBit(~global0.a.c), 0u), vec2<f32>(518f, _wgslsmith_f_op_f32(global0.c.b.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global1.a.d.x)))))));
    var var_2 = -55707i;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -505f);
    let var_4 = global1.b;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(func_2(true, _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c.c, global0.c.c, global1.a.c, global0.a.c), vec4<u32>(global1.a.c, 21682u, global1.a.c, var_1.c), vec4<u32>(30142u, var_1.c, var_0.x, global0.c.c)), Struct_3(global1.c, global3[_wgslsmith_index_u32(11983u, 18u)], Struct_1(vec4<i32>(1i, -1i, -17678i, global1.c.a.x), var_1.b, var_1.c, global0.c.b.zw))).yy, ~vec2<u32>(1u, global0.c.c)), ~global0.a.c, ~(0u & ~global0.a.c)), ~select(vec3<u32>(global1.a.c, select(1u, var_0.x, global1.b.a.x), 60587u), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.c, global0.c.c, global1.c.c), global2[_wgslsmith_index_u32(53915u, 23u)]), func_2(false, vec4<u32>(global0.c.c, global0.c.c, 0u, 0u), Struct_3(Struct_1(global1.c.a, vec4<f32>(881f, global1.a.d.x, global0.c.b.x, var_1.d.x), 14143u, var_1.b.yy), global3[_wgslsmith_index_u32(global0.a.c, 18u)], global1.a))), all(select(global4[_wgslsmith_index_u32(global0.c.c, 20u)], vec3<bool>(true, false, global1.b.a.x), global1.b.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c.b) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(693f, global0.a.b.x), 199f, global1.a.d.x, -831f)))));
    var var_1 = ~(vec2<u32>(49920u, 1u) ^ ~vec2<u32>(0u, _wgslsmith_sub_u32(4294967295u, global0.a.c)));
    let var_2 = Struct_2(select(vec4<bool>(global1.b.a.x, global1.b.a.x, any(vec3<bool>(global1.b.a.x, true, global1.b.a.x)), func_1() != ~global1.c.c), select(select(global1.b.a, global1.b.a, true), !select(global0.b.a, global0.b.a, vec4<bool>(true, true, global0.b.a.x, true)), select(any(vec2<bool>(global0.b.a.x, true)), any(vec2<bool>(global1.b.a.x, true)), false)), all(global0.b.a.yz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global1.a.d, _wgslsmith_f_op_vec2_f32(select(global0.c.b.yw, global0.c.d, vec2<bool>(false, global1.b.a.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.d.x, global1.c.d.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -796f) - _wgslsmith_f_op_f32(-global0.a.d.x)), global0.c.b.x))), func_3(vec3<bool>(any(vec2<bool>(false, global0.b.a.x)), global0.b.a.x, !var_2.a.x)).x & firstLeadingBit(~global1.a.c), -global0.a.a, -766f, global0.a.c);
}

