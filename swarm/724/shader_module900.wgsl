struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> vec2<f32> {
    var var_0 = countOneBits(vec2<u32>(abs(firstTrailingBit(47082u)), ~0u));
    var_0 = ~_wgslsmith_mult_vec2_u32(reverseBits(~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, 0u))), vec2<u32>(_wgslsmith_add_u32(43838u, var_0.x), ~92287u) << (vec2<u32>(max(16565u, 39146u), 4294967295u) % vec2<u32>(32u)));
    let var_1 = var_0.x;
    var_0 = vec2<u32>(_wgslsmith_div_u32(1u, ~(~firstLeadingBit(65153u))), _wgslsmith_mult_u32(abs(var_0.x), 25557u));
    let var_2 = Struct_1(vec2<f32>(461f, _wgslsmith_div_f32(-158f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_add_u32(~var_0.x, ~1u));
    return vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-132f + var_2.a.x)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -162f), _wgslsmith_f_op_vec2_f32(func_2()))) * vec2<f32>(-840f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(980f)), _wgslsmith_f_op_f32(ceil(-1237f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(409f, _wgslsmith_div_f32(-1003f, -108f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-531f, 1327f)))), _wgslsmith_div_f32(-505f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f), _wgslsmith_f_op_f32(f32(-1f) * -731f)))));
    let var_1 = _wgslsmith_f_op_f32(var_0.x + 1476f);
    return Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1251f, var_0.x)), arg_0.x), -_wgslsmith_sub_i32(1i, -u_input.a), all(vec3<bool>(true, true, true)), Struct_1(var_0, 12424u), Struct_1(vec2<f32>(-781f, -600f), 92022u)), abs(1i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))))));
}

