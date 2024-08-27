struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

var<private> global1: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(298f, -1419f, -3013f, 982f), vec4<f32>(1337f, 1418f, -787f, -110f), vec4<f32>(-1076f, -830f, -262f, -846f), vec4<f32>(-526f, 623f, 818f, -1167f), vec4<f32>(226f, 1694f, 774f, -1409f), vec4<f32>(1655f, 1154f, -2218f, 1304f), vec4<f32>(1306f, -860f, -613f, 905f), vec4<f32>(2051f, -378f, -514f, 410f), vec4<f32>(1970f, -1000f, 148f, -974f), vec4<f32>(2526f, 397f, -307f, 1408f), vec4<f32>(-789f, -866f, 502f, -569f), vec4<f32>(-2357f, 1439f, 912f, 572f), vec4<f32>(1331f, -130f, -2047f, 105f), vec4<f32>(-556f, -887f, 526f, 1521f), vec4<f32>(1000f, 449f, 719f, -1614f), vec4<f32>(-367f, 1456f, -1747f, -404f), vec4<f32>(-1339f, 138f, -540f, 2261f));

var<private> global2: array<vec2<u32>, 12>;

var<private> global3: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(Struct_1(-(~vec2<i32>(1i, 1i)), any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true)), 1i), vec3<f32>(-360f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -246f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1499f * 493f))), Struct_1(vec2<i32>(-33443i, 1i), true, 1i >> (0u % 32u)));
    let var_1 = Struct_2(_wgslsmith_mod_vec4_i32(min(~vec4<i32>(15586i, var_0.c.a.x, var_0.c.c, -1i), vec4<i32>(var_0.c.c, var_0.a.c, 2147483647i, var_0.c.c) >> (vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.b.x) % vec4<u32>(32u))) << (countOneBits(~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1u)) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)), select(vec2<bool>(true, (16819u >= u_input.a.x) && (-79342i == var_0.a.c)), vec2<bool>(var_0.c.b, true), !(!vec2<bool>(var_0.a.b, false))), -848f);
    global3 = _wgslsmith_add_i32(1i, -68914i) ^ var_0.c.a.x;
    let var_2 = var_1;
    var var_3 = _wgslsmith_clamp_vec2_i32(var_2.a.zw, var_0.a.a, countOneBits(_wgslsmith_div_vec2_i32(var_2.a.wz, var_1.a.yz)));
    return var_3.x;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    var var_0 = !(!select(select(vec3<bool>(true, false, false), !vec3<bool>(arg_2.a.b, arg_2.c.b, true), arg_2.c.b || false), !(!vec3<bool>(true, arg_2.c.b, true)), vec3<bool>(arg_1.c.b && false, any(vec2<bool>(arg_1.c.b, arg_2.a.b)), true)));
    let var_1 = Struct_2(~vec4<i32>(-43526i, arg_1.c.c & arg_1.a.a.x, -49505i, 36633i) ^ ~vec4<i32>(func_3(), ~arg_1.a.a.x, 2147483647i, _wgslsmith_mult_i32(arg_2.a.a.x, -39679i)), var_0.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.x)))));
    var var_2 = 0u;
    var_0 = select(!(!vec3<bool>(true, arg_2.c.b, arg_2.b.x <= arg_0)), select(vec3<bool>(var_1.b.x, true, true), select(vec3<bool>(true, true, true), !vec3<bool>(var_1.b.x, false, arg_2.a.b), any(vec2<bool>(false, var_1.b.x))), !select(!vec3<bool>(true, arg_1.c.b, false), !vec3<bool>(true, arg_2.a.b, arg_2.c.b), !var_1.b.x)), arg_1.a.b);
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.yx, ~u_input.b)), _wgslsmith_add_u32(_wgslsmith_div_u32(691u >> (u_input.b.x % 32u), u_input.b.x), 56684u)), vec3<u32>(14227u, min(u_input.a.x, ~countOneBits(u_input.b.x)), firstLeadingBit(select(abs(u_input.a.x), ~44597u, var_0.x))));
    return _wgslsmith_add_u32(u_input.b.x, u_input.a.x ^ 106472u);
}

fn func_1(arg_0: vec2<i32>) -> vec3<i32> {
    global0 = array<Struct_3, 22>();
    global1 = array<vec4<f32>, 17>();
    var var_0 = Struct_3(Struct_1(max(countOneBits(arg_0) | ~vec2<i32>(-1i, arg_0.x), arg_0), true, arg_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-450f, 946f, 345f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-548f, 522f, -760f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-197f, 686f, 297f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1179f, 691f, 1294f), vec3<f32>(481f, -1000f, -281f), vec3<bool>(false, false, false)))))), Struct_1(vec2<i32>(0i << (func_2(-792f, global0[_wgslsmith_index_u32(u_input.b.x, 22u)], Struct_3(Struct_1(arg_0, false, arg_0.x), vec3<f32>(515f, 1000f, -1852f), Struct_1(arg_0, true, 0i))) % 32u), 1i), select(!any(vec4<bool>(true, false, false, false)), true, true), -(~abs(arg_0.x))));
    global0 = array<Struct_3, 22>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 22u)];
    return abs(vec3<i32>(arg_0.x >> (~1u % 32u), -2147483647i, _wgslsmith_mult_i32(-countOneBits(-1i), 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(true | any(vec2<bool>(true, true)), true, !all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)));
    let var_1 = Struct_1(vec2<i32>(~(~_wgslsmith_add_i32(-572i, 23367i)), 43817i), var_0.x, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(8620i, _wgslsmith_mult_i32(0i, 0i), _wgslsmith_clamp_i32(0i, 0i, 3443i))), -func_1(-vec2<i32>(-1i, -27505i))));
    let var_2 = Struct_2(~vec4<i32>(_wgslsmith_add_i32(1i, -2114i), max(1041i, -29i), -2147483647i, -1i), !(!var_0.yz), 287f);
    let var_3 = !vec2<bool>(true, _wgslsmith_div_i32(func_1(vec2<i32>(2147483647i, var_1.a.x)).x, var_2.a.x) == _wgslsmith_dot_vec2_i32(var_2.a.yz, -var_1.a));
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(1i, var_2.a.x), ~_wgslsmith_mod_i32(-3739i, var_1.c), -_wgslsmith_mod_i32(-38440i, var_1.c)), _wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(var_2.a.zww, vec3<i32>(-13515i, var_2.a.x, 1i))), -(var_2.a.yzw << (vec3<u32>(4294967295u, u_input.b.x, u_input.a.x) % vec3<u32>(32u))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.c, 241f, -571f), vec3<f32>(626f, -1181f, -881f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1232f, -272f, var_2.c) + vec3<f32>(var_2.c, var_2.c, var_2.c))))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c, var_2.c, false))), min(_wgslsmith_sub_vec3_i32(select(abs(vec3<i32>(1i, var_1.a.x, var_1.c)), vec3<i32>(-22680i, 0i, -2147483647i) & vec3<i32>(var_1.a.x, 1i, var_1.a.x), !var_0.x), vec3<i32>(-33579i, var_2.a.x, var_2.a.x) | _wgslsmith_clamp_vec3_i32(var_2.a.zww, var_2.a.zzx, vec3<i32>(var_2.a.x, var_1.a.x, var_2.a.x))), var_2.a.ywy));
}

