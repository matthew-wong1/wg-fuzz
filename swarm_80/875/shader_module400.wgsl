struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<u32>(0u, 11351u, 1548u), vec2<u32>(0u, 4294967295u), -17i, true, 37333u), Struct_1(vec3<u32>(8925u, 36479u, 81795u), vec2<u32>(29940u, 1u), 41186i, false, 6553u), 27454u);

var<private> global1: Struct_5;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec3<u32>(77297u, 32783u, 39245u), vec2<u32>(25977u, 47106u), 2147483647i, true, 55270u), Struct_1(vec3<u32>(0u, 4294967295u, 20782u), vec2<u32>(22428u, 102355u), -36010i, false, 20583u), 40466u);

var<private> global3: vec2<bool>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(-(global1.a.b.c >> (48155u % 32u)), -global0.b.c), _wgslsmith_clamp_i32(i32(-1i) * -1809i, 2147483647i, _wgslsmith_sub_i32(~_wgslsmith_mod_i32(-7868i, u_input.b.x), _wgslsmith_sub_i32(global0.a.c << (1u % 32u), u_input.b.x))));
    global1 = Struct_5(Struct_3(Struct_1(~global0.b.a, _wgslsmith_div_vec2_u32(vec2<u32>(global2.c, 25817u), abs(global2.b.a.zz)), abs(-15570i), false, firstLeadingBit(66063u)), global0.a, global2.a.b.x >> (firstLeadingBit(global0.b.e << (u_input.a % 32u)) % 32u)), Struct_3(global2.a, Struct_1(firstTrailingBit(_wgslsmith_add_vec3_u32(global2.a.a, global2.b.a)), vec2<u32>(76647u, firstLeadingBit(4294967295u)), -1i, true, _wgslsmith_dot_vec4_u32(vec4<u32>(12487u, global0.a.e, u_input.a, 26090u), global1.c) | u_input.a), abs(0u)), firstLeadingBit(~(~global1.c)));
    let var_1 = Struct_2(countOneBits(vec2<u32>(1u, select(1u, _wgslsmith_add_u32(24427u, 21094u), false))), global0.a, Struct_1(firstTrailingBit(firstLeadingBit(vec3<u32>(0u, global0.a.b.x, 21850u))), _wgslsmith_sub_vec2_u32(abs(reverseBits(global1.b.a.a.xz)), firstTrailingBit(vec2<u32>(global1.a.c, global1.b.a.b.x))), global1.b.a.c, !any(!vec3<bool>(global0.a.d, global3.x, global0.b.d)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 81337u), vec3<u32>(global0.c, 1u, global0.a.e) ^ vec3<u32>(u_input.a, global2.c, global1.a.a.b.x))));
    var_0 = _wgslsmith_clamp_i32(abs(~global1.b.a.c) & (_wgslsmith_mult_i32(i32(-1i) * -1i, var_1.b.c) & -global2.a.c), _wgslsmith_dot_vec4_i32(abs(u_input.b), vec4<i32>(22699i, global1.b.b.c, ~arg_2.x << (10415u % 32u), -_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-658i, 2147483647i, -2147483647i, var_1.b.c)))), global0.a.c);
    global1 = Struct_5(Struct_3(Struct_1(~global0.a.a, ~global1.a.a.a.yx >> ((vec2<u32>(global1.b.a.b.x, 4294967295u) | var_1.c.b) % vec2<u32>(32u)), -min(181i, arg_2.x), (global2.a.c >> (global2.b.a.x % 32u)) == max(-1i, -2147483647i), global2.c), Struct_1(vec3<u32>(~35557u, countOneBits(4294967295u), _wgslsmith_div_u32(u_input.a, global2.a.e)), countOneBits(~vec2<u32>(u_input.a, var_1.b.a.x)), ~(i32(-1i) * -1i), true, global2.b.b.x), u_input.a), global1.a, ~(~max(~global1.c, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 15813u, u_input.a), global1.c))));
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_1(~global1.c.yyw, vec2<u32>(4294967295u, ~func_3(global3.x, select(vec3<bool>(false, true, false), vec3<bool>(true, global1.b.b.d, false), global1.b.a.d), u_input.b.wwx, _wgslsmith_f_op_vec4_f32(min(arg_2, vec4<f32>(-1100f, arg_2.x, arg_1, 2209f))))), global2.b.c, global0.b.d, global1.c.x);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-3206f - arg_2.x))), 1516f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(arg_1)))));
    let var_2 = select(!(!select(!vec4<bool>(global0.a.d, true, true, false), select(vec4<bool>(true, true, var_0.d, var_0.d), vec4<bool>(global3.x, global0.b.d, true, global2.a.d), global1.b.a.d), vec4<bool>(var_0.d, var_0.d, global1.a.a.d, true))), vec4<bool>(false, global2.b.d, global2.a.d, true), true);
    return Struct_2(~firstLeadingBit(~global2.b.b), global2.b, global0.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool) -> Struct_4 {
    global3 = !(!select(!select(vec2<bool>(true, global3.x), vec2<bool>(true, true), true), !select(vec2<bool>(global1.a.a.d, global2.b.d), vec2<bool>(global1.b.a.d, false), global1.a.a.d), arg_0.b.d == select(false, global1.a.a.d, global2.a.d)));
    var var_0 = vec4<i32>(~_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(42413i, global2.b.c), -21558i), ~arg_0.c.c ^ ~global0.b.c), u_input.b.x, 24776i, 1i);
    global1 = Struct_5(global1.b, global1.b, abs(countOneBits(vec4<u32>(_wgslsmith_sub_u32(0u, u_input.a), 2880u, select(arg_0.c.b.x, u_input.a, true), ~4294967295u))));
    var var_1 = arg_1;
    var var_2 = Struct_4(max(global1.a.b.b, reverseBits(_wgslsmith_add_vec2_u32(global1.c.yz, vec2<u32>(45082u, 47229u)) & vec2<u32>(90413u, 9877u))));
    return Struct_4(~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.a, vec2<u32>(38682u, global0.b.b.x)), ~vec2<u32>(1u, arg_0.c.b.x), vec2<u32>(0u, global2.b.a.x)) & abs(select(~arg_1.a, vec2<u32>(23362u, global0.c), vec2<bool>(true, true))));
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_4, arg_3: vec2<i32>) -> Struct_5 {
    var var_0 = !(!select(vec4<bool>(false, global1.a.a.d, func_2(Struct_2(arg_2.a, Struct_1(global0.b.a, vec2<u32>(1u, global0.b.a.x), arg_3.x, global3.x, 1244u), global2.b), 2160f, vec4<f32>(arg_1, arg_1, arg_1, 1141f)).c.d, global2.b.d), vec4<bool>(any(vec4<bool>(global1.a.a.d, true, true, false)), global2.a.d, 0u >= arg_2.a.x, func_2(Struct_2(arg_2.a, Struct_1(vec3<u32>(global0.b.a.x, u_input.a, 4294967295u), global1.c.yy, 17414i, global3.x, global2.a.b.x), Struct_1(global1.c.zzw, global0.b.a.yx, arg_0.x, global3.x, 0u)), arg_1, vec4<f32>(arg_1, arg_1, arg_1, 1348f)).c.d), any(!vec4<bool>(global1.b.a.d, global1.a.b.d, true, true))));
    let var_1 = var_0.zxz;
    let var_2 = func_2(Struct_2(vec2<u32>(global2.a.a.x, reverseBits(~global1.c.x)), func_2(Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.a.x, global1.b.c), global0.a.b), Struct_1(global0.b.a, vec2<u32>(global1.b.c, global1.c.x), global2.a.c, false, u_input.a), Struct_1(vec3<u32>(global0.b.b.x, global2.b.e, 10696u), vec2<u32>(u_input.a, global1.b.a.b.x), -2128i, global0.a.d, 1u)), arg_1, vec4<f32>(_wgslsmith_f_op_f32(arg_1 + -361f), arg_1, _wgslsmith_f_op_f32(1000f + arg_1), _wgslsmith_f_op_f32(arg_1 - 803f))).c, Struct_1(select(global2.a.a, ~vec3<u32>(global0.c, 45480u, 1u), select(var_0.zwy, var_0.xzx, vec3<bool>(var_1.x, true, var_1.x))), reverseBits(~vec2<u32>(arg_2.a.x, global0.b.e)), select(firstLeadingBit(global2.b.c), ~global1.b.a.c, global0.b.d), any(select(vec3<bool>(global0.a.d, false, global2.b.d), var_0.yxz, var_0.xwy)), func_2(func_2(Struct_2(global1.c.wx, global2.b, Struct_1(global0.b.a, global2.b.b, global1.b.b.c, var_0.x, 18216u)), arg_1, vec4<f32>(arg_1, -891f, arg_1, arg_1)), _wgslsmith_f_op_f32(min(arg_1, arg_1)), vec4<f32>(1000f, arg_1, arg_1, arg_1)).c.b.x)), arg_1, vec4<f32>(525f, -2436f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))) * 1788f), 1888f));
    let var_3 = ~vec2<u32>(42672u, func_2(var_2, _wgslsmith_f_op_f32(f32(-1f) * -481f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, arg_1, -319f, arg_1), vec4<f32>(arg_1, arg_1, -147f, arg_1)))).a.x) ^ _wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(var_2.a, ~global1.b.a.a.xy), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), abs(select(vec2<u32>(global2.a.a.x, var_2.a.x), arg_2.a, true))));
    let var_4 = global0.b.b;
    return Struct_5(global1.a, global1.b, _wgslsmith_mult_vec4_u32(min(vec4<u32>(1u, 4294967295u, 1u, arg_2.a.x) ^ (vec4<u32>(u_input.a, 1u, 4294967295u, global2.b.a.x) >> (vec4<u32>(8135u, var_2.a.x, 1u, 23614u) % vec4<u32>(32u))), ~(~global1.c)), global1.c));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = global0.c;
    global2 = Struct_3(func_5(select(u_input.b << (arg_1.c % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(u_input.b ^ vec4<i32>(-1i, 1i, -12931i, -34838i), vec4<i32>(arg_1.a.a.c, global0.a.c, u_input.b.x, 70714i)), global2.b.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1540f) - -339f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1038f))))), Struct_4(~(~vec2<u32>(arg_1.c.x, global1.b.b.a.x))), -(~(u_input.b.yz | vec2<i32>(arg_1.b.a.c, -29121i)))).b.a, func_5(vec4<i32>(global0.b.c, 2147483647i, _wgslsmith_dot_vec4_i32(u_input.b, select(u_input.b, vec4<i32>(global0.a.c, 80639i, -1i, u_input.b.x), vec4<bool>(false, false, true, true))), reverseBits(global2.a.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-405f + -434f)))), func_4(Struct_2(abs(arg_0.xw), func_2(Struct_2(vec2<u32>(arg_0.x, 4294967295u), Struct_1(arg_0.xyx, vec2<u32>(11967u, global0.b.a.x), -2147483647i, global3.x, global1.b.b.a.x), Struct_1(global2.a.a, vec2<u32>(52125u, 0u), -16910i, global3.x, 5794u)), -731f, vec4<f32>(147f, 111f, 1000f, -869f)).b, global2.b), Struct_4(vec2<u32>(1u, 0u) ^ global1.c.yz), true), vec2<i32>(1i >> ((global2.c ^ 60400u) % 32u), _wgslsmith_dot_vec3_i32(-u_input.b.wxw, u_input.b.ywx))).b.a, ~(~global2.c));
    var var_1 = _wgslsmith_mod_i32((((global0.a.c | -2147483647i) ^ ~global1.a.b.c) << (16156u % 32u)) & ~(~global0.b.c), 41700i & _wgslsmith_mod_i32(global1.a.a.c, global1.a.b.c));
    var var_2 = arg_2;
    global1 = func_5(-vec4<i32>(reverseBits(-13375i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_1.a.a.c, global1.b.b.c), u_input.b.wzw) ^ 1i, -u_input.b.x, _wgslsmith_dot_vec3_i32(~u_input.b.zzx, _wgslsmith_add_vec3_i32(vec3<i32>(-10423i, global1.b.b.c, u_input.b.x), u_input.b.wzz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-114f)))))), Struct_4(_wgslsmith_sub_vec2_u32(max(global0.a.a.xx & arg_2.wx, global0.a.a.yx), arg_0.xw)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.b.b.c, -14853i), -u_input.b.yx), vec2<i32>(-4965i, -10175i)), _wgslsmith_sub_vec2_i32(~(~u_input.b.wy), firstLeadingBit(vec2<i32>(1i, u_input.b.x) >> (vec2<u32>(global0.c, var_2.x) % vec2<u32>(32u))))));
    return func_2(func_2(func_2(func_2(Struct_2(vec2<u32>(u_input.a, arg_0.x), Struct_1(vec3<u32>(36154u, global2.a.a.x, 0u), arg_1.a.a.b, -2147483647i, global2.a.d, 42276u), global2.a), _wgslsmith_f_op_f32(floor(-967f)), vec4<f32>(-1331f, 409f, -331f, 1005f)), _wgslsmith_f_op_f32(f32(-1f) * -246f), vec4<f32>(_wgslsmith_f_op_f32(-618f + -736f), _wgslsmith_div_f32(-1723f, 646f), _wgslsmith_f_op_f32(round(557f)), _wgslsmith_f_op_f32(-797f + -870f))), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2124f, -845f, 338f, -1031f), vec4<f32>(-1244f, 1000f, 308f, 656f), global1.b.a.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-259f, 523f, 298f, 131f) * vec4<f32>(444f, 600f, 482f, -1193f))), global1.b.a.d))), -1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-272f, 664f, -420f, -741f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-156f, -716f, -313f, 1725f)))))).c;
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = Struct_2(global2.b.b, func_6(global1.c, func_5(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, global1.a.a.c, -3994i, 2147483647i), u_input.b), 570f, func_4(func_2(Struct_2(vec2<u32>(arg_0, 20834u), Struct_1(vec3<u32>(global2.a.a.x, arg_0, global1.b.b.b.x), global0.a.b, global2.b.c, true, global2.b.a.x), Struct_1(global0.b.a, vec2<u32>(108531u, global2.a.b.x), global1.a.b.c, global0.a.d, global1.a.c)), -2065f, vec4<f32>(1003f, -207f, 342f, 231f)), Struct_4(global0.b.b), any(vec3<bool>(false, true, global1.a.b.d))), vec2<i32>(firstLeadingBit(global1.a.a.c), 9740i)), _wgslsmith_mod_vec4_u32(firstLeadingBit(global1.c), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(64900u, global2.c, 4294967295u, 196u), vec4<u32>(u_input.a, global2.b.a.x, global2.b.a.x, 10852u))))), Struct_1(~(~vec3<u32>(0u, u_input.a, global1.b.a.a.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(global1.c, global1.c) >> (u_input.a % 32u), _wgslsmith_mod_u32(~u_input.a, ~global2.a.b.x)), u_input.b.x & ~(~(-16053i)), func_5(~(vec4<i32>(global0.a.c, global2.a.c, global2.a.c, 2147483647i) | u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -125f), func_4(Struct_2(global2.a.a.zx, global0.b, Struct_1(global0.a.a, global1.a.b.b, global2.b.c, global1.b.b.d, global2.b.a.x)), Struct_4(global1.b.a.a.yz), func_2(Struct_2(global1.b.b.a.xz, global2.b, global1.b.b), 202f, vec4<f32>(1000f, 845f, 1539f, -1448f)).c.d), min(-vec2<i32>(-99978i, global2.a.c), u_input.b.xx)).b.a.d, func_2(func_2(Struct_2(vec2<u32>(12128u, global2.c), Struct_1(vec3<u32>(global2.b.e, arg_0, global2.c), global0.b.a.zy, u_input.b.x, global2.a.d, global1.c.x), Struct_1(global0.a.a, vec2<u32>(4294967295u, 51850u), 3968i, global0.b.d, global0.c)), -1184f, vec4<f32>(926f, -884f, -1015f, -1499f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(186f - 631f) - _wgslsmith_f_op_f32(f32(-1f) * -211f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(710f, -1287f, -187f, -792f) + vec4<f32>(-1000f, 1159f, 728f, -366f))).a.x));
    let var_1 = -1i;
    global1 = func_5(u_input.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1294f) + -1341f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1198f), 948f))), Struct_4(~select(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, global2.c), vec2<u32>(arg_0, 1u)), vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(1u, global2.c), vec2<bool>(global3.x, var_0.b.d))), min(-(select(u_input.b.zz, vec2<i32>(global0.b.c, var_1), vec2<bool>(false, false)) & (u_input.b.ww & vec2<i32>(2147483647i, global2.a.c))), min(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(global1.b.a.c, -940i))), u_input.b.ww)));
    var var_2 = min(-select(vec2<i32>(-1i) * -vec2<i32>(20655i, global1.b.b.c), vec2<i32>(var_1, var_0.c.c << (0u % 32u)), (global0.b.d & var_0.c.d) != false), -u_input.b.ww);
    let var_3 = vec2<u32>(57463u, func_6(~global1.c, Struct_5(Struct_3(Struct_1(global0.a.a, var_0.a, -1i, global0.b.d, 4294967295u), Struct_1(global1.a.b.a, vec2<u32>(global1.c.x, 4294967295u), -45148i, false, global2.b.a.x), ~var_0.b.b.x), Struct_3(func_5(u_input.b, -1854f, Struct_4(vec2<u32>(72476u, 58867u)), u_input.b.xy).b.b, global1.b.b, u_input.a), ~global1.c), vec4<u32>(arg_0, ~max(31071u, 9324u), global2.c, global1.a.b.e)).e);
    return Struct_3(Struct_1(vec3<u32>(max(1495u, 4388u), arg_0, func_3(global0.a.d && false, select(vec3<bool>(false, false, true), vec3<bool>(global1.a.a.d, global3.x, true), true), max(u_input.b.xyz, u_input.b.zwz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(372f, -249f, 230f, -1626f)))), firstLeadingBit(~select(vec2<u32>(1u, global2.c), global1.c.xz, vec2<bool>(false, global0.b.d))), 24703i >> (~(32481u << (var_0.a.x % 32u)) % 32u), var_0.c.d, ~(~var_0.b.a.x)), Struct_1(global1.c.wyy, global0.a.a.xz, select(-global0.a.c, 18540i, all(select(vec4<bool>(false, true, false, global2.b.d), vec4<bool>(global3.x, false, var_0.c.d, global1.a.b.d), false))), true, var_0.b.b.x), global0.c);
}

