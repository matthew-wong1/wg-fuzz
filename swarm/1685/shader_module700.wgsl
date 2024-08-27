struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_4(min(arg_0, 49913i), _wgslsmith_div_i32(2147483647i, arg_0));
    var var_1 = all(select(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(min(-234f, -317f)) < _wgslsmith_f_op_f32(ceil(261f)), (3025i > arg_0) & all(vec4<bool>(false, false, true, true)))));
    var_0 = Struct_4(firstTrailingBit(reverseBits(6032i)), max(-arg_0, 26617i));
    var var_2 = Struct_3(Struct_1(reverseBits(_wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, 1i), -var_0.a, reverseBits(31457i)))));
    let var_3 = -2147483647i;
    return -128f;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(firstTrailingBit(firstTrailingBit(-1i) << (u_input.b % 32u)), ~firstLeadingBit(arg_1.x))));
    let var_1 = arg_0;
    var var_2 = Struct_2(~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 41067u, 4294967295u, 0u), vec4<u32>(arg_2, 128796u, u_input.a.x, u_input.b)), max(61870u, 27542u) & (16149u << (u_input.a.x % 32u)), 13471u, _wgslsmith_dot_vec2_u32(~u_input.a.zy, vec2<u32>(1u, 27686u))));
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, _wgslsmith_f_op_f32(ceil(var_0)), 191f)));
    var var_4 = var_3.xz;
    return Struct_2(~_wgslsmith_mod_vec4_u32(var_2.a, ~vec4<u32>(1u, u_input.a.x, 1u, 44061u)) << (var_2.a % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = select(select(vec3<bool>(false, true, false), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, arg_0.a.x <= arg_0.a.x), !all(vec4<bool>(true, true, true, true))), -656f > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1240f), 2528f))), vec3<bool>(true, false, any(vec4<bool>(true, true, true, true))), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false))));
    var_0 = select(!select(!select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, var_0.x)), vec3<bool>(false, var_0.x, false), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), false), vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false)))), select(vec3<bool>(select(false | var_0.x, !var_0.x, var_0.x && var_0.x), !var_0.x, var_0.x), select(select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, false, false), vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(true, var_0.x, var_0.x), any(vec3<bool>(var_0.x, var_0.x, var_0.x))), select(select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x), var_0.x), !vec3<bool>(var_0.x, true, true), !var_0.x), vec3<bool>(any(vec3<bool>(var_0.x, false, false)), var_0.x || false, true)), true), true);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1270f - -374f), _wgslsmith_f_op_f32(select(1587f, 345f, var_0.x))))) * -1042f), _wgslsmith_f_op_f32(f32(-1f) * -104f));
    var_0 = vec3<bool>(_wgslsmith_div_i32(-1i, 2147483647i) > arg_1, select(false, true, true), (true & any(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true), true))) && false);
    let var_2 = select(~(-(~vec3<i32>(-2147483647i, arg_1, -6893i))), vec3<i32>(arg_1, ~(-2147483647i ^ select(arg_1, 1i, var_0.x)), arg_1), select(select(select(!vec3<bool>(var_0.x, false, false), select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, false, false), var_0.x), true), vec3<bool>(any(vec2<bool>(var_0.x, true)), all(vec3<bool>(var_0.x, var_0.x, false)), all(vec3<bool>(var_0.x, var_0.x, var_0.x))), vec3<bool>(true, all(vec3<bool>(var_0.x, var_0.x, true)), var_0.x)), select(select(vec3<bool>(true, false, var_0.x), !vec3<bool>(true, var_0.x, true), var_0.x), vec3<bool>(true, any(vec4<bool>(false, true, var_0.x, var_0.x)), var_0.x), !vec3<bool>(true, var_0.x, var_0.x)), false));
    return Struct_3(Struct_1(_wgslsmith_sub_i32(max(arg_1 | -2147483647i, var_2.x), 18410i)));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = 19000u;
    var var_1 = ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c, 0u, 76192u), ~u_input.b) ^ _wgslsmith_div_u32(countOneBits(u_input.a.x), _wgslsmith_add_u32(u_input.b, u_input.c)), 1u);
    var_0 = _wgslsmith_clamp_u32(select(34121u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 1u, 49564u, 4294967295u), vec4<u32>(arg_1.x, u_input.c, 1u, 1u))), arg_1.x, abs(arg_1.x)), _wgslsmith_mod_i32(arg_0.a.a, 25356i) < arg_0.a.a), 12624u, ~(7524u >> (abs(u_input.c) % 32u)));
    var var_2 = vec2<u32>(arg_1.x, ~_wgslsmith_add_u32(55610u, arg_1.x));
    var_1 = _wgslsmith_mult_u32(~select(~min(arg_1.x, u_input.b), ~u_input.c, true), abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_2.x, 0u, 1u), abs(vec4<u32>(29895u, arg_1.x, 84469u, 0u))), firstLeadingBit(abs(arg_1.x)))));
    return vec2<bool>(true, true);
}

