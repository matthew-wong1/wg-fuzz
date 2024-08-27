struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: i32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-37690i, 2147483647i, 0i, 0i), vec4<i32>(0i, 40502i, 28841i, -1i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_5) -> bool {
    global0 = Struct_1(vec4<i32>(max(_wgslsmith_mod_i32(~1675i, ~(-26382i)), 0i), 0i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(abs(arg_1.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, -1i), arg_1.b)), ~(~0i)), _wgslsmith_clamp_i32(44790i, 1i, 56769i)), arg_1.b);
    var var_0 = Struct_4(Struct_1(global0.b & _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a, arg_1.b.x, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.b.x, u_input.a, 0i, u_input.a), vec4<i32>(arg_1.b.x, u_input.a, -621i, arg_1.b.x), arg_1.b)), vec4<i32>(~u_input.a, global0.a.x, arg_1.b.x, -28240i)), Struct_3(vec4<i32>(max(u_input.a | global0.a.x, firstLeadingBit(arg_1.b.x)), 71615i, 0i, global0.b.x), _wgslsmith_sub_vec3_i32(abs(global0.b.xwz), -vec3<i32>(30691i, -2147483647i, arg_1.b.x)), Struct_2(~(global0.a.x >> (1u % 32u)), vec2<u32>(3774u, ~arg_0), Struct_1(reverseBits(global0.a), vec4<i32>(-24573i, u_input.a, 1i, u_input.a))), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(0u, 4294967295u), _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0, 0u), 22187u), arg_1.a.x)), Struct_2(-854i, countOneBits(arg_1.a.wx << (arg_1.a.ww % vec2<u32>(32u))) & (vec2<u32>(arg_1.a.x, arg_0) & ~arg_1.a.zy), Struct_1(vec4<i32>(countOneBits(-27948i), select(arg_1.b.x, global0.b.x, false), global0.b.x, firstTrailingBit(-1i)), abs(arg_1.b))), _wgslsmith_dot_vec2_i32(min(vec2<i32>(global0.a.x, 49003i), -arg_1.b.yx) & vec2<i32>(global0.b.x, _wgslsmith_mod_i32(-14512i, u_input.a)), countOneBits(vec2<i32>(3212i, global0.a.x) >> (~vec2<u32>(4746u, 4294967295u) % vec2<u32>(32u)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true && any(vec3<bool>(false, true, true))), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))));
    var_0 = Struct_4(Struct_1(abs(-global0.a >> ((arg_1.a >> (arg_1.a % vec4<u32>(32u))) % vec4<u32>(32u))), ~vec4<i32>(-23353i, var_0.a.b.x, firstLeadingBit(u_input.a), -global0.a.x)), var_0.b, Struct_2(-17710i, ~firstTrailingBit(min(vec2<u32>(47333u, var_0.b.d), vec2<u32>(1u, 20953u))), Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(global0.b, global0.b), vec4<i32>(u_input.a, global0.b.x, -55991i, u_input.a) & vec4<i32>(-2147483647i, -1i, var_0.a.a.x, -1i)), _wgslsmith_clamp_vec4_i32(global0.a, global0.a | vec4<i32>(-1i, arg_1.b.x, u_input.a, var_0.c.a), vec4<i32>(arg_1.b.x, -2147483647i, 29447i, arg_1.b.x) << (arg_1.a % vec4<u32>(32u))))), _wgslsmith_div_i32(-(~(-2147483647i) << (_wgslsmith_mult_u32(34382u, var_0.b.d) % 32u)), max(-_wgslsmith_sub_i32(54532i, u_input.a), u_input.a)), var_0.e);
    var_0 = Struct_4(var_0.a, Struct_3(global0.a, vec3<i32>(26608i, global0.b.x, 1i) | firstLeadingBit(_wgslsmith_clamp_vec3_i32(global0.b.zyz, vec3<i32>(global0.b.x, arg_1.b.x, var_0.c.a), global0.b.wxx)), var_0.b.c, max(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, 0u), var_0.c.b))), var_0.b.c, reverseBits(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(arg_1.b.x, u_input.a, u_input.a, arg_1.b.x), arg_1.b, var_0.e.x), _wgslsmith_mod_vec4_i32(min(vec4<i32>(-15199i, -51350i, arg_1.b.x, -2147483647i), vec4<i32>(global0.b.x, var_0.c.a, global0.b.x, var_0.a.b.x)), vec4<i32>(u_input.a, u_input.a, arg_1.b.x, global0.b.x)))), select(!select(!vec3<bool>(false, var_0.e.x, var_0.e.x), vec3<bool>(false, false, false), any(var_0.e)), var_0.e, all(!select(var_0.e, vec3<bool>(var_0.e.x, false, true), var_0.e.x))));
    var var_1 = select(vec3<bool>(false, true, !var_0.e.x), !(!var_0.e), var_0.e);
    return var_0.e.x;
}

