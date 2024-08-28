struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1785f, 1040f) - 1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-118f, 1034f, true))))))), _wgslsmith_f_op_f32(step(733f, -555f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-608f * 2029f)))))), -2616f);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = select(firstTrailingBit(u_input.c.yz), firstLeadingBit(min(countOneBits(vec2<i32>(arg_3.a, 0i)), u_input.c.yx)), any(vec2<bool>(true, _wgslsmith_f_op_f32(-arg_0.x) >= arg_0.x)));
    let var_1 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.b.www, _wgslsmith_div_vec3_i32(vec3<i32>(arg_3.a, arg_3.a, arg_3.a), vec3<i32>(-35876i, var_0.x, -2147483647i))), 1811i), arg_0.ywx, arg_3.d.x, vec4<u32>(2922u, arg_3.c, ~(~3919u) << (1u % 32u), 4294967295u));
    var var_2 = var_1.b.xz;
    let var_3 = u_input.c;
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -203f) * _wgslsmith_f_op_f32(-arg_0.x)), 1i < _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, 10448i))), _wgslsmith_f_op_f32(f32(-1f) * -2151f)));
    return 1984f;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2235f, 527f, arg_0, arg_0) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -1000f, 964f, arg_0), vec4<f32>(arg_0, arg_0, -2694f, arg_0)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -107f, arg_0) * vec4<f32>(-479f, 283f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1000f, arg_0, arg_0)))), vec4<f32>(arg_0, -595f, _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(arg_0 * 1076f))))), -(~u_input.c.x), true & !(~2147483647i <= reverseBits(u_input.b.x)), Struct_1(~(-_wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(u_input.c.x, -9364i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1533f, -1580f, arg_0), vec3<f32>(-1188f, arg_0, -1125f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(633f, arg_0, 1202f), vec3<bool>(true, true, true)))) + vec3<f32>(-571f, _wgslsmith_f_op_f32(-2273f - arg_0), _wgslsmith_f_op_vec4_f32(func_3()).x)), _wgslsmith_add_u32(u_input.a.x, 0u), firstLeadingBit(countOneBits(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))))));
    let var_1 = Struct_1(2147483647i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 * 222f), -457f)), -953f, _wgslsmith_f_op_f32(f32(-1f) * -2077f)), vec3<f32>(var_0, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -343f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-733f, arg_0, var_0, -571f)), -41399i, true, Struct_1(-45809i, vec3<f32>(arg_0, var_0, var_0), 31909u, vec4<u32>(1u, 4294967295u, 7643u, 0u))))), vec3<bool>(true, true, true))), 23362u, vec4<u32>(_wgslsmith_sub_u32(abs(44046u), max(u_input.a.x, ~u_input.a.x)), 44149u, u_input.a.x, u_input.a.x));
    let var_2 = var_1;
    let var_3 = vec4<bool>(!(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)) | true), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))) & true, true, all(vec2<bool>(true, false)));
    var var_4 = var_1;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> vec3<f32> {
    var var_0 = -1i;
    let var_1 = vec4<bool>(arg_1, arg_1, true, true);
    let var_2 = var_1;
    var var_3 = _wgslsmith_div_i32(2147483647i, arg_0.a);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b.x * arg_3.x))))), arg_3.x, _wgslsmith_f_op_vec4_f32(func_3()).x);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = u_input.b.zy;
    var var_1 = Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1168f, 2120f, -794f), vec3<f32>(-1502f, 1653f, -526f), false))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1085f, -1000f, 1755f), _wgslsmith_f_op_vec3_f32(vec3<f32>(212f, -1000f, 1058f) + vec3<f32>(1002f, -1261f, -860f)), !arg_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_1(var_0.x, vec3<f32>(-452f, 765f, 2909f), u_input.a.x, vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x)), any(vec3<bool>(true, true, true)), func_2(929f), vec4<f32>(-874f, -1053f, -1161f, -691f))))), u_input.a.x, _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u)) | ~(~vec4<u32>(u_input.a.x, 16867u, 18754u, u_input.a.x)), ~(vec4<u32>(0u, u_input.a.x, 1026u, u_input.a.x) >> (vec4<u32>(2637u, u_input.a.x, 0u, u_input.a.x) % vec4<u32>(32u)))));
    var var_2 = !arg_0;
    var_2 = !(~(_wgslsmith_mult_u32(var_1.d.x, var_1.d.x) | 16062u) != min(firstTrailingBit(9671u) << (u_input.a.x % 32u), 42697u));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.xx - _wgslsmith_f_op_vec4_f32(func_3()).yz) * var_1.b.zx)));
    return Struct_1(max(abs(~u_input.b.x), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.a, 26178i), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_0.x, u_input.b.x, 37999i, -81830i)))) << (~abs(_wgslsmith_mult_u32(u_input.a.x, var_1.d.x)) % 32u), _wgslsmith_f_op_vec3_f32(step(var_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.x, var_3.x, 854f), var_1.b))))), 36679u, vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u)), ~var_1.d), max(_wgslsmith_div_u32(~1u, abs(u_input.a.x)), u_input.a.x), u_input.a.x));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = ~reverseBits(_wgslsmith_mod_i32(1i >> (arg_2.d.x % 32u), max(~arg_1.a, ~arg_2.a)));
    var var_1 = _wgslsmith_f_op_f32(select(-481f, _wgslsmith_f_op_f32(-1547f - arg_0.x), true));
    var var_2 = Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1110f, arg_0.x) * arg_2.b))), func_1(true).c, arg_2.d);
    let var_3 = ~u_input.b.zxw;
    let var_4 = vec2<i32>(1i, arg_2.a) << (vec2<u32>(0u, arg_1.d.x) % vec2<u32>(32u));
    return arg_2.a <= ~countOneBits(arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(func_6(vec3<f32>(781f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2036f)) + _wgslsmith_f_op_f32(1328f * -385f)), 677f), func_1(all(vec2<bool>(false, false))), func_1(true)), false, true, _wgslsmith_f_op_f32(select(-1837f, _wgslsmith_f_op_f32(round(-1000f)), !select(false, false, false))) > 1282f);
    var var_1 = func_1(any(!select(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, true, false, var_0.x)), !vec4<bool>(true, true, false, var_0.x), !var_0.x)));
    var_0 = select(!vec4<bool>(_wgslsmith_sub_i32(-47706i, 10871i) >= func_2(-427f).a, var_0.x, !var_0.x || true, true), !(!select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), select(var_0.x, var_0.x, true))), true);
    var var_2 = Struct_1(countOneBits(-min(~u_input.b.x, -u_input.c.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(var_1.b, _wgslsmith_f_op_vec3_f32(-var_1.b))))), 4294967295u, _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, ~49950u, var_1.d.x, ~u_input.a.x), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, var_1.d.x, u_input.a.x), var_1.d), _wgslsmith_add_vec4_u32(vec4<u32>(5793u, u_input.a.x, var_1.d.x, u_input.a.x), vec4<u32>(25226u, 13319u, var_1.d.x, 0u))), abs(vec4<u32>(1u, 4294967295u, 52470u, u_input.a.x)))));
    var var_3 = ~(~(~var_1.d.ww));
    var_3 = var_2.d.yx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_1.b.x, var_1.b.x, var_1.b.x) * vec4<f32>(var_2.b.x, var_1.b.x, var_1.b.x, 1000f)) * vec4<f32>(var_2.b.x, -1726f, 825f, 595f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1099f, -246f, -342f, -1507f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_2.b.x, -344f, -1023f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1943f, var_1.b.x, var_1.b.x, var_1.b.x)))))));
}

