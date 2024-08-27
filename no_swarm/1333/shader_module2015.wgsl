struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> u32 {
    let var_0 = ~arg_0;
    var var_1 = Struct_1(firstLeadingBit(~firstLeadingBit(arg_0.xxx)), i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - -969f))) < 1f);
    var var_2 = 41644u;
    var var_3 = ~arg_0.xy;
    var_3 = vec2<u32>(5764u, u_input.a);
    return ~arg_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = arg_3;
    let var_1 = ~_wgslsmith_dot_vec3_u32(arg_3.a, firstLeadingBit(reverseBits(vec3<u32>(u_input.a, var_0.a.x, 26481u)))) ^ u_input.a;
    var var_2 = Struct_1(vec3<u32>(0u, 1u, 51176u) << (vec3<u32>(1u, var_0.a.x, select(~9279u, ~arg_0.a.x, any(vec4<bool>(arg_2.c, true, arg_2.c, true)))) % vec3<u32>(32u)), arg_0.b, var_0.c);
    var_2 = Struct_1(~var_0.a, var_0.b, true);
    let var_3 = true;
    return vec4<u32>(~u_input.a, ~0u, ~firstTrailingBit(firstLeadingBit(~var_2.a.x)), 31278u);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = func_4(Struct_1(min(vec3<u32>(u_input.a & 31495u, func_3(vec4<u32>(1u, u_input.a, 0u, u_input.a), 20434i), u_input.a), min(~vec3<u32>(2504u, 1u, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(4294967295u, u_input.a, u_input.a)))), ~abs(-1i) << (~_wgslsmith_mod_u32(1u, u_input.a) % 32u), true && any(vec4<bool>(false, true, false, false))), arg_0.x, Struct_1(~(~(vec3<u32>(u_input.a, 53731u, u_input.a) & vec3<u32>(u_input.a, 1u, 1u))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 1044i, -13121i), vec3<i32>(-23688i, -45941i, -1i), vec3<i32>(-16730i, -2147483647i, 2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(20112i, -43256i, 1i), vec3<i32>(2147483647i, -27313i, 1i), vec3<i32>(-1i, -34666i, 2147483647i))), ~(~vec3<i32>(2147483647i, 1i, -1685i))), true), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a & 38198u, ~4294967295u, 1u), firstLeadingBit(~vec3<u32>(u_input.a, u_input.a, 0u)), ~vec3<u32>(2718u, u_input.a, u_input.a)), ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, 1374i), countOneBits(56398i)), select(~7242u >= firstLeadingBit(u_input.a), true, _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false)) < _wgslsmith_f_op_f32(ceil(-907f)))));
    let var_1 = _wgslsmith_mod_vec4_i32(~abs(-vec4<i32>(2147483647i, -38553i, -1i, 2147483647i)), abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(86114i, 1i, 13865i, 31007i), vec4<i32>(1i, 1i, 1i, 1i)))) >> (vec4<u32>(~11460u << (var_0.x % 32u), var_0.x, abs(max(_wgslsmith_add_u32(32805u, 1u), firstTrailingBit(var_0.x))), _wgslsmith_mod_u32(u_input.a, ~u_input.a)) % vec4<u32>(32u));
    var var_2 = !(!select(!(!vec3<bool>(arg_0.x, arg_0.x, true)), select(!vec3<bool>(false, true, arg_0.x), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x), true), true));
    var var_3 = Struct_1(~var_0.wwy, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 16966i, var_1.x, var_1.x), countOneBits(vec4<i32>(var_1.x, 4617i, var_1.x, var_1.x)))), vec2<i32>(0i, ~firstTrailingBit(-12803i))), arg_0.x);
    var_2 = select(select(!vec3<bool>(true, true, var_2.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, arg_0.x, arg_0.x), !vec3<bool>(false, var_3.c, false), var_3.c), var_2.x), vec3<bool>(true && (false & var_3.c), !var_2.x, arg_0.x)), select(select(select(vec3<bool>(false, true, var_2.x), vec3<bool>(arg_0.x, var_3.c, arg_0.x), select(vec3<bool>(var_2.x, false, var_3.c), vec3<bool>(arg_0.x, var_3.c, true), var_3.c)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, var_2.x), arg_0.x), var_2.x), select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), any(vec4<bool>(arg_0.x, var_2.x, arg_0.x, var_3.c))), vec3<bool>(false, true, select(var_2.x, false, var_3.c)), !var_3.c), !select(!vec3<bool>(var_3.c, arg_0.x, false), !vec3<bool>(arg_0.x, true, var_3.c), true)), !var_2.x);
    return Struct_1(vec3<u32>(firstLeadingBit(_wgslsmith_clamp_u32(0u | var_3.a.x, firstTrailingBit(40624u), u_input.a)), 4294967295u, ~((var_0.x | var_3.a.x) & ~var_3.a.x)), var_3.b, true);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(min(-2147483647i, arg_2.b)), reverseBits(arg_2.b | arg_2.b)), -_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-21011i, arg_0.b), vec2<i32>(arg_2.b, -7409i)), vec2<i32>(-2147483647i, arg_2.b))), _wgslsmith_add_vec2_i32(~(abs(vec2<i32>(42577i, arg_2.b)) | max(vec2<i32>(11470i, -2147483647i), vec2<i32>(arg_0.b, -2147483647i))), vec2<i32>(reverseBits(~1i), -1i)));
    let var_1 = select(select(!select(vec4<bool>(arg_2.c, true, arg_2.c, arg_2.c), !vec4<bool>(false, arg_2.c, true, true), !vec4<bool>(arg_0.c, arg_2.c, true, true)), select(vec4<bool>(arg_0.c, any(arg_3.xx), func_2(arg_3.zx, vec2<f32>(1530f, 637f)).c, !arg_3.x), select(vec4<bool>(true, false, false, false), !vec4<bool>(true, arg_0.c, false, arg_2.c), !arg_2.c), true), vec4<bool>(arg_0.c, arg_3.x, arg_0.c, !(!arg_2.c))), vec4<bool>(true, true, arg_3.x, all(vec4<bool>(all(vec2<bool>(arg_3.x, false)), false, true, select(arg_2.c, arg_2.c, true)))), arg_2.c || true);
    var var_2 = -vec3<i32>(countOneBits(arg_2.b), var_0.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 0i, 2147483647i), vec4<i32>(arg_2.b, -1i, 2147483647i, var_0.x) | vec4<i32>(1i, var_0.x, -40797i, var_0.x)));
    var var_3 = ~_wgslsmith_mod_vec3_i32(max(select(vec3<i32>(var_0.x, var_2.x, 56570i), vec3<i32>(var_0.x, arg_0.b, arg_0.b), arg_0.c) << (~vec3<u32>(u_input.a, arg_2.a.x, arg_1.x) % vec3<u32>(32u)), -select(vec3<i32>(arg_2.b, -1i, var_2.x), vec3<i32>(-1i, 0i, arg_0.b), vec3<bool>(arg_3.x, arg_3.x, false))), vec3<i32>(-3528i, -min(14418i, -1i), firstTrailingBit(-arg_0.b)));
    var_2 = vec3<i32>(-(var_0.x | -1i), 0i, -28747i) ^ vec3<i32>(0i, ~firstLeadingBit(29784i), i32(-1i) * -42556i);
    return arg_1.zxy | ~abs(countOneBits(vec3<u32>(arg_2.a.x, arg_0.a.x, arg_2.a.x) ^ arg_1.xyz));
}

