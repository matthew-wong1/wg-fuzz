struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = any(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true));
    let var_1 = false;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-787f - _wgslsmith_f_op_f32(-2059f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1041f)), _wgslsmith_f_op_f32(-1218f * 571f))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: bool) -> i32 {
    var var_0 = Struct_1(vec2<u32>(1u, 1u), select((_wgslsmith_clamp_u32(8732u, 54346u, 33522u) | countOneBits(76617u)) & 1u, ~_wgslsmith_mod_u32(1u, 77599u >> (1u % 32u)), all(!(!vec3<bool>(false, true, arg_2)))));
    let var_1 = Struct_1(select(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 49u) ^ var_0.a, var_0.a), vec2<u32>(min(~var_0.b, 41045u >> (var_0.a.x % 32u)), _wgslsmith_mod_u32(~var_0.a.x, 4294967295u)), true), 0u);
    var var_2 = u_input.a;
    let var_3 = vec3<bool>(true, !(!any(select(vec3<bool>(true, false, true), vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, false, arg_2)))), !any(!vec2<bool>(true, arg_2)));
    var var_4 = Struct_3(var_0.a, ~vec3<u32>(103462u, 55389u, var_1.a.x), _wgslsmith_mult_vec2_i32(arg_0, abs(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(11899i, 35473i)))), ~0u);
    return _wgslsmith_mult_i32(63064i, 1i);
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec3<bool> {
    let var_0 = arg_0.c.x >> ((~arg_0.b.x << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 4294967295u, arg_0.d), arg_0.b) | max(arg_0.d, 22370u), 60739u) % 32u)) % 32u);
    var var_1 = _wgslsmith_sub_i32(40823i, func_4(vec2<i32>(15768i, arg_0.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(915f, -857f, -1000f) - vec3<f32>(-639f, -1526f, 1000f))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(242f)), _wgslsmith_f_op_f32(2437f - -1011f), _wgslsmith_f_op_f32(func_3()))), !all(vec3<bool>(true, false, false))));
    var var_2 = abs(~var_0);
    var_1 = reverseBits(reverseBits(-25937i));
    var_1 = arg_1;
    return vec3<bool>(true, true, !select(true, true, false));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: f32) -> i32 {
    let var_0 = vec2<bool>(any(select(vec3<bool>(true, true, true), !func_2(Struct_3(vec2<u32>(4708u, 0u), vec3<u32>(1u, 31777u, 36069u), vec2<i32>(u_input.a, -19049i), 50868u), -66108i), vec3<bool>(true, true, false))), false);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(121f, arg_0), _wgslsmith_f_op_f32(trunc(arg_2)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(679f, arg_2), vec2<f32>(arg_2, arg_2))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1099f, 718f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, -1000f), vec2<f32>(390f, -353f), vec2<bool>(true, var_0.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1385f))))));
    var var_2 = ~(-1i);
    var var_3 = _wgslsmith_sub_i32(-40776i, ~1i);
    var var_4 = !(!select(select(func_2(Struct_3(vec2<u32>(1u, 62144u), vec3<u32>(47450u, 4294967295u, 56520u), vec2<i32>(-1i, 2147483647i), 83433u), arg_1), select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, false, false), vec3<bool>(true, true, true)), true), !(!vec3<bool>(var_0.x, var_0.x, true)), select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, var_0.x), var_0.x)));
    return u_input.a | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a >> (1u % 32u), i32(-1i) * -2147483647i, 1i, ~u_input.a) ^ vec4<i32>(reverseBits(arg_1), min(-1i, -7179i), -arg_1, _wgslsmith_mod_i32(u_input.a, 31851i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(25708i, arg_1, 12062i, u_input.a), vec4<i32>(_wgslsmith_div_i32(-38790i, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(48991i, 0i), vec2<i32>(arg_1, arg_1)), abs(u_input.a), _wgslsmith_clamp_i32(u_input.a, arg_1, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(0i & min(_wgslsmith_mult_i32(-39827i, -u_input.a), 0i & u_input.a), u_input.a ^ u_input.a);
    let var_1 = vec3<i32>(var_0.x, var_0.x, _wgslsmith_mult_i32(reverseBits(u_input.a), -2147483647i) & 1i);
    let var_2 = select(vec3<bool>(true, _wgslsmith_mult_i32(-u_input.a, func_1(1057f, u_input.a, 1334f)) < _wgslsmith_clamp_i32(-u_input.a, var_0.x, 3028i), true), func_2(Struct_3(vec2<u32>(abs(0u), 1u), vec3<u32>(1u, 1u, 1u), vec2<i32>(var_1.x, _wgslsmith_dot_vec2_i32(var_1.yx, vec2<i32>(0i, u_input.a))), ~_wgslsmith_add_u32(4294967295u, 0u)), -(~(-20097i))), !(_wgslsmith_mult_u32(~1u, firstTrailingBit(4294967295u)) < 54794u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, _wgslsmith_clamp_u32(1u, ~19775u, 30630u), ~countOneBits(67354u)), vec4<u32>(~44645u << (_wgslsmith_clamp_u32(2436u, 0u, 4294967295u) % 32u), ~0u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(7199u, 109624u, 6601u))), ~(~27887u))), min(~vec2<u32>(1u, 1u), ~_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), min(~(~0u >> (select(1u, 0u, var_2.x) % 32u)), ~(~1u)), abs(var_1.xy), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1416f + 1233f) * 262f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-263f + 389f) - 996f)))));
}

