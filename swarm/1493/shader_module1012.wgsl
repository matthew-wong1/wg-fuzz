struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<i32>(-1i, -15584i, -10588i, 2147483647i)), 0i, Struct_1(vec4<i32>(0i, -1i, 0i, 1i))), Struct_1(vec4<i32>(-1i, 1i, -75663i, 2951i)), true, Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -25216i, 683i, -23236i)), 1i, Struct_1(vec4<i32>(1i, 31397i, -67001i, 49487i))), Struct_2(Struct_1(vec4<i32>(1i, 15938i, 16494i, 2147483647i)), i32(-2147483648), Struct_1(vec4<i32>(-7962i, i32(-2147483648), -9768i, -1i))));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global1 = Struct_3(Struct_2(Struct_1(-_wgslsmith_add_vec4_i32(vec4<i32>(global1.b.a.x, global1.b.a.x, u_input.a.x, u_input.a.x), vec4<i32>(0i, 1264i, 2147483647i, -3638i))), _wgslsmith_clamp_i32(countOneBits(~32033i), max(_wgslsmith_dot_vec3_i32(global1.d.c.a.yxw, vec3<i32>(u_input.a.x, -26062i, u_input.a.x)), 25071i), global1.b.a.x), global1.b), global1.e.c, !any(select(vec4<bool>(global1.c, global1.c, false, global1.c), !vec4<bool>(global1.c, global1.c, global1.c, global1.c), all(vec2<bool>(false, global1.c)))), Struct_2(Struct_1(~_wgslsmith_add_vec4_i32(u_input.a, u_input.a)), -46772i, global1.e.a), global1.d);
    var var_0 = global1.c;
    var_0 = global1.c;
    var var_1 = Struct_4(Struct_3(global1.d, Struct_1(vec4<i32>(_wgslsmith_add_i32(2686i, global1.b.a.x), ~29507i, _wgslsmith_div_i32(2147483647i, global1.d.c.a.x), _wgslsmith_mult_i32(global1.e.a.a.x, -55724i))), (~u_input.c.x << (~u_input.c.x % 32u)) > select(~u_input.d, 3388u, global1.c && global1.c), Struct_2(global1.e.a, 22432i, Struct_1(vec4<i32>(-8530i, u_input.a.x, -2147483647i, -15686i) >> (vec4<u32>(0u, u_input.d, 30268u, u_input.b) % vec4<u32>(32u)))), global1.e), u_input.a.x, ~vec4<u32>(0u, ~max(4294967295u, u_input.b), u_input.d, _wgslsmith_mod_u32(~u_input.d, _wgslsmith_div_u32(515u, 25149u))));
    var var_2 = global1.c;
    return 287f;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = vec2<bool>(all(vec3<bool>(false, true, global1.c)), global1.c);
    var var_1 = ~(~vec2<u32>(u_input.d, ~_wgslsmith_div_u32(u_input.b, 16455u)));
    var var_2 = select(vec2<bool>(false, !var_0.x), !(!select(!vec2<bool>(global1.c, false), vec2<bool>(var_0.x, true), vec2<bool>(false, global1.c))), !var_0.x);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<f32>(1201f, -1361f, -1000f))) * -138f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-334f))))) + 1000f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, -450f))))))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-776f, 690f, var_2.x)) - _wgslsmith_div_f32(711f, 1456f)), -1223f) + 1000f) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - -372f)));
    return global1.e;
}