fn func_7(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_5) -> bool {
    let var_0 = Struct_4(vec2<u32>(_wgslsmith_dot_vec3_u32(arg_2.a.a.a, global2.a.a), countOneBits(3464u)));
    global0 = func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(func_3(global1.b.a.d, vec3<bool>(arg_0.c.d, arg_0.b.d, true), vec3<i32>(global1.a.b.c, global1.b.b.c, 0i), vec4<f32>(353f, -1736f, -1406f, -1438f)), 1u, 72850u, global1.c.x) & ~_wgslsmith_add_vec4_u32(arg_2.c, global1.c), vec4<u32>(u_input.a, global1.b.a.e ^ ~31912u, arg_2.c.x, 4294967295u)));
    global1 = Struct_5(func_1(arg_1.x), Struct_3(global1.a.b, global2.b, ~arg_1.x), vec4<u32>(global0.c, ~countOneBits(arg_2.c.x), 52784u, _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 18337u, global0.a.b.x | global2.a.e, ~arg_1.x), global1.c)));
    let var_1 = arg_0;
    global1 = arg_2;
    return (arg_0.c.c << (reverseBits(~firstTrailingBit(var_1.c.a.x)) % 32u)) == -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec2<bool>(true, any(vec3<bool>(false, false, true)) || all(select(select(vec4<bool>(global3.x, global3.x, global3.x, global2.a.d), vec4<bool>(global0.b.d, global0.b.d, false, true), false), select(vec4<bool>(global1.a.b.d, global3.x, global1.b.a.d, false), vec4<bool>(global1.a.b.d, global2.b.d, true, global3.x), vec4<bool>(global0.b.d, global1.b.a.d, false, true)), any(vec2<bool>(true, true)))));
    var var_0 = global1.b.a.c;
    global3 = select(vec2<bool>(!any(select(vec4<bool>(global2.a.d, global1.a.b.d, false, true), vec4<bool>(false, global2.a.d, global2.a.d, global2.b.d), false)), global1.b.a.d), !(!select(vec2<bool>(global2.a.d, global2.b.d), vec2<bool>(true, true), true)), !func_7(Struct_2(global0.a.a.zy, Struct_1(vec3<u32>(0u, global0.b.a.x, global2.a.b.x), vec2<u32>(global0.c, 0u), 0i, false, u_input.a), Struct_1(global2.a.a, global0.a.a.yy, 12554i, true, 73917u)), global2.a.a.yz & vec2<u32>(global2.b.a.x, global2.a.b.x), Struct_5(func_1(global2.a.e), global1.a, vec4<u32>(u_input.a, 65161u, global0.b.a.x, 4294967295u))));
    var var_1 = 46364i;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1523f + -576f))))), -189f);
    global1 = func_5(_wgslsmith_add_vec4_i32(min(u_input.b >> (vec4<u32>(8667u, global2.a.b.x, u_input.a, 22259u) % vec4<u32>(32u)), u_input.b) & vec4<i32>(3847i, 0i, abs(-1i), i32(-1i) * -2147483647i), vec4<i32>(-func_1(global2.a.b.x).a.c, global0.b.c >> (~u_input.a % 32u), 1i, countOneBits(global1.b.a.c))), var_2, func_4(func_2(func_2(Struct_2(global1.b.b.a.zx, global1.b.a, global1.b.b), -1084f, vec4<f32>(var_2, var_2, 565f, var_2)), 723f, vec4<f32>(830f, _wgslsmith_f_op_f32(round(var_2)), var_2, _wgslsmith_f_op_f32(var_2 + var_2))), func_4(func_2(func_2(Struct_2(global1.b.b.a.yy, Struct_1(global1.b.a.a, vec2<u32>(u_input.a, 79604u), -1i, false, 32284u), Struct_1(global1.b.a.a, vec2<u32>(global0.a.b.x, global0.b.b.x), 2147483647i, global3.x, global1.c.x)), var_2, vec4<f32>(-991f, -531f, var_2, -378f)), -1069f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 577f, var_2, var_2))), func_4(func_2(Struct_2(vec2<u32>(4294967295u, 18467u), global2.b, Struct_1(vec3<u32>(global0.c, 1u, global0.b.e), global0.a.a.zx, u_input.b.x, true, global0.a.a.x)), 666f, vec4<f32>(var_2, var_2, var_2, -1425f)), Struct_4(global0.b.a.yx), false), !global2.b.d), global1.a.a.d), firstLeadingBit(vec2<i32>(55815i, global2.b.c)) | -_wgslsmith_mult_vec2_i32(firstLeadingBit(u_input.b.xz), u_input.b.xz));
    var var_3 = global0.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(900f);
}

