struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: bool,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(0u, 14309u), vec2<u32>(48132u, 18397u), vec2<u32>(1u, 27664u), vec2<u32>(0u, 0u), vec2<u32>(16255u, 4294967295u), vec2<u32>(60060u, 4294967295u), vec2<u32>(1u, 37611u));

var<private> global2: Struct_1;

var<private> global3: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(1u, 36319u), vec2<u32>(0u, 22122u), vec2<u32>(5503u, 0u), vec2<u32>(4294967295u, 67281u), vec2<u32>(1u, 29283u), vec2<u32>(85535u, 84771u), vec2<u32>(27874u, 4800u), vec2<u32>(1u, 6495u), vec2<u32>(22791u, 1u), vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(3282u, 12064u), vec2<u32>(1u, 52190u), vec2<u32>(1u, 37485u), vec2<u32>(0u, 54057u), vec2<u32>(1u, 1u), vec2<u32>(53234u, 4294967295u), vec2<u32>(13117u, 1u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = Struct_4(all(!vec4<bool>(arg_0, false, any(vec4<bool>(false, arg_0, true, arg_0)), arg_0)), Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(279f, -825f, -976f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(209f, 386f, -1047f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(387f)), _wgslsmith_f_op_f32(min(-225f, 832f)), _wgslsmith_f_op_f32(-462f + -244f)))), _wgslsmith_mult_i32(~29391i, global2.a.x | abs(u_input.a))), select(select(_wgslsmith_f_op_f32(trunc(612f)) <= _wgslsmith_div_f32(-337f, 168f), false, false), true, true), !(!select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(false, true)), vec2<bool>(arg_0, true), arg_0 & false)), Struct_2(vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(4294967295u, u_input.b, u_input.b)) << (u_input.b % 32u)), ~global3[_wgslsmith_index_u32(firstTrailingBit(21980u), 18u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -682f), 2283f, _wgslsmith_f_op_f32(501f - -1004f), -1094f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-392f, -595f, 595f, -2103f), vec4<f32>(-760f, 1191f, -1218f, 1443f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1227f, 517f, 218f, 247f))))), _wgslsmith_div_u32(~u_input.b, u_input.b), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c) ^ vec3<i32>(0i, 0i, u_input.c), ~global2.a))));
    global2 = var_0.e.e;
    let var_1 = Struct_1(select(vec3<i32>(u_input.c, -1i, _wgslsmith_div_i32(~global2.a.x, 37612i | var_0.e.e.a.x)), max((vec3<i32>(-1i, global2.a.x, var_0.e.e.a.x) ^ var_0.e.e.a) & var_0.e.e.a, global2.a), true));
    global2 = Struct_1(var_1.a);
    let var_2 = Struct_1(global2.a);
    return global2.a.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(min((global1[_wgslsmith_index_u32(u_input.b & u_input.b, 7u)] >> (~vec2<u32>(0u, u_input.b) % vec2<u32>(32u))) & (~global3[_wgslsmith_index_u32(u_input.b, 18u)] & vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(u_input.b, abs(0u))), global3[_wgslsmith_index_u32(15548u, 18u)], vec4<f32>(-363f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-968f + 517f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1779f, -416f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-650f)) - _wgslsmith_f_op_f32(round(395f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -360f)) * _wgslsmith_f_op_f32(min(-489f, 170f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 476f))))), u_input.b, arg_2);
    let var_1 = global2.a.x;
    var var_2 = arg_1.x;
    var var_3 = ~firstTrailingBit(0u);
    global2 = Struct_1(vec3<i32>(select(_wgslsmith_mult_i32(~56205i, -var_0.e.a.x), _wgslsmith_sub_i32(func_3(true), _wgslsmith_dot_vec3_i32(vec3<i32>(-28473i, arg_2.a.x, var_0.e.a.x), arg_2.a)), select(true, arg_1.x, true)), ~firstTrailingBit(1i), -func_3(arg_1.x)));
    return -641f;
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(func_2(abs(abs(vec4<i32>(u_input.a, -40499i, u_input.a, u_input.c) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) % vec4<u32>(32u)))), vec4<bool>(false & any(vec2<bool>(true, true)), true, true, 1i > _wgslsmith_dot_vec4_i32(vec4<i32>(-7026i, u_input.c, u_input.c, global2.a.x) ^ vec4<i32>(30972i, global2.a.x, global2.a.x, u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(global2.a.x, global2.a.x, -35500i, global2.a.x), vec4<i32>(1i, global2.a.x, -43875i, global2.a.x)))), Struct_1(global2.a)));
    let var_1 = vec3<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(select(1f, -1000f, any(vec2<bool>(false, true)) == false)) != _wgslsmith_f_op_f32(f32(-1f) * -1365f), ~abs(_wgslsmith_add_i32(-1i, -1i)) < u_input.c);
    global1 = array<vec2<u32>, 7>();
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(830f + 495f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-614f, -142f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 346f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1070f, 782f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-227f, 326f))))))));
    var var_3 = Struct_2(~(~vec2<u32>(1u | u_input.b, _wgslsmith_mult_u32(35464u, u_input.b))), _wgslsmith_clamp_vec2_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b, _wgslsmith_add_u32(u_input.b, ~0u)), 18u)], vec2<u32>(~1u, 39973u), vec2<u32>(u_input.b, select(firstTrailingBit(u_input.b), firstLeadingBit(u_input.b), false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(520f - var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -232f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x + var_2.x))))), _wgslsmith_dot_vec3_u32(min(~vec3<u32>(u_input.b, u_input.b, 5070u), firstLeadingBit(vec3<u32>(31764u, 0u, u_input.b))) ^ _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 1u, 4294967295u), vec3<u32>(u_input.b, u_input.b, 36327u)), select(vec3<u32>(u_input.b, 1876u, u_input.b), vec3<u32>(1u, 20021u, u_input.b), false)), ~(~(~vec3<u32>(4294967295u, 68539u, 5184u)))), Struct_1(abs(~global2.a ^ vec3<i32>(u_input.a, u_input.a, 0i))));
    return !vec2<bool>(!(_wgslsmith_f_op_f32(-1972f - var_3.c.x) == var_3.c.x), !select(var_1.x, all(var_1.yz), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(func_1(), vec2<bool>(true, true), true)));
    global3 = array<vec2<u32>, 18>();
    let var_1 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.x, true), vec3<bool>(true, true, true)), !vec3<bool>(any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), true, select(var_0.x, true, false)), all(!select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, false)))), !(!vec3<bool>(all(vec2<bool>(var_0.x, true)), var_0.x | var_0.x, all(vec4<bool>(false, var_0.x, var_0.x, var_0.x)))), var_0.x);
    global0 = all(select(var_1, select(vec3<bool>(all(vec2<bool>(var_0.x, true)), !var_0.x, !var_0.x), vec3<bool>(var_0.x | true, u_input.b > 52860u, any(vec4<bool>(false, var_0.x, var_0.x, var_0.x))), vec3<bool>(!var_0.x, true, any(vec4<bool>(var_0.x, var_0.x, var_1.x, true)))), !var_1.x));
    var var_2 = Struct_1(vec3<i32>(global2.a.x, ~(-_wgslsmith_sub_i32(-6915i, 15827i)), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.x >> (u_input.b % 32u), func_3(var_1.x), 0i | global2.a.x), vec3<i32>(_wgslsmith_mult_i32(global2.a.x, 2147483647i), 909i, firstTrailingBit(-4086i)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(1733f + -188f), _wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_f_op_f32(ceil(-715f)), _wgslsmith_f_op_f32(select(-1000f, -746f, true))))))));
    var var_4 = Struct_4(var_0.x, Struct_3(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(step(-1869f, _wgslsmith_f_op_f32(var_3.x + var_3.x))), var_3.x), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_sub_i32(~var_2.a.x, global2.a.x), u_input.c)), select(any(vec2<bool>(true, any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)))), any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), var_0.x), !(!var_1.zz), Struct_2(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), global1[_wgslsmith_index_u32(u_input.b ^ 22784u, 7u)]), vec2<u32>(u_input.b, _wgslsmith_mod_u32(min(0u, u_input.b), ~u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3) - var_3), _wgslsmith_dot_vec2_u32(~global1[_wgslsmith_index_u32(u_input.b, 7u)], max(global3[_wgslsmith_index_u32(~31995u, 18u)], ~vec2<u32>(0u, 81746u))), Struct_1(var_2.a)));
    let var_5 = select(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(var_4.e.a.x, 4294967295u, u_input.b, 47868u), vec4<u32>(u_input.b, u_input.b, 2806u, 57566u), vec4<bool>(false, false, var_4.c, var_0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(62933u, 49772u, 85069u, var_4.e.d), vec4<u32>(771u, var_4.e.a.x, u_input.b, 23739u), vec4<u32>(var_4.e.a.x, 1u, 0u, u_input.b))) | ~firstTrailingBit(vec4<u32>(var_4.e.d, 1u, 58439u, u_input.b)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_4.e.d, 0u, 8504u, 0u)) ^ vec4<u32>(u_input.b, 7504u, 35260u, u_input.b), max(vec4<u32>(89573u, var_4.e.b.x, 0u, u_input.b), abs(vec4<u32>(var_4.e.b.x, 43971u, u_input.b, 0u))))), select(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(0u, var_4.e.b.x, 3049u, u_input.b)), ~select(vec4<u32>(1u, u_input.b, var_4.e.b.x, var_4.e.a.x), vec4<u32>(u_input.b, 1u, u_input.b, 2920u), var_4.c)), ~(~(vec4<u32>(4294967295u, u_input.b, var_4.e.d, 1u) >> (vec4<u32>(49459u, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u)))), select(vec4<bool>(var_4.a, var_0.x || var_1.x, false, any(vec3<bool>(var_0.x, var_0.x, var_1.x))), select(!vec4<bool>(var_4.d.x, true, var_0.x, false), select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, var_4.a, false, true), var_1.x), vec4<bool>(var_4.a, true, var_0.x, true)), vec4<bool>(var_1.x, !var_1.x, var_4.b.b >= 51i, true))), select(!(!select(vec4<bool>(false, var_4.a, var_1.x, var_1.x), vec4<bool>(var_4.d.x, var_4.c, true, var_0.x), vec4<bool>(true, var_0.x, var_1.x, var_1.x))), select(!vec4<bool>(var_1.x, true, var_1.x, true), !vec4<bool>(var_0.x, true, var_4.a, false), !(!vec4<bool>(var_0.x, var_4.a, var_1.x, true))), true));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b, var_4.e.b.x), -245f, _wgslsmith_add_i32(_wgslsmith_add_i32(global2.a.x, ~(u_input.c << (40513u % 32u))), var_2.a.x ^ 12234i));
}

