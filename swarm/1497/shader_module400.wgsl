struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(666f + 292f)))) * _wgslsmith_f_op_f32(f32(-1f) * -972f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(-508f - 557f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-485f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -949f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) - _wgslsmith_f_op_f32(f32(-1f) * -1469f)) - 979f));
    global0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(global0.x, 1u, 21282u, global0.x), vec4<u32>(global0.x, 5705u, global0.x, 1u), vec4<bool>(true, arg_0.a.a.x, arg_0.b, false)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_0.a.b.x, 17919u, 0u), vec4<u32>(global0.x, arg_0.a.b.x, arg_0.a.b.x, 1u), vec4<u32>(1u, 6245u, arg_0.a.b.x, global0.x)), vec4<u32>(~arg_0.a.b.x, arg_0.a.b.x << (global0.x % 32u), firstTrailingBit(4294967295u), ~1u)) ^ (vec4<u32>(~0u, 1u, arg_0.a.b.x << (0u % 32u), arg_0.a.b.x) ^ ~vec4<u32>(31362u, arg_0.a.b.x, 41276u, 72853u)), ~(vec4<u32>(abs(22580u), _wgslsmith_div_u32(arg_0.a.b.x, 0u), 4294967295u, _wgslsmith_add_u32(arg_0.a.b.x, 48840u)) << (~(~vec4<u32>(4294967295u, global0.x, arg_0.a.b.x, 38396u)) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(arg_0.a.b, global0.wz)) >> (1u % 32u), _wgslsmith_div_u32(arg_0.a.b.x, ~(~16017u)), abs(4294967295u ^ global0.x), _wgslsmith_sub_u32(~80801u, _wgslsmith_mod_u32(abs(arg_0.a.b.x), _wgslsmith_mod_u32(4294967295u, arg_0.a.b.x)))));
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-105f, var_0.x, 745f), vec3<f32>(var_0.x, -1000f, -1301f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -778f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, 371f, -394f))))))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - -127f), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2190f, 819f, true)) - _wgslsmith_f_op_f32(max(var_0.x, 730f)))))));
    var var_1 = vec4<bool>(arg_0.b, true, all(vec3<bool>(true, select(true, all(vec4<bool>(arg_0.b, true, false, arg_0.a.a.x)), arg_0.a.a.x), true)), !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_0.x) + var_0.x) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1305f)), -1006f))));
    var var_2 = _wgslsmith_dot_vec2_i32(countOneBits(select(reverseBits(u_input.a), -vec2<i32>(2147483647i, 12773i), true && arg_0.a.a.x) | select(vec2<i32>(u_input.b, -25357i) << (arg_0.a.b % vec2<u32>(32u)), u_input.a, select(var_1.x, var_1.x, var_1.x))), u_input.a);
    return select(global0.xyw, global0.ywz, vec3<bool>(true, false, arg_0.a.a.x));
}

fn func_2(arg_0: bool) -> vec4<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1017f), _wgslsmith_f_op_f32(floor(-907f)));
    global0 = select(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 325u, 1u, global0.x), vec4<u32>(61197u, global0.x, global0.x, global0.x))), firstLeadingBit(~(vec4<u32>(75213u, global0.x, 4294967295u, 44686u) >> (vec4<u32>(global0.x, global0.x, global0.x, global0.x) % vec4<u32>(32u)))), vec4<bool>(arg_0 | arg_0, any(vec4<bool>(arg_0, true, true, arg_0)), arg_0, _wgslsmith_f_op_f32(trunc(var_0.x)) != _wgslsmith_f_op_f32(round(683f)))) ^ max(vec4<u32>(_wgslsmith_sub_u32(41742u, global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(36344u, 4294967295u, 49810u, global0.x), vec4<u32>(4294967295u, 16998u, global0.x, 1u)), 1u, 22959u) << (firstTrailingBit(vec4<u32>(global0.x, 0u, 0u, global0.x)) % vec4<u32>(32u)), ~(~(~vec4<u32>(0u, 8679u, 922u, 0u))));
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, global0.x | global0.x, global0.x, global0.x >> (global0.x % 32u)), ~vec4<u32>(0u, global0.x, global0.x, 1u)) ^ abs(vec4<u32>(4294967295u, (global0.x & global0.x) ^ 4280u, min(1155u | global0.x, 0u), _wgslsmith_dot_vec3_u32(func_3(Struct_2(Struct_1(vec3<bool>(true, arg_0, arg_0), global0.wy), true)), abs(global0.zxz))));
    var var_1 = !select(!vec4<bool>(true, true, arg_0, arg_0), !(!vec4<bool>(arg_0, arg_0, false, false)), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, arg_0, arg_0, arg_0), arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), true)));
    var var_2 = Struct_1(var_1.yxz, ~vec2<u32>(~global0.x, global0.x));
    return select(~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.b.x, global0.x, global0.x, var_2.b.x) & (vec4<u32>(var_2.b.x, global0.x, 54737u, var_2.b.x) | vec4<u32>(0u, 5440u, 48386u, global0.x)), max(vec4<u32>(global0.x, var_2.b.x, 0u, global0.x) >> (vec4<u32>(global0.x, 5387u, var_2.b.x, 46119u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 17434u, global0.x, 0u))), reverseBits(firstLeadingBit(abs(vec4<u32>(8870u, var_2.b.x, 0u, 4294967295u)) >> (~vec4<u32>(1u, 107667u, global0.x, global0.x) % vec4<u32>(32u)))), var_1.x);
}

