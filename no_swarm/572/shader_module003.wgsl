struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = u_input.a >> ((u_input.a & ~max(0u, min(86666u, 1u))) % 32u);
    var var_0 = arg_0.a.b.x;
    var var_1 = u_input.c;
    let var_2 = arg_0.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(503f, 104f) + vec2<f32>(-750f, arg_0.a.c.x)), _wgslsmith_div_vec2_f32(vec2<f32>(637f, arg_0.d.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1490f, var_2.c.x) - vec2<f32>(arg_0.b.c.x, 1848f))), vec2<bool>(var_2.e && arg_0.d.e, true)))));
    return var_2.e;
}

fn func_2() -> bool {
    var var_0 = Struct_1(select(all(vec4<bool>(true, any(vec2<bool>(true, true)), true, true)), !any(vec3<bool>(true, true, true)), true), vec4<i32>(abs(u_input.c), u_input.b.x, -u_input.d >> (1u % 32u), -_wgslsmith_div_i32(u_input.c, -u_input.d)), vec2<f32>(1f, 1f), -16388i, true);
    let var_1 = all(vec3<bool>(true, false, !func_3(Struct_2(Struct_1(false, vec4<i32>(u_input.e.x, -32158i, -2147483647i, var_0.b.x), var_0.c, u_input.d, false), Struct_1(var_0.e, var_0.b, var_0.c, var_0.b.x, false), vec3<i32>(u_input.c, u_input.e.x, 2147483647i), Struct_1(var_0.a, var_0.b, vec2<f32>(905f, var_0.c.x), 52157i, var_0.e)))));
    var var_2 = ~33264i >> (u_input.a % 32u);
    var_2 = reverseBits(var_0.b.x);
    let var_3 = Struct_1(true, vec4<i32>(-15667i, u_input.d, max(abs(reverseBits(2147483647i)), min(-10047i | var_0.d, u_input.c & var_0.b.x)), var_0.b.x), var_0.c, firstTrailingBit(var_0.d ^ 1228i), false);
    return var_0.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global0 = ~(~firstTrailingBit(u_input.a ^ max(0u, u_input.a)));
    let var_0 = func_2();
    global0 = 0u;
    var var_1 = !func_2();
    global0 = u_input.a;
    return true;
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = 1u;
    global0 = ~_wgslsmith_add_u32(~var_0, var_0);
    let var_1 = Struct_1(arg_1.a.e, arg_1.b.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b.c + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.b.c)))), vec2<f32>(arg_1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-142f + arg_1.b.c.x)))), -1i, arg_1.b.e);
    global0 = ~u_input.a;
    global0 = u_input.a;
    return _wgslsmith_mult_vec4_i32((vec4<i32>(_wgslsmith_clamp_i32(var_1.b.x, u_input.b.x, arg_1.a.b.x), var_1.b.x, arg_0, -26483i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 13900u, var_0, u_input.a) ^ vec4<u32>(7649u, 26668u, 33964u, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(22118u, 19432u, var_0, var_0), vec4<u32>(u_input.a, 2444u, u_input.a, 1u), vec4<u32>(66167u, u_input.a, 0u, var_0)), vec4<u32>(u_input.a, 1u, 250u, 0u)) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(64689u, ~1u, ~var_0, countOneBits(84144u)), countOneBits(firstTrailingBit(vec4<u32>(u_input.a, var_0, 19971u, var_0)))) % vec4<u32>(32u)), vec4<i32>(arg_1.c.x, ~(~(-1i)), 32706i, abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -11862i), u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    let var_0 = func_4(-u_input.e.x, Struct_2(Struct_1(false, vec4<i32>(~32951i, u_input.e.x & u_input.c, ~39981i, _wgslsmith_add_i32(1i, -1i)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1236f, -248f)))), u_input.c, !func_1(Struct_1(true, vec4<i32>(u_input.d, u_input.c, 68113i, 2147483647i), vec2<f32>(323f, -382f), 2147483647i, true), Struct_1(false, vec4<i32>(u_input.b.x, 2147483647i, 0i, u_input.b.x), vec2<f32>(734f, 1000f), 1i, true))), Struct_1(false, -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.c, -26507i, u_input.e.x), vec4<i32>(u_input.c, u_input.b.x, -19023i, 0i)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-752f, -1960f))))), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c, u_input.c), u_input.b)), true), u_input.b, Struct_1(true | any(vec4<bool>(false, true, true, true)), _wgslsmith_mod_vec4_i32(min(vec4<i32>(-1i, u_input.d, u_input.e.x, 1i), vec4<i32>(u_input.c, 21043i, u_input.b.x, -2147483647i)), reverseBits(vec4<i32>(u_input.d, u_input.b.x, u_input.b.x, 18497i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(443f, 373f))), _wgslsmith_mult_i32(u_input.c, u_input.d), true)));
    var var_1 = _wgslsmith_clamp_u32(select(~(~1u) & _wgslsmith_mod_u32(abs(u_input.a), 82933u), 1u, true && all(vec2<bool>(true, true))), 28894u, ~1u);
    let var_2 = vec3<u32>(~u_input.a, u_input.a, _wgslsmith_div_u32(_wgslsmith_add_u32(~u_input.a, 1u), u_input.a));
    var_1 = var_2.x;
    var var_3 = select(vec4<bool>(true, select(func_2() & true, func_2(), true), any(vec2<bool>(true, true)), ~(46722u >> (0u % 32u)) == ~(~var_2.x)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), !select(vec4<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(false, true)), false, true), vec4<bool>(true, true, true, true), false));
    var_3 = vec4<bool>((~(~39551i) > _wgslsmith_mod_i32(_wgslsmith_add_i32(-47495i, u_input.b.x), ~31552i)) != true, any(vec2<bool>(true, true)), !(var_3.x || (true && func_1(Struct_1(true, vec4<i32>(u_input.b.x, var_0.x, 0i, -17429i), vec2<f32>(-248f, -1112f), 2147483647i, false), Struct_1(var_3.x, vec4<i32>(0i, 1i, 1i, var_0.x), vec2<f32>(737f, 852f), 59569i, true)))), !var_3.x);
    var_3 = select(!(!select(!vec4<bool>(var_3.x, false, var_3.x, true), vec4<bool>(var_3.x, var_3.x, true, true), true)), select(!(!(!vec4<bool>(var_3.x, false, true, var_3.x))), vec4<bool>(true, false, !select(true, var_3.x, var_3.x), var_3.x), select(select(!vec4<bool>(true, var_3.x, true, false), vec4<bool>(var_3.x, true, false, var_3.x), var_3.x), select(vec4<bool>(var_3.x, true, true, var_3.x), select(vec4<bool>(true, true, var_3.x, var_3.x), vec4<bool>(false, true, var_3.x, true), false), !vec4<bool>(false, var_3.x, true, var_3.x)), select(!vec4<bool>(false, true, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), true))), !(!vec4<bool>(var_3.x, var_3.x, func_1(Struct_1(var_3.x, vec4<i32>(33132i, -2147483647i, 2147483647i, u_input.c), vec2<f32>(-1483f, 561f), -1i, var_3.x), Struct_1(true, var_0, vec2<f32>(892f, 380f), u_input.e.x, true)), !var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-24879i, -var_0.ww, _wgslsmith_f_op_f32(-2052f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(229f, -1241f)), _wgslsmith_f_op_f32(165f + 581f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-434f + -744f) + 474f))));
}

