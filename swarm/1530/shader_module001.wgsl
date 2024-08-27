struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> f32 {
    return arg_0.a.x;
}

fn func_2() -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(624f)), _wgslsmith_div_f32(1481f, _wgslsmith_f_op_f32(abs(-2163f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -700f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-379f, _wgslsmith_f_op_f32(step(745f, 1000f)), all(vec4<bool>(false, true, true, true)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1000f))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(1199f, 1931f, -806f), vec3<i32>(u_input.a.x, u_input.a.x, 0i), 1u, vec4<u32>(33645u, 4294967295u, 0u, 13682u)), -vec4<i32>(u_input.a.x, 1109i, 10894i, 9871i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-556f, 655f))))));
    let var_1 = countOneBits(max(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(~1u, 1u, 3259u, 1u)));
    let var_2 = false;
    let var_3 = u_input.a.x;
    let var_4 = var_1.www;
    return Struct_3(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1570f)), _wgslsmith_f_op_f32(f32(-1f) * -264f)))))), vec3<i32>(-1i, _wgslsmith_add_i32(abs(-var_3), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), ~u_input.a.x), 44992u, _wgslsmith_clamp_vec4_u32(((vec4<u32>(var_1.x, 4294967295u, var_4.x, var_1.x) << (var_1 % vec4<u32>(32u))) << (countOneBits(var_1) % vec4<u32>(32u))) | (firstTrailingBit(var_1) & var_1), ~(~select(vec4<u32>(1u, var_1.x, var_1.x, 0u), vec4<u32>(var_1.x, 1u, var_1.x, var_4.x), var_2)), vec4<u32>(37554u << (var_1.x % 32u), 1u, 4294967295u, 37871u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = (max(2147483647i, arg_1.a.b) | ~_wgslsmith_add_i32(-19637i ^ u_input.a.x, _wgslsmith_sub_i32(arg_1.a.c, -2147483647i))) << (_wgslsmith_add_u32(abs(arg_1.b) | ~4294967295u, arg_0.c) % 32u);
    var var_1 = vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(arg_0.b, vec3<i32>(arg_1.a.b, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_0.b, arg_0.b), 2147483647i >> (0u % 32u)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2337i, 31655i), arg_0.b.zx), abs(arg_1.a.c), _wgslsmith_sub_i32(arg_1.a.b, -1i)))));
    var var_2 = Struct_4(arg_1);
    var var_3 = arg_0.b.zx;
    var_3 = reverseBits(-vec2<i32>(reverseBits(_wgslsmith_mult_i32(20980i, -1i)), 0i));
    return _wgslsmith_mod_u32(var_2.a.b, _wgslsmith_sub_u32(max(6693u, arg_1.b | 4294967295u), ~0u));
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = select(vec4<bool>(0u == func_4(func_2(), Struct_2(arg_0.a, 0u)), arg_0.a.a.x, false, !(!any(vec3<bool>(true, arg_0.a.a.x, false)))), select(select(vec4<bool>(false, true, arg_0.a.a.x, true), !select(vec4<bool>(arg_0.a.a.x, false, false, true), vec4<bool>(true, true, arg_0.a.a.x, arg_0.a.a.x), arg_0.a.a.x), true), !vec4<bool>(!arg_0.a.a.x, arg_0.a.a.x & arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), true), select(select(!(!vec4<bool>(false, true, false, arg_0.a.a.x)), !select(vec4<bool>(true, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, true, true, arg_0.a.a.x), vec4<bool>(true, arg_0.a.a.x, true, false)), select(!vec4<bool>(false, true, true, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, false), true)), vec4<bool>(all(select(arg_0.a.a, vec2<bool>(arg_0.a.a.x, false), vec2<bool>(true, arg_0.a.a.x))), all(vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x)), any(vec3<bool>(true, true, true)), true), select(select(!vec4<bool>(true, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), !vec4<bool>(false, true, arg_0.a.a.x, false), vec4<bool>(false, arg_0.a.a.x, true, arg_0.a.a.x)), vec4<bool>(arg_0.a.a.x, all(vec2<bool>(arg_0.a.a.x, false)), true, false), select(select(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, true, arg_0.a.a.x, true), arg_0.a.a.x), select(vec4<bool>(false, true, arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(false, false, arg_0.a.a.x, false), false), true))));
    var var_1 = Struct_4(arg_0);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1974f))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-792f - var_2)), var_2)), ~abs(vec3<i32>(func_2().b.x, var_1.a.a.c, 1i)), var_1.a.b, select(vec4<u32>(~arg_0.b, arg_0.b, var_1.a.b, 4294967295u), vec4<u32>(4294967295u, ~arg_0.b, ~4294967295u, max(1u, var_1.a.b)), var_0.x) ^ ~countOneBits(vec4<u32>(4294967295u, 0u, arg_0.b, 34077u)));
    let var_4 = !select(!var_0.zz, vec2<bool>(!(34029i >= arg_0.a.c), any(vec2<bool>(var_1.a.a.a.x, true))), vec2<bool>(arg_0.a.a.x, true));
    return vec2<bool>(arg_0.a.a.x, true);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = Struct_1(vec2<bool>(arg_1.a.x | !arg_1.a.x, !(!arg_1.a.x)), ~arg_2.b.x, -60703i);
    var var_1 = arg_2;
    var var_2 = arg_2;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_2.a.x * 1804f), 1497f);
    var_2 = arg_2;
    return vec3<f32>(444f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(exp2(arg_2.a.x))), _wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.x)) - _wgslsmith_f_op_f32(arg_2.a.x + var_3.x)))) * arg_2.a.x));
}

