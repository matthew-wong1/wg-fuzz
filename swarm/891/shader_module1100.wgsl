struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(641f), Struct_1(278f), Struct_1(-1000f), Struct_1(553f), Struct_1(1649f), Struct_1(-778f), Struct_1(-1025f), Struct_1(1523f), Struct_1(-292f), Struct_1(-598f), Struct_1(1269f), Struct_1(-704f), Struct_1(-312f));

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-2214f), Struct_1(-1054f), Struct_1(-399f), Struct_1(-1269f));

var<private> global3: vec4<f32>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global3.wy);
    return global2[_wgslsmith_index_u32(reverseBits(0u), 4u)];
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: f32) -> vec4<f32> {
    global1 = vec3<i32>(-1i, _wgslsmith_div_i32(countOneBits(u_input.b.x), u_input.b.x), _wgslsmith_mod_i32(0i, countOneBits(u_input.b.x)) ^ firstLeadingBit(firstLeadingBit(1i)));
    let var_0 = global3.x;
    global1 = vec3<i32>(u_input.b.x, ~(-(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -4553i, -244i), vec4<i32>(-1i, global1.x, u_input.b.x, u_input.b.x)) << (1u % 32u))), abs(-_wgslsmith_sub_i32(min(u_input.b.x, -4399i), firstTrailingBit(-1i))));
    global2 = array<Struct_1, 4>();
    var var_1 = func_2(-(~u_input.b), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(345f, 962f, false))))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1398f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 193f) - _wgslsmith_div_f32(419f, 1521f))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1147f)), _wgslsmith_f_op_f32(arg_2 * arg_0.x), _wgslsmith_f_op_f32(sign(-228f)), var_1.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(510f, -1260f, global3.x, 1625f))))));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = func_2(vec3<i32>(~(arg_1.x | u_input.b.x), select(0i, min(0i, 0i), arg_0), u_input.b.x) ^ (-vec3<i32>(global1.x, arg_1.x, -1i) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1u, 45238u, u_input.a)) % vec3<u32>(32u))), Struct_1(global4.a), arg_0, global3.x);
    var var_1 = _wgslsmith_add_i32(u_input.b.x, 42999i);
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(420f, global3.x), vec2<u32>(_wgslsmith_div_u32(u_input.a, ~u_input.a), 4294967295u), _wgslsmith_f_op_f32(387f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, var_0.a)))))));
    var var_3 = func_2(vec3<i32>(_wgslsmith_sub_i32(arg_1.x >> (_wgslsmith_add_u32(u_input.a, u_input.a) % 32u), -3796i), reverseBits(-1i) | _wgslsmith_mod_i32(-global1.x, 1i & arg_1.x), -_wgslsmith_sub_i32(arg_1.x ^ global1.x, min(-24357i, 0i))), global2[_wgslsmith_index_u32(u_input.a, 4u)], any(!vec3<bool>(true, arg_0, u_input.b.x == u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -471f)));
    var var_4 = firstTrailingBit(_wgslsmith_mod_vec4_i32(~select(vec4<i32>(global1.x, arg_1.x, -44912i, 28678i), vec4<i32>(-25128i, arg_1.x, arg_1.x, 0i), vec4<bool>(false, arg_0, true, false)) << (~firstLeadingBit(vec4<u32>(56757u, u_input.a, u_input.a, 34282u)) % vec4<u32>(32u)), ~(arg_1 ^ arg_1) ^ vec4<i32>(_wgslsmith_add_i32(-3969i, u_input.b.x), 21131i, -24279i, i32(-1i) * -2147483647i)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1249f, -312f, arg_0)) * var_2.x));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global3.x, -572f, arg_1.a), vec4<f32>(1138f, global3.x, global4.a, 396f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a, global4.a, 767f, global3.x) - vec4<f32>(arg_1.a, -539f, -686f, global4.a))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(777f, -578f, global4.a, 149f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1770f, global4.a, arg_1.a, global3.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, global4.a, -459f, -1299f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 4>();
    let var_0 = vec4<i32>(~2147483647i, _wgslsmith_dot_vec3_i32(~vec3<i32>(~global1.x, abs(-1157i), ~(-1i)), u_input.b), -min(u_input.b.x, ~select(global1.x, 1i, true)), 22307i | abs(min(u_input.b.x ^ global1.x, ~(-28651i))));
    global3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_4(all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), func_1(any(vec2<bool>(true, true)), reverseBits(vec4<i32>(global1.x, u_input.b.x, var_0.x, 0i)) ^ vec4<i32>(global1.x, global1.x, u_input.b.x, global1.x)))), _wgslsmith_f_op_vec4_f32(func_3(global3.zz, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), _wgslsmith_mod_u32(1u, 4294967295u)), select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(42250u, 1u), true) & _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 29449u), vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a))), 1623f))));
    let var_1 = global3.x;
    global0 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.x, firstLeadingBit(countOneBits(vec3<u32>(0u, u_input.a, u_input.a)) ^ abs(abs(vec3<u32>(u_input.a, 7761u, u_input.a)))), -min(-2147483647i, global1.x));
}

