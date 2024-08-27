struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<i32>(0i, 2147483647i, 1i), 1333f, Struct_3(Struct_1(vec3<u32>(2508u, 0u, 10086u), 455f, vec2<bool>(false, true), vec4<bool>(false, true, false, true)), vec3<i32>(-6715i, 37623i, 17393i)));

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(vec3<i32>(-15516i, -1i, -19132i), -265f, Struct_3(Struct_1(vec3<u32>(9841u, 4294967295u, 4294967295u), 1503f, vec2<bool>(false, true), vec4<bool>(true, false, true, true)), vec3<i32>(2147483647i, 49287i, i32(-2147483648)))), Struct_4(vec3<i32>(23874i, 1i, -12296i), -578f, Struct_3(Struct_1(vec3<u32>(1u, 1u, 4294967295u), 1000f, vec2<bool>(false, true), vec4<bool>(true, false, false, true)), vec3<i32>(i32(-2147483648), -1i, 2147483647i))), Struct_4(vec3<i32>(31457i, -43526i, i32(-2147483648)), -501f, Struct_3(Struct_1(vec3<u32>(0u, 0u, 20878u), 572f, vec2<bool>(true, false), vec4<bool>(true, false, false, true)), vec3<i32>(-26438i, -1i, 0i))), Struct_4(vec3<i32>(1i, -31065i, 2147483647i), 539f, Struct_3(Struct_1(vec3<u32>(5255u, 43408u, 80018u), -339f, vec2<bool>(false, true), vec4<bool>(false, false, false, true)), vec3<i32>(i32(-2147483648), 18504i, 7462i))), Struct_4(vec3<i32>(2147483647i, -12851i, 20428i), -280f, Struct_3(Struct_1(vec3<u32>(1u, 66013u, 0u), -862f, vec2<bool>(true, false), vec4<bool>(true, false, false, true)), vec3<i32>(2147483647i, -56703i, -36380i))), Struct_4(vec3<i32>(-1i, 11635i, -35316i), -440f, Struct_3(Struct_1(vec3<u32>(5707u, 0u, 0u), -952f, vec2<bool>(false, false), vec4<bool>(false, false, true, false)), vec3<i32>(0i, 2147483647i, 453i))), Struct_4(vec3<i32>(i32(-2147483648), -1i, 2147483647i), 1000f, Struct_3(Struct_1(vec3<u32>(24819u, 0u, 1u), 413f, vec2<bool>(true, false), vec4<bool>(true, false, false, true)), vec3<i32>(21937i, i32(-2147483648), 0i))), Struct_4(vec3<i32>(2079i, 35689i, 40564i), 654f, Struct_3(Struct_1(vec3<u32>(1u, 57243u, 0u), -1269f, vec2<bool>(true, false), vec4<bool>(false, false, true, true)), vec3<i32>(1i, -1i, -10394i))), Struct_4(vec3<i32>(i32(-2147483648), 16860i, 2147483647i), -1599f, Struct_3(Struct_1(vec3<u32>(64889u, 4294967295u, 45651u), 616f, vec2<bool>(false, true), vec4<bool>(true, false, true, false)), vec3<i32>(0i, i32(-2147483648), 2147483647i))), Struct_4(vec3<i32>(2147483647i, -45324i, -237i), -1842f, Struct_3(Struct_1(vec3<u32>(0u, 18768u, 37796u), -284f, vec2<bool>(true, true), vec4<bool>(false, false, true, true)), vec3<i32>(i32(-2147483648), 1i, -98332i))), Struct_4(vec3<i32>(i32(-2147483648), -1i, -8040i), 514f, Struct_3(Struct_1(vec3<u32>(4294967295u, 53442u, 12727u), 665f, vec2<bool>(true, true), vec4<bool>(true, true, true, true)), vec3<i32>(6259i, -57539i, -1i))), Struct_4(vec3<i32>(-14923i, 23899i, 45306i), 1954f, Struct_3(Struct_1(vec3<u32>(0u, 1u, 0u), -990f, vec2<bool>(true, true), vec4<bool>(true, false, true, true)), vec3<i32>(1i, 1295i, 2147483647i))), Struct_4(vec3<i32>(0i, -29844i, 68306i), 696f, Struct_3(Struct_1(vec3<u32>(4294967295u, 4294967295u, 85327u), 1000f, vec2<bool>(true, false), vec4<bool>(false, false, false, true)), vec3<i32>(-12983i, 2147483647i, 1117i))), Struct_4(vec3<i32>(46276i, 0i, 26284i), 1510f, Struct_3(Struct_1(vec3<u32>(1u, 1u, 4294967295u), 499f, vec2<bool>(false, true), vec4<bool>(false, false, false, false)), vec3<i32>(37936i, 32044i, -53283i))), Struct_4(vec3<i32>(-1i, 1i, -1i), -133f, Struct_3(Struct_1(vec3<u32>(4294967295u, 1u, 55297u), 1000f, vec2<bool>(true, false), vec4<bool>(true, true, true, false)), vec3<i32>(-1i, i32(-2147483648), 1i))), Struct_4(vec3<i32>(5190i, -9829i, -23904i), 2207f, Struct_3(Struct_1(vec3<u32>(4294967295u, 2972u, 1u), -1111f, vec2<bool>(false, true), vec4<bool>(false, true, false, false)), vec3<i32>(-43882i, 0i, -1i))), Struct_4(vec3<i32>(2147483647i, 18811i, -20870i), 1000f, Struct_3(Struct_1(vec3<u32>(37219u, 21428u, 4294967295u), 158f, vec2<bool>(true, true), vec4<bool>(true, false, false, true)), vec3<i32>(i32(-2147483648), 25378i, -31798i))), Struct_4(vec3<i32>(i32(-2147483648), 1i, 0i), -1000f, Struct_3(Struct_1(vec3<u32>(65188u, 12080u, 1u), 208f, vec2<bool>(true, true), vec4<bool>(true, true, false, false)), vec3<i32>(-23980i, i32(-2147483648), 0i))), Struct_4(vec3<i32>(23254i, 0i, 0i), 1396f, Struct_3(Struct_1(vec3<u32>(1u, 56460u, 12838u), 1000f, vec2<bool>(false, false), vec4<bool>(true, true, true, true)), vec3<i32>(1i, -16574i, -1i))));

