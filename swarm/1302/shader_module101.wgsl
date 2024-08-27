struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-19982i, vec2<i32>(-11323i, 81466i), true, vec3<bool>(true, false, false));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2) -> i32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_sub_vec4_i32(arg_2.d, abs(vec4<i32>(-1i) * -arg_2.d));
    var_0 = Struct_2(-209f, firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.a, 0i), arg_2.d.xz), arg_2.b, vec2<i32>(-98564i, var_0.d.x) >> (arg_1.xy % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(~arg_2.d.xw, max(vec2<i32>(arg_2.b.x, -5461i), vec2<i32>(-24470i, u_input.a)), _wgslsmith_sub_vec2_i32(arg_2.d.xw, vec2<i32>(global0.a, arg_2.b.x))))), ~min(-1i, reverseBits(-1i) ^ var_1.x), vec4<i32>(0i, u_input.a, var_0.b.x, firstTrailingBit(u_input.c << ((arg_1.x >> (4294967295u % 32u)) % 32u))));
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(~(~21007u), select(arg_0, ~(~38045u), true), arg_0 << (~arg_1.x % 32u), ~(~u_input.b.x) | ~_wgslsmith_add_u32(u_input.b.x, 23299u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0, 21810u, 1u), ~(~select(vec4<u32>(0u, arg_1.x, 1u, arg_1.x), vec4<u32>(13994u, 16033u, 30305u, arg_0), vec4<bool>(global0.d.x, global0.c, global0.d.x, false))), vec4<u32>(arg_1.x, arg_0, _wgslsmith_dot_vec3_u32(~vec3<u32>(33270u, arg_0, arg_1.x), vec3<u32>(u_input.b.x, arg_1.x, u_input.b.x)), firstTrailingBit(~arg_0))));
    let var_3 = Struct_1(reverseBits(~_wgslsmith_sub_i32(2610i, var_0.b.x) ^ select(-2852i >> (1u % 32u), 1i, true)), vec2<i32>(~35481i, i32(-1i) * -1i), global0.c, !global0.d);
    return i32(-1i) * -29893i;
}

