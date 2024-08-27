struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4) -> vec3<i32> {
    var var_0 = ~vec2<i32>(reverseBits(arg_0.x), -2147483647i);
    let var_1 = vec2<bool>(!(!(~arg_1.a.x >= 0u)), true);
    let var_2 = arg_1;
    let var_3 = _wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_0, vec4<i32>(-1i, 2659i, arg_1.b.a.x, 0i), abs(vec4<i32>(2147483647i, -2147483647i, 1637i, arg_1.b.a.x))), ~_wgslsmith_clamp_vec4_i32(arg_0, vec4<i32>(var_0.x, 37028i, 19758i, arg_1.b.a.x), arg_0))), _wgslsmith_clamp_vec4_i32(-(_wgslsmith_sub_vec4_i32(arg_0, vec4<i32>(-25984i, var_0.x, var_0.x, 39933i)) ^ ~vec4<i32>(arg_0.x, arg_0.x, arg_1.b.a.x, arg_0.x)), arg_0, select(vec4<i32>(abs(var_0.x), arg_1.b.a.x, -arg_1.b.a.x, arg_0.x), firstTrailingBit(firstTrailingBit(vec4<i32>(var_0.x, arg_0.x, var_0.x, -1i))), !any(vec2<bool>(false, true)))));
    var var_4 = _wgslsmith_add_u32(~(~countOneBits(firstLeadingBit(var_2.a.x))), ~min(_wgslsmith_dot_vec3_u32(~var_2.b.b.xyy, ~vec3<u32>(0u, 22903u, var_2.b.b.x)), ~u_input.a));
    return arg_0.xzz;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = select(vec3<i32>(firstLeadingBit(arg_1.a.a.x), _wgslsmith_sub_i32(~arg_1.a.a.x & ~arg_1.a.a.x, abs(-1i)), 52207i), func_3(max(abs(-vec4<i32>(-21155i, arg_1.a.a.x, arg_0.x, -2147483647i)), vec4<i32>(min(arg_1.a.a.x, -1i), ~34071i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 34458i, 2675i, arg_1.a.a.x), vec4<i32>(13515i, 15998i, arg_1.a.a.x, 55720i)), 1i)), Struct_4(countOneBits(abs(vec2<u32>(u_input.a, 112458u))), arg_1.a)), select(vec3<bool>(true, all(vec3<bool>(true, false, true)) | true, all(vec3<bool>(false, true, true)) == true), !select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), vec3<bool>(true, true, true)));
    let var_1 = false;
    let var_2 = var_1;
    return Struct_4(select(reverseBits(vec2<u32>(max(arg_1.c, 54116u), firstTrailingBit(u_input.a))), ~_wgslsmith_div_vec2_u32(select(vec2<u32>(75991u, 73786u), arg_1.a.b.xx, false), ~arg_1.a.b.zw), !select(vec2<bool>(var_2, var_2), !vec2<bool>(false, var_2), arg_1.d.x < arg_1.d.x)), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, abs(arg_1.a.a.x)), vec2<i32>(-29756i, var_0.x) << (firstTrailingBit(arg_1.a.b.xy) % vec2<u32>(32u))), min(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_1.a.b, arg_1.a.b, vec4<u32>(59571u, u_input.a, 1u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), vec4<u32>(24676u, 32737u, arg_1.c, arg_1.c)), vec4<u32>(u_input.a, 6050u, u_input.a, 4294967295u) ^ arg_1.a.b), vec4<u32>(select(arg_1.c, 48247u, var_1), 27540u, abs(31121u), ~u_input.a))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_4) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mult_vec2_i32(arg_0, vec2<i32>(0i, arg_0.x)) >> (arg_2.a % vec2<u32>(32u)), select(_wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(arg_2.b.b, arg_1.a.b), vec4<u32>(~u_input.a, u_input.a, arg_1.c, ~arg_2.a.x)), ~(~func_2(vec3<i32>(0i, arg_1.a.a.x, 10388i), arg_1).b.b), !vec4<bool>(any(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, false, false)), arg_1.b >= 0u, any(vec3<bool>(false, false, true)))));
    let var_1 = Struct_2(arg_2.b, ~var_0.b.x, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(24077u, arg_1.a.b.x, u_input.a, 93888u), arg_2.b.b), ~arg_2.b.b.x, 43549u, 10843u << (var_0.b.x % 32u))), ~arg_1.a.b), _wgslsmith_f_op_vec2_f32(max(arg_1.e, _wgslsmith_f_op_vec2_f32(-arg_1.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(arg_1.d, arg_1.e)))));
    var var_2 = vec2<u32>(var_0.b.x, ~_wgslsmith_div_u32(4294967295u, arg_2.b.b.x) & (_wgslsmith_dot_vec3_u32(arg_2.b.b.wwz, var_0.b.zyx) & (34939u >> (var_0.b.x % 32u)))) | select(vec2<u32>(u_input.a, var_1.b), ~(_wgslsmith_clamp_vec2_u32(var_1.a.b.zy, var_0.b.zz, var_1.a.b.zy) ^ vec2<u32>(4294967295u, var_1.a.b.x)), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), any(vec3<bool>(true, false, true))), vec2<bool>(all(vec4<bool>(true, false, true, true)), true), false));
    var var_3 = ~vec3<u32>(0u, ~(~(~12497u)), u_input.a);
    var var_4 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(arg_2.b.a, _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, -26701i), var_0.a), u_input.a >= var_3.x), ~(~arg_2.b.a)), -abs(var_1.a.a.x ^ arg_2.b.a.x)) ^ 1i;
    return _wgslsmith_f_op_f32(-var_1.d.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1532f)), -1629f) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-170f * -878f)), _wgslsmith_f_op_f32(func_4(~vec2<i32>(0i, -4954i), Struct_2(Struct_1(vec2<i32>(57356i, 74603i), vec4<u32>(arg_0.x, 0u, 1u, arg_0.x)), arg_0.x, u_input.a, vec2<f32>(arg_1, -619f), vec2<f32>(-207f, -2372f)), func_2(vec3<i32>(2147483647i, 2050i, 2147483647i), Struct_2(Struct_1(vec2<i32>(1i, 32441i), vec4<u32>(71582u, arg_0.x, arg_0.x, 17475u)), 13431u, 90715u, vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, arg_1))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -1370f), vec2<f32>(247f, -1104f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1427f) - vec2<f32>(964f, -113f))))));
    let var_1 = Struct_2(func_2((~vec3<i32>(-2147483647i, 2147483647i, -8304i) >> (~vec3<u32>(arg_0.x, arg_0.x, u_input.a) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(max(vec3<u32>(1u, arg_0.x, arg_0.x), vec3<u32>(u_input.a, arg_0.x, 30492u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, arg_0.x, 40528u), vec3<u32>(arg_0.x, 0u, 106336u))) % vec3<u32>(32u)), Struct_2(func_2(vec3<i32>(21953i, 56246i, 29857i) >> (vec3<u32>(arg_0.x, arg_0.x, 16263u) % vec3<u32>(32u)), Struct_2(Struct_1(vec2<i32>(-10117i, 0i), vec4<u32>(4294967295u, 1u, 109485u, arg_0.x)), arg_0.x, 117305u, var_0, vec2<f32>(arg_1, var_0.x))).b, u_input.a, u_input.a | arg_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) * var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(308f, 380f) - var_0)))).b, 13524u, u_input.a, var_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-118f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_1))))));
    var var_2 = ~_wgslsmith_add_vec3_i32(func_3(~vec4<i32>(-1i, var_1.a.a.x, var_1.a.a.x, 44978i), Struct_4(var_1.a.b.yx, Struct_1(vec2<i32>(-1577i, var_1.a.a.x), vec4<u32>(0u, 2985u, u_input.a, 4294967295u)))), ~reverseBits(vec3<i32>(var_1.a.a.x, var_1.a.a.x, 11193i))) ^ (vec3<i32>(-1i) * -abs(min(vec3<i32>(var_1.a.a.x, -3898i, var_1.a.a.x), vec3<i32>(7485i, 0i, var_1.a.a.x))));
    var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(0i, var_2.x, 1580i, var_1.a.a.x), vec4<i32>(-5361i, var_2.x, var_1.a.a.x, 1i), vec4<bool>(false, true, true, true)), vec4<i32>(17704i ^ var_2.x, 1i, var_2.x, _wgslsmith_div_i32(var_1.a.a.x, 2147483647i))), -1i, var_2.x), ~(~(~(vec3<i32>(var_2.x, 1i, -35310i) | vec3<i32>(var_1.a.a.x, 0i, var_1.a.a.x)))));
    var var_3 = abs(_wgslsmith_clamp_vec4_u32(var_1.a.b, _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, var_1.c, 64468u, u_input.a), var_1.a.b) | vec4<u32>(12889u, u_input.a, firstLeadingBit(23676u), max(u_input.a, 1u)), var_1.a.b));
    return Struct_2(var_1.a, var_3.x, ~abs(max(0u, ~1u)), var_1.d, _wgslsmith_f_op_vec2_f32(-var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-(~(-(~1i))), _wgslsmith_div_i32(~(~_wgslsmith_mult_i32(-1i, 1i)), 7550i), true);
    var var_1 = Struct_3(func_1(_wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(1u, u_input.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1752f)))), ~(~(~vec3<i32>(0i, -2147483647i, var_0))) ^ vec3<i32>(countOneBits(-1i), var_0 & var_0, 53778i), func_1(vec2<u32>(u_input.a, firstLeadingBit(_wgslsmith_mult_u32(u_input.a, u_input.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1065f), -436f)), 328f, true))));
    var var_2 = func_1(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.c.a.b.x, u_input.a), vec2<u32>(var_1.a.b, 35953u)), _wgslsmith_f_op_f32(f32(-1f) * -3401f));
    var var_3 = vec2<u32>(u_input.a, func_2(abs(abs(-vec3<i32>(var_0, var_1.b.x, var_1.b.x))), var_1.a).b.b.x);
    var var_4 = !vec4<bool>(false, false, true, all(vec4<bool>(true, true, 1i >= var_1.c.a.a.x, true)));
    var_3 = max(func_1(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u) | vec2<u32>(var_2.b, 48310u), var_1.c.a.b.wz >> (vec2<u32>(35638u, 0u) % vec2<u32>(32u))), ~min(vec2<u32>(var_2.b, var_1.c.a.b.x), var_2.a.b.ww)), _wgslsmith_f_op_f32(-1768f + _wgslsmith_f_op_f32(-var_2.e.x))).a.b.xy, ~abs(func_2(vec3<i32>(-56006i, var_0, var_0), Struct_2(Struct_1(var_1.b.yx, vec4<u32>(u_input.a, 4294967295u, 61092u, var_1.c.b)), 26037u, u_input.a, vec2<f32>(var_1.a.d.x, var_2.d.x), vec2<f32>(var_1.a.d.x, 582f))).a));
    let var_5 = var_4.xw;
    let var_6 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_7 = Struct_3(Struct_2(func_2(vec3<i32>(var_1.a.a.a.x, ~var_2.a.a.x, var_2.a.a.x << (59330u % 32u)), var_1.a).b, _wgslsmith_dot_vec3_u32(vec3<u32>(~var_3.x, 4294967295u, _wgslsmith_clamp_u32(var_1.a.a.b.x, var_2.b, var_2.c)), ~(~var_1.c.a.b.zwz)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(firstLeadingBit(0u), var_2.a.b.x, ~var_3.x), var_3.x), _wgslsmith_div_vec2_f32(var_1.c.e, var_2.e), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-445f, -522f), _wgslsmith_f_op_vec2_f32(-var_1.a.e)), _wgslsmith_f_op_vec2_f32(trunc(var_1.a.e)))), var_1.b, func_1(abs(vec2<u32>(firstLeadingBit(16411u), max(13821u, 15288u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1074f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(~firstLeadingBit(var_7.b.x), firstLeadingBit(_wgslsmith_add_i32(45930i, var_7.a.a.a.x))), 33311i, ~(-50581i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_7.c.d.x, 208f, var_6) - vec3<f32>(-477f, -363f, var_6)), vec3<f32>(596f, 323f, var_7.c.e.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_7.c.d.x, var_6, var_6))) + vec3<f32>(var_2.e.x, -681f, -1500f)), vec3<bool>(true, all(vec3<bool>(var_4.x, var_4.x, var_4.x)), true)))));
}

