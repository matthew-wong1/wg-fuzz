struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 2147483647i, -4205i), ~(-8428i), -1i) << (vec3<u32>(~u_input.a, ~u_input.a, select(u_input.a, 13277u, true)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(~max(vec3<i32>(1i, 1i, -1i), vec3<i32>(-1i, -1i, 1043i)), vec3<i32>(1i, 1i, 1i)), ~vec3<i32>(~(-2147483647i), -5278i, ~(-7888i)));
    return 10353i;
}

fn func_2(arg_0: Struct_1) -> Struct_5 {
    let var_0 = ~1691u;
    var var_1 = vec2<bool>(true, true);
    var var_2 = Struct_3(~vec2<u32>(abs(u_input.a), ~(~78519u)), u_input.a, Struct_2((arg_0.b.x | any(arg_0.b)) || all(select(arg_0.b, arg_0.b, arg_0.b)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a, var_0, 27195u, u_input.a), vec4<u32>(var_0, 0u, arg_0.a, var_0)) ^ abs(vec4<u32>(359u, 4160u, 26762u, u_input.a)), ~min(vec4<u32>(arg_0.a, 0u, 4294967295u, 4394u), vec4<u32>(u_input.a, 7972u, u_input.a, arg_0.a))), 5847i), ~vec3<u32>(select(4294967295u, arg_0.a & 7838u, arg_0.b.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(26479u, 18441u, arg_0.a), vec3<u32>(0u, var_0, var_0)), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, var_0), 4294967295u)), vec3<i32>(2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-16330i, -68163i, 2922i)), ~vec3<i32>(2147483647i, 0i, 14893i)), 19234i), 1i));
    var_2 = Struct_3(vec2<u32>(666u, arg_0.a), arg_0.a, Struct_2(any(select(vec4<bool>(true, true, arg_0.b.x, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, arg_0.b.x, var_2.c.a, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true))), 52876u, i32(-1i) * -firstLeadingBit(23618i)), var_2.d & ~_wgslsmith_mod_vec3_u32(vec3<u32>(39937u, 55651u, 42060u), ~vec3<u32>(24444u, 10722u, u_input.a)), ~var_2.e);
    let var_3 = true;
    return Struct_5(i32(-1i) * -var_2.e.x, arg_0.c.x, true, _wgslsmith_mod_i32(var_2.e.x, func_3()) << (~arg_0.a % 32u), Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_0.c.x, arg_0.c.x)), _wgslsmith_f_op_f32(sign(arg_0.c.x)))) > _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(429f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -638f), all(arg_0.b.xw))), reverseBits(~_wgslsmith_div_u32(u_input.a, var_0)), var_2.e.x));
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> u32 {
    let var_0 = func_2(Struct_1(0u, select(vec4<bool>(false, true, all(vec3<bool>(false, arg_1.c.a, true)), false), !(!vec4<bool>(false, arg_1.c.a, true, arg_1.c.a)), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(514f, 651f, 101f, 2073f)))))));
    var var_1 = abs(~(~(~arg_1.d)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b, var_0.b, -1000f, -1048f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -1000f, -276f, -737f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(431f, var_0.b, -1676f, var_0.b), vec4<f32>(1420f, -265f, 301f, -503f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 515f, var_0.b, var_0.b) + vec4<f32>(197f, var_0.b, var_0.b, var_0.b))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(107f, -925f))) - _wgslsmith_f_op_f32(trunc(var_0.b))), func_2(Struct_1(0u, !vec4<bool>(true, false, arg_1.c.a, var_0.c), vec4<f32>(var_0.b, 415f, var_0.b, var_0.b))).b, _wgslsmith_f_op_f32(f32(-1f) * -1566f), 1274f));
    var_1 = _wgslsmith_mod_vec3_u32(~(~vec3<u32>(4294967295u, var_1.x, var_0.e.b)), vec3<u32>(_wgslsmith_dot_vec3_u32(arg_1.d | _wgslsmith_add_vec3_u32(vec3<u32>(var_0.e.b, var_1.x, 87821u), arg_1.d), _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(21929u, 0u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.c.b, arg_1.b, var_0.e.b), vec3<u32>(48643u, arg_1.a.x, 49453u), vec3<u32>(var_0.e.b, 4294967295u, u_input.a)))), firstTrailingBit(var_1.x), 0u));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-236f - _wgslsmith_f_op_f32(floor(var_0.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2220f, -1629f, var_0.c)), var_0.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1162f, 2820f) + var_2.x) + var_0.b)), _wgslsmith_f_op_f32(-var_2.x), var_0.b);
    return var_0.e.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1304f;
    let var_1 = vec2<bool>(any(vec3<bool>(true, !any(vec2<bool>(false, false)), any(vec2<bool>(true, true)))), true);
    var var_2 = Struct_2(true, 69583u, _wgslsmith_mod_i32(_wgslsmith_div_i32(abs(-2147483647i), -2147483647i), -13067i << (abs(firstTrailingBit(u_input.a)) % 32u)));
    var var_3 = Struct_3(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(var_2.b, 80664u)), countOneBits(vec2<u32>(14038u, var_2.b))), vec2<u32>(firstLeadingBit(u_input.a) << (~1u % 32u), 27634u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.b & u_input.a, ~4294967295u), vec2<u32>(func_1(-15462i, Struct_3(vec2<u32>(0u, u_input.a), var_2.b, Struct_2(var_2.a, var_2.b, var_2.c), vec3<u32>(142932u, u_input.a, u_input.a), vec3<i32>(81548i, var_2.c, var_2.c))), 1u))), 13364u, Struct_2(var_1.x || !all(vec4<bool>(false, var_1.x, true, true)), ~16074u, min(~_wgslsmith_div_i32(var_2.c, var_2.c), -1i)), min(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 19873u, 0u), vec3<u32>(4304u, 40245u, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(37399u, u_input.a, var_2.b), vec3<u32>(var_2.b, var_2.b, 1u))), ((vec3<u32>(57486u, 15949u, var_2.b) << (vec3<u32>(var_2.b, var_2.b, 57525u) % vec3<u32>(32u))) | _wgslsmith_div_vec3_u32(vec3<u32>(8947u, u_input.a, 29124u), vec3<u32>(29887u, var_2.b, var_2.b))) << (~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_2.b, 40772u), vec3<u32>(4294967295u, u_input.a, u_input.a)) % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(min(-962i, var_2.c), reverseBits(var_2.c), -2147483647i), -(~vec3<i32>(11702i, var_2.c, 23516i)), abs(max(vec3<i32>(26389i, var_2.c, -22171i), vec3<i32>(-9424i, var_2.c, var_2.c)))));
    var_2 = func_2(Struct_1(_wgslsmith_sub_u32(38909u, u_input.a), !vec4<bool>(any(vec3<bool>(true, false, var_2.a)), var_2.c < 2147483647i, var_3.c.b > 0u, var_2.a), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(345f, var_0, 1072f, var_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1095f, -238f, var_0, 262f))))))).e;
    var_3 = Struct_3(var_3.a, ~(~0u), Struct_2(var_3.c.a, ~(~(var_2.b >> (u_input.a % 32u))), -15208i), ~var_3.d, var_3.e);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(921f)), _wgslsmith_f_op_f32(trunc(var_0)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0)), -121f))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))) - func_2(Struct_1(u_input.a, vec4<bool>(var_2.a, true, true, var_3.c.a), vec4<f32>(-1000f, -779f, var_0, var_0))).b), var_0, _wgslsmith_f_op_f32(ceil(var_0))));
    var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(max(155f, -160f))), -495f, _wgslsmith_f_op_f32(-var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(var_3.c.b, u_input.a, var_3.c.b, u_input.a)) << (vec4<u32>(1u, func_2(Struct_1(4294967295u, vec4<bool>(true, var_3.c.a, false, false), vec4<f32>(var_0, var_0, 1164f, 1000f))).e.b, _wgslsmith_add_u32(94380u, var_2.b), var_3.c.b) % vec4<u32>(32u))), vec3<i32>(~(~_wgslsmith_clamp_i32(0i, -1i, 2147483647i)), _wgslsmith_mult_i32(var_2.c, -16354i), -(~var_2.c)), 2147483647i, var_4.zx);
}

