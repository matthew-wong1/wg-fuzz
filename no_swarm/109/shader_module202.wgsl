struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-472f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1422f)) * _wgslsmith_f_op_f32(trunc(-2115f))) - _wgslsmith_f_op_f32(f32(-1f) * -1606f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1061f))))) - -162f), true));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: f32) -> i32 {
    let var_0 = 2068f;
    var var_1 = ~arg_1.a.x;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(f32(-1f) * -147f)), _wgslsmith_f_op_f32(-407f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 410f) * arg_2.x))), _wgslsmith_f_op_f32(1147f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(516f, arg_1.b.b) - -914f) + _wgslsmith_f_op_f32(f32(-1f) * -726f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1540f))))));
    global0 = any(select(!vec4<bool>(-1i >= u_input.a.x, arg_1.c && true, any(vec3<bool>(arg_1.c, true, arg_1.c)), arg_1.c), vec4<bool>(arg_1.c, arg_1.c, arg_1.c, true), !select(vec4<bool>(arg_1.c, false, true, true), !vec4<bool>(true, arg_1.c, arg_1.c, true), !vec4<bool>(arg_1.c, true, arg_1.c, false))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
    return arg_0.d.x;
}

fn func_4(arg_0: Struct_2) -> Struct_5 {
    let var_0 = arg_0.b.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, 1000f, _wgslsmith_f_op_f32(-arg_0.b.b)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(593f, arg_0.b.b, -685f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1013f, arg_0.b.b, arg_0.b.b)))))), all(select(!(!vec2<bool>(true, arg_0.c)), vec2<bool>(arg_0.c, arg_0.c | true), select(select(vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.c, true), vec2<bool>(arg_0.c, arg_0.c)), select(vec2<bool>(arg_0.c, true), vec2<bool>(true, false), vec2<bool>(arg_0.c, arg_0.c)), false)))));
    var var_2 = arg_0.b.c.x;
    var var_3 = vec4<u32>(_wgslsmith_sub_u32(~(~select(1u, arg_0.a.x, true)), reverseBits(arg_0.a.x)), 0u << (arg_0.a.x % 32u), firstLeadingBit(~(~0u)), abs(reverseBits(4294967295u)));
    let var_4 = select(select(!select(select(vec4<bool>(false, arg_0.c, arg_0.c, arg_0.c), vec4<bool>(false, false, arg_0.c, arg_0.c), vec4<bool>(false, true, true, false)), !vec4<bool>(arg_0.c, false, false, arg_0.c), all(vec2<bool>(arg_0.c, arg_0.c))), select(select(select(vec4<bool>(false, false, arg_0.c, true), vec4<bool>(false, arg_0.c, arg_0.c, false), arg_0.c), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), any(vec2<bool>(arg_0.c, arg_0.c))), select(!vec4<bool>(true, true, arg_0.c, false), !vec4<bool>(arg_0.c, false, true, false), vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c)), vec4<bool>(true, !arg_0.c, arg_0.c, arg_0.c)), false), vec4<bool>(!any(select(vec3<bool>(true, arg_0.c, arg_0.c), vec3<bool>(arg_0.c, arg_0.c, arg_0.c), false)), true, arg_0.c, all(!(!vec4<bool>(false, false, arg_0.c, arg_0.c)))), select(select(select(select(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), vec4<bool>(false, false, false, arg_0.c), false), vec4<bool>(false, false, arg_0.c, arg_0.c), !vec4<bool>(false, arg_0.c, arg_0.c, arg_0.c)), select(!vec4<bool>(true, arg_0.c, true, arg_0.c), vec4<bool>(true, arg_0.c, false, true), true), select(!vec4<bool>(true, false, arg_0.c, true), vec4<bool>(false, false, arg_0.c, arg_0.c), select(vec4<bool>(false, false, false, arg_0.c), vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c)))), !select(!vec4<bool>(arg_0.c, false, true, arg_0.c), vec4<bool>(true, true, true, true), true), all(vec4<bool>(!arg_0.c, !arg_0.c, !arg_0.c, arg_0.c | arg_0.c))));
    return Struct_5(arg_0.b, Struct_4(arg_0.b, vec2<bool>(false, any(!var_4)), Struct_1(51431u, -871f, vec3<i32>(2147483647i, 15104i & u_input.a.x, u_input.a.x), arg_0.b.d, abs(vec3<i32>(-42795i, -1i, 1i)) << (vec3<u32>(var_3.x, arg_0.b.a, arg_0.a.x) % vec3<u32>(32u))), -arg_0.b.e));
}

