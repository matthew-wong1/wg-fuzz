struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    let var_0 = 1000f;
    var var_1 = Struct_1(-arg_0, 1000f, u_input.b.zx, -36368i);
    let var_2 = var_0;
    var var_3 = min(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_1.c.x, 4294967295u), vec3<u32>(112846u, u_input.b.x, u_input.d), u_input.b.zxy) | (u_input.b.wxx & vec3<u32>(u_input.b.x, var_1.c.x, var_1.c.x))) << (u_input.b.wzz % vec3<u32>(32u)), min(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.b.wxy, u_input.b.zyw), u_input.b.wxx & u_input.b.yxz), ~(select(u_input.b.wyz, u_input.b.xyw, vec3<bool>(true, true, false)) & u_input.b.xyx)));
    var var_4 = min(var_3.x, firstLeadingBit(52433u));
    return var_2;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = arg_2.e.zz;
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~var_1.b.a | reverseBits(vec3<i32>(var_1.b.d, arg_1, -4681i)))));
    var var_3 = !(!select(vec3<bool>(all(var_1.e.wx), any(var_1.e), false | arg_2.e.x), vec3<bool>(var_1.e.x, true, !arg_2.e.x), !(!vec3<bool>(false, var_0.x, var_1.e.x))));
    let var_4 = var_1.e.zww;
    return Struct_1(min(-(~var_1.b.a), _wgslsmith_add_vec3_i32(-vec3<i32>(arg_1, 45146i, 29972i), vec3<i32>(var_1.b.a.x, arg_1, 467i))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(33735u, 13745u, ~arg_2.b.c.x), ~u_input.b.yxx & vec3<u32>(arg_2.b.c.x, 4294967295u, 18481u)) % vec3<u32>(32u)), _wgslsmith_div_f32(arg_0, 339f), _wgslsmith_add_vec2_u32(~(~(u_input.b.zz | var_1.b.c)), var_1.b.c << (u_input.b.zy % vec2<u32>(32u))), _wgslsmith_sub_i32(-_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_2.b.a.x, 171i), arg_1), 12502i));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<u32>) -> i32 {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(-30550i, max(min(-2147483647i, arg_0.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, arg_1.a, -48753i, -1i), arg_0.e))), min(-_wgslsmith_mult_i32(-2147483647i, 0i), ~arg_1.a << ((arg_1.c & arg_2.x) % 32u)), i32(-1i) * -1i), arg_0.d.c.x, vec2<u32>(37934u, _wgslsmith_div_u32(arg_1.c, arg_1.c)) & arg_0.d.b.c, arg_0.d.b.a.x);
    let var_1 = arg_0.d.e.x;
    var var_2 = func_2(var_0.b, -countOneBits(u_input.c), arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1101f)));
    let var_3 = Struct_1(~(-(var_2.a ^ -var_0.a)), _wgslsmith_f_op_f32(-var_2.b), abs(var_2.c), -arg_1.a);
    var_2 = arg_0.d.b;
    return firstLeadingBit(reverseBits(_wgslsmith_div_i32(countOneBits(-1i), ~abs(arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(-u_input.c, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a) << (~u_input.b.xz % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(1i, u_input.c))));
    let var_1 = Struct_4(1000f, 2147483647i, select(abs(vec3<i32>(-1i, 78896i, -9214i)), vec3<i32>(-2589i, u_input.a, u_input.a) << (abs(vec3<u32>(0u, u_input.b.x, u_input.d)) % vec3<u32>(32u)), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true))) & vec3<i32>(-func_1(Struct_4(228f, -2147483647i, vec3<i32>(u_input.c, -2147483647i, -1i), Struct_2(vec2<f32>(-445f, -382f), Struct_1(vec3<i32>(u_input.c, 2147483647i, 37453i), -498f, vec2<u32>(61660u, 4294967295u), u_input.a), vec3<f32>(956f, 652f, 244f), vec3<f32>(1380f, 398f, -843f), vec4<bool>(true, false, true, false)), vec4<i32>(10378i, -1i, u_input.a, -34878i)), Struct_3(u_input.c, false, 33790u), vec4<u32>(6400u, 1u, 20063u, 1u)), u_input.a, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a, -15048i), _wgslsmith_add_i32(0i, 0i))), Struct_2(vec2<f32>(-1239f, 1366f), Struct_1(-_wgslsmith_div_vec3_i32(vec3<i32>(-8660i, u_input.c, u_input.c), vec3<i32>(1i, u_input.c, 0i)), 449f, (vec2<u32>(23015u, u_input.d) << (u_input.b.zy % vec2<u32>(32u))) | ~vec2<u32>(u_input.b.x, 42730u), _wgslsmith_sub_i32(func_1(Struct_4(-754f, u_input.c, vec3<i32>(6800i, -2147483647i, 0i), Struct_2(vec2<f32>(432f, -722f), Struct_1(vec3<i32>(-1i, 2147483647i, u_input.a), 192f, u_input.b.yx, u_input.a), vec3<f32>(-985f, 108f, -2652f), vec3<f32>(387f, -789f, -1317f), vec4<bool>(false, false, false, false)), vec4<i32>(u_input.c, -1i, u_input.a, 1i)), Struct_3(u_input.a, false, 6801u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.d)), u_input.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(669f, -1749f, -926f) + vec3<f32>(1f, 1f, 1f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(abs(-1010f)), _wgslsmith_f_op_f32(f32(-1f) * -1133f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(470f, 877f, -509f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1962f, -1445f, 1719f) * vec3<f32>(1974f, -1046f, -118f)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-252f, 209f, -361f)))))), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true))), vec4<i32>(u_input.a >> (~u_input.d % 32u), u_input.c >> (6367u % 32u), u_input.a, 16540i));
    let var_2 = ~(~select(_wgslsmith_mod_vec4_i32(var_1.e, vec4<i32>(var_1.e.x, u_input.a, u_input.c, var_1.d.b.a.x)) << (vec4<u32>(u_input.b.x, var_1.d.b.c.x, 1u, u_input.d) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_i32(var_1.e, var_1.e, vec4<i32>(0i, -10121i, -2147483647i, 2147483647i)), var_1.d.e.x));
    let var_3 = -var_1.e;
    var var_4 = var_1;
    var var_5 = abs(u_input.b.wxx) & vec3<u32>(_wgslsmith_mod_u32(var_1.d.b.c.x, 0u), _wgslsmith_mod_u32(abs(2705u), _wgslsmith_add_u32(select(1u, 3842u, false), 39394u)), _wgslsmith_dot_vec4_u32(u_input.b, firstTrailingBit(u_input.b) | max(vec4<u32>(var_1.d.b.c.x, u_input.d, u_input.d, 1u), vec4<u32>(1u, 0u, var_4.d.b.c.x, 52070u))));
    var var_6 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-577f - var_4.a))), var_1.e.x, vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(abs(36230i), var_3.x), var_4.b << (83742u % 32u), -var_2.x), _wgslsmith_sub_i32(-_wgslsmith_mult_i32(var_1.e.x, 0i), ~var_3.x & ~var_3.x), var_2.x), var_1.d, select(vec4<i32>(0i, ~(-1i), u_input.c, _wgslsmith_sub_i32(-1i, -50719i)) & _wgslsmith_div_vec4_i32(var_1.e, firstTrailingBit(vec4<i32>(2147483647i, 1i, -15684i, var_3.x))), vec4<i32>(var_3.x, 28105i, 0i, u_input.a), select(select(!vec4<bool>(false, var_4.d.e.x, false, true), vec4<bool>(true, true, true, true), var_1.d.b.a.x > var_1.d.b.d), !select(vec4<bool>(false, true, true, var_4.d.e.x), vec4<bool>(true, var_1.d.e.x, true, var_1.d.e.x), vec4<bool>(var_4.d.e.x, var_4.d.e.x, var_1.d.e.x, var_1.d.e.x)), !(!var_4.d.e))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(1u, 4294967295u)), _wgslsmith_f_op_f32(var_4.a * var_1.d.c.x), _wgslsmith_f_op_f32(var_1.d.c.x * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-156f)), _wgslsmith_f_op_f32(var_1.d.b.b * 1000f)), -532f)), u_input.b.zzy);
}