fn func_2() -> vec2<u32> {
    var var_0 = !(!(!vec4<bool>(true, true, all(vec3<bool>(true, false, true)), false)));
    var_0 = select(vec4<bool>(true, all(select(vec3<bool>(var_0.x, false, false), !var_0.wxz, false)), true, any(vec3<bool>(func_3(27179u, Struct_5(vec4<u32>(103881u, 100315u, 4294967295u, 25802u), vec4<i32>(global0.b.x, u_input.a, u_input.a, global0.a.x))), true, false))), vec4<bool>(!(true | (-2147483647i >= u_input.a)), var_0.x != true, true, true), true);
    var_0 = !vec4<bool>(!all(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true, !(!all(vec3<bool>(var_0.x, false, true))), all(vec4<bool>(select(var_0.x, false, var_0.x), var_0.x || var_0.x, var_0.x, true)));
    var var_1 = ~select(abs(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), var_0.x & true)), ~vec4<u32>(abs(30597u), _wgslsmith_div_u32(38245u, 82409u), countOneBits(12484u), ~17225u), !any(var_0.wy));
    global0 = Struct_1(vec4<i32>(1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-24136i, 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), global0.a.xz)), -3787i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(12109i, 1i, -430i, u_input.a), global0.b, vec4<bool>(var_0.x, var_0.x, false, var_0.x)), global0.a << (vec4<u32>(var_1.x, var_1.x, 6128u, 0u) % vec4<u32>(32u))) >> (~var_1.x % 32u)), firstTrailingBit(global0.b) >> (vec4<u32>(min(~var_1.x, 1u), var_1.x, var_1.x, var_1.x) % vec4<u32>(32u)));
    return _wgslsmith_sub_vec2_u32(~var_1.zy, ~vec2<u32>(0u, var_1.x));
}

