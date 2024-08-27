struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(min(~11890u, ~u_input.c), 4294967295u, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, 38190u, u_input.c), vec4<u32>(48409u, 41500u, 1u, 1u)))), ~reverseBits(~vec3<u32>(u_input.c, u_input.c, 4294967295u)) >> (_wgslsmith_add_vec3_u32(~(vec3<u32>(45728u, u_input.c, 4294967295u) & vec3<u32>(19430u, u_input.c, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 25267u, 68285u), _wgslsmith_mult_vec3_u32(vec3<u32>(51253u, 0u, 1u), vec3<u32>(u_input.c, 0u, u_input.c)))) % vec3<u32>(32u)), ~firstLeadingBit(vec3<u32>(1u, 32490u, u_input.c) ^ reverseBits(vec3<u32>(u_input.c, u_input.c, u_input.c))));
    let var_1 = Struct_1(any(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), false)), vec3<u32>(u_input.c, 6337u, var_0.x), reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 34751u, u_input.c, u_input.c) | vec4<u32>(u_input.c, u_input.c, 0u, var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(1u, var_0.x, u_input.c, var_0.x)))));
    let var_2 = Struct_1(true, var_0, max(select(1u, ~min(4294967295u, 22935u), var_1.a), ~(u_input.c << (_wgslsmith_dot_vec4_u32(vec4<u32>(24104u, u_input.c, 22278u, 27065u), vec4<u32>(27553u, var_0.x, 35892u, u_input.c)) % 32u))));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2212f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, -1000f)))))));
    var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-522f, -207f))))));
    return _wgslsmith_clamp_u32(17055u, 445u | firstLeadingBit(~var_1.b.x), _wgslsmith_sub_u32(~var_0.x, u_input.c ^ 19231u)) << (var_0.x % 32u);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(arg_0.c.a, Struct_1(true, ~vec3<u32>(func_3(u_input.b), 4294967295u, u_input.c), _wgslsmith_div_u32(firstTrailingBit(0u), arg_0.b.c) ^ (32142u << (~u_input.c % 32u))), arg_0.b, arg_0.d);
    let var_1 = var_0.b;
    var_0 = Struct_2(arg_0.d.x, Struct_1(var_0.d.x, vec3<u32>(_wgslsmith_mod_u32(~var_0.b.b.x, u_input.c), ~_wgslsmith_mult_u32(var_0.b.c, u_input.c), var_1.c), var_0.c.c), arg_0.c, arg_0.d);
    var_0 = arg_0;
    let var_2 = vec4<bool>(true, var_1.a, all(!(!vec3<bool>(false, false, arg_0.b.a))), any(vec2<bool>(any(!vec3<bool>(var_1.a, true, false)), !all(vec4<bool>(var_0.b.a, var_1.a, arg_0.b.a, true)))));
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_1(false, vec3<u32>((abs(arg_0.c.b.x) >> (~arg_2.b.b.x % 32u)) << (_wgslsmith_div_u32(arg_0.b.b.x, _wgslsmith_dot_vec3_u32(arg_2.c.b, vec3<u32>(arg_2.b.c, 4294967295u, arg_2.c.c))) % 32u), ~0u, arg_1.c.c), 20306u);
    var var_1 = arg_0.c.a;
    var var_2 = Struct_1(true, ~(~(countOneBits(vec3<u32>(1u, 17047u, u_input.c)) | ~arg_0.c.b)), u_input.c);
    var var_3 = ~u_input.c;
    var var_4 = arg_0.c.b.zx;
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec3<i32> {
    let var_0 = Struct_1(arg_0.a, vec3<u32>(~u_input.c, u_input.c, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, _wgslsmith_clamp_u32(arg_0.c, 1u, _wgslsmith_div_u32(arg_0.b.x, 24364u)), func_4(func_2(Struct_2(arg_0.a, Struct_1(true, vec3<u32>(u_input.c, 8744u, arg_0.c), u_input.c), Struct_1(arg_0.a, arg_0.b, 1u), vec2<bool>(arg_0.a, arg_0.a))), func_2(Struct_2(true, arg_0, arg_0, vec2<bool>(arg_0.a, arg_0.a))), Struct_2(arg_0.a, arg_0, arg_0, vec2<bool>(arg_0.a, arg_0.a))), ~_wgslsmith_div_u32(1u, 6497u)), abs(select(vec4<u32>(73205u, 69313u, u_input.c, u_input.c), vec4<u32>(6875u, u_input.c, u_input.c, 22441u), false) >> (~vec4<u32>(0u, u_input.c, u_input.c, 24629u) % vec4<u32>(32u)))));
    let var_1 = vec3<i32>(select(_wgslsmith_clamp_i32(firstTrailingBit(min(27518i, u_input.a.x)), u_input.a.x, -u_input.a.x), u_input.b, var_0.a), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(countOneBits(vec2<i32>(0i, u_input.b))), u_input.a), vec2<i32>(abs(~u_input.a.x), 41399i)), -20184i);
    var var_2 = -var_1;
    var_2 = ~(-countOneBits(_wgslsmith_mod_vec3_i32(var_1, countOneBits(var_1))));
    var_2 = vec3<i32>(10646i, var_1.x, var_1.x);
    return vec3<i32>(-(~24410i), var_2.x << (abs(0u) % 32u), var_1.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = func_2(func_2(Struct_2(true || any(vec3<bool>(false, false, true)), func_2(func_2(Struct_2(false, Struct_1(false, vec3<u32>(u_input.c, u_input.c, 54602u), 4294967295u), Struct_1(false, vec3<u32>(0u, 0u, 0u), u_input.c), vec2<bool>(false, false)))).b, Struct_1(any(vec3<bool>(true, false, true)), vec3<u32>(u_input.c, 59955u, 4294967295u), ~u_input.c), vec2<bool>(true, true)))).c.b.xz;
    let var_1 = func_2(Struct_2(all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), all(vec4<bool>(true, false, true, true)))), func_2(Struct_2(all(vec2<bool>(false, false)), func_2(Struct_2(false, Struct_1(false, vec3<u32>(u_input.c, 1u, 4294967295u), 213u), Struct_1(true, vec3<u32>(4294967295u, 0u, 15956u), u_input.c), vec2<bool>(false, true))).c, func_2(Struct_2(false, Struct_1(true, vec3<u32>(104747u, 4294967295u, 11887u), u_input.c), Struct_1(true, vec3<u32>(36884u, 1u, u_input.c), u_input.c), vec2<bool>(false, true))).b, func_2(Struct_2(true, Struct_1(true, vec3<u32>(68927u, 49391u, 69236u), u_input.c), Struct_1(true, vec3<u32>(u_input.c, 8529u, 0u), u_input.c), vec2<bool>(false, true))).d)).b, Struct_1(true, select(~vec3<u32>(0u, u_input.c, 28243u), ~vec3<u32>(4294967295u, var_0.x, var_0.x), vec3<bool>(true, false, false)), abs(_wgslsmith_mod_u32(25631u, 1u))), func_2(func_2(Struct_2(true, Struct_1(true, vec3<u32>(u_input.c, var_0.x, var_0.x), 28320u), Struct_1(false, vec3<u32>(u_input.c, 31441u, 4294967295u), var_0.x), vec2<bool>(true, false)))).d)).b;
    let var_2 = _wgslsmith_sub_i32(~(-_wgslsmith_clamp_i32(~u_input.b, select(arg_2.x, 14496i, var_1.a), arg_0.x)), _wgslsmith_mod_i32(~(arg_1.x & 2147483647i), firstLeadingBit(-_wgslsmith_mult_i32(u_input.b, -19137i))));
    var var_3 = Struct_1(!var_1.a & true, vec3<u32>((4294967295u & u_input.c) ^ ~64642u, u_input.c, 4294967295u), ~1u);
    var_3 = func_2(func_2(func_2(Struct_2(all(vec3<bool>(false, false, true)), func_2(Struct_2(var_3.a, Struct_1(true, var_3.b, var_0.x), var_1, vec2<bool>(true, true))).c, var_1, !vec2<bool>(true, var_1.a))))).b;
    return Struct_1(1i == -(~arg_3 ^ _wgslsmith_mult_i32(arg_2.x, var_2)), ~vec3<u32>(var_3.c, 0u, ~_wgslsmith_sub_u32(var_3.c, 1u)), ~(~(~var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(697f * -379f))))) - -1964f);
    var var_1 = func_5(-_wgslsmith_div_vec3_i32(func_1(Struct_1(true, vec3<u32>(19755u, u_input.c, 1u), 3877u), -202f), select(vec3<i32>(-14896i, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, 6617i, u_input.a.x), true)) & vec3<i32>(~(-2147483647i), -25815i, 0i), vec2<i32>(0i, u_input.a.x), _wgslsmith_mult_vec3_i32(select(vec3<i32>(-1i) * -vec3<i32>(-20014i, -2147483647i, -8602i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(49040i, -24007i, u_input.a.x) << (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))), !(-32744i <= u_input.b)), -vec3<i32>(-25668i, u_input.b, 0i) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 25461u, 1u), max(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.c, u_input.c, 1u))) % vec3<u32>(32u))), abs(~(-2147483647i)));
    var_0 = _wgslsmith_f_op_f32(186f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(719f * 711f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(827f, 656f)) + 480f)))));
    let var_2 = vec4<u32>(~min(var_1.c, ~1u), u_input.c, ~_wgslsmith_div_u32(u_input.c, u_input.c) << (~func_2(func_2(Struct_2(true, Struct_1(var_1.a, var_1.b, 104562u), Struct_1(var_1.a, var_1.b, u_input.c), vec2<bool>(var_1.a, false)))).c.c % 32u), 1u);
    let var_3 = min(16923u, ~_wgslsmith_mod_u32(var_1.b.x, u_input.c)) >> (4294967295u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b ^ (i32(-1i) * -1i), -32823i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(7039i, u_input.a.x, u_input.a.x ^ u_input.b), _wgslsmith_sub_i32(u_input.b ^ -6865i, ~u_input.b))), vec4<i32>(~u_input.b, -u_input.a.x, u_input.b, _wgslsmith_mod_i32(i32(-1i) * -1i, -7648i) & abs(u_input.b)), ~_wgslsmith_sub_i32(2147483647i, countOneBits(u_input.a.x)) ^ -54397i, var_2);
}

