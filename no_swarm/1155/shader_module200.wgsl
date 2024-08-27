struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
    d: Struct_3,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 55875u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>) -> vec4<i32> {
    var var_0 = 1869f;
    var var_1 = Struct_4(!select(!(!vec3<bool>(true, arg_0.x, false)), vec3<bool>(true, any(arg_0), true), any(select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, true), true))), reverseBits(-(~(-vec2<i32>(2147483647i, 34198i)))), 4294967295u, Struct_3(any(vec2<bool>(all(vec4<bool>(true, true, true, false)), true)), ~firstLeadingBit(u_input.a ^ u_input.a), i32(-1i) * -(~(-1i)), Struct_2(-1387f, firstLeadingBit(-vec2<i32>(1i, -2147483647i)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(236f, 596f, 351f) + vec3<f32>(-287f, -237f, 1257f)), vec2<u32>(u_input.a, u_input.a), 4294967295u <= u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(10640u, u_input.a), vec2<u32>(u_input.a, 9818u), vec2<u32>(0u, u_input.a)) << (~vec2<u32>(25431u, 1u) % vec2<u32>(32u)))), vec3<u32>(u_input.a, u_input.a, ~4294967295u));
    var var_2 = abs(~(~(~4294967295u))) << (var_1.d.b % 32u);
    var var_3 = -(~(~vec3<i32>(var_1.d.d.b.x, var_1.d.c ^ var_1.b.x, _wgslsmith_add_i32(1i, var_1.d.d.b.x))));
    let var_4 = _wgslsmith_add_i32(~(~(-35428i)), -6815i);
    return max(~vec4<i32>(0i | ~var_4, var_3.x, 0i, var_3.x), vec4<i32>(reverseBits(-(var_1.d.d.b.x >> (var_1.d.d.d.x % 32u))), -53025i, abs(0i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-15556i, -60738i), _wgslsmith_sub_i32(var_1.d.c, -var_4))));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -464f) + -397f);
    global0 = 7074u;
    let var_1 = ~(firstTrailingBit(func_3(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))) >> (((~vec4<u32>(9531u, u_input.a, 66238u, 4294967295u) << (countOneBits(vec4<u32>(u_input.a, 1u, 1u, 0u)) % vec4<u32>(32u))) << (~vec4<u32>(arg_0, 0u, 1u, 43967u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = 28328u;
    var var_2 = !vec2<bool>(!all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), true);
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec2<i32>) -> u32 {
    let var_0 = arg_1.e;
    var var_1 = !vec4<bool>((-2147483647i & arg_2.x) >= (i32(-1i) * -arg_1.d.d.b.x), arg_1.d.d.a > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(908f))), !arg_1.d.d.c.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1938f), _wgslsmith_f_op_f32(-arg_1.d.d.a)) > arg_1.d.d.a);
    global0 = ~reverseBits(~reverseBits(u_input.a) & firstLeadingBit(37885u));
    var_1 = select(select(select(!(!vec4<bool>(arg_0, arg_0, var_1.x, true)), select(vec4<bool>(arg_1.a.x, true, true, arg_0), select(vec4<bool>(false, false, arg_1.a.x, true), vec4<bool>(var_1.x, arg_0, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, arg_1.d.d.c.c)), true), any(!arg_1.a)), vec4<bool>(false, arg_0, var_1.x, true), select(false, arg_0, false || (false || arg_1.d.d.c.c))), vec4<bool>(((arg_2.x ^ arg_1.d.d.b.x) <= min(arg_1.b.x, arg_1.d.c)) & any(select(arg_1.a.xx, vec2<bool>(arg_1.a.x, arg_1.d.a), var_1.x)), arg_1.d.d.c.c, all(!var_1.xx), arg_1.d.d.c.a.x >= _wgslsmith_f_op_f32(-arg_1.d.d.a)), !vec4<bool>(false, arg_1.d.d.c.c || all(var_1.wz), _wgslsmith_dot_vec2_u32(arg_1.e.zz, arg_1.d.d.c.b) != abs(u_input.a), select(select(true, true, var_1.x), var_1.x, !arg_0)));
    var var_2 = arg_1.d.d;
    return arg_1.d.b;
}

