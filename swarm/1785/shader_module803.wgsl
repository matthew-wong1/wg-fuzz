struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<bool>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(28844i);

var<private> global1: vec2<f32> = vec2<f32>(-1153f, 511f);

var<private> global2: bool;

var<private> global3: vec4<bool>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(vec2<bool>(false, global3.x), false, !vec2<bool>(global3.x, u_input.c <= u_input.c), abs(-(~vec4<i32>(u_input.a, -14860i, -2147483647i, global0.a))), ~abs(vec3<u32>(0u, 2828u, 4294967295u) << (vec3<u32>(u_input.c, 88u, u_input.c) % vec3<u32>(32u)))), Struct_1(global3.xw, !(!global3.x & true), global3.wz, ~(-vec4<i32>(global0.a, global0.a, -26995i, -61969i)), vec3<u32>(31403u, 30382u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 11898u, u_input.c), vec4<u32>(u_input.c, 96043u, u_input.c, 4294967295u)))));
    return ~0u;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(arg_0.xz, abs(~select(31062u, u_input.c, true)) > func_3(), vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(global1.x, 495f))) == _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-450f + 2128f))), 1192f < _wgslsmith_f_op_f32(sign(962f))), ~(vec4<i32>(_wgslsmith_div_i32(global0.a, -2147483647i), 3287i, -u_input.a, _wgslsmith_add_i32(17446i, -2147483647i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(44372u, 31809u, 4294967295u, 0u) << (vec4<u32>(0u, u_input.c, 0u, 101399u) % vec4<u32>(32u)), vec4<u32>(1u, 30359u, 1u, u_input.c)) % vec4<u32>(32u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 0u, _wgslsmith_sub_u32(arg_1, u_input.c)), firstLeadingBit(vec3<u32>(4294967295u, u_input.c, u_input.c)) | (vec3<u32>(1u, 31577u, arg_1) >> (vec3<u32>(14405u, 0u, u_input.c) % vec3<u32>(32u)))));
    var var_1 = Struct_2(var_0, Struct_1(vec2<bool>(false, !var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x - -326f))), select(vec2<bool>(false | var_0.c.x, var_0.a.x), select(select(var_0.c, global3.wx, false), vec2<bool>(true, global3.x), true), (arg_1 != arg_1) || any(vec3<bool>(true, global3.x, true))), var_0.d, ~var_0.e));
    var_1 = Struct_2(Struct_1(vec2<bool>(false, var_1.a.c.x), var_0.a.x == !(!var_0.a.x), !var_1.a.c, abs(vec4<i32>(_wgslsmith_clamp_i32(-42583i, global0.a, global0.a), var_0.d.x, ~arg_2, global0.a)), select(var_0.e, vec3<u32>(52137u, u_input.c, arg_1) & var_0.e, select(var_0.a.x, false, var_1.b.a.x)) << (var_0.e % vec3<u32>(32u))), var_0);
    var_1 = Struct_2(Struct_1(var_0.a, select(global1.x <= 1000f, global3.x, var_1.b.c.x), select(select(arg_0.zx, vec2<bool>(arg_0.x, true), select(vec2<bool>(false, true), global3.wx, vec2<bool>(var_1.a.a.x, true))), var_0.a, any(select(vec4<bool>(var_0.b, true, false, false), vec4<bool>(var_1.a.a.x, true, false, false), vec4<bool>(var_1.a.c.x, false, false, true)))), -(~(~vec4<i32>(1i, 0i, 0i, arg_2))), ~vec3<u32>(~95603u, ~var_1.b.e.x, var_1.a.e.x)), Struct_1(vec2<bool>(true, global3.x), false, arg_0.xz, _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(var_0.d, vec4<i32>(1i, -28016i, 7797i, var_0.d.x)), var_0.d), ~firstLeadingBit(select(var_1.a.e, var_1.b.e, false))));
    global2 = !(_wgslsmith_f_op_f32(global1.x * -1000f) >= 1271f);
    return Struct_1(select(!var_0.c, vec2<bool>(false, all(arg_0)), false), false, select(!(!vec2<bool>(arg_0.x, false)), vec2<bool>(true, arg_0.x), select(var_1.a.c, !vec2<bool>(true, var_0.a.x), !var_1.b.a)), _wgslsmith_mult_vec4_i32(var_1.b.d, ~vec4<i32>(var_1.b.d.x ^ arg_2, -37798i, i32(-1i) * -7670i, _wgslsmith_sub_i32(u_input.b, arg_2))), ~vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.e, var_1.b.e | var_0.e), var_0.e.x, ~(~arg_1)));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global3 = !(!vec4<bool>(true, !func_2(vec3<bool>(global3.x, true, false), 32386u, -1i).b, !any(arg_1.c), all(vec2<bool>(arg_1.a.x, arg_1.c.x))));
    let var_0 = Struct_1(vec2<bool>(false, !all(!vec2<bool>(true, global3.x))), true, !vec2<bool>(arg_1.a.x, arg_1.e.x > 4294967295u), ~vec4<i32>(u_input.e, _wgslsmith_dot_vec4_i32(~arg_1.d, vec4<i32>(u_input.a, arg_1.d.x, u_input.d, 1i)), 1i, ~_wgslsmith_sub_i32(-34586i, 0i)), ~(~abs(vec3<u32>(u_input.c, 962u, arg_1.e.x))) << (vec3<u32>(u_input.c, 89102u, _wgslsmith_div_u32(1u, arg_1.e.x) | ~arg_1.e.x) % vec3<u32>(32u)));
    let var_1 = !select(!(!select(vec4<bool>(var_0.b, global3.x, true, false), vec4<bool>(var_0.b, false, var_0.a.x, false), vec4<bool>(arg_1.c.x, var_0.b, false, true))), !select(vec4<bool>(arg_1.c.x, false, var_0.c.x, false), !vec4<bool>(arg_1.a.x, global3.x, true, global3.x), !vec4<bool>(false, global3.x, var_0.b, arg_0)), !vec4<bool>(any(vec4<bool>(global3.x, true, false, true)), global3.x != true, false != arg_1.c.x, false || global3.x));
    global2 = func_2(var_1.xzy, u_input.c, _wgslsmith_mod_i32(31934i, u_input.e)).c.x;
    var var_2 = vec4<f32>(466f, global1.x, global1.x, global1.x);
    return func_2(vec3<bool>(~reverseBits(4294967295u) > ~(70925u >> (arg_1.e.x % 32u)), any(!(!vec3<bool>(global3.x, global3.x, false))), true), 80192u, -1i);
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    return !select(vec4<bool>(func_4(global3.x, arg_0).a.x || false, ~u_input.c <= (arg_0.e.x << (72836u % 32u)), global0.a >= 1i, true), vec4<bool>(~arg_0.d.x > -19445i, arg_0.a.x, countOneBits(arg_0.e.x) >= arg_0.e.x, !any(global3.yzw)), select(select(select(vec4<bool>(arg_0.a.x, true, false, arg_0.b), vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x), arg_0.b), vec4<bool>(false, true, true, arg_0.b), !vec4<bool>(arg_0.c.x, false, true, global3.x)), vec4<bool>(false, true, global3.x, 1i < u_input.b), true));
}

