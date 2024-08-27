struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_2,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: array<u32, 30> = array<u32, 30>(93117u, 37066u, 17158u, 30906u, 0u, 0u, 49061u, 1u, 0u, 18672u, 30696u, 1u, 86292u, 0u, 4294967295u, 4294967295u, 1u, 40437u, 4294967295u, 4294967295u, 20083u, 37108u, 0u, 0u, 1u, 0u, 35642u, 50360u, 4294967295u, 5826u);

var<private> global2: array<u32, 31> = array<u32, 31>(4294967295u, 0u, 4294967295u, 19846u, 4294967295u, 34263u, 42255u, 4294967295u, 23974u, 0u, 0u, 61528u, 46437u, 0u, 4294967295u, 4294967295u, 76236u, 0u, 21680u, 1u, 17159u, 1u, 3547u, 0u, 7852u, 1u, 29805u, 1u, 284u, 4294967295u, 0u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_4) -> i32 {
    var var_0 = arg_0;
    var var_1 = var_0.d;
    let var_2 = vec2<bool>(_wgslsmith_div_u32(_wgslsmith_add_u32(25614u, var_0.c.b.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.a.x, var_0.c.a.x, 1u), vec3<u32>(27095u, arg_0.c.a.x, 0u)), ~arg_0.c.b.x) <= _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_clamp_u32(64723u, 4294967295u, 0u)), ~8886u), true);
    var_1 = _wgslsmith_sub_i32(-2147483647i, 0i);
    var_0 = Struct_4(arg_0.e.a, arg_0.b, Struct_2(arg_0.c.a, arg_0.c.a, var_0.c.c), ~_wgslsmith_dot_vec2_i32(-select(vec2<i32>(global0[_wgslsmith_index_u32(1u, 21u)], 0i), vec2<i32>(var_0.d, arg_0.c.c.d), vec2<bool>(var_0.e.a.x, true)), vec2<i32>(-32234i, global0[_wgslsmith_index_u32(arg_0.c.b.x, 21u)])), Struct_3(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.e.b, vec4<f32>(arg_0.e.b.x, var_0.e.b.x, var_0.c.c.b.x, 1955f), arg_0.b.x)), arg_0.c.c.b))));
    return -11026i;
}

