struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9>;

var<private> global1: bool;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: array<vec2<i32>, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>) -> bool {
    return !(!global2.x);
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = Struct_1(arg_3.a ^ _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(select(arg_3.a, arg_3.a, true), vec4<u32>(u_input.a, 8336u, 1u, arg_3.a.x)), _wgslsmith_div_vec4_u32(~arg_3.a, arg_3.a)), 2147483647i, ~(arg_3.a.zyy & select(vec3<u32>(u_input.a, 1u, u_input.a), arg_3.a.wxy, select(arg_0.xzz, arg_0.zzw, arg_2.x))), ~(~vec4<i32>(arg_3.d.x, 17997i, arg_3.d.x, 0i)) << (arg_3.a % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(step(310f, arg_1));
    global2 = !vec3<bool>(false & (_wgslsmith_f_op_f32(f32(-1f) * -345f) >= arg_1), arg_0.x, any(vec4<bool>(true, arg_2.x, true && global2.x, all(vec3<bool>(false, arg_0.x, false)))));
    let var_2 = Struct_2(Struct_1(~firstLeadingBit(vec4<u32>(79912u, arg_3.a.x, 1760u, 35933u)), arg_3.d.x, firstLeadingBit(_wgslsmith_clamp_vec3_u32(~arg_3.c, min(vec3<u32>(26811u, 4294967295u, 1u), arg_3.a.wyy), var_0.c & vec3<u32>(u_input.a, 0u, 1u))), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(var_0.d, vec4<i32>(0i, 226i, 2147483647i, var_0.d.x))));
    global0 = array<Struct_4, 9>();
    return vec3<f32>(-1524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))), 885f);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<bool> {
    global1 = !global2.x && true;
    global2 = select(select(vec3<bool>(!func_2(global0[_wgslsmith_index_u32(48331u, 9u)], vec4<i32>(2147483647i, arg_0.a.b, u_input.b, 20923i)), true, func_2(Struct_4(vec3<bool>(global2.x, global2.x, true)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, arg_0.a.d.x, 7039i, arg_0.a.d.x), vec4<i32>(u_input.b, arg_1.b, u_input.b, arg_1.d.x)))), vec3<bool>(global2.x, global2.x, false), true), select(vec3<bool>(true && all(vec3<bool>(global2.x, global2.x, true)), true, !global2.x), !(!select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(true, true, global2.x), vec3<bool>(true, false, true))), select(select(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, global2.x, true), global2.x), vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, true, true)), vec3<bool>(global2.x, true, true), arg_0.a.c.x < _wgslsmith_mod_u32(22994u, arg_0.a.c.x))), vec3<bool>((~arg_1.c.x == arg_1.c.x) || false, true, !any(global2.zz)));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1055f, 1435f, -874f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(187f, 1000f, -793f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(965f, -1195f, -1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-489f, -136f, 778f) - vec3<f32>(-1926f, 278f, 590f))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-238f, -1430f, -1742f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(global2.x, global2.x, false, global2.x), -515f, vec3<bool>(global2.x, false, true), arg_1)))))));
    let var_1 = ~u_input.a;
    let var_2 = Struct_4(vec3<bool>(true, true, global2.x));
    return var_2.a;
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_4) -> u32 {
    global3 = array<vec2<i32>, 19>();
    global2 = vec3<bool>(false, true, all(vec4<bool>(!arg_2.a.x, true, func_1(Struct_3(Struct_1(vec4<u32>(76929u, u_input.a, u_input.a, u_input.a), u_input.b, vec3<u32>(u_input.a, 91601u, u_input.a), vec4<i32>(0i, u_input.b, u_input.b, u_input.b))), Struct_1(vec4<u32>(1u, u_input.a, 56453u, u_input.a), 35191i, vec3<u32>(13298u, 47604u, u_input.a), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~vec2<i32>(2147483647i, u_input.b)).x, true)));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-878f, arg_0, -1000f))))))) + _wgslsmith_f_op_vec3_f32(func_3(!vec4<bool>(!global2.x, !arg_1.a.x, u_input.a >= u_input.a, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) + _wgslsmith_f_op_f32(arg_0 - 1000f)) * arg_0), arg_1.a, Struct_1(~(~vec4<u32>(4294967295u, u_input.a, 4294967295u, 53738u)), 9681i, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(u_input.a, 1u, 1u)), vec4<i32>(abs(2147483647i), 1i, i32(-1i) * -1361i, -1i)))));
    let var_1 = reverseBits(vec4<u32>(18401u, 0u, countOneBits(~64934u), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, max(9607u, u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(141233u, 4294967295u))))));
    global3 = array<vec2<i32>, 19>();
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -374f;
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -644f))))), Struct_4(select(select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, global2.x, global2.x), select(vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x))), !(!vec3<bool>(global2.x, global2.x, false)), vec3<bool>(global2.x, global2.x, true))), Struct_4(!select(!vec3<bool>(global2.x, global2.x, true), func_1(Struct_3(Struct_1(vec4<u32>(u_input.a, 49377u, 19196u, 1u), u_input.b, vec3<u32>(u_input.a, u_input.a, 4294967295u), vec4<i32>(u_input.b, u_input.b, -1i, 29082i))), Struct_1(vec4<u32>(u_input.a, u_input.a, 42799u, 0u), u_input.b, vec3<u32>(u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.b, 0i, u_input.b, 30086i)), global3[_wgslsmith_index_u32(31286u, 19u)]), all(global2.zx))));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1334f)) + var_0), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, var_0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-107f, var_0, 188f, 1314f) - vec4<f32>(685f, 650f, -322f, var_0))), global2.x & select(global2.x, global2.x, global2.x))), !all(vec4<bool>(false, false, global2.x, true))))));
    var var_3 = Struct_1(~reverseBits(abs(vec4<u32>(u_input.a, 62368u, u_input.a, 16169u))), -u_input.b, vec3<u32>(1u, ~27308u, ~(~(~4294967295u))), select(select(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-49974i, -4121i, 2147483647i, 2147483647i), vec4<i32>(u_input.b, -1i, 0i, -19341i)), vec4<i32>(u_input.b, -1i, u_input.b, -28495i) ^ vec4<i32>(u_input.b, 0i, 40850i, u_input.b)), ~(-vec4<i32>(u_input.b, u_input.b, -2147483647i, -24024i)), !(false | global2.x)), firstTrailingBit(~vec4<i32>(-39579i, -1i, u_input.b, 27058i)), select(!select(vec4<bool>(global2.x, true, global2.x, false), vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, true, global2.x, global2.x)), select(select(vec4<bool>(true, true, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(false, global2.x, global2.x, global2.x)), select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x), true), true), vec4<bool>(true && global2.x, any(vec4<bool>(global2.x, true, global2.x, global2.x)), false, true))));
    var var_4 = ~reverseBits(abs(1i) | ((i32(-1i) * -1i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(31543u, u_input.a, u_input.a), vec3<u32>(var_3.c.x, 54986u, 54152u)) % 32u)));
    let var_5 = !select(select(!(!vec4<bool>(global2.x, false, global2.x, global2.x)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x), global2.x), !vec4<bool>(global2.x, false, false, global2.x), !global2.x), u_input.b <= var_3.d.x), !vec4<bool>(!global2.x, true, true, global2.x), false);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

