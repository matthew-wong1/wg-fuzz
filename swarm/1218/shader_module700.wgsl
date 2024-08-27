struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<i32> {
    let var_0 = -35117i;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(276f, -960f), vec2<f32>(-470f, -130f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(133f, -224f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(489f)), _wgslsmith_f_op_f32(668f - 1000f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(797f - -1811f), 483f)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-877f, _wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(trunc(var_1.x))));
    global0 = array<Struct_3, 19>();
    var var_3 = ~vec4<i32>(~var_0, ~(13164i << (u_input.c % 32u)), ((var_0 >> (u_input.a.x % 32u)) >> (4294967295u % 32u)) << (u_input.c % 32u), max(abs(~12299i), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_0, var_0, 1i, var_0)), vec4<i32>(-1i, -2147483647i, -17099i, 30912i))));
    return -(~_wgslsmith_div_vec4_i32((vec4<i32>(var_3.x, var_0, var_3.x, 29169i) & vec4<i32>(14487i, var_0, 21467i, var_0)) << ((vec4<u32>(1u, 22980u, 20555u, 1u) & vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u)) % vec4<u32>(32u)), -select(vec4<i32>(var_3.x, var_3.x, var_3.x, -339i), vec4<i32>(var_3.x, var_3.x, -6724i, var_0), vec4<bool>(true, true, false, false))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec3<u32>(abs(countOneBits(~1u)), _wgslsmith_sub_u32(arg_1 ^ (select(29677u, arg_1, arg_0.a) | abs(arg_1)), firstTrailingBit(0u)), arg_1);
    let var_1 = arg_3;
    var var_2 = Struct_1(4294967295u, vec4<i32>(-arg_3.b.x, -45068i, arg_3.d.x, ~var_1.b.x), vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.x), -452f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1846f, 336f))))), func_3() << (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(37228u, var_0.x, u_input.c, arg_2), vec4<u32>(46455u, arg_2, 4294967295u, arg_2))) % vec4<u32>(32u)));
    var_2 = Struct_1(var_1.a, _wgslsmith_mult_vec4_i32(reverseBits((vec4<i32>(2147483647i, var_2.d.x, 2147483647i, var_2.d.x) ^ vec4<i32>(arg_3.d.x, -2147483647i, var_1.b.x, var_2.d.x)) ^ reverseBits(vec4<i32>(var_2.b.x, -2147483647i, -1i, 2147483647i))), ~arg_3.b), var_2.c, var_2.b);
    var_0 = u_input.b;
    return Struct_1(_wgslsmith_sub_u32(~max(77109u, 1u), 34961u), select(func_3(), vec4<i32>((var_2.d.x ^ 2147483647i) & ~var_1.d.x, 2147483647i, var_1.b.x, select(-var_1.b.x, max(var_2.b.x, var_1.b.x), !arg_0.a)), !vec4<bool>(false, false, select(true, arg_0.a, true), !arg_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c.x))), -670f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.c.x)))) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1464f, arg_3.c.x), _wgslsmith_div_f32(arg_3.c.x, -861f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - -1122f), _wgslsmith_f_op_f32(693f - _wgslsmith_f_op_f32(trunc(arg_3.c.x))))), var_1.b);
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: f32) -> Struct_1 {
    global0 = array<Struct_3, 19>();
    var var_0 = Struct_2(!select(select(select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, false, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0.xwz, any(arg_0)), !arg_0.xwz, -1i == (-1i | arg_1)), _wgslsmith_div_i32(arg_1, reverseBits(-20671i & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, -11156i, arg_1, arg_1), vec4<i32>(arg_1, arg_1, arg_1, 1i)))), func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, ~(~39844u)), 19u)], u_input.a.x >> (0u % 32u), reverseBits(_wgslsmith_mult_u32(u_input.a.x | 1u, u_input.b.x)), Struct_1(min(159182u, max(0u, u_input.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1, 11210i, arg_1, arg_1) & vec4<i32>(16133i, arg_1, -27116i, 0i), -vec4<i32>(arg_1, 57415i, 39457i, arg_1)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -431f), -239f, arg_2), select(firstTrailingBit(vec4<i32>(-9260i, 1531i, 42375i, arg_1)), ~vec4<i32>(-2147483647i, 2147483647i, -1i, -2147483647i), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))), Struct_1(u_input.c, _wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_1, -1i >> (u_input.b.x % 32u), 2147483647i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-21185i, arg_1, arg_1, 66481i), vec4<i32>(12771i, arg_1, -8851i, 788i))), vec3<f32>(_wgslsmith_f_op_f32(step(arg_2, func_2(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], u_input.a.x, u_input.b.x, Struct_1(2366u, vec4<i32>(30783i, arg_1, arg_1, -6107i), vec3<f32>(404f, arg_2, arg_2), vec4<i32>(arg_1, -1i, 34795i, arg_1))).c.x)), _wgslsmith_f_op_f32(abs(-2180f)), arg_2), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-51963i, 38644i, arg_1, 2147483647i), vec4<i32>(arg_1, arg_1, -2147483647i, -1i), vec4<i32>(arg_1, arg_1, arg_1, arg_1)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, -2147483647i, arg_1, arg_1), vec4<i32>(56326i, 2147483647i, 2147483647i, arg_1))), abs(vec4<i32>(-22765i, -35840i, arg_1, arg_1)), ~(-vec4<i32>(50183i, arg_1, arg_1, -2147483647i)))), vec4<bool>(true, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1546f, arg_2))) <= _wgslsmith_f_op_f32(round(arg_2)), !(!select(true, arg_0.x, false))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -815f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - 223f) * _wgslsmith_div_f32(-1625f, -362f))), 429f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.c.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), 518f)) + var_0.c.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(415f * _wgslsmith_f_op_f32(-arg_2))));
    var_0 = Struct_2(vec3<bool>(true, all(var_0.a.xx), (false && any(arg_0.yw)) || false), _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, var_0.d.d.x), reverseBits(var_0.c.b.x)), 99079i), 33157i), var_0.d, func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.c.a, 58869u), 19u)], 76086u << (u_input.a.x % 32u), u_input.c, var_0.d), select(select(var_0.e, arg_0, firstTrailingBit(var_0.c.d.x) <= var_0.c.d.x), arg_0, select(all(!var_0.e), all(select(var_0.e, vec4<bool>(false, false, true, false), var_0.e)), true)));
    var var_2 = Struct_2(var_0.e.zzx, ~_wgslsmith_div_i32(countOneBits(1i), arg_1), func_2(global0[_wgslsmith_index_u32(1u, 19u)], 42611u, 1u, Struct_1(~1u, var_0.c.d, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(var_1.wwz, vec3<f32>(var_1.x, var_0.d.c.x, arg_2))))), var_0.c.d)), func_2(Struct_3(select(false, arg_0.x, arg_0.x) | var_0.a.x), _wgslsmith_clamp_u32(0u, 1u, _wgslsmith_mult_u32(1u, 1u)), ~_wgslsmith_clamp_u32(~u_input.c, 1u, abs(var_0.d.a)), var_0.c), select(!(!vec4<bool>(false, var_0.a.x, arg_0.x, var_0.e.x)), select(var_0.e, select(select(vec4<bool>(var_0.a.x, arg_0.x, false, true), vec4<bool>(true, false, false, false), arg_0.x), !var_0.e, arg_0), !select(arg_0, vec4<bool>(arg_0.x, false, arg_0.x, var_0.e.x), var_0.e)), !var_0.e));
    return func_2(Struct_3(!(1u <= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, var_0.c.a), u_input.b))), var_0.c.a >> (~var_2.d.a % 32u), var_2.c.a, func_2(global0[_wgslsmith_index_u32(~(~1u), 19u)], ~_wgslsmith_mod_u32(66467u, u_input.a.x), _wgslsmith_div_u32(var_2.c.a, 33488u) >> (0u % 32u), Struct_1(4294967295u, ~firstLeadingBit(var_2.c.d), var_0.c.c, ~(~var_0.d.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = vec4<i32>(-53439i, ~(-1i), i32(-1i) * -2147483647i, max(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(50902i, 4738i, 2147483647i, -2147483647i)), -2799i), 1i));
    var var_2 = ~(~u_input.b.x);
    var var_3 = func_1(!vec4<bool>(1i == _wgslsmith_mod_i32(var_1.x, 28053i), true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), !all(vec2<bool>(true, true))), _wgslsmith_clamp_i32(var_1.x, -_wgslsmith_mult_i32(4458i, -var_1.x), -var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -236f), -1670f)) * -172f));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, firstTrailingBit(u_input.c)), 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.c.x), 0i);
}

