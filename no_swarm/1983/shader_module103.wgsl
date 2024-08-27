struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16>;

var<private> global1: i32;

var<private> global2: array<i32, 27>;

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, false, true)));

var<private> global4: f32 = 933f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: bool) -> f32 {
    let var_0 = true;
    var var_1 = Struct_1(_wgslsmith_div_u32((u_input.a << (u_input.a % 32u)) & 0u, u_input.c.x) ^ 42771u, ~(firstTrailingBit(firstTrailingBit(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 27u)], -9249i, arg_1.x, 2147483647i))) >> (select(_wgslsmith_div_vec4_u32(vec4<u32>(23516u, u_input.a, u_input.d.x, 0u), vec4<u32>(27101u, 4294967295u, 0u, 12870u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.d.x, 12983u, u_input.a), vec4<u32>(u_input.c.x, 68714u, 65264u, u_input.a)), select(arg_2, vec4<bool>(arg_0.x, arg_3, arg_3, arg_3), false)) % vec4<u32>(32u))), arg_2.yyw);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1429f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-124f, -274f) + -1370f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(547f, -1300f), vec2<f32>(-764f, -1174f), arg_0.zz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1632f, 1000f)))))));
    global0 = array<vec2<u32>, 16>();
    var var_3 = any(vec3<bool>(arg_0.x, !((150f <= var_2.x) | true), _wgslsmith_add_i32(~u_input.b, -u_input.b) > _wgslsmith_dot_vec4_i32(vec4<i32>(9919i, arg_1.x, global2[_wgslsmith_index_u32(7489u, 27u)], var_1.b.x), vec4<i32>(arg_1.x, global2[_wgslsmith_index_u32(var_1.a, 27u)], 0i, -10370i))));
    return _wgslsmith_f_op_f32(-1293f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(2585f)))))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: f32) -> u32 {
    global2 = array<i32, 27>();
    global3 = array<Struct_2, 32>();
    let var_0 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), vec3<bool>(select(false, false, false), true, any(vec2<bool>(false, true)))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), select(!vec3<bool>(69660u >= arg_2, true, true), vec3<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), false), vec3<bool>(u_input.b >= (arg_1 | -1i), true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))))), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true));
    global2 = array<i32, 27>();
    let var_1 = min(abs(~countOneBits(17472u)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_2, u_input.d.x, arg_2)), ~(~u_input.c)));
    return 1u;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: vec2<f32>) -> bool {
    let var_0 = !(!select(!vec2<bool>(true, arg_1), !vec2<bool>(arg_1, true), vec2<bool>(1377f != arg_3.x, any(vec2<bool>(arg_1, arg_1)))));
    global1 = ~(_wgslsmith_mod_i32(abs(32090i), -5755i) << (arg_2 % 32u));
    var var_1 = -519i;
    let var_2 = Struct_1(4294967295u, firstTrailingBit((vec4<i32>(36022i, global2[_wgslsmith_index_u32(1u, 27u)], 6058i, global2[_wgslsmith_index_u32(arg_0, 27u)]) >> (~vec4<u32>(arg_2, 23407u, arg_2, 0u) % vec4<u32>(32u))) | -max(vec4<i32>(-10474i, u_input.b, 1i, -33704i), vec4<i32>(global2[_wgslsmith_index_u32(1u, 27u)], 1i, u_input.b, u_input.b))), !(!vec3<bool>(any(vec4<bool>(var_0.x, true, false, arg_1)), arg_1, !var_0.x)));
    var var_3 = u_input.c;
    return true;
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_3(1f, _wgslsmith_div_u32(~0u << (_wgslsmith_sub_u32(u_input.a >> (47643u % 32u), 67183u ^ u_input.a) % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.a) << (vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u)), ~global0[_wgslsmith_index_u32(0u, 16u)]), ~39544u)), -497f);
    global3 = array<Struct_2, 32>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(634f - 184f), _wgslsmith_f_op_f32(-227f * _wgslsmith_div_f32(1219f, _wgslsmith_f_op_f32(var_0.c - 1f))), var_0.c);
    global3 = array<Struct_2, 32>();
    var var_2 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.b, ~1u), 570u), -(~(-abs(vec4<i32>(global2[_wgslsmith_index_u32(var_0.b, 27u)], 0i, u_input.b, 0i)))), vec3<bool>(func_5(func_4(_wgslsmith_f_op_f32(round(var_0.a)), -21045i, _wgslsmith_add_u32(var_0.b, var_0.b), _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), vec2<i32>(45052i, u_input.b), vec4<bool>(true, true, false, true), true))), true, ~(~42583u), var_1.yx), true, !any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true))));
    return vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(~global2[_wgslsmith_index_u32(var_2.a, 27u)], i32(-1i) * -10554i, u_input.b), -select(var_2.b.zyw, vec3<i32>(2147483647i, var_2.b.x, var_2.b.x), var_2.c.x) & min(firstLeadingBit(vec3<i32>(-1i, -8653i, u_input.b)), abs(var_2.b.yzz))), -21054i);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    var var_0 = Struct_2(arg_1.c);
    let var_1 = !(!func_5(u_input.c.x | 1u, !(global2[_wgslsmith_index_u32(0u, 27u)] < 1i), u_input.d.x, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-565f, -1138f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(141f, -568f, 2165f, -998f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(177f, -774f, -233f, 241f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(199f, 2499f, _wgslsmith_f_op_f32(floor(1333f)), _wgslsmith_f_op_f32(525f - 151f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1481f, -671f, 672f, -798f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-514f, 705f, 833f, 195f))))));
    global4 = 799f;
    var var_3 = arg_1;
    return Struct_3(-802f, 4294967295u, var_2.x);
}