var<private> global3: vec2<bool>;

var<private> global4: bool;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, -1013f, 651f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1388f, arg_1, arg_1) - vec3<f32>(-171f, global0.b, global0.c.a.b))))))));
    let var_1 = arg_1;
    let var_2 = var_0.yz;
    global1 = ~vec4<u32>(~4294967295u, abs(125518u), ~_wgslsmith_sub_u32(arg_0, 4294967295u << (global0.c.a.a.x % 32u)), ~max(global1.x, global1.x) ^ ~firstLeadingBit(global0.c.a.a.x));
    global4 = -_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c, -47736i), _wgslsmith_mult_i32(10504i, u_input.d)), u_input.d) < -24645i;
    return ~global1.wz;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> vec3<bool> {
    global1 = vec4<u32>(firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 8940u, global1.x), ~vec4<u32>(global0.c.a.a.x, 31199u, 0u, global1.x))), _wgslsmith_dot_vec2_u32(global1.ww, func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 6556u, 1089u, 9760u), vec4<u32>(45487u, u_input.b, 52400u, arg_3)), 810f)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, reverseBits(arg_1.a.a.x)), _wgslsmith_add_u32(1u, arg_3)), 1u);
    let var_0 = global0.c.b.xx;
    var var_1 = Struct_2(global0.c.a.d.x, arg_1.a.b, global0.c.a);
    var var_2 = Struct_4(reverseBits(_wgslsmith_add_vec3_i32(-(vec3<i32>(-2147483647i, arg_2, 27138i) << (arg_1.a.a % vec3<u32>(32u))), vec3<i32>(var_0.x, arg_2 | 0i, select(-13402i, arg_1.b.x, arg_0.x)))), _wgslsmith_f_op_f32(ceil(-1435f)), Struct_3(global0.c.a, vec3<i32>(_wgslsmith_clamp_i32(8948i, -2147483647i, u_input.d), abs(arg_2), -79372i) | countOneBits(vec3<i32>(-15553i, 2147483647i, 2154i))));
    global0 = global2[_wgslsmith_index_u32(4294967295u, 19u)];
    return global0.c.a.d.ywz;
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = select(min(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 11120u, 1u, 0u) & vec4<u32>(35898u, global1.x, 0u, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 123514u, 73289u, 10886u), vec4<u32>(4294967295u, 1u, u_input.b, 45920u))), _wgslsmith_div_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global1.x, global1.x, 26049u), vec4<u32>(global1.x, global1.x, global0.c.a.a.x, global0.c.a.a.x)), ~vec4<u32>(0u, 3050u, global0.c.a.a.x, 10153u)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(29110u, 12950u, 4294967295u, global1.x), vec4<u32>(1u, 3885u, u_input.b, 4294967295u)), ~vec4<u32>(global0.c.a.a.x, 36981u, u_input.b, u_input.a)))), ~vec4<u32>(global1.x >> (global1.x % 32u), abs(0u), ~(~1u), _wgslsmith_add_u32(reverseBits(33325u), u_input.a)), global0.c.a.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b, global0.c.a.b, -1011f, global0.c.a.b))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global0.c.a.b, global0.c.a.b)), _wgslsmith_f_op_f32(196f * global0.c.a.b))), -761f, _wgslsmith_f_op_f32(floor(-1125f)), _wgslsmith_f_op_f32(-global0.c.a.b)), (_wgslsmith_div_i32(global0.c.b.x, 35446i) & (0i << (global1.x % 32u))) >= _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global0.c.b.x, 1i), vec3<i32>(u_input.c, -61585i, -549i)), global0.a.x, ~(-48815i))))));
    let var_2 = ~u_input.b < firstLeadingBit(~_wgslsmith_add_u32(func_3(global0.c.a.a.x, -958f).x, 4294967295u));
    let var_3 = false;
    global1 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(global1.x, 0u, global0.c.a.a.x, 0u) >> (max(vec4<u32>(u_input.a, global1.x, var_0.x, global0.c.a.a.x), vec4<u32>(35986u, 1u, 1112u, global0.c.a.a.x)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global1.x, var_0.x, global0.c.a.a.x, 12068u), ~vec4<u32>(0u, global1.x, 7631u, var_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 11780u, var_0.x, global1.x), vec4<u32>(1u, 0u, 9839u, u_input.b), vec4<u32>(u_input.a, 0u, global1.x, 0u))) << (firstTrailingBit(~vec4<u32>(1u, u_input.a, u_input.a, global1.x)) % vec4<u32>(32u))) ^ (countOneBits(vec4<u32>(0u, ~0u, _wgslsmith_mult_u32(var_0.x, 4294967295u), u_input.b << (1u % 32u))) >> (~(~vec4<u32>(27115u, u_input.a, global0.c.a.a.x, 1u)) % vec4<u32>(32u)));
    return Struct_2(true, var_1.x, Struct_1(reverseBits(~(~global0.c.a.a)), var_1.x, select(arg_0.yz, !(!global0.c.a.c), !(global0.c.b.x < u_input.d)), select(!(!vec4<bool>(global3.x, var_2, global3.x, false)), select(global0.c.a.d, !global0.c.a.d, !global0.c.a.d), !all(vec2<bool>(var_3, true)))));
}

