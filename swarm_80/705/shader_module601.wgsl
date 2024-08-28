struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(6581u, 17462u, 0u, 4294967295u), true, -11904i, 1i, vec2<u32>(37078u, 0u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    global0 = arg_1;
    var var_0 = select(_wgslsmith_add_vec4_u32(arg_1.a, vec4<u32>(global0.a.x, 12713u, arg_1.a.x, ~global0.e.x)), vec4<u32>((0u >> (arg_1.e.x % 32u)) >> (_wgslsmith_add_u32(68900u, 36200u) % 32u), 72717u, 41992u, ~abs(arg_1.e.x)), false & global0.b) ^ ~(_wgslsmith_add_vec4_u32(~global0.a, ~arg_1.a) | arg_1.a);
    let var_1 = countOneBits(var_0.yx);
    var_0 = vec4<u32>(~26565u, var_1.x, ~var_0.x, select(firstLeadingBit(_wgslsmith_mult_u32(~0u, var_0.x)), _wgslsmith_clamp_u32(1u, abs(~0u), _wgslsmith_div_u32(_wgslsmith_add_u32(var_1.x, var_0.x), 1u)), all(!vec3<bool>(global0.b, false, arg_1.b))));
    global0 = Struct_1(~vec4<u32>(_wgslsmith_add_u32(12137u, arg_1.a.x), var_1.x, 48129u, reverseBits(4294967295u)), any(select(select(select(vec4<bool>(true, global0.b, true, global0.b), vec4<bool>(false, arg_1.b, global0.b, arg_1.b), arg_1.b), !vec4<bool>(global0.b, global0.b, arg_1.b, true), arg_1.b), vec4<bool>(true, any(vec3<bool>(arg_1.b, global0.b, false)), true, arg_1.b), !arg_1.b && all(vec4<bool>(true, true, arg_1.b, global0.b)))), 2147483647i, _wgslsmith_clamp_i32(22228i, arg_1.c << (var_0.x % 32u), -(~abs(2147483647i))), global0.a.yy);
    return arg_1.e.x;
}

