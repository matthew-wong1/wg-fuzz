struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = false;
    var var_1 = select(~countOneBits(vec4<i32>(-3066i, -2147483647i, u_input.a, arg_1.d.x)) | (vec4<i32>(1i, 61676i, u_input.a, 21033i) << (vec4<u32>(43635u, arg_1.a.x, arg_1.a.x, 4294967295u) % vec4<u32>(32u))), ~abs(vec4<i32>(arg_1.d.x, arg_1.b, 4357i, u_input.a)) ^ select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 11457i, arg_1.b, 2706i), vec4<i32>(u_input.a, arg_1.d.x, u_input.a, 22944i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, arg_1.d.x, arg_1.b, -5002i), vec4<i32>(arg_1.d.x, -6717i, 0i, 6726i)), true), select(select(!vec4<bool>(true, true, arg_1.c.x, arg_0), !vec4<bool>(arg_0, arg_1.c.x, arg_0, var_0), !vec4<bool>(var_0, arg_1.c.x, var_0, false)), select(!vec4<bool>(true, var_0, false, false), select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, var_0, false, var_0), var_0), any(vec3<bool>(true, false, var_0))), !any(arg_1.c))) | _wgslsmith_clamp_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(33724i, arg_1.d.x, 31771i, arg_1.b), vec4<i32>(-1310i, u_input.a, arg_1.d.x, 0i))) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<u32>(arg_1.a.x, 0u, 13444u, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(select(1i, 39583i, arg_1.c.x), -189i), arg_1.b ^ reverseBits(u_input.a), u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, -6686i, 2147483647i, 37951i), abs(vec4<i32>(arg_1.b, u_input.a, -51491i, 0i)))), vec4<i32>(u_input.a, arg_1.b, 1i, _wgslsmith_dot_vec2_i32(arg_1.d, select(arg_1.d, arg_1.d, vec2<bool>(false, false)))));
    var var_2 = vec3<bool>(var_0, false, true);
    var_1 = vec4<i32>(-(firstTrailingBit(1i << (0u % 32u)) ^ countOneBits(~(-2147483647i))), -arg_1.b, -1i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(firstLeadingBit(arg_1.b), _wgslsmith_mod_i32(-2147483647i, u_input.a), ~u_input.a, ~u_input.a)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(62103i, arg_1.b, 15281i, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -36920i, u_input.a, -4902i), vec4<i32>(-18082i, u_input.a, -14972i, 1i), vec4<i32>(0i, 1i, u_input.a, arg_1.d.x))), vec4<i32>(21088i, 1i, var_1.x, _wgslsmith_dot_vec2_i32(var_1.xy, vec2<i32>(-26342i, 4043i))))));
    let var_3 = ~arg_1.a.x;
    return 25506u;
}

