struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(7079u, 0u, 0u, 101159u);

var<private> global1: i32 = -39890i;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(i32(-1i) * -(~u_input.a | (24836i >> (global0.x % 32u))), -49378i);
    var var_1 = !select(_wgslsmith_sub_u32(3133u, global0.x) > 1u, all(vec3<bool>(true, true, true)), true);
    let var_2 = true;
    var var_3 = -_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a << (1u % 32u), u_input.a, u_input.a, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(~0i, _wgslsmith_mod_i32(-1i, 1i), 0i | u_input.a, 11986i), vec4<i32>(-5711i, u_input.a, u_input.a, u_input.a) & vec4<i32>(27845i, u_input.a, -27601i, u_input.a)));
    let var_4 = firstLeadingBit(var_3.wz);
    return Struct_1(var_3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -993f))))))), !(!(!select(vec3<bool>(false, var_2, var_2), vec3<bool>(false, false, true), var_2))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    let var_0 = func_1().c.xx;
    let var_1 = vec4<u32>(min(~20169u, ~(~94712u)), ~1u & min(1u, ~arg_1.a.x), ~abs(select(4294967295u, global0.x, false)), 4294967295u) ^ ~firstTrailingBit(select(~arg_1.a, ~vec4<u32>(arg_1.a.x, 28418u, arg_1.a.x, 0u), !vec4<bool>(false, arg_1.b.a.c.x, true, false)));
    global0 = arg_1.a;
    global0 = var_1;
    let var_2 = arg_1.b;
    return reverseBits(var_1.x);
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    global1 = _wgslsmith_dot_vec4_i32((-(~vec4<i32>(u_input.a, 25038i, u_input.a, u_input.a)) << (vec4<u32>(func_3(Struct_1(u_input.a, arg_0.x, vec3<bool>(false, false, true)), Struct_3(vec4<u32>(1u, 1u, 0u, global0.x), Struct_2(Struct_1(-71761i, arg_0.x, vec3<bool>(false, true, false))), Struct_1(0i, arg_0.x, vec3<bool>(false, true, false)), 42380i)), global0.x, global0.x, 72965u) % vec4<u32>(32u))) | -(~vec4<i32>(2147483647i, u_input.a, -1i, 3239i)), _wgslsmith_add_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), vec4<i32>(u_input.a, -1i, 37403i, u_input.a & -2147483647i), vec4<bool>(true, true, all(vec4<bool>(true, true, true, false)), global0.x <= 8277u)), select(countOneBits(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)), vec4<i32>(-2147483647i, 46567i, 13652i, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), 24851u > global0.x) >> (vec4<u32>(~1u, 73765u, global0.x, 52695u) % vec4<u32>(32u))));
    global0 = vec4<u32>(29777u, ~global0.x, func_3(func_1(), Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(12731u, global0.x, 0u, global0.x), vec4<u32>(4294967295u, 4449u, 24004u, 6160u), vec4<u32>(25269u, global0.x, 60509u, global0.x)), Struct_2(Struct_1(u_input.a, arg_0.x, vec3<bool>(true, true, true))), Struct_1(u_input.a, arg_0.x, vec3<bool>(false, true, true)), _wgslsmith_mult_i32(-27287i, 33629i))), ~(~(~0u))) & firstTrailingBit(vec4<u32>(global0.x, func_3(Struct_1(u_input.a, arg_0.x, vec3<bool>(true, true, false)), Struct_3(vec4<u32>(global0.x, 4294967295u, 4294967295u, 1u), Struct_2(Struct_1(u_input.a, 1659f, vec3<bool>(false, false, false))), Struct_1(-28649i, arg_0.x, vec3<bool>(true, true, false)), u_input.a)), countOneBits(1u), 1u));
    let var_0 = true;
    global1 = -2147483647i;
    var var_1 = _wgslsmith_add_i32(func_1().a, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(~17838i, -31256i), abs(func_1().a), -4149i), _wgslsmith_mult_i32(countOneBits(u_input.a), u_input.a)));
    return Struct_2(Struct_1(-_wgslsmith_mod_i32(~(-1i), reverseBits(u_input.a)), _wgslsmith_f_op_f32(-arg_0.x), vec3<bool>(true && var_0, select(true, true & var_0, any(vec3<bool>(var_0, false, var_0))), true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(-1i, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b)))), vec3<bool>(select((arg_1.a & arg_1.a) > u_input.a, arg_1.c.x, arg_0.x & (u_input.a == arg_2.a.a)), any(func_1().c), true));
    let var_1 = global0.xyy;
    let var_2 = Struct_5(vec4<u32>(_wgslsmith_mult_u32(var_1.x, 15169u), min(var_1.x, ~global0.x) << (~_wgslsmith_sub_u32(var_1.x, 1u) % 32u), 40358u, _wgslsmith_div_u32(0u, 50902u)), any(vec3<bool>(all(arg_1.c.zx), !(!arg_2.a.c.x), func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(951f, var_0.b, -706f, arg_1.b)))).a.c.x)), Struct_3(firstLeadingBit(~vec4<u32>(var_1.x, 81681u, 4294967295u, 1u)) & ~vec4<u32>(1u, global0.x, 57955u, 0u), Struct_2(Struct_1(arg_1.a, -2536f, arg_2.a.c)), Struct_1(i32(-1i) * -1i, func_1().b, !arg_2.a.c), arg_2.a.a));
    let var_3 = true;
    var var_4 = Struct_2(func_1());
    return var_2.c.b;
}