fn func_1() -> Struct_3 {
    global0 = ~firstLeadingBit(-40463i);
    global0 = ~reverseBits(-2350i);
    let var_0 = func_2(reverseBits(u_input.c));
    var var_1 = u_input.a.x ^ u_input.a.x;
    global1 = Struct_3(Struct_2(var_0.a, u_input.a.x, func_2(vec3<u32>(u_input.b, ~u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 4294967295u)))).c), func_2(u_input.c).c, _wgslsmith_dot_vec2_u32(u_input.c.yy, _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 24676u), vec2<u32>(1u, 45831u)), ~vec2<u32>(4294967295u, u_input.d))) > 1u, func_2(u_input.c ^ max(vec3<u32>(u_input.b, 0u, 4848u), u_input.c)), Struct_2(func_2(vec3<u32>(~u_input.c.x, u_input.c.x ^ 37455u, firstLeadingBit(53532u))).a, -45679i, func_2(u_input.c).a));
    return Struct_3(func_2(~u_input.c), global1.e.c, any(vec3<bool>(true, true, true)), func_2(_wgslsmith_add_vec3_u32(firstTrailingBit(~u_input.c), abs(u_input.c))), var_0);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_4 {
    var var_0 = true;
    var var_1 = arg_1;
    var var_2 = func_1();
    let var_3 = func_2(u_input.c).a;
    let var_4 = func_1().e.a;
    return Struct_4(func_1(), -63479i, vec4<u32>(~u_input.d, firstLeadingBit(~arg_1), ~(~(~20994u)), ~arg_1));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 360f, 501f, -101f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2298f), _wgslsmith_f_op_f32(-918f * -1158f), _wgslsmith_f_op_f32(f32(-1f) * -888f), 703f)))));
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(global1.d.a.a.x, reverseBits(_wgslsmith_sub_i32(-2147483647i, arg_3.a.x)), _wgslsmith_dot_vec3_i32(func_2(vec3<u32>(arg_2.c.x, 3110u, arg_2.c.x)).a.a.zxx, arg_3.a.xyy)) << (reverseBits(vec3<u32>(~1u, u_input.d, ~55375u)) % vec3<u32>(32u)), u_input.a.yww);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 1803f, var_0.x, 1602f)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-978f, var_0.x, -310f, var_0.x) - vec4<f32>(-810f, 176f, -194f, 1889f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(409f, 689f, var_0.x, -1514f))))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.x, 1425f), _wgslsmith_f_op_f32(min(-137f, var_0.x)), var_0.x, _wgslsmith_div_f32(var_0.x, 793f)), vec4<f32>(-980f, 1116f, -1315f, var_0.x)), !vec4<bool>(!arg_2.a.c, all(vec2<bool>(true, false)), !global1.c, false))));
    let var_1 = arg_2.b;
    let var_2 = select(select(vec2<bool>((arg_2.a.c && true) & arg_2.a.c, func_1().c), !vec2<bool>(true, func_1().c), global1.c), select(!select(select(vec2<bool>(true, true), vec2<bool>(global1.c, false), vec2<bool>(global1.c, global1.c)), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(true, true), !vec2<bool>(true, u_input.c.x >= 0u)), vec2<bool>(select((global1.c != true) | global1.c, false, !(!arg_2.a.c)), any(vec3<bool>(func_1().c, true, arg_2.a.c))));
    return arg_2;
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_4) -> u32 {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(arg_3.a.b.a.x, ~global1.b.a.x), select(arg_3.a.e.c.a.zz, countOneBits(u_input.a.yz), select(vec2<bool>(global1.c, arg_3.a.c), vec2<bool>(true, false), true)));
    var var_1 = global1.a.a.a.x;
    var var_2 = func_5(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~arg_3.c.ywy, arg_3.c.wyz), ~_wgslsmith_dot_vec2_u32(arg_3.c.xw, arg_3.c.yx)), vec3<u32>(~44304u, 1u >> (~4294967295u % 32u), ~(arg_3.c.x >> (7050u % 32u)))), Struct_2(func_1().a.a, 18994i & _wgslsmith_dot_vec3_i32(-global1.a.c.a.yww, arg_2.xxw ^ arg_3.a.b.a.wxy), Struct_1(~u_input.a)), arg_3, Struct_1(vec4<i32>(~12886i, arg_2.x, 0i, u_input.a.x) & u_input.a)).a.b;
    let var_3 = func_5(~(~u_input.c), arg_3.a.a, func_5(_wgslsmith_add_vec3_u32(arg_3.c.zwz, func_5(~vec3<u32>(22423u, arg_3.c.x, arg_3.c.x), Struct_2(arg_3.a.a.a, -1451i, Struct_1(vec4<i32>(arg_2.x, u_input.a.x, arg_2.x, -17171i))), Struct_4(Struct_3(arg_3.a.d, global1.b, false, Struct_2(Struct_1(vec4<i32>(var_0.x, 16328i, 11508i, arg_3.a.e.c.a.x)), 14863i, arg_3.a.d.c), arg_3.a.a), global1.a.a.a.x, vec4<u32>(1u, u_input.c.x, 64940u, 938u)), func_1().e.c).c.xzw), func_1().d, arg_3, arg_3.a.e.c), Struct_1(select(-(arg_2 << (arg_3.c % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(var_2.a >> (arg_3.c % vec4<u32>(32u)), func_2(vec3<u32>(arg_3.c.x, u_input.b, arg_3.c.x)).a.a), true)));
    var var_4 = !select(select(vec4<bool>(false && global1.c, var_0.x == -1i, 35849u > arg_0, arg_3.a.c), vec4<bool>(all(vec2<bool>(false, true)), true, true, select(false, false, false)), select(select(vec4<bool>(var_3.a.c, true, false, var_3.a.c), vec4<bool>(true, true, false, true), var_3.a.c), vec4<bool>(true, arg_3.a.c, arg_3.a.c, global1.c), !vec4<bool>(var_3.a.c, var_3.a.c, arg_3.a.c, arg_3.a.c))), !vec4<bool>(global1.c, true, func_5(arg_3.c.wzw, Struct_2(var_3.a.d.a, var_2.a.x, Struct_1(var_2.a)), Struct_4(var_3.a, 44516i, var_3.c), Struct_1(vec4<i32>(1i, 0i, -1396i, 50109i))).a.c, true), var_3.a.c);
    return ~firstTrailingBit(abs(~(u_input.c.x | arg_3.c.x)));
}

fn func_7(arg_0: u32, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_3 {
    global1 = arg_1;
    var var_0 = func_4(Struct_3(func_2(_wgslsmith_add_vec3_u32(select(u_input.c, u_input.c, arg_1.c), u_input.c)), arg_1.e.a, true, Struct_2(func_5(u_input.c, global1.e, Struct_4(Struct_3(Struct_2(global1.a.c, -1i, Struct_1(vec4<i32>(u_input.a.x, 14530i, -1435i, u_input.a.x))), global1.a.a, arg_1.c, global1.d, global1.a), global1.b.a.x, vec4<u32>(u_input.d, arg_0, 21462u, 79232u)), Struct_1(global1.b.a)).a.b, global1.d.c.a.x, Struct_1(arg_1.b.a)), global1.a), u_input.b);
    let var_1 = ~u_input.c.xx;
    let var_2 = arg_2.x;
    let var_3 = func_1();
    return func_4(Struct_3(func_1().a, var_3.a.c, !(!(!arg_1.c)), Struct_2(var_0.a.e.a, u_input.a.x, Struct_1(_wgslsmith_add_vec4_i32(var_3.b.a, vec4<i32>(10592i, arg_1.d.b, 0i, u_input.a.x)))), arg_1.e), u_input.b).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(func_6(~(~u_input.d) << (u_input.c.x % 32u), _wgslsmith_f_op_f32(-1005f - _wgslsmith_div_f32(515f, -631f)), -u_input.a, func_5(u_input.c, global1.e, func_4(func_1(), 23360u), global1.e.a)), Struct_3(Struct_2(Struct_1(-global1.a.c.a), -1i, global1.e.c), global1.b, true, Struct_2(Struct_1(-vec4<i32>(10668i, global1.b.a.x, 2147483647i, -5975i)), global1.a.a.a.x, func_4(Struct_3(global1.a, global1.b, true, Struct_2(global1.b, u_input.a.x, global1.d.c), Struct_2(global1.b, -37507i, global1.e.a)), 1u).a.b), Struct_2(func_1().d.c, _wgslsmith_div_i32(17884i, global1.a.c.a.x), Struct_1(_wgslsmith_mult_vec4_i32(global1.d.c.a, global1.d.c.a)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1099f, -1407f, -304f, -991f), vec4<f32>(236f, -601f, -209f, 1631f), vec4<bool>(false, true, global1.c, false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2104f, 1335f, 251f, 958f) * vec4<f32>(355f, -578f, -707f, 872f))))), vec4<f32>(-846f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1259f * 887f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1438f + -932f))), _wgslsmith_f_op_f32(max(141f, _wgslsmith_f_op_f32(round(919f))))))));
    var var_0 = 1048f;
    var var_1 = global1.a.a;
    var var_2 = func_4(func_4(Struct_3(func_4(Struct_3(global1.a, global1.e.c, global1.c, global1.a, global1.e), func_4(Struct_3(Struct_2(global1.a.a, 15772i, Struct_1(var_1.a)), Struct_1(vec4<i32>(-1i, global1.e.b, u_input.a.x, global1.b.a.x)), true, Struct_2(Struct_1(vec4<i32>(-44177i, -26623i, global1.a.c.a.x, -1444i)), -1i, global1.d.a), global1.d), u_input.d).c.x).a.e, global1.e.c, any(select(vec4<bool>(global1.c, global1.c, global1.c, global1.c), vec4<bool>(true, false, false, false), vec4<bool>(true, global1.c, global1.c, true))), Struct_2(Struct_1(global1.d.a.a), var_1.a.x, func_4(Struct_3(global1.e, global1.b, false, global1.e, Struct_2(global1.b, u_input.a.x, global1.e.c)), u_input.b).a.a.c), func_4(Struct_3(global1.e, Struct_1(vec4<i32>(-39354i, -59968i, u_input.a.x, 69140i)), false, Struct_2(Struct_1(global1.d.c.a), 0i, Struct_1(u_input.a)), global1.d), u_input.c.x).a.d), _wgslsmith_sub_u32(u_input.d, ~11052u) ^ _wgslsmith_clamp_u32(select(35128u, 1u, global1.c), 4294967295u, ~4294967295u)).a, func_6(min(reverseBits(1u), 77732u), 1967f, _wgslsmith_sub_vec4_i32(countOneBits(global1.d.a.a), vec4<i32>(var_1.a.x, var_1.a.x, _wgslsmith_sub_i32(-31407i, var_1.a.x), _wgslsmith_dot_vec3_i32(global1.e.a.a.xyy, vec3<i32>(u_input.a.x, u_input.a.x, global1.d.c.a.x)))), Struct_4(func_4(Struct_3(Struct_2(global1.e.a, -40199i, Struct_1(vec4<i32>(-1i, global1.a.b, global1.a.a.a.x, var_1.a.x))), Struct_1(vec4<i32>(-9366i, 30192i, -2147483647i, -14738i)), false, global1.d, global1.a), u_input.b).a, max(-2147483647i, -17188i | u_input.a.x), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(43897u, 5317u, 46715u, 58448u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, u_input.d)), func_5(u_input.c, global1.d, Struct_4(Struct_3(Struct_2(Struct_1(vec4<i32>(global1.a.a.a.x, u_input.a.x, 3102i, 63319i)), 1i, Struct_1(u_input.a)), global1.e.c, true, Struct_2(Struct_1(vec4<i32>(-35056i, var_1.a.x, -45437i, var_1.a.x)), -1i, global1.a.c), Struct_2(global1.b, var_1.a.x, global1.e.a)), u_input.a.x, vec4<u32>(16288u, 17590u, 54661u, 90934u)), Struct_1(var_1.a)).c))));
    global1 = var_2.a;
    let var_3 = var_2.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-669f)), _wgslsmith_div_f32(1392f, 776f), _wgslsmith_f_op_f32(f32(-1f) * -2662f), 108f))), ~(-13044i), -firstTrailingBit((var_2.a.e.a.a.yx << (vec2<u32>(u_input.c.x, 4294967295u) % vec2<u32>(32u))) & reverseBits(vec2<i32>(23505i, 0i))), ~var_2.c.wx);
}

