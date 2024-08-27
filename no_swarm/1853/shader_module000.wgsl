struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(false, Struct_1(vec2<u32>(4294967295u, 4294967295u)), vec3<f32>(2389f, -386f, 516f), Struct_1(vec2<u32>(0u, 51001u)), 29644i), Struct_2(false, Struct_1(vec2<u32>(46553u, 0u)), vec3<f32>(1088f, -410f, -1276f), Struct_1(vec2<u32>(4294967295u, 4294967295u)), -27670i), Struct_2(true, Struct_1(vec2<u32>(27356u, 0u)), vec3<f32>(154f, -1171f, -1284f), Struct_1(vec2<u32>(0u, 1u)), 26836i), Struct_2(false, Struct_1(vec2<u32>(0u, 70286u)), vec3<f32>(-2016f, -1310f, -938f), Struct_1(vec2<u32>(79567u, 92330u)), 2147483647i), Struct_2(true, Struct_1(vec2<u32>(0u, 45312u)), vec3<f32>(683f, 931f, 110f), Struct_1(vec2<u32>(4294967295u, 4294967295u)), -4217i), Struct_2(true, Struct_1(vec2<u32>(1u, 18749u)), vec3<f32>(547f, -126f, 1000f), Struct_1(vec2<u32>(109790u, 37053u)), -41268i), Struct_2(true, Struct_1(vec2<u32>(1u, 0u)), vec3<f32>(1435f, 964f, -1000f), Struct_1(vec2<u32>(2593u, 1u)), 2147483647i), Struct_2(true, Struct_1(vec2<u32>(4294967295u, 53u)), vec3<f32>(-2268f, 1000f, -263f), Struct_1(vec2<u32>(1u, 4294967295u)), 2147483647i), Struct_2(false, Struct_1(vec2<u32>(0u, 22488u)), vec3<f32>(-166f, -855f, -932f), Struct_1(vec2<u32>(64359u, 29696u)), 28047i), Struct_2(false, Struct_1(vec2<u32>(1u, 41939u)), vec3<f32>(-312f, 782f, 867f), Struct_1(vec2<u32>(2161u, 1u)), 30576i), Struct_2(true, Struct_1(vec2<u32>(1u, 4294967295u)), vec3<f32>(620f, 1241f, -760f), Struct_1(vec2<u32>(1u, 4294967295u)), i32(-2147483648)), Struct_2(true, Struct_1(vec2<u32>(48131u, 62959u)), vec3<f32>(-2554f, 2558f, -1072f), Struct_1(vec2<u32>(80643u, 1u)), 2147483647i), Struct_2(false, Struct_1(vec2<u32>(4294967295u, 55403u)), vec3<f32>(1000f, 1441f, -565f), Struct_1(vec2<u32>(4294967295u, 40964u)), -1i), Struct_2(true, Struct_1(vec2<u32>(4294967295u, 48978u)), vec3<f32>(555f, 1000f, 182f), Struct_1(vec2<u32>(20939u, 76440u)), 0i), Struct_2(true, Struct_1(vec2<u32>(76483u, 0u)), vec3<f32>(-1382f, -696f, -1000f), Struct_1(vec2<u32>(1u, 91436u)), 1i), Struct_2(false, Struct_1(vec2<u32>(9392u, 11481u)), vec3<f32>(-3215f, -144f, 160f), Struct_1(vec2<u32>(49308u, 33689u)), i32(-2147483648)), Struct_2(false, Struct_1(vec2<u32>(76380u, 60368u)), vec3<f32>(-1572f, 360f, 1152f), Struct_1(vec2<u32>(9195u, 0u)), 0i), Struct_2(true, Struct_1(vec2<u32>(87410u, 12760u)), vec3<f32>(853f, 953f, -1540f), Struct_1(vec2<u32>(15206u, 4294967295u)), 26495i), Struct_2(false, Struct_1(vec2<u32>(0u, 21965u)), vec3<f32>(1074f, -519f, 1542f), Struct_1(vec2<u32>(99454u, 0u)), -1i), Struct_2(false, Struct_1(vec2<u32>(6554u, 0u)), vec3<f32>(432f, 919f, -1176f), Struct_1(vec2<u32>(64977u, 29105u)), 0i));