fn func_1(arg_0: Struct_4) -> f32 {
    var var_0 = func_5(func_4(func_2(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true), ~vec2<i32>(arg_0.b, arg_0.b), _wgslsmith_div_u32(firstTrailingBit(u_input.a.x), ~1u)), -2147483647i, max(vec4<u32>(46290u, 4294967295u, u_input.c, u_input.b) << (~vec4<u32>(9218u, u_input.a.x, 32551u, 50650u) % vec4<u32>(32u)), select(~vec4<u32>(4294967295u, u_input.c, 99844u, u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 7860u, u_input.b, u_input.a.x), vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 1u)), vec4<bool>(false, true, true, false)))), ~u_input.a);
    var var_1 = 1u;
    var var_2 = ~vec4<i32>(firstLeadingBit(-4420i), 2147483647i ^ _wgslsmith_sub_i32(-arg_0.b, ~arg_0.a), 36471i, 12969i);
    var var_3 = Struct_3(func_4(Struct_2(select(func_2(vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_2.xy, 36391u).a, vec4<u32>(u_input.b, 0u, u_input.c, u_input.b), vec4<bool>(var_0.x, false, var_0.x, true))), max(abs(var_2.x), ~0i), ~abs(func_2(vec4<bool>(var_0.x, var_0.x, true, true), vec2<i32>(-2147483647i, -23002i), u_input.b).a)).a);
    var var_4 = ~abs(func_2(!select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, false, false, var_0.x), true), abs(vec2<i32>(0i, -2147483647i)), 4294967295u).a);
    return _wgslsmith_f_op_f32(f32(-1f) * -631f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(Struct_4(5768i, 2147483647i))))) + 1f) > _wgslsmith_f_op_f32(max(-913f, -767f)));
    let var_1 = Struct_1(11925i ^ _wgslsmith_clamp_i32(-1i, -_wgslsmith_add_i32(-8913i, 0i), max(abs(2147483647i), -18079i)));
    var_0 = vec2<bool>(1i != func_4(Struct_2(~vec4<u32>(u_input.a.x, 17921u, u_input.b, 1u)), var_1.a, vec4<u32>(_wgslsmith_clamp_u32(7676u, u_input.b, u_input.c), countOneBits(40526u), countOneBits(u_input.c), 1u)).a.a, !all(func_5(func_4(Struct_2(vec4<u32>(u_input.c, 1u, u_input.c, u_input.a.x)), 1i, vec4<u32>(0u, 4294967295u, 7169u, 30916u)), _wgslsmith_mult_vec3_u32(u_input.a, u_input.a))));
    let var_2 = func_4(func_2(!(!(!vec4<bool>(var_0.x, var_0.x, false, true))), reverseBits(vec2<i32>(var_1.a, max(var_1.a, var_1.a))), ~(~u_input.a.x)), abs(~0i | countOneBits(var_1.a)), vec4<u32>(abs(~4294967295u << (func_2(vec4<bool>(true, var_0.x, var_0.x, false), vec2<i32>(2147483647i, -5617i), 0u).a.x % 32u)), 69616u, min(u_input.c << (~4294967295u % 32u), ~_wgslsmith_div_u32(u_input.b, 4294967295u)), u_input.c)).a;
    let var_3 = _wgslsmith_mod_vec4_i32(max(min(firstTrailingBit(~vec4<i32>(-12177i, var_2.a, var_2.a, 2147483647i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-5775i, 1i, var_2.a, 0i), vec4<i32>(1i, var_1.a, 69408i, var_1.a))), vec4<i32>(_wgslsmith_mult_i32(1i & var_1.a, var_2.a), 2147483647i, var_1.a, -2147483647i)), ~vec4<i32>(-_wgslsmith_mod_i32(-2147483647i, 5470i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1.a, -51901i), -6014i), var_2.a, -var_2.a));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-626f)), -939f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_4.x, var_4.x, -1802f, 189f))) - vec4<f32>(var_4.x, var_4.x, var_4.x, var_4.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, -2017f, var_4.x)), vec4<f32>(var_4.x, var_4.x, var_4.x, 1192f)))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_4.x)), var_4.x, 1f), ~(max(_wgslsmith_add_vec3_i32(vec3<i32>(10693i, 2147483647i, var_2.a), var_3.yyz), select(vec3<i32>(var_1.a, -18257i, var_3.x), vec3<i32>(5910i, var_2.a, -2022i), false)) >> (u_input.a % vec3<u32>(32u))));
}

