struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: f32, arg_3: i32) -> i32 {
    global0 = array<Struct_4, 30>();
    global0 = array<Struct_4, 30>();
    var var_0 = Struct_5(firstTrailingBit(vec4<i32>(arg_0.x, 1i ^ arg_3, arg_3, 9804i)), Struct_1(arg_2, !any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), reverseBits(~(vec2<u32>(40383u, arg_1.x) & vec2<u32>(arg_1.x, 1u)))), _wgslsmith_add_u32(arg_1.x, _wgslsmith_add_u32(50609u, _wgslsmith_dot_vec4_u32(~vec4<u32>(54118u, 49409u, 52624u, 1u), vec4<u32>(arg_1.x, 41655u, 1u, u_input.a.x)))));
    global0 = array<Struct_4, 30>();
    let var_1 = global0[_wgslsmith_index_u32(reverseBits(reverseBits(40440u)), 30u)];
    return countOneBits(_wgslsmith_div_i32(6491i, _wgslsmith_mod_i32(-(-71607i >> (arg_1.x % 32u)), 20216i)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_5(-(~vec4<i32>(1i, func_3(vec3<i32>(78177i, 2147483647i, -2147483647i), arg_0.c.a, arg_1.a, 1i), _wgslsmith_div_i32(-1173i, 2147483647i), 0i)), arg_1, ~u_input.a.x);
    var var_1 = (_wgslsmith_div_i32(abs(10526i), var_0.a.x) > 20062i) || all(!select(!arg_2, select(vec3<bool>(true, true, var_0.b.b), arg_2, arg_0.d.b), select(arg_2.x, arg_2.x, false)));
    var var_2 = -firstTrailingBit(i32(-1i) * -1i);
    let var_3 = select(vec3<bool>(~_wgslsmith_dot_vec3_u32(vec3<u32>(16351u, 19881u, 27787u), u_input.a) <= _wgslsmith_mult_u32(var_0.b.c.x, 1u | arg_1.c.x), any(select(vec4<bool>(arg_0.d.b, arg_1.b, true, arg_2.x), select(vec4<bool>(arg_1.b, true, arg_2.x, false), vec4<bool>(true, false, false, arg_0.d.b), vec4<bool>(false, false, true, true)), select(vec4<bool>(arg_0.d.b, var_0.b.b, arg_2.x, true), vec4<bool>(true, arg_2.x, var_0.b.b, false), arg_0.d.b))), !(!all(vec4<bool>(true, arg_0.d.b, arg_1.b, true)))), vec3<bool>(false, true, all(select(select(arg_2.zx, arg_2.xx, vec2<bool>(false, arg_2.x)), vec2<bool>(true, false), arg_0.d.a >= -1000f))), all(select(arg_2.zx, !arg_2.zx, select(arg_2.yy, !arg_2.zx, arg_2.x))));
    let var_4 = arg_0;
    return var_0.a.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_4 {
    global0 = array<Struct_4, 30>();
    global0 = array<Struct_4, 30>();
    global0 = array<Struct_4, 30>();
    global0 = array<Struct_4, 30>();
    var var_0 = global0[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(~arg_2.c.x, countOneBits(u_input.a.x) << (~arg_2.c.x % 32u)) ^ ~(~(~arg_2.c.x))), 30u)];
    return Struct_4(!select(vec2<bool>(true, true), !(!arg_0), !vec2<bool>(true, arg_2.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1515f, 1027f, true)) - _wgslsmith_f_op_f32(ceil(504f))))), var_0.c);
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = func_4(vec2<bool>(true, true), _wgslsmith_dot_vec3_i32(max(vec3<i32>(func_2(Struct_3(u_input.a, 1000f, Struct_2(u_input.a.zx), Struct_1(-199f, false, u_input.a.xx)), Struct_1(1728f, false, vec2<u32>(91175u, 1u)), vec3<bool>(false, true, true)), 22782i, _wgslsmith_dot_vec3_i32(vec3<i32>(-12551i, -47443i, 2147483647i), vec3<i32>(0i, -53324i, 0i))), vec3<i32>(abs(34474i), -16533i, _wgslsmith_div_i32(-13569i, 1i))), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-1i, 1i, -2147483647i)) << (_wgslsmith_mod_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u)), reverseBits(vec3<i32>(2147483647i, 48382i, -12841i)))), Struct_1(_wgslsmith_f_op_f32(-518f + _wgslsmith_f_op_f32(round(306f))), false, vec2<u32>(4294967295u, 25467u)));
    global0 = array<Struct_4, 30>();
    let var_1 = !select(!vec3<bool>(!var_0.a.x, true, true), vec3<bool>(!any(vec4<bool>(true, false, true, true)), all(var_0.a) & var_0.a.x, all(vec3<bool>(var_0.a.x, true, var_0.a.x))), vec3<bool>(any(!vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x)), any(select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, true, true, var_0.a.x), vec4<bool>(true, false, var_0.a.x, var_0.a.x))), !(var_0.c.a.x > var_0.c.a.x)));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -1i, -8402i, _wgslsmith_mult_i32(1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-7423i, -6296i), vec2<i32>(1i, -1i))), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-2147483647i, -44180i, 2727i), -vec3<i32>(54991i, 28486i, 2147483647i)), max(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -11960i, 0i), vec3<i32>(-1i, 4157i, 68661i)), ~vec3<i32>(-2147483647i, 3683i, -2147483647i)))), reverseBits(_wgslsmith_add_vec4_i32(select(vec4<i32>(-2147483647i, 52824i, -67623i, 1i) >> (vec4<u32>(arg_0.a.x, 48031u, 11366u, 20403u) % vec4<u32>(32u)), abs(vec4<i32>(-2147483647i, -2147483647i, -2147483647i, -2147483647i)), vec4<bool>(var_0.a.x, var_1.x, var_1.x, true)), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-51522i, -1i, 0i, -7689i), vec4<i32>(-33740i, 6688i, 1i, -1i))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1547f, 2116f)) - _wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))))) * -218f);
    return Struct_3(vec3<u32>(79851u, ~32922u, 40271u), var_3, Struct_2(select(~min(u_input.a.yz, vec2<u32>(arg_0.a.x, var_0.c.a.x)), min(firstTrailingBit(vec2<u32>(arg_0.a.x, 13915u)), ~var_0.c.a), select(var_0.a, var_0.a, !var_0.a))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(round(-918f))), true, u_input.a.yx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 30>();
    global0 = array<Struct_4, 30>();
    var var_0 = reverseBits(_wgslsmith_sub_i32(-_wgslsmith_add_i32(19119i, 0i), ~(-22823i << (u_input.a.x % 32u))) << (4294967295u % 32u));
    let var_1 = Struct_2(~vec2<u32>(u_input.a.x ^ 1u, u_input.a.x));
    global0 = array<Struct_4, 30>();
    var_0 = -1i;
    let var_2 = func_1(Struct_2(vec2<u32>(0u, 10661u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.b, _wgslsmith_f_op_f32(step(var_2.d.a, 1000f)), _wgslsmith_div_f32(-328f, var_2.b), func_1(Struct_2(u_input.a.zx)).b))), vec4<f32>(_wgslsmith_f_op_f32(select(-407f, _wgslsmith_f_op_f32(f32(-1f) * -1906f), var_2.d.b || var_2.d.b)), var_2.d.a, _wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), 23686i, var_2.d).b - _wgslsmith_f_op_f32(max(var_2.d.a, var_2.d.a))), _wgslsmith_f_op_f32(-func_4(vec2<bool>(false, var_2.d.b), -1i, var_2.d).b))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(func_1(Struct_2(vec2<u32>(u_input.a.x, var_1.a.x))).b, var_2.d.a, !var_2.d.b)))), -1000f);
}

