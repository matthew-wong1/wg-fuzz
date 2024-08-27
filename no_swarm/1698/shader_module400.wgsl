struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false));

var<private> global2: f32;

var<private> global3: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(1u, 1u, 43850u, 1u), vec4<u32>(0u, 138688u, 49825u, 9491u), vec4<u32>(2053u, 0u, 15567u, 62517u), vec4<u32>(6088u, 1u, 1u, 2251u), vec4<u32>(18422u, 80729u, 61935u, 0u), vec4<u32>(24350u, 4294967295u, 9468u, 4294967295u), vec4<u32>(126563u, 4294967295u, 24153u, 64467u), vec4<u32>(0u, 0u, 38782u, 42968u), vec4<u32>(1u, 47454u, 0u, 4294967295u), vec4<u32>(0u, 1u, 98245u, 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: i32) -> vec2<bool> {
    global1 = array<vec3<bool>, 22>();
    var var_0 = vec4<bool>(arg_1.b.b.c, arg_1.d.c.c, arg_1.d.c.c, !all(vec4<bool>(false, u_input.c > u_input.a.x, all(global1[_wgslsmith_index_u32(1u, 22u)]), arg_1.d.b.c)));
    let var_1 = 1u;
    let var_2 = vec2<bool>(true, true);
    global1 = array<vec3<bool>, 22>();
    return vec2<bool>(false || !(arg_0.x >= (arg_1.d.c.a.x & arg_2)), var_0.x);
}

