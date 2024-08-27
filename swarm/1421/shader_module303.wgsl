struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(1015f, -1324f, -1039f, -2282f, 727f, -1000f, -293f, -1488f, -292f, -558f, 1394f, 818f, 131f, 135f, 465f, 419f, 469f, -1119f, -557f, -472f, 516f);

var<private> global1: array<vec2<i32>, 12>;

var<private> global2: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_1(false, vec3<bool>(false, false, false)), Struct_1(true, vec3<bool>(true, false, true)), 1493f), Struct_3(Struct_1(true, vec3<bool>(true, false, true)), Struct_1(false, vec3<bool>(true, true, true)), 144f), Struct_3(Struct_1(false, vec3<bool>(true, false, false)), Struct_1(false, vec3<bool>(true, true, true)), -1000f), Struct_3(Struct_1(false, vec3<bool>(true, true, false)), Struct_1(true, vec3<bool>(false, true, false)), 230f), Struct_3(Struct_1(false, vec3<bool>(false, false, false)), Struct_1(true, vec3<bool>(true, true, false)), 809f), Struct_3(Struct_1(true, vec3<bool>(true, true, true)), Struct_1(false, vec3<bool>(false, true, true)), 311f), Struct_3(Struct_1(false, vec3<bool>(true, false, true)), Struct_1(false, vec3<bool>(true, false, false)), -2856f), Struct_3(Struct_1(true, vec3<bool>(false, false, true)), Struct_1(true, vec3<bool>(false, true, true)), -125f), Struct_3(Struct_1(true, vec3<bool>(true, false, true)), Struct_1(false, vec3<bool>(true, false, true)), 1175f), Struct_3(Struct_1(false, vec3<bool>(false, false, false)), Struct_1(false, vec3<bool>(true, false, true)), -1000f), Struct_3(Struct_1(true, vec3<bool>(true, true, true)), Struct_1(false, vec3<bool>(false, false, false)), -2758f), Struct_3(Struct_1(false, vec3<bool>(true, true, false)), Struct_1(true, vec3<bool>(true, true, true)), -1630f), Struct_3(Struct_1(true, vec3<bool>(true, true, false)), Struct_1(false, vec3<bool>(true, false, true)), -1828f), Struct_3(Struct_1(false, vec3<bool>(true, true, false)), Struct_1(true, vec3<bool>(false, true, false)), 844f), Struct_3(Struct_1(false, vec3<bool>(true, false, false)), Struct_1(false, vec3<bool>(true, false, true)), -1617f), Struct_3(Struct_1(true, vec3<bool>(true, false, true)), Struct_1(false, vec3<bool>(false, true, false)), 1865f), Struct_3(Struct_1(false, vec3<bool>(false, true, true)), Struct_1(false, vec3<bool>(true, true, false)), -2465f), Struct_3(Struct_1(false, vec3<bool>(false, false, false)), Struct_1(false, vec3<bool>(false, true, false)), 1397f), Struct_3(Struct_1(true, vec3<bool>(true, true, true)), Struct_1(false, vec3<bool>(false, false, true)), 959f), Struct_3(Struct_1(false, vec3<bool>(false, true, false)), Struct_1(true, vec3<bool>(true, true, false)), -2036f), Struct_3(Struct_1(false, vec3<bool>(true, false, false)), Struct_1(false, vec3<bool>(true, true, false)), 407f), Struct_3(Struct_1(true, vec3<bool>(false, false, false)), Struct_1(false, vec3<bool>(false, true, true)), 326f), Struct_3(Struct_1(true, vec3<bool>(false, false, true)), Struct_1(true, vec3<bool>(true, true, true)), 158f));

var<private> global3: array<vec2<f32>, 28>;

