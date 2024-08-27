struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>) -> vec4<u32> {
    var var_0 = select(vec4<i32>(~(u_input.b.x | u_input.b.x), _wgslsmith_mult_i32(-u_input.b.x, max(u_input.b.x, -14167i)), u_input.b.x, -1i >> (_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a) % 32u)) >> (min(~(vec4<u32>(4294967295u, 0u, u_input.a, u_input.a) & vec4<u32>(u_input.a, 6876u, 4294967295u, 4294967295u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(63951u, u_input.a, 38454u, 4294967295u))) % vec4<u32>(32u)), abs(vec4<i32>(u_input.b.x << (select(u_input.a, u_input.a, false) % 32u), -u_input.b.x, ~abs(1i), u_input.b.x)), !(!select(select(vec4<bool>(arg_0.x, false, false, false), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(true, true, arg_0.x, arg_0.x)), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), arg_0.x))));
    var var_1 = Struct_1(_wgslsmith_sub_vec3_i32(-select(~u_input.b, u_input.b >> (vec3<u32>(0u, u_input.a, 4294967295u) % vec3<u32>(32u)), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, false), arg_0.x)), vec3<i32>(-1i) * -var_0.www));
    var var_2 = ~(vec2<u32>(select(1u >> (u_input.a % 32u), 0u | u_input.a, false), _wgslsmith_div_u32(37705u | u_input.a, u_input.a)) << ((select(~vec2<u32>(1u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, u_input.a)), !vec2<bool>(arg_0.x, true)) << ((_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a)) | ~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_2 = vec2<u32>(abs(var_2.x), u_input.a);
    var_0 = vec4<i32>(u_input.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_1.a.xz, vec2<i32>(abs(u_input.b.x), _wgslsmith_div_i32(2147483647i, 14613i))), var_0.x), 12406i, max(~(-1i), ~_wgslsmith_dot_vec3_i32(-var_0.wzz, -u_input.b)));
    return _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(17355u, 0u, 4294967295u), vec3<u32>(1u, u_input.a, var_2.x)))), u_input.a, 1u, ~_wgslsmith_div_u32(9055u, _wgslsmith_mult_u32(7635u, 7327u))), ~abs(firstTrailingBit(~vec4<u32>(27675u, 4294967295u, 96600u, 0u))));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_2(true, u_input.b.x);
    let var_1 = Struct_2(!(~var_0.b <= min(u_input.b.x, var_0.b)), ~(i32(-1i) * -u_input.b.x));
    var_0 = Struct_2(var_1.a, var_0.b);
    let var_2 = Struct_4(Struct_1(-vec3<i32>(55981i, max(-2147483647i, var_0.b), _wgslsmith_sub_i32(1i, 48333i))), Struct_1(~(vec3<i32>(var_1.b, 13105i, var_1.b) | vec3<i32>(var_1.b, u_input.b.x, 2147483647i))), ~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(112238u, arg_0, 0u, u_input.a)), max(vec4<u32>(149398u, arg_0, 1u, 11455u), vec4<u32>(arg_0, arg_0, arg_0, 4294967295u))), func_3(!vec2<bool>(var_0.a, false))), var_1, select(vec2<bool>(any(vec3<bool>(var_1.a, var_1.a, true)), firstLeadingBit(var_0.b) > var_1.b), select(select(vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a), vec2<bool>(var_1.a, var_0.a)), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, var_1.a), vec2<bool>(var_0.a, false), false), var_1.a && false), !any(vec4<bool>(false, var_1.a, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, var_0.a), vec2<bool>(true, var_1.a), !var_1.a), select(select(vec2<bool>(true, var_1.a), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, true)), vec2<bool>(var_1.a, true), true & var_0.a))));
    var_0 = Struct_2(true, 37917i);
    return Struct_1(var_2.b.a);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_3) -> Struct_3 {
    let var_0 = func_2(4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-161f, -156f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-283f, 1200f) - vec2<f32>(-435f, 877f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1115f, 1403f))))));
    var var_1 = abs(((_wgslsmith_mod_u32(49037u, 14338u) ^ (4294967295u & u_input.a)) ^ _wgslsmith_sub_u32(4294967295u, ~0u)) << (43591u % 32u));
    var var_2 = arg_2.b;
    var var_3 = ~_wgslsmith_div_vec2_u32(vec2<u32>(max(max(8725u, 4294967295u), _wgslsmith_div_u32(arg_2.c.x, u_input.a)), arg_2.c.x), vec2<u32>(arg_2.c.x, max(arg_2.c.x, _wgslsmith_mod_u32(54696u, u_input.a))));
    var_1 = 86205u & ~abs(u_input.a);
    return Struct_3(vec4<bool>(all(!arg_2.e) || arg_1.a, arg_1.a, true, arg_3.a.x), func_2(countOneBits(~reverseBits(u_input.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1252f), _wgslsmith_f_op_f32(trunc(-301f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, -825f)))), true))));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec2<i32>) -> bool {
    var var_0 = func_4(Struct_3(!vec4<bool>(all(vec3<bool>(arg_2.a, arg_2.a, arg_2.a)), true, true, any(vec4<bool>(arg_2.a, arg_2.a, arg_2.a, arg_2.a))), func_2(_wgslsmith_mult_u32(arg_0, ~arg_0), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-605f, -404f))))))), arg_2, Struct_4(Struct_1(vec3<i32>(arg_2.b, 1i, 2147483647i)), Struct_1(countOneBits(u_input.b)), firstLeadingBit(arg_1), arg_2, vec2<bool>(any(vec2<bool>(arg_2.a, false)), arg_2.a)), Struct_3(select(vec4<bool>(true, arg_2.a, true, any(vec4<bool>(false, false, false, true))), select(!vec4<bool>(true, true, arg_2.a, false), !vec4<bool>(true, true, arg_2.a, arg_2.a), select(vec4<bool>(arg_2.a, arg_2.a, true, false), vec4<bool>(false, true, true, arg_2.a), arg_2.a)), arg_2.a), Struct_1(u_input.b)));
    var var_1 = min(var_0.b.a.x, u_input.b.x) > _wgslsmith_dot_vec3_i32(var_0.b.a, vec3<i32>(max(1i, firstLeadingBit(-2777i)), -var_0.b.a.x, (-2147483647i & var_0.b.a.x) << (_wgslsmith_sub_u32(u_input.a, arg_1.x) % 32u)));
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(-1i, arg_2.b), ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, var_0.b.a.x), -2147483647i));
    let var_3 = arg_2.a;
    let var_4 = -vec4<i32>(-var_2.x >> (u_input.a % 32u), -_wgslsmith_clamp_i32(-1i, 0i & u_input.b.x, -5577i), ~_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_div_i32(-2147483647i, -2147483647i)), 1i);
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(false, select(any(vec4<bool>(true, true, true, false)), true, true)), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(true, (u_input.b.x <= u_input.b.x) || (u_input.a > u_input.a))), vec2<bool>((max(-53084i, 2147483647i) << (~u_input.a % 32u)) < (-2147483647i << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(1u, 45586u, u_input.a)) % 32u)), false), !select(vec2<bool>(func_1(41264u, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_2(false, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)), func_1(0u, vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u), Struct_2(true, 8518i), vec2<i32>(u_input.b.x, 2147483647i))), select(vec2<bool>(true, false), vec2<bool>(true, true), 0i >= u_input.b.x), true));
    let var_1 = ~44998u;
    let var_2 = Struct_4(func_4(func_4(func_4(Struct_3(vec4<bool>(false, true, false, true), Struct_1(vec3<i32>(59199i, -7442i, -2147483647i))), Struct_2(var_0.x, u_input.b.x), Struct_4(Struct_1(vec3<i32>(-69993i, -1i, u_input.b.x)), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(13730u, 1u, 4294967295u, 59258u), Struct_2(var_0.x, u_input.b.x), vec2<bool>(false, true)), func_4(Struct_3(vec4<bool>(true, var_0.x, var_0.x, var_0.x), Struct_1(vec3<i32>(u_input.b.x, -2147483647i, 23004i))), Struct_2(var_0.x, u_input.b.x), Struct_4(Struct_1(u_input.b), Struct_1(u_input.b), vec4<u32>(2040u, u_input.a, 8705u, 1u), Struct_2(var_0.x, 64443i), vec2<bool>(var_0.x, var_0.x)), Struct_3(vec4<bool>(true, false, var_0.x, true), Struct_1(vec3<i32>(u_input.b.x, 21411i, u_input.b.x))))), Struct_2(any(vec4<bool>(false, var_0.x, true, true)), firstTrailingBit(2147483647i)), Struct_4(func_2(87593u, vec2<f32>(1000f, -1446f)), Struct_1(vec3<i32>(-2147483647i, u_input.b.x, 40752i)), ~vec4<u32>(69948u, 0u, 4294967295u, u_input.a), Struct_2(var_0.x, 0i), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true))), Struct_3(vec4<bool>(false, true, false, var_0.x), func_4(Struct_3(vec4<bool>(var_0.x, true, var_0.x, var_0.x), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i))), Struct_2(var_0.x, u_input.b.x), Struct_4(Struct_1(u_input.b), Struct_1(vec3<i32>(u_input.b.x, -1i, -36850i)), vec4<u32>(14449u, var_1, 1u, 15175u), Struct_2(var_0.x, u_input.b.x), vec2<bool>(false, var_0.x)), Struct_3(vec4<bool>(false, true, var_0.x, false), Struct_1(u_input.b))).b)), Struct_2(var_0.x, -u_input.b.x), Struct_4(func_4(func_4(Struct_3(vec4<bool>(true, true, true, var_0.x), Struct_1(u_input.b)), Struct_2(var_0.x, u_input.b.x), Struct_4(Struct_1(vec3<i32>(0i, 0i, u_input.b.x)), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, 6562i)), vec4<u32>(4294967295u, 1u, 14389u, var_1), Struct_2(false, u_input.b.x), vec2<bool>(false, false)), Struct_3(vec4<bool>(var_0.x, var_0.x, var_0.x, true), Struct_1(u_input.b))), Struct_2(var_0.x, u_input.b.x), Struct_4(Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, 7364i)), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(113603u, u_input.a, 4294967295u, u_input.a), Struct_2(true, -42239i), vec2<bool>(false, true)), func_4(Struct_3(vec4<bool>(false, false, false, var_0.x), Struct_1(u_input.b)), Struct_2(var_0.x, -5125i), Struct_4(Struct_1(vec3<i32>(u_input.b.x, -1i, u_input.b.x)), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, 16190i)), vec4<u32>(43997u, u_input.a, 10979u, 70605u), Struct_2(false, -2147483647i), vec2<bool>(false, var_0.x)), Struct_3(vec4<bool>(var_0.x, false, true, true), Struct_1(vec3<i32>(0i, -20083i, 0i))))).b, Struct_1(func_2(u_input.a, vec2<f32>(1634f, 126f)).a), abs(vec4<u32>(var_1, var_1, var_1, u_input.a)), Struct_2(!var_0.x, 29123i), vec2<bool>(true, true)), func_4(Struct_3(!vec4<bool>(var_0.x, true, false, false), func_2(44225u, vec2<f32>(-1992f, -2041f))), Struct_2(true, -u_input.b.x), Struct_4(func_2(u_input.a, vec2<f32>(1116f, 106f)), func_2(u_input.a, vec2<f32>(-183f, -1000f)), vec4<u32>(42805u, 0u, 1u, u_input.a), Struct_2(var_0.x, u_input.b.x), vec2<bool>(true, true)), Struct_3(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), false), Struct_1(u_input.b)))).b, func_4(func_4(Struct_3(vec4<bool>(var_0.x, var_0.x, false, true), Struct_1(vec3<i32>(u_input.b.x, -2147483647i, 1119i))), Struct_2(true, u_input.b.x), Struct_4(func_2(2923u, vec2<f32>(117f, 1304f)), Struct_1(u_input.b), firstTrailingBit(vec4<u32>(4294967295u, var_1, 0u, var_1)), Struct_2(var_0.x, u_input.b.x), !vec2<bool>(var_0.x, var_0.x)), func_4(Struct_3(vec4<bool>(var_0.x, false, var_0.x, true), Struct_1(u_input.b)), Struct_2(var_0.x, u_input.b.x), Struct_4(Struct_1(vec3<i32>(-1i, u_input.b.x, u_input.b.x)), Struct_1(vec3<i32>(-6732i, -1i, -26458i)), vec4<u32>(0u, 35509u, 1u, var_1), Struct_2(true, -2147483647i), vec2<bool>(false, var_0.x)), func_4(Struct_3(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(u_input.b)), Struct_2(false, -1774i), Struct_4(Struct_1(u_input.b), Struct_1(vec3<i32>(-7735i, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.a, 1u, 0u, 38547u), Struct_2(false, 15265i), vec2<bool>(false, var_0.x)), Struct_3(vec4<bool>(false, var_0.x, var_0.x, var_0.x), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))))), Struct_2(!var_0.x & all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_div_i32(-2147483647i, ~19526i)), Struct_4(func_2(var_1 ^ var_1, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-518f, 976f), vec2<f32>(468f, 288f), vec2<bool>(var_0.x, false)))), func_2(_wgslsmith_mod_u32(var_1, u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-843f, 316f))), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(46132u, var_1, u_input.a, 84697u), vec4<u32>(var_1, 0u, 51874u, var_1))), Struct_2(any(vec3<bool>(false, var_0.x, false)), ~508i), select(vec2<bool>(true, var_0.x), vec2<bool>(false, true), -1560i <= u_input.b.x)), func_4(func_4(Struct_3(vec4<bool>(true, true, var_0.x, false), Struct_1(vec3<i32>(u_input.b.x, 26732i, 2147483647i))), Struct_2(var_0.x, u_input.b.x), Struct_4(Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), Struct_1(vec3<i32>(-46274i, -2147483647i, 2147483647i)), vec4<u32>(var_1, var_1, 51542u, 8838u), Struct_2(true, u_input.b.x), vec2<bool>(var_0.x, var_0.x)), func_4(Struct_3(vec4<bool>(var_0.x, false, false, var_0.x), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, 0i))), Struct_2(var_0.x, u_input.b.x), Struct_4(Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, 1i)), Struct_1(vec3<i32>(0i, u_input.b.x, u_input.b.x)), vec4<u32>(40242u, 54875u, 57721u, 4294967295u), Struct_2(var_0.x, -1i), vec2<bool>(true, var_0.x)), Struct_3(vec4<bool>(true, var_0.x, var_0.x, true), Struct_1(vec3<i32>(1i, -520i, -1i))))), Struct_2(!var_0.x, 1i), Struct_4(Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), func_4(Struct_3(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(u_input.b)), Struct_2(var_0.x, 1i), Struct_4(Struct_1(vec3<i32>(12963i, u_input.b.x, 0i)), Struct_1(u_input.b), vec4<u32>(134697u, 9385u, 4294967295u, 1u), Struct_2(false, -2147483647i), vec2<bool>(var_0.x, var_0.x)), Struct_3(vec4<bool>(false, var_0.x, true, false), Struct_1(u_input.b))).b, ~vec4<u32>(12356u, 92471u, u_input.a, 4294967295u), Struct_2(false, -2147483647i), func_4(Struct_3(vec4<bool>(var_0.x, true, var_0.x, var_0.x), Struct_1(u_input.b)), Struct_2(true, 0i), Struct_4(Struct_1(u_input.b), Struct_1(vec3<i32>(-6829i, -22321i, 16998i)), vec4<u32>(0u, 0u, 0u, 4294967295u), Struct_2(var_0.x, u_input.b.x), vec2<bool>(false, true)), Struct_3(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(vec3<i32>(u_input.b.x, -1i, u_input.b.x)))).a.yx), func_4(Struct_3(vec4<bool>(var_0.x, true, var_0.x, true), Struct_1(u_input.b)), Struct_2(true, -2147483647i), Struct_4(Struct_1(u_input.b), Struct_1(u_input.b), vec4<u32>(115255u, u_input.a, 75714u, 0u), Struct_2(false, u_input.b.x), vec2<bool>(var_0.x, true)), Struct_3(vec4<bool>(var_0.x, var_0.x, true, var_0.x), Struct_1(u_input.b))))).b, vec4<u32>(_wgslsmith_sub_u32(1u, max(~0u, max(24419u, u_input.a))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_1, 25984u, u_input.a), ~var_1) & func_3(vec2<bool>(var_0.x, true)).x, var_1, 10987u), Struct_2(true, _wgslsmith_div_i32(43427i, ~u_input.b.x)), !(!select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true))));
    var var_3 = ~u_input.b.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1325f))))));
    let var_5 = Struct_3(!select(!vec4<bool>(false, var_0.x, var_2.e.x, false), select(select(vec4<bool>(false, var_2.d.a, var_2.d.a, false), vec4<bool>(true, false, var_2.e.x, var_0.x), vec4<bool>(var_0.x, true, var_2.d.a, false)), !vec4<bool>(true, var_0.x, false, false), !vec4<bool>(var_0.x, var_2.d.a, true, true)), !(!vec4<bool>(true, true, true, var_0.x))), Struct_1(u_input.b));
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(15416i);
}

