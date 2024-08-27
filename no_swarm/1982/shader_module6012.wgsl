struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_1,
    d: Struct_4,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> vec4<f32> {
    let var_0 = Struct_1(-5882i);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1280f, -803f, 382f) + vec3<f32>(-336f, -1000f, -600f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-577f, -852f, -1485f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -469f, 1000f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(336f, -146f, 754f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-607f, 1811f, 624f)))))), -vec4<i32>(var_0.a, _wgslsmith_div_i32(0i, -1i), -global0[_wgslsmith_index_u32(63459u, 8u)], -13220i), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-var_0.a, _wgslsmith_mult_i32(0i, u_input.a)), ~vec2<i32>(1012i, 30444i), arg_0.yz)));
    global0 = array<i32, 8>();
    let var_2 = _wgslsmith_mod_vec3_i32(arg_0.yzz, select(arg_0.zxx, select(vec3<i32>(global0[_wgslsmith_index_u32(0u, 8u)], 0i, 2147483647i), vec3<i32>(1i, -2147483647i, -2147483647i), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), 101f != var_1.a.x)), false));
    let var_3 = Struct_3(var_1, var_1, Struct_1(_wgslsmith_dot_vec2_i32(var_1.c, vec2<i32>(_wgslsmith_add_i32(-19864i, u_input.a), -1i))), (vec3<u32>(1u, 1u, 1u) | select(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 10536u), select(false, true, true))) & firstTrailingBit(vec3<u32>(1u, 1u, 1u) >> (select(vec3<u32>(65577u, 33227u, 1u), vec3<u32>(1u, 0u, 0u), vec3<bool>(true, true, true)) % vec3<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1187f)) * var_3.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_f_op_f32(ceil(var_3.a.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -296f), _wgslsmith_f_op_f32(-1000f + 1030f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-438f, 761f, true))), var_3.b.a.x, _wgslsmith_f_op_f32(round(-1008f)), _wgslsmith_f_op_f32(var_3.b.a.x * _wgslsmith_f_op_f32(f32(-1f) * -100f))))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(558f, 706f) - _wgslsmith_f_op_f32(step(1467f, 1050f)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(-375f, 1041f)), _wgslsmith_f_op_f32(f32(-1f) * -993f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1065f, -1555f), vec2<f32>(2249f, -994f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-401f, 1762f)))), vec2<bool>(true, true)))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -123f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(332f + 714f) - _wgslsmith_f_op_f32(round(-1000f))) * 1f)));
    var var_1 = _wgslsmith_f_op_f32(-885f - 1175f);
    var_1 = _wgslsmith_f_op_f32(abs(-918f));
    let var_2 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -22308i, global0[_wgslsmith_index_u32(0u, 8u)]), vec4<i32>(global0[_wgslsmith_index_u32(1u, 8u)], 2147483647i, 2147483647i, -2147483647i))))), Struct_1(global0[_wgslsmith_index_u32(abs(0u), 8u)]), !vec3<bool>(true, true, any(vec2<bool>(false, true))), reverseBits(2147483647i) | firstTrailingBit(23918i), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), all(vec2<bool>(true, true)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-903f, 312f, 1189f))))), -(~vec4<i32>(1i, 2147483647i, global0[_wgslsmith_index_u32(1u, 8u)], 53170i)), vec2<i32>(2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(43140i, global0[_wgslsmith_index_u32(4294967295u, 8u)], 2147483647i, -47318i), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(71930u, 8u)], global0[_wgslsmith_index_u32(32230u, 8u)], u_input.a)))), Struct_1(0i), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x), Struct_1(_wgslsmith_clamp_i32(u_input.a, -2147483647i, u_input.a) & _wgslsmith_div_i32(global0[_wgslsmith_index_u32(491u, 8u)], -57587i)), vec3<bool>(true, false, false), ~(-abs(u_input.a)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, all(vec4<bool>(false, false, false, true))), (64101i <= u_input.a) || true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, 568f)))))));
    let var_3 = var_2.a;
    return Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(339u, 8u)], 37813i), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], var_2.b.c.x)), -1i), vec2<i32>(~reverseBits(-33597i), ~(-1i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> vec3<f32> {
    global0 = array<i32, 8>();
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(96127u, arg_1.x & arg_1.x, reverseBits(0u)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(arg_1.yxw, arg_1.www), ~vec3<u32>(arg_1.x, arg_1.x, 4294967295u))), arg_1.wwy);
    let var_1 = vec3<bool>(all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(any(vec2<bool>(true, false)), select(false, false, true)), true)), select(true & any(vec2<bool>(true, false)), true, true), true);
    var var_2 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1068f, -1088f, -1232f, 1726f))), arg_0, vec3<bool>(select(all(var_1.xy), any(vec2<bool>(false, var_1.x)), true), _wgslsmith_mod_i32(1i, 1i) != arg_2, var_1.x), -729i, vec2<bool>(all(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, true), false)), all(var_1.xx))), Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 236f, -1000f) + vec3<f32>(269f, -626f, -1124f)), vec3<f32>(590f, -466f, -843f)), _wgslsmith_div_vec3_f32(vec3<f32>(-301f, -366f, 1009f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1712f, 787f, -359f))))), -(~vec4<i32>(global0[_wgslsmith_index_u32(19540u, 8u)], arg_0.a, arg_2, u_input.a)), ~vec2<i32>(arg_0.a, i32(-1i) * -19151i)), func_2(), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-1369f + _wgslsmith_f_op_f32(f32(-1f) * -488f)), _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(774f, 955f)) + -2874f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 868f) - _wgslsmith_f_op_f32(abs(-773f)))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.a, 3753i), vec3<i32>(arg_0.a, arg_2, -2147483647i))), !(!var_1), ~arg_2, select(select(select(vec2<bool>(false, true), var_1.yx, var_1.yx), select(var_1.xx, vec2<bool>(false, true), var_1.x), var_1.x), !vec2<bool>(var_1.x, false), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, -792f)))), -1407f)));
    global0 = array<i32, 8>();
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.d.a.xww))));
}

