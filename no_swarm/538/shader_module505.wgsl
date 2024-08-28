struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(0u, 4294967295u, 32176u), vec3<bool>(true, false, true), -939f, vec2<u32>(1u, 34486u));

var<private> global1: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global2: u32 = 0u;

var<private> global3: f32;

var<private> global4: array<Struct_1, 4>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>) -> u32 {
    var var_0 = -vec3<i32>(1i, 1i, 1i);
    let var_1 = firstTrailingBit(~_wgslsmith_div_u32(u_input.a.x, arg_1.x));
    var var_2 = global4[_wgslsmith_index_u32(arg_1.x, 4u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-521f, global0.c, 1190f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-642f, 786f, var_2.c)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, var_2.c, global0.c) * vec3<f32>(1841f, -839f, 1417f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1510f, -415f, _wgslsmith_f_op_f32(812f + global0.c))), any(!vec2<bool>(false, var_2.b.x))))));
    global0 = global4[_wgslsmith_index_u32(0u, 4u)];
    return _wgslsmith_div_u32(48299u, abs(28009u));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -350f);
    let var_1 = ~(4294967295u & func_3(~reverseBits(vec4<u32>(4294967295u, global0.d.x, global0.d.x, 1u)), vec4<u32>(964u, 94505u, ~135544u, global0.a.x)));
    var var_2 = Struct_1(~countOneBits(vec3<u32>(arg_2.d.x, reverseBits(1u), ~108975u)), !global0.b, _wgslsmith_div_f32(1040f, _wgslsmith_div_f32(-1481f, -1658f)), arg_2.a.xx);
    global0 = Struct_1(firstLeadingBit(~vec3<u32>(arg_2.d.x, 1u, arg_2.a.x)), select(global0.b, !select(!global0.b, vec3<bool>(global0.b.x, true, true), false || global0.b.x), vec3<bool>(false, any(!vec3<bool>(true, arg_2.b.x, var_2.b.x)), any(global0.b) && all(vec2<bool>(arg_2.b.x, global0.b.x)))), arg_2.c, arg_2.a.zx >> ((vec2<u32>(~4294967295u, ~0u) ^ abs(vec2<u32>(4294967295u, var_1))) % vec2<u32>(32u)));
    global1 = array<vec2<bool>, 8>();
    return vec4<i32>(_wgslsmith_sub_i32(arg_1.x >> ((71542u | arg_2.a.x) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(22111i, arg_1.x), ~arg_1.xy)), max(arg_1.x, arg_1.x), 41873i, max(_wgslsmith_mod_i32(max(arg_1.x, 31311i), _wgslsmith_sub_i32(arg_1.x, 12934i)), _wgslsmith_mod_i32(-2147483647i, arg_1.x))) & -firstTrailingBit(reverseBits(arg_1) & min(arg_1, arg_1));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.c, arg_2.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_0.x))))), -247f));
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(abs(max(u_input.a, _wgslsmith_sub_vec3_u32(arg_2.a, u_input.a))), min(arg_2.a, u_input.a)), !global0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c), 1f), _wgslsmith_f_op_f32(arg_2.c + _wgslsmith_f_op_f32(-arg_2.c))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.c)) * arg_2.c)), ~max(min(u_input.a.yz, vec2<u32>(0u, u_input.a.x)), ~vec2<u32>(global0.d.x, global0.a.x)) >> (vec2<u32>(13326u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, global0.d.x, 24715u, arg_2.a.x) >> (vec4<u32>(arg_2.d.x, 0u, 42386u, arg_2.d.x) % vec4<u32>(32u)), countOneBits(vec4<u32>(27388u, 0u, 76901u, u_input.a.x)))) % vec2<u32>(32u)));
    let var_1 = select(vec4<bool>(true, true, !(true && var_0.b.x), var_0.b.x), !(!vec4<bool>(var_0.b.x, !global0.b.x, arg_2.b.x, false)), false);
    let var_2 = Struct_1(~vec3<u32>(reverseBits(48641u), ~2364u, select(86591u, u_input.a.x, false)) >> ((var_0.a << (firstTrailingBit(reverseBits(global0.a)) % vec3<u32>(32u))) % vec3<u32>(32u)), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-192f * -945f)))), _wgslsmith_sub_vec2_u32(vec2<u32>(~24863u, global0.d.x), vec2<u32>(max(29894u, reverseBits(9306u)), global0.a.x)));
    var var_3 = -arg_1.xx;
    return arg_2;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global4 = array<Struct_1, 4>();
    global2 = 0u;
    var var_0 = vec2<u32>(~(~(global0.a.x | _wgslsmith_mod_u32(4294967295u, 31402u))), 84471u ^ arg_2.a.x);
    var var_1 = Struct_1(arg_2.a, arg_2.b, 886f, ~(~reverseBits(vec2<u32>(7505u, 0u))) << (vec2<u32>(~_wgslsmith_add_u32(0u, 1u), ~(~u_input.a.x)) % vec2<u32>(32u)));
    var var_2 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.c, 1000f, global0.c, arg_0))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, global0.c, 157f, -166f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, -1000f, var_1.c, arg_2.c))))), vec4<i32>(-6038i, -5762i, arg_1, -53324i), Struct_1(global0.a, vec3<bool>(true, false, false), _wgslsmith_f_op_f32(-528f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(528f, arg_0))))), _wgslsmith_mod_vec2_u32(arg_2.a.yz, _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(arg_2.a.x, var_1.d.x)), vec2<u32>(var_0.x, 29030u)))));
    return Struct_1(~(~(~arg_2.a)), !func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c, var_1.c, 406f, 452f)))), vec4<i32>(~arg_1, -arg_1, 2147483647i ^ arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(20462i, 43181i))), Struct_1(countOneBits(global0.a), vec3<bool>(var_1.b.x, global0.b.x, var_2.b.x), _wgslsmith_div_f32(global0.c, var_2.c), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 45181u), vec2<u32>(arg_2.a.x, 7643u)))).b, -104f, global0.d);
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_f32(-global0.c), 2147483647i, func_4(vec4<f32>(-1251f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-312f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1823f)) - _wgslsmith_f_op_f32(-global0.c))), max(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-35322i, 2147483647i, -2147483647i, -2147483647i), vec4<i32>(4221i, 2147483647i, 0i, -27750i), vec4<i32>(6661i, -1i, -8885i, -47414i)), func_2(4294967295u, vec4<i32>(38781i, 28110i, -2147483647i, 49403i), global4[_wgslsmith_index_u32(global0.d.x, 4u)])), ~abs(vec4<i32>(4044i, 43157i, -2071i, -2147483647i))), global4[_wgslsmith_index_u32(96807u, 4u)]));
    global1 = array<vec2<bool>, 8>();
    global3 = var_0.c;
    var var_1 = func_5(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c))))), -(~(-1i)), global4[_wgslsmith_index_u32(global0.d.x & ~(~func_3(vec4<u32>(4306u, 0u, 37795u, u_input.a.x), vec4<u32>(29852u, var_0.d.x, global0.d.x, var_0.d.x))), 4u)]).b;
    var var_2 = -1i;
    return Struct_1(_wgslsmith_div_vec3_u32(func_5(_wgslsmith_div_f32(155f, global0.c), abs(-21269i), func_5(var_0.c, 39641i, Struct_1(vec3<u32>(0u, global0.a.x, 10916u), vec3<bool>(false, true, var_0.b.x), 286f, vec2<u32>(var_0.a.x, 1u)))).a, countOneBits(vec3<u32>(10622u, var_0.d.x, 48521u))) ^ ~func_4(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c, global0.c, -148f, -909f))), vec4<i32>(1i, 1i, 1i, 1i), global4[_wgslsmith_index_u32(func_4(vec4<f32>(1178f, global0.c, global0.c, global0.c), vec4<i32>(-1i, 1i, 0i, 17231i), global4[_wgslsmith_index_u32(0u, 4u)]).a.x, 4u)]).a, global0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_f32(f32(-1f) * -2428f))), true)), ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(global0.d, ~vec2<u32>(4294967295u, 1u)), ~(vec2<u32>(var_0.d.x, var_0.a.x) | vec2<u32>(1u, 0u))));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(arg_2.a << ((arg_2.a ^ _wgslsmith_div_vec3_u32(select(arg_0.a, vec3<u32>(29685u, global0.a.x, 0u), global0.b.x), arg_0.a)) % vec3<u32>(32u)), func_1().b, _wgslsmith_f_op_f32(344f - _wgslsmith_div_f32(arg_0.c, -783f)), min(vec2<u32>(~func_3(vec4<u32>(4294967295u, u_input.a.x, 2416u, global0.a.x), vec4<u32>(arg_0.d.x, u_input.a.x, 55056u, 1u)), 1u), countOneBits(~arg_2.d >> (vec2<u32>(u_input.a.x, arg_0.a.x) % vec2<u32>(32u)))));
    global1 = array<vec2<bool>, 8>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(705f, arg_2.c, -1000f), vec3<f32>(arg_1, arg_0.c, 386f))))))));
    var var_2 = vec2<i32>(1i, 1i);
    var_2 = select(vec2<i32>(var_2.x, var_2.x | _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, var_2.x, var_2.x, 1i)), reverseBits(vec4<i32>(var_2.x, 8483i, var_2.x, 0i)))), (-vec2<i32>(14560i, var_2.x) << (var_0.a.xx % vec2<u32>(32u))) & vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(0i, var_2.x), -1i), var_2.x << ((24057u | u_input.a.x) % 32u)), vec2<bool>(false, !all(!arg_0.b)));
    return vec3<bool>(global0.b.x & func_5(590f, 1i, arg_2).b.x, _wgslsmith_div_f32(-137f, _wgslsmith_f_op_f32(round(var_1.x))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c, 947f))), !func_1().b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global0.d.x;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(319f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1712f + -1004f)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-838f + -2200f))), _wgslsmith_f_op_f32(max(-938f, _wgslsmith_f_op_f32(select(global0.c, global0.c, global0.b.x)))), -2721f, _wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c, global0.c, 475f, -359f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, 1140f, -633f, -1203f) * vec4<f32>(global0.c, global0.c, global0.c, global0.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1063f, -145f, global0.c, global0.c), vec4<f32>(832f, global0.c, global0.c, global0.c))))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1254f, 295f, -491f, _wgslsmith_f_op_f32(-global0.c))))));
    global0 = Struct_1(vec3<u32>(~4294967295u, 4294967295u, ~var_0), func_6(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -1377f), global4[_wgslsmith_index_u32(8085u, 4u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1887f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2548f)) - global0.c))), (~global0.a.yy << (firstLeadingBit(abs(vec2<u32>(u_input.a.x, 18052u))) % vec2<u32>(32u))) ^ vec2<u32>(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1765f, 369f, global0.c, var_1.x)), vec4<i32>(-41993i, -2147483647i, 0i, -30476i), global4[_wgslsmith_index_u32(var_0, 4u)]).a.x, abs(u_input.a.x << (1267u % 32u))));
    var var_2 = Struct_1(vec3<u32>(~0u, 26144u, _wgslsmith_sub_u32(global0.a.x, ~global0.d.x)), !vec3<bool>(false, all(vec4<bool>(true, true, true, true)), true), func_5(963f, ~(-1i), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~func_5(648f, 45807i, Struct_1(u_input.a, global0.b, global0.c, global0.d)).d.x, _wgslsmith_sub_u32(u_input.a.x, select(30641u, 120662u, false))), 4u)]).c, u_input.a.yx);
    let var_3 = Struct_1(select(~vec3<u32>(50076u, 20582u, 8087u), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(var_0, 0u, 1u)), vec3<u32>(global0.d.x, 0u, var_2.a.x) ^ u_input.a), true) << (u_input.a % vec3<u32>(32u)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(func_1().c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-739f))))) * _wgslsmith_f_op_f32(max(115f, var_1.x))), ~(~firstLeadingBit(~u_input.a.xx)));
    var var_4 = func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1476f - _wgslsmith_f_op_f32(979f + -192f)))), -1036f, !(1000f <= _wgslsmith_f_op_f32(-global0.c)))), -34512i | countOneBits(select(_wgslsmith_div_i32(19852i, 2147483647i), 1654i >> (1u % 32u), global0.b.x)), func_4(vec4<f32>(global0.c, 1837f, _wgslsmith_f_op_f32(f32(-1f) * -1315f), 1f), vec4<i32>(0i, _wgslsmith_mod_i32(~1i, 49276i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-20495i, 27400i, 0i, 0i), vec4<i32>(-1i, -17209i, 34534i, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-64906i, -35747i, 30980i, 60302i), vec4<i32>(-16449i, 35519i, 58534i, -41149i))), ~(-16883i)), Struct_1(vec3<u32>(func_4(vec4<f32>(885f, -803f, 1289f, 222f), vec4<i32>(15687i, 2147483647i, 6279i, -38446i), Struct_1(vec3<u32>(var_0, var_0, 4294967295u), vec3<bool>(global0.b.x, var_2.b.x, true), var_3.c, var_3.a.xy)).a.x, countOneBits(var_0), var_2.d.x), !var_2.b, func_4(vec4<f32>(477f, var_2.c, 1240f, 1065f), reverseBits(vec4<i32>(2785i, 32909i, 56855i, -7236i)), func_4(vec4<f32>(-1000f, global0.c, global0.c, global0.c), vec4<i32>(-30190i, -21808i, 0i, -62905i), global4[_wgslsmith_index_u32(var_3.d.x, 4u)])).c, var_2.d)));
    let var_5 = vec3<u32>(var_4.a.x, ~8470u, ~(~var_3.d.x));
    global2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(max(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 4017i, 12083i), vec3<i32>(-1i, 13116i, 0i)) | select(vec3<i32>(1i, -12298i, 0i), vec3<i32>(2147483647i, -28347i, 1i), true), firstLeadingBit(vec3<i32>(-1i, -6581i, -2147483647i))), firstTrailingBit(func_2(u_input.a.x ^ 4294967295u, vec4<i32>(-2147483647i, 2910i, -5441i, 10408i), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, var_0), 4u)]).yyw)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global0.c), 406f, _wgslsmith_f_op_f32(-496f - 831f), _wgslsmith_f_op_f32(-var_4.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c, 869f, 310f, 1248f))), select(vec4<bool>(true, true, global0.b.x, var_3.b.x), select(vec4<bool>(var_3.b.x, true, false, true), vec4<bool>(var_4.b.x, var_4.b.x, true, true), true), select(vec4<bool>(true, true, var_2.b.x, true), vec4<bool>(var_3.b.x, true, false, var_4.b.x), vec4<bool>(true, var_3.b.x, var_3.b.x, true))))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.c, 1000f, var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2056f), _wgslsmith_f_op_f32(-1425f - var_2.c), -205f, _wgslsmith_f_op_f32(-1844f + global0.c)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, 874f, var_1.x, var_1.x))))))), func_3(reverseBits(abs(vec4<u32>(var_5.x, 1u, 24756u, var_5.x))), vec4<u32>(var_2.d.x | _wgslsmith_div_u32(21670u, var_0), 19331u, var_5.x, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-710f * _wgslsmith_f_op_f32(ceil(var_1.x))))));
}

