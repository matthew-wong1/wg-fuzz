struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
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

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(4294967295u, vec4<i32>(19270i, 0i, 21201i, i32(-2147483648)), 35014u), -765f), Struct_2(Struct_1(38152u, vec4<i32>(-11428i, -1i, 5415i, 0i), 1u), -849f), Struct_2(Struct_1(0u, vec4<i32>(1i, -1i, -20768i, 6825i), 1u), -957f), Struct_2(Struct_1(20106u, vec4<i32>(i32(-2147483648), 18145i, -40002i, 0i), 46318u), -335f), Struct_2(Struct_1(1u, vec4<i32>(1i, 29026i, 41755i, i32(-2147483648)), 63561u), -1596f), Struct_2(Struct_1(29267u, vec4<i32>(-29306i, -1i, -7118i, -1i), 28866u), -528f), Struct_2(Struct_1(6050u, vec4<i32>(i32(-2147483648), 9025i, 2147483647i, -2342i), 4294967295u), 1545f), Struct_2(Struct_1(70441u, vec4<i32>(17940i, 1i, 2147483647i, 14787i), 22424u), -585f), Struct_2(Struct_1(47029u, vec4<i32>(-1i, -15910i, -16695i, -11898i), 29069u), 847f), Struct_2(Struct_1(24993u, vec4<i32>(-44170i, 21914i, 7812i, 1i), 46525u), 655f), Struct_2(Struct_1(14192u, vec4<i32>(1i, -14931i, 55664i, 40693i), 0u), -1391f), Struct_2(Struct_1(39557u, vec4<i32>(29651i, 37438i, -16659i, -26382i), 1u), 1000f), Struct_2(Struct_1(4294967295u, vec4<i32>(64686i, -1i, -3430i, 2147483647i), 4294967295u), 1121f), Struct_2(Struct_1(36047u, vec4<i32>(-1i, 1i, 1i, 1i), 9604u), -1246f), Struct_2(Struct_1(101395u, vec4<i32>(1i, 2147483647i, 2147483647i, 40729i), 1u), 1069f), Struct_2(Struct_1(73140u, vec4<i32>(-1i, 2147483647i, 43278i, 40202i), 48594u), 851f), Struct_2(Struct_1(28292u, vec4<i32>(0i, 27704i, -65883i, -1i), 4221u), 423f), Struct_2(Struct_1(2789u, vec4<i32>(40062i, -1i, 9378i, -15951i), 19663u), -1183f), Struct_2(Struct_1(16607u, vec4<i32>(14374i, -1411i, 11486i, 1i), 3566u), 1005f), Struct_2(Struct_1(0u, vec4<i32>(48841i, 46595i, 0i, 0i), 4294967295u), -1238f), Struct_2(Struct_1(1u, vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 1837i), 26185u), 963f), Struct_2(Struct_1(18896u, vec4<i32>(1i, 2147483647i, -6602i, i32(-2147483648)), 27115u), -104f), Struct_2(Struct_1(77444u, vec4<i32>(0i, 9252i, -17747i, -1i), 0u), 546f));

var<private> global1: i32;

var<private> global2: Struct_4 = Struct_4(Struct_3(56820u, vec3<u32>(1u, 1u, 11913u), Struct_2(Struct_1(152122u, vec4<i32>(-3527i, 39069i, -48400i, 38035i), 4294967295u), 541f)), false, vec2<u32>(0u, 4294967295u));

var<private> global3: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(51046i, -57456i, 0i), vec3<i32>(4261i, -69280i, -1i), vec3<i32>(17572i, 2147483647i, -3480i), vec3<i32>(-12236i, 0i, 1i), vec3<i32>(1i, 29498i, -4387i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(2147483647i, 2147483647i, 9935i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<i32>(1i, -48268i, -40215i), vec3<i32>(3802i, -38316i, 61125i), vec3<i32>(i32(-2147483648), -11177i, -39204i), vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<i32>(-8031i, 1i, 569i), vec3<i32>(0i, 9002i, 54467i), vec3<i32>(0i, 0i, -10167i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(-48705i, 6608i, 0i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: f32) -> u32 {
    var var_0 = global2.b;
    let var_1 = Struct_4(global2.a, any(select(select(!vec3<bool>(arg_1, arg_1, true), vec3<bool>(global2.b, false, arg_1), vec3<bool>(arg_1, true, false)), select(!vec3<bool>(true, true, global2.b), !vec3<bool>(global2.b, arg_1, arg_1), select(vec3<bool>(arg_1, true, false), vec3<bool>(false, global2.b, global2.b), vec3<bool>(global2.b, arg_1, true))), true)), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_0.a.c, 0u), global2.a.b.xz ^ vec2<u32>(global2.a.a, 94625u)) ^ global2.c);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-471f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -535f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2130f * arg_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), -263f, 154f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))));
    var var_3 = var_1;
    var var_4 = var_3.a;
    return 51534u;
}

