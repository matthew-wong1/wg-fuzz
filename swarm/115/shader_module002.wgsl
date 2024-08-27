struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: vec4<i32>) -> vec2<u32> {
    var var_0 = Struct_1(!arg_0.a, any(select(vec2<bool>(arg_0.a.x || false, true), arg_0.a.zz, reverseBits(22671u) >= u_input.b.x)), vec2<u32>(~1u, 51876u));
    var_0 = arg_0;
    let var_1 = Struct_2(arg_2.x & ~(-3203i), Struct_1(vec4<bool>(true, var_0.b, !(var_0.a.x & false), true), !var_0.a.x, ~vec2<u32>(~u_input.a.x, ~88224u)), Struct_1(vec4<bool>(true, true, true, true), !(1u < (arg_0.c.x << (arg_0.c.x % 32u))), firstLeadingBit(~u_input.a.zx) & (firstTrailingBit(u_input.a.zy) ^ select(vec2<u32>(arg_0.c.x, var_0.c.x), arg_0.c, true))));
    var_0 = arg_0;
    var_0 = var_1.c;
    return select(var_1.b.c, var_0.c, var_0.a.xw);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = arg_0;
    var_0 = Struct_1(select(!var_0.a, var_0.a, select(vec4<bool>(any(var_0.a), !arg_2.b, false, true), var_0.a, select(select(vec4<bool>(false, arg_2.b, arg_2.a.x, true), vec4<bool>(var_0.a.x, false, arg_0.b, arg_2.b), true), vec4<bool>(false, false, false, false), select(true, false, arg_2.a.x)))), true, ~(~(vec2<u32>(54882u, 0u) << (vec2<u32>(var_0.c.x, arg_2.c.x) % vec2<u32>(32u))) | select(max(var_0.c, arg_2.c), _wgslsmith_sub_vec2_u32(var_0.c, vec2<u32>(arg_2.c.x, arg_2.c.x)), select(vec2<bool>(false, arg_2.b), var_0.a.wz, vec2<bool>(arg_2.a.x, arg_2.b)))));
    var var_1 = arg_2.a.xy;
    var_1 = vec2<bool>(true | (false && var_0.a.x), !var_1.x);
    var_1 = select(!arg_0.a.xz, arg_2.a.zz, vec2<bool>(var_1.x, false));
    return vec2<i32>(-1i) * -firstLeadingBit(-vec2<i32>(2147483647i, 2147483647i));
}

fn func_2(arg_0: i32) -> vec2<i32> {
    var var_0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 70986u), ~u_input.b.x, _wgslsmith_sub_u32(10303u, u_input.b.x)), u_input.a | ~vec3<u32>(u_input.a.x, u_input.b.x, 109653u)) >> (u_input.b % vec3<u32>(32u));
    let var_1 = ~61173u;
    var_0 = vec3<u32>(var_0.x, ~u_input.a.x, u_input.b.x);
    var_0 = min(u_input.a, vec3<u32>(~0u, ~_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_0.x, var_1), vec4<u32>(var_1, var_0.x, var_0.x, var_0.x))), abs(~(var_0.x ^ var_0.x))));
    return func_4(Struct_1(vec4<bool>(false, false == any(vec4<bool>(false, false, false, true)), (58882u >> (var_1 % 32u)) != ~21002u, true), true, reverseBits(func_3(Struct_1(vec4<bool>(false, false, false, true), true, vec2<u32>(53768u, 28228u)), -arg_0, vec4<i32>(-20024i, -1i, arg_0, arg_0) & vec4<i32>(26679i, arg_0, arg_0, 1i), vec4<i32>(arg_0, -43753i, -15105i, arg_0) >> (vec4<u32>(var_1, 13940u, 79230u, var_1) % vec4<u32>(32u))))), 529f, Struct_1(select(vec4<bool>(true, any(vec2<bool>(true, false)), false, var_0.x <= var_0.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, any(vec4<bool>(false, true, false, true)), arg_0 != 2147483647i, all(vec4<bool>(true, false, false, true)))), countOneBits(arg_0) == select(i32(-1i) * -1i, 20688i, true), vec2<u32>(var_0.x >> (firstLeadingBit(35705u) % 32u), func_3(Struct_1(vec4<bool>(false, true, true, true), true, var_0.yy), -1i, _wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_0, arg_0, arg_0), vec4<i32>(-5659i, -1i, 0i, 2147483647i)), abs(vec4<i32>(arg_0, arg_0, arg_0, 0i))).x)));
}