var<private> global1: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = select(vec3<bool>(26530u != arg_0.x, -199f == _wgslsmith_div_f32(-1691f, _wgslsmith_f_op_f32(trunc(-1575f))), arg_1.x), vec3<bool>(!all(select(arg_1.xwx, arg_1.xww, global1.x)), any(!select(arg_1, vec4<bool>(arg_1.x, false, false, true), false)), global1.x), arg_1.zww);
    let var_1 = Struct_1(vec2<u32>(19477u, firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_add_u32(4669u, arg_0.x), 43135u))));
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    var var_2 = global0[_wgslsmith_index_u32(~(~1u), 20u)];
    return vec4<bool>(_wgslsmith_f_op_f32(round(1224f)) < 384f, !global1.x, !(!(!(!global1.x))), true);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> vec4<u32> {
    global0 = array<Struct_2, 20>();
    let var_0 = vec3<i32>(13871i, _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-39519i, arg_3.x, -31509i, arg_3.x), vec4<i32>(u_input.b.x, arg_3.x, -1i, -4240i)), u_input.b.x), _wgslsmith_dot_vec3_i32(arg_3, arg_3)), -15853i) & abs(vec3<i32>(-u_input.b.x, 2147483647i, u_input.b.x));
    global0 = array<Struct_2, 20>();
    var var_1 = select(28919i, -2147483647i, true);
    var_1 = _wgslsmith_dot_vec3_i32(abs(var_0), -(-abs(var_0) << (u_input.c.wzw % vec3<u32>(32u))));
    return ~(u_input.c << (abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(98u, arg_1, arg_1, u_input.c.x), abs(u_input.c))) % vec4<u32>(32u)));
}

fn func_1() -> vec2<f32> {
    var var_0 = global0[_wgslsmith_index_u32(66153u, 20u)];
    global1 = vec3<bool>(all(func_2(u_input.c & vec4<u32>(var_0.b.a.x, u_input.c.x, 4294967295u, var_0.b.a.x), vec4<bool>(global1.x && var_0.a, all(vec4<bool>(var_0.a, true, global1.x, true)), !var_0.a, true))), func_2(max(vec4<u32>(var_0.d.a.x, var_0.b.a.x, 0u, 46013u) ^ countOneBits(vec4<u32>(6925u, u_input.c.x, 11828u, u_input.a)), ~u_input.c), vec4<bool>(var_0.a, var_0.a, var_0.a, true)).x, all(vec4<bool>(global1.x, (u_input.c.x << (13487u % 32u)) > _wgslsmith_mod_u32(53550u, u_input.a), global1.x, var_0.a)));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(89674u, _wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(19744u, 15928u) >> (vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u))), vec2<u32>(1u, u_input.a) << (_wgslsmith_mult_vec2_u32(u_input.c.xy, vec2<u32>(1u, u_input.a)) % vec2<u32>(32u))))), 20u)];
    global1 = vec3<bool>((!var_0.a != all(!vec2<bool>(var_0.a, var_0.a))) | select(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, var_0.a, true), vec4<bool>(false, true, global1.x, var_0.a))), false, false), global1.x, any(func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 12253u, var_0.d.a.x, 21733u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.a.x, u_input.c.x, 39744u, 0u), u_input.c), func_3(vec3<f32>(2873f, var_0.c.x, var_0.c.x), 71567u, var_0.c.x, vec3<i32>(-3347i, -1i, 0i))), vec4<bool>(true, !var_0.a, false, global1.x && true))));
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(-2147483647i, ~9120i), ~(~u_input.b.x), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(~(-2147483647i) & u_input.b.x, var_0.e, -var_0.e), max(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, var_0.e, var_0.e), vec3<i32>(-1i, var_0.e, 0i)), ~vec3<i32>(7940i, var_0.e, -2147483647i))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -802f), _wgslsmith_f_op_f32(1000f + var_0.c.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-138f, var_0.c.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(296f, 395f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1428f, 138f) + vec2<f32>(743f, -932f))))) + var_0.c.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-187f, 1379f))))) * _wgslsmith_f_op_vec2_f32(func_1())) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1070f, -984f))))))));
    var var_1 = _wgslsmith_div_i32(u_input.b.x, -42151i);
    let var_2 = var_0.x;
    var var_3 = all(vec4<bool>(global1.x, global1.x, any(vec4<bool>(false, global1.x, select(global1.x, true, global1.x), true)), any(select(vec2<bool>(false, true), global1.yz, vec2<bool>(global1.x, false)))));
    let var_4 = !select(vec4<bool>(true, !func_2(vec4<u32>(0u, 47531u, 104876u, 34528u), vec4<bool>(global1.x, true, true, true)).x, true, true), select(select(vec4<bool>(true, false, global1.x, global1.x), !vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(false, true, global1.x, global1.x)), vec4<bool>(global1.x, var_0.x == var_0.x, global1.x, all(vec3<bool>(true, false, true))), vec4<bool>(any(vec4<bool>(global1.x, global1.x, false, global1.x)), true, true, any(vec4<bool>(true, global1.x, global1.x, false)))), global1.x && true);
    global1 = var_4.xwy;
    let var_5 = Struct_2(var_4.x, Struct_1(vec2<u32>(~(~1u), 4294967295u)), vec3<f32>(-1686f, _wgslsmith_f_op_f32(round(var_0.x)), var_0.x), Struct_1(~max(select(u_input.c.xw, u_input.c.xw, false), abs(vec2<u32>(u_input.a, u_input.c.x)))), -53170i);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, -min(vec3<i32>(var_5.e, 2147483647i, 1i) | abs(vec3<i32>(31949i, var_5.e, -2147483647i)), abs(vec3<i32>(13588i, 18115i, var_5.e) >> (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u)))));
}