fn func_1() -> vec3<u32> {
    var var_0 = Struct_1(reverseBits(firstTrailingBit(func_5(func_2(vec2<bool>(false, true), vec2<f32>(-847f, -1503f)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 44263u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 81747u)), func_2(vec2<bool>(true, true), vec2<f32>(553f, 820f)), vec3<bool>(true, true, true)))), -82777i, false);
    return ~(~(~var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(), _wgslsmith_sub_i32(i32(-1i) * -1i, firstLeadingBit(~(-29070i))) & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-43007i, -51377i, -2147483647i), vec3<i32>(_wgslsmith_mod_i32(-2464i, 1i), ~1i, 32555i)), any(vec4<bool>(true, !all(vec3<bool>(false, false, true)), false, all(vec2<bool>(true, true)))));
    let var_1 = var_0;
    var var_2 = var_0;
    let var_3 = func_2(!(!select(vec2<bool>(true, false), !vec2<bool>(false, var_1.c), select(vec2<bool>(var_1.c, var_2.c), vec2<bool>(true, false), true))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(-211f, -347f), 535f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1018f, 114f)))))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-862f + -1158f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(323f - -617f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(802f - 1307f)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -696f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(-1282f)), 919f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1367f, -651f), vec2<f32>(1506f, -289f))))), vec2<bool>(all(vec4<bool>(var_3.c, var_3.c, var_2.c, false)), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1048f, -1000f)), vec2<f32>(286f, -786f)))))));
    var var_5 = !select(vec2<bool>(true, true), select(select(vec2<bool>(var_1.c, false), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(var_1.c, var_0.c), var_3.c), true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-846f, 1497f) + _wgslsmith_f_op_f32(var_4.x - var_4.x)) < var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, ~var_3.a.x, var_1.a.x), ~0u, vec3<i32>(-1i, var_1.b, _wgslsmith_mod_i32(var_2.b, -var_3.b)), ~var_1.a.x);
}

