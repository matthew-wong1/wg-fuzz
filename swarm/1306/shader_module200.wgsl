struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_3,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(i32(-2147483648), false, Struct_3(1i, -18170i, Struct_2(false, 47138u, Struct_1(vec2<u32>(4294967295u, 105183u), vec2<bool>(true, false), vec2<i32>(19749i, -28280i))), vec2<bool>(false, true), Struct_2(false, 0u, Struct_1(vec2<u32>(8228u, 6992u), vec2<bool>(true, true), vec2<i32>(40970i, 0i)))), vec2<u32>(0u, 26047u), Struct_1(vec2<u32>(1u, 1402u), vec2<bool>(false, false), vec2<i32>(-7475i, 1i))), Struct_4(1i, true, Struct_3(81910i, -1i, Struct_2(true, 1u, Struct_1(vec2<u32>(0u, 0u), vec2<bool>(false, false), vec2<i32>(i32(-2147483648), i32(-2147483648)))), vec2<bool>(false, false), Struct_2(false, 0u, Struct_1(vec2<u32>(0u, 33707u), vec2<bool>(false, false), vec2<i32>(-16401i, -8282i)))), vec2<u32>(16348u, 0u), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(true, false), vec2<i32>(4309i, 0i))), Struct_4(i32(-2147483648), false, Struct_3(11226i, i32(-2147483648), Struct_2(true, 0u, Struct_1(vec2<u32>(35313u, 9743u), vec2<bool>(true, false), vec2<i32>(-14720i, -28423i))), vec2<bool>(false, false), Struct_2(true, 38225u, Struct_1(vec2<u32>(26582u, 104241u), vec2<bool>(false, false), vec2<i32>(1i, -3894i)))), vec2<u32>(21886u, 7008u), Struct_1(vec2<u32>(35543u, 5973u), vec2<bool>(false, false), vec2<i32>(1i, 39523i))), Struct_4(2147483647i, false, Struct_3(-1i, -16886i, Struct_2(true, 19899u, Struct_1(vec2<u32>(19304u, 33609u), vec2<bool>(true, true), vec2<i32>(16138i, 1i))), vec2<bool>(false, true), Struct_2(true, 7158u, Struct_1(vec2<u32>(52566u, 4294967295u), vec2<bool>(false, true), vec2<i32>(-1i, 2147483647i)))), vec2<u32>(33025u, 19260u), Struct_1(vec2<u32>(25354u, 116984u), vec2<bool>(true, false), vec2<i32>(9941i, 0i))), Struct_4(-1i, false, Struct_3(-1i, 0i, Struct_2(true, 1u, Struct_1(vec2<u32>(37098u, 9929u), vec2<bool>(false, true), vec2<i32>(48627i, -40636i))), vec2<bool>(true, true), Struct_2(true, 4294967295u, Struct_1(vec2<u32>(3591u, 792u), vec2<bool>(true, true), vec2<i32>(1i, 0i)))), vec2<u32>(136371u, 47503u), Struct_1(vec2<u32>(1u, 62057u), vec2<bool>(false, false), vec2<i32>(0i, 1i))), Struct_4(-52700i, false, Struct_3(-19761i, 14491i, Struct_2(true, 42407u, Struct_1(vec2<u32>(1423u, 48833u), vec2<bool>(false, false), vec2<i32>(2147483647i, 2147483647i))), vec2<bool>(false, false), Struct_2(false, 4294967295u, Struct_1(vec2<u32>(28076u, 155384u), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 2147483647i)))), vec2<u32>(0u, 1u), Struct_1(vec2<u32>(4294967295u, 1u), vec2<bool>(true, false), vec2<i32>(-1i, 0i))), Struct_4(-29764i, true, Struct_3(25843i, 1i, Struct_2(true, 390u, Struct_1(vec2<u32>(19534u, 23225u), vec2<bool>(true, true), vec2<i32>(0i, 2147483647i))), vec2<bool>(true, false), Struct_2(false, 4294967295u, Struct_1(vec2<u32>(0u, 45102u), vec2<bool>(true, true), vec2<i32>(38409i, 0i)))), vec2<u32>(8636u, 1u), Struct_1(vec2<u32>(33103u, 4294967295u), vec2<bool>(false, true), vec2<i32>(-9055i, 21586i))), Struct_4(-15086i, true, Struct_3(i32(-2147483648), 9635i, Struct_2(true, 54501u, Struct_1(vec2<u32>(17852u, 0u), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), -8508i))), vec2<bool>(false, false), Struct_2(false, 4294967295u, Struct_1(vec2<u32>(37833u, 47314u), vec2<bool>(false, false), vec2<i32>(-1i, 8305i)))), vec2<u32>(3190u, 37711u), Struct_1(vec2<u32>(41173u, 1u), vec2<bool>(true, true), vec2<i32>(-29841i, -55299i))), Struct_4(-28314i, false, Struct_3(28015i, 4872i, Struct_2(true, 0u, Struct_1(vec2<u32>(1u, 1u), vec2<bool>(false, false), vec2<i32>(-21729i, -95239i))), vec2<bool>(false, false), Struct_2(false, 8261u, Struct_1(vec2<u32>(16202u, 49355u), vec2<bool>(true, true), vec2<i32>(-21239i, -1i)))), vec2<u32>(4294967295u, 144687u), Struct_1(vec2<u32>(23832u, 4294967295u), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 25707i))), Struct_4(0i, true, Struct_3(1i, -58412i, Struct_2(true, 19916u, Struct_1(vec2<u32>(0u, 1u), vec2<bool>(true, true), vec2<i32>(0i, 6619i))), vec2<bool>(false, true), Struct_2(true, 20304u, Struct_1(vec2<u32>(0u, 0u), vec2<bool>(true, false), vec2<i32>(0i, 59330i)))), vec2<u32>(40867u, 1u), Struct_1(vec2<u32>(24793u, 4294967295u), vec2<bool>(false, true), vec2<i32>(14516i, 1i))), Struct_4(-56670i, false, Struct_3(-7383i, 1i, Struct_2(true, 4294967295u, Struct_1(vec2<u32>(0u, 13428u), vec2<bool>(false, true), vec2<i32>(53386i, -50660i))), vec2<bool>(true, false), Struct_2(true, 4294967295u, Struct_1(vec2<u32>(61203u, 4294967295u), vec2<bool>(true, false), vec2<i32>(2147483647i, 0i)))), vec2<u32>(41303u, 30189u), Struct_1(vec2<u32>(78u, 74357u), vec2<bool>(false, true), vec2<i32>(-46115i, 5249i))), Struct_4(-7962i, false, Struct_3(i32(-2147483648), i32(-2147483648), Struct_2(true, 0u, Struct_1(vec2<u32>(4294967295u, 1u), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 40362i))), vec2<bool>(false, true), Struct_2(false, 4294967295u, Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(false, false), vec2<i32>(4422i, 2147483647i)))), vec2<u32>(1u, 61284u), Struct_1(vec2<u32>(0u, 93587u), vec2<bool>(true, false), vec2<i32>(1i, i32(-2147483648)))), Struct_4(-1i, false, Struct_3(i32(-2147483648), i32(-2147483648), Struct_2(false, 1u, Struct_1(vec2<u32>(2359u, 1u), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 0i))), vec2<bool>(false, true), Struct_2(false, 0u, Struct_1(vec2<u32>(17223u, 4294967295u), vec2<bool>(true, false), vec2<i32>(-16661i, 2147483647i)))), vec2<u32>(49305u, 12564u), Struct_1(vec2<u32>(5988u, 1u), vec2<bool>(true, false), vec2<i32>(0i, 29075i))), Struct_4(-1i, false, Struct_3(-65868i, 12051i, Struct_2(false, 0u, Struct_1(vec2<u32>(4294967295u, 49468u), vec2<bool>(true, false), vec2<i32>(-25778i, -74866i))), vec2<bool>(false, false), Struct_2(true, 1u, Struct_1(vec2<u32>(63966u, 64328u), vec2<bool>(true, true), vec2<i32>(10589i, 0i)))), vec2<u32>(37388u, 27153u), Struct_1(vec2<u32>(0u, 38550u), vec2<bool>(true, true), vec2<i32>(43617i, 0i))), Struct_4(1i, false, Struct_3(-63230i, 62305i, Struct_2(false, 1u, Struct_1(vec2<u32>(4294967295u, 60735u), vec2<bool>(false, false), vec2<i32>(-1i, -18101i))), vec2<bool>(true, true), Struct_2(true, 44547u, Struct_1(vec2<u32>(48276u, 26765u), vec2<bool>(true, false), vec2<i32>(0i, -5041i)))), vec2<u32>(4422u, 4294967295u), Struct_1(vec2<u32>(4294967295u, 5855u), vec2<bool>(true, false), vec2<i32>(67545i, 2147483647i))), Struct_4(8919i, false, Struct_3(-26045i, i32(-2147483648), Struct_2(true, 36492u, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, true), vec2<i32>(2147483647i, 43384i))), vec2<bool>(true, true), Struct_2(false, 4294967295u, Struct_1(vec2<u32>(1u, 1u), vec2<bool>(false, true), vec2<i32>(0i, 1i)))), vec2<u32>(12500u, 1u), Struct_1(vec2<u32>(1u, 49475u), vec2<bool>(true, true), vec2<i32>(47447i, -5658i))), Struct_4(1i, false, Struct_3(i32(-2147483648), 2147483647i, Struct_2(true, 48119u, Struct_1(vec2<u32>(32059u, 47899u), vec2<bool>(true, false), vec2<i32>(49790i, 1i))), vec2<bool>(true, true), Struct_2(false, 4294967295u, Struct_1(vec2<u32>(0u, 55602u), vec2<bool>(false, false), vec2<i32>(57176i, 9252i)))), vec2<u32>(8007u, 0u), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(false, false), vec2<i32>(14607i, -1i))), Struct_4(1i, true, Struct_3(-20968i, 31578i, Struct_2(true, 4574u, Struct_1(vec2<u32>(5342u, 52138u), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 1i))), vec2<bool>(false, true), Struct_2(false, 2683u, Struct_1(vec2<u32>(51207u, 1u), vec2<bool>(false, true), vec2<i32>(-29536i, 0i)))), vec2<u32>(22707u, 1u), Struct_1(vec2<u32>(4294967295u, 29302u), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), -43748i))), Struct_4(-1126i, false, Struct_3(62913i, -10114i, Struct_2(true, 4294967295u, Struct_1(vec2<u32>(47193u, 69805u), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 0i))), vec2<bool>(false, true), Struct_2(false, 45303u, Struct_1(vec2<u32>(69450u, 3924u), vec2<bool>(true, true), vec2<i32>(1i, -20229i)))), vec2<u32>(17576u, 27103u), Struct_1(vec2<u32>(4294967295u, 3244u), vec2<bool>(true, false), vec2<i32>(1i, 17649i))), Struct_4(-1i, true, Struct_3(10951i, 0i, Struct_2(false, 27316u, Struct_1(vec2<u32>(47773u, 0u), vec2<bool>(true, true), vec2<i32>(48474i, 0i))), vec2<bool>(false, true), Struct_2(true, 1u, Struct_1(vec2<u32>(39525u, 100340u), vec2<bool>(true, true), vec2<i32>(2147483647i, 0i)))), vec2<u32>(0u, 1u), Struct_1(vec2<u32>(6841u, 5687u), vec2<bool>(true, false), vec2<i32>(2147483647i, 2147483647i))), Struct_4(-10458i, false, Struct_3(2147483647i, -42751i, Struct_2(true, 1u, Struct_1(vec2<u32>(0u, 1u), vec2<bool>(true, true), vec2<i32>(-31264i, 1i))), vec2<bool>(true, false), Struct_2(true, 20311u, Struct_1(vec2<u32>(65322u, 1u), vec2<bool>(false, false), vec2<i32>(-29865i, 1i)))), vec2<u32>(4294967295u, 0u), Struct_1(vec2<u32>(1u, 9471u), vec2<bool>(false, true), vec2<i32>(-1694i, 0i))), Struct_4(i32(-2147483648), true, Struct_3(i32(-2147483648), -53403i, Struct_2(true, 47282u, Struct_1(vec2<u32>(0u, 1u), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 1i))), vec2<bool>(true, true), Struct_2(true, 84440u, Struct_1(vec2<u32>(29257u, 59978u), vec2<bool>(true, true), vec2<i32>(2147483647i, 1i)))), vec2<u32>(51714u, 26161u), Struct_1(vec2<u32>(55314u, 1u), vec2<bool>(false, false), vec2<i32>(10924i, 27009i))), Struct_4(i32(-2147483648), false, Struct_3(55512i, 2147483647i, Struct_2(true, 4294967295u, Struct_1(vec2<u32>(20743u, 26010u), vec2<bool>(false, true), vec2<i32>(2147483647i, -606i))), vec2<bool>(false, false), Struct_2(false, 96022u, Struct_1(vec2<u32>(27276u, 0u), vec2<bool>(true, false), vec2<i32>(2147483647i, 1573i)))), vec2<u32>(4294967295u, 1u), Struct_1(vec2<u32>(4294967295u, 17845u), vec2<bool>(false, true), vec2<i32>(-12259i, -12797i))), Struct_4(-22274i, false, Struct_3(-55704i, -14907i, Struct_2(true, 1u, Struct_1(vec2<u32>(7047u, 0u), vec2<bool>(false, true), vec2<i32>(1i, 20405i))), vec2<bool>(true, true), Struct_2(false, 1u, Struct_1(vec2<u32>(0u, 10932u), vec2<bool>(false, false), vec2<i32>(-33641i, 2147483647i)))), vec2<u32>(4294967295u, 1u), Struct_1(vec2<u32>(52015u, 1u), vec2<bool>(true, true), vec2<i32>(-10630i, 1i))));

