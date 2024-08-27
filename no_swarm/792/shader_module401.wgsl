struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<u32>) -> f32 {
    let var_0 = vec3<u32>(24782u, ~1u << ((arg_0.x ^ arg_0.x) % 32u), ~33223u);
    var var_1 = arg_1.c;
    let var_2 = -2107f;
    var var_3 = Struct_3(arg_1.a, Struct_1(_wgslsmith_mod_i32(-29671i, 12533i)), arg_1.c, ~(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(38476i, -30689i, 0i), vec3<i32>(2147483647i, arg_1.a.b.a, var_1.b.a))), arg_1.a.b);
    var_3 = Struct_3(var_3.c, arg_1.b, var_3.a, ~var_3.d ^ var_3.d, Struct_1(_wgslsmith_dot_vec4_i32(abs(min(vec4<i32>(1i, arg_1.b.a, arg_1.a.c.a, 0i), vec4<i32>(arg_1.d.x, var_1.c.a, arg_1.b.a, 23308i))), _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_1.c.b.a, -1i, -10833i, var_1.c.a), reverseBits(vec4<i32>(var_3.e.a, -4283i, var_3.e.a, 0i))))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2 + var_2)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: u32) -> vec3<f32> {
    var var_0 = Struct_2(vec2<i32>(arg_0.x, arg_1.x), Struct_1(i32(-1i) * -1i), Struct_1(-52452i));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(421f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-606f, -335f))), _wgslsmith_f_op_f32(f32(-1f) * -326f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1402f, _wgslsmith_f_op_f32(153f - 525f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(arg_2, 65768u, 1u, u_input.a), Struct_3(Struct_2(arg_1.wy, var_0.b, Struct_1(-40705i)), Struct_1(0i), Struct_2(arg_1.xx, Struct_1(arg_0.x), Struct_1(arg_0.x)), vec3<i32>(-53651i, arg_0.x, var_0.b.a), Struct_1(-11463i)), vec2<u32>(arg_2, arg_2)))))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-607f, 838f, false))), _wgslsmith_f_op_f32(ceil(-126f))), _wgslsmith_f_op_f32(func_3(vec4<u32>(43400u & u_input.a, ~u_input.a, arg_2, 1u << (arg_2 % 32u)), Struct_3(Struct_2(arg_1.yy, Struct_1(-2147483647i), Struct_1(arg_0.x)), Struct_1(27792i), Struct_2(vec2<i32>(-23500i, arg_1.x), var_0.b, Struct_1(arg_1.x)), vec3<i32>(47340i, arg_1.x, arg_1.x), Struct_1(10441i)), max(vec2<u32>(113972u, 0u), ~vec2<u32>(arg_2, arg_2)))), 952f));
}

fn func_1() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-228f))) + -289f))) * 218f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_2(firstTrailingBit(vec2<i32>(2147483647i, -18689i)), vec4<i32>(1i, 1i, 1i, 1i), u_input.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(270f, -462f, -527f))))));
    let var_2 = select(!vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), any(vec3<bool>(true, true, false)), any(vec3<bool>(false, false, true))), vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)), all(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true)), false, any(vec4<bool>(true, true, u_input.a > 1u, all(vec2<bool>(true, false))))), true);
    var var_3 = Struct_2(vec2<i32>(-1i, 0i), Struct_1(-16426i), Struct_1(43421i));
    return vec2<i32>(-(~countOneBits(19703i)), var_3.a.x) | firstTrailingBit(~vec2<i32>(_wgslsmith_sub_i32(-7044i, var_3.b.a), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.x, var_3.c.a, -23508i, -1i), vec4<i32>(2147483647i, -55146i, var_3.c.a, 19532i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_i32(~(-(_wgslsmith_mod_vec2_i32(vec2<i32>(46961i, -19760i), vec2<i32>(-2147483647i, -36759i)) ^ (vec2<i32>(2147483647i, -41898i) >> (vec2<u32>(62167u, u_input.a) % vec2<u32>(32u))))), abs(abs(vec2<i32>(-2147483647i, -21619i)) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) & func_1());
    var var_1 = select(vec3<bool>(any(vec4<bool>(true, true, true, true)), !all(vec3<bool>(false, false, true)), false), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), true), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, true, false)), all(vec3<bool>(false, true, false)), any(vec2<bool>(false, false)))), !(!all(vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_sub_vec4_i32(~countOneBits(vec4<i32>(-2147483647i, -28004i, var_0.x, 2147483647i) & vec4<i32>(var_0.x, var_0.x, -5266i, 0i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(24846u, abs(4294967295u), u_input.a, 0u), vec4<u32>(_wgslsmith_mult_u32(98033u, u_input.a), ~0u, countOneBits(3263u), u_input.a)) % vec4<u32>(32u)), select(vec4<i32>(_wgslsmith_div_i32(1i >> (1u % 32u), 1i), 19769i, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2174i, var_0.x, var_0.x), vec4<i32>(var_0.x, 44690i, -1i, 32177i))), ~(~var_0.x)), vec4<i32>(0i, -var_0.x, 1i, var_0.x), select(vec4<bool>(true, select(var_1.x, var_1.x, false), any(vec3<bool>(var_1.x, var_1.x, true)), var_1.x), !select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), var_1.x), var_1.x & true)));
    var_0 = max(_wgslsmith_sub_vec2_i32(vec2<i32>(~(i32(-1i) * -40179i), var_2.x | (i32(-1i) * -2147483647i)), -_wgslsmith_add_vec2_i32(-var_2.xw, ~vec2<i32>(1i, -2147483647i))), -(firstLeadingBit(var_2.ww >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))) & firstLeadingBit(~vec2<i32>(25122i, var_2.x))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1716f, -198f)))), 133f))), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(419f + 950f))), _wgslsmith_f_op_f32(f32(-1f) * -347f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1006f + -233f) - 1f), -1296f) - vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(517f, -1000f)), 1f, _wgslsmith_f_op_f32(trunc(-1266f)), 1837f)), _wgslsmith_dot_vec3_i32(countOneBits(var_2.zyz) << (~vec3<u32>(15945u, u_input.a, 13077u) % vec3<u32>(32u)), var_2.zyy) & var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 13928i, var_2.x), min(vec3<i32>(-2147483647i, var_0.x, 1i), var_2.xyw))), var_2.wzx, !(_wgslsmith_f_op_f32(var_3.a.x - 336f) < _wgslsmith_f_op_f32(153f - -1389f))), var_3.c.yw, var_3.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), min(vec3<u32>(u_input.a, 4294967295u, 68899u), vec3<u32>(u_input.a, u_input.a, u_input.a))), abs(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 34753u)))) << (1u % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.c))), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(-30693i, 16303i), vec4<i32>(-1i, var_2.x, var_2.x, var_2.x), 25660u)).x, -1438f, _wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(round(var_3.c.x)))));
}