fn func_1() -> Struct_1 {
    var var_0 = firstLeadingBit(func_2());
    let var_1 = Struct_4(Struct_1(select(-vec4<i32>(-2147483647i, u_input.a, global0.a.x, global0.a.x) ^ global0.a, ~(vec4<i32>(u_input.a, -2147483647i, global0.a.x, u_input.a) >> (vec4<u32>(var_0.x, var_0.x, var_0.x, 0u) % vec4<u32>(32u))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, false), true)), global0.a), Struct_3(max(vec4<i32>(8901i, u_input.a, 0i, abs(global0.b.x)), global0.a), _wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(1i, global0.b.x), global0.a.x << (var_0.x % 32u)), global0.b.wxw), Struct_2(32071i, ~(~vec2<u32>(var_0.x, 74138u)), Struct_1(~global0.b, ~global0.b)), ~_wgslsmith_mult_u32(~1u, abs(var_0.x))), Struct_2(u_input.a, vec2<u32>(24138u, var_0.x) | ~vec2<u32>(55120u, var_0.x), Struct_1(global0.b, ~vec4<i32>(-20521i, global0.a.x, 2147483647i, global0.b.x) >> (select(vec4<u32>(var_0.x, 0u, 3848u, var_0.x), vec4<u32>(29008u, var_0.x, var_0.x, 1u), vec4<bool>(false, true, true, false)) % vec4<u32>(32u)))), _wgslsmith_add_i32(~global0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.b.x, u_input.a, global0.b.x), global0.a)) | -1i, vec3<bool>(true, all(vec3<bool>(true, true, global0.b.x > 15831i)), false));
    global0 = Struct_1(global0.a, var_1.a.a);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1960f)), _wgslsmith_f_op_f32(-1236f * 1441f));
    var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, var_1.b.d), vec2<u32>(var_1.c.b.x, var_0.x)), ~vec2<u32>(4294967295u, 18547u)), max(_wgslsmith_dot_vec2_u32(var_1.c.b, var_1.b.c.b), 35425u)), vec2<u32>(0u, _wgslsmith_mult_u32(~var_0.x, ~1u))), abs(vec2<u32>(1u, ~54162u | _wgslsmith_mult_u32(var_0.x, var_0.x))), var_1.c.b);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -663f), _wgslsmith_f_op_f32(round(-276f)));
    global0 = func_1();
    let var_1 = select(vec3<bool>((false && all(vec3<bool>(true, true, false))) & false, true, all(vec2<bool>(true, true))), vec3<bool>(any(vec3<bool>(select(false, true, false), true, select(true, true, true))), false, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    let var_2 = Struct_4(func_1(), Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(39878i, global0.b.x, 53950i, ~(-16993i)), vec4<i32>(global0.b.x, firstLeadingBit(844i), _wgslsmith_sub_i32(-21201i, u_input.a), select(-27254i, u_input.a, true))), vec3<i32>(-1i, firstTrailingBit(-39881i), ~(-1i)), Struct_2(abs(u_input.a), vec2<u32>(7393u, 16477u), func_1()), ~_wgslsmith_sub_u32(~53547u, 1u)), Struct_2(global0.a.x, _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 107480u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), func_1()), global0.b.x, var_1);
    let var_3 = Struct_1(firstLeadingBit(vec4<i32>(-57948i, global0.b.x, -1i, -1i) ^ global0.b) << (~(~(~vec4<u32>(4309u, 0u, var_2.b.d, var_2.c.b.x))) % vec4<u32>(32u)), vec4<i32>(countOneBits(~_wgslsmith_clamp_i32(global0.b.x, 0i, -22384i)), 1i, -2147483647i, _wgslsmith_mod_i32(abs(-3359i), abs(-11272i))));
    let var_4 = Struct_4(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(var_3.a.x), _wgslsmith_mult_i32(1i, -1i), max(var_2.c.a, -13134i), 1i), _wgslsmith_mod_vec4_i32(var_2.a.b, vec4<i32>(-24698i, u_input.a, 56728i, var_2.b.c.a) ^ var_3.a)), var_3.b), var_2.b, var_2.b.c, ~(-1i), select(select(var_2.e, var_2.e, !var_1.x), var_2.e, !select(select(vec3<bool>(var_2.e.x, var_1.x, true), vec3<bool>(true, false, false), var_1), vec3<bool>(var_2.e.x, var_1.x, var_1.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(859f * 946f))))), _wgslsmith_add_vec2_u32(var_2.c.b, vec2<u32>(16256u, var_4.b.d >> (var_4.c.b.x % 32u))) << (vec2<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_4.c.b.x, 3325u, var_4.b.c.b.x), vec3<u32>(var_2.b.c.b.x, var_2.b.d, var_4.b.d)), vec3<u32>(var_2.c.b.x, var_2.c.b.x, var_2.c.b.x)), var_2.b.d) % vec2<u32>(32u)), ~_wgslsmith_div_i32(var_4.a.a.x, 55929i), vec3<u32>(1u, 1u, max(_wgslsmith_mod_u32(countOneBits(var_2.c.b.x), var_2.b.c.b.x), ~var_2.b.d)), _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(-1i), -1i, global0.b.x) | var_4.c.c.b.yxw, ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), var_2.a.a.xxy) & func_1().a.www));
}

