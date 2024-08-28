struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec2<i32>(1i, 2147483647i), Struct_1(4294967295u, vec4<bool>(true, false, true, false), true, vec4<i32>(-1i, 182i, 0i, -7110i))), Struct_2(vec2<i32>(-29158i, -28559i), Struct_1(1u, vec4<bool>(true, true, false, false), false, vec4<i32>(-42840i, 0i, 1i, -4505i))), Struct_2(vec2<i32>(2147483647i, 19561i), Struct_1(4294967295u, vec4<bool>(true, true, false, true), false, vec4<i32>(55816i, -1i, i32(-2147483648), 0i))), Struct_2(vec2<i32>(i32(-2147483648), 27077i), Struct_1(19469u, vec4<bool>(false, false, false, true), true, vec4<i32>(13274i, 40230i, -9819i, 27894i))), Struct_2(vec2<i32>(-39871i, -778i), Struct_1(4294967295u, vec4<bool>(false, false, true, true), false, vec4<i32>(-28770i, -39358i, 0i, -1i))), Struct_2(vec2<i32>(7350i, -58845i), Struct_1(1u, vec4<bool>(true, false, true, true), false, vec4<i32>(-24081i, 1852i, 0i, 91413i))), Struct_2(vec2<i32>(1i, 12688i), Struct_1(20867u, vec4<bool>(true, false, false, false), true, vec4<i32>(i32(-2147483648), 0i, -5749i, 1i))), Struct_2(vec2<i32>(1i, 47790i), Struct_1(41941u, vec4<bool>(true, false, false, false), true, vec4<i32>(35010i, -5433i, -50790i, -2790i))), Struct_2(vec2<i32>(-5911i, -66584i), Struct_1(4294967295u, vec4<bool>(false, true, true, true), true, vec4<i32>(-53248i, i32(-2147483648), 1i, i32(-2147483648)))), Struct_2(vec2<i32>(8835i, 7796i), Struct_1(4294967295u, vec4<bool>(false, true, false, false), true, vec4<i32>(6442i, -1i, -27076i, -66217i))), Struct_2(vec2<i32>(i32(-2147483648), 1i), Struct_1(16660u, vec4<bool>(false, true, false, true), true, vec4<i32>(1i, -34595i, -31104i, -1i))), Struct_2(vec2<i32>(-1i, -21752i), Struct_1(26359u, vec4<bool>(true, false, true, true), true, vec4<i32>(i32(-2147483648), 1408i, -1i, 37654i))), Struct_2(vec2<i32>(2147483647i, 0i), Struct_1(5647u, vec4<bool>(true, true, false, false), true, vec4<i32>(-5956i, 0i, -35377i, 2147483647i))), Struct_2(vec2<i32>(1i, 46561i), Struct_1(52197u, vec4<bool>(true, false, true, true), false, vec4<i32>(-5308i, 1627i, -1i, 0i))), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(33510u, vec4<bool>(false, false, false, true), true, vec4<i32>(56499i, 2147483647i, 2147483647i, 1i))), Struct_2(vec2<i32>(0i, -1i), Struct_1(4114u, vec4<bool>(false, false, false, true), true, vec4<i32>(31821i, 28406i, 0i, 0i))), Struct_2(vec2<i32>(-1i, 2698i), Struct_1(1u, vec4<bool>(true, false, false, false), false, vec4<i32>(-16343i, -19245i, -29842i, 0i))), Struct_2(vec2<i32>(2147483647i, 1i), Struct_1(1u, vec4<bool>(true, false, true, false), false, vec4<i32>(-5154i, 2147483647i, -28547i, -18745i))), Struct_2(vec2<i32>(i32(-2147483648), 0i), Struct_1(1u, vec4<bool>(false, true, true, true), false, vec4<i32>(2147483647i, i32(-2147483648), -8611i, -1i))), Struct_2(vec2<i32>(-9039i, i32(-2147483648)), Struct_1(35702u, vec4<bool>(true, true, true, true), false, vec4<i32>(2147483647i, 12054i, -20316i, -13959i))), Struct_2(vec2<i32>(61366i, 42723i), Struct_1(1u, vec4<bool>(true, true, false, false), false, vec4<i32>(7447i, 1i, -37142i, -18988i))), Struct_2(vec2<i32>(0i, 27667i), Struct_1(1u, vec4<bool>(true, true, true, true), false, vec4<i32>(44012i, -1i, 2147483647i, 31243i))), Struct_2(vec2<i32>(-16650i, 0i), Struct_1(14246u, vec4<bool>(false, true, false, false), false, vec4<i32>(i32(-2147483648), 0i, 2147483647i, -24910i))), Struct_2(vec2<i32>(2147483647i, 12174i), Struct_1(1u, vec4<bool>(false, false, true, true), false, vec4<i32>(-34320i, 0i, -41635i, 21846i))), Struct_2(vec2<i32>(41i, -6888i), Struct_1(4294967295u, vec4<bool>(false, false, true, false), false, vec4<i32>(i32(-2147483648), -1i, 0i, 18527i))), Struct_2(vec2<i32>(0i, 2147483647i), Struct_1(1u, vec4<bool>(true, false, false, true), false, vec4<i32>(6134i, i32(-2147483648), -14252i, -23828i))), Struct_2(vec2<i32>(-17057i, 0i), Struct_1(39830u, vec4<bool>(false, true, false, false), false, vec4<i32>(0i, -1i, 38934i, i32(-2147483648)))));

