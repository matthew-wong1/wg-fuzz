struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(vec2<u32>(max(max(countOneBits(1u), reverseBits(8314u)), firstLeadingBit(~24676u)), abs(1u)), -11754i & ~u_input.b, reverseBits(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, u_input.b, 0i)), ~(vec3<i32>(u_input.a.x, -344i, 9013i) | vec3<i32>(u_input.a.x, -2147483647i, u_input.b)))), i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 368f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-317f, -629f)))))));
    var var_1 = var_0.c.zy;
    var_1 = u_input.a.zx;
    var var_2 = var_0;
    let var_3 = abs(vec3<u32>(~countOneBits(_wgslsmith_clamp_u32(var_2.a.x, var_2.a.x, 14360u)), _wgslsmith_sub_u32(~(~var_0.a.x), ~var_2.a.x), var_0.a.x));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e.x - -1121f) - _wgslsmith_f_op_f32(var_2.e.x + _wgslsmith_f_op_f32(step(var_0.e.x, -968f)))), 301f, 180f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-103f, -1863f, -248f, var_0.e.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-908f, var_0.e.x, 331f, var_0.e.x) - vec4<f32>(var_0.e.x, -2257f, 309f, var_0.e.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.x, var_0.e.x, var_2.e.x, var_0.e.x) + vec4<f32>(-1813f, 601f, -690f, var_2.e.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-475f, var_0.e.x, 600f, var_0.e.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.x, var_0.e.x, var_2.e.x, var_2.e.x) - vec4<f32>(-672f, var_2.e.x, 171f, var_0.e.x)), vec4<bool>(true, true, true, true))))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())) + _wgslsmith_f_op_vec4_f32(func_3()));
    var var_1 = Struct_1(vec2<u32>(reverseBits(arg_0.a.x & abs(arg_0.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u) ^ select(vec2<u32>(arg_0.a.x, 74938u), vec2<u32>(arg_0.a.x, arg_0.a.x), false), arg_0.a)), max(i32(-1i) * -arg_0.b, 2147483647i | _wgslsmith_clamp_i32(-2147483647i, max(12138i, -1i), ~arg_0.c.x)), -u_input.a, 1i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(278f, var_0.x, false)), -1702f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(var_0.yw)), arg_0.e)), vec2<bool>(true, any(vec2<bool>(false, true))))))));
    var var_2 = arg_0;
    var var_3 = Struct_1(~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, var_2.a.x), 4294967295u >> (var_1.a.x % 32u)), vec2<u32>(select(arg_0.a.x, var_2.a.x, false), _wgslsmith_dot_vec2_u32(var_2.a, vec2<u32>(70509u, 4294967295u)))), -4578i, firstLeadingBit(_wgslsmith_sub_vec3_i32(max(var_1.c, vec3<i32>(6781i, u_input.b, 18096i)), arg_0.c) ^ (vec3<i32>(-756i, 2892i, var_1.d) | (var_1.c >> (vec3<u32>(12967u, arg_0.a.x, 45311u) % vec3<u32>(32u))))), var_1.d, arg_0.e);
    var var_4 = false;
    return -113017i;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.zz, arg_0.zy), vec2<u32>(firstLeadingBit(72073u), ~1u)), -2147483647i, -reverseBits(u_input.a), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_add_i32(countOneBits(1i), u_input.a.x), ~func_2(Struct_1(arg_0.zx, u_input.a.x, vec3<i32>(u_input.a.x, -2147483647i, 20054i), u_input.a.x, vec2<f32>(586f, 1388f))), u_input.a.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1343f, 959f))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)))))));
    var var_1 = vec3<f32>(899f, 667f, -447f);
    let var_2 = ~1u;
    var var_3 = 1119f;
    var_3 = _wgslsmith_f_op_f32(f32(-1f) * -288f);
    return var_0;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = true;
    let var_1 = arg_1.d;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_4(-1099f, func_1(firstLeadingBit(vec3<u32>(36155u, 7344u, 53050u)), -1209f)) << (~vec2<u32>(1u, func_1(vec3<u32>(15858u, 0u, 1u), -437f).a.x) % vec2<u32>(32u)), -(abs(abs(u_input.a.x)) << (13138u % 32u)), ~(~vec3<i32>(0i, 0i, _wgslsmith_mod_i32(u_input.a.x, u_input.b))), -abs(~(-u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(960f, -290f), vec2<f32>(-499f, -230f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-400f, 956f) - vec2<f32>(-1637f, -300f)))))));
    let var_1 = false;
    let var_2 = 4294967295u;
    var var_3 = Struct_1(~var_0.a, -func_2(Struct_1(var_0.a, 36852i, vec3<i32>(var_0.b, u_input.b, u_input.b), 0i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1315f, var_0.e.x)))), vec3<i32>(countOneBits(2147483647i), _wgslsmith_add_i32(-var_0.b, _wgslsmith_mod_i32(u_input.b, u_input.a.x & u_input.a.x)), select(func_2(var_0), _wgslsmith_dot_vec3_i32(vec3<i32>(-1493i, var_0.c.x, u_input.a.x), var_0.c), false)), -(abs(u_input.b) & u_input.a.x), vec2<f32>(1f, -1269f));
    let var_4 = vec4<i32>(1i, -9340i, ~var_3.c.x, _wgslsmith_div_i32(14715i ^ -func_1(vec3<u32>(var_2, 0u, var_3.a.x), var_3.e.x).c.x, _wgslsmith_clamp_i32(abs(-9300i), 22918i, 1i) << (~func_1(vec3<u32>(8743u, 59918u, 11460u), var_0.e.x).a.x % 32u)));
    var_3 = Struct_1(var_3.a | var_0.a, ~var_4.x ^ var_3.b, vec3<i32>(-u_input.b, 31755i, countOneBits(_wgslsmith_mult_i32(~var_0.c.x, 1i))), _wgslsmith_div_i32(_wgslsmith_sub_i32(var_3.c.x, ~var_3.c.x), var_3.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.e)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-819f, var_3.e.x))) + _wgslsmith_div_vec2_f32(var_0.e, vec2<f32>(var_0.e.x, 104f))) * func_1(vec3<u32>(0u, var_2, var_2) << (vec3<u32>(var_2, var_2, 1u) % vec3<u32>(32u)), var_0.e.x).e)), _wgslsmith_f_op_f32(min(var_3.e.x, var_0.e.x)), var_0.a.x);
}