fn func_1() -> u32 {
    let var_0 = func_4(Struct_2(~vec3<u32>(~0u, _wgslsmith_sub_u32(90828u, 1u), 1u), Struct_1(~_wgslsmith_add_u32(1u, 1u), _wgslsmith_f_op_f32(func_2()), -vec3<i32>(0i, u_input.a.x, 4637i), ~(-vec3<i32>(u_input.a.x, -35755i, u_input.a.x)), vec3<i32>(-u_input.a.x, u_input.a.x, ~(-2147483647i))), _wgslsmith_mod_i32(func_3(Struct_1(1u, 1167f, vec3<i32>(0i, u_input.a.x, -13557i), vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(17247i, u_input.a.x, -2147483647i)), Struct_2(vec3<u32>(35860u, 4294967295u, 1u), Struct_1(1u, 325f, vec3<i32>(u_input.a.x, -28528i, -2147483647i), vec3<i32>(-36997i, u_input.a.x, 4786i), vec3<i32>(41439i, -1i, u_input.a.x)), true), vec4<f32>(-967f, -508f, -1519f, 151f), 714f), 1i) <= u_input.a.x));
    global0 = true || var_0.b.b.x;
    global0 = false;
    var var_1 = firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.a.a, 66882u), select(vec2<u32>(36141u, var_0.b.c.a), vec2<u32>(var_0.a.a, var_0.a.a), vec2<bool>(true, false))), vec2<u32>(abs(var_0.a.a), ~57278u))) >> (abs(select(vec2<u32>(15946u, var_0.b.c.a) << (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.b.a.a), vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u)), ~firstTrailingBit(vec2<u32>(var_0.b.a.a, 69825u)), vec2<bool>(false, var_0.b.b.x))) % vec2<u32>(32u));
    var var_2 = select(vec3<bool>(~(-u_input.a.x) > firstLeadingBit(_wgslsmith_sub_i32(14733i, -29695i)), var_0.b.b.x, func_4(Struct_2(select(vec3<u32>(var_1.x, var_0.a.a, 44304u), vec3<u32>(6620u, 19620u, 42886u), vec3<bool>(false, var_0.b.b.x, var_0.b.b.x)), Struct_1(var_1.x, var_0.b.c.b, vec3<i32>(var_0.b.a.d.x, -2147483647i, -2147483647i), var_0.a.e, vec3<i32>(-10078i, u_input.a.x, -4865i)), true)).b.b.x), !vec3<bool>(all(var_0.b.b), !(false != var_0.b.b.x), true), select(!(!select(vec3<bool>(false, false, var_0.b.b.x), vec3<bool>(true, false, false), vec3<bool>(var_0.b.b.x, false, var_0.b.b.x))), vec3<bool>(all(!vec4<bool>(false, var_0.b.b.x, var_0.b.b.x, var_0.b.b.x)), false, all(select(vec3<bool>(var_0.b.b.x, var_0.b.b.x, var_0.b.b.x), vec3<bool>(false, true, var_0.b.b.x), vec3<bool>(true, var_0.b.b.x, true)))), select(select(!vec3<bool>(var_0.b.b.x, false, true), vec3<bool>(var_0.b.b.x, var_0.b.b.x, false), select(vec3<bool>(false, true, false), vec3<bool>(true, var_0.b.b.x, var_0.b.b.x), var_0.b.b.x)), !(!vec3<bool>(var_0.b.b.x, var_0.b.b.x, false)), vec3<bool>(var_0.b.b.x && var_0.b.b.x, all(vec3<bool>(false, true, true)), true))));
    return max(var_1.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_1.x, var_0.b.c.a, abs(firstLeadingBit(19762u))), 1571u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_1(~(func_1() & ~13759u), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1232f)), -1068f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-186f * -618f))))), -vec3<i32>(u_input.a.x >> (8450u % 32u), func_4(Struct_2(vec3<u32>(19877u, 1u, 36628u), Struct_1(4294967295u, 1000f, vec3<i32>(-27091i, 1i, u_input.a.x), vec3<i32>(u_input.a.x, 58376i, -68815i), vec3<i32>(13675i, u_input.a.x, u_input.a.x)), true)).b.c.e.x, u_input.a.x & -1i), ~vec3<i32>(2147483647i, -31610i, 1i), -firstTrailingBit(vec3<i32>(u_input.a.x, 78862i, u_input.a.x) | vec3<i32>(1i, 15471i, -2147483647i))), Struct_4(Struct_1(select(~0u, reverseBits(6940u), true), _wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_sub_vec3_i32(-vec3<i32>(15828i, u_input.a.x, u_input.a.x), -vec3<i32>(36798i, -2147483647i, u_input.a.x)), vec3<i32>(-u_input.a.x, -13056i, 0i), abs(select(vec3<i32>(-27795i, -14398i, -27545i), vec3<i32>(u_input.a.x, 0i, u_input.a.x), false))), vec2<bool>(true, true), Struct_1(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, 180u), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(930f - 1000f)), ~reverseBits(vec3<i32>(0i, u_input.a.x, -38076i)), vec3<i32>(u_input.a.x, -u_input.a.x, ~(-35759i)), ~max(vec3<i32>(-5494i, 37531i, u_input.a.x), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x))), countOneBits(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1987i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(u_input.a.x, u_input.a.x, -21786i))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-func_4(Struct_2(vec3<u32>(var_0.b.a.a, var_0.b.a.a, 64117u), var_0.a, var_0.b.b.x)).b.a.b), -951f)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-768f, 1175f) * vec2<f32>(var_0.b.c.b, var_0.b.c.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.b, -702f))), vec2<f32>(var_0.b.c.b, var_0.b.a.b))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-318f, _wgslsmith_f_op_f32(floor(170f))));
    let var_2 = ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(-38985i, 1i, 1i, u_input.a.x), vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, var_0.b.d.x) | vec4<i32>(var_0.b.c.d.x, 90238i, 1i, 24640i)) & vec4<i32>(547i, 8550i, 1i, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.a.b, _wgslsmith_f_op_f32(func_2()))), 1i);
}