fn func_3() -> vec3<i32> {
    global0 = array<i32, 21>();
    global2 = array<u32, 31>();
    global1 = array<u32, 30>();
    var var_0 = Struct_4(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(ceil(-713f)) > _wgslsmith_f_op_f32(-2916f * 408f)), vec3<bool>(all(vec2<bool>(true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true), Struct_2(_wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(46552u, 30u)], 21992u, u_input.a), vec4<u32>(11397u, global1[_wgslsmith_index_u32(67743u, 30u)], 1u, 81270u)), firstTrailingBit(~vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], global2[_wgslsmith_index_u32(69252u, 31u)], global2[_wgslsmith_index_u32(0u, 31u)], u_input.a)), ~(~vec4<u32>(42863u, global2[_wgslsmith_index_u32(32403u, 31u)], global1[_wgslsmith_index_u32(617u, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)]))), vec4<u32>(37528u, reverseBits(reverseBits(global2[_wgslsmith_index_u32(84881u, 31u)])), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 31u)], 39433u) | vec3<u32>(global1[_wgslsmith_index_u32(82732u, 30u)], u_input.a, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(0u, 31u)], 4294967295u, global1[_wgslsmith_index_u32(114488u, 30u)]), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(26737u, 30u)], 866u))), u_input.a), Struct_1(all(vec3<bool>(false, false, true)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-187f, -501f, 1482f, -1000f) * vec4<f32>(-191f, 2467f, 398f, 556f)))), -1000f, -firstTrailingBit(2147483647i))), _wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(16673u, 21u)], 0i, global0[_wgslsmith_index_u32(32890u, 21u)])), select(select(vec4<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 21u)], global0[_wgslsmith_index_u32(7796u, 21u)], -1142i, global0[_wgslsmith_index_u32(8809u, 21u)]), vec4<i32>(global0[_wgslsmith_index_u32(0u, 21u)], -8727i, -6010i, global0[_wgslsmith_index_u32(u_input.a, 21u)]), false), vec4<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], 21u)], -1i, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 21u)]), any(vec4<bool>(true, true, false, false)))) >> (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 31u)], u_input.a), vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 31u)], u_input.a)) & u_input.a, 31u)], ~countOneBits(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 31u)], 30u)])) % 32u), Struct_3(vec4<bool>(_wgslsmith_f_op_f32(sign(-293f)) <= _wgslsmith_div_f32(2139f, -1556f), true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), !(global0[_wgslsmith_index_u32(u_input.a, 21u)] >= -15231i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(213f, 1000f, 923f, 271f), vec4<f32>(-893f, 1010f, 924f, -1116f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 656f, -1000f, -519f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1388f, -2037f, -444f, -2479f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(477f, -345f, 712f, 1330f), vec4<f32>(-240f, 1846f, -743f, 599f))))))));
    let var_1 = !(true || var_0.c.c.a);
    return _wgslsmith_add_vec3_i32(vec3<i32>(~_wgslsmith_add_i32(i32(-1i) * -8907i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(var_0.c.a.x, 21u)], var_0.c.c.d)), var_0.d | global0[_wgslsmith_index_u32(~1u, 21u)], var_0.c.c.d << (~(~63914u) % 32u)), _wgslsmith_sub_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.c.c.d, -2147483647i, -2147483647i) | vec3<i32>(-26735i, -30004i, 44795i), -vec3<i32>(var_0.c.c.d, var_0.c.c.d, var_0.d))), -vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c.b.x, 30u)], 21u)], var_0.d) & ((vec3<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51321u, 30u)], 21u)], var_0.c.c.d, global0[_wgslsmith_index_u32(u_input.a, 21u)]) << (vec3<u32>(1u, global1[_wgslsmith_index_u32(8356u, 30u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)]) % vec3<u32>(32u))) | _wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.c.a.x, 31u)], 21u)], var_0.c.c.d, 1i), vec3<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14450u, 30u)], 21u)], -7014i, 5968i)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: f32, arg_3: vec4<i32>) -> Struct_5 {
    global0 = array<i32, 21>();
    let var_0 = Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 31u)], u_input.a, global2[_wgslsmith_index_u32(u_input.a, 31u)], 29908u), vec4<u32>(0u, 29532u, u_input.a, 0u)), ~abs(vec4<u32>(u_input.a, u_input.a, 83952u, 4294967295u))), ~(~vec4<u32>(global2[_wgslsmith_index_u32(13720u, 31u)], 4294967295u, u_input.a, u_input.a))), vec4<u32>(1u, 4294967295u, u_input.a, 0u), Struct_1(any(select(!vec2<bool>(arg_1.a, arg_1.a), !vec2<bool>(arg_1.a, arg_1.a), true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), arg_0.x)), 372f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))), 1i));
    global1 = array<u32, 30>();
    let var_1 = Struct_5(!arg_1.a, 5191i, -vec3<i32>(3948i, 1i, 2147483647i));
    var var_2 = vec3<f32>(arg_2, var_0.c.b.x, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(step(var_0.c.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.b.x), var_0.c.c)))))));
    return Struct_5(true, 0i, func_3());
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(abs(0u), arg_1.x, _wgslsmith_dot_vec2_u32(arg_0.c.a.wy, arg_1), ~arg_3.x))), arg_0.c.b.x);
    global1 = array<u32, 30>();
    var_0 = ~_wgslsmith_mod_u32(reverseBits(0u), ~50781u);
    let var_1 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(991f * _wgslsmith_div_f32(-1437f, 968f))), Struct_5(true, func_2(arg_0), _wgslsmith_mult_vec3_i32(reverseBits(func_3()), countOneBits(-vec3<i32>(global0[_wgslsmith_index_u32(arg_0.c.b.x, 21u)], global0[_wgslsmith_index_u32(31412u, 21u)], arg_0.d)))), arg_0.c.c.b.x, _wgslsmith_mod_vec4_i32(vec4<i32>(6039i, global0[_wgslsmith_index_u32(~arg_1.x >> (arg_3.x % 32u), 21u)], i32(-1i) * -global0[_wgslsmith_index_u32(50316u, 21u)], _wgslsmith_mod_i32(~(-7106i), -1i)), countOneBits(vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(4279u, 21u)], 0i, -2147483647i, 2147483647i))));
    var_0 = ~(~(~(~_wgslsmith_clamp_u32(arg_0.c.b.x, 13437u, global2[_wgslsmith_index_u32(518u, 31u)]))));
    return Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(select(arg_0.c.a, countOneBits(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 31u)], u_input.a, global2[_wgslsmith_index_u32(0u, 31u)])), arg_2 || var_1.a), vec4<u32>(u_input.a >> (global1[_wgslsmith_index_u32(arg_1.x, 30u)] % 32u), arg_3.x, 37963u, _wgslsmith_add_u32(arg_0.c.b.x, 124566u))), ~(~(~vec4<u32>(global1[_wgslsmith_index_u32(arg_3.x, 30u)], 0u, u_input.a, 1u))), arg_0.c.b), ~(~arg_3), arg_0.c.c);
}