var<private> global4: array<i32, 2> = array<i32, 2>(-11795i, 2147483647i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> vec3<f32> {
    var var_0 = 331f;
    let var_1 = arg_0.yz;
    var_0 = _wgslsmith_f_op_f32(arg_1.c - global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(1u, 25286u)), 21u)]);
    var var_2 = 2147483647i;
    var var_3 = global2[_wgslsmith_index_u32(abs(~4294967295u), 23u)];
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-583f, var_3.c, arg_1.c) + vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 21u)], 1555f, -620f)) - vec3<f32>(var_3.c, -277f, global0[_wgslsmith_index_u32(1u, 21u)])))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.c, -1228f, -1759f), vec3<f32>(-423f, -901f, 419f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1504f, 883f, 1424f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1662f, 1541f, var_3.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-872f, global0[_wgslsmith_index_u32(var_1.x, 21u)], var_3.c))), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c, -1291f, 1549f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.c, 235f, -324f))))))));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(~(~0u), 1u, 17336u, 0u), Struct_3(arg_0.b, Struct_1(true, arg_0.b.b), _wgslsmith_f_op_f32(f32(-1f) * -355f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(29183u, 21u)]), arg_0.c, _wgslsmith_f_op_f32(-1725f - -720f))), _wgslsmith_f_op_vec3_f32(func_3(min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), Struct_3(arg_0.a, Struct_1(var_0.x, vec3<bool>(arg_0.b.b.x, false, true)), _wgslsmith_div_f32(arg_0.c, arg_0.c)))))));
    var_0 = select(arg_0.b.b, vec3<bool>(!select(var_0.x && var_0.x, !arg_0.a.a, true), !select(false | arg_0.b.a, true == var_0.x, arg_0.b.b.x), var_0.x), arg_0.a.b);
    var var_2 = Struct_3(arg_0.b, Struct_1(select(!all(vec3<bool>(true, false, var_0.x)), false, any(vec3<bool>(var_0.x, true, arg_0.b.b.x))), !arg_0.a.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(15780u, 21u)])))), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))), !(!var_0.x))));
    let var_3 = select(select(!select(select(vec4<bool>(arg_0.b.b.x, true, false, var_2.a.a), vec4<bool>(var_0.x, false, false, arg_0.b.b.x), true), select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(arg_0.a.a, true, var_0.x, true), true), any(vec3<bool>(var_2.b.b.x, arg_0.b.b.x, true))), vec4<bool>(!any(vec2<bool>(true, false)), true, all(!vec4<bool>(var_2.a.b.x, true, var_2.a.b.x, false)), true), vec4<bool>(any(select(vec4<bool>(var_2.a.a, var_0.x, false, arg_0.b.a), vec4<bool>(true, false, true, var_0.x), vec4<bool>(true, false, var_0.x, arg_0.a.b.x))), false, global4[_wgslsmith_index_u32(1u, 2u)] >= min(-47433i, -2147483647i), true & (var_0.x && var_2.a.a))), vec4<bool>((_wgslsmith_f_op_f32(var_2.c * -819f) == -1039f) && any(!vec2<bool>(true, var_0.x)), all(arg_0.a.b.zy), !(true & !arg_0.b.b.x), 1i < u_input.a.x), select(select(select(vec4<bool>(var_2.b.b.x, arg_0.a.b.x, arg_0.b.b.x, arg_0.b.b.x), vec4<bool>(true, true, arg_0.b.b.x, arg_0.a.b.x), !vec4<bool>(arg_0.b.a, true, false, true)), select(vec4<bool>(true, var_2.a.a, var_2.a.a, false), !vec4<bool>(arg_0.a.b.x, arg_0.b.a, true, arg_0.a.b.x), select(vec4<bool>(true, true, false, var_2.a.b.x), vec4<bool>(false, true, var_0.x, arg_0.a.b.x), vec4<bool>(arg_0.b.b.x, true, false, var_0.x))), var_2.b.a), !vec4<bool>(arg_0.a.a, select(arg_0.a.b.x, arg_0.a.b.x, var_2.b.b.x), var_2.b.b.x || false, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c), 1096f)) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, global0[_wgslsmith_index_u32(11603u, 21u)]))));
    return var_2.a;
}

