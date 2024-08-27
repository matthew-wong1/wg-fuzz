struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = u_input.b.x;
    var_0 = _wgslsmith_mult_i32(countOneBits(u_input.b.x), ~(-u_input.b.x ^ u_input.b.x));
    let var_1 = -1225f;
    var_0 = -49444i;
    var var_2 = vec2<u32>(~u_input.a, u_input.a);
    return _wgslsmith_add_i32(~_wgslsmith_add_i32(-41743i, select(u_input.b.x, u_input.b.x, false) << ((u_input.a << (0u % 32u)) % 32u)), _wgslsmith_sub_i32(-51012i, -24142i));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = arg_1.a;
    let var_1 = _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-52095i, func_3(_wgslsmith_f_op_f32(f32(-1f) * -358f), Struct_2(vec3<f32>(424f, arg_1.a.b.a, 139f)), var_0.c), select(~arg_2.x, 1i, true))), arg_0, -vec3<i32>(0i, -_wgslsmith_div_i32(arg_0.x, arg_2.x), arg_0.x << ((1u << (var_0.a.x % 32u)) % 32u)));
    var var_2 = Struct_1(_wgslsmith_div_f32(2211f, _wgslsmith_f_op_f32(f32(-1f) * -844f)));
    var_2 = var_0.b;
    let var_3 = Struct_4(arg_1.a);
    return arg_1.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a.x) * -1000f));
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), ~(arg_0.a.xx >> (_wgslsmith_mult_vec2_u32(arg_1.a.zy & vec2<u32>(arg_0.a.x, arg_0.a.x), arg_1.a.xz ^ vec2<u32>(arg_1.a.x, 71678u)) % vec2<u32>(32u))));
    var_1 = reverseBits(select(~(~arg_0.a.xx), ~min(vec2<u32>(var_1.x, 0u), vec2<u32>(u_input.a, var_1.x)), (-24304i >= arg_3.x) || all(vec3<bool>(true, true, false)))) ^ arg_0.a.yz;
    let var_2 = Struct_4(Struct_3(abs(~_wgslsmith_add_vec3_u32(arg_1.a, vec3<u32>(1u, u_input.a, arg_1.a.x))), Struct_1(-1984f), func_2(_wgslsmith_div_vec3_i32(arg_3.zxz, arg_3.zwx), Struct_4(arg_0), firstLeadingBit(-vec2<i32>(1i, arg_3.x)), arg_0.d.a.yx).d, func_2(arg_3.wzw, Struct_4(arg_1), select(-vec2<i32>(arg_3.x, arg_3.x), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), arg_3.wx), vec2<bool>(false, false)), _wgslsmith_div_vec2_f32(vec2<f32>(399f, 1895f), arg_1.c.a.zy)).c));
    var_1 = vec2<u32>(~(~u_input.a) & _wgslsmith_clamp_u32(~u_input.a, ~_wgslsmith_add_u32(57026u, var_1.x), ~(u_input.a & arg_0.a.x)), 4294967295u);
    return func_2(_wgslsmith_mult_vec3_i32(abs(_wgslsmith_sub_vec3_i32(arg_3.zww, vec3<i32>(0i, u_input.b.x, u_input.b.x))), countOneBits(arg_3.xzy)), var_2, ~_wgslsmith_sub_vec2_i32(select(u_input.b, vec2<i32>(u_input.b.x, arg_3.x), all(vec2<bool>(true, true))), firstLeadingBit(vec2<i32>(arg_3.x, u_input.b.x)) | (vec2<i32>(arg_3.x, u_input.b.x) | vec2<i32>(u_input.b.x, arg_3.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -143f) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.a.x, -487f)), _wgslsmith_f_op_vec2_f32(arg_0.d.a.xx * arg_1.d.a.zz))))));
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_mod_vec3_u32(arg_1.a ^ arg_1.a, max(select(arg_1.a << (arg_1.a % vec3<u32>(32u)), ~vec3<u32>(10149u, arg_1.a.x, 1u), vec3<bool>(false, false, true)), ~abs(arg_1.a))), arg_1.b, arg_1.d, arg_1.c);
    var var_1 = true;
    var var_2 = var_0.b;
    var var_3 = ~vec3<u32>(arg_1.a.x, 1u >> (~(1u << (var_0.a.x % 32u)) % 32u), min(var_0.a.x, ~arg_1.a.x));
    let var_4 = func_2(vec3<i32>(u_input.b.x, ~u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0, arg_0, u_input.b.x), vec4<i32>(u_input.b.x, -83031i, u_input.b.x, arg_0))) << (abs(_wgslsmith_clamp_vec3_u32(var_0.a, var_0.a, vec3<u32>(30376u, var_0.a.x, 68978u))) % vec3<u32>(32u)), Struct_4(Struct_3(countOneBits(arg_1.a), var_0.b, Struct_2(vec3<f32>(arg_1.b.a, var_2.a, var_0.c.a.x)), func_2(vec3<i32>(arg_0, u_input.b.x, arg_0), Struct_4(Struct_3(vec3<u32>(var_3.x, var_0.a.x, var_3.x), Struct_1(arg_1.c.a.x), arg_1.c, var_0.d)), u_input.b, arg_1.c.a.yz).c)), ~(-vec2<i32>(arg_0, u_input.b.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c.a.x, arg_1.c.a.x), vec2<f32>(var_2.a, var_0.b.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d.a.xy)), true))).a.x >= ~arg_1.a.x;
    return Struct_3(~_wgslsmith_div_vec3_u32(func_2(vec3<i32>(2147483647i, -30861i, -1i) ^ vec3<i32>(7288i, u_input.b.x, 0i), Struct_4(Struct_3(arg_1.a, Struct_1(var_0.b.a), arg_1.c, var_0.c)), max(vec2<i32>(0i, arg_0), vec2<i32>(-2147483647i, u_input.b.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1337f, var_0.c.a.x), vec2<f32>(var_0.b.a, -1148f)))).a, _wgslsmith_sub_vec3_u32(select(vec3<u32>(var_3.x, 4294967295u, var_0.a.x), arg_1.a, vec3<bool>(false, false, false)), _wgslsmith_mod_vec3_u32(arg_1.a, var_0.a))), func_4(func_2(vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, arg_0), ~u_input.b.x, _wgslsmith_add_i32(arg_0, 1i)), Struct_4(Struct_3(vec3<u32>(8711u, 59530u, var_0.a.x), Struct_1(var_0.d.a.x), Struct_2(vec3<f32>(570f, 749f, var_2.a)), Struct_2(var_0.d.a))), min(u_input.b, vec2<i32>(arg_0, u_input.b.x)), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.a.x), _wgslsmith_f_op_f32(abs(arg_1.c.a.x)))), arg_1, 1593f, firstLeadingBit(~(~vec4<i32>(-2147483647i, -2147483647i, -1i, -3763i)))).b, Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-318f, 595f, _wgslsmith_f_op_f32(255f * var_2.a)) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.a.x), -402f, var_0.c.a.x))), func_4(var_0, func_2(vec3<i32>(1i, 0i, u_input.b.x), Struct_4(func_2(vec3<i32>(-1i, -37989i, 0i), Struct_4(Struct_3(vec3<u32>(arg_1.a.x, 0u, u_input.a), arg_1.b, arg_1.c, Struct_2(vec3<f32>(-212f, 2083f, arg_1.d.a.x)))), u_input.b, vec2<f32>(var_0.d.a.x, -1000f))), u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, arg_1.d.a.x)) + vec2<f32>(var_2.a, arg_1.c.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_2.a)), 1367f)), vec4<i32>(-u_input.b.x | -2147483647i, 0i, -1i, -35241i)).d);
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_4(func_5(_wgslsmith_add_i32(-(~(-11511i)), -64626i), func_4(func_2(vec3<i32>(-2147483647i, 3432i, u_input.b.x), Struct_4(Struct_3(vec3<u32>(arg_1, arg_1, arg_1), Struct_1(-1530f), Struct_2(vec3<f32>(-348f, -1802f, 1000f)), Struct_2(vec3<f32>(332f, -1500f, -765f)))), u_input.b, _wgslsmith_div_vec2_f32(vec2<f32>(645f, -295f), vec2<f32>(-1130f, -1496f))), Struct_3(vec3<u32>(arg_1, 0u, arg_1) & vec3<u32>(19595u, 4294967295u, 4294967295u), Struct_1(1593f), Struct_2(vec3<f32>(1103f, -877f, 1009f)), func_2(vec3<i32>(arg_0, 24196i, 7274i), Struct_4(Struct_3(vec3<u32>(73754u, 0u, 114232u), Struct_1(792f), Struct_2(vec3<f32>(1833f, 944f, -467f)), Struct_2(vec3<f32>(-225f, 1077f, -1000f)))), u_input.b, vec2<f32>(-929f, -734f)).d), -283f, -select(vec4<i32>(-30420i, u_input.b.x, arg_0, 0i), vec4<i32>(u_input.b.x, arg_0, 8606i, arg_0), true))));
    var var_1 = firstLeadingBit(~24478u);
    return func_5(u_input.b.x, Struct_3(~firstTrailingBit(vec3<u32>(1292u, var_0.a.a.x, 8781u)), var_0.a.b, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(797f, var_0.a.d.a.x, var_0.a.b.a)))), var_0.a.c)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-u_input.b.x, u_input.a);
    var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(var_0.a)));
    let var_1 = true;
    var_0 = func_5(u_input.b.x, Struct_3(~reverseBits(vec3<u32>(1u, u_input.a, 1u) ^ vec3<u32>(u_input.a, 1u, 47469u)), func_2(vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(51502i, u_input.b.x), ~u_input.b.x), Struct_4(func_5(u_input.b.x, Struct_3(vec3<u32>(u_input.a, u_input.a, 18987u), Struct_1(var_0.a), Struct_2(vec3<f32>(var_0.a, var_0.a, var_0.a)), Struct_2(vec3<f32>(-382f, var_0.a, var_0.a))))), firstTrailingBit(select(u_input.b, vec2<i32>(2147483647i, u_input.b.x), var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) + vec2<f32>(var_0.a, var_0.a)))).b, Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a, -2236f, var_0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, -1198f) + vec3<f32>(-383f, 2686f, var_0.a))))), func_4(Struct_3(func_5(0i, Struct_3(vec3<u32>(u_input.a, 0u, u_input.a), Struct_1(641f), Struct_2(vec3<f32>(var_0.a, var_0.a, 1223f)), Struct_2(vec3<f32>(var_0.a, -485f, var_0.a)))).a, func_1(-36003i, u_input.a), func_4(Struct_3(vec3<u32>(u_input.a, u_input.a, 4294967295u), Struct_1(-977f), Struct_2(vec3<f32>(623f, -1991f, -2103f)), Struct_2(vec3<f32>(var_0.a, -992f, 710f))), Struct_3(vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_1(1530f), Struct_2(vec3<f32>(var_0.a, var_0.a, var_0.a)), Struct_2(vec3<f32>(var_0.a, 767f, -1222f))), var_0.a, vec4<i32>(0i, u_input.b.x, -29772i, u_input.b.x)).c, func_2(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_4(Struct_3(vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_1(var_0.a), Struct_2(vec3<f32>(var_0.a, var_0.a, -1375f)), Struct_2(vec3<f32>(var_0.a, 394f, -823f)))), u_input.b, vec2<f32>(949f, var_0.a)).c), Struct_3(abs(vec3<u32>(u_input.a, 31125u, u_input.a)), func_2(vec3<i32>(u_input.b.x, -48581i, u_input.b.x), Struct_4(Struct_3(vec3<u32>(29199u, u_input.a, 1u), Struct_1(var_0.a), Struct_2(vec3<f32>(-1036f, -572f, var_0.a)), Struct_2(vec3<f32>(var_0.a, var_0.a, var_0.a)))), vec2<i32>(u_input.b.x, 17478i), vec2<f32>(var_0.a, -569f)).b, func_5(u_input.b.x, Struct_3(vec3<u32>(u_input.a, 1u, u_input.a), Struct_1(var_0.a), Struct_2(vec3<f32>(-344f, 298f, -1856f)), Struct_2(vec3<f32>(var_0.a, 363f, var_0.a)))).d, Struct_2(vec3<f32>(var_0.a, var_0.a, 1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1090f), _wgslsmith_f_op_f32(-425f + var_0.a))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), reverseBits(vec4<i32>(13935i, 33818i, 0i, -438i)))).c)).b;
    var var_2 = vec3<f32>(var_0.a, var_0.a, -311f);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-604f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(var_2.yx)));
}

