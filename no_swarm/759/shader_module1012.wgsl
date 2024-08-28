struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<u32>) -> i32 {
    var var_0 = Struct_2(Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)) && false, abs(~arg_2.yx) << (~arg_2.yw % vec2<u32>(32u)), abs(-1i)), arg_1, Struct_1(vec2<bool>(false, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 19150i), vec2<i32>(arg_0.x, arg_0.x)) > (u_input.d.x >> (18904u % 32u))), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(false, true, false), false)), ~max(vec2<u32>(79995u, u_input.c), firstTrailingBit(arg_2.yw)), 10571i >> (arg_2.x % 32u)), -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.e.x, arg_0.x, arg_0.x, u_input.e.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-9464i, u_input.e.x, -7504i, 2147483647i), vec4<i32>(u_input.d.x, -10010i, u_input.e.x, u_input.d.x))), _wgslsmith_mult_vec4_i32(arg_0 >> (vec4<u32>(101929u, u_input.c, 1u, arg_2.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(-2147483647i, arg_0.x, -14467i, -2147483647i)))), Struct_1(vec2<bool>(true, !(u_input.a < u_input.a)), all(vec4<bool>(true, true, true, true)), arg_2.wx, -arg_0.x << (abs(abs(93342u)) % 32u)));
    var var_1 = ~(~var_0.c.c.x);
    let var_2 = Struct_1(var_0.a.a, var_0.e.a.x, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(9163u, ~arg_2.x), _wgslsmith_mult_vec2_u32(select(var_0.e.c, vec2<u32>(var_0.c.c.x, var_0.e.c.x), true), select(arg_2.yz, vec2<u32>(arg_2.x, 0u), var_0.e.a))), arg_2.ww), u_input.d.x);
    var_1 = 4294967295u;
    var var_3 = var_0.a.d;
    return 3321i;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(arg_2, _wgslsmith_f_op_f32(206f * -1000f), arg_0, _wgslsmith_div_i32(_wgslsmith_mod_i32(max(-9523i, u_input.e.x), u_input.d.x), ~_wgslsmith_sub_i32(-10350i, arg_2.d)) | (1i ^ u_input.d.x), arg_2);
    let var_1 = 794f;
    var_0 = Struct_2(var_0.a, -105f, Struct_1(vec2<bool>(true, !(!arg_0.a.x)), (func_3(vec4<i32>(var_0.d, -32879i, u_input.e.x, arg_3.d), 1030f, vec4<u32>(arg_2.c.x, 75204u, 109865u, 1u)) & 2147483647i) > 5088i, arg_2.c, -52496i), _wgslsmith_div_i32(countOneBits(~arg_3.d) << (_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0.c.x, arg_3.c.x), _wgslsmith_div_u32(arg_0.c.x, arg_1.x)) % 32u), firstLeadingBit(arg_2.d & var_0.d) ^ ~(-1i)), arg_3);
    var var_2 = ~1u;
    let var_3 = Struct_2(var_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -578f))) - _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(ceil(-604f)))), var_0.a, -2147483647i, var_0.a);
    return Struct_2(arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(209f)))), _wgslsmith_f_op_f32(select(291f, 1328f, !select(arg_2.b, false, false))))), arg_2, var_0.e.d | ~(_wgslsmith_mod_i32(u_input.d.x, 0i) ^ 2147483647i), Struct_1(!(!(!vec2<bool>(true, var_3.a.b))), min(firstLeadingBit(arg_0.d), ~arg_2.d) != _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 13307i)), select(arg_3.d, u_input.d.x, arg_2.a.x)), ~_wgslsmith_add_vec2_u32(select(vec2<u32>(var_0.e.c.x, 21670u), vec2<u32>(1u, 49099u), vec2<bool>(arg_2.b, false)), var_0.e.c), 14636i));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: u32) -> vec2<u32> {
    let var_0 = func_2(arg_2.a, arg_2.e.c, Struct_1(func_2(Struct_1(select(vec2<bool>(arg_2.e.a.x, true), arg_2.e.a, vec2<bool>(true, arg_2.e.b)), arg_2.a.b && arg_2.a.b, vec2<u32>(u_input.b, u_input.a), _wgslsmith_sub_i32(-1445i, 0i)), vec2<u32>(1u, 1u), arg_2.e, Struct_1(vec2<bool>(false, arg_2.c.b), false, arg_1 ^ arg_2.c.c, ~arg_0)).e.a, select(select(all(arg_2.c.a), 63080u <= arg_1.x, arg_2.a.c.x > 31931u), true, true), vec2<u32>(arg_1.x, arg_1.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~u_input.e.zzy, _wgslsmith_div_vec3_i32(u_input.e.yyz, vec3<i32>(arg_2.d, u_input.e.x, -10803i))), 673i)), arg_2.c);
    let var_1 = var_0;
    var var_2 = var_1;
    var var_3 = func_2(var_0.a, countOneBits(vec2<u32>(~select(25058u, 38823u, true), 40921u)), Struct_1(vec2<bool>(false, false), any(!select(vec4<bool>(true, true, false, var_1.e.b), vec4<bool>(var_1.a.a.x, var_0.c.b, var_1.e.a.x, true), false)), ~vec2<u32>(~var_0.e.c.x, 1u), firstLeadingBit(u_input.e.x) << (arg_2.c.c.x % 32u)), Struct_1(!var_1.e.a, any(vec4<bool>(!var_1.c.b, var_0.a.b, true, var_0.a.a.x)), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(var_0.a.c), arg_2.e.c), ~vec2<u32>(arg_1.x, 0u)), countOneBits(var_2.e.d)));
    return vec2<u32>(func_2(func_2(func_2(func_2(Struct_1(var_2.a.a, true, var_2.e.c, 2147483647i), vec2<u32>(var_2.c.c.x, 1u), Struct_1(var_2.c.a, true, var_0.c.c, -1i), Struct_1(var_0.e.a, var_1.a.a.x, var_3.a.c, var_1.e.d)).a, vec2<u32>(var_2.e.c.x, 1u) << (var_1.a.c % vec2<u32>(32u)), Struct_1(vec2<bool>(var_0.c.a.x, true), false, var_0.c.c, arg_0), Struct_1(var_0.c.a, true, var_2.a.c, -8488i)).e, var_1.c.c, func_2(arg_2.e, vec2<u32>(arg_1.x, 1u) >> (var_0.c.c % vec2<u32>(32u)), Struct_1(var_2.e.a, var_2.c.b, arg_1, u_input.d.x), var_1.a).e, arg_2.c).a, var_2.a.c, Struct_1(!(!arg_2.e.a), var_3.c.a.x, reverseBits(arg_2.c.c), ~_wgslsmith_mult_i32(arg_0, 17870i)), func_2(func_2(Struct_1(var_1.c.a, true, var_2.a.c, arg_0), arg_2.e.c, Struct_1(vec2<bool>(arg_2.e.a.x, var_0.a.a.x), true, arg_2.e.c, 0i), var_1.c).a, ~_wgslsmith_clamp_vec2_u32(var_1.c.c, vec2<u32>(var_2.c.c.x, 4294967295u), vec2<u32>(46863u, u_input.c)), func_2(func_2(var_2.e, arg_2.c.c, var_2.c, Struct_1(vec2<bool>(false, false), var_0.a.b, vec2<u32>(27605u, arg_3), var_1.e.d)).a, ~vec2<u32>(var_1.e.c.x, arg_1.x), var_1.c, func_2(var_3.e, vec2<u32>(10078u, 5181u), Struct_1(var_1.e.a, var_2.a.b, var_2.a.c, arg_0), arg_2.e).a).e, Struct_1(select(vec2<bool>(true, var_3.a.b), vec2<bool>(arg_2.c.b, var_2.c.a.x), false), any(vec3<bool>(true, false, var_3.c.a.x)), ~arg_1, u_input.d.x)).a).c.c.x, countOneBits(_wgslsmith_mult_u32(var_0.a.c.x, 1u) & abs(39390u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.c.c.x, var_1.a.c.x), _wgslsmith_clamp_vec2_u32(select(arg_2.e.c, vec2<u32>(0u, u_input.b), true), var_2.c.c ^ var_3.c.c, _wgslsmith_div_vec2_u32(arg_1, arg_1))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(vec2<bool>((all(vec3<bool>(true, false, false)) | all(vec4<bool>(false, true, true, true))) | !all(vec2<bool>(false, true)), !any(vec3<bool>(true, true, true))), any(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.c, u_input.a), func_4(_wgslsmith_div_i32(u_input.e.x, 0i), ~vec2<u32>(u_input.b, u_input.a), func_2(Struct_1(vec2<bool>(true, false), true, vec2<u32>(19851u, u_input.c), -25585i), vec2<u32>(u_input.c, 1u), Struct_1(vec2<bool>(true, true), true, vec2<u32>(u_input.c, 38476u), u_input.e.x), Struct_1(vec2<bool>(true, false), false, vec2<u32>(u_input.b, u_input.a), 22989i)), 0u)), -49029i);
    var var_1 = u_input.e.yxx;
    let var_2 = func_2(var_0, var_0.c, var_0, func_2(var_0, reverseBits(_wgslsmith_mult_vec2_u32(var_0.c, vec2<u32>(u_input.a, 8005u))), Struct_1(func_2(var_0, ~vec2<u32>(0u, 0u), var_0, var_0).e.a, var_0.a.x, vec2<u32>(reverseBits(u_input.b), var_0.c.x), var_0.d & 9221i), var_0).e);
    var var_3 = firstLeadingBit(~1u);
    var_3 = var_0.c.x << (0u % 32u);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(all(vec3<bool>(all(vec2<bool>(true, true)), true, true)), !select(true, true, true), !(!(u_input.b <= u_input.a)), !(_wgslsmith_add_i32(u_input.e.x, -15320i) == (0i << (0u % 32u))));
    let var_1 = func_1();
    var var_2 = Struct_1(!(!func_1().e.a), var_1.a.a.x == var_0.x, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.b, var_1.c.c.x), var_1.e.c, var_1.e.a.x), ~vec2<u32>(u_input.b, 0u)), var_1.a.c) & var_1.a.c, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, var_1.c.d), ~vec2<i32>(-20473i, 2147483647i)));
    var_2 = Struct_1(var_2.a, true, _wgslsmith_sub_vec2_u32(var_1.a.c, var_1.c.c), ~(~firstTrailingBit(firstTrailingBit(var_1.e.d))));
    var_2 = func_1().e;
    var_2 = func_1().c;
    var_2 = func_1().a;
    var var_3 = max(4294967295u, var_2.c.x);
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(reverseBits(~vec3<u32>(4294967295u, u_input.a, 1u)), ~reverseBits(vec3<u32>(u_input.b, u_input.a, var_1.e.c.x))) << ((_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(var_1.c.c.x, 1u, u_input.b)), vec3<u32>(62807u, u_input.b, 4294967295u), vec3<u32>(var_1.c.c.x, 0u, 46652u) ^ vec3<u32>(4294967295u, var_1.e.c.x, var_2.c.x)) << (~select(vec3<u32>(1u, var_2.c.x, u_input.c), vec3<u32>(39984u, var_1.e.c.x, u_input.c), var_0.wyz) % vec3<u32>(32u))) % vec3<u32>(32u)), ~abs(u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-605f, 1876f)), -841f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(308f + var_1.b))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b, var_1.b, var_1.b), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-439f, -507f, -1165f), vec3<f32>(var_1.b, var_1.b, -1378f))), !var_4))))), ~_wgslsmith_mod_vec3_u32(~reverseBits(vec3<u32>(var_1.e.c.x, u_input.a, 14836u)), ~vec3<u32>(u_input.b, 1u, u_input.a) & countOneBits(vec3<u32>(102751u, var_2.c.x, u_input.a))));
}