fn func_3(arg_0: Struct_4) -> Struct_3 {
    var var_0 = arg_0.a;
    var var_1 = max(abs(~(firstTrailingBit(vec4<i32>(u_input.a, arg_0.b, var_0.b, 1i)) & (vec4<i32>(28632i, -1i, u_input.a, u_input.a) ^ vec4<i32>(2147483647i, var_0.b, var_0.b, -2147483647i)))), _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(6325i), ~1i, -5189i, ~_wgslsmith_div_i32(u_input.a, -21863i)), (vec4<i32>(-1i, 2147483647i, 21710i, arg_0.a.b) & ~vec4<i32>(arg_0.a.b, 52100i, 2147483647i, arg_0.b)) ^ vec4<i32>(1i, arg_0.b ^ arg_0.b, 1i, -1i)));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-452f, _wgslsmith_f_op_f32(-var_0.a.a.x)), arg_0.a.d.a.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(-277f * _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1391f), _wgslsmith_f_op_f32(-var_0.e.a.x)), var_0.a.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, -199f, arg_0.a.a.a.x, arg_0.a.e.a.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, var_0.a.a.x, 575f, -111f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-180f, arg_0.a.e.a.x, -1730f, arg_0.a.e.a.x)), vec4<f32>(1000f, 1501f, 1647f, var_0.e.a.x))))));
    var var_4 = func_1(reverseBits(firstLeadingBit(vec3<u32>(69717u, var_0.e.b, var_0.a.b)) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.d.b, arg_0.a.a.b, 25825u), vec3<u32>(0u, arg_0.a.e.b, 62379u)) % vec3<u32>(32u)))).a.a;
    return Struct_3(func_1(~vec3<u32>(19483u, var_0.d.b, var_4.b)).a.e, _wgslsmith_dot_vec2_i32(var_1.wz, vec2<i32>(max(-1i, firstTrailingBit(u_input.a)), 1i)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.e.a.x)) + _wgslsmith_f_op_f32(-1205f * 770f)) >= -425f), func_1(abs(vec3<u32>(~0u, ~0u, _wgslsmith_sub_u32(61011u, var_4.b)))).a.e, func_1(vec3<u32>(arg_0.a.d.b, ~arg_0.a.d.b, 4294967295u) ^ _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, var_0.d.b, 1u), reverseBits(vec3<u32>(57972u, var_0.d.b, 63316u)))).a.d);
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(func_1(vec3<u32>(arg_0.e.b, 4294967295u, arg_0.a.b)).a.e, arg_0.b, func_1(~(~reverseBits(vec3<u32>(51435u, arg_0.a.b, 46126u)))).a.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(639f, -670f)), arg_0.d.a) + vec2<f32>(_wgslsmith_f_op_f32(abs(622f)), func_1(vec3<u32>(1u, arg_0.a.b, arg_0.d.b)).a.d.a.x)), _wgslsmith_dot_vec3_u32(firstTrailingBit(select(vec3<u32>(arg_0.d.b, 35617u, arg_0.e.b), vec3<u32>(96672u, 53066u, 48764u), true)), min(vec3<u32>(arg_0.a.b, 14272u, arg_0.e.b), vec3<u32>(73049u, arg_0.e.b, arg_0.a.b)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.d.b, arg_0.a.b, 0u), vec3<u32>(49187u, arg_0.e.b, 47986u)))), -117f);
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1042f, 1029f, var_0.d.a.x, var_0.e))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.a.x, var_1.a.a.x, 1000f, var_1.a.a.x), vec4<f32>(var_1.e, 1137f, arg_0.a.a.x, var_1.d.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.e.a.x, -451f, 972f, -478f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-486f, var_1.d.a.x, 386f, 251f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, var_0.d.a.x, var_1.e, arg_0.d.a.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(727f, 110f, var_0.e, var_1.d.a.x), vec4<f32>(arg_0.e.a.x, 102f, var_0.e, var_0.a.a.x), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c)))))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-456f, -705f, all(vec2<bool>(arg_0.c, true)))), var_1.c.a.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.c.a.x * 149f), _wgslsmith_f_op_f32(-arg_0.e.a.x))), -1345f))), -963f, -572f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.a.x)));
    var var_3 = arg_0;
    return func_1(vec3<u32>(0u, 4294967295u ^ max(_wgslsmith_div_u32(arg_0.e.b, var_0.d.b), ~var_3.d.b), arg_0.d.b)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -reverseBits(25721i);
    let var_1 = func_4(func_3(func_1(vec3<u32>(_wgslsmith_add_u32(0u, 13414u), 1u, 1u))));
    var_0 = -var_1.b;
    var_0 = (var_1.b & -_wgslsmith_mod_i32(var_1.b, ~(-2147483647i))) >> (_wgslsmith_add_u32(~9129u, 0u << (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.e.b, var_1.a.b, var_1.a.b), vec3<u32>(var_1.d.b, 32886u, var_1.e.b)), ~25942u) % 32u)) % 32u);
    var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(select(1i, -2147483647i, var_1.c), ~var_1.b, -_wgslsmith_add_i32(u_input.a, -2147483647i)), ~_wgslsmith_add_vec3_i32(max(vec3<i32>(u_input.a, -1i, 8592i), vec3<i32>(u_input.a, u_input.a, var_1.b)), ~vec3<i32>(var_1.b, var_1.b, 14832i))), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(0i, -19183i, var_1.b) | vec3<i32>(1i, 18972i, -3062i), -vec3<i32>(43310i, u_input.a, -11037i)), abs(vec3<i32>(var_1.b, u_input.a, 11322i))), _wgslsmith_clamp_i32(~(i32(-1i) * -1i), 30957i, var_1.b), ~19470i));
    let var_2 = u_input.a;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.a.x + 1006f), func_3(Struct_4(var_1, var_1.b, var_1.d.a)).e.a.x), vec2<f32>(_wgslsmith_f_op_f32(-588f + 1136f), 109f))), _wgslsmith_f_op_vec2_f32(-func_1(vec3<u32>(121260u, var_1.a.b, var_1.e.b) & vec3<u32>(101351u, 6683u, 32758u)).c))), var_1.d.b);
    let var_4 = var_1.b;
    let var_5 = Struct_4(func_1(~(~vec3<u32>(4294967295u, var_1.d.b, var_3.b) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.b, 31144u, 75919u), vec3<u32>(var_1.e.b, 0u, 0u)) % vec3<u32>(32u)))).a, -func_4(func_1(firstTrailingBit(vec3<u32>(62469u, var_3.b, var_1.a.b))).a).b, vec2<f32>(var_3.a.x, _wgslsmith_div_f32(-481f, _wgslsmith_f_op_f32(var_3.a.x + 1418f))));
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(-31033i), var_5.a.b, any(vec2<bool>(func_3(Struct_4(var_1, -2147483647i, var_3.a)).c, all(vec3<bool>(var_1.c, var_5.a.c, true))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_2()).x)), -818f, func_4(func_4(var_1)).e.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.a.d.a.x - 874f) - var_5.c.x) - _wgslsmith_f_op_f32(var_5.a.a.a.x - _wgslsmith_div_f32(var_5.c.x, var_1.e.a.x)))), reverseBits(vec4<i32>(-2147483647i, -1i, u_input.a, -29591i) ^ -vec4<i32>(0i, var_5.b, var_2, -2147483647i)) ^ firstTrailingBit(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -34204i, -3115i, 22847i), vec4<i32>(var_1.b, 1i, var_2, var_1.b), vec4<i32>(2147483647i, u_input.a, 1i, var_2)), -vec4<i32>(-66481i, var_5.a.b, -4509i, -27651i))), ~(-min(vec4<i32>(0i, -42811i, -1i, 0i) >> (vec4<u32>(var_5.a.e.b, 1u, 1u, var_3.b) % vec4<u32>(32u)), vec4<i32>(-15432i, var_5.b, var_5.a.b, 2147483647i) << (vec4<u32>(102519u, var_5.a.d.b, var_5.a.d.b, 0u) % vec4<u32>(32u)))));
}