fn func_1() -> vec2<bool> {
    let var_0 = 1u;
    var var_1 = 6299i;
    var var_2 = func_4(select(global0.c.a.d.zzy, select(func_2(vec2<bool>(true, global3.x), global0.c, u_input.c, 0u), global0.c.a.d.yxx, false), vec3<bool>(!global3.x, !any(vec2<bool>(global0.c.a.d.x, true)), global3.x)));
    global4 = global3.x & !(!(!(var_2.a & false)));
    global0 = Struct_4(-vec3<i32>(~(~0i), global0.a.x, firstLeadingBit(1i)), -354f, Struct_3(global0.c.a, vec3<i32>(~2147483647i & _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.b.x, global0.a.x), vec2<i32>(u_input.c, global0.c.b.x)), i32(-1i) * -global0.c.b.x, _wgslsmith_add_i32(-1i >> (var_2.c.a.x % 32u), 1i))));
    return vec2<bool>(func_4(global0.c.a.d.wyw).a, any(var_2.c.d.wyy));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = select(select(!(!(!global0.c.a.d.zx)), func_1(), global3.x), vec2<bool>(global0.c.a.d.x, !(!global0.c.a.d.x)), true & (u_input.d > ~global0.a.x));
    let var_0 = Struct_1(abs(global1.zxy), global0.b, select(func_1(), select(!vec2<bool>(global3.x, global3.x), vec2<bool>(true, true), func_1()), !global0.c.a.c), !func_4(global0.c.a.d.ywx).c.d);
    let var_1 = global0.a;
    global3 = vec2<bool>(true, global0.c.a.c.x);
    var var_2 = var_1.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.b)), -113f), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(var_0.a.zz, func_3(~36071u, 626f)), global0.c.a.a.xy));
}