var<private> global2: bool;

var<private> global3: u32;

var<private> global4: Struct_3;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> u32 {
    return ~(~global4.d.b.a);
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    global2 = global0.e.x;
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1099f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1192f, -1027f, false)) * _wgslsmith_f_op_f32(abs(449f)))))));
    global2 = 447f <= _wgslsmith_f_op_f32(select(-826f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(var_0.x + 896f))) - _wgslsmith_f_op_f32(round(var_0.x))), false));
    global0 = Struct_3(global0.a, !(!arg_0.b.b.yzw), arg_0.b, global1[_wgslsmith_index_u32(48892u, 27u)], vec2<bool>(all(global4.c.b.yyz), true));
    var var_1 = arg_0.b.a;
    return select(_wgslsmith_div_vec2_i32(global4.d.b.d.xy, _wgslsmith_mod_vec2_i32(global0.d.a >> (select(vec2<u32>(4294967295u, 95026u), vec2<u32>(7549u, 1u), global0.e) % vec2<u32>(32u)), global0.d.b.d.yy)), abs(vec2<i32>(arg_0.a.x, -global0.c.d.x)), vec2<bool>(!global4.e.x, false));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: f32) -> Struct_4 {
    global3 = ~52407u;
    global0 = arg_2;
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-6036i, arg_2.c.d.x), _wgslsmith_sub_i32(arg_2.d.b.d.x, 42449i), i32(-1i) * -2147483647i) >> (arg_2.d.b.a % 32u), _wgslsmith_dot_vec3_i32(max(-vec3<i32>(u_input.a.x, -1i, global0.d.b.d.x), _wgslsmith_mult_vec3_i32(global0.d.b.d.xwx, arg_2.c.d.yyx)), vec3<i32>(-1i) * -arg_2.d.b.d.yww), _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b.x, arg_2.d.a.x), func_3(Struct_2(arg_2.c.d.yw, arg_2.d.b))), 1i) ^ global4.d.b.d;
    var var_1 = arg_2;
    global0 = Struct_3(_wgslsmith_mult_u32(_wgslsmith_add_u32(reverseBits(~22898u), _wgslsmith_clamp_u32(global0.d.b.a | global4.d.b.a, arg_2.d.b.a << (4294967295u % 32u), ~global0.a)), global4.c.a), !select(arg_2.b, vec3<bool>(any(vec3<bool>(false, false, true)), arg_0.x, false), !global0.b.x), Struct_1(_wgslsmith_mod_u32(62562u, ~1u), select(vec4<bool>(global0.c.b.x, any(global4.d.b.b), true, !global4.b.x), vec4<bool>(global4.b.x, true, false, true), select(vec4<bool>(true, global0.c.c, arg_0.x, global0.b.x), var_1.c.b, vec4<bool>(global0.c.c, false, arg_0.x, false))), 8194i < _wgslsmith_add_i32(global4.c.d.x, _wgslsmith_mod_i32(0i, var_1.d.b.d.x)), ~global4.d.b.d), Struct_2(vec2<i32>(2147483647i, arg_2.c.d.x), Struct_1(_wgslsmith_add_u32(~4294967295u, u_input.c), select(select(global4.c.b, global4.c.b, global0.d.b.b.x), vec4<bool>(var_1.b.x, false, false, false), arg_0.x), arg_2.b.x, global4.c.d)), vec2<bool>(any(global0.c.b.zwz), any(vec3<bool>(!arg_0.x, true, all(global0.b)))));
    return Struct_4(global4.d, vec3<bool>(true, !any(global4.c.b), any(vec2<bool>(true, true))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_4, arg_3: vec2<f32>) -> Struct_4 {
    var var_0 = u_input.c;
    var var_1 = vec3<u32>(global0.d.b.a, ~_wgslsmith_div_u32(~(~0u), ~(~arg_0)), 22457u);
    global2 = global4.e.x;
    let var_2 = Struct_5(-vec3<i32>(-func_3(global0.d).x, ~arg_1, u_input.b.x), _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)))), arg_2);
    var var_3 = Struct_4(Struct_2(vec2<i32>(_wgslsmith_div_i32(16763i ^ global0.c.d.x, -global0.c.d.x), arg_2.a.a.x), func_2(vec2<bool>(var_2.b <= arg_3.x, false), ~vec4<u32>(global0.c.a, global4.d.b.a, 13678u, arg_0), Struct_3(u_input.c, arg_2.b, Struct_1(112910u, global0.d.b.b, true, vec4<i32>(arg_2.a.b.d.x, 5453i, 0i, -14965i)), global4.d, func_2(global0.b.zx, vec4<u32>(47105u, global0.d.b.a, arg_0, 0u), Struct_3(var_2.c.a.b.a, arg_2.b, Struct_1(var_2.c.a.b.a, vec4<bool>(var_2.c.a.b.b.x, global4.e.x, global4.c.c, false), true, vec4<i32>(arg_1, var_2.a.x, 2147483647i, 1i)), global1[_wgslsmith_index_u32(arg_0, 27u)], vec2<bool>(global4.d.b.b.x, false)), var_2.b).a.b.b.zw), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_2.b)), var_2.b))).a.b), global4.c.b.xwy);
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_4 {
    var var_0 = Struct_4(Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(31582i, 2147483647i, arg_2.a.b.d.x, arg_2.a.b.d.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, -15660i, 6111i, -1i), arg_0.b.d)), 2147483647i), arg_3.a.b), arg_3.b);
    let var_1 = func_4(0u, global0.c.d.x, arg_3, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -488f)), _wgslsmith_f_op_f32(abs(1516f))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f) - 917f), -178f))).a;
    var var_2 = Struct_3(global0.a, arg_0.b.b.www, Struct_1(3185u, var_0.a.b.b, !var_1.b.c, max(_wgslsmith_mult_vec4_i32(global0.d.b.d, vec4<i32>(-2147483647i, global4.d.b.d.x, -1524i, -25998i)), var_1.b.d)), global4.d, select(!(!(!var_0.b.zz)), global4.b.yz, vec2<bool>(~1i == arg_0.a.x, global4.e.x)));
    var var_3 = !((!var_0.b.x || (global0.d.b.b.x | var_0.a.b.c)) | !arg_0.b.b.x);
    var var_4 = _wgslsmith_clamp_vec3_i32(func_4(_wgslsmith_mod_u32(var_2.d.b.a, func_1()), ~_wgslsmith_mod_i32(arg_3.a.b.d.x, 0i), Struct_4(func_4(0u, u_input.b.x, Struct_4(arg_0, vec3<bool>(false, false, true)), vec2<f32>(413f, -1000f)).a, var_2.c.b.xyy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(754f, -1997f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-292f, 1000f) - vec2<f32>(-1160f, -1221f)))).a.b.d.wzy, ~(-max(vec3<i32>(var_2.d.b.d.x, -2147483647i, 1i), vec3<i32>(-2147483647i, global0.d.a.x, arg_0.b.d.x))), max(~(-var_1.b.d.zwx), vec3<i32>(~(-30836i), 1i, ~arg_2.a.a.x))) >> (~_wgslsmith_sub_vec3_u32(firstTrailingBit(abs(vec3<u32>(arg_3.a.b.a, 4294967295u, arg_0.b.a))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2.a.b.a), vec2<u32>(var_2.d.b.a, 4294967295u)), 43286u, max(var_0.a.b.a, var_0.a.b.a))) % vec3<u32>(32u));
    return func_2(arg_2.b.xz, _wgslsmith_mod_vec4_u32(~min(vec4<u32>(0u, 18571u, var_2.c.a, var_2.a), vec4<u32>(20655u, 35300u, 44923u, 25606u)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_2.a.b.a, 48374u, 0u), vec4<u32>(0u, global0.a, var_0.a.b.a, global4.c.a)))), Struct_3(arg_2.a.b.a, vec3<bool>(true, true, true), Struct_1(~(~global4.a), vec4<bool>(false, var_0.a.b.b.x != arg_3.a.b.c, var_2.e.x, all(global0.c.b)), any(vec4<bool>(true, arg_0.b.b.x, global0.e.x, true)), var_1.b.d), var_0.a, func_2(!(!var_2.b.zx), ~_wgslsmith_mod_vec4_u32(vec4<u32>(5362u, arg_3.a.b.a, global4.d.b.a, 1945u), vec4<u32>(var_2.d.b.a, arg_0.b.a, arg_3.a.b.a, 4294967295u)), Struct_3(global4.c.a, arg_3.b, func_4(35192u, -35185i, Struct_4(Struct_2(vec2<i32>(arg_3.a.b.d.x, 8574i), Struct_1(32855u, arg_2.a.b.b, true, vec4<i32>(0i, u_input.a.x, 17074i, -1i))), vec3<bool>(global4.c.b.x, arg_0.b.b.x, arg_2.b.x)), vec2<f32>(-1290f, 2293f)).a.b, func_2(arg_3.b.zy, vec4<u32>(77221u, 102211u, 0u, 4294967295u), Struct_3(0u, vec3<bool>(false, global4.c.b.x, arg_2.b.x), Struct_1(1u, var_0.a.b.b, false, arg_3.a.b.d), arg_3.a, var_0.a.b.b.zx), 1769f).a, vec2<bool>(global0.d.b.c, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f))).b.xx), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-997f + _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(step(-370f, -550f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(906f, -262f)))))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3) -> Struct_1 {
    let var_0 = global0.d.b.d.x;
    let var_1 = ~select(vec3<i32>(func_3(func_4(arg_1.d.b.a, u_input.a.x, arg_0, vec2<f32>(-400f, -375f)).a).x, global0.d.a.x, 0i), ~(~func_5(Struct_2(vec2<i32>(arg_1.d.b.d.x, arg_1.c.d.x), global0.c), vec3<i32>(u_input.a.x, -2516i, 24686i), arg_0, arg_0).a.b.d.zxz), global0.c.b.x);
    global0 = arg_1;
    let var_2 = _wgslsmith_mod_vec2_i32(~vec2<i32>(arg_0.a.b.d.x, -41390i), global4.d.a);
    global3 = u_input.c;
    return Struct_1(~1u, !(!vec4<bool>(all(arg_0.b), all(global4.d.b.b), true, global4.b.x & false)), false, global0.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 27u)];
    let var_1 = ~countOneBits(vec4<u32>(global0.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.a, 35563u), vec2<u32>(34746u, global0.c.a)), vec2<u32>(global4.a, global4.a) ^ vec2<u32>(4294967295u, global4.c.a)), func_1(), global0.a));
    global4 = Struct_3(global4.a, vec3<bool>(true, any(global0.e), var_0.b.b.x | false), func_6(func_5(global0.d, -var_0.b.d.yxz, func_4(global0.a, ~var_0.a.x, func_2(vec2<bool>(true, false), vec4<u32>(global4.c.a, 46243u, 1u, 1u), Struct_3(global0.c.a, global4.d.b.b.yyw, var_0.b, Struct_2(vec2<i32>(global4.d.a.x, var_0.a.x), Struct_1(1u, vec4<bool>(false, global4.e.x, global4.b.x, global4.b.x), true, global4.c.d)), global0.d.b.b.zx), -1599f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-614f, -142f) - vec2<f32>(1164f, 713f))), Struct_4(func_4(22658u, 1798i, Struct_4(global0.d, var_0.b.b.yxz), vec2<f32>(-311f, -218f)).a, global4.c.b.yzw)), Struct_3(func_4(select(u_input.c, 14190u, global0.e.x), ~global4.d.b.d.x, Struct_4(global1[_wgslsmith_index_u32(global4.c.a, 27u)], vec3<bool>(false, false, global4.e.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(747f, -1377f))).a.b.a, !global4.b, global0.c, global1[_wgslsmith_index_u32(~(~4294967295u), 27u)], !(!global4.e))), func_5(Struct_2(global0.c.d.zz, func_2(select(global0.c.b.zy, vec2<bool>(false, false), vec2<bool>(global4.d.b.b.x, true)), vec4<u32>(1u, global4.d.b.a, global4.a, global0.a), Struct_3(33725u, vec3<bool>(var_0.b.b.x, var_0.b.b.x, true), Struct_1(19651u, vec4<bool>(global4.c.c, false, var_0.b.c, true), true, global4.c.d), global4.d, var_0.b.b.zy), _wgslsmith_f_op_f32(trunc(206f))).a.b), vec3<i32>(0i, 79870i, 0i), Struct_4(Struct_2(global4.d.b.d.xy, Struct_1(94562u, vec4<bool>(false, true, false, global4.e.x), false, vec4<i32>(var_0.b.d.x, global4.d.b.d.x, u_input.a.x, -2147483647i))), global0.d.b.b.ywx), Struct_4(func_2(!var_0.b.b.wy, ~vec4<u32>(global4.c.a, 75319u, 21312u, 29922u), Struct_3(u_input.c, global0.b, Struct_1(9775u, vec4<bool>(true, false, true, true), true, var_0.b.d), Struct_2(vec2<i32>(1i, var_0.a.x), global4.d.b), var_0.b.b.wy), _wgslsmith_f_op_f32(trunc(286f))).a, !global4.c.b.xzy)).a, var_0.b.b.wy);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(432f, _wgslsmith_f_op_f32(ceil(-448f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-442f, 110f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1749f, 1000f))))) * vec2<f32>(798f, 1133f));
    var var_3 = Struct_2(_wgslsmith_add_vec2_i32(-(~global0.d.a >> (~vec2<u32>(34406u, 87204u) % vec2<u32>(32u))), u_input.a.zy), Struct_1(~(~_wgslsmith_dot_vec4_u32(var_1, vec4<u32>(0u, global0.d.b.a, var_1.x, u_input.c))), var_0.b.b, true, -(~global4.c.d)));
    global4 = Struct_3(var_0.b.a, !func_5(func_5(func_5(Struct_2(vec2<i32>(var_0.a.x, u_input.b.x), global0.d.b), var_0.b.d.wxx, Struct_4(Struct_2(global4.c.d.xy, Struct_1(1u, var_3.b.b, var_3.b.b.x, var_0.b.d)), vec3<bool>(var_3.b.b.x, false, var_3.b.b.x)), Struct_4(Struct_2(global4.d.b.d.wy, Struct_1(1u, var_0.b.b, false, var_3.b.d)), vec3<bool>(false, var_0.b.c, var_3.b.b.x))).a, vec3<i32>(var_3.a.x, var_3.a.x, 0i), Struct_4(Struct_2(var_3.a, Struct_1(58444u, vec4<bool>(false, false, true, true), true, var_0.b.d)), vec3<bool>(false, false, true)), Struct_4(global4.d, global0.b)).a, ~vec3<i32>(global0.c.d.x, 2147483647i, 2147483647i) | (vec3<i32>(-8002i, global0.c.d.x, 0i) >> (var_1.wwx % vec3<u32>(32u))), func_4(func_1(), -1i, func_5(Struct_2(vec2<i32>(var_0.a.x, 2147483647i), Struct_1(u_input.c, vec4<bool>(true, true, true, var_3.b.b.x), false, global0.d.b.d)), global4.c.d.wxz, Struct_4(Struct_2(vec2<i32>(19595i, -2147483647i), Struct_1(global0.c.a, vec4<bool>(global4.e.x, global4.c.c, true, true), true, vec4<i32>(u_input.b.x, 1i, 1i, var_0.a.x))), var_0.b.b.yxx), Struct_4(Struct_2(var_0.a, global4.d.b), vec3<bool>(global0.e.x, var_0.b.c, global4.d.b.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -1422f) + vec2<f32>(-775f, 1000f))), func_2(var_0.b.b.xw, min(var_1, var_1), Struct_3(var_1.x, global4.c.b.zww, var_0.b, Struct_2(u_input.a.zy, Struct_1(1u, vec4<bool>(var_0.b.b.x, var_3.b.c, global0.c.c, global4.e.x), global0.c.c, vec4<i32>(0i, global0.c.d.x, 37372i, var_0.a.x))), global4.d.b.b.zy), -688f)).a.b.b.xzy, Struct_1(global4.d.b.a, func_5(Struct_2(vec2<i32>(global0.d.a.x, -2147483647i) & var_3.a, Struct_1(85931u, global0.d.b.b, global0.e.x, vec4<i32>(-2147483647i, -1i, -1i, var_3.b.d.x))), func_6(func_4(91552u, 1i, Struct_4(global4.d, global0.b), vec2<f32>(var_2.x, 1456f)), Struct_3(global0.a, global0.d.b.b.yyx, Struct_1(u_input.c, global0.c.b, global4.d.b.c, vec4<i32>(var_3.a.x, 2147483647i, var_3.a.x, u_input.a.x)), Struct_2(var_0.a, var_3.b), global4.d.b.b.ww)).d.wyx, Struct_4(func_2(var_3.b.b.xx, vec4<u32>(1u, 1u, var_0.b.a, var_0.b.a), Struct_3(0u, global0.d.b.b.wzw, global0.d.b, Struct_2(vec2<i32>(-2147483647i, -13041i), Struct_1(var_1.x, global0.d.b.b, true, var_0.b.d)), global0.d.b.b.xy), var_2.x).a, select(var_0.b.b.yww, global4.d.b.b.zyw, vec3<bool>(global0.c.c, var_0.b.b.x, true))), Struct_4(Struct_2(vec2<i32>(-1i, -1i), var_3.b), select(var_0.b.b.wxy, vec3<bool>(true, global0.b.x, var_0.b.b.x), vec3<bool>(global0.c.c, false, global0.c.b.x)))).a.b.b, all(!vec4<bool>(var_3.b.b.x, true, true, true)), vec4<i32>(var_0.a.x, 1i, firstLeadingBit(~(-38114i)), global4.d.b.d.x)), func_5(Struct_2(vec2<i32>(global0.c.d.x, _wgslsmith_add_i32(var_3.b.d.x, global4.c.d.x)), var_0.b), select(~vec3<i32>(23499i, global0.d.a.x, 39920i), vec3<i32>(29570i, global4.d.a.x, 1i), false), func_2(vec2<bool>(any(vec3<bool>(false, false, var_3.b.b.x)), !var_3.b.c), ~countOneBits(vec4<u32>(global0.d.b.a, global4.c.a, 4294967295u, var_1.x)), Struct_3(3536u, vec3<bool>(global4.e.x, var_3.b.c, global4.e.x), Struct_1(u_input.c, global4.d.b.b, var_3.b.b.x, global0.d.b.d), Struct_2(vec2<i32>(25540i, -24360i), global0.d.b), func_4(var_3.b.a, -79429i, Struct_4(Struct_2(vec2<i32>(u_input.a.x, var_0.b.d.x), global0.c), var_0.b.b.zwx), vec2<f32>(var_2.x, 223f)).a.b.b.zx), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_2.x, -1000f))))), Struct_4(Struct_2(vec2<i32>(1i, 31751i), Struct_1(global4.d.b.a, var_0.b.b, true, var_0.b.d)), !vec3<bool>(var_3.b.b.x, false, global0.d.b.b.x))).a, global0.c.b.wx);
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

