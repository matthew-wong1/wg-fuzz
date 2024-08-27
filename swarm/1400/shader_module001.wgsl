struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
    d: vec4<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_5) -> vec4<u32> {
    let var_0 = Struct_2(arg_1.d.b.x, ~((firstLeadingBit(vec4<u32>(u_input.a, 50777u, arg_3.e.d.x, u_input.a)) & reverseBits(arg_3.d)) & select(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.d.a, 0u, 4294967295u, 4294967295u), vec4<u32>(42354u, u_input.a, 4294967295u, 29103u)), vec4<u32>(0u, 0u, 39476u, 54303u), !vec4<bool>(arg_1.c.x, arg_3.b.x, arg_2, arg_2))), select(!(!(!vec3<bool>(arg_1.c.x, false, arg_3.e.b.x))), arg_3.b, true), arg_1.d, -1159f);
    var var_1 = arg_1;
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-arg_3.a.x), arg_3.a.x, _wgslsmith_f_op_f32(-var_0.e)) - _wgslsmith_f_op_vec4_f32(-arg_0)), Struct_1(arg_1.d.a, vec4<i32>(-1i) * -vec4<i32>(-19580i, -2147483647i, -1i, arg_3.c)), ~1u);
    var_2 = Struct_4(var_2.a, arg_1.d, _wgslsmith_mult_u32(u_input.a, abs(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_2.c, 4294967295u), arg_3.d), _wgslsmith_dot_vec2_u32(var_0.b.yz, vec2<u32>(48435u, arg_3.d.x))))));
    var var_3 = Struct_2(firstTrailingBit(var_1.a), ~var_1.b, !var_1.c, Struct_1(~(~(var_2.c >> (1u % 32u))), vec4<i32>(i32(-1i) * -2147483647i, -54926i, var_1.d.b.x, firstTrailingBit(max(0i, 67580i)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_3.a.x)), -391f)));
    return ~(~(vec4<u32>(var_2.b.a, var_2.c, var_3.b.x, 4294967295u) << (select(arg_3.d, vec4<u32>(1u, 4294967295u, 1119u, 43925u), var_0.c.x) % vec4<u32>(32u)))) & min(~firstTrailingBit(vec4<u32>(var_2.b.a, var_3.b.x, 1u, var_3.b.x)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.b.x, 21464u, var_1.b.x, 1u), vec4<u32>(u_input.a, var_2.b.a, 1u, var_3.d.a)), reverseBits(min(vec4<u32>(1u, arg_1.d.a, arg_3.d.x, 84906u), vec4<u32>(77415u, 1u, var_0.b.x, var_1.b.x)))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = arg_0.x;
    let var_1 = Struct_2(_wgslsmith_mult_i32(firstTrailingBit(-12406i), arg_0.x), firstLeadingBit(_wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) << (vec4<u32>(38595u, 26932u, u_input.a, u_input.a) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(4294u, u_input.a, u_input.a, 18053u), func_3(vec4<f32>(-912f, 754f, 781f, 111f), Struct_2(arg_0.x, vec4<u32>(1u, 0u, u_input.a, u_input.a), vec3<bool>(false, false, false), Struct_1(0u, vec4<i32>(-2147483647i, 1i, -22055i, 15229i)), -374f), true, Struct_5(vec3<f32>(409f, 872f, -1339f), vec3<bool>(true, false, false), -28968i, vec4<u32>(1u, 1u, u_input.a, u_input.a), Struct_3(vec3<u32>(23075u, u_input.a, 6586u), vec4<bool>(true, true, false, false), vec2<i32>(27554i, arg_0.x), vec2<u32>(u_input.a, 65523u))))))), vec3<bool>(false, select(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), arg_0.x != arg_0.x), any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false))))), Struct_1(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, 21754u, 1u))), ~_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_0.x, arg_0.x, -1i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, 1i, arg_0.x))), -935f);
    return var_1;
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = func_2(arg_0.d.b.yz | countOneBits(-arg_0.d.b.wx));
    let var_1 = var_0.d.b.yyw;
    var var_2 = Struct_3(vec3<u32>(46157u, 110448u, u_input.a), !vec4<bool>(any(vec3<bool>(true, true, true)), var_0.c.x, false, false), vec2<i32>(func_2(vec2<i32>(var_1.x & var_1.x, abs(arg_0.a))).a, var_1.x), vec2<u32>(1u, func_2(-arg_0.d.b.zx).b.x));
    var_2 = Struct_3(firstLeadingBit(var_0.b.xzz), vec4<bool>(any(vec3<bool>(false, true, arg_0.c.x)), var_0.c.x == true, true, all(!(!vec3<bool>(false, arg_0.c.x, var_2.b.x)))), -vec2<i32>(0i, ~select(-2147483647i, var_2.c.x, var_2.b.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(select(1u, arg_0.b.x, var_2.b.x), 1u), ~func_2(~var_2.c).b.xx));
    var_2 = Struct_3(abs(vec3<u32>(19999u, var_2.a.x, 4294967295u)), select(vec4<bool>(!(var_2.d.x >= 4294967295u), select(all(vec3<bool>(false, var_0.c.x, false)), var_2.b.x, arg_0.c.x), all(var_0.c), false), var_2.b, false), var_1.yz, _wgslsmith_add_vec2_u32(vec2<u32>(1u, 25752u ^ arg_0.d.a), firstLeadingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a), var_2.a.yy))));
    return _wgslsmith_sub_vec3_i32(~(~vec3<i32>(14306i, -1i, var_1.x) << (vec3<u32>(0u, var_2.d.x, 0u) % vec3<u32>(32u))) | reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(38923i, 0i, var_2.c.x) ^ vec3<i32>(2147483647i, -2147483647i, var_0.d.b.x), var_0.d.b.zyw)), vec3<i32>(var_1.x, 40191i, arg_0.d.b.x) & (abs(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_1.x, 30243i), arg_0.d.b.yzw)) >> (reverseBits(select(var_0.b.wxz, var_0.b.xyy, arg_0.c.x)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true)), !all(vec4<bool>(false, true, true, false)) && true, !((u_input.a <= u_input.a) & all(vec3<bool>(false, true, false))) && !all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))));
    let var_1 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(1i, 36607i, 0i), vec3<i32>(1i, 1i, 1i)), ~vec3<i32>(-14683i, 1i, 62874i)), reverseBits(vec3<i32>(7012i, 5550i, -2147483647i)) << (firstLeadingBit(~vec3<u32>(60415u, 29567u, u_input.a)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-45081i, 32277i, -6279i), vec3<i32>(14741i, 13208i, 4986i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1426i, 1i, 21661i), vec3<i32>(-1i, -37441i, -1i)), func_1(Struct_2(16056i, vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), var_0, Struct_1(35706u, vec4<i32>(29760i, -1i, -2147483647i, 2147483647i)), 718f))) | countOneBits(abs(vec3<i32>(-2147483647i, 2147483647i, 1i))));
    var var_2 = ~(~(~(~u_input.a) >> (~_wgslsmith_add_u32(0u, u_input.a) % 32u)));
    var var_3 = ~vec4<i32>(-1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(65119i, var_1.x) | _wgslsmith_mod_i32(-22466i, 1i), var_1.x), -45674i, _wgslsmith_add_i32(firstLeadingBit(~var_1.x), -2147483647i));
    var_3 = ~vec4<i32>(var_3.x, 254i, 1i, firstLeadingBit(func_1(func_2(var_1.xx)).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-183f, -1473f, _wgslsmith_f_op_f32(-1352f + _wgslsmith_f_op_f32(sign(594f))), _wgslsmith_div_f32(_wgslsmith_div_f32(-307f, -126f), _wgslsmith_f_op_f32(select(1633f, 1192f, true))))));
}