fn func_5(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1202f, arg_0.a.b, arg_0.a.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b, arg_0.a.b, -1898f) * vec3<f32>(arg_0.a.b, 2064f, arg_0.a.b)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-580f, arg_0.a.b, arg_0.a.b) + vec3<f32>(arg_0.a.b, -1396f, arg_0.a.b))))));
    let var_1 = vec2<bool>(func_4(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, arg_0.a.c.x, false, arg_0.a.c.x), vec4<bool>(false, arg_0.a.c.x, false, true), arg_0.a.c.x), !vec4<bool>(arg_0.a.c.x, arg_0.a.c.x, false, arg_0.a.c.x)), arg_0.a, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b, arg_0.a.b, 995f, arg_0.a.b) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.b, arg_0.a.b, -378f, arg_0.a.b), vec4<f32>(var_0.x, arg_0.a.b, arg_0.a.b, var_0.x)))))).a.c.x, true);
    var var_2 = select(true, var_1.x, var_1.x);
    var var_3 = Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(246f + arg_0.a.b))))), arg_0.a.c);
    var var_4 = global0.x;
    return vec4<u32>(0u, countOneBits(~(~37651u)) << (firstTrailingBit(0u) % 32u), global0.x, reverseBits(~global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(~(vec4<u32>(global0.x, 62154u, global0.x, 0u) & vec4<u32>(1u, 117396u, global0.x, global0.x)) >> ((vec4<u32>(global0.x, global0.x, 53350u, global0.x) & _wgslsmith_mult_vec4_u32(vec4<u32>(52743u, global0.x, 24352u, global0.x), vec4<u32>(global0.x, 40026u, global0.x, 1u))) % vec4<u32>(32u))) << (vec4<u32>(~global0.x, 0u, 4294967295u, ~(1u & ~global0.x)) % vec4<u32>(32u));
    global0 = _wgslsmith_clamp_vec4_u32(func_5(func_4(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, true, true), all(vec4<bool>(true, true, false, false))), func_1(), func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1632f, 475f, -1803f, 1261f), vec4<f32>(-335f, 247f, -337f, -1077f)))))), ~(~(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, 1u, 1u), vec4<u32>(global0.x, 16837u, global0.x, global0.x)) ^ ~vec4<u32>(117889u, global0.x, 45320u, 43605u))), firstLeadingBit(~vec4<u32>(21771u, 34359u, global0.x, global0.x)) | (reverseBits(~vec4<u32>(global0.x, global0.x, global0.x, global0.x)) >> (~(~vec4<u32>(0u, global0.x, global0.x, 18115u)) % vec4<u32>(32u))));
    global0 = abs(firstTrailingBit(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(64600u, global0.x, 39509u, global0.x)), vec4<u32>(~global0.x, _wgslsmith_div_u32(global0.x, 27859u), ~global0.x, 17980u))));
    global0 = vec4<u32>(~_wgslsmith_dot_vec3_u32(global0.xyz, max(vec3<u32>(33875u, 1u, global0.x), vec3<u32>(global0.x, 0u, 36204u))) | _wgslsmith_dot_vec4_u32(min(vec4<u32>(global0.x, global0.x, 108071u, 0u) >> (vec4<u32>(global0.x, 1u, global0.x, 0u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, global0.x, 22789u, global0.x)), vec4<u32>(global0.x, _wgslsmith_add_u32(global0.x, global0.x), 4294967295u, global0.x)), _wgslsmith_add_u32(firstLeadingBit(1u), global0.x), firstTrailingBit(_wgslsmith_div_u32(4294967295u, 38262u)), 4294967295u);
    let var_0 = -4180i;
    global0 = select(_wgslsmith_sub_vec4_u32(~(~(vec4<u32>(0u, global0.x, global0.x, 18360u) >> (vec4<u32>(32085u, global0.x, global0.x, global0.x) % vec4<u32>(32u)))), ~vec4<u32>(~global0.x, 23316u, _wgslsmith_dot_vec3_u32(global0.wwx, vec3<u32>(global0.x, 47113u, 4294967295u)), _wgslsmith_sub_u32(global0.x, global0.x))), vec4<u32>(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6841u, 0u, global0.x, global0.x), vec4<u32>(6775u, global0.x, global0.x, 35519u)), 0u, func_3(Struct_1(-9838i, -745f, vec3<bool>(false, false, false)), Struct_3(vec4<u32>(1u, 1u, global0.x, 0u), Struct_2(Struct_1(u_input.a, -794f, vec3<bool>(true, false, false))), Struct_1(-13107i, -1369f, vec3<bool>(false, true, false)), -16615i))), global0.x, global0.x, 591u), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~global0.x, func_1().a, ~(var_0 & _wgslsmith_clamp_i32(func_4(vec4<bool>(true, false, false, true), Struct_1(var_0, 685f, vec3<bool>(false, true, true)), Struct_2(Struct_1(962i, 669f, vec3<bool>(true, true, false)))).a.a, -2147483647i, -13253i)), _wgslsmith_div_vec2_i32(vec2<i32>(~_wgslsmith_mod_i32(29431i, -2147483647i), func_1().a), ~(~countOneBits(vec2<i32>(var_0, var_0)))));
}