fn func_5(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), false, true, true), false, _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b.x, 26492u), u_input.b.xx, ~_wgslsmith_div_vec2_u32(countOneBits(u_input.b.yy), ~vec2<u32>(57084u, u_input.b.x))));
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = func_5(firstTrailingBit(max(countOneBits(vec2<i32>(1i, 1i)), func_2(1i))));
    var var_1 = _wgslsmith_f_op_f32(ceil(-782f));
    return Struct_2(_wgslsmith_sub_i32(func_4(Struct_1(select(vec4<bool>(true, var_0.b, false, true), vec4<bool>(true, false, arg_0.a.x, arg_0.b), false), true, vec2<u32>(1u, 25213u) << (u_input.a.yx % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(572f * -237f)), Struct_1(select(var_0.a, vec4<bool>(true, false, arg_0.a.x, arg_1.x), vec4<bool>(false, true, arg_1.x, false)), !arg_0.a.x, arg_0.c)).x, -(~countOneBits(-65021i))), Struct_1(func_5(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(19948i, -20618i))).a, !arg_1.x, var_0.c), var_0);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_3(vec3<f32>(-909f, -1000f, -203f), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-(vec4<i32>(arg_1.x, arg_3.a, 0i, 33120i) >> (vec4<u32>(0u, arg_2.x, u_input.b.x, 0u) % vec4<u32>(32u))), select(-vec4<i32>(-1i, arg_3.a, -2147483647i, arg_1.x), countOneBits(vec4<i32>(arg_1.x, arg_3.a, arg_3.a, arg_3.a)), !vec4<bool>(false, arg_3.c.a.x, true, arg_0.b))), _wgslsmith_div_i32(func_2(arg_1.x).x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -1i, arg_1.x), vec3<i32>(-15256i, arg_1.x, -2147483647i)), reverseBits(vec3<i32>(44981i, 0i, arg_3.a))))), (~(-vec3<i32>(arg_1.x, -60350i, arg_1.x)) | select(~vec3<i32>(arg_3.a, arg_1.x, arg_1.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-613i, 17561i, -9633i), vec3<i32>(26444i, arg_3.a, arg_1.x)), arg_3.b.b)) & max(vec3<i32>(firstTrailingBit(-2147483647i), arg_1.x, arg_1.x), reverseBits(min(vec3<i32>(arg_3.a, 1i, arg_1.x), vec3<i32>(15650i, -1i, arg_1.x)))), arg_3);
    var var_1 = Struct_2(0i, func_5(_wgslsmith_add_vec2_i32(var_0.c.xx, countOneBits(vec2<i32>(0i, -89280i))) << (firstLeadingBit(~vec2<u32>(1u, arg_2.x)) % vec2<u32>(32u))), Struct_1(vec4<bool>(true, all(arg_3.c.a.xy), true, select(true, arg_3.c.b, arg_0.a.x)), true, _wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(4294967295u), 1u), reverseBits(~u_input.a.yy))));
    var_1 = var_0.d;
    var_1 = func_1(Struct_1(select(select(vec4<bool>(true, false, arg_0.a.x, true), !vec4<bool>(var_0.d.b.a.x, var_1.b.a.x, false, false), select(var_0.d.c.a.x, var_1.b.a.x, arg_0.a.x)), vec4<bool>(true, var_1.b.a.x, true, !var_0.d.c.a.x), vec4<bool>(arg_3.b.a.x, any(vec2<bool>(true, arg_3.c.a.x)), false, true)), all(vec4<bool>(any(vec2<bool>(var_1.b.b, var_1.b.a.x)), var_1.c.a.x, false, true)), abs(vec2<u32>(1031u, 29443u) & _wgslsmith_mult_vec2_u32(vec2<u32>(30105u, 2264u), vec2<u32>(var_0.d.b.c.x, var_1.c.c.x)))), vec3<bool>(!(!func_1(arg_0, var_1.c.a.yzx).c.a.x), all(vec4<bool>(var_0.a.x < var_0.a.x, arg_0.a.x, true, arg_0.a.x | var_0.d.b.b)), select(any(vec4<bool>(arg_3.c.a.x, arg_3.b.a.x, false, true)), var_0.d.b.a.x, var_1.c.b) || true));
    var_1 = var_0.d;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(694f + -277f)))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -602f)))));
    let var_1 = Struct_2(func_6(Struct_1(vec4<bool>(true, true, true, true), true, ~u_input.a.yy), -(~vec2<i32>(-16070i, 1i)), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(28884u, 20612u), vec2<u32>(1u, 32675u), u_input.b.zy), countOneBits(u_input.b.zy), true) | u_input.b.zx, func_1(Struct_1(vec4<bool>(true, true, false, false), true, vec2<u32>(u_input.b.x, u_input.b.x)), vec3<bool>(true, true, true))), Struct_1(func_1(Struct_1(vec4<bool>(false, false, true, true), true, firstLeadingBit(u_input.a.yy)), vec3<bool>(true, true, true)).c.a, (-1i ^ firstTrailingBit(2147483647i)) <= -1i, ~u_input.a.xy), func_5(_wgslsmith_div_vec2_i32(~select(vec2<i32>(-1i, -925i), vec2<i32>(-1i, -2147483647i), vec2<bool>(true, true)), vec2<i32>(min(1i, 15419i), abs(-6921i)))));
    var var_2 = Struct_1(!var_1.b.a, true, ~(var_1.c.c << (_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a.x, var_1.b.c.x)), var_1.b.c >> (vec2<u32>(var_1.b.c.x, u_input.b.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var_2 = var_1.c;
    var var_3 = select(func_1(Struct_1(var_1.c.a, var_1.b.b, _wgslsmith_sub_vec2_u32(~vec2<u32>(9408u, var_1.b.c.x), _wgslsmith_div_vec2_u32(var_1.c.c, u_input.b.yz))), vec3<bool>(var_1.a < (37677i >> (1u % 32u)), false, var_1.c.b)).c.a.wyx, !vec3<bool>(all(vec2<bool>(var_1.b.b, var_1.c.a.x)), any(var_1.b.a), all(!var_2.a.zy)), false);
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-899f, var_0, var_0) + vec3<f32>(-1000f, var_0, var_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 1151f) - vec3<f32>(941f, -1000f, 1992f))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(var_0, 536f), _wgslsmith_f_op_f32(var_0 - var_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(273f, 104f, var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 1409f))))), _wgslsmith_div_vec2_u32(~var_4.c.c, _wgslsmith_add_vec2_u32(vec2<u32>(var_4.b.c.x, 30984u) >> (var_4.b.c % vec2<u32>(32u)), var_1.c.c)), ~(~u_input.a.x), vec4<i32>(var_1.a >> (var_1.b.c.x % 32u), ~(-51678i), _wgslsmith_div_i32(49051i, 1i), var_4.a << (~_wgslsmith_sub_u32(var_1.c.c.x, 11540u) % 32u)));
}