fn func_2(arg_0: bool) -> Struct_2 {
    return Struct_2(Struct_1(vec4<u32>(global0.a.x, _wgslsmith_mod_u32(~0u, 3883u | global0.a.x), func_3(-567f, Struct_1(vec4<u32>(global0.a.x, 11058u, global0.e.x, global0.a.x), global0.b, 3531i, 4754i, global0.a.xw)), (global0.a.x | global0.a.x) & global0.a.x), arg_0, _wgslsmith_sub_i32(global0.d, u_input.b.x), -1i, vec2<u32>(global0.a.x, global0.e.x)), Struct_1(vec4<u32>(global0.e.x ^ _wgslsmith_sub_u32(global0.e.x, 12642u), global0.a.x, global0.e.x, max(6901u, global0.a.x ^ 36321u)), false, 1i, ~(-global0.d), vec2<u32>(global0.e.x, global0.e.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<u32> {
    global0 = func_2(global0.b).a;
    let var_0 = !select(true, true, any(select(vec3<bool>(arg_1.b, true, true), select(vec3<bool>(false, true, arg_0.b.b), vec3<bool>(true, arg_1.b, false), vec3<bool>(arg_0.b.b, false, arg_1.b)), all(vec3<bool>(true, true, global0.b)))));
    global0 = Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(35746u, _wgslsmith_add_u32(firstTrailingBit(arg_1.a.x), 15573u), _wgslsmith_div_u32(global0.e.x, arg_0.a.e.x), global0.e.x), ~(~(vec4<u32>(arg_0.a.a.x, 0u, 0u, 4294967295u) & vec4<u32>(4294967295u, 62209u, 0u, arg_0.a.a.x))), arg_1.a), all(!select(select(vec4<bool>(arg_0.b.b, var_0, true, arg_1.b), vec4<bool>(false, var_0, true, arg_1.b), false), !vec4<bool>(arg_1.b, global0.b, true, true), arg_0.b.a.x >= arg_1.e.x)), 469i >> (firstLeadingBit(19764u) % 32u), ~arg_0.b.d, _wgslsmith_mod_vec2_u32(func_2(true).a.a.ww, global0.e) | reverseBits(arg_0.b.a.yz));
    global0 = arg_1;
    global0 = func_2(!func_2(global0.b == var_0).b.b).a;
    return vec4<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0.b.e.x, 44924u, arg_0.a.e.x)), vec3<u32>(arg_0.b.e.x, global0.e.x & 0u, global0.a.x)) << (_wgslsmith_div_u32(min(_wgslsmith_mod_u32(arg_1.e.x, 0u), global0.e.x ^ arg_1.e.x), firstTrailingBit(22068u) << (0u % 32u)) % 32u), countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(22010u, arg_1.e.x, arg_1.a.x, 18406u), arg_1.a)), max(_wgslsmith_add_u32(func_2(true).a.e.x, ~_wgslsmith_sub_u32(29954u, arg_0.a.e.x)), firstLeadingBit(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, 3422u, 52510u, arg_0.a.a.x)), vec4<u32>(8344u, arg_0.a.e.x, 34676u, 14967u) | vec4<u32>(3367u, 59806u, arg_1.e.x, arg_1.e.x)))), arg_1.a.x);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    global0 = arg_1;
    var var_0 = func_2(true).b;
    global0 = Struct_1(vec4<u32>(4690u, arg_1.a.x, countOneBits(0u), arg_1.a.x), arg_1.b, var_0.d, global0.c, vec2<u32>(firstLeadingBit(0u), min(func_3(-416f, Struct_1(var_0.a, true, 0i, var_0.c, global0.e)), abs(1u))));
    global0 = Struct_1(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.e.x, global0.e.x, arg_2.e.x, arg_1.a.x), arg_1.a)) | arg_1.a, select(var_0.d <= min(i32(-1i) * -19737i, _wgslsmith_sub_i32(arg_1.d, 46235i)), global0.b, !any(vec4<bool>(var_0.b, false, true, var_0.b))), -2147483647i, countOneBits(select(~abs(var_0.d), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-3910i, 2147483647i, -1i, 1i), vec4<i32>(arg_1.c, arg_1.c, u_input.b.x, 2147483647i)), u_input.a), arg_1.b)), vec2<u32>(~(~global0.a.x << (arg_2.e.x % 32u)), arg_2.e.x));
    var var_1 = Struct_2(Struct_1(arg_2.a, _wgslsmith_f_op_f32(round(-1000f)) == arg_3.x, abs(~global0.d), ~select(-10309i, 2147483647i, any(vec4<bool>(var_0.b, true, arg_2.b, false))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(global0.e, arg_2.a.xw), global0.e), _wgslsmith_add_vec2_u32(arg_1.e, vec2<u32>(1u, 4294967295u)) << (firstLeadingBit(vec2<u32>(var_0.a.x, arg_1.e.x)) % vec2<u32>(32u)), ~(vec2<u32>(57330u, 15757u) ^ var_0.a.zw))), arg_1);
    return func_2(arg_2.b).a;
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    let var_0 = func_5(global0.b, Struct_1(func_4(func_2(true), func_2(false & global0.b).a, vec4<f32>(_wgslsmith_f_op_f32(sign(-128f)), _wgslsmith_f_op_f32(f32(-1f) * -1216f), 1000f, 1000f)), all(select(select(vec4<bool>(false, global0.b, global0.b, global0.b), vec4<bool>(global0.b, false, true, true), false), vec4<bool>(global0.b, true, true, true), false)), -(_wgslsmith_add_i32(global0.c, global0.d) << (arg_1 % 32u)), (arg_0 ^ global0.d) ^ ~global0.c, ~(vec2<u32>(global0.e.x, global0.a.x) << (global0.a.wy % vec2<u32>(32u))) & _wgslsmith_mod_vec2_u32(vec2<u32>(7912u, global0.a.x), global0.a.zz)), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(79117u, arg_1, 4294967295u, func_2(false).a.a.x), firstTrailingBit(global0.a)), any(vec4<bool>(global0.b, true, any(vec3<bool>(true, global0.b, false)), !global0.b)), 1i << (arg_1 % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x >> (arg_1 % 32u), global0.d), u_input.b), global0.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(197f + 192f) - -670f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1074f, 643f)))), 1611f, -410f)));
    global0 = Struct_1(_wgslsmith_mod_vec4_u32(var_0.a, func_2(all(vec2<bool>(var_0.b, false))).b.a), all(!vec4<bool>(var_0.b || true, global0.b, any(vec2<bool>(false, global0.b)), u_input.c != 1i)), min(-12938i, _wgslsmith_add_i32(func_2(global0.b).b.c, (global0.c | u_input.a) & var_0.c)), 1i, max(var_0.a.yw, var_0.a.yx));
    var var_1 = 341f;
    global0 = var_0;
    let var_2 = var_0.a.x;
    return func_5((_wgslsmith_f_op_f32(round(-1784f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-295f, -1388f, true)) - 1531f)) | var_0.b, func_5(!var_0.b, Struct_1(~global0.a, any(vec3<bool>(var_0.b, false, true)), firstLeadingBit(~34776i), 32846i, var_0.e), Struct_1(~_wgslsmith_add_vec4_u32(global0.a, vec4<u32>(global0.a.x, 55294u, 4294967295u, 58798u)), true, ~0i, -(-1i >> (global0.a.x % 32u)), vec2<u32>(func_3(593f, Struct_1(vec4<u32>(16770u, var_2, 5846u, 31467u), true, global0.d, arg_0, vec2<u32>(global0.a.x, var_2))), 0u)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f)))), func_5(_wgslsmith_f_op_f32(sign(-208f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(579f * 529f) - -1429f), Struct_1(reverseBits(select(var_0.a, var_0.a, vec4<bool>(global0.b, global0.b, true, false))), any(!vec4<bool>(false, global0.b, global0.b, true)), u_input.a, func_5(global0.b, var_0, Struct_1(vec4<u32>(1u, arg_1, var_2, var_0.e.x), false, -21580i, 0i, vec2<u32>(var_2, 8603u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1769f, 691f, 926f) - vec4<f32>(1556f, 553f, 2868f, 1000f))).d, ~abs(var_0.e)), func_2(var_0.b).b, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-703f)))), _wgslsmith_f_op_f32(step(-730f, 1856f)), _wgslsmith_f_op_f32(min(-212f, _wgslsmith_f_op_f32(f32(-1f) * -425f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(798f, 102f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(672f * -1171f), 652f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -211f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 463f, 994f, -232f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1672f, 406f, -1126f, 921f) * vec4<f32>(-1251f, -1784f, -546f, -1553f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-624f, 429f, 314f, 519f) + vec4<f32>(-406f, -1773f, -1000f, 1652f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_clamp_i32(global0.d, 13837i, reverseBits(u_input.a)), 4294967295u);
    global0 = Struct_1(vec4<u32>(global0.a.x & 1u, 9293u, abs(1u), 54854u), false, 1i, reverseBits(-global0.d | _wgslsmith_mult_i32(u_input.b.x, -global0.d)), global0.e);
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-506f)) + -1346f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-199f, -863f)))), func_2(true).a.b)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(611f + 1364f)))));
    global0 = Struct_1(global0.a, all(vec3<bool>(true, global0.b, false)), (_wgslsmith_div_i32(global0.c >> (global0.e.x % 32u), _wgslsmith_sub_i32(23878i, u_input.c)) << (global0.a.x % 32u)) | ~4773i, countOneBits(u_input.a), ~(~global0.e));
    let var_1 = min(~vec3<u32>(func_4(Struct_2(Struct_1(vec4<u32>(11500u, global0.e.x, global0.e.x, 43906u), global0.b, u_input.b.x, u_input.a, vec2<u32>(global0.a.x, 35379u)), Struct_1(global0.a, false, global0.c, -2147483647i, vec2<u32>(global0.a.x, global0.e.x))), Struct_1(vec4<u32>(4294967295u, global0.e.x, global0.a.x, global0.a.x), false, global0.d, u_input.a, vec2<u32>(global0.e.x, global0.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-240f, 505f, -853f, -857f) + vec4<f32>(-551f, -448f, 632f, 636f))).x, abs(1u), global0.e.x), ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(23631u, 0u, global0.e.x) & vec3<u32>(global0.e.x, 4294967295u, 22477u), global0.a.wyy), _wgslsmith_clamp_vec3_u32(global0.a.yzw, vec3<u32>(global0.e.x, global0.a.x, 48935u), ~vec3<u32>(41595u, global0.e.x, global0.a.x))));
    let var_2 = Struct_2(Struct_1(global0.a, true, ~88921i, select(-_wgslsmith_sub_i32(u_input.a, global0.c), _wgslsmith_mod_i32(-u_input.b.x, ~(-36054i)), !(!global0.b)), max(vec2<u32>(global0.e.x, global0.e.x), vec2<u32>(var_1.x, var_1.x & var_1.x))), Struct_1(~global0.a, var_0, -(-23907i ^ abs(u_input.b.x)), func_2(true).a.c, _wgslsmith_mult_vec2_u32(select(select(vec2<u32>(global0.e.x, 4294967295u), vec2<u32>(1u, 1u), global0.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.e.x, 1u), vec2<u32>(1u, var_1.x), vec2<u32>(1u, var_1.x)), !var_0), vec2<u32>(9419u, 4294967295u ^ var_1.x))));
    var var_3 = Struct_2(Struct_1(~abs(~vec4<u32>(var_2.a.e.x, 41759u, global0.e.x, 37243u)), var_2.b.b, ~_wgslsmith_mod_i32(~u_input.b.x, func_5(global0.b, Struct_1(vec4<u32>(global0.e.x, var_2.b.a.x, 24864u, 4294967295u), true, global0.d, u_input.a, global0.e), Struct_1(vec4<u32>(var_2.a.e.x, var_1.x, 4294967295u, var_1.x), var_2.b.b, u_input.c, 18368i, vec2<u32>(var_1.x, 59780u)), vec4<f32>(192f, -211f, -720f, 204f)).c), _wgslsmith_sub_i32(_wgslsmith_mult_i32(reverseBits(-2147483647i), u_input.b.x), abs(firstLeadingBit(var_2.b.d))), _wgslsmith_div_vec2_u32(select(global0.a.ww, select(global0.a.yx, vec2<u32>(1u, var_2.b.e.x), true), func_2(false).b.b), _wgslsmith_sub_vec2_u32(var_1.xy, firstLeadingBit(vec2<u32>(24925u, global0.a.x))))), func_5(func_1(u_input.c, 42969u).b, var_2.a, Struct_1(vec4<u32>(_wgslsmith_div_u32(var_2.a.a.x, var_2.b.a.x), 21731u, 4294967295u, ~4294967295u), !var_0, -func_5(true, var_2.a, Struct_1(vec4<u32>(8677u, 66642u, var_2.b.a.x, 96466u), true, global0.c, 66410i, vec2<u32>(var_2.a.e.x, 1u)), vec4<f32>(-797f, 657f, 710f, 1087f)).c, -(1i ^ u_input.c), ~(~vec2<u32>(global0.a.x, 31395u))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1110f, 334f, -1718f, -313f) * vec4<f32>(737f, 604f, 554f, -1974f)) - _wgslsmith_div_vec4_f32(vec4<f32>(798f, 767f, -1000f, 404f), vec4<f32>(1310f, -478f, 523f, 1616f)))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(885f + 419f), -696f, _wgslsmith_f_op_f32(sign(332f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(906f, 1097f, -454f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(266f, 1153f)), _wgslsmith_f_op_f32(1f - 1000f), _wgslsmith_f_op_f32(sign(-1221f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.b.d, 99896i, u_input.b.x), vec3<i32>(-2147483647i, -23751i, var_2.a.c)), -vec3<i32>(u_input.c, 0i, -33887i)), select(_wgslsmith_mult_vec3_i32(~(vec3<i32>(u_input.b.x, 5400i, 1i) ^ vec3<i32>(-25744i, u_input.b.x, var_3.a.d)), (vec3<i32>(u_input.a, -34366i, var_2.a.c) >> (vec3<u32>(4294967295u, 4294967295u, 30075u) % vec3<u32>(32u))) ^ vec3<i32>(-42092i, var_3.a.c, 2147483647i)), vec3<i32>(countOneBits(~var_3.a.d), 18409i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.c, 18601i), select(u_input.b, u_input.b, vec2<bool>(true, var_0)))), global0.b & var_0), 0i, select(var_3.a.a >> (~global0.a % vec4<u32>(32u)), var_3.b.a, (12124u ^ var_2.b.e.x) < var_3.a.e.x) >> ((vec4<u32>(~global0.a.x, var_3.b.e.x, ~27879u, var_3.a.e.x | 0u) & vec4<u32>(_wgslsmith_sub_u32(97401u, var_1.x), var_2.b.e.x, countOneBits(94572u), 1u)) % vec4<u32>(32u)));
}