var<private> global1: u32 = 15134u;

var<private> global2: Struct_4;

var<private> global3: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    global3 = array<vec4<bool>, 16>();
    var var_0 = vec2<u32>(4294967295u, 83808u);
    let var_1 = -(~_wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.yz));
    global3 = array<vec4<bool>, 16>();
    let var_2 = ~1i;
    return 2147483647i <= -(~(abs(var_2) >> (_wgslsmith_add_u32(global2.c.c.b, 4294967295u) % 32u)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_dot_vec2_i32(countOneBits(global2.c.c.c.c), global2.c.e.c.c), all(select(!vec3<bool>(global2.e.b.x, false, global2.e.b.x), select(vec3<bool>(false, global2.b, global2.e.b.x), vec3<bool>(global2.c.c.a, false, global2.c.e.c.b.x), false), global2.b)) | func_3(), global2.c, u_input.c.ww ^ u_input.c.yz, global2.c.e.c);
    let var_1 = vec4<bool>(true, true, global2.c.c.a, func_3());
    global3 = array<vec4<bool>, 16>();
    let var_2 = var_1.yxw;
    let var_3 = var_1.ywy;
    return var_0.c.e;
}

fn func_1(arg_0: i32, arg_1: f32) -> bool {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, arg_1, -239f)));
    global3 = array<vec4<bool>, 16>();
    var_0 = Struct_2(global2.e.b.x, max(_wgslsmith_sub_u32(42306u, _wgslsmith_mult_u32(~var_0.b, ~5701u)), 7412u), Struct_1(vec2<u32>(1u, ~1u), func_2().c.b, vec2<i32>(arg_0, _wgslsmith_add_i32(abs(-7530i), global2.a))));
    let var_2 = !global2.c.c.c.b;
    return all(vec2<bool>(true, !(_wgslsmith_f_op_f32(abs(arg_1)) < arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(vec2<bool>(func_1(_wgslsmith_clamp_i32(u_input.a.x, u_input.b.x, 3378i), 353f), all(global2.e.b))), global2.b && func_1(u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -3269f)), !global2.c.c.c.b.x);
    var var_1 = select(!(!select(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 11513u), 16u)], select(vec4<bool>(var_0.x, global2.c.d.x, true, false), vec4<bool>(var_0.x, global2.c.c.c.b.x, var_0.x, false), global3[_wgslsmith_index_u32(4294967295u, 16u)]))), global3[_wgslsmith_index_u32(u_input.c.x ^ 1u, 16u)], select(select(!select(global3[_wgslsmith_index_u32(4294967295u, 16u)], vec4<bool>(global2.e.b.x, false, var_0.x, false), global3[_wgslsmith_index_u32(u_input.c.x, 16u)]), select(vec4<bool>(global2.b, true, global2.e.b.x, true), vec4<bool>(var_0.x, true, global2.c.e.a, global2.e.b.x), true), any(!vec3<bool>(var_0.x, true, false))), global3[_wgslsmith_index_u32(1u ^ global2.c.c.b, 16u)], true));
    let var_2 = Struct_4(2388i, true, global2.c, firstTrailingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.e.a.x, u_input.c.x), vec2<u32>(u_input.c.x, 28718u)), vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, 4294967295u), u_input.c.x))), func_2().c);
    global1 = ~firstLeadingBit(_wgslsmith_clamp_u32(~4294967295u >> (~global2.d.x % 32u), abs(73031u) ^ _wgslsmith_mod_u32(u_input.c.x, global2.d.x), ~var_2.c.c.c.a.x));
    global3 = array<vec4<bool>, 16>();
    global3 = array<vec4<bool>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-_wgslsmith_mult_i32(global2.e.c.x, global2.a) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.c.c.c.a.x, global2.e.a.x, 3122u, 0u), vec4<u32>(global2.d.x, u_input.c.x, var_2.d.x, global2.c.c.c.a.x)) % 32u), _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, var_2.a, var_2.c.c.c.c.x, var_2.a), ~vec4<i32>(global2.e.c.x, var_2.a, -50562i, var_2.c.e.c.c.x)))));
}