fn func_1() -> i32 {
    var var_0 = vec3<u32>(~u_input.a, func_4(func_2(countOneBits(u_input.a)) & func_2(1u), Struct_4(vec3<bool>(select(false, false, false), true, true), select(vec2<i32>(-23833i, -28447i), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, true)) >> (vec2<u32>(46119u, 0u) % vec2<u32>(32u)), u_input.a, Struct_3(true, _wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_mod_i32(18773i, 488i), Struct_2(-819f, vec2<i32>(-1i, -1i), Struct_1(vec3<f32>(-1207f, 444f, -710f), vec2<u32>(69646u, u_input.a), true), vec2<u32>(1u, 0u))), vec3<u32>(u_input.a, 22864u >> (u_input.a % 32u), ~19249u)), vec2<i32>(1i, 1i) & _wgslsmith_add_vec2_i32(select(vec2<i32>(-11692i, 2147483647i), vec2<i32>(-2147483647i, -2147483647i), true), vec2<i32>(2147483647i, -4256i))), u_input.a);
    global0 = var_0.x;
    let var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), all(vec4<bool>(true, false, true, true))), false), vec2<bool>(any(vec4<bool>(true, false, true, true)), false), false), vec2<bool>(true, true));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -960f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(760f)) - -1305f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(162f, 357f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(813f, -443f))), true)))))));
    global0 = countOneBits(51070u);
    return ~firstLeadingBit(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(45719i, -2147483647i, -2147483647i, -1i), vec4<i32>(0i, -25596i, -12826i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_3(true, 13883u, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, -40408i, -21306i, -2147483647i)), vec4<i32>(56463i, 1i, -7440i, -1i) << (vec4<u32>(u_input.a, 12910u, u_input.a, u_input.a) % vec4<u32>(32u))), 4942i), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_div_f32(-280f, 1401f)), vec2<i32>(func_1(), func_3(vec2<bool>(true, false)).x), Struct_1(vec3<f32>(848f, 1000f, 1000f), ~vec2<u32>(4294967295u, 1u), true), vec2<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -891f), ~_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 2147483647i), firstTrailingBit(vec2<i32>(-1i, -67i))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -767f), _wgslsmith_f_op_f32(min(782f, -795f)), _wgslsmith_f_op_f32(floor(-1673f))), select(~vec2<u32>(56262u, u_input.a), vec2<u32>(u_input.a, 5049u), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), !any(vec4<bool>(true, false, true, false))), ~(~(~vec2<u32>(u_input.a, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1669f)) * -710f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-113f - -2213f), 954f)))));
    global0 = _wgslsmith_mod_u32(4294967295u, u_input.a);
    var var_1 = -abs(firstTrailingBit(vec2<i32>(var_0.b.b.x, var_0.a.d.b.x)));
    global0 = abs(u_input.a);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1094f + 750f))), vec2<i32>(var_1.x, ~(-9763i & var_0.b.b.x) & var_0.a.c), var_0.b.c, vec2<u32>(_wgslsmith_sub_u32(~0u, u_input.a), 1u));
    var var_3 = var_2;
    var_0 = Struct_5(var_0.a, Struct_2(-1000f, vec2<i32>(_wgslsmith_clamp_i32(var_2.b.x & var_3.b.x, -var_1.x, var_0.a.d.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.b.b.x) << (var_3.c.b % vec2<u32>(32u)), -vec2<i32>(var_3.b.x, var_3.b.x))), var_3.c, ~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(var_2.c.b, var_0.b.d), vec2<u32>(69585u, u_input.a))), -1454f);
    var var_4 = firstLeadingBit(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(var_2.b.x, var_3.b.x, 10592i)), vec3<i32>(-25570i, var_2.b.x, _wgslsmith_mod_i32(var_1.x, 44753i))) & vec3<i32>(1i, 1i, 1i));
    var var_5 = firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(~firstTrailingBit(u_input.a), abs(var_3.c.b.x | var_2.c.b.x)), ~51506u, ~(~0u), func_4(!(true || var_0.b.c.c), Struct_4(vec3<bool>(false, var_2.c.c, false), -var_2.b, var_0.a.b, Struct_3(true, u_input.a, var_4.x, var_0.b), vec3<u32>(7538u, 4294967295u, u_input.a) | vec3<u32>(26412u, 14124u, var_2.c.b.x)), ~(vec2<i32>(-27213i, var_4.x) << (vec2<u32>(var_0.a.b, var_2.c.b.x) % vec2<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(16165i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_2.c.a, vec3<f32>(-1445f, -1256f, 111f)))), vec2<i32>(reverseBits(var_3.b.x), var_1.x), _wgslsmith_f_op_vec3_f32(var_0.b.c.a - _wgslsmith_f_op_vec3_f32(var_3.c.a * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(176f, var_0.b.c.a.x, var_3.a) * var_2.c.a)))));
}