fn func_1(arg_0: bool) -> vec3<f32> {
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    let var_0 = vec2<bool>(any(!select(!vec3<bool>(true, true, arg_0), !vec3<bool>(false, arg_0, arg_0), any(vec3<bool>(arg_0, arg_0, true)))), !(arg_0 && true));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1080f, -728f, 411f, 252f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1048f, 1113f, 1102f, 536f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(455f - -1000f), _wgslsmith_f_op_f32(ceil(598f)), _wgslsmith_f_op_f32(f32(-1f) * -976f), _wgslsmith_f_op_f32(f32(-1f) * -497f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(828f, -410f, 1769f, -537f)))));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2(), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(33266u, 8u)], u_input.a), vec3<i32>(1i, global0[_wgslsmith_index_u32(1u, 8u)], 2147483647i))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(global0[_wgslsmith_index_u32(13011u, 8u)]), vec4<u32>(1u, 1u, 1u, 1u), global0[_wgslsmith_index_u32(~343u, 8u)])).x), select(!(!vec3<bool>(true, var_0.x, true)), !select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, arg_0, false), var_0.x), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(false)), vec3<f32>(1418f, -563f, -385f), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-351f, -753f, 855f)), all(vec3<bool>(true, true, true)))), (vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(63273u, 8u)], 2147483647i, -2147483647i, -1i)) ^ -(vec4<i32>(global0[_wgslsmith_index_u32(1u, 8u)], -68996i, global0[_wgslsmith_index_u32(0u, 8u)], u_input.a) >> (vec4<u32>(26443u, 4294967295u, 61707u, 26706u) % vec4<u32>(32u))), ~abs(-vec2<i32>(global0[_wgslsmith_index_u32(52410u, 8u)], u_input.a))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -258f), -301f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(212f, -385f)) - _wgslsmith_f_op_f32(f32(-1f) * -363f))), select(select(abs(vec4<i32>(-20144i, -1i, u_input.a, global0[_wgslsmith_index_u32(22696u, 8u)])), -vec4<i32>(u_input.a, u_input.a, -26559i, 1i), all(vec3<bool>(false, true, true))), firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(1u, 8u)], 2147483647i, 56381i, global0[_wgslsmith_index_u32(37795u, 8u)])), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true)), -_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-31590i, u_input.a)), vec2<i32>(global0[_wgslsmith_index_u32(1u, 8u)], u_input.a) << (vec2<u32>(8491u, 17356u) % vec2<u32>(32u)))), func_2(), firstTrailingBit(vec3<u32>(~22671u, max(~4294967295u, ~27971u), ~1u)));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(-abs(firstTrailingBit(vec3<i32>(u_input.a, -23252i, 0i))), _wgslsmith_clamp_vec3_i32(var_0.a.b.zzy << (countOneBits(vec3<u32>(4294967295u, 4294967295u, var_0.d.x)) % vec3<u32>(32u)), (var_0.b.b.yxw & vec3<i32>(-65634i, global0[_wgslsmith_index_u32(var_0.d.x, 8u)], u_input.a)) | vec3<i32>(u_input.a, -2147483647i, u_input.a), ~vec3<i32>(var_0.c.a, global0[_wgslsmith_index_u32(var_0.d.x, 8u)], 0i))));
    let var_2 = var_0.a.a.x;
    let var_3 = var_0.d.x;
    var var_4 = countOneBits(-_wgslsmith_mult_i32(var_1.a, var_1.a));
    var_4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(var_0.d.x, ~var_0.d.x) | ~(~(var_0.d.zz ^ var_0.d.xy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1092f, -694f)), _wgslsmith_f_op_f32(min(1000f, var_2)), 505f, 627f))), u_input.a, var_2, ~_wgslsmith_div_u32(~abs(4294967295u), ~(~13088u)));
}