fn func_1() -> vec4<u32> {
    global0 = vec4<u32>(11342u, abs(~(~0u) << (~(~0u) % 32u)), _wgslsmith_dot_vec3_u32(global0.wyy, global0.wwx), 4425u);
    let var_0 = global0.x;
    return ~vec4<u32>(_wgslsmith_add_u32(global0.x, ~0u), countOneBits(global0.x), abs(~global0.x), 0u) & _wgslsmith_add_vec4_u32(~(firstTrailingBit(vec4<u32>(25948u, global0.x, 1u, 0u)) | ~vec4<u32>(global0.x, 1u, 1u, 0u)), _wgslsmith_div_vec4_u32(~(vec4<u32>(global0.x, 73714u, global0.x, global0.x) >> (vec4<u32>(0u, 0u, 9916u, 53306u) % vec4<u32>(32u))), func_2(true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1() ^ firstLeadingBit(vec4<u32>(func_1().x, 0u, ~(global0.x >> (global0.x % 32u)), _wgslsmith_mult_u32(1u, 0u)));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(689f)))), _wgslsmith_f_op_f32(ceil(653f)), 1f, -1179f);
    let var_1 = vec3<i32>(~2147483647i >> (max(_wgslsmith_add_u32(func_1().x, 12537u), 0u) % 32u), reverseBits(u_input.a.x), _wgslsmith_add_i32(-2164i, abs(_wgslsmith_sub_i32(0i, _wgslsmith_clamp_i32(-741i, u_input.a.x, 0i)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(1305f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x), -1876f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 1826f)) - 500f) * var_0.x));
    global0 = _wgslsmith_mult_vec4_u32(max(vec4<u32>(func_1().x, firstLeadingBit(0u), global0.x, ~31567u), vec4<u32>(0u, 1u, global0.x, 30616u) & vec4<u32>(1u, 9687u, 0u, global0.x)) & vec4<u32>(max(_wgslsmith_dot_vec2_u32(global0.zz, vec2<u32>(31784u, 13549u)), global0.x << (19491u % 32u)), global0.x, _wgslsmith_add_u32(func_3(Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<u32>(global0.x, global0.x)), true)).x, _wgslsmith_sub_u32(global0.x, global0.x)), global0.x), _wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(64752u, global0.x, 0u, 1834u), vec4<u32>(1u, 42531u, 12313u, 55936u)), _wgslsmith_div_u32(global0.x, 4294967295u), ~global0.x, ~0u), vec4<u32>(_wgslsmith_div_u32(func_2(true).x, _wgslsmith_mod_u32(global0.x, 1u)), _wgslsmith_add_u32(abs(global0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(57482u, global0.x))), ~(~1u), ~(~global0.x))));
    let var_2 = Struct_1(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), false), vec3<bool>(all(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, false, false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), all(vec2<bool>(false, false)))), !vec3<bool>(all(vec2<bool>(true, true)), true, true), vec3<bool>(true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true))), !select(false, false, false))), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(func_1().wz & ~vec2<u32>(5427u, global0.x), ~global0.xx), vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(71935u, global0.x)), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(abs(global0.xy), ~(~vec2<u32>(global0.x, 53409u))), _wgslsmith_f_op_f32(floor(-1661f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 606f, var_0.x), _wgslsmith_f_op_vec3_f32(-var_0.ywz)) - vec3<f32>(545f, _wgslsmith_div_f32(var_0.x, var_0.x), var_0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zzw))));
}

