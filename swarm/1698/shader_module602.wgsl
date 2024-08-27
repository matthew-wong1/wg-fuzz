struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: f32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<f32>) -> f32 {
    global1 = arg_2.x;
    global1 = _wgslsmith_f_op_f32(max(-1432f, _wgslsmith_f_op_f32(trunc(arg_2.x))));
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), -1355f));
    let var_0 = Struct_3(Struct_1(abs(0u)), abs(countOneBits(arg_1 ^ 0u)) > arg_1, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(~vec2<u32>(23283u, arg_1), ~vec2<u32>(32449u, 1u)), ~(~vec2<u32>(35895u, 59102u))), false, arg_1);
    var var_1 = Struct_4(Struct_3(Struct_1(40461u), false, 15312u, true, arg_1), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, arg_1, var_0.a.a), vec3<u32>(arg_1, 56171u, var_0.a.a) << (vec3<u32>(52692u, 11156u, var_0.e) % vec3<u32>(32u))) >> (vec3<u32>(var_0.e & arg_1, 11064u, countOneBits(var_0.a.a)) % vec3<u32>(32u)), vec3<u32>(var_0.a.a >> (abs(0u) % 32u), var_0.e, _wgslsmith_sub_u32(1u, max(var_0.c, 1u)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 1551f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.x, 1457f, arg_2.x, arg_2.x)))))), true, Struct_1(4294967295u), abs(~select(vec3<u32>(arg_1, 57097u, 8014u), vec3<u32>(47158u, 4294967295u, 2244u), true)), all(global0.yx)), u_input.d, var_0.a);
    return _wgslsmith_f_op_f32(316f - -2943f);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>) -> u32 {
    global0 = select(vec3<bool>(_wgslsmith_f_op_f32(func_3(true, ~arg_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 2223f)))) <= 1000f, global0.x, !(!all(global0.zy))), !select(select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, false, global0.x)), select(vec3<bool>(false, global0.x, true), vec3<bool>(true, true, global0.x), vec3<bool>(false, true, global0.x)), false), vec3<bool>(!global0.x, any(global0.xy), all(vec3<bool>(false, false, false))), false), vec3<bool>(global0.x, !(!any(vec3<bool>(true, true, global0.x))), global0.x));
    var var_0 = firstTrailingBit(vec3<u32>(9604u, ~arg_1.x, arg_0.x));
    global0 = vec3<bool>(true, true, global0.x);
    let var_1 = Struct_3(Struct_1(1u), true, ~_wgslsmith_add_u32(abs(~var_0.x), abs(var_0.x) | (0u ^ var_0.x)), false, 1u);
    var var_2 = reverseBits(vec3<u32>(min(var_1.e, ~_wgslsmith_clamp_u32(0u, arg_1.x, 1u)), (_wgslsmith_clamp_u32(var_1.c, var_0.x, arg_1.x) & 29124u) >> (firstTrailingBit(firstLeadingBit(31750u)) % 32u), 1u));
    return 4294967295u;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_1(~func_2(~vec2<u32>(33359u, 4294967295u), firstTrailingBit(vec2<u32>(14773u, 7186u))) | select(~0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(56697u, 64203u, 8404u), select(vec3<u32>(4294967295u, 1u, 66142u), vec3<u32>(0u, 75277u, 109593u), global0.x)), _wgslsmith_f_op_f32(282f - -757f) < _wgslsmith_f_op_f32(func_3(true, 40110u, vec2<f32>(1162f, 243f)))));
    let var_1 = select(-u_input.c, countOneBits(~reverseBits(vec4<i32>(-22326i, u_input.a, -61087i, u_input.a))), select(select(vec4<bool>(any(vec2<bool>(global0.x, global0.x)), global0.x || global0.x, 4294967295u != var_0.a, false), vec4<bool>(true, !global0.x, global0.x, true), vec4<bool>(global0.x, any(vec2<bool>(false, false)), false, false)), select(!(!vec4<bool>(false, global0.x, global0.x, false)), select(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, false, global0.x, false)), vec4<bool>(true, true, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, true, global0.x, false), true)), vec4<bool>(global0.x, global0.x, global0.x, !global0.x)), select(!select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(false, true, global0.x, false)), vec4<bool>(false, any(vec3<bool>(global0.x, global0.x, true)), global0.x, global0.x), all(select(global0.zy, vec2<bool>(global0.x, global0.x), true)))));
    global0 = vec3<bool>(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(29785u, var_0.a, 1u), vec3<u32>(var_0.a, 0u, 4294967295u))) <= _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 68555u) & vec2<u32>(var_0.a, 41151u), vec2<u32>(4294967295u, var_0.a)), var_0.a), true, false);
    global0 = select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, true, !global0.x), vec3<bool>(select(true, true || !global0.x, true), 0u > var_0.a, global0.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(730f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(579f))) * 1f)));
    return Struct_4(Struct_3(var_0, true, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a >> (var_0.a % 32u), 0u, _wgslsmith_add_u32(4294967295u, var_0.a), 42071u), ~vec4<u32>(var_0.a, 4294967295u, 44374u, var_0.a) ^ reverseBits(vec4<u32>(1u, var_0.a, var_0.a, var_0.a))), true | global0.x, 1u), vec3<u32>(~63749u, var_0.a, 4294967295u), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2023f, _wgslsmith_f_op_f32(max(106f, 1919f)), -365f, -1000f)), all(!global0.yz), Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.a, 0u), 0u)), ~(~(~vec3<u32>(4294967295u, var_0.a, var_0.a))), false), (-(~vec4<i32>(0i, 2147483647i, var_1.x, -1i)) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(87735u, var_0.a, 33819u, 56897u), vec4<u32>(var_0.a, var_0.a, var_0.a, 9215u)), firstLeadingBit(vec4<u32>(32802u, 4294967295u, var_0.a, 1u))) % vec4<u32>(32u))) >> ((max(~vec4<u32>(var_0.a, var_0.a, var_0.a, 0u), ~vec4<u32>(50376u, var_0.a, 4807u, 24439u)) | _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(0u, 4294967295u, 1u, 23700u)), select(vec4<u32>(var_0.a, var_0.a, 0u, var_0.a), vec4<u32>(0u, 1u, 4294967295u, var_0.a), vec4<bool>(true, global0.x, global0.x, global0.x)))) % vec4<u32>(32u)), var_0);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(62771u, arg_3.e.a, reverseBits(arg_1.a), ~min(arg_3.e.a, 0u << (arg_1.a % 32u))), select(firstLeadingBit(vec4<u32>(arg_1.a, arg_3.b.x, ~9082u, arg_2.c.c.a)), reverseBits(~vec4<u32>(arg_2.a.a.a, 0u, 16225u, 89666u)), !(!vec4<bool>(false, true, global0.x, arg_3.c.e))));
    let var_1 = ~1u;
    global0 = vec3<bool>(_wgslsmith_f_op_f32(318f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_2.c.a.x)), _wgslsmith_f_op_f32(-arg_2.c.a.x), any(vec2<bool>(global0.x, false))))) > _wgslsmith_f_op_f32(f32(-1f) * -1324f), !arg_3.a.b, (arg_3.c.b || arg_3.a.d) && true);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -348f);
    let var_2 = _wgslsmith_mult_vec2_i32(func_1().d.xy, _wgslsmith_sub_vec2_i32(u_input.d.yz, _wgslsmith_add_vec2_i32(~vec2<i32>(arg_3.d.x, -8516i), vec2<i32>(arg_3.d.x, arg_2.d.x)))) << (max(~vec2<u32>(~20445u, ~arg_2.c.d.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_1, 18429u), 35560u ^ var_1), ~(~vec2<u32>(arg_1.a, 0u)), firstTrailingBit(var_0.xz))) % vec2<u32>(32u));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(903f, Struct_1(1u), func_1(), Struct_4(Struct_3(Struct_1(1u), true, min(select(4294967295u, 47032u, global0.x), _wgslsmith_mod_u32(33566u, 56413u)), global0.x && global0.x, ~0u), vec3<u32>(1u, 1u, 1u), func_1().c, vec4<i32>(_wgslsmith_div_i32(10414i, -1i), _wgslsmith_div_i32(9201i, u_input.b), 0i, _wgslsmith_div_i32(u_input.b, 72568i)) << (vec4<u32>(26263u, ~1u, reverseBits(0u), ~7398u) % vec4<u32>(32u)), Struct_1(_wgslsmith_clamp_u32(min(1u, 80628u), ~49918u, _wgslsmith_sub_u32(4294967295u, 41661u)))));
    var var_1 = Struct_1(1u);
    global1 = var_0.c.a.x;
    let var_2 = var_0.c;
    global0 = !vec3<bool>(any(global0.yz), true, all(select(vec4<bool>(true, var_0.c.b, global0.x, false), vec4<bool>(false, var_2.b, global0.x, var_0.c.b), any(vec2<bool>(var_2.b, false)))));
    global0 = !vec3<bool>(true, any(vec3<bool>(true, any(vec3<bool>(var_2.e, var_2.e, var_2.b)), !var_0.a.d)), var_0.a.b);
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-398f, 1839f, -352f, var_2.a.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1208f, -981f, var_0.c.a.x, var_0.c.a.x) * var_0.c.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(func_1().c.a, vec4<f32>(var_0.c.a.x, -1536f, 1102f, -3247f)))), all(vec3<bool>(!var_0.a.b | !var_2.b, true, true)), var_2.c, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.a.e, 56655u) ^ var_2.c.a, 3035u), func_2(vec2<u32>(4294967295u & var_0.b.x, ~var_2.d.x), var_0.c.d.yy), ~min(64234u, 4294967295u)), !any(global0.yy));
    let x = u_input.a;
    s_output = StorageBuffer(~(-2496i), 1000f, _wgslsmith_div_vec2_i32(~vec2<i32>(var_0.d.x, u_input.a), -var_0.d.zw) & u_input.c.zw, vec2<i32>(max(_wgslsmith_add_i32(928i, -2147483647i), -_wgslsmith_mult_i32(2147483647i, u_input.d.x)), -17436i), var_2.d.x ^ countOneBits(0u));
}