fn func_2(arg_0: vec2<u32>) -> vec2<u32> {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(-1192i, -27378i), u_input.a, ~abs(reverseBits(abs(u_input.a))), u_input.a);
    let var_1 = Struct_1(max(reverseBits(vec4<u32>(arg_0.x, arg_0.x & arg_0.x, arg_0.x, 1u)), ~vec4<u32>(~arg_0.x, arg_0.x, reverseBits(arg_0.x), func_3(true, Struct_1(vec4<u32>(arg_0.x, 14281u, arg_0.x, arg_0.x), -30786i, vec2<bool>(true, false), vec2<i32>(-25343i, -39199i))))), abs(2147483647i), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, any(vec4<bool>(false, true, true, false))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<i32>(_wgslsmith_dot_vec4_i32(var_0, _wgslsmith_sub_vec4_i32(var_0, var_0)), ~(-2751i)) & select(var_0.ww, vec2<i32>(u_input.a, u_input.a), !all(vec2<bool>(true, true))));
    let var_2 = (any(var_1.c) && all(vec4<bool>(false, 1i > var_0.x, true, true))) || (var_1.c.x | (_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.x, 2147483647i) << (vec3<u32>(var_1.a.x, 4294967295u, arg_0.x) % vec3<u32>(32u)), -var_0.zzw) < (2147483647i ^ u_input.a)));
    let var_3 = var_0.yxw ^ var_0.wyw;
    let var_4 = Struct_2(~(vec3<u32>(~arg_0.x, select(var_1.a.x, 0u, false), 4294967295u) | vec3<u32>(~arg_0.x, var_1.a.x, arg_0.x)), var_1, select(vec3<bool>(var_2, var_2, var_1.c.x | var_2), !vec3<bool>(arg_0.x < 4294967295u, any(var_1.c), -1i == var_0.x), select(true, true, all(var_1.c))), var_1);
    return ~(select(min(countOneBits(vec2<u32>(61374u, 9798u)), firstLeadingBit(var_1.a.yz)), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_4.b.a.x, 34875u), var_4.d.a.wx), vec2<u32>(0u, 7056u)), (-2133i >> (arg_0.x % 32u)) > -2147483647i) | vec2<u32>(~95674u, var_4.d.a.x));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = vec4<u32>(1u | max(arg_2.a.x, arg_2.a.x >> (~arg_2.d.a.x % 32u)), 1u, _wgslsmith_add_u32(arg_2.b.a.x, _wgslsmith_dot_vec2_u32(abs(func_2(arg_2.b.a.yy)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_2.b.a.x, 36620u), firstLeadingBit(vec2<u32>(4294967295u, arg_2.a.x)), ~vec2<u32>(0u, 21507u)))), _wgslsmith_clamp_u32(arg_2.d.a.x, _wgslsmith_mult_u32(arg_2.a.x, ~34111u), countOneBits(func_3(true, arg_2.b))));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_2.b.d.x, arg_0), select(_wgslsmith_add_vec3_i32(~(-vec3<i32>(26224i, 0i, 14981i)), select(vec3<i32>(2147483647i, -2147483647i, 1i) ^ vec3<i32>(2147483647i, 13292i, arg_2.b.d.x), vec3<i32>(-23411i, -5601i, -13905i), arg_3 < arg_3)), reverseBits(~vec3<i32>(u_input.a, arg_1, arg_1)), arg_2.c));
    return reverseBits(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<u32>((func_1(0i, -1i, Struct_2(vec3<u32>(66563u, 4294967295u, 1u), Struct_1(vec4<u32>(0u, 1u, 1u, 57277u), -12189i, vec2<bool>(false, false), vec2<i32>(322i, u_input.a)), vec3<bool>(false, true, false), Struct_1(vec4<u32>(39910u, 4294967295u, 1u, 4294967295u), u_input.a, vec2<bool>(true, true), vec2<i32>(2147483647i, u_input.a))), 887f) & ~1u) >> (19122u % 32u), 1u, ~abs(firstLeadingBit(47347u))), Struct_1(max(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 30497u, 0u, 24256u), vec4<u32>(42257u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 53731u, 4294967295u, 1u)))), -u_input.a, vec2<bool>(true, true), ~(-(~vec2<i32>(2147483647i, u_input.a)))), vec3<bool>(u_input.a <= u_input.a, all(vec4<bool>(true, true, true, true)), !any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true))), Struct_1(vec4<u32>(1u, 1u, 1u, 1u), u_input.a, vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), true), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(u_input.a, -6800i), countOneBits(vec2<i32>(47067i, -19555i)), -vec2<i32>(-2147483647i, 491i)) ^ -vec2<i32>(u_input.a, -7403i)));
    let var_1 = vec2<u32>(reverseBits(11849u), 1u);
    let var_2 = ~_wgslsmith_mult_vec4_i32(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, var_0.d.d.x, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), ~(~vec4<i32>(0i, 57677i, var_0.d.d.x, var_0.b.b) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 73421u, 1u, var_1.x), var_0.d.a, vec4<u32>(0u, var_0.b.a.x, 4294967295u, var_1.x)) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1130f, -822f))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, -1204f)), _wgslsmith_div_f32(-574f, 255f)))), var_0.d.c))));
    let var_4 = select(!vec4<bool>(true, true, var_0.b.c.x, !(u_input.a <= var_0.b.d.x)), !vec4<bool>(all(var_0.d.c), true, var_0.b.c.x, var_0.c.x), select(!select(select(vec4<bool>(var_0.b.c.x, false, true, var_0.d.c.x), vec4<bool>(var_0.d.c.x, true, false, true), vec4<bool>(false, var_0.d.c.x, var_0.d.c.x, true)), vec4<bool>(true, false, var_0.d.c.x, true), select(vec4<bool>(var_0.c.x, false, false, false), vec4<bool>(var_0.b.c.x, var_0.d.c.x, var_0.b.c.x, true), false)), select(!vec4<bool>(false, true, var_0.c.x, false), vec4<bool>(var_0.b.c.x, all(vec3<bool>(var_0.b.c.x, false, false)), false & var_0.d.c.x, true), select(!vec4<bool>(true, true, var_0.c.x, var_0.c.x), !vec4<bool>(true, var_0.c.x, false, var_0.d.c.x), any(var_0.c))), true));
    var var_5 = select(vec3<bool>(false, max(max(var_0.b.b, -2147483647i), -13143i) >= var_2.x, any(select(vec3<bool>(var_0.c.x, var_0.b.c.x, var_0.d.c.x), !vec3<bool>(var_0.c.x, var_4.x, var_4.x), false))), vec3<bool>(!(var_0.a.x != var_1.x), var_4.x, true), !vec3<bool>(var_4.x, any(!var_4), true));
    let x = u_input.a;
    s_output = StorageBuffer(20022u);
}

