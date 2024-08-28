struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: u32 = 1u;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> bool {
    var var_0 = arg_1;
    let var_1 = Struct_4(-1000f, arg_1.a.a.zz, ~(~vec2<u32>(select(1u, arg_1.d.a.x, arg_2), ~u_input.c.x)), arg_1, _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, var_0.b.x), vec2<i32>(u_input.a.x, u_input.a.x) & _wgslsmith_div_vec2_i32(arg_1.b.zy, arg_1.b.wz), countOneBits(vec2<i32>(arg_1.b.x, 2147483647i))), u_input.a.yy));
    let var_2 = var_1;
    return all(vec3<bool>(all(select(vec3<bool>(arg_1.c, var_0.c, arg_1.c), vec3<bool>(var_2.d.c, var_1.d.c, var_0.c), vec3<bool>(var_0.c, false, var_2.d.c))) & all(vec3<bool>(false, true, arg_2)), arg_1.c, arg_1.c));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<i32>) -> vec4<bool> {
    global0 = array<Struct_1, 31>();
    global1 = ~(~13234u);
    global0 = array<Struct_1, 31>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, 308f), -1000f)) * -347f), Struct_1(u_input.d.zyw), Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(31648u, 1u, u_input.d.x), u_input.d.yyz, vec3<u32>(u_input.d.x, 97912u, 37080u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, u_input.b, 0u), u_input.d.yzw)), abs(-(vec4<i32>(-2147483647i, u_input.a.x, -1i, -50265i) ^ vec4<i32>(50383i, arg_2.x, arg_2.x, 1i))), arg_0.x, global0[_wgslsmith_index_u32(53356u, 31u)]), arg_0);
    var_0 = Struct_3(_wgslsmith_f_op_f32(-583f - 265f), Struct_1(u_input.d.zxx), var_0.c, vec2<bool>(!((arg_0.x || var_0.d.x) != func_3(-325f, var_0.c, var_0.d.x)), false));
    return select(vec4<bool>(true, var_0.d.x, true, false), select(select(!(!vec4<bool>(false, false, arg_0.x, arg_0.x)), !(!vec4<bool>(true, arg_0.x, var_0.c.c, false)), true & any(vec3<bool>(var_0.c.c, true, arg_0.x))), !select(select(vec4<bool>(var_0.c.c, arg_0.x, var_0.c.c, var_0.c.c), vec4<bool>(var_0.d.x, var_0.d.x, arg_0.x, true), vec4<bool>(var_0.c.c, true, arg_0.x, arg_0.x)), select(vec4<bool>(var_0.c.c, true, false, arg_0.x), vec4<bool>(false, false, true, true), false), !vec4<bool>(false, arg_0.x, var_0.c.c, var_0.d.x)), false), true);
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_3 {
    global1 = arg_0;
    let var_0 = func_2(vec2<bool>(true | !all(vec4<bool>(false, true, false, false)), select(true, true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)))), -898f, vec2<i32>(~arg_1, arg_1));
    global1 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-103f + -2244f)) - 1f))), 1f, var_0.x));
    return Struct_3(var_1, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(14409u, _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(~arg_0, 1u, arg_0)), abs(~max(1u, u_input.c.x))), 31u)], Struct_2(global0[_wgslsmith_index_u32(arg_0, 31u)], firstTrailingBit(-(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_1) ^ vec4<i32>(-26878i, arg_1, 9987i, arg_1))), var_0.x, Struct_1(vec3<u32>(55826u, 4294967295u, arg_0) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 23629u, u_input.b), vec3<u32>(u_input.b, 1u, arg_0)))), select(var_0.xx, !var_0.xx, ~u_input.c.x > 18991u));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_3.a.x;
    global0 = array<Struct_1, 31>();
    var var_1 = u_input.a.zx;
    var var_2 = 1u;
    var_1 = ~u_input.a.zx | arg_0.e;
    return arg_0.d;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_4) -> Struct_1 {
    let var_0 = Struct_2(arg_1.d, vec4<i32>(max(_wgslsmith_mod_i32(min(arg_3.d.b.x, arg_1.b.x), arg_1.b.x), -u_input.a.x), _wgslsmith_div_i32(~u_input.a.x ^ (arg_2.b.x ^ -8368i), min(_wgslsmith_clamp_i32(1i, 20083i, arg_1.b.x), select(arg_2.b.x, 947i, arg_0))), _wgslsmith_mult_i32(arg_3.e.x, u_input.a.x), arg_3.d.b.x), func_2(vec2<bool>(true, true), -372f, vec2<i32>(-2147483647i & arg_3.e.x, -arg_1.b.x)).x || true, arg_3.d.a);
    let var_1 = func_4(Struct_4(arg_3.a, func_4(arg_3, ~arg_2.d.a.x, Struct_3(_wgslsmith_f_op_f32(min(arg_3.a, arg_3.a)), Struct_1(vec3<u32>(arg_3.d.d.a.x, 3212u, u_input.b)), func_1(arg_1.a.a.x, 0i).c, select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_1.c, false))), arg_3.d.d).a.a.zy, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.a.x, 56329u), u_input.c), ~max(arg_2.a.a.x, arg_1.a.a.x)), func_1(_wgslsmith_mult_u32(select(arg_1.d.a.x, 12832u, true), 0u), -(i32(-1i) * -68578i)).c, _wgslsmith_sub_vec2_i32(-firstLeadingBit(arg_2.b.yx), vec2<i32>(_wgslsmith_clamp_i32(-40414i, 2147483647i, 801i), arg_2.b.x | 1i))), ~max(~(~4294967295u), firstTrailingBit(4591u) ^ 54771u), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3481f + arg_3.a) + arg_3.a), arg_1.d, Struct_2(Struct_1(vec3<u32>(var_0.a.a.x, 4294967295u, arg_1.a.a.x)), _wgslsmith_add_vec4_i32(arg_3.d.b, arg_2.b & arg_3.d.b), select(var_0.c || true, arg_0, true), arg_3.d.a), !func_2(!vec2<bool>(false, arg_0), _wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(var_0.b.x, 0i), arg_3.d.b.zy)).yz), func_4(arg_3, 39654u, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(738f))), Struct_1(vec3<u32>(1u, arg_2.a.a.x, 1u)), arg_2, !(!vec2<bool>(var_0.c, var_0.c))), Struct_1(func_1(countOneBits(0u), ~15021i).b.a)).a).a;
    let var_2 = func_4(arg_3, countOneBits(0u), func_1(~max(4294967295u, min(0u, arg_2.d.a.x)), var_0.b.x), arg_2.d);
    global0 = array<Struct_1, 31>();
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) + 1566f))), arg_3.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a + -516f) * _wgslsmith_f_op_f32(step(arg_3.a, arg_3.a))) - -1286f))), -755f, _wgslsmith_f_op_f32(f32(-1f) * -102f));
    return func_1(abs(_wgslsmith_sub_u32(89296u, func_4(arg_3, ~1u, Struct_3(var_3.x, arg_3.d.d, Struct_2(arg_3.d.a, var_0.b, true, global0[_wgslsmith_index_u32(115725u, 31u)]), vec2<bool>(false, arg_0)), Struct_1(arg_1.d.a)).d.a.x)), _wgslsmith_dot_vec4_i32(abs(arg_1.b) >> (u_input.d % vec4<u32>(32u)), ~arg_3.d.b)).b;
}