fn func_2() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32((39014u << (_wgslsmith_sub_u32(1u, global2.a.b.x >> (~0u % 32u)) % 32u)) ^ reverseBits(_wgslsmith_div_u32(~(global2.a.a >> (0u % 32u)), _wgslsmith_sub_u32(41542u, global2.c.x))), 23u)];
    global3 = array<vec3<i32>, 18>();
    let var_1 = false;
    global0 = array<Struct_2, 23>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2832f), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(746f + _wgslsmith_f_op_f32(ceil(-1678f)))), var_0.b);
    return (31285u << (func_3(global0[_wgslsmith_index_u32(select(45572u, var_0.a.a | 1u, var_1 != false), 23u)], true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.a.c.b, 581f, -274f, var_0.b), vec4<f32>(967f, var_0.b, 1000f, global2.a.c.b))), var_2), -1099f) % 32u)) << (global2.a.a % 32u);
}

fn func_1() -> vec4<bool> {
    var var_0 = global2.a.b.zz;
    var var_1 = ~abs(abs(_wgslsmith_mult_vec3_u32(reverseBits(global2.a.b), select(global2.a.b, global2.a.b, global2.b))));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, select(reverseBits(-1i), select(abs(global2.a.c.a.b.x), 2972i, !global2.b), _wgslsmith_clamp_i32(global2.a.c.a.b.x, -2058i, 5924i) != reverseBits(u_input.a.x))), ~global3[_wgslsmith_index_u32(~global2.a.a, 18u)]);
    let var_3 = ~min(func_2(), ~33984u);
    let var_4 = min(vec2<u32>(0u, 0u), ~vec2<u32>(_wgslsmith_add_u32(global2.c.x, 0u ^ var_3), ~(~var_1.x)));
    return vec4<bool>(false, any(!vec3<bool>(global2.b, global2.b, global2.a.c.b <= -811f)), any(!select(vec4<bool>(global2.b, false, global2.b, global2.b), select(vec4<bool>(false, global2.b, global2.b, global2.b), vec4<bool>(false, false, true, global2.b), true), !vec4<bool>(global2.b, global2.b, true, true))), global2.b);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> Struct_4 {
    var var_0 = -717f;
    let var_1 = vec4<u32>(_wgslsmith_add_u32(~countOneBits(min(global2.c.x, 1u)), 0u), func_3(global2.a.c, all(vec2<bool>(!global2.b, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-383f, arg_1, arg_1, 140f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2664f, _wgslsmith_f_op_f32(-arg_1))))), 4294967295u ^ global2.a.b.x, _wgslsmith_clamp_u32(~func_2(), global2.a.a, _wgslsmith_clamp_u32(global2.c.x, ~global2.a.a, firstTrailingBit(4294967295u))) ^ 4294967295u);
    let var_2 = Struct_2(Struct_1(min(4294967295u >> (0u % 32u), 0u), _wgslsmith_sub_vec4_i32(~max(global2.a.c.a.b, vec4<i32>(global2.a.c.a.b.x, global2.a.c.a.b.x, global2.a.c.a.b.x, u_input.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-655i, u_input.c, 38566i, u_input.c), vec4<i32>(u_input.b, u_input.a.x, -24771i, 1i))), global2.c.x), _wgslsmith_f_op_f32(1008f + _wgslsmith_f_op_f32(max(global2.a.c.b, global2.a.c.b))));
    let var_3 = Struct_4(Struct_3(func_2(), ~var_1.yyw, Struct_2(var_2.a, var_2.b)), global2.b, ~vec2<u32>(reverseBits(var_1.x >> (0u % 32u)), _wgslsmith_mult_u32(4294967295u, var_2.a.c)));
    let var_4 = vec3<i32>(~var_2.a.b.x, _wgslsmith_dot_vec2_i32(countOneBits(-(vec2<i32>(2147483647i, var_3.a.c.a.b.x) >> (var_3.a.b.xz % vec2<u32>(32u)))), vec2<i32>(60546i, 1i)), var_2.a.b.x);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 18>();
    let var_0 = vec4<bool>(global2.b, true & select(global2.b, any(!vec2<bool>(global2.b, global2.b)), global2.b && (global2.b || false)), global2.b, (global2.a.c.b == global2.a.c.b) && !any(!vec4<bool>(global2.b, false, global2.b, true)));
    global3 = array<vec3<i32>, 18>();
    global2 = func_4(!(!func_1()), global2.a.c.b);
    global3 = array<vec3<i32>, 18>();
    global3 = array<vec3<i32>, 18>();
    var var_1 = Struct_5(!select(!(!var_0), select(!vec4<bool>(true, true, false, global2.b), !vec4<bool>(true, var_0.x, false, false), global2.b), global2.b), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.c.b, _wgslsmith_div_f32(global2.a.c.b, _wgslsmith_f_op_f32(select(-1855f, 366f, true)))) + -683f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global2.c, _wgslsmith_mod_vec2_u32(global2.a.b.zy << (vec2<u32>(42372u, global2.a.c.a.a) % vec2<u32>(32u)), ~vec2<u32>(11640u, global2.a.b.x))), abs(reverseBits(~global2.c))));
}

