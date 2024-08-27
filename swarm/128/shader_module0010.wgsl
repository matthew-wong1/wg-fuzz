struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> f32 {
    var var_0 = max(~(~vec3<u32>(~u_input.a, 0u, 4294967295u)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, 0u, 27634u) % vec3<u32>(32u)), vec3<u32>(u_input.a, 3577u, 29920u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(14264u, u_input.a, u_input.a), vec3<u32>(u_input.a, 36757u, 0u) | vec3<u32>(8625u, u_input.a, 0u)) % vec3<u32>(32u)), vec3<u32>(~firstLeadingBit(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 39704u), vec4<u32>(u_input.a, 28323u, u_input.a, 1u)), 39937u), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)))));
    var_0 = _wgslsmith_sub_vec3_u32(min(~(~vec3<u32>(0u, 50529u, var_0.x)), firstTrailingBit(vec3<u32>(8298u, u_input.a, 61471u))) & abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(35612u, 20238u, u_input.a), vec3<u32>(21011u, 3362u, 82314u), vec3<u32>(var_0.x, u_input.a, var_0.x)) & max(vec3<u32>(var_0.x, u_input.a, 67759u), vec3<u32>(var_0.x, 1u, 0u))), ~min(firstLeadingBit(~vec3<u32>(865u, u_input.a, 64437u)), vec3<u32>(_wgslsmith_mod_u32(23401u, 4294967295u), abs(114784u), min(var_0.x, 17659u))));
    let var_1 = !(!select(true, any(vec2<bool>(true, true)), !any(vec3<bool>(true, false, true))));
    var var_2 = Struct_3(arg_1, arg_1, true);
    var_0 = ~vec3<u32>(min(u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 24241u, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(82778u, 4294967295u, var_0.x), vec3<u32>(var_0.x, var_0.x, 13393u)))), _wgslsmith_div_u32(1u, min(0u, u_input.a)) | ~33871u, 0u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(641f, -1262f))))) - _wgslsmith_f_op_f32(-arg_1));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 473f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_2.c.c)), -2534f)), arg_2.c.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.b.x - arg_2.c.c)), -563f, true)), -540f))));
    let var_1 = arg_2;
    let var_2 = Struct_3(var_1.c.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.b.x + -2288f) - _wgslsmith_f_op_f32(step(var_1.c.c, arg_2.c.b.x))), select(false, all(var_1.b), !(_wgslsmith_f_op_f32(-var_1.c.b.x) <= arg_2.c.b.x)));
    let var_3 = Struct_2(_wgslsmith_add_vec3_u32(~(firstLeadingBit(vec3<u32>(0u, 6553u, 0u)) << (~arg_2.a % vec3<u32>(32u))), firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(var_1.a.x, var_1.a.x, arg_1), ~17809u, 14494u))), select(select(!var_1.b, !(!var_1.b), var_1.b), select(var_1.b, select(select(var_1.b, vec3<bool>(var_2.c, true, false), vec3<bool>(arg_2.b.x, arg_2.b.x, var_1.b.x)), arg_2.b, all(var_1.b.xy)), var_1.b), !var_2.c), arg_2.c, arg_2.d, min(~1i, u_input.b.x) << (65997u % 32u));
    let var_4 = !var_2.c || !(!any(select(vec4<bool>(var_1.b.x, var_3.b.x, var_3.b.x, true), vec4<bool>(false, false, false, var_1.b.x), vec4<bool>(false, arg_2.b.x, var_1.b.x, var_2.c))));
    return !vec4<bool>(-1638f <= _wgslsmith_f_op_f32(ceil(var_3.c.b.x)), all(var_1.b), true | var_4, !all(!arg_2.b.xz));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    var var_0 = !select(select(select(select(vec4<bool>(arg_0.b.x, arg_0.b.x, true, true), vec4<bool>(true, false, arg_0.b.x, true), arg_0.b.x), !vec4<bool>(false, arg_0.b.x, arg_0.b.x, false), !vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, false)), !(!vec4<bool>(false, arg_0.b.x, true, arg_0.b.x)), true), vec4<bool>(!(arg_0.c.c == arg_0.c.b.x), all(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, false)), all(select(arg_0.b, vec3<bool>(arg_0.b.x, true, arg_0.b.x), false)), any(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x))), !select(vec4<bool>(true, arg_0.b.x, true, true), func_2(u_input.c.x, u_input.a, Struct_2(arg_0.a, arg_0.b, Struct_1(1u, arg_0.c.b, arg_0.c.c), vec4<i32>(-8965i, arg_0.d.x, -44780i, 2147483647i), -65426i), u_input.b.x), func_2(54457i, 61317u, Struct_2(arg_0.a, vec3<bool>(arg_0.b.x, true, arg_0.b.x), arg_0.c, vec4<i32>(u_input.c.x, 12318i, 19646i, 19975i), -34298i), -2147483647i)));
    var var_1 = Struct_1(min(~(~u_input.a), abs(u_input.a) >> (u_input.a % 32u)) << (abs(~u_input.a ^ ~64885u) % 32u), _wgslsmith_f_op_vec2_f32(-arg_0.c.b), _wgslsmith_f_op_f32(-arg_0.c.b.x));
    var_1 = Struct_1(~(~(~1u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(arg_0.c.b)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b.x + 489f), _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_add_u32(~arg_0.c.a, u_input.a), u_input.a << (~_wgslsmith_mod_u32(4294967295u, reverseBits(u_input.a)) % 32u));
    var var_3 = arg_0.c;
    return Struct_3(_wgslsmith_f_op_f32(-var_1.b.x), 1723f, var_0.x);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_4) -> Struct_4 {
    var var_0 = Struct_1(~_wgslsmith_mod_u32(u_input.a, firstTrailingBit(37366u)), _wgslsmith_f_op_vec2_f32(-arg_2.b.b), _wgslsmith_f_op_f32(-arg_2.a));
    var_0 = arg_2.b;
    var var_1 = vec3<i32>(-1346i, 1i, 32324i) << (countOneBits(~firstLeadingBit(vec3<u32>(0u, u_input.a, 1u) >> (vec3<u32>(0u, 1u, var_0.a) % vec3<u32>(32u)))) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(abs(-1075f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(229f + arg_2.b.b.x) * -209f), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(min(-1041f, var_0.b.x)), -1060f), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(sign(300f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(281f, arg_0, 257f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), -294f, -439f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(555f, arg_2.a, arg_0)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -1000f, -173f)))))), any(vec2<bool>(any(vec4<bool>(arg_2.c.c, arg_2.c.c, arg_2.c.c, arg_2.c.c)), true))));
    return arg_2;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_3(arg_0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3382f) * _wgslsmith_f_op_f32(func_3(vec4<f32>(arg_2.a, arg_2.c.a, -1637f, -138f), 1000f))) - arg_2.b.b.x)), arg_0.b.a >= ~(~1u));
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, firstLeadingBit(1i), -4296i, ~2147483647i), vec4<i32>(u_input.b.x, 3395i, 0i, u_input.b.x)));
    let var_2 = ~(~(vec2<i32>(-1i & u_input.c.x, u_input.b.x) >> (vec2<u32>(arg_2.b.a, arg_3) % vec2<u32>(32u))));
    var var_3 = true;
    var var_4 = select(vec4<i32>(var_2.x, u_input.c.x, _wgslsmith_dot_vec2_i32(var_2, var_2), firstTrailingBit(u_input.b.x >> (~arg_2.b.a % 32u))), vec4<i32>(2147483647i, reverseBits(-1i), u_input.c.x, ~var_2.x), select(func_2(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a) & vec2<u32>(arg_3, u_input.a), abs(vec2<u32>(arg_0.b.a, 1u))), Struct_2(~vec3<u32>(arg_2.b.a, 0u, arg_3), !vec3<bool>(true, arg_2.c.c, true), func_4(arg_2.a, 34489u, arg_0).b, select(vec4<i32>(-1i, -2147483647i, 35066i, 2147483647i), vec4<i32>(var_2.x, u_input.c.x, 0i, 4280i), vec4<bool>(true, true, arg_2.c.c, false)), var_2.x), -_wgslsmith_add_i32(var_2.x, u_input.b.x)), vec4<bool>(arg_0.c.c != any(vec4<bool>(false, var_0.c, var_0.c, false)), !arg_2.c.c, !any(vec3<bool>(false, arg_2.c.c, false)), false), arg_1));
    return Struct_2(select(vec3<u32>(_wgslsmith_sub_u32(func_4(1195f, u_input.a, Struct_4(1233f, arg_0.b, Struct_3(arg_0.c.a, -487f, var_0.c))).b.a, 51175u), ~1u, abs(max(0u, arg_0.b.a))), (_wgslsmith_add_vec3_u32(vec3<u32>(132194u, u_input.a, 4294967295u), vec3<u32>(12786u, 4294967295u, 37281u)) << (~vec3<u32>(24641u, arg_3, 102u) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(arg_3, arg_0.b.a, arg_3)), true), !vec3<bool>(any(arg_1.wwy), !arg_1.x & !arg_0.c.c, var_0.c), arg_2.b, (vec4<i32>(-1i) * -select(vec4<i32>(14796i, 0i, u_input.c.x, var_2.x), vec4<i32>(var_4.x, var_4.x, -33191i, u_input.b.x), vec4<bool>(true, false, arg_0.c.c, arg_0.c.c))) ^ _wgslsmith_add_vec4_i32(reverseBits(~vec4<i32>(var_2.x, 1i, var_4.x, -26i)), select(vec4<i32>(28136i, -1i, var_2.x, -59168i), vec4<i32>(var_4.x, 0i, var_4.x, 6503i), false) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.a, u_input.a, 14014u, 48975u), vec4<u32>(arg_0.b.a, 1u, arg_2.b.a, arg_0.b.a)) % vec4<u32>(32u))), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(any(vec2<bool>(true, false)) & true, any(vec4<bool>(true, true, true, true)), !any(vec3<bool>(false, true, false)), true));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1287f, 1000f), 859f))), _wgslsmith_f_op_f32(-1446f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-927f - -1948f) + _wgslsmith_f_op_f32(f32(-1f) * -380f))));
    var var_2 = select(select(!vec3<bool>(any(var_0.yww), var_0.x, !var_0.x), vec3<bool>(true, all(var_0.xzx) & var_0.x, true), var_0.wyy), var_0.yxx, !(!vec3<bool>(true, false, var_0.x)));
    let var_3 = func_5(func_4(var_1, 79492u, Struct_4(var_1, Struct_1(u_input.a << (u_input.a % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -486f)), _wgslsmith_f_op_f32(-var_1)), func_1(Struct_2(vec3<u32>(u_input.a, 4294967295u, 44424u), vec3<bool>(var_0.x, var_2.x, var_0.x), Struct_1(u_input.a, vec2<f32>(-678f, 1355f), var_1), vec4<i32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.b.x), 5283i)))), vec4<bool>(any(!vec4<bool>(var_2.x, true, false, true)), !(!select(false, var_0.x, false)), all(var_2.xy), !(any(var_0.xy) & var_2.x)), Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1275f)), var_1)), Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 1000f)), vec2<f32>(var_1, -1251f))), _wgslsmith_f_op_f32(-194f + _wgslsmith_f_op_f32(f32(-1f) * -613f))), Struct_3(_wgslsmith_f_op_f32(-var_1), var_1, true)), ~_wgslsmith_div_u32(~_wgslsmith_mod_u32(7075u, 57157u), u_input.a));
    var_2 = !var_0.wwz;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.b);
}

