struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    let var_0 = Struct_4(Struct_3(Struct_2(!arg_2.x, 1u, _wgslsmith_f_op_f32(-arg_0.a.c), Struct_1(arg_0.a.d.a, arg_0.a.d.a.x ^ 4294967295u))), firstTrailingBit(abs(vec3<i32>(_wgslsmith_mod_i32(2147483647i, -1i), 1i, -34036i << (arg_1 % 32u)))), Struct_1(_wgslsmith_div_vec2_u32(~arg_0.a.d.a, ~arg_0.a.d.a ^ vec2<u32>(0u, arg_1)), ~4294967295u), arg_0.a.d);
    return arg_0.a.b;
}

fn func_3(arg_0: i32) -> vec2<u32> {
    let var_0 = u_input.a;
    let var_1 = countOneBits(~vec4<u32>(23780u, reverseBits(13713u), countOneBits(10046u << (0u % 32u)), countOneBits(~103170u)));
    var var_2 = Struct_2(false, func_2(Struct_3(Struct_2(false, 1u, -518f, Struct_1(vec2<u32>(var_1.x, 0u), 1u))), _wgslsmith_mod_u32(select(var_1.x, var_1.x, true), 0u), vec3<bool>(true, true, true)) | _wgslsmith_div_u32(1u, var_1.x), 644f, Struct_1(~countOneBits(~var_1.yz), _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 7771u, var_1.x, 26060u), var_1), ~reverseBits(0u))));
    return _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, firstTrailingBit(_wgslsmith_clamp_u32(54240u, 60053u, var_2.b))), ~(~var_1.zy)), (var_1.ww ^ var_1.yx) ^ vec2<u32>(_wgslsmith_div_u32(~4294967295u, 68324u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_1.zxx, var_1.ywx), vec3<u32>(23565u, 4294967295u, 4294967295u))));
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = vec4<u32>(1u, select(~(~4294967295u), 1802u, true), select(~(~4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(41770u, 0u, 76406u), vec3<u32>(12585u, 79578u, 1u), vec3<bool>(false, true, true)), ~vec3<u32>(4294967295u, 43380u, 54435u)), ~vec3<u32>(0u, 4294967295u, 12908u)), false), _wgslsmith_clamp_u32(~(~func_2(Struct_3(Struct_2(true, 0u, -1003f, Struct_1(vec2<u32>(2049u, 1u), 4294967295u))), 14096u, vec3<bool>(true, true, false))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(16712u, 0u, 0u), ~vec3<u32>(0u, 4872u, 28617u)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 79188u)), ~func_3(u_input.a.x))));
    var var_1 = Struct_1(max(_wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_0.x, 4294967295u)), select(~vec2<u32>(4294967295u, var_0.x), vec2<u32>(0u, 46069u), true)), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(var_0, var_0))), _wgslsmith_div_u32(66967u, _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~var_0.x, 1u, var_0.x), var_0)));
    var_1 = Struct_1(var_1.a, ~var_0.x);
    let var_2 = func_2(Struct_3(Struct_2(true, _wgslsmith_sub_u32(0u, var_1.b), arg_0, Struct_1(var_1.a, var_0.x))), 31019u, vec3<bool>(_wgslsmith_f_op_f32(-450f + arg_0) > _wgslsmith_f_op_f32(select(arg_0, arg_0, true)), all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)))) ^ 1u;
    let var_3 = Struct_3(Struct_2(!(-1306f != _wgslsmith_f_op_f32(trunc(arg_0))), ~var_1.a.x, 828f, Struct_1(var_0.yy, var_1.a.x)));
    return Struct_4(Struct_3(Struct_2((u_input.a.x <= u_input.a.x) & !var_3.a.a, 1u, -504f, var_3.a.d)), _wgslsmith_mult_vec3_i32(reverseBits(u_input.a), ~u_input.a), var_3.a.d, var_3.a.d);
}

fn func_4(arg_0: Struct_4) -> vec2<u32> {
    let var_0 = Struct_3(arg_0.a.a);
    let var_1 = select(!vec2<bool>(all(!vec4<bool>(var_0.a.a, false, false, arg_0.a.a.a)), true), vec2<bool>(true, !any(select(vec3<bool>(false, arg_0.a.a.a, false), vec3<bool>(arg_0.a.a.a, var_0.a.a, false), true))), vec2<bool>(!func_1(var_0.a.c).a.a.a, !arg_0.a.a.a));
    let var_2 = _wgslsmith_mod_vec2_i32(u_input.a.yx, vec2<i32>(20367i, _wgslsmith_div_i32(46423i, 8915i) << (abs(_wgslsmith_mod_u32(var_0.a.d.a.x, 71718u)) % 32u)));
    let var_3 = var_0.a.d;
    let var_4 = Struct_3(func_1(-1319f).a.a);
    return firstLeadingBit(select(~_wgslsmith_add_vec2_u32(arg_0.c.a, _wgslsmith_mult_vec2_u32(vec2<u32>(var_4.a.d.b, var_3.b), vec2<u32>(4294967295u, 4294967295u))), vec2<u32>(arg_0.a.a.d.a.x, 18107u), vec2<bool>(true, var_4.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~_wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u)), func_4(func_1(-119f))), 1u);
    let var_1 = 6092u;
    var var_2 = Struct_1(min(var_0.a, _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, var_0.b), ~var_0.a, var_0.a | vec2<u32>(43408u, var_0.b))) ^ ~vec2<u32>(1u, ~var_0.a.x), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.a.x, ~var_1), ~(~var_1)));
    let var_3 = func_1(_wgslsmith_f_op_f32(select(1350f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(104f * 918f)))), false))).c;
    var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(123f))))).d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(~1i), 44887i, firstTrailingBit(_wgslsmith_mult_i32(-44314i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))), u_input.a.x), _wgslsmith_clamp_i32(-2147483647i, ~abs(-2147483647i), firstLeadingBit(func_1(426f).b.x) << ((~73987u & (var_1 >> (6459u % 32u))) % 32u)), -425f, vec4<i32>(-u_input.a.x << (func_2(func_1(-195f).a, countOneBits(64019u), vec3<bool>(true, true, true)) % 32u), u_input.a.x, u_input.a.x, ~countOneBits(_wgslsmith_div_i32(u_input.a.x, u_input.a.x))));
}

