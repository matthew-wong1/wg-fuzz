struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = u_input.b;
    return 0u;
}

fn func_2() -> Struct_1 {
    let var_0 = any(vec2<bool>(false, false)) == all(vec4<bool>(any(vec3<bool>(false, true, false)), true, any(vec3<bool>(false, false, false)), true));
    var var_1 = Struct_3(Struct_2(Struct_1(vec3<u32>(firstTrailingBit(u_input.a.x), countOneBits(56006u), ~u_input.a.x), vec3<bool>(true, !var_0, true)), ~vec4<u32>(_wgslsmith_mod_u32(4294967295u, 40031u), u_input.a.x ^ u_input.b, ~17786u, u_input.b | 84103u), Struct_1(reverseBits(~u_input.a), select(select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, false)), vec3<bool>(var_0, var_0, false), all(vec3<bool>(false, var_0, false)))), -(vec2<i32>(-1i) * -vec2<i32>(1i, u_input.c))), false);
    var_1 = Struct_3(var_1.a, (var_1.a.d.x & (var_1.a.d.x >> (u_input.a.x % 32u))) == ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, 2147483647i, 11552i), vec4<i32>(-2147483647i, -1i, 14176i, 22260i)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_1.a.d.x, 28853i, var_1.a.d.x), vec4<i32>(var_1.a.d.x, u_input.c, -2147483647i, 16552i))));
    var_1 = Struct_3(var_1.a, true);
    let var_2 = Struct_4(var_1.a.c, 4294967295u, 1i, var_1.a);
    return var_2.d.a;
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = arg_0.c ^ ~28232i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1155f, _wgslsmith_f_op_f32(-630f - _wgslsmith_f_op_f32(max(-252f, 754f))))));
    var var_2 = arg_0;
    var var_3 = !select(!(!(!vec4<bool>(false, arg_1.x, arg_0.d.a.b.x, var_2.a.b.x))), vec4<bool>((false || arg_0.a.b.x) || any(var_2.a.b.zz), any(vec4<bool>(var_2.a.b.x, var_2.d.c.b.x, var_2.d.a.b.x, var_2.a.b.x)), !(false && var_2.d.a.b.x), arg_1.x), true);
    var var_4 = Struct_4(func_2(), ~(~firstLeadingBit(u_input.a.x)), arg_0.c, Struct_2(arg_0.d.a, vec4<u32>(1u, ~3584u, var_2.b, ~0u), func_2(), var_2.d.d));
    return Struct_1(vec3<u32>(~max(u_input.d.x, arg_0.d.c.a.x), _wgslsmith_div_u32(u_input.b, u_input.b), 26996u), select(!select(var_3.wyw, vec3<bool>(var_4.d.c.b.x, var_2.d.c.b.x, true), var_4.d.d.x <= -81923i), vec3<bool>(!var_3.x, false, var_3.x), any(select(!arg_1, select(vec4<bool>(false, true, true, false), arg_1, vec4<bool>(var_4.d.c.b.x, var_2.a.b.x, var_4.a.b.x, var_3.x)), true))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    var var_0 = -(_wgslsmith_add_i32(31144i, _wgslsmith_div_i32(arg_3.d.d.x, arg_1.x)) & -15488i);
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(0u, abs(u_input.a.x)), func_2().a.x, ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(23778u, 4294967295u, 1u), u_input.a), vec3<u32>(u_input.b, 4294967295u, 1u)), _wgslsmith_div_u32(arg_0.x, arg_0.x >> (_wgslsmith_mod_u32(56953u, 7928u) % 32u))), _wgslsmith_mod_vec4_u32(arg_3.d.b, ~(~vec4<u32>(u_input.a.x, 7829u, 1u, arg_0.x) & vec4<u32>(arg_3.d.b.x, 2528u, u_input.b, 10354u))));
    var_1 = _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b | u_input.d.x, 1u, ~19569u, ~arg_0.x) ^ arg_3.d.b, arg_3.d.b);
    let var_2 = vec4<bool>(false, select(true, any(func_3(arg_3, vec4<bool>(false, false, arg_3.a.b.x, arg_3.a.b.x), u_input.b).b), true), true, all(vec4<bool>(all(arg_3.d.c.b.xy), true, all(arg_3.a.b), false)));
    var_0 = i32(-1i) * -1i;
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(abs(vec2<u32>(func_1(all(vec3<bool>(true, true, false)), u_input.c), 22091u)), vec4<i32>(-reverseBits(-48101i), _wgslsmith_mod_i32(u_input.c, ~(1i | u_input.c)), abs(u_input.c), 0i), -499f, Struct_4(func_2(), u_input.b, u_input.c, Struct_2(func_3(Struct_4(Struct_1(vec3<u32>(u_input.a.x, 3950u, u_input.d.x), vec3<bool>(true, false, true)), 1u, u_input.c, Struct_2(Struct_1(u_input.a, vec3<bool>(true, false, false)), vec4<u32>(u_input.b, u_input.d.x, 50508u, 29793u), Struct_1(u_input.a, vec3<bool>(true, false, true)), vec2<i32>(-5567i, 25666i))), vec4<bool>(true, true, false, false), u_input.d.x), vec4<u32>(~63188u, func_3(Struct_4(Struct_1(u_input.a, vec3<bool>(false, true, false)), 42418u, u_input.c, Struct_2(Struct_1(u_input.a, vec3<bool>(false, true, false)), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b), Struct_1(vec3<u32>(u_input.d.x, 38065u, 29807u), vec3<bool>(true, true, false)), vec2<i32>(-1i, u_input.c))), vec4<bool>(false, false, false, false), 4294967295u).a.x, min(u_input.d.x, 4294967295u), _wgslsmith_div_u32(40272u, 16404u)), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b, 22470u), vec3<u32>(1u, u_input.d.x, u_input.d.x)), vec3<bool>(true, true, false)), _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(297f, -1000f, 2216f))))))));
    let var_2 = _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c) & vec3<i32>(50665i, -65608i, 3996i), vec3<i32>(18144i, 59982i, -28147i) << (var_0.a % vec3<u32>(32u))), -1i, -1i, firstLeadingBit(-35952i) >> (~4294967295u % 32u)), -_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(0i, u_input.c, u_input.c, 2147483647i)) ^ -vec4<i32>(51947i, 1i, u_input.c, u_input.c), abs(~vec4<i32>(u_input.c, 1i, -41814i, 0i))));
    let var_3 = max(~var_2.xzz, var_2.xzy);
    var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-651f, 378f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(709f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_1.x, var_1.x))))) + vec3<f32>(_wgslsmith_f_op_f32(-1734f * var_1.x), _wgslsmith_f_op_f32(-var_1.x), -1000f))));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(314f * var_1.x), -1037f, var_1.x) - vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, var_1.x, _wgslsmith_f_op_f32(-268f * -1333f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-624f, var_1.x, 1433f, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(315f, var_1.x, -356f, 1611f) * vec4<f32>(-216f, 600f, 343f, -2032f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-528f, -355f, _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-var_1.x)))));
    var var_5 = func_3(Struct_4(Struct_1(~u_input.a, var_0.b), var_0.a.x & 41442u, reverseBits(1i), Struct_2(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(20049u, 974u, var_0.a.x), u_input.a), !var_0.b), ~(~vec4<u32>(26201u, var_0.a.x, var_0.a.x, 51117u)), var_0, var_2.zw)), !vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, all(select(vec4<bool>(false, var_0.b.x, false, var_0.b.x), vec4<bool>(false, false, true, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, false, false)))), firstTrailingBit(~0u));
    let x = u_input.a;
    s_output = StorageBuffer((firstTrailingBit(select(var_2.xwz, vec3<i32>(var_3.x, -1i, u_input.c), vec3<bool>(var_5.b.x, false, var_0.b.x))) >> (vec3<u32>(var_0.a.x, u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 45120u, 72466u, 4294967295u), vec4<u32>(u_input.b, 4294967295u, u_input.a.x, var_5.a.x))) % vec3<u32>(32u))) << ((~vec3<u32>(972u, 1u, u_input.b) | ~(~var_5.a)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(round(var_4.x)), min(var_2.zw, -vec2<i32>(_wgslsmith_mod_i32(1i, 29012i), -23216i)));
}

