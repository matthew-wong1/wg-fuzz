struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec4<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<i32, 8>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    return select(select(!vec3<bool>(arg_0.c.x, !arg_0.c.x, any(arg_0.c)), vec3<bool>(arg_0.c.x, all(vec4<bool>(false, false, arg_0.d.b.x, true)), true), arg_0.c.x), vec3<bool>(arg_0.c.x, !(true & any(arg_0.d.b.zy)), !all(select(arg_0.c, arg_0.c, true))), select(arg_0.c.xzy, select(!select(arg_0.d.b, vec3<bool>(arg_0.d.a, arg_0.d.a, false), true), !(!vec3<bool>(arg_0.c.x, false, false)), false), arg_0.d.b));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> u32 {
    global2 = array<i32, 8>();
    let var_0 = Struct_1(arg_2.d.e.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.d.e.b.x, arg_2.d.e.b.x, _wgslsmith_f_op_f32(round(-1000f)), arg_2.d.e.b.x))))));
    var var_1 = select(func_3(arg_2), !vec3<bool>(func_3(arg_2).x, arg_0, false), func_3(arg_2).x);
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-866f, arg_2.d.e.b.x)));
    let var_3 = Struct_2(false, select(!(!select(arg_2.d.b, arg_2.c.yyy, vec3<bool>(true, arg_2.d.a, true))), vec3<bool>(_wgslsmith_f_op_f32(-arg_2.d.e.b.x) > _wgslsmith_f_op_f32(-var_0.b.x), true, true), arg_2.c.yzz), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(-1i, 0i, global2[_wgslsmith_index_u32(u_input.b, 8u)], arg_2.d.c.x) ^ vec4<i32>(arg_1, arg_1, 1i, arg_1)), select(vec4<i32>(~global2[_wgslsmith_index_u32(arg_2.a.x, 8u)], countOneBits(global2[_wgslsmith_index_u32(arg_2.d.d, 8u)]), 9839i, _wgslsmith_add_i32(-47830i, arg_1)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, -2147483647i, 2147483647i, arg_1), countOneBits(vec4<i32>(0i, 2147483647i, 1i, arg_1)), vec4<i32>(21236i, -2147483647i, -1i, arg_2.b.x)), vec4<bool>(false, select(arg_2.d.a, var_1.x, false), arg_0 & arg_0, arg_2.d.a && false))), u_input.b, Struct_1(_wgslsmith_div_vec4_u32(max(vec4<u32>(20707u, 4294967295u, 4873u, var_0.a.x), var_0.a), var_0.a), arg_2.d.e.b));
    return var_3.e.a.x;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    global0 = array<vec2<bool>, 5>();
    let var_0 = arg_3.d.e;
    let var_1 = arg_3.d.e;
    global2 = array<i32, 8>();
    global1 = array<Struct_1, 13>();
    return _wgslsmith_dot_vec2_u32(abs(~(arg_2.a.zz << (vec2<u32>(var_1.a.x, 1u) % vec2<u32>(32u)))) | vec2<u32>(arg_3.a.x, min(countOneBits(arg_1.d.e.a.x), _wgslsmith_clamp_u32(13401u, var_0.a.x, 0u))), ~(~_wgslsmith_clamp_vec2_u32(~var_0.a.zz, arg_3.a.yx, select(var_0.a.xz, var_0.a.yx, arg_2.d.b.xx))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global0 = array<vec2<bool>, 5>();
    let var_0 = !select(arg_2.a, arg_2.a, false);
    var var_1 = arg_2.e;
    global1 = array<Struct_1, 13>();
    var var_2 = arg_2.a | func_3(Struct_3(vec3<u32>(arg_1.a.x, _wgslsmith_mod_u32(18003u, 4294967295u), ~1u), _wgslsmith_mult_vec4_i32(abs(arg_2.c), arg_2.c & vec4<i32>(global2[_wgslsmith_index_u32(arg_2.d, 8u)], global2[_wgslsmith_index_u32(14629u, 8u)], global2[_wgslsmith_index_u32(arg_2.e.a.x, 8u)], 36641i)), vec4<bool>(false, all(arg_2.b), true, false), Struct_2(var_1.b.x <= arg_0.b.x, func_3(Struct_3(vec3<u32>(953u, 69506u, arg_1.a.x), vec4<i32>(global2[_wgslsmith_index_u32(43048u, 8u)], arg_2.c.x, 0i, arg_2.c.x), vec4<bool>(false, var_0, arg_2.b.x, false), arg_2)), vec4<i32>(1i, arg_2.c.x, -2904i, -7089i), _wgslsmith_mult_u32(arg_2.e.a.x, 27046u), Struct_1(vec4<u32>(arg_0.a.x, 42727u, 2491u, arg_1.a.x), vec4<f32>(arg_1.b.x, 356f, arg_1.b.x, -1000f))))).x;
    return Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.e.b)));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_2 {
    var var_0 = ~(~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.b, 4294967295u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.b, 10906u, u_input.a)), ~vec4<u32>(4294967295u, u_input.a, 26993u, 26423u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, 0u, u_input.b), vec4<u32>(1u, 15080u, u_input.a, u_input.b)))) << (vec4<u32>(u_input.b, max(33370u, ~4422u) >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(13143u, 3935u, u_input.a, u_input.b)), ~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)) % 32u), u_input.a, u_input.b) % vec4<u32>(32u));
    let var_1 = func_5(global1[_wgslsmith_index_u32(40572u, 13u)], global1[_wgslsmith_index_u32(func_4(_wgslsmith_add_u32(func_2(true, global2[_wgslsmith_index_u32(21625u, 8u)], Struct_3(var_0.wzw, vec4<i32>(-1i, -15232i, 0i, -68957i), vec4<bool>(false, false, true, true), Struct_2(false, vec3<bool>(false, false, false), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 8u)], 42000i, -27333i, global2[_wgslsmith_index_u32(44941u, 8u)]), var_0.x, Struct_1(vec4<u32>(var_0.x, 86098u, var_0.x, var_0.x), vec4<f32>(1012f, arg_0, -1732f, -362f))))), 0u), Struct_3(var_0.wxx, firstLeadingBit(min(vec4<i32>(9190i, global2[_wgslsmith_index_u32(9756u, 8u)], -1i, global2[_wgslsmith_index_u32(u_input.a, 8u)]), vec4<i32>(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(var_0.x, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_2(true, vec3<bool>(true, false, false), vec4<i32>(-19955i, global2[_wgslsmith_index_u32(var_0.x, 8u)], global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(u_input.b, 8u)]), 4294967295u, global1[_wgslsmith_index_u32(~var_0.x, 13u)])), Struct_3(~vec3<u32>(u_input.b, 3002u, 50410u), _wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(var_0.x, 8u)], global2[_wgslsmith_index_u32(5932u, 8u)], -20991i, -2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 8u)], -2147483647i, -28577i, -56603i)) >> (~vec4<u32>(var_0.x, var_0.x, var_0.x, 0u) % vec4<u32>(32u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), Struct_2(all(vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), ~vec4<i32>(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], 1i, -24880i), ~u_input.b, Struct_1(vec4<u32>(u_input.a, 0u, 1u, u_input.b), vec4<f32>(arg_0, arg_1, arg_0, 1469f)))), Struct_3(_wgslsmith_sub_vec3_u32(var_0.zxx, select(var_0.wwx, var_0.wxw, false)), -countOneBits(vec4<i32>(1i, global2[_wgslsmith_index_u32(39990u, 8u)], 30983i, -34643i)), vec4<bool>(true, true, true, true), Struct_2(true, vec3<bool>(true, true, false), vec4<i32>(42913i, -18783i, 41312i, global2[_wgslsmith_index_u32(1u, 8u)]) >> (vec4<u32>(var_0.x, 0u, var_0.x, 56289u) % vec4<u32>(32u)), 1u, Struct_1(vec4<u32>(u_input.a, var_0.x, u_input.a, 23493u), vec4<f32>(909f, 441f, -442f, -851f))))), 13u)], Struct_2(true, vec3<bool>(true, false && select(true, false, true), true), reverseBits(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(1i, global2[_wgslsmith_index_u32(23791u, 8u)], -1i, -45535i)), vec4<i32>(1i, 2147483647i, -2147483647i, -1i), vec4<i32>(-50460i, global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(40871u, 8u)], 28945i))), 14905u, global1[_wgslsmith_index_u32(~u_input.a, 13u)]));
    var var_2 = Struct_2(true, select(vec3<bool>(all(vec3<bool>(true, true, false)) & true, false && (arg_0 > arg_0), false), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), !func_3(Struct_3(var_0.xyx, vec4<i32>(1i, -44900i, global2[_wgslsmith_index_u32(u_input.b, 8u)], global2[_wgslsmith_index_u32(31192u, 8u)]), vec4<bool>(true, true, true, false), Struct_2(false, vec3<bool>(true, false, false), vec4<i32>(global2[_wgslsmith_index_u32(var_0.x, 8u)], 34444i, 2147483647i, 9065i), 72870u, Struct_1(var_1.a, var_1.b))))), -_wgslsmith_div_vec4_i32(vec4<i32>(-46500i, global2[_wgslsmith_index_u32(u_input.b, 8u)], -17120i, global2[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(-19973i, 25210i, 2147483647i, global2[_wgslsmith_index_u32(0u, 8u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 8u)], 18193i, 47678i, global2[_wgslsmith_index_u32(7866u, 8u)]), vec4<i32>(1i, global2[_wgslsmith_index_u32(1187u, 8u)], global2[_wgslsmith_index_u32(var_1.a.x, 8u)], -60670i))) >> ((var_1.a & _wgslsmith_mult_vec4_u32(var_1.a, var_1.a)) % vec4<u32>(32u)), ~abs(u_input.a), var_1);
    var var_3 = _wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(-var_2.c, vec4<i32>(2949i, 17758i & global2[_wgslsmith_index_u32(0u, 8u)], 49468i, 30457i)), abs(select(var_2.c, ~(-var_2.c), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, var_2.a, false), !vec4<bool>(false, var_2.b.x, var_2.a, var_2.b.x)))));
    let var_4 = 1u;
    return Struct_2(!(var_2.b.x || (var_2.b.x | false)), var_2.b, vec4<i32>(firstLeadingBit(var_3.x), -2147483647i, var_3.x, abs(_wgslsmith_div_i32(0i, 1349i & global2[_wgslsmith_index_u32(u_input.b, 8u)]))), u_input.b, var_1);
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = Struct_2(!arg_1, vec3<bool>(true, !func_1(_wgslsmith_f_op_f32(arg_0.e.b.x - -2598f), _wgslsmith_f_op_f32(arg_0.e.b.x + arg_0.e.b.x)).b.x, (_wgslsmith_f_op_f32(f32(-1f) * -1502f) > _wgslsmith_f_op_f32(round(arg_0.e.b.x))) | (true & arg_1)), ~vec4<i32>(~1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_2, arg_0.c.x), _wgslsmith_clamp_i32(-2147483647i, arg_0.c.x, global2[_wgslsmith_index_u32(arg_0.e.a.x, 8u)])), firstLeadingBit(_wgslsmith_mod_i32(arg_2, global2[_wgslsmith_index_u32(u_input.a, 8u)])), _wgslsmith_clamp_i32(0i ^ global2[_wgslsmith_index_u32(arg_0.d, 8u)], -1i, -2147483647i)), _wgslsmith_sub_u32(countOneBits((0u ^ u_input.b) & 36251u), firstLeadingBit(11080u)), func_5(arg_0.e, Struct_1(~arg_0.e.a, vec4<f32>(-1000f, arg_0.e.b.x, arg_0.e.b.x, -828f)), func_1(arg_0.e.b.x, -678f)));
    let var_1 = var_0.e;
    let var_2 = func_1(-1076f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(314f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.x + 707f), var_1.b.x))), 885f));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~abs(8858u)), ~(~0u), abs(min(78057u, select(arg_0.e.a.x, 4507u, true))), _wgslsmith_mod_u32(u_input.b, 0u)), vec4<u32>(var_1.a.x, var_2.e.a.x, u_input.b, 1u)), 13u)];
    return 411f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 13>();
    let var_0 = _wgslsmith_f_op_f32(func_6(func_1(1603f, -447f), all(select(vec4<bool>(true, any(vec3<bool>(false, false, true)), true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true))), abs(2147483647i)));
    let var_1 = true;
    let var_2 = ~select(max(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(40770u, 34957u)), ~countOneBits(vec2<u32>(u_input.a, 82591u))), abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(39873u, 1u), vec2<u32>(57377u, u_input.a), vec2<u32>(u_input.a, 2582u))), select(!func_3(Struct_3(vec3<u32>(4294967295u, 35243u, u_input.b), vec4<i32>(44182i, global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(119639u, 8u)], global2[_wgslsmith_index_u32(58930u, 8u)]), vec4<bool>(false, var_1, var_1, var_1), Struct_2(true, vec3<bool>(true, var_1, var_1), vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], -2147483647i, global2[_wgslsmith_index_u32(u_input.a, 8u)]), u_input.b, Struct_1(vec4<u32>(u_input.a, u_input.b, u_input.b, 36118u), vec4<f32>(var_0, var_0, var_0, var_0))))).zy, !select(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)], vec2<bool>(var_1, true)), (global2[_wgslsmith_index_u32(u_input.b, 8u)] < -1i) & true));
    global2 = array<i32, 8>();
    let var_3 = func_1(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1201f, 1000f), _wgslsmith_f_op_f32(-var_0)))))).e.b.x;
    global2 = array<i32, 8>();
    let var_4 = !select(vec4<bool>((var_3 == var_0) | false, !(!var_1), var_1, true), select(select(!vec4<bool>(false, false, false, var_1), select(vec4<bool>(true, true, var_1, var_1), vec4<bool>(true, true, var_1, false), false), !var_1), vec4<bool>(false && var_1, var_1, false, !var_1), !select(vec4<bool>(false, true, true, var_1), vec4<bool>(true, var_1, var_1, false), var_1)), select(!(!vec4<bool>(false, var_1, true, true)), select(!vec4<bool>(var_1, false, var_1, true), vec4<bool>(false, var_1, var_1, var_1), var_0 >= 1439f), any(!vec4<bool>(false, var_1, var_1, var_1))));
    var var_5 = func_1(-646f, -979f);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c, vec3<i32>(i32(-1i) * -_wgslsmith_add_i32(38335i, global2[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_div_i32(~(-var_5.c.x), _wgslsmith_mod_i32(var_5.c.x ^ 1297i, global2[_wgslsmith_index_u32(57200u, 8u)])), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_5.c.x, var_5.c.x, 17895i, 20323i), var_5.c)), ~func_5(global1[_wgslsmith_index_u32(~u_input.b, 13u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(4294967295u), var_5.d), 13u)], Struct_2(true, var_4.wyz, -vec4<i32>(2147483647i, var_5.c.x, global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(72772u, 8u)]), ~37956u, Struct_1(vec4<u32>(7327u, 5069u, var_5.e.a.x, var_2.x), vec4<f32>(-809f, 971f, 233f, 1000f)))).a.x, var_5.e.b.x, vec2<f32>(_wgslsmith_f_op_f32(func_6(Struct_2(1036f != var_0, !vec3<bool>(false, var_4.x, var_5.a), _wgslsmith_sub_vec4_i32(var_5.c, vec4<i32>(-22507i, 59843i, -2147483647i, 45335i)), ~var_5.d, Struct_1(var_5.e.a, var_5.e.b)), var_5.b.x & var_1, -38537i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.e.b.x)))));
}

