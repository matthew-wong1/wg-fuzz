struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(2286f, -449f, -1034f, 1000f), vec4<f32>(146f, -145f, 1772f, -647f), vec4<f32>(2361f, 1426f, 265f, -1235f), vec4<f32>(-1149f, 1043f, -579f, -746f), vec4<f32>(-2031f, -2010f, 393f, 1905f), vec4<f32>(-845f, -165f, -228f, 1404f), vec4<f32>(1951f, 1780f, -430f, 293f), vec4<f32>(-678f, 643f, 1159f, 335f), vec4<f32>(-366f, 188f, 1175f, 254f), vec4<f32>(570f, 159f, 436f, 1009f), vec4<f32>(-886f, 969f, -141f, -1237f), vec4<f32>(2858f, -433f, -1000f, 943f), vec4<f32>(636f, 324f, -1000f, -1009f), vec4<f32>(1325f, -228f, -1778f, 356f), vec4<f32>(-1121f, -1197f, -490f, -920f), vec4<f32>(451f, -1386f, 515f, -1737f), vec4<f32>(582f, 231f, 690f, 1584f), vec4<f32>(363f, 1234f, -213f, 1000f), vec4<f32>(-488f, 1521f, -1833f, -1364f), vec4<f32>(-352f, 1000f, -214f, -879f), vec4<f32>(1101f, -911f, 252f, 1501f), vec4<f32>(-991f, 338f, 2414f, -582f), vec4<f32>(126f, 1377f, -654f, 182f), vec4<f32>(-561f, -215f, -100f, 286f), vec4<f32>(-978f, -452f, -1327f, -1539f), vec4<f32>(-328f, 488f, 1527f, -1863f), vec4<f32>(670f, -2090f, -464f, -408f), vec4<f32>(2421f, 1221f, -858f, 1663f), vec4<f32>(1418f, 1000f, -845f, -192f));

var<private> global2: bool = false;