fn func_1() -> i32 {
    let var_0 = i32(-1i) * -((_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global0.a), vec2<i32>(global0.a, -16237i)) ^ u_input.b) << (4294967295u % 32u));
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.x) - vec2<f32>(global1.x, global1.x)))))));
    let var_1 = select(!(!select(vec4<bool>(true, global3.x, false, global3.x), select(vec4<bool>(false, global3.x, true, global3.x), vec4<bool>(global3.x, global3.x, false, global3.x), global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x))), !func_5(func_4(global3.x, func_2(vec3<bool>(global3.x, global3.x, global3.x), u_input.c, u_input.e))), vec4<bool>(any(func_5(func_2(global3.yyy, u_input.c, u_input.d)).yw), global3.x, true, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_0, global0.a), vec3<i32>(-1i, u_input.b, global0.a)), vec3<i32>(86257i, 45468i, var_0) >> (vec3<u32>(61694u, 57773u, u_input.c) % vec3<u32>(32u))) <= ~(13891i >> (u_input.c % 32u))));
    let var_2 = Struct_1(vec2<bool>(global3.x, true), true, vec2<bool>(!(!var_1.x), global0.a >= (var_0 ^ -2147483647i)), vec4<i32>(~(-u_input.a), u_input.b << (31748u % 32u), -107785i, ~2147483647i), ~func_2(!func_5(Struct_1(vec2<bool>(true, true), false, global3.zy, vec4<i32>(1i, 30279i, 14812i, 1i), vec3<u32>(u_input.c, 4294967295u, 0u))).wyz, 9479u, 2147483647i).e);
    global0 = Struct_3(_wgslsmith_sub_i32(~14643i, _wgslsmith_add_i32(var_0 ^ -var_2.d.x, max(_wgslsmith_add_i32(u_input.b, 32332i), func_2(vec3<bool>(var_2.a.x, true, true), var_2.e.x, -2147483647i).d.x))));
    return 45706i;
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: vec3<i32>) -> bool {
    var var_0 = Struct_1(global3.zz, global3.x, func_4(true, func_2(!(!vec3<bool>(true, global3.x, global3.x)), _wgslsmith_add_u32(u_input.c, u_input.c), ~(~arg_2.x))).c, select(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a, -63744i, arg_0.a, -1i), ~vec4<i32>(u_input.a, global0.a, arg_2.x, -1i)), -vec4<i32>(abs(33934i), 24312i, 11898i, 7621i), any(!vec3<bool>(true, global3.x, false)) | global3.x), ~select(_wgslsmith_add_vec3_u32(~vec3<u32>(14659u, 4294967295u, 22047u), vec3<u32>(u_input.c, u_input.c, u_input.c) << (vec3<u32>(15615u, u_input.c, u_input.c) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 5729u), vec3<u32>(u_input.c, 58695u, u_input.c)), vec3<bool>(true, all(vec3<bool>(false, global3.x, global3.x)), u_input.c <= 37070u)));
    let var_1 = max(var_0.d.xyx, vec3<i32>(arg_2.x, 0i, 0i));
    let var_2 = ~abs(vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(2147483647i, 5776i, 1i, -2147483647i)) >> (var_0.e.x % 32u)));
    global1 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global1.x)))))));
    let var_3 = Struct_2(Struct_1(var_0.a, !func_2(global3.yxz, ~1u, ~1i).b, global3.zz, _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_0.d.x, u_input.d, -8859i), vec4<i32>(0i, arg_2.x, 1i, 0i)) | _wgslsmith_div_vec4_i32(var_0.d, var_0.d), vec3<u32>(_wgslsmith_mod_u32(u_input.c, _wgslsmith_add_u32(var_0.e.x, 32213u)), u_input.c, _wgslsmith_mult_u32(~u_input.c, 1u >> (u_input.c % 32u)))), Struct_1(global3.xz, var_0.b, global3.ww, ~countOneBits(vec4<i32>(var_2.x, 1i, -2147483647i, -2147483647i) | vec4<i32>(arg_0.a, -2147483647i, global0.a, arg_0.a)), ~vec3<u32>(_wgslsmith_div_u32(0u, var_0.e.x), u_input.c, max(0u, 1u))));
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = false;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-600f, global1.x));
    global3 = vec4<bool>(global3.x, all(select(!select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(global3.x, false, global3.x), global3.x), !global3.xxw, global3.wxy)), func_6(Struct_3(func_1() ^ ~(-1i)), global1.x, ~_wgslsmith_div_vec3_i32(abs(vec3<i32>(global0.a, -1i, 1i)), vec3<i32>(2147483647i, -53670i, 42313i) | vec3<i32>(global0.a, -5288i, global0.a))), func_5(func_2(select(vec3<bool>(false, true, false), global3.zyx, global3.ywy), select(_wgslsmith_sub_u32(u_input.c, u_input.c), 0u, !global3.x), -2147483647i)).x);
    global3 = !vec4<bool>(!func_6(Struct_3(global0.a), _wgslsmith_f_op_f32(f32(-1f) * -549f), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global0.a, 0i), vec3<i32>(39235i, global0.a, u_input.d), vec3<i32>(global0.a, -14827i, 62414i))), false, global3.x, func_4(64853u <= (u_input.c >> (u_input.c % 32u)), func_4(func_4(true, Struct_1(global3.xy, true, vec2<bool>(global3.x, false), vec4<i32>(54810i, 1i, u_input.e, u_input.d), vec3<u32>(57403u, u_input.c, u_input.c))).b, func_4(false, Struct_1(global3.yz, false, global3.xw, vec4<i32>(global0.a, global0.a, -40520i, -38042i), vec3<u32>(u_input.c, u_input.c, 7174u))))).a.x);
    var var_1 = Struct_1(vec2<bool>(global3.x, true), global3.x, vec2<bool>(func_5(func_2(!global3.zzz, _wgslsmith_mult_u32(u_input.c, 0u), _wgslsmith_sub_i32(1i, 2147483647i))).x, false), vec4<i32>(-firstLeadingBit(abs(16372i)), u_input.e, (i32(-1i) * -12798i) << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c, u_input.c, 1u, 48653u), vec4<u32>(u_input.c, u_input.c, 13882u, 51599u), global3.x), ~vec4<u32>(4294967295u, 49981u, u_input.c, u_input.c)) % 32u), u_input.d), _wgslsmith_add_vec3_u32(vec3<u32>(abs(~4294967295u), 9559u, u_input.c), ~(~vec3<u32>(u_input.c, 11129u, u_input.c))));
    var var_2 = var_1.c;
    let var_3 = ~var_1.e;
    let var_4 = !(!(!vec4<bool>(var_2.x, global0.a > var_1.d.x, 8414i != u_input.a, true)));
    var var_5 = _wgslsmith_mult_u32(4294967295u, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(firstLeadingBit(firstLeadingBit(-52985i)), -1i), -(~vec2<i32>(var_1.d.x, 10454i)), true), vec3<u32>(~select(~1u, u_input.c, global1.x != -2523f), var_1.e.x, 33399u), ~(var_3.x & _wgslsmith_mod_u32(u_input.c, ~u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))));
}