fn func_6(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(false, true), abs(-21838i), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x));
    let var_1 = Struct_2(var_0, func_4(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(arg_0, -307f, arg_0), arg_3.yzw, 31944u, vec4<u32>(12750u, 4294967295u, 17018u, 30888u)), arg_3)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(select(-1768f, -639f, var_0.a.x))), func_2().b, 4294967295u, abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 28859u, 54247u), vec4<u32>(4294967295u, 11933u, 4294967295u, 467u)))), Struct_2(var_0, max(1u, func_4(Struct_3(vec3<f32>(-183f, arg_1.x, 1607f), arg_3.zwy, 71748u, vec4<u32>(9580u, 4294967295u, 0u, 0u)), Struct_2(Struct_1(arg_2, -5499i, arg_3.x), 369u))))));
    let var_2 = var_1;
    var var_3 = Struct_4(var_1);
    let var_4 = select(5090u, _wgslsmith_div_u32(~var_2.b << (47496u % 32u), firstTrailingBit(firstLeadingBit(var_3.a.b))), true) >= var_1.b;
    return var_3.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(1006f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_sub_vec2_u32(vec2<u32>(22992u, 60429u), vec2<u32>(1u, 3089u)), Struct_1(func_1(Struct_2(Struct_1(vec2<bool>(true, true), u_input.a.x, 0i), 10581u)), abs(-1i), u_input.a.x), func_2()))), select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), !vec2<bool>(true, all(vec4<bool>(true, true, false, true))), false && all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), (abs(vec4<i32>(-1i, u_input.a.x, 14816i, -3282i)) & vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 39139i), vec4<i32>(-60684i, -1i, u_input.a.x, u_input.a.x)), u_input.a.x | 26520i, -24752i)) & vec4<i32>(~0i, ~(~(-7121i)), firstTrailingBit(-u_input.a.x), 26603i));
    var var_1 = countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~func_2().d.ywz, ~vec3<u32>(28384u, 117995u, 12276u)), vec3<u32>(1u, 1u, 1u)));
    let var_2 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -537f), 362f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1112f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(1116f, 696f, -717f), vec3<i32>(-14787i, u_input.a.x, u_input.a.x), 38549u, vec4<u32>(1u, 17351u, 6142u, 26291u)), vec4<i32>(u_input.a.x, var_0.c, u_input.a.x, var_0.b)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(621f, -143f, -1000f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1441f, -1600f, 429f) + vec3<f32>(-1719f, 224f, 631f))))), !select(var_0.a, var_0.a, var_0.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(24379i, var_0.b), 1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_0.b, u_input.a.x), vec3<i32>(23832i, var_0.b, var_0.c)), vec3<i32>(-51559i, 0i, -2147483647i)), -u_input.a.x << (~1u % 32u)), ~reverseBits(~vec4<i32>(0i, var_0.b, var_0.b, 0i))));
    var_1 = ~1u;
    var_1 = _wgslsmith_div_u32(1u, _wgslsmith_add_u32(firstLeadingBit(countOneBits(4294967295u) << (select(1u, 0u, false) % 32u)), 57686u));
    var_1 = ~24530u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, 64435u, var_0.c, 1i);
}