fn func_1() -> Struct_3 {
    global3 = array<Struct_2, 32>();
    global0 = array<vec2<u32>, 16>();
    global2 = array<i32, 27>();
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(590f, 625f, -843f, -1079f), vec4<f32>(441f, 1346f, -1000f, -551f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1229f, 1792f, -803f, 1276f) * vec4<f32>(285f, 342f, 521f, 1331f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, 991f, 1000f, 1635f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -360f), 1509f, -1359f, -252f))))));
    global0 = array<vec2<u32>, 16>();
    return func_6(func_2(), Struct_1(~(~min(4294967295u, 0u)), vec4<i32>(global2[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_add_i32(-1i, firstLeadingBit(u_input.b)), _wgslsmith_dot_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 27u)], u_input.b, -23880i, global2[_wgslsmith_index_u32(u_input.d.x, 27u)]), vec4<i32>(-2147483647i, -40282i, global2[_wgslsmith_index_u32(u_input.c.x, 27u)], 2147483647i)), -_wgslsmith_clamp_i32(-15786i, -49554i, global2[_wgslsmith_index_u32(1u, 27u)])), vec3<bool>(true && (-814f <= var_0.x), any(vec4<bool>(true, false, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)))), false | !any(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = true;
    global4 = _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c))))));
    global1 = -countOneBits(-11981i);
    let var_2 = global3[_wgslsmith_index_u32(func_1().b, 32u)];
    var var_3 = func_6(func_2(), Struct_1(u_input.a, _wgslsmith_mult_vec4_i32(abs(vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 27u)], -2147483647i, global2[_wgslsmith_index_u32(2939u, 27u)], 60581i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-9870i, -1i, 1i, u_input.b), vec4<i32>(global2[_wgslsmith_index_u32(var_0.b, 27u)], -2147483647i, -28145i, u_input.b))), vec3<bool>(var_1, var_1, var_2.a.x)), true).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(308f, var_0.c, _wgslsmith_f_op_f32(417f * -1017f), -1507f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.a, 2009f)), _wgslsmith_f_op_f32(var_0.c * var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1919f), -707f) - vec4<f32>(_wgslsmith_f_op_f32(var_0.a + -686f), -428f, _wgslsmith_f_op_f32(342f + var_0.a), _wgslsmith_f_op_f32(round(-1149f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, 443f) * vec2<f32>(var_0.c, var_0.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) + vec2<f32>(var_0.c, 687f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -768f)))))), _wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(var_0.b, u_input.a, var_0.b)), max(u_input.c, u_input.c)), _wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(15005u, 52559u, 0u), vec3<u32>(99u, u_input.d.x, 4294967295u)), u_input.c)));
}