fn func_6(arg_0: Struct_3, arg_1: u32) -> Struct_3 {
    global0 = array<Struct_1, 31>();
    global1 = _wgslsmith_mult_u32(~(~countOneBits(1u)), 0u);
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), 645f);
    let var_1 = 1062f;
    global0 = array<Struct_1, 31>();
    return Struct_3(-602f, Struct_1(_wgslsmith_mult_vec3_u32(u_input.d.zxy, select(vec3<u32>(u_input.d.x, u_input.c.x, 4294967295u), arg_0.b.a, vec3<bool>(arg_0.c.c, false, arg_0.d.x)))), arg_0.c, arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-515f, 597f, -296f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(394f, -1214f, -175f) - vec3<f32>(557f, -1435f, -717f))))));
    let var_1 = _wgslsmith_add_u32(u_input.c.x, _wgslsmith_clamp_u32(4294967295u, 44551u, 1u));
    let var_2 = func_6(Struct_3(_wgslsmith_f_op_f32(max(var_0.x, 282f)), func_5(true, Struct_2(global0[_wgslsmith_index_u32(~30750u, 31u)], _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 13040i), vec4<i32>(-9788i, 11506i, u_input.a.x, 1i), vec4<i32>(21710i, u_input.a.x, u_input.a.x, u_input.a.x)), true, global0[_wgslsmith_index_u32(~60527u, 31u)]), func_4(Struct_4(2404f, vec2<u32>(48924u, u_input.d.x), u_input.d.xy, Struct_2(global0[_wgslsmith_index_u32(95139u, 31u)], vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), false, global0[_wgslsmith_index_u32(u_input.b, 31u)]), u_input.a.xx), 0u, func_1(37315u, u_input.a.x), global0[_wgslsmith_index_u32(27108u, 31u)]), Struct_4(_wgslsmith_f_op_f32(var_0.x - var_0.x), vec2<u32>(34429u, 40254u), abs(vec2<u32>(79304u, var_1)), Struct_2(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], vec4<i32>(u_input.a.x, 1i, 1i, 0i), false, global0[_wgslsmith_index_u32(u_input.c.x, 31u)]), ~u_input.a.xz)), Struct_2(func_5(u_input.c.x > 53297u, Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.d.x, 4294967295u)), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), true, global0[_wgslsmith_index_u32(47371u, 31u)]), Struct_2(global0[_wgslsmith_index_u32(u_input.b, 31u)], vec4<i32>(u_input.a.x, 63872i, 62168i, 22489i), false, global0[_wgslsmith_index_u32(4294967295u, 31u)]), Struct_4(var_0.x, vec2<u32>(var_1, var_1), u_input.d.yz, Struct_2(Struct_1(u_input.d.yyw), vec4<i32>(-2147483647i, u_input.a.x, -14242i, -23610i), true, Struct_1(vec3<u32>(0u, 4294967295u, u_input.b))), vec2<i32>(u_input.a.x, u_input.a.x))), select(firstTrailingBit(vec4<i32>(u_input.a.x, -7223i, -2147483647i, 0i)), reverseBits(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 17551i)), vec4<bool>(true, true, false, false)), u_input.a.x < ~u_input.a.x, Struct_1(u_input.d.wxz >> (u_input.d.wxx % vec3<u32>(32u)))), select(vec2<bool>(func_4(Struct_4(var_0.x, u_input.c, vec2<u32>(1u, u_input.c.x), Struct_2(Struct_1(u_input.d.xwy), vec4<i32>(u_input.a.x, -1i, -15371i, -13586i), true, global0[_wgslsmith_index_u32(1u, 31u)]), u_input.a.zy), 0u, Struct_3(-116f, Struct_1(u_input.d.yww), Struct_2(Struct_1(vec3<u32>(u_input.d.x, u_input.b, 92222u)), vec4<i32>(u_input.a.x, u_input.a.x, 21723i, 1i), false, Struct_1(vec3<u32>(var_1, 5023u, u_input.d.x))), vec2<bool>(true, false)), global0[_wgslsmith_index_u32(0u, 31u)]).c, true), vec2<bool>(true, true), select(any(vec4<bool>(false, false, true, false)), true, true))), func_4(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), firstTrailingBit(vec2<u32>(var_1, var_1)), func_1(~var_1, -14122i).b.a.xx, func_1(56595u, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.a.x), u_input.a)).c, ~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-1i, u_input.a.x))), 61994u, func_1(abs(0u), abs(-u_input.a.x)), global0[_wgslsmith_index_u32(~(~0u) & _wgslsmith_add_u32(u_input.d.x, ~0u), 31u)]).d.a.x);
    var var_3 = ~select(vec4<u32>(firstLeadingBit(var_1) & 1u, 91271u, ~_wgslsmith_mod_u32(4294967295u, var_2.c.d.a.x), 23393u), select(u_input.d, vec4<u32>(~var_1, var_1 & u_input.d.x, func_1(var_2.b.a.x, var_2.c.b.x).b.a.x, _wgslsmith_sub_u32(0u, u_input.c.x)), !(!vec4<bool>(var_2.d.x, true, false, var_2.d.x))), vec4<bool>(select(true, var_2.d.x, var_2.d.x), func_2(!var_2.d, _wgslsmith_f_op_f32(f32(-1f) * -777f), ~var_2.c.b.xy).x, false, 14960i <= var_2.c.b.x));
    global1 = select(_wgslsmith_add_u32(var_2.c.d.a.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 20004u, var_2.c.d.a.x), vec3<u32>(var_3.x, 0u, var_1)))), _wgslsmith_add_u32(1u, firstTrailingBit(23104u) | ~0u), var_2.d.x);
    let var_4 = _wgslsmith_sub_i32((abs(var_2.c.b.x) >> (~var_2.b.a.x % 32u)) >> (~123548u % 32u), u_input.a.x);
    let var_5 = Struct_2(func_4(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), vec2<u32>(_wgslsmith_sub_u32(var_2.b.a.x, u_input.d.x), abs(0u)), var_3.yy, func_4(Struct_4(-386f, u_input.d.yy, vec2<u32>(var_2.c.a.a.x, u_input.d.x), var_2.c, vec2<i32>(-1i, 0i)), 10624u, var_2, func_6(var_2, var_2.c.d.a.x).b), var_2.c.b.yw), ~1u, Struct_3(var_2.a, Struct_1(vec3<u32>(u_input.c.x, 0u, var_2.c.a.a.x)), Struct_2(func_4(Struct_4(126f, vec2<u32>(19862u, 1u), vec2<u32>(41041u, var_2.b.a.x), var_2.c, var_2.c.b.zw), 1u, var_2, var_2.c.a).a, _wgslsmith_add_vec4_i32(vec4<i32>(var_2.c.b.x, -2147483647i, var_4, -2147483647i), var_2.c.b), true, func_4(Struct_4(var_0.x, u_input.d.wz, vec2<u32>(24666u, 75806u), var_2.c, vec2<i32>(-21784i, 52522i)), u_input.c.x, Struct_3(1398f, Struct_1(vec3<u32>(u_input.c.x, 0u, 4294967295u)), var_2.c, var_2.d), Struct_1(vec3<u32>(var_1, var_1, 19902u))).d), select(var_2.d, vec2<bool>(true, true), vec2<bool>(true, true))), func_6(var_2, 4294967295u).c.d).d, -_wgslsmith_div_vec4_i32(var_2.c.b, vec4<i32>(u_input.a.x, 1i, 12559i, _wgslsmith_sub_i32(var_4, -9841i))), var_2.d.x | !(!var_2.d.x), Struct_1(func_5(!any(vec2<bool>(false, false)), func_6(var_2, var_2.b.a.x).c, var_2.c, Struct_4(1752f, min(vec2<u32>(var_3.x, 0u), var_3.xy), vec2<u32>(var_1, 3502u) ^ u_input.d.yy, Struct_2(global0[_wgslsmith_index_u32(var_1, 31u)], var_2.c.b, true, var_2.b), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -1i), var_2.c.b.xx))).a));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(var_5.b.x), min(vec4<i32>(_wgslsmith_dot_vec3_i32(func_6(var_2, var_1).c.b.xzx, _wgslsmith_div_vec3_i32(var_5.b.xwx, vec3<i32>(-1i, 2147483647i, 0i))), 1i, -38879i, 21279i), var_2.c.b), max(select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 135247u, 50503u, u_input.d.x) << (u_input.d % vec4<u32>(32u)), ~vec4<u32>(42840u, var_2.b.a.x, 19944u, var_5.d.a.x)), ~(~vec4<u32>(20473u, 1u, 39577u, u_input.d.x)), !(!vec4<bool>(var_2.d.x, true, false, var_2.c.c))), u_input.d), ~(~u_input.d.x), var_5.b.x);
}