fn func_2(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: i32) -> Struct_2 {
    global1 = array<vec3<bool>, 22>();
    let var_0 = Struct_5(false || arg_0.c.b.x, arg_0.b, Struct_3(Struct_1(firstLeadingBit(arg_0.c.a.b.zyx), arg_0.d.b.b, ~u_input.c > 4294967295u), !func_3(vec4<i32>(arg_0.b.b.a.x, arg_0.d.b.b.x, 7941i, arg_0.b.c.a.x), Struct_5(arg_0.a, arg_0.e, arg_0.c, arg_0.e, arg_0.e), u_input.b)), Struct_2(~0u, Struct_1(vec3<i32>(-arg_0.d.c.a.x, 2147483647i, arg_2), firstTrailingBit(arg_0.b.b.b), arg_0.d.b.c), Struct_1(arg_0.c.a.b.zzw, vec4<i32>(arg_2, -arg_2, -arg_0.b.c.b.x, ~2147483647i), !arg_0.d.b.c)), Struct_2(u_input.c & _wgslsmith_mod_u32(4294967295u, u_input.a.x), Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-10401i, arg_2, arg_1.x), vec3<i32>(arg_2, u_input.b, arg_1.x)), -1i, arg_1.x), vec4<i32>(-16054i, arg_2, 2147483647i, u_input.d.x) & vec4<i32>(7624i, 0i, u_input.b, arg_2), !arg_0.e.b.c), Struct_1(arg_0.b.c.a, vec4<i32>(-2383i, ~arg_0.e.b.a.x, 1067i, _wgslsmith_mod_i32(u_input.d.x, arg_2)), (1u ^ u_input.a.x) != arg_0.e.a)));
    var var_1 = -12783i;
    var_1 = arg_1.x;
    let var_2 = true;
    return Struct_2(1u, var_0.c.a, Struct_1((var_0.b.c.b.yxy ^ ~arg_0.d.b.a) >> (u_input.a.wyy % vec3<u32>(32u)), reverseBits(vec4<i32>(_wgslsmith_sub_i32(-37907i, arg_2), ~(-1i), 0i, ~19540i)), !(u_input.b > ~(-2147483647i))));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_3(arg_3.c, select(vec2<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(arg_1, arg_3.b.c))), vec2<bool>(select(true, arg_3.b.c, func_3(arg_3.c.b, Struct_5(arg_3.c.c, Struct_2(7744u, Struct_1(vec3<i32>(2147483647i, arg_3.b.a.x, arg_3.c.b.x), vec4<i32>(u_input.d.x, arg_3.c.b.x, u_input.d.x, u_input.d.x), arg_1), arg_3.c), Struct_3(arg_3.b, vec2<bool>(arg_3.b.c, false)), Struct_2(14555u, arg_3.b, Struct_1(arg_3.c.a, vec4<i32>(arg_3.c.a.x, -100434i, 64468i, arg_3.c.a.x), arg_3.b.c)), arg_3), -39286i).x), all(select(vec2<bool>(arg_3.b.c, arg_3.c.c), vec2<bool>(arg_1, arg_3.b.c), vec2<bool>(true, true)))), vec2<bool>(_wgslsmith_mult_i32(arg_3.b.b.x, -2147483647i) == 47179i, !arg_3.b.c)));
    let var_1 = ~_wgslsmith_div_i32(var_0.a.a.x, 1i);
    let var_2 = Struct_5(!(!func_2(Struct_5(var_0.a.c, arg_3, var_0, Struct_2(u_input.a.x, Struct_1(var_0.a.b.xxx, vec4<i32>(var_0.a.b.x, -24035i, 2147483647i, u_input.b), false), arg_3.c), arg_3), u_input.d, -2147483647i).b.c) == arg_3.b.c, arg_3, var_0, func_2(Struct_5(arg_3.c.c, func_2(Struct_5(true, Struct_2(arg_0.x, Struct_1(vec3<i32>(2147483647i, 0i, -2147483647i), var_0.a.b, var_0.b.x), Struct_1(vec3<i32>(29573i, arg_3.b.a.x, arg_3.c.b.x), vec4<i32>(arg_3.b.b.x, var_0.a.b.x, -2147483647i, 2147483647i), arg_3.c.c)), Struct_3(var_0.a, vec2<bool>(var_0.a.c, true)), Struct_2(4294967295u, arg_3.b, arg_3.b), arg_3), arg_3.b.b.xz, var_0.a.b.x), Struct_3(func_2(Struct_5(var_0.b.x, Struct_2(4294967295u, var_0.a, Struct_1(arg_3.c.b.wzz, vec4<i32>(var_1, -10733i, u_input.b, -8213i), false)), var_0, Struct_2(u_input.c, var_0.a, var_0.a), Struct_2(u_input.c, var_0.a, arg_3.c)), u_input.d, var_0.a.a.x).b, var_0.b), func_2(Struct_5(true, arg_3, var_0, Struct_2(arg_0.x, arg_3.b, var_0.a), arg_3), vec2<i32>(-41078i, -1i), abs(-1i)), Struct_2(abs(39751u), func_2(Struct_5(arg_3.c.c, arg_3, var_0, Struct_2(4294967295u, Struct_1(vec3<i32>(u_input.b, -2147483647i, arg_3.b.a.x), vec4<i32>(37301i, 8844i, var_0.a.b.x, u_input.d.x), arg_1), var_0.a), Struct_2(arg_0.x, Struct_1(var_0.a.a, vec4<i32>(u_input.b, 1i, 0i, var_1), arg_3.b.c), Struct_1(vec3<i32>(0i, -31907i, -29617i), arg_3.b.b, var_0.a.c))), vec2<i32>(var_1, 31686i), u_input.d.x).b, var_0.a)), ~arg_3.b.a.yy, var_0.a.a.x), arg_3);
    let var_3 = ~(~(-u_input.d));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, -170f, arg_2), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, 929f, arg_2), vec3<f32>(arg_2, -105f, arg_2))), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 1237f, arg_2)), arg_3.b.c)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), arg_2, _wgslsmith_f_op_f32(-arg_2))) * _wgslsmith_div_vec3_f32(vec3<f32>(2101f, 347f, 501f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(arg_2, 603f)), _wgslsmith_f_op_f32(3138f * -313f), arg_2))));
    return _wgslsmith_sub_i32(~(_wgslsmith_add_i32(var_3.x, var_0.a.a.x) | var_2.d.c.b.x), _wgslsmith_add_i32(-1i, 1i));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec4<f32>, arg_3: vec3<i32>) -> vec2<i32> {
    let var_0 = -(~(-u_input.d.x) & arg_3.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(~(~arg_3.x), arg_3.x >> (u_input.a.x % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, -16491i, arg_3.x, u_input.d.x), vec4<i32>(2147483647i, -96i, u_input.b, -1i)), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-8323i, 2147483647i), vec2<i32>(30768i, 0i)))), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, u_input.b), arg_3.x), arg_3.x, -(arg_3.x | arg_3.x)));
    let var_1 = Struct_2(32051u, Struct_1(vec3<i32>(_wgslsmith_div_i32(reverseBits(48528i), 64710i), arg_3.x, func_4(~u_input.a.wxx, arg_1, _wgslsmith_f_op_f32(-arg_2.x), func_2(Struct_5(true, Struct_2(0u, Struct_1(vec3<i32>(30816i, 3100i, var_0), vec4<i32>(-38235i, -11590i, 1i, arg_3.x), arg_1), Struct_1(arg_3, vec4<i32>(-40322i, 11831i, arg_3.x, var_0), true)), Struct_3(Struct_1(arg_3, vec4<i32>(14704i, 2147483647i, 2147483647i, u_input.b), true), vec2<bool>(false, arg_1)), Struct_2(u_input.c, Struct_1(vec3<i32>(0i, var_0, u_input.b), vec4<i32>(-45175i, var_0, -2147483647i, arg_3.x), arg_1), Struct_1(vec3<i32>(0i, 39921i, 1i), vec4<i32>(var_0, arg_3.x, 54217i, var_0), arg_1)), Struct_2(0u, Struct_1(arg_3, vec4<i32>(0i, -29173i, u_input.b, u_input.b), true), Struct_1(arg_3, vec4<i32>(-2147483647i, -2147483647i, var_0, u_input.d.x), arg_1))), u_input.d, 2147483647i))), -(select(vec4<i32>(0i, 12987i, u_input.b, 14483i), vec4<i32>(2147483647i, -28753i, -2147483647i, 20061i), arg_1) >> (u_input.a % vec4<u32>(32u))), arg_1), func_2(Struct_5(arg_1, func_2(Struct_5(false, Struct_2(17574u, Struct_1(arg_3, vec4<i32>(var_0, arg_3.x, arg_3.x, -4050i), false), Struct_1(vec3<i32>(-1i, 25301i, 18762i), vec4<i32>(0i, u_input.b, u_input.b, arg_3.x), arg_1)), Struct_3(Struct_1(arg_3, vec4<i32>(arg_3.x, -1i, var_0, arg_3.x), arg_1), vec2<bool>(arg_1, true)), Struct_2(52081u, Struct_1(arg_3, vec4<i32>(arg_3.x, 2147483647i, 1i, 1666i), arg_1), Struct_1(vec3<i32>(60366i, 2147483647i, u_input.d.x), vec4<i32>(u_input.b, 60852i, -2147483647i, -27465i), arg_1)), Struct_2(4294967295u, Struct_1(arg_3, vec4<i32>(0i, 29734i, var_0, -1i), true), Struct_1(arg_3, vec4<i32>(2147483647i, -1i, 17803i, arg_3.x), arg_1))), vec2<i32>(u_input.b, u_input.d.x), i32(-1i) * -23974i), Struct_3(Struct_1(arg_3, vec4<i32>(u_input.d.x, var_0, 53265i, arg_3.x), false), func_3(vec4<i32>(1i, -2147483647i, 2255i, -33600i), Struct_5(arg_1, Struct_2(4294967295u, Struct_1(vec3<i32>(var_0, -38689i, -6209i), vec4<i32>(6388i, var_0, u_input.d.x, 0i), false), Struct_1(arg_3, vec4<i32>(arg_3.x, 1i, -17308i, u_input.b), arg_1)), Struct_3(Struct_1(vec3<i32>(u_input.b, -2147483647i, -32686i), vec4<i32>(u_input.b, 0i, arg_3.x, var_0), arg_1), vec2<bool>(false, arg_1)), Struct_2(0u, Struct_1(arg_3, vec4<i32>(-1i, -54174i, -2147483647i, u_input.b), arg_1), Struct_1(vec3<i32>(u_input.d.x, 5844i, 1i), vec4<i32>(u_input.b, var_0, arg_3.x, arg_3.x), arg_1)), Struct_2(u_input.a.x, Struct_1(vec3<i32>(arg_3.x, var_0, arg_3.x), vec4<i32>(u_input.b, u_input.b, 93175i, 7798i), false), Struct_1(arg_3, vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, u_input.d.x), arg_1))), var_0)), func_2(Struct_5(arg_1, Struct_2(u_input.a.x, Struct_1(arg_3, vec4<i32>(17375i, -2147483647i, 0i, u_input.b), false), Struct_1(vec3<i32>(15603i, var_0, -6426i), vec4<i32>(arg_3.x, 1i, 1901i, arg_3.x), arg_1)), Struct_3(Struct_1(vec3<i32>(-2147483647i, 44255i, u_input.d.x), vec4<i32>(var_0, u_input.d.x, arg_3.x, var_0), arg_1), vec2<bool>(arg_1, true)), Struct_2(4294967295u, Struct_1(vec3<i32>(0i, arg_3.x, -15544i), vec4<i32>(arg_3.x, -28116i, var_0, arg_3.x), false), Struct_1(vec3<i32>(42149i, var_0, 0i), vec4<i32>(u_input.d.x, 2147483647i, var_0, var_0), arg_1)), Struct_2(4294967295u, Struct_1(vec3<i32>(arg_3.x, u_input.d.x, 50109i), vec4<i32>(-54784i, arg_3.x, 2147483647i, var_0), true), Struct_1(arg_3, vec4<i32>(-2147483647i, -56892i, arg_3.x, -39360i), true))), ~vec2<i32>(u_input.b, u_input.b), 1i), func_2(Struct_5(false, Struct_2(u_input.c, Struct_1(vec3<i32>(10997i, -32037i, u_input.b), vec4<i32>(-58523i, 55193i, u_input.b, 56130i), true), Struct_1(arg_3, vec4<i32>(arg_3.x, 36053i, -9037i, 0i), arg_1)), Struct_3(Struct_1(arg_3, vec4<i32>(-10638i, var_0, 11100i, arg_3.x), true), vec2<bool>(arg_1, arg_1)), Struct_2(76536u, Struct_1(arg_3, vec4<i32>(-44163i, -14406i, 23413i, var_0), arg_1), Struct_1(arg_3, vec4<i32>(-40257i, 0i, -2147483647i, 54719i), arg_1)), Struct_2(119005u, Struct_1(arg_3, vec4<i32>(-1i, u_input.d.x, -17036i, arg_3.x), false), Struct_1(arg_3, vec4<i32>(u_input.b, u_input.b, var_0, 20501i), arg_1))), -vec2<i32>(arg_3.x, -22103i), ~arg_3.x)), ~(~(arg_3.yy >> (u_input.a.xw % vec2<u32>(32u)))), _wgslsmith_clamp_i32(-2147483647i << (~u_input.a.x % 32u), func_4(firstLeadingBit(u_input.a.xxz), true, _wgslsmith_f_op_f32(floor(arg_0)), Struct_2(u_input.a.x, Struct_1(vec3<i32>(-30826i, u_input.b, arg_3.x), vec4<i32>(u_input.d.x, 0i, var_0, u_input.d.x), true), Struct_1(arg_3, vec4<i32>(-1i, 39196i, -2147483647i, arg_3.x), arg_1))), 1i)).c);
    var var_2 = Struct_4(max(~var_0, -1i), 4294967295u, Struct_3(func_2(Struct_5(arg_2.x > arg_2.x, func_2(Struct_5(arg_1, Struct_2(u_input.a.x, Struct_1(vec3<i32>(-20736i, u_input.d.x, u_input.b), vec4<i32>(-2147483647i, var_1.b.b.x, 0i, -1i), arg_1), Struct_1(vec3<i32>(var_1.c.b.x, -1i, 26315i), var_1.c.b, true)), Struct_3(Struct_1(vec3<i32>(40167i, var_1.b.b.x, var_0), var_1.b.b, var_1.c.c), vec2<bool>(false, false)), Struct_2(u_input.c, var_1.c, Struct_1(arg_3, vec4<i32>(u_input.d.x, 1i, var_1.c.a.x, arg_3.x), false)), var_1), u_input.d, -37767i), Struct_3(Struct_1(vec3<i32>(var_1.b.a.x, 16003i, var_0), vec4<i32>(10388i, -1i, -1i, -22116i), false), vec2<bool>(arg_1, arg_1)), var_1, var_1), vec2<i32>(-1505i, var_0 & arg_3.x), _wgslsmith_dot_vec2_i32(var_1.c.a.zy << (vec2<u32>(var_1.a, 31282u) % vec2<u32>(32u)), vec2<i32>(u_input.d.x, -7746i))).c, func_3(reverseBits(vec4<i32>(arg_3.x, -1i, u_input.d.x, 0i)), Struct_5(true, Struct_2(u_input.c, var_1.b, Struct_1(vec3<i32>(arg_3.x, -2404i, 19498i), var_1.b.b, true)), Struct_3(var_1.c, vec2<bool>(arg_1, true)), Struct_2(41042u, Struct_1(arg_3, var_1.b.b, arg_1), Struct_1(var_1.c.b.ywy, var_1.c.b, var_1.c.c)), func_2(Struct_5(var_1.c.c, Struct_2(var_1.a, Struct_1(vec3<i32>(var_1.c.a.x, -26615i, var_1.c.a.x), vec4<i32>(var_1.c.a.x, u_input.b, var_1.b.a.x, u_input.d.x), true), var_1.b), Struct_3(var_1.c, vec2<bool>(true, false)), var_1, var_1), vec2<i32>(u_input.d.x, u_input.d.x), 0i)), -1i)), var_1.b);
    var_2 = Struct_4(_wgslsmith_dot_vec4_i32(var_1.b.b, ~var_1.b.b), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~(vec4<u32>(7612u, 12642u, u_input.c, var_2.b) << (u_input.a % vec4<u32>(32u))), u_input.a), _wgslsmith_mod_vec4_u32(select(u_input.a, vec4<u32>(var_1.a, var_1.a, 11036u, 8140u), vec4<bool>(var_2.d.c, arg_1, false, true)), global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, 4294967295u), 10u)])), Struct_3(var_2.d, select(vec2<bool>(false, true), vec2<bool>(arg_1, select(true, false, arg_1)), var_2.c.b)), var_2.c.a);
    var var_3 = var_1;
    return (-vec2<i32>(_wgslsmith_clamp_i32(-1i, var_0, 1i), var_0) | max(vec2<i32>(u_input.b, -2147483647i) | select(var_2.c.a.b.yw, vec2<i32>(var_1.b.b.x, var_0), vec2<bool>(var_2.d.c, var_2.d.c)), vec2<i32>(max(arg_3.x, var_0), var_0))) & firstTrailingBit(select(select(var_3.c.b.zw, arg_3.yz, true), ~select(var_1.b.b.xw, u_input.d, var_2.c.b), vec2<bool>(true, true)));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(-107f, -535f);
    let var_1 = Struct_2(0u, Struct_1(-vec3<i32>(arg_0.x, _wgslsmith_div_i32(arg_0.x, -1i), abs(-1i)), vec4<i32>(arg_2.a, -arg_0.x, u_input.b, ~arg_0.x), !arg_2.c.a.c), arg_2.d);
    global0 = true;
    let var_2 = arg_1.x;
    return func_2(Struct_5(var_1.c.b.x <= 1i, Struct_2(func_2(Struct_5(false, var_1, arg_2.c, Struct_2(1u, arg_2.c.a, Struct_1(var_1.b.b.www, vec4<i32>(-2147483647i, var_1.c.b.x, -1i, var_1.b.b.x), arg_2.c.b.x)), var_1), max(vec2<i32>(var_1.b.b.x, var_1.b.b.x), arg_2.d.b.yz), _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.b, u_input.b))).a, Struct_1(firstTrailingBit(var_1.b.b.zww), vec4<i32>(var_1.b.b.x, 0i, -419i, -17403i) ^ vec4<i32>(-2147483647i, 0i, 0i, u_input.d.x), arg_2.d.c), var_1.c), arg_2.c, func_2(Struct_5(false, func_2(Struct_5(arg_2.c.a.c, var_1, Struct_3(Struct_1(vec3<i32>(-1i, var_1.b.a.x, arg_2.d.b.x), var_1.b.b, true), vec2<bool>(true, true)), var_1, var_1), var_1.c.b.xy, -1773i), Struct_3(arg_2.c.a, vec2<bool>(arg_2.d.c, false)), var_1, var_1), ~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_1.b.b.x), arg_2.c.a.a.zz), -reverseBits(arg_2.c.a.b.x)), var_1), arg_0, -23242i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(u_input.d & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d.x, -2147483647i), vec2<i32>(u_input.d.x, u_input.d.x)), func_1(657f, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-197f, 245f, 569f, 1000f) * vec4<f32>(-1440f, -966f, 201f, -1000f)), vec3<i32>(u_input.b, 51517i, -16532i)), vec2<bool>(true, true)) & _wgslsmith_div_vec2_i32(vec2<i32>(11724i, -57084i) | u_input.d, u_input.d), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1757f, 1487f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-662f, -523f, -1441f)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-497f, 635f, 109f)))), vec3<bool>(true, true, all(vec4<bool>(true, false, true, true))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -243f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1084f - -1947f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -293f)))), select(select(select(vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(u_input.c, 22u)], true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), vec3<bool>(true, any(vec2<bool>(true, true)), true), func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(4125i, 32462i, u_input.b, u_input.b), vec4<i32>(u_input.d.x, u_input.b, -36327i, 2147483647i)), Struct_5(true, Struct_2(4294967295u, Struct_1(vec3<i32>(u_input.b, 0i, 0i), vec4<i32>(1i, -91439i, u_input.b, 1i), true), Struct_1(vec3<i32>(28560i, u_input.b, u_input.b), vec4<i32>(u_input.d.x, u_input.b, u_input.b, 1i), false)), Struct_3(Struct_1(vec3<i32>(-1i, -25656i, -2147483647i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, u_input.b), true), vec2<bool>(true, false)), Struct_2(13634u, Struct_1(vec3<i32>(u_input.b, u_input.b, -42422i), vec4<i32>(-52046i, u_input.d.x, u_input.d.x, 2147483647i), false), Struct_1(vec3<i32>(u_input.d.x, u_input.d.x, u_input.b), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -19481i), true)), Struct_2(22281u, Struct_1(vec3<i32>(2147483647i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, -46654i, -2147483647i, -6766i), false), Struct_1(vec3<i32>(-2147483647i, u_input.b, -90991i), vec4<i32>(u_input.b, u_input.d.x, -1i, 2147483647i), true))), max(1490i, -2147483647i)).x))), Struct_4(-75813i, abs(countOneBits(u_input.c)) >> (u_input.c % 32u), Struct_3(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, 2147483647i, u_input.b), vec3<i32>(-2147483647i, u_input.d.x, u_input.b)), vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, -1i), all(global1[_wgslsmith_index_u32(u_input.a.x, 22u)])), select(func_3(vec4<i32>(u_input.d.x, u_input.d.x, -1i, u_input.d.x), Struct_5(true, Struct_2(u_input.a.x, Struct_1(vec3<i32>(-23639i, u_input.d.x, -2147483647i), vec4<i32>(u_input.b, -2147483647i, u_input.d.x, -2147483647i), true), Struct_1(vec3<i32>(36701i, -1i, -1i), vec4<i32>(u_input.d.x, 61638i, 2147483647i, -1i), true)), Struct_3(Struct_1(vec3<i32>(1i, -16540i, 22517i), vec4<i32>(u_input.b, -1i, u_input.b, u_input.d.x), false), vec2<bool>(false, false)), Struct_2(u_input.a.x, Struct_1(vec3<i32>(u_input.b, -2147483647i, 754i), vec4<i32>(u_input.d.x, u_input.b, 2147483647i, 41084i), true), Struct_1(vec3<i32>(u_input.d.x, -6055i, 31145i), vec4<i32>(7211i, u_input.b, 1i, u_input.b), false)), Struct_2(61445u, Struct_1(vec3<i32>(u_input.b, u_input.b, 0i), vec4<i32>(u_input.d.x, -2869i, u_input.b, u_input.b), false), Struct_1(vec3<i32>(72690i, u_input.b, u_input.d.x), vec4<i32>(-1i, u_input.b, u_input.b, u_input.d.x), true))), u_input.b), vec2<bool>(true, false), true)), func_2(Struct_5(func_3(vec4<i32>(u_input.b, u_input.d.x, 1i, u_input.d.x), Struct_5(true, Struct_2(1u, Struct_1(vec3<i32>(u_input.b, u_input.b, 21596i), vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, -1i), true), Struct_1(vec3<i32>(2147483647i, 1i, 0i), vec4<i32>(17845i, u_input.b, u_input.b, u_input.d.x), false)), Struct_3(Struct_1(vec3<i32>(u_input.d.x, u_input.b, u_input.d.x), vec4<i32>(27298i, u_input.d.x, u_input.d.x, 14425i), false), vec2<bool>(false, false)), Struct_2(u_input.a.x, Struct_1(vec3<i32>(-2147483647i, -2021i, -28412i), vec4<i32>(5736i, u_input.b, 0i, u_input.d.x), false), Struct_1(vec3<i32>(46695i, u_input.d.x, 1i), vec4<i32>(u_input.b, 1i, -1i, u_input.d.x), false)), Struct_2(4294967295u, Struct_1(vec3<i32>(8745i, 1i, -2147483647i), vec4<i32>(0i, -17651i, u_input.d.x, -8333i), true), Struct_1(vec3<i32>(u_input.b, -3096i, -86028i), vec4<i32>(-22299i, 17873i, -14608i, 1i), true))), 2147483647i).x, Struct_2(u_input.a.x, Struct_1(vec3<i32>(u_input.b, u_input.d.x, -1i), vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, u_input.d.x), true), Struct_1(vec3<i32>(6149i, 1i, u_input.d.x), vec4<i32>(u_input.b, 44109i, -36580i, u_input.b), true)), Struct_3(Struct_1(vec3<i32>(u_input.b, 1i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.b), true), vec2<bool>(true, false)), func_2(Struct_5(true, Struct_2(u_input.a.x, Struct_1(vec3<i32>(-16312i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.b, u_input.b, -29556i, 0i), true), Struct_1(vec3<i32>(u_input.b, -1i, 0i), vec4<i32>(-4701i, 4115i, 0i, u_input.b), false)), Struct_3(Struct_1(vec3<i32>(1i, -1i, u_input.b), vec4<i32>(26561i, 6294i, u_input.d.x, -22510i), false), vec2<bool>(false, true)), Struct_2(4294967295u, Struct_1(vec3<i32>(u_input.b, 0i, u_input.d.x), vec4<i32>(u_input.d.x, -11167i, u_input.b, -1i), true), Struct_1(vec3<i32>(1i, u_input.b, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.b), true)), Struct_2(u_input.a.x, Struct_1(vec3<i32>(u_input.b, u_input.b, u_input.d.x), vec4<i32>(-30905i, -72272i, u_input.d.x, 19083i), false), Struct_1(vec3<i32>(8253i, u_input.d.x, -1i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, 24690i), true))), u_input.d, u_input.b), Struct_2(1u, Struct_1(vec3<i32>(2147483647i, u_input.d.x, -70833i), vec4<i32>(-72796i, u_input.d.x, u_input.b, u_input.b), true), Struct_1(vec3<i32>(-87223i, 1i, -26713i), vec4<i32>(-1i, u_input.b, 2147483647i, u_input.d.x), false))), vec2<i32>(u_input.d.x & u_input.d.x, min(2147483647i, 44955i)), _wgslsmith_div_i32(2147483647i ^ u_input.b, u_input.b ^ -2147483647i)).c));
    let var_1 = vec3<bool>(!select(var_0.c.c, false, abs(var_0.a) <= _wgslsmith_mod_u32(u_input.a.x, 34304u)), true, true);
    let var_2 = true;
    let var_3 = vec4<i32>(_wgslsmith_sub_i32(var_0.c.a.x, u_input.b), ~u_input.d.x, func_1(-1576f, all(!vec4<bool>(true, var_1.x, true, var_0.c.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1640f, -2458f, -677f, -1027f), vec4<f32>(-640f, 131f, -1322f, 467f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1294f, -558f, -807f, -277f))))), -func_2(Struct_5(var_0.b.c, var_0, Struct_3(Struct_1(var_0.c.a, vec4<i32>(u_input.b, var_0.b.a.x, var_0.b.a.x, -3311i), false), vec2<bool>(var_1.x, var_0.b.c)), var_0, Struct_2(1u, var_0.b, var_0.c)), ~var_0.c.b.yy, _wgslsmith_dot_vec2_i32(vec2<i32>(-57514i, 598i), vec2<i32>(u_input.b, u_input.d.x))).c.a).x, u_input.d.x);
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(abs(_wgslsmith_add_i32(var_0.c.b.x, _wgslsmith_add_i32(73399i, 20115i))), 16803i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(294f)), 730f, -1000f))), _wgslsmith_add_vec2_u32(u_input.a.zy, u_input.a.ww ^ select(~vec2<u32>(26544u, var_0.a), ~u_input.a.wy, vec2<bool>(true, true))), ~((~vec2<u32>(var_0.a, u_input.c) ^ ~u_input.a.yz) ^ u_input.a.xy), vec3<i32>(u_input.d.x, var_0.c.a.x, ~var_0.b.a.x));
}