fn func_5(arg_0: Struct_4, arg_1: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(abs(arg_0.c.c.c))))), -258f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(137f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_1, 1215f)), _wgslsmith_f_op_f32(-arg_0.e.b.x))))));
    let var_1 = arg_0.c.c.b.xy;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-765f * _wgslsmith_f_op_f32(abs(-1587f))))));
    var var_2 = ~_wgslsmith_mod_i32(75874i, arg_0.d);
    let var_3 = (~(~firstLeadingBit(vec4<u32>(arg_0.c.a.x, 0u, 0u, global2[_wgslsmith_index_u32(50216u, 31u)]))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a >> (1u % 32u), 4294967295u, global1[_wgslsmith_index_u32(u_input.a ^ global2[_wgslsmith_index_u32(arg_0.c.b.x, 31u)], 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)]), min(~vec4<u32>(global1[_wgslsmith_index_u32(39261u, 30u)], u_input.a, 57588u, 12056u), ~vec4<u32>(0u, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 31u)], u_input.a)))) << (arg_0.c.b % vec4<u32>(32u));
    return !select(arg_0.b.yx, !vec2<bool>(!arg_0.a.x, false), !all(select(vec2<bool>(false, true), vec2<bool>(true, true), arg_0.e.a.wy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1077f, 493f) - vec2<f32>(-1084f, 735f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1053f, -1187f))))))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-535f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-955f, 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global1 = array<u32, 30>();
    var var_1 = select(vec2<bool>(true, true), select(func_5(Struct_4(vec4<bool>(true, false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), func_1(Struct_4(vec4<bool>(false, true, true, false), vec3<bool>(false, true, false), Struct_2(vec4<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(71352u, 30u)], 31u)], 30u)], 31u)], global1[_wgslsmith_index_u32(u_input.a, 30u)], 54389u, 47552u), vec4<u32>(global1[_wgslsmith_index_u32(34201u, 30u)], 1u, u_input.a, u_input.a), Struct_1(false, vec4<f32>(var_0.x, -1581f, var_0.x, -1187f), -582f, 2147483647i)), -1i, Struct_3(vec4<bool>(true, true, false, true), vec4<f32>(var_0.x, 480f, var_0.x, var_0.x))), vec2<u32>(4294967295u, u_input.a), false, vec4<u32>(u_input.a, 4294967295u, 1u, 4294967295u)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(26124u, 91288u), 21u)], Struct_3(vec4<bool>(true, false, true, true), vec4<f32>(var_0.x, var_0.x, 201f, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-229f, 2434f, true)))), !vec2<bool>(true, 27012u < global1[_wgslsmith_index_u32(u_input.a, 30u)]), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), 0i >= _wgslsmith_mult_i32(~_wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a, 21u)], 0i), 17010i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1284f * 588f));
    var var_3 = var_1.x;
    var var_4 = Struct_3(vec4<bool>(any(!func_5(Struct_4(vec4<bool>(true, var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x), Struct_2(vec4<u32>(u_input.a, u_input.a, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 30u)], 30u)]), vec4<u32>(1u, 4294967295u, u_input.a, 37383u), Struct_1(var_1.x, vec4<f32>(160f, 1000f, var_0.x, var_0.x), -2486f, 12037i)), -67777i, Struct_3(vec4<bool>(false, var_1.x, true, true), vec4<f32>(-446f, var_0.x, -1166f, var_0.x))), var_0.x)), var_1.x, false, false), vec4<f32>(529f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-516f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1350f), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec3<i32>(-1i, ~17330i, global0[_wgslsmith_index_u32(0u, 21u)] & global0[_wgslsmith_index_u32(0u, 21u)])), ~(abs(~vec3<u32>(34902u, global1[_wgslsmith_index_u32(3959u, 30u)], 34197u)) | countOneBits(~vec3<u32>(global1[_wgslsmith_index_u32(0u, 30u)], 94905u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28076u, 31u)], 30u)]))), _wgslsmith_sub_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, global1[_wgslsmith_index_u32(u_input.a, 30u)]), vec4<u32>(global1[_wgslsmith_index_u32(1u, 30u)], 1u, global2[_wgslsmith_index_u32(77606u, 31u)], 0u))), _wgslsmith_clamp_vec4_u32(select(~vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], 23435u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 31u)], 30u)], global2[_wgslsmith_index_u32(0u, 31u)]), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 2816u), var_4.a), ~(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], 31u)], 16594u, u_input.a)), abs(reverseBits(vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(92734u, 30u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], 31u)]))))), _wgslsmith_dot_vec2_i32(-vec2<i32>(~(-1i), global0[_wgslsmith_index_u32(23078u, 21u)] & -10872i), vec2<i32>(1196i, ~1i)), 250f);
}