fn func_2() -> bool {
    var var_0 = vec3<i32>(~_wgslsmith_add_i32(u_input.a, global0.b.x), _wgslsmith_mult_i32(u_input.c, global0.a), func_3(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.b.x, 122644u) >> (vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(71326u, u_input.b.x, 4294967295u, 30693u), vec4<u32>(u_input.b.x, 4294967295u, 32898u, 54937u), vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x))), u_input.b.x), vec3<u32>(69993u, max(abs(u_input.b.x), u_input.b.x), u_input.b.x), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-427f, -861f)) * -465f), ~(global0.b & global0.b), u_input.c, vec4<i32>(-36824i, 0i, 0i, 67152i) >> (~vec4<u32>(1u, u_input.b.x, 67100u, 4294967295u) % vec4<u32>(32u)))));
    global0 = Struct_1(var_0.x | var_0.x, firstTrailingBit(_wgslsmith_add_vec2_i32(var_0.xz, global0.b) << (~u_input.b.zy % vec2<u32>(32u))) & var_0.yx, true, vec3<bool>(true, false, true));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)))))), var_0.xz, -2147483647i, select(firstTrailingBit(select(vec4<i32>(u_input.a, 2147483647i, -2147483647i, 0i), ~vec4<i32>(var_0.x, var_0.x, 1i, var_0.x), true)), _wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, global0.a, 1i, -22830i), vec4<i32>(global0.a, 1165i, 0i, 1i), vec4<i32>(1i, -12876i, global0.a, 26426i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, 5735i, 44000i, 46473i), vec4<i32>(-29313i, -34585i, -2147483647i, global0.b.x), select(vec4<i32>(1i, -2147483647i, global0.a, 0i), vec4<i32>(6479i, var_0.x, u_input.c, -2415i), vec4<bool>(global0.c, global0.c, true, true)))), select(false, any(!vec4<bool>(false, global0.d.x, true, true)), any(global0.d.yz))));
    return true;
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = Struct_1(countOneBits(1i | global0.b.x), global0.b, true | (global0.c != global0.c), select(vec3<bool>(false | (global0.d.x != true), select(true, !global0.d.x, all(global0.d)), !(u_input.b.x > u_input.b.x)), vec3<bool>(true, arg_0 | (u_input.b.x <= 1u), global0.c), func_2()));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(962f))))))), vec2<i32>(_wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-22122i, u_input.c, u_input.a), vec3<i32>(-6134i, 0i, u_input.a)), ~(-675i)), -_wgslsmith_dot_vec2_i32(~global0.b, max(vec2<i32>(u_input.c, global0.b.x), vec2<i32>(global0.b.x, -47519i)))), ~(-22854i & ~(-global0.a)), vec4<i32>(_wgslsmith_mult_i32(global0.b.x, max(_wgslsmith_add_i32(global0.a, 2147483647i), -u_input.a)), _wgslsmith_add_i32(2147483647i, global0.b.x), _wgslsmith_div_i32(global0.a, global0.a), global0.a | -u_input.c));
    var var_1 = Struct_1(_wgslsmith_sub_i32(var_0.b.x << (4294967295u % 32u), _wgslsmith_div_i32(_wgslsmith_mod_i32(-global0.b.x, _wgslsmith_clamp_i32(global0.a, -6326i, 19292i)), global0.b.x)), _wgslsmith_mod_vec2_i32(var_0.b, -var_0.d.yy), !arg_0, !global0.d);
    let var_2 = vec3<bool>(all(select(!(!vec4<bool>(var_1.c, var_1.d.x, true, false)), select(select(vec4<bool>(false, false, false, var_1.c), vec4<bool>(arg_0, var_1.c, arg_0, true), false), vec4<bool>(arg_0, false, false, false), var_1.d.x == var_1.c), vec4<bool>(true, global0.c, false & global0.d.x, true))), _wgslsmith_sub_i32(~2147483647i, func_3(abs(1u), ~vec3<u32>(u_input.b.x, u_input.b.x, 0u), Struct_2(var_0.a, vec2<i32>(u_input.a, 3941i), u_input.a, var_0.d))) == global0.b.x, all(var_1.d.zz));
    var var_3 = !any(!var_2);
    return Struct_2(-459f, max(vec2<i32>(u_input.c, min(1i, 1i)), countOneBits(var_1.b)), abs(-(~(~u_input.c))), vec4<i32>(_wgslsmith_dot_vec3_i32(reverseBits(countOneBits(var_0.d.wwz)), _wgslsmith_mult_vec3_i32(~var_0.d.zzw, vec3<i32>(var_1.a, -15451i, -72425i))), var_1.b.x & _wgslsmith_dot_vec3_i32(abs(var_0.d.zzw), ~var_0.d.yyx), 8846i, ~abs(var_1.a | 2147483647i)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    global0 = Struct_1(0i, _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(arg_2.b, _wgslsmith_mod_vec2_i32(arg_2.b, vec2<i32>(1i, arg_1.b.x))), arg_2.b) ^ -vec2<i32>(-1i, arg_1.c), true, select(vec3<bool>(all(arg_2.d.xz), global0.c, true), vec3<bool>(false, false, true), arg_2.c));
    global0 = arg_2;
    let var_0 = _wgslsmith_add_i32(35232i, reverseBits(~(_wgslsmith_add_i32(arg_1.d.x, 24567i) << ((arg_0 << (4294967295u % 32u)) % 32u))));
    global0 = Struct_1(arg_2.b.x, arg_1.b, select(arg_0, 783u, func_2()) == ~(~(~67279u)), arg_2.d);
    var var_1 = max(vec2<i32>(abs(-(i32(-1i) * -1i)), select(-2147483647i, 8299i >> (arg_3.x % 32u), 810f == arg_1.a) << (arg_3.x % 32u)), vec2<i32>(_wgslsmith_mult_i32(1i, u_input.a), -global0.a));
    return Struct_1(_wgslsmith_div_i32(70813i, ~(-var_0) >> (arg_3.x % 32u)), arg_1.b, arg_2.d.x == arg_2.c, select(select(vec3<bool>(arg_3.x == 15038u, true, all(global0.d)), vec3<bool>(global0.d.x, arg_2.c, false), select(select(vec3<bool>(global0.c, global0.d.x, true), vec3<bool>(true, true, arg_2.c), arg_2.d), !vec3<bool>(global0.c, arg_2.d.x, true), !arg_2.d)), !arg_2.d, select(vec3<bool>(true, all(arg_2.d), true & global0.c), vec3<bool>(!global0.d.x, true, all(arg_2.d.xx)), global0.d)));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_0.a, arg_0.b, _wgslsmith_sub_i32(arg_3.a, 1i) << (u_input.b.x % 32u), _wgslsmith_mult_vec4_i32(-func_1(false).d, _wgslsmith_add_vec4_i32(arg_0.d, vec4<i32>(-18745i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, -2147483647i, -22862i), arg_0.d.yxx), ~0i))));
    global0 = func_4(16769u, Struct_2(arg_0.a, vec2<i32>(-2147483647i, func_4(72499u, Struct_2(arg_0.a, vec2<i32>(-4289i, arg_0.b.x), var_0.d.x, arg_0.d), arg_3, vec4<u32>(4294967295u, 0u, u_input.b.x, 10759u)).a) ^ (var_0.d.yy ^ vec2<i32>(-1i, -1i)), func_1(false).d.x << ((u_input.b.x << ((u_input.b.x >> (15075u % 32u)) % 32u)) % 32u), var_0.d), Struct_1(firstTrailingBit(_wgslsmith_clamp_i32(-global0.a, _wgslsmith_clamp_i32(-2147483647i, var_0.b.x, -26024i), -16640i)), arg_3.b, arg_1, vec3<bool>(arg_3.c, true, true)), vec4<u32>(u_input.b.x, _wgslsmith_add_u32(~firstLeadingBit(4294967295u), u_input.b.x), u_input.b.x, 1u));
    var_0 = Struct_2(1f, _wgslsmith_add_vec2_i32(vec2<i32>(-firstTrailingBit(-58506i), ~arg_0.b.x), ~(-vec2<i32>(-11388i, 0i) ^ arg_0.b)), _wgslsmith_sub_i32(54366i, global0.a), vec4<i32>(global0.a, func_4(u_input.b.x, arg_0, Struct_1(-2147483647i, arg_2.zz ^ vec2<i32>(var_0.b.x, u_input.a), true, global0.d), vec4<u32>(u_input.b.x, _wgslsmith_div_u32(14968u, u_input.b.x), reverseBits(u_input.b.x), u_input.b.x)).a, -countOneBits(abs(-11873i)), -arg_2.x));
    var var_1 = select(select(arg_3.d, global0.d, true), vec3<bool>(all(global0.d), all(vec2<bool>(func_4(u_input.b.x, Struct_2(-623f, vec2<i32>(u_input.c, arg_3.b.x), var_0.d.x, vec4<i32>(1i, arg_0.d.x, -2147483647i, var_0.b.x)), arg_3, vec4<u32>(14895u, u_input.b.x, 1u, 90071u)).d.x, !arg_3.d.x)), -597f <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a)))), true != !arg_1);
    var var_2 = countOneBits(~firstTrailingBit(vec3<i32>(arg_2.x, var_0.d.x, 1i) << (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u))));
    return Struct_1(-_wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, -arg_3.b.x, 1i), var_0.d.x), global0.b, arg_1, global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_2(1292f, _wgslsmith_div_vec2_i32(vec2<i32>(-12322i, _wgslsmith_add_i32(u_input.c, u_input.a)), global0.b), _wgslsmith_dot_vec3_i32(~(vec3<i32>(global0.a, global0.b.x, global0.b.x) ^ vec3<i32>(-34460i, 0i, global0.b.x)), _wgslsmith_add_vec3_i32(~vec3<i32>(global0.b.x, global0.b.x, global0.a), select(vec3<i32>(42179i, global0.a, global0.b.x), vec3<i32>(2147483647i, 0i, global0.a), global0.d))), _wgslsmith_clamp_vec4_i32(vec4<i32>(5422i, ~global0.b.x, -3866i, 0i), select(-vec4<i32>(global0.a, -1993i, 1i, global0.b.x), ~vec4<i32>(u_input.c, -19566i, -21824i, global0.a), !vec4<bool>(global0.d.x, global0.d.x, global0.d.x, true)), -vec4<i32>(2147483647i, u_input.a, u_input.a, -23474i) << (max(vec4<u32>(u_input.b.x, 11908u, 1u, 85658u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)))), select(8306u, ~0u ^ ~u_input.b.x, -36229i > -global0.a) <= ((reverseBits(u_input.b.x) & ~33583u) | abs(min(4294967295u, 1u))), vec4<i32>(0i, -50040i, reverseBits(-4382i), 1i), func_4(4294967295u, func_1(false), Struct_1(26557i, -global0.b, (u_input.b.x & u_input.b.x) == u_input.b.x, !(!vec3<bool>(global0.d.x, global0.d.x, false))), ~(~(~vec4<u32>(u_input.b.x, 37213u, u_input.b.x, u_input.b.x)))));
    var var_0 = !global0.c;
    global0 = func_5(func_1(all(select(!vec4<bool>(false, false, global0.d.x, false), select(vec4<bool>(global0.d.x, global0.c, global0.c, global0.d.x), vec4<bool>(true, false, true, global0.d.x), vec4<bool>(true, false, false, false)), false))), !global0.c, vec4<i32>(func_4(countOneBits(u_input.b.x), Struct_2(-1771f, vec2<i32>(1i, 1i), u_input.a, vec4<i32>(0i, global0.b.x, -39184i, u_input.c)), Struct_1(u_input.c, vec2<i32>(global0.a, -3309i), global0.c, vec3<bool>(true, global0.d.x, true)), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 72187u))).b.x, _wgslsmith_add_i32(29478i, 0i), min(abs(u_input.c), ~u_input.a), _wgslsmith_mult_i32(min(global0.a, u_input.a), 16645i << (1u % 32u))) ^ vec4<i32>(1i, global0.a, -1i, ~_wgslsmith_sub_i32(2147483647i, u_input.a)), func_5(Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2436f * 661f))), firstLeadingBit(vec2<i32>(1i, 80710i)), abs(u_input.a) ^ max(global0.b.x, u_input.a), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, u_input.c, 35726i, u_input.c), vec4<i32>(22839i, 0i, -20185i, global0.b.x)), ~vec4<i32>(global0.a, -23192i, 0i, -73752i))), global0.c, max(-_wgslsmith_add_vec4_i32(vec4<i32>(1i, global0.a, 50898i, 0i), vec4<i32>(global0.b.x, 0i, 2147483647i, u_input.a)), abs(vec4<i32>(8322i, u_input.c, 27402i, global0.b.x))), func_5(Struct_2(_wgslsmith_f_op_f32(floor(1105f)), _wgslsmith_mult_vec2_i32(global0.b, global0.b), select(global0.a, 42089i, global0.d.x), func_1(global0.c).d), !func_5(Struct_2(1738f, global0.b, 1i, vec4<i32>(global0.a, u_input.a, u_input.a, global0.a)), false, vec4<i32>(1i, 83084i, -36999i, global0.b.x), Struct_1(global0.b.x, global0.b, global0.c, vec3<bool>(true, global0.c, true))).c, select(_wgslsmith_add_vec4_i32(vec4<i32>(global0.b.x, global0.a, 2147483647i, -36322i), vec4<i32>(global0.a, global0.b.x, -44716i, global0.a)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.b.x, 6641i, u_input.c, u_input.a), vec4<i32>(global0.b.x, global0.b.x, -2147483647i, 20428i)), global0.c), func_4(_wgslsmith_div_u32(888u, 52120u), func_1(global0.d.x), func_4(4294967295u, Struct_2(1000f, vec2<i32>(-46264i, 0i), u_input.a, vec4<i32>(u_input.c, global0.a, global0.b.x, u_input.a)), Struct_1(1i, global0.b, global0.d.x, global0.d), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))));
    var var_1 = _wgslsmith_sub_vec4_i32(select(max(vec4<i32>(_wgslsmith_mult_i32(global0.b.x, u_input.a), firstLeadingBit(u_input.c), ~u_input.a, global0.b.x), vec4<i32>(global0.b.x, -8723i, _wgslsmith_mod_i32(9744i, 1i), -global0.b.x)), vec4<i32>(global0.a, -2147483647i, ~1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(20347i, 22596i, u_input.c), ~vec3<i32>(-13982i, u_input.c, global0.b.x))), !(!global0.c)), -(vec4<i32>(-1i) * -(vec4<i32>(u_input.c, global0.a, u_input.c, u_input.c) << (vec4<u32>(51746u, 1u, u_input.b.x, 64718u) % vec4<u32>(32u)))));
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(func_1(all(vec4<bool>(true, true, true, true))).d.xwy, min(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.wzz, var_1.wzx), min(var_1.yyw, var_1.yxy), var_1.yzx & vec3<i32>(-1i, 36345i, -15500i)), -var_1.xzy)), vec2<i32>(_wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(global0.b.x << (4294967295u % 32u), max(var_1.x, var_1.x))), ~0i), !(global0.d.x && false), global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(-7527i, ~(-2147483647i)), 22651i, func_1(!(global0.c != global0.c)).c));
}

