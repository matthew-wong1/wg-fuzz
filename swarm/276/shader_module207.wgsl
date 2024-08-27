struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = Struct_5(Struct_4(Struct_1(!any(vec2<bool>(false, false))), abs(reverseBits(vec2<u32>(4294967295u, u_input.a.x) ^ vec2<u32>(34021u, u_input.a.x))), Struct_3(reverseBits(vec4<u32>(0u, u_input.b, 4294967295u, 19835u) ^ vec4<u32>(29893u, u_input.b, u_input.a.x, 4294967295u))), _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, -41832i), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(12949i, -35062i)), min(vec2<i32>(1520i, 27082i), vec2<i32>(46066i, 12528i))))), all(vec2<bool>(any(vec4<bool>(false, false, false, true)) & true, any(vec3<bool>(true, true, true)))), select(vec4<u32>(_wgslsmith_mult_u32(60611u, ~u_input.a.x), abs(~u_input.a.x), 0u, _wgslsmith_mod_u32(u_input.b, ~24252u)), vec4<u32>(1u, ~u_input.a.x, reverseBits(firstLeadingBit(u_input.b)), abs(u_input.b)), vec4<bool>(select(true, any(vec4<bool>(false, false, true, false)), true), true, true, true)), ~(-2147483647i));
    var_0 = Struct_5(Struct_4(var_0.a.a, vec2<u32>(abs(var_0.a.c.a.x & 0u), abs(~var_0.a.c.a.x)), var_0.a.c, var_0.d), true, abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.a.c.a.x, 1u, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(var_0.c, var_0.a.c.a)) ^ ~_wgslsmith_div_vec4_u32(var_0.a.c.a, var_0.c)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 0i) ^ ~vec3<i32>(17251i, var_0.d, -1i), _wgslsmith_add_vec3_i32(~vec3<i32>(var_0.d, 2423i, var_0.d), max(vec3<i32>(-1i, -2147483647i, -20126i), vec3<i32>(var_0.a.d, var_0.a.d, var_0.a.d))))));
    let var_1 = Struct_5(Struct_4(Struct_1(var_0.a.a.a), select(~u_input.a, reverseBits(~var_0.a.c.a.zy), !vec2<bool>(var_0.b, var_0.b)), var_0.a.c, countOneBits(-2147483647i)), var_0.b, ~(~(vec4<u32>(1u, var_0.c.x, 4294967295u, var_0.a.b.x) >> (~var_0.a.c.a % vec4<u32>(32u)))), -(var_0.a.d & var_0.a.d));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -222f), 1908f, _wgslsmith_f_op_f32(min(-1396f, -1635f)), 1f))));
    let var_3 = false;
    return _wgslsmith_mod_i32(min(25974i, ~(~_wgslsmith_sub_i32(var_1.a.d, var_0.d))), -22594i);
}

fn func_2() -> Struct_4 {
    var var_0 = vec2<f32>(-1223f, -347f);
    var var_1 = 0i & reverseBits(select(func_3() & reverseBits(2147483647i), 2147483647i & (-34142i >> (u_input.a.x % 32u)), true));
    let var_2 = Struct_4(Struct_1(true), _wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(u_input.a.x), 9637u), vec2<u32>(firstLeadingBit(11239u) ^ u_input.b, ~u_input.a.x)), Struct_3(vec4<u32>(~u_input.b, u_input.b, u_input.b, 4294967295u)), ~(i32(-1i) * -2147483647i));
    var var_3 = (0i << ((0u << (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.c.a.xzx, var_2.c.a.zzy), vec3<u32>(76182u, 0u, 49141u) | vec3<u32>(u_input.b, 11587u, 10994u)) % 32u)) % 32u)) << (u_input.b % 32u);
    var var_4 = ~(i32(-1i) * -var_2.d);
    return var_2;
}

fn func_1() -> bool {
    let var_0 = func_2();
    var var_1 = (vec3<i32>(var_0.d, abs(i32(-1i) * -1i), -1i) >> (_wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.b, var_0.c.a.x, u_input.b) | var_0.c.a.xyz), var_0.c.a.wxx) % vec3<u32>(32u))) << ((_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.x >> (30033u % 32u), u_input.b, 4294967295u), ~(~var_0.c.a.xzw), ~min(vec3<u32>(var_0.c.a.x, 7712u, 19425u), vec3<u32>(var_0.c.a.x, 24176u, 1u))) & vec3<u32>(~(~u_input.a.x), 4294967295u, max(33394u, abs(var_0.b.x)))) % vec3<u32>(32u));
    var_1 = vec3<i32>(-func_2().d >> ((_wgslsmith_sub_u32(u_input.a.x | 1u, var_0.c.a.x) ^ (_wgslsmith_add_u32(var_0.c.a.x, 1u) >> (1u % 32u))) % 32u), var_1.x, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(var_1.x), _wgslsmith_sub_i32(2147483647i, var_1.x)), ~_wgslsmith_div_vec2_i32(vec2<i32>(var_0.d, -7589i), var_1.zx))));
    let var_2 = func_2().a;
    var_1 = abs(_wgslsmith_clamp_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.d, 10212i, var_1.x), vec3<i32>(var_1.x, var_0.d, 50476i))), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(var_0.d, var_0.d, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(-38059i, 12018i, 2147483647i), vec3<i32>(var_1.x, 27134i, 5781i))), vec3<i32>(1i, firstLeadingBit(2147483647i), 21428i))) | vec3<i32>(~19543i, 44954i, ~(-2147483647i));
    return !(var_2.a != true) != (true && !var_2.a);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>) -> i32 {
    return 1i;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_4, arg_3: vec3<i32>) -> bool {
    var var_0 = select(arg_2.a.a, false, func_2().d != ~arg_3.x) & arg_2.a.a;
    var var_1 = arg_2;
    var_0 = true;
    var_1 = arg_2;
    let var_2 = -abs(-reverseBits(vec4<i32>(arg_3.x, 29818i, 27517i, 7307i))) | _wgslsmith_mult_vec4_i32(~abs(countOneBits(vec4<i32>(arg_3.x, var_1.d, var_1.d, -1i))), _wgslsmith_div_vec4_i32(firstLeadingBit(-vec4<i32>(arg_2.d, arg_3.x, var_1.d, arg_2.d)), vec4<i32>(reverseBits(var_1.d), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.d, 2147483647i), arg_3.xy), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_3.x, arg_3.x), vec3<i32>(0i, 2147483647i, -5042i)), reverseBits(arg_3.x))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(474f, 1f, false)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(795f, -395f))), -func_4(false && func_1(), vec3<bool>(true, true, true)), func_2(), vec3<i32>(func_4(all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), vec3<bool>(true, any(vec2<bool>(false, true)), u_input.a.x == u_input.a.x)), 46775i, -min(~2147483647i, firstLeadingBit(-1i))));
    let var_1 = vec4<u32>(u_input.b, firstTrailingBit(_wgslsmith_add_u32(~u_input.b, 42075u)), u_input.b, ~(0u ^ u_input.a.x));
    var var_2 = -1i;
    var var_3 = func_2();
    var_2 = var_3.d;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-474f - 320f))), 367f))) - vec2<f32>(_wgslsmith_f_op_f32(-964f - _wgslsmith_f_op_f32(f32(-1f) * -646f)), 306f));
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~(~vec2<i32>(-59457i, var_3.d)))), (var_3.c.a.wzz | ~func_2().c.a.yyy) ^ var_1.ywy, ~firstLeadingBit(u_input.a));
}