fn func_1(arg_0: Struct_2) -> u32 {
    global2 = array<Struct_3, 23>();
    var var_0 = Struct_3(func_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(min(~0u, _wgslsmith_div_u32(89225u, 4294967295u)), 20155u), 23u)]), arg_0.a, _wgslsmith_f_op_f32(min(-109f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~32948u, 21u)]))))));
    let var_1 = Struct_3(func_2(global2[_wgslsmith_index_u32(~5637u, 23u)]), Struct_1(all(select(!arg_0.b.b.yx, select(vec2<bool>(arg_0.a.b.x, var_0.b.a), vec2<bool>(true, arg_0.a.a), var_0.a.b.zz), select(var_0.b.b.yz, vec2<bool>(true, false), var_0.b.b.yz))), vec3<bool>(any(!var_0.b.b.zx), var_0.b.b.x, arg_0.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c))));
    global2 = array<Struct_3, 23>();
    return _wgslsmith_sub_u32(~reverseBits(_wgslsmith_sub_u32(~1u, ~3020u)), _wgslsmith_sub_u32(5541u, ~(select(73859u, 1u, false) & 1u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32) -> Struct_2 {
    global1 = array<vec2<i32>, 12>();
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(12855u, ~_wgslsmith_div_u32(arg_0.x, arg_0.x | arg_0.x)), 28u)]));
    global0 = array<f32, 21>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(3782f, global0[_wgslsmith_index_u32(0u, 21u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2204f)) - _wgslsmith_f_op_f32(110f - global0[_wgslsmith_index_u32(arg_0.x, 21u)])))));
    global4 = array<i32, 2>();
    return Struct_2(func_2(global2[_wgslsmith_index_u32(14360u, 23u)]), Struct_1(false, func_2(Struct_3(Struct_1(false, vec3<bool>(true, true, false)), func_2(global2[_wgslsmith_index_u32(arg_0.x, 23u)]), -736f)).b), 13549i, _wgslsmith_dot_vec3_i32(vec3<i32>(18489i, 2147483647i, -_wgslsmith_sub_i32(-3889i, arg_1)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 21974i, global4[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -1i, global4[_wgslsmith_index_u32(arg_0.x, 2u)]), vec3<i32>(u_input.a.x, u_input.a.x, 13135i)), select(vec3<i32>(arg_1, u_input.a.x, u_input.a.x), vec3<i32>(-15033i, -2147483647i, u_input.a.x), vec3<bool>(true, true, false))), vec3<i32>(~(-1i), _wgslsmith_add_i32(-14069i, 0i), min(arg_1, -85375i)), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(~vec3<u32>(func_1(Struct_2(Struct_1(true, vec3<bool>(true, true, false)), Struct_1(false, vec3<bool>(true, false, false)), global4[_wgslsmith_index_u32(16292u, 2u)], -27861i)), ~0u, 25469u << (0u % 32u)), ~vec3<u32>(1u, 1u, 1u), vec3<bool>(false, true, true)), global4[_wgslsmith_index_u32(0u, 2u)]);
    global2 = array<Struct_3, 23>();
    global2 = array<Struct_3, 23>();
    global0 = array<f32, 21>();
    let var_1 = Struct_2(var_0.a, func_4(firstLeadingBit(~vec3<u32>(1u, 2653u, 42628u)), -36339i).a, global4[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(5761u, 1u, 42520u)) | 1u, 1u, !all(vec3<bool>(var_0.b.a, true, false))), 2u)], -_wgslsmith_clamp_i32(-12391i, _wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x), abs(-1i)));
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(84729u, 28298u), vec2<u32>(18032u, 8616u), vec2<u32>(36529u, 1u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(27820u, 17339u), vec2<u32>(0u, 1u)), ~(~vec2<u32>(1u, 0u))), vec2<u32>(1u, 1u)), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u), ~select(~(~vec3<i32>(u_input.a.x, 3851i, u_input.a.x)), -vec3<i32>(var_0.d, -1i, var_1.d) << (select(vec3<u32>(4294967295u, 4294967295u, 34224u), vec3<u32>(4294967295u, 55826u, 1u), var_1.b.b) % vec3<u32>(32u)), true), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.c)), _wgslsmith_f_op_f32(step(var_2.c, _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(1u, 1u, 1u, 1u), Struct_3(var_0.b, var_0.b, 2620f))).x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_f_op_f32(var_2.c + -607f)))), ~reverseBits(~firstLeadingBit(0u)));
}

