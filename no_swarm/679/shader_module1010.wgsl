struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: f32) -> vec3<bool> {
    var var_0 = 1i;
    var_0 = -66181i << (_wgslsmith_dot_vec3_u32(~(~(u_input.e.wxy & vec3<u32>(u_input.e.x, 37541u, u_input.e.x))), vec3<u32>(1u, 1u, countOneBits(u_input.e.x))) % 32u);
    global0 = array<i32, 18>();
    var var_1 = firstLeadingBit(firstLeadingBit(u_input.c.zz));
    let var_2 = vec3<u32>(_wgslsmith_sub_u32(~4294967295u, countOneBits(~(~u_input.e.x))), max(14246u, ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(9877u, 0u), _wgslsmith_add_u32(u_input.e.x, u_input.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(2097u, 0u, u_input.e.x, 4294967295u), vec4<u32>(0u, u_input.e.x, u_input.e.x, u_input.e.x)))), ~(~1u) << (u_input.e.x % 32u));
    return vec3<bool>(arg_1.x, arg_1.x, ~(_wgslsmith_add_u32(101865u, 0u) | var_2.x) <= firstLeadingBit(~(~u_input.e.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -701f)), _wgslsmith_f_op_f32(f32(-1f) * -1772f)), select(func_3(u_input.d.zz, !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1278f))))), vec3<bool>(!(u_input.e.x == 33613u), !any(vec3<bool>(false, false, true)), false), func_3(-vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(17097u, 18u)]), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-903f, 477f)) * _wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(4294967295u, u_input.e.x)) >> (vec2<u32>(1u, 0u & u_input.e.x) % vec2<u32>(32u)), vec2<u32>(firstLeadingBit(u_input.e.x) | 14336u, 26983u)), u_input.e.wx);
    var var_1 = vec2<u32>(u_input.e.x, var_0.c) | (countOneBits(vec2<u32>(u_input.e.x << (u_input.e.x % 32u), ~0u)) ^ ~firstLeadingBit(vec2<u32>(0u, var_0.c)));
    let var_2 = ~13693u;
    var var_3 = (vec4<i32>(-1i) * -u_input.c) | ~(-(~vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(24908u, 18u)], -946i, -1i) ^ (vec4<i32>(-1i, 33856i, 0i, 12343i) >> (vec4<u32>(var_1.x, var_1.x, 1u, var_0.c) % vec4<u32>(32u)))));
    var_1 = u_input.e.xx;
    return Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, var_3.x), vec3<i32>(-35804i, u_input.c.x, global0[_wgslsmith_index_u32(var_1.x, 18u)])), ~u_input.b, var_3.x), ~u_input.c), abs(-u_input.c)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3) -> bool {
    var var_0 = Struct_2(1i);
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    var_0 = func_2();
    let var_1 = vec2<u32>(1u, u_input.e.x);
    return !(!(func_3(arg_0.a.wz, select(vec4<bool>(arg_2.c, false, arg_2.b, arg_2.b), vec4<bool>(arg_0.e.b.x, arg_2.e.b.x, arg_0.e.b.x, arg_2.c), arg_0.c), _wgslsmith_f_op_f32(-arg_2.d.x)).x || true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1267f * -867f), _wgslsmith_f_op_f32(-634f + 790f), true)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-646f, 1000f), _wgslsmith_div_f32(-1326f, 963f), func_1(Struct_3(vec4<i32>(global0[_wgslsmith_index_u32(27720u, 18u)], u_input.b, 2147483647i, 5940i), true, false, vec4<f32>(-156f, 742f, 1289f, 1218f), Struct_1(vec2<f32>(513f, -643f), vec3<bool>(true, true, true), 23737u, vec2<u32>(28794u, 20061u))), u_input.e.xz, Struct_3(vec4<i32>(global0[_wgslsmith_index_u32(u_input.e.x, 18u)], -20635i, 25149i, global0[_wgslsmith_index_u32(u_input.e.x, 18u)]), true, false, vec4<f32>(-1471f, -1000f, 1301f, 449f), Struct_1(vec2<f32>(-814f, -713f), vec3<bool>(true, true, false), u_input.e.x, vec2<u32>(14577u, 71263u))))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1405f)) - -407f), _wgslsmith_f_op_f32(2725f + _wgslsmith_f_op_f32(max(-105f, 1088f))))))));
    var_0 = -1991f;
    var var_1 = Struct_3(vec4<i32>(~(-firstTrailingBit(global0[_wgslsmith_index_u32(u_input.e.x, 18u)])), -1i, _wgslsmith_mod_i32(min(_wgslsmith_add_i32(u_input.d.x, -25255i), _wgslsmith_mod_i32(-1i, 23410i)), u_input.a), _wgslsmith_dot_vec4_i32(abs(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(u_input.e.x, 18u)], global0[_wgslsmith_index_u32(72321u, 18u)], -35905i, u_input.a))), _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.e.x, 18u)], global0[_wgslsmith_index_u32(u_input.e.x, 18u)], global0[_wgslsmith_index_u32(u_input.e.x, 18u)], -31083i) & u_input.c, u_input.c | vec4<i32>(-1645i, u_input.d.x, global0[_wgslsmith_index_u32(u_input.e.x, 18u)], global0[_wgslsmith_index_u32(u_input.e.x, 18u)])))), _wgslsmith_f_op_f32(-1f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-584f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2261f)))), all(vec2<bool>(_wgslsmith_f_op_f32(floor(426f)) == _wgslsmith_f_op_f32(select(-1853f, -1127f, false)), func_3(u_input.c.zz, select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), _wgslsmith_div_f32(-308f, 854f)).x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(856f, -2781f), -851f, 1000f, _wgslsmith_f_op_f32(-1596f * 422f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1291f, 782f, 992f, 2715f), vec4<f32>(-772f, 217f, 1003f, 1515f), false)), vec4<f32>(1f, 1f, 1f, 1f)))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -161f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f) + _wgslsmith_f_op_f32(max(-2128f, 689f)))), vec3<bool>(false, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), true), ~0u, abs(select(vec2<u32>(u_input.e.x, u_input.e.x), vec2<u32>(u_input.e.x, 0u), false)) | vec2<u32>(u_input.e.x & 7584u, _wgslsmith_div_u32(24584u, 82953u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_1.e.d.x, countOneBits(_wgslsmith_clamp_u32(1u, ~23560u, var_1.e.d.x)), _wgslsmith_clamp_u32(abs(u_input.e.x), u_input.e.x, ~(~(~u_input.e.x))));
}