var<private> global3: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(vec2<u32>(34357u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26418u, 30u)], 30u)], 30u)]) >> (~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 30u)], 12687u) % vec2<u32>(32u))), vec2<u32>(abs(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)]), global0[_wgslsmith_index_u32(~4294967295u, 30u)])), abs(~global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 48913u, 47831u), vec3<u32>(28638u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1917u, 30u)], 30u)], 59540u)), 30u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7510u, 30u)] ^ 49910u, 30u)], reverseBits(54170u)), 30u)]), firstTrailingBit(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~0u, 30u)], global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 30u)], 30u)], 30u)], 30u)], 30u)]), 30u)]))), 30u)], ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(12811u, 78169u), 30u)] << (~(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(91623u, 6156u), 30u)]) % 32u));
    global3 = select(vec3<bool>(select(global3.x, any(!vec3<bool>(global3.x, global3.x, false)), !(false && global3.x)), all(global3.xy), true), !vec3<bool>(any(select(vec4<bool>(false, global3.x, false, global3.x), vec4<bool>(false, true, global3.x, false), vec4<bool>(true, global3.x, false, global3.x))), true, all(!vec3<bool>(global3.x, true, false))), global3.x);
    var var_1 = Struct_1(~(~vec4<u32>(var_0.x, 1u, global0[_wgslsmith_index_u32(4294967295u, 30u)], 0u)) << (_wgslsmith_sub_vec4_u32(select(vec4<u32>(15210u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], var_0.x, 0u) ^ vec4<u32>(0u, var_0.x, 1u, 13010u), ~vec4<u32>(var_0.x, 0u, global0[_wgslsmith_index_u32(var_0.x, 30u)], var_0.x), !vec4<bool>(global3.x, global3.x, global3.x, global3.x)), select(vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], global0[_wgslsmith_index_u32(var_0.x, 30u)], var_0.x), vec4<u32>(63513u, var_0.x, 38655u, 4294967295u), vec4<bool>(global3.x, true, global3.x, global3.x)) >> (select(vec4<u32>(var_0.x, 48610u, var_0.x, var_0.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 30u)], 30u)], 30u)], 98719u, var_0.x, 1u), global3.x) % vec4<u32>(32u))) % vec4<u32>(32u)), true, 35886u, firstTrailingBit(1u));
    var var_2 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(34651u, var_0.x, 1u), var_1.a.x, min(7039u, var_0.x), 1u), _wgslsmith_mod_vec4_u32(~var_1.a, vec4<u32>(var_1.d, var_1.d, var_1.c, 81031u))), var_1.a), any(select(!(!vec4<bool>(var_1.b, var_1.b, true, false)), !select(vec4<bool>(var_1.b, var_1.b, global3.x, var_1.b), vec4<bool>(var_1.b, true, true, global3.x), false), select(!vec4<bool>(var_1.b, global3.x, false, true), vec4<bool>(var_1.b, true, true, global3.x), vec4<bool>(global3.x, false, false, true)))), firstTrailingBit(firstLeadingBit(~(1u << (global0[_wgslsmith_index_u32(var_0.x, 30u)] % 32u)))), var_1.d);
    let var_3 = global0[_wgslsmith_index_u32(var_2.d, 30u)];
    return max(var_2.c, ~1u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    global3 = !vec3<bool>(!(~arg_1.c < ~arg_1.d), false, !(u_input.b.x != 1i));
    let var_0 = reverseBits(global0[_wgslsmith_index_u32(7292u, 30u)] & _wgslsmith_div_u32(0u, _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1.a.x, 0u), arg_1.d & arg_1.c)));
    global0 = array<u32, 30>();
    let var_1 = ~arg_0.a;
    let var_2 = 2147483647i != -u_input.a.x;
    return vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 77791i, u_input.b.x) | vec4<i32>(u_input.d, u_input.d, u_input.b.x, -1i), vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.d))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~u_input.c, u_input.a.x, ~(-27530i)), -2147483647i, countOneBits(u_input.a.x)), ~firstTrailingBit(-20104i), abs(abs(u_input.d))) >> (~_wgslsmith_sub_vec4_u32(arg_1.a, ~(vec4<u32>(arg_0.a.x, 4294967295u, 15670u, 17098u) | arg_1.a)) % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    global0 = array<u32, 30>();
    let var_0 = ~(~(~(_wgslsmith_mult_vec2_u32(vec2<u32>(30174u, global0[_wgslsmith_index_u32(4947u, 30u)]), vec2<u32>(13953u, 41104u)) << (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49921u, 30u)], 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_mult_vec4_i32(-vec4<i32>(1i, ~(-u_input.a.x), -1i, ~(-u_input.c)), func_4(Struct_1(vec4<u32>(~global0[_wgslsmith_index_u32(8517u, 30u)], 0u, 0u >> (0u % 32u), 22346u), true, global0[_wgslsmith_index_u32(~func_3(u_input.a.xy), 30u)], _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(0u, 30u)]), ~vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 30u)], 30u)], 1u))), Struct_1(min(~vec4<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(var_0.x, 30u)], 17381u), vec4<u32>(64708u, 46963u, 8574u, 34335u)), all(!vec4<bool>(global3.x, global3.x, global3.x, false)), ~abs(var_0.x), 1u), global3.x));
    var var_2 = Struct_1(min(_wgslsmith_add_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(20183u, global0[_wgslsmith_index_u32(var_0.x, 30u)], 111157u, global0[_wgslsmith_index_u32(30971u, 30u)]))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(110645u, 0u, var_0.x, 61657u), vec4<u32>(4294967295u, 50324u, 71081u, 4294967295u))), vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(35570u, global0[_wgslsmith_index_u32(var_0.x, 30u)])), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 0u), var_0), 30u)], global0[_wgslsmith_index_u32(var_0.x, 30u)], var_0.x)), all(vec3<bool>(all(select(vec2<bool>(true, false), global3.zz, global3.xy)), global3.x, true)), select(reverseBits(abs(global0[_wgslsmith_index_u32(abs(var_0.x), 30u)])), 1u, any(select(select(vec3<bool>(global3.x, false, true), vec3<bool>(true, global3.x, false), false), vec3<bool>(true, global3.x, true), global3.x))), 34956u);
    global1 = array<vec4<f32>, 29>();
    return !global3.zz;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(max(-u_input.d, -u_input.d) >> (~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)]) % 32u), 8963i), ~(-1i));
    global0 = array<u32, 30>();
    let var_1 = any(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-665f, 438f), 950f))));
    var var_2 = ~abs(4294967295u);
    var var_3 = Struct_1(~vec4<u32>(1u, global0[_wgslsmith_index_u32(1u << (global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)] % 32u), 30u)], 34701u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(33725u, 30u)] ^ 1u, 30u)], 30u)]), var_1, firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~2023u, 30u)], 30u)]), 1u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-251f, -1000f), 2471f)), -153f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(round(-3170f)));
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(~abs(firstTrailingBit(vec4<u32>(4294967295u, 6800u, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)]))), max(abs(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21526u, 30u)], 30u)], 30u)], 30u)], 30u)], global0[_wgslsmith_index_u32(34274u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], 1u)), min(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32989u, 30u)], 30u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 62838u) & vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 0u, 43498u), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15360u, 30u)], 30u)], 30u)], 104571u, global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)], 30u)], 30u)]))), abs(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(86870u, 30u)], 27948u), 30u)], global0[_wgslsmith_index_u32(func_3(u_input.b), 30u)], global0[_wgslsmith_index_u32(1647u, 30u)] | global0[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22698u, 30u)], 30u)], 30u)], 30u)], global0[_wgslsmith_index_u32(72046u, 30u)])))), false, global0[_wgslsmith_index_u32(24186u, 30u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4793u | _wgslsmith_sub_u32(max(110565u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(119343u, 30u)], 30u)], 30u)]), 1u), 30u)], 30u)], 30u)]);
    var var_2 = Struct_1(var_1.a, true, ~(~var_1.c), reverseBits(global0[_wgslsmith_index_u32(4294967295u, 30u)]));
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -515f) >= _wgslsmith_f_op_f32(floor(398f)), _wgslsmith_mod_u32(var_2.a.x, ~30866u), reverseBits(var_1.a.x));
    var var_4 = var_3;
    var var_5 = u_input.c ^ ~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1714f + _wgslsmith_f_op_f32(1000f + 1887f)))), -1028f, 1000f));
}

