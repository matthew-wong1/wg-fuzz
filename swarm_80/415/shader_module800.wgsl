struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_1(arg_0.b.x);
    var_0 = Struct_1(1i);
    let var_1 = select(vec3<bool>(arg_0.a, true && arg_0.a, arg_0.a), select(!(!(!vec3<bool>(arg_0.a, arg_0.a, true))), select(!(!vec3<bool>(true, arg_0.a, arg_0.a)), select(select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, true, true), true), select(vec3<bool>(true, arg_0.a, false), vec3<bool>(true, arg_0.a, true), false), true), !arg_0.a), select(!select(vec3<bool>(arg_0.a, false, true), vec3<bool>(true, true, arg_0.a), arg_0.a), !vec3<bool>(arg_0.a, arg_0.a, false), -1870i <= select(u_input.a, var_0.a, arg_0.a))), !vec3<bool>(true, !(arg_0.a | false), var_0.a != (u_input.c | 1i)));
    var var_2 = reverseBits(abs(select(-_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -1i, 12495i, u_input.a), vec4<i32>(2791i, var_0.a, 2147483647i, var_0.a)), ~(vec4<i32>(u_input.a, u_input.c, arg_0.b.x, arg_0.b.x) >> (vec4<u32>(61916u, 43500u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), all(select(var_1.zx, var_1.yz, var_1.xz)))));
    var_0 = Struct_1(u_input.c);
    return arg_0.b.x;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = vec3<i32>(func_3(Struct_3(arg_0, abs(min(vec3<i32>(-10843i, u_input.c, u_input.a), vec3<i32>(-36379i, u_input.c, u_input.a))))), -1i, _wgslsmith_mod_i32(-_wgslsmith_div_i32(i32(-1i) * -48791i, u_input.a), _wgslsmith_div_i32(-26959i, _wgslsmith_add_i32(~u_input.c, u_input.c | 1i))));
    var var_1 = ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(9207u, u_input.b.x)))) << (1u % 32u);
    let var_2 = ~abs(_wgslsmith_add_vec2_u32(~u_input.b.wy & ~u_input.b.zz, ~vec2<u32>(u_input.b.x, u_input.b.x)));
    var var_3 = u_input.b.x | 4294967295u;
    var var_4 = Struct_2(select(select(select(vec3<bool>(true, false, arg_0), vec3<bool>(true, arg_0, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), arg_0)), select(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, true, arg_0), vec3<bool>(false, false, false)), !vec3<bool>(arg_0, true, arg_0), true), _wgslsmith_f_op_f32(ceil(1266f)) != _wgslsmith_f_op_f32(sign(-1059f))), !vec3<bool>(arg_0, true, arg_0), true), Struct_1(0i), true);
    return Struct_2(vec3<bool>(!arg_0, true, !(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, var_2.x, 4294967295u, var_2.x)) < (u_input.b.x | 25437u))), var_4.b, var_4.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = func_2(!((-4413i & _wgslsmith_mult_i32(1i, arg_0.b.a)) == u_input.a)).b;
    var_1 = Struct_1(_wgslsmith_mult_i32(reverseBits(59438i), 0i >> (_wgslsmith_dot_vec3_u32(u_input.b.yyw, _wgslsmith_mult_vec3_u32(vec3<u32>(20372u, 32139u, 14816u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))) % 32u)));
    var_1 = var_0.b;
    var_1 = func_2(_wgslsmith_add_i32(var_0.b.a, 3492i) != func_3(Struct_3(any(arg_0.a), vec3<i32>(var_0.b.a, var_0.b.a, arg_0.b.a)))).b;
    return Struct_3(!(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(1u, u_input.b.x)) <= (~25729u >> (u_input.b.x % 32u))), -firstLeadingBit(firstLeadingBit(abs(vec3<i32>(arg_0.b.a, u_input.a, var_1.a)))));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = vec4<u32>(22118u << (abs(28307u ^ ~u_input.b.x) % 32u), u_input.b.x, 1u, u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(-arg_2);
    var_1 = arg_2;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-149f, 2349f, arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-238f, arg_2, arg_2)))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-660f, -926f, -224f) - vec3<f32>(arg_2, 746f, -243f)) * vec3<f32>(arg_2, arg_2, -2557f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-882f, arg_2, arg_2)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-328f, arg_2, -543f))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1055f, arg_2, var_2.x), vec3<f32>(var_2.x, 3137f, -2474f)) - vec3<f32>(1000f, arg_2, -1113f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, _wgslsmith_f_op_f32(min(arg_2, arg_2)), -184f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-227f, -1023f, var_2.x), vec3<f32>(var_2.x, 992f, 1035f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(703f, var_2.x, arg_2))))))));
    return func_2(arg_3.a);
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    let var_0 = (u_input.b.x >> (u_input.b.x % 32u)) | 31019u;
    var var_1 = func_5(~(-7536i), func_4(func_2(false), 564f, true), -534f, Struct_3(true, vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.a, arg_0.x), arg_0.zxx), _wgslsmith_add_vec3_i32(arg_0.zxy, vec3<i32>(arg_0.x, 52334i, u_input.a))), ~18625i, _wgslsmith_div_i32(u_input.c, -1i & u_input.a))));
    var_1 = Struct_2(func_5(1i, Struct_3(var_1.c, abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.b.a, 47799i, var_1.b.a), vec3<i32>(arg_0.x, u_input.c, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(741f)) * _wgslsmith_f_op_f32(floor(1000f)))), Struct_3(func_4(func_2(var_1.c), _wgslsmith_f_op_f32(select(2140f, 331f, true)), all(vec2<bool>(false, false))).a, -abs(vec3<i32>(-2147483647i, -2147483647i, var_1.b.a)))).a, func_2(var_1.a.x).b, true);
    let var_2 = true;
    var_1 = func_2(!any(select(vec4<bool>(var_1.a.x, true, var_2, false), !vec4<bool>(true, true, var_2, var_1.c), !vec4<bool>(var_2, var_2, true, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -368f))), _wgslsmith_f_op_f32(max(-397f, -1240f)))) - -263f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(136f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(988f, _wgslsmith_div_f32(1012f, 437f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(vec4<i32>(-12634i, u_input.c, 58749i, 2147483647i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-952f, 268f)) + _wgslsmith_div_f32(-380f, 1297f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(878f, 2956f))), _wgslsmith_div_vec2_f32(vec2<f32>(-342f, 221f), vec2<f32>(1923f, 279f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -592f), _wgslsmith_f_op_f32(sign(-1000f))))));
}

