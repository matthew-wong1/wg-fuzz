struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<bool>;

var<private> global2: u32;

var<private> global3: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_2(vec3<u32>(0u, 4294967295u, 21827u), vec4<i32>(0i, i32(-2147483648), -17785i, i32(-2147483648)), vec4<u32>(66667u, 64595u, 43321u, 4294967295u), false, Struct_1(vec2<i32>(-5131i, 29563i), vec2<bool>(true, false), 4294967295u, vec2<bool>(false, true))), Struct_2(vec3<u32>(0u, 0u, 104589u), vec4<i32>(0i, -11367i, -41963i, -7107i), vec4<u32>(103271u, 25517u, 4294967295u, 25298u), true, Struct_1(vec2<i32>(-48173i, -54559i), vec2<bool>(false, true), 1u, vec2<bool>(true, true))), -60812i), Struct_3(Struct_2(vec3<u32>(4294967295u, 0u, 1u), vec4<i32>(i32(-2147483648), 0i, 1i, i32(-2147483648)), vec4<u32>(4294967295u, 0u, 0u, 21567u), false, Struct_1(vec2<i32>(-1i, -9415i), vec2<bool>(false, true), 4294967295u, vec2<bool>(false, true))), Struct_2(vec3<u32>(9431u, 4294967295u, 9193u), vec4<i32>(-14250i, -1i, -1i, 0i), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), true, Struct_1(vec2<i32>(29332i, -18603i), vec2<bool>(false, false), 42407u, vec2<bool>(true, true))), -1i), Struct_3(Struct_2(vec3<u32>(70299u, 0u, 0u), vec4<i32>(0i, 1i, i32(-2147483648), -39185i), vec4<u32>(65322u, 11001u, 0u, 4294967295u), false, Struct_1(vec2<i32>(2147483647i, -1i), vec2<bool>(true, false), 6331u, vec2<bool>(false, false))), Struct_2(vec3<u32>(0u, 4294967295u, 1u), vec4<i32>(-1i, 77i, -15158i, 27345i), vec4<u32>(4294967295u, 45682u, 37022u, 1u), true, Struct_1(vec2<i32>(-53911i, -6231i), vec2<bool>(false, true), 18402u, vec2<bool>(true, true))), -1i), Struct_3(Struct_2(vec3<u32>(33223u, 25624u, 1u), vec4<i32>(0i, i32(-2147483648), -1i, 46964i), vec4<u32>(1u, 1u, 78909u, 92825u), false, Struct_1(vec2<i32>(19036i, 5023i), vec2<bool>(false, false), 86155u, vec2<bool>(false, false))), Struct_2(vec3<u32>(4294967295u, 21771u, 1u), vec4<i32>(24743i, 37031i, -7872i, 0i), vec4<u32>(32322u, 22501u, 0u, 1u), false, Struct_1(vec2<i32>(-1i, 9278i), vec2<bool>(false, true), 79589u, vec2<bool>(true, false))), 0i), Struct_3(Struct_2(vec3<u32>(10588u, 35099u, 25952u), vec4<i32>(0i, -1i, 0i, 9382i), vec4<u32>(24468u, 4560u, 18676u, 1u), false, Struct_1(vec2<i32>(2147483647i, 13891i), vec2<bool>(true, true), 1u, vec2<bool>(true, false))), Struct_2(vec3<u32>(0u, 72880u, 160704u), vec4<i32>(1i, 0i, i32(-2147483648), 2147483647i), vec4<u32>(1u, 42188u, 83081u, 1u), false, Struct_1(vec2<i32>(-1i, 0i), vec2<bool>(true, false), 31878u, vec2<bool>(false, true))), 26051i), Struct_3(Struct_2(vec3<u32>(4294967295u, 4294967295u, 6406u), vec4<i32>(1i, -75060i, 32690i, 11198i), vec4<u32>(76214u, 0u, 24696u, 37999u), true, Struct_1(vec2<i32>(-24253i, -29787i), vec2<bool>(true, false), 74906u, vec2<bool>(false, false))), Struct_2(vec3<u32>(1u, 16597u, 1u), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -1i), vec4<u32>(0u, 0u, 23095u, 1u), true, Struct_1(vec2<i32>(1i, 0i), vec2<bool>(true, false), 1u, vec2<bool>(false, false))), 18444i), Struct_3(Struct_2(vec3<u32>(5791u, 1u, 99268u), vec4<i32>(2147483647i, i32(-2147483648), 13270i, 0i), vec4<u32>(1u, 32964u, 53144u, 83100u), true, Struct_1(vec2<i32>(-4962i, 0i), vec2<bool>(true, true), 18893u, vec2<bool>(false, false))), Struct_2(vec3<u32>(4294967295u, 53471u, 11731u), vec4<i32>(0i, 10503i, 47658i, 2147483647i), vec4<u32>(89507u, 1u, 82424u, 51145u), false, Struct_1(vec2<i32>(-1i, -1827i), vec2<bool>(true, false), 4294967295u, vec2<bool>(false, true))), 11231i), Struct_3(Struct_2(vec3<u32>(1u, 20319u, 1u), vec4<i32>(16474i, 2147483647i, -15475i, 0i), vec4<u32>(0u, 11791u, 0u, 16106u), false, Struct_1(vec2<i32>(-22927i, -3246i), vec2<bool>(true, false), 1u, vec2<bool>(false, false))), Struct_2(vec3<u32>(32588u, 1u, 4294967295u), vec4<i32>(1i, 43511i, 51839i, -28503i), vec4<u32>(68161u, 4294967295u, 0u, 0u), false, Struct_1(vec2<i32>(-21000i, -12052i), vec2<bool>(true, false), 59132u, vec2<bool>(false, false))), 0i), Struct_3(Struct_2(vec3<u32>(0u, 21247u, 53454u), vec4<i32>(-7830i, 3555i, 2147483647i, -39922i), vec4<u32>(46504u, 9116u, 1u, 28826u), true, Struct_1(vec2<i32>(-1i, 1i), vec2<bool>(true, true), 17169u, vec2<bool>(false, true))), Struct_2(vec3<u32>(53590u, 21876u, 54037u), vec4<i32>(-3835i, -13813i, 0i, -55200i), vec4<u32>(3189u, 4294967295u, 43175u, 1u), false, Struct_1(vec2<i32>(228i, 9527i), vec2<bool>(false, false), 0u, vec2<bool>(true, true))), -47081i), Struct_3(Struct_2(vec3<u32>(86622u, 16920u, 17018u), vec4<i32>(-15540i, -10818i, 2147483647i, 0i), vec4<u32>(1u, 22496u, 1u, 0u), true, Struct_1(vec2<i32>(1i, -25784i), vec2<bool>(false, true), 1u, vec2<bool>(true, true))), Struct_2(vec3<u32>(87111u, 2942u, 0u), vec4<i32>(42065i, i32(-2147483648), 11453i, 1i), vec4<u32>(90120u, 4294967295u, 32831u, 78357u), false, Struct_1(vec2<i32>(-29013i, -69383i), vec2<bool>(false, true), 0u, vec2<bool>(false, false))), 36875i), Struct_3(Struct_2(vec3<u32>(0u, 1u, 73348u), vec4<i32>(-1749i, -85624i, 25262i, i32(-2147483648)), vec4<u32>(1u, 0u, 1u, 25533u), false, Struct_1(vec2<i32>(-9634i, -21821i), vec2<bool>(true, true), 19605u, vec2<bool>(true, false))), Struct_2(vec3<u32>(1u, 1u, 0u), vec4<i32>(i32(-2147483648), 33862i, -47241i, -1i), vec4<u32>(4294967295u, 19720u, 89190u, 0u), false, Struct_1(vec2<i32>(0i, 2147483647i), vec2<bool>(true, false), 44931u, vec2<bool>(false, true))), -1i), Struct_3(Struct_2(vec3<u32>(4294967295u, 1u, 7558u), vec4<i32>(-12638i, 97763i, 18144i, -1i), vec4<u32>(0u, 46048u, 1u, 4294967295u), true, Struct_1(vec2<i32>(31001i, 2147483647i), vec2<bool>(false, true), 4294967295u, vec2<bool>(false, false))), Struct_2(vec3<u32>(12315u, 4294967295u, 16841u), vec4<i32>(-48349i, 0i, 0i, 19260i), vec4<u32>(4294967295u, 50622u, 0u, 44817u), true, Struct_1(vec2<i32>(-1627i, 26258i), vec2<bool>(false, false), 1u, vec2<bool>(true, false))), -75599i), Struct_3(Struct_2(vec3<u32>(1u, 13753u, 10578u), vec4<i32>(-38735i, 641i, -1i, -1i), vec4<u32>(62950u, 71100u, 37325u, 38685u), true, Struct_1(vec2<i32>(-6237i, 0i), vec2<bool>(false, true), 43618u, vec2<bool>(true, false))), Struct_2(vec3<u32>(0u, 4294967295u, 27221u), vec4<i32>(-46764i, 2147483647i, 8116i, 0i), vec4<u32>(1u, 1u, 1u, 46400u), false, Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<bool>(false, false), 23484u, vec2<bool>(true, true))), 44980i), Struct_3(Struct_2(vec3<u32>(4294967295u, 65481u, 19783u), vec4<i32>(1i, 2147483647i, 1018i, 2147483647i), vec4<u32>(80348u, 4294967295u, 1u, 1u), true, Struct_1(vec2<i32>(16266i, 19703i), vec2<bool>(false, true), 26514u, vec2<bool>(true, true))), Struct_2(vec3<u32>(0u, 34651u, 0u), vec4<i32>(0i, -1i, 24897i, -1i), vec4<u32>(1u, 51784u, 0u, 1u), false, Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<bool>(true, true), 13532u, vec2<bool>(false, true))), -1i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.d, 1i >> (u_input.a.x % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.d, u_input.d, -49435i), u_input.c) << (_wgslsmith_clamp_u32(38518u, 67236u, u_input.a.x) % 32u)), vec2<i32>(-u_input.d, abs(u_input.c.x))), !select(vec2<bool>(true, true), !vec2<bool>(global1.x, global1.x), true), u_input.a.x, !select(select(select(vec2<bool>(global1.x, false), vec2<bool>(true, true), vec2<bool>(false, global1.x)), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, true)), select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x), global1.x)), !select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), global1.x), true));
    global2 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(1u), var_0.c >> (_wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_sub_u32(~4294967295u, u_input.a.x)) % 32u)), 14u)];
    var var_3 = vec2<u32>(var_2.b.c.x ^ ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, u_input.b.x), var_2.a.c.yy)), 138445u);
    return true;
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1743f)));
    let var_0 = ~(-32656i);
    var var_1 = firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.b.x));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(step(-1287f, 655f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(309f, -200f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, arg_0))) - vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_0, -583f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(861f + global0.x), _wgslsmith_f_op_f32(-arg_0)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, 1665f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 661f) * vec2<f32>(arg_0, global0.x)))))));
    return Struct_2(var_1.zyz, -vec4<i32>(0i, firstTrailingBit(_wgslsmith_mod_i32(var_0, var_0)), _wgslsmith_mod_i32(select(u_input.d, var_0, arg_1), _wgslsmith_mod_i32(var_0, -2147483647i)), ~var_0), ~vec4<u32>(4294967295u, ~firstTrailingBit(u_input.e), ~29170u, 6893u), all(vec2<bool>(global1.x, !func_3())), Struct_1(~(vec2<i32>(u_input.c.x, 2147483647i) & vec2<i32>(u_input.d, var_0)), vec2<bool>(global1.x, false), ~var_1.x, vec2<bool>(global1.x, arg_1)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_1 {
    global1 = vec2<bool>(!global1.x, arg_1.x);
    let var_0 = _wgslsmith_f_op_f32(max(global0.x, global0.x));
    var var_1 = func_2(1000f, !(!(false && all(arg_1.xz))));
    let var_2 = -1019f;
    global3 = array<Struct_3, 14>();
    return var_1.e;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -819f))), global1.x || (-10531i >= ~u_input.d)).e.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-740f, global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - global0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1072f, 1775f, -1115f, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.x, global0.x, -280f) + vec4<f32>(global0.x, global0.x, 216f, global0.x))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1131f, _wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_div_f32(918f, 103f)), vec4<f32>(global0.x, _wgslsmith_f_op_f32(trunc(global0.x)), 452f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) + -1000f))))));
    var var_2 = func_2(-1968f, _wgslsmith_div_i32(-29775i, 1i) <= ~u_input.d).c.yz;
    let var_3 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1089f), any(!(!(!arg_0.e.b))));
    var var_4 = firstTrailingBit(arg_0.b.wzy);
    return Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(4912u << (arg_0.a.x % 32u), 0u, (var_2.x & arg_0.a.x) & arg_0.a.x), _wgslsmith_mult_vec3_u32(select(vec3<u32>(var_2.x, 19591u, var_3.c.x), var_3.c.zzz, true), arg_0.c.yxz)), select(vec4<i32>(select(-43397i, arg_0.e.a.x, false), _wgslsmith_add_i32(var_4.x, 1972i), -2147483647i, _wgslsmith_div_i32(u_input.d, var_3.b.x)) << (~u_input.a % vec4<u32>(32u)), vec4<i32>(~(-1i), min(-178i ^ arg_0.e.a.x, var_4.x), u_input.d, abs(arg_0.e.a.x)), select(vec4<bool>(164f >= global0.x, any(vec4<bool>(arg_0.e.b.x, arg_0.e.d.x, true, arg_0.e.b.x)), false, func_1(18735i, vec4<bool>(arg_0.e.b.x, false, false, false), var_3.e.a).d.x), !select(vec4<bool>(true, var_3.e.d.x, var_3.d, false), vec4<bool>(arg_0.e.b.x, var_3.d, false, true), arg_0.d), var_3.e.b.x | true)), ~firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.e, u_input.b.x, 4294967295u), u_input.a)), true, Struct_1(var_3.e.a, vec2<bool>(any(vec4<bool>(true, global1.x, false, global1.x)), false), _wgslsmith_sub_u32(firstTrailingBit(abs(arg_0.a.x)), countOneBits(1u)), vec2<bool>(arg_0.e.b.x, !(!arg_0.e.b.x))));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: f32) -> Struct_1 {
    global1 = vec2<bool>(true, any(select(select(!vec3<bool>(true, true, global1.x), select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, false, true), false), vec3<bool>(false, true, arg_0.b.d)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, global1.x), arg_0.b.d), select(vec3<bool>(true, true, arg_0.a.e.d.x), vec3<bool>(true, true, true), !vec3<bool>(true, false, global1.x)))));
    var var_0 = arg_0.b.e;
    global2 = ~(arg_0.a.c.x << (arg_0.a.c.x % 32u));
    var_0 = Struct_1(~abs(vec2<i32>(arg_1, -7480i)) >> ((vec2<u32>(1u, 1u) << (countOneBits(vec2<u32>(u_input.e, arg_0.b.a.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<bool>(arg_0.a.d, any(!vec3<bool>(var_0.d.x, global1.x, true))), arg_0.a.e.c, func_4(Struct_2(vec3<u32>(u_input.a.x << (arg_0.a.c.x % 32u), func_1(16697i, vec4<bool>(global1.x, false, true, arg_0.b.e.b.x), u_input.c.yz).c, u_input.e), abs(arg_0.b.b), vec4<u32>(~arg_0.a.a.x, ~20717u, abs(1u), _wgslsmith_div_u32(u_input.e, 4294967295u)), !func_4(Struct_2(u_input.a.zyy, vec4<i32>(var_0.a.x, var_0.a.x, 2160i, var_0.a.x), vec4<u32>(14235u, var_0.c, 32129u, 17273u), false, arg_0.b.e)).e.b.x, func_2(_wgslsmith_f_op_f32(exp2(arg_2)), !var_0.b.x).e)).e.d);
    global2 = countOneBits(~1u ^ firstLeadingBit(var_0.c));
    return func_2(-944f, var_0.b.x).e;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 14>();
    let var_0 = u_input.c.x;
    var var_1 = func_5(Struct_3(func_4(Struct_2(u_input.a.wxx | vec3<u32>(1u, 4294967295u, 1u), ~u_input.c, u_input.a, true, func_1(0i, vec4<bool>(false, global1.x, true, global1.x), u_input.c.xy))), Struct_2(_wgslsmith_clamp_vec3_u32(func_2(global0.x, global1.x).a, min(u_input.a.wxw, vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), u_input.a.xzy), u_input.c, ~(u_input.a >> (u_input.a % vec4<u32>(32u))), _wgslsmith_mult_u32(5154u, 10992u) == _wgslsmith_add_u32(u_input.a.x, 7283u), Struct_1(~vec2<i32>(var_0, -4851i), vec2<bool>(true, true), 1u, !vec2<bool>(true, global1.x))), firstLeadingBit(u_input.d)), 35506i | max(-func_1(var_0, vec4<bool>(false, global1.x, global1.x, true), u_input.c.xx).a.x, var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1367f, global0.x, global1.x)) + _wgslsmith_f_op_f32(trunc(-442f))) + global0.x));
    var var_2 = Struct_1(vec2<i32>(var_0, _wgslsmith_div_i32(u_input.c.x, ~(-9078i))), vec2<bool>(var_1.d.x, 18809i >= (20072i & countOneBits(var_1.a.x))), u_input.e, !vec2<bool>(var_1.b.x, !any(vec2<bool>(var_1.b.x, true))));
    var var_3 = Struct_2(abs(u_input.a.wzz), _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(~var_0, _wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(var_0, u_input.d)), ~var_1.a.x & var_1.a.x, _wgslsmith_mod_i32(~36173i, func_4(Struct_2(vec3<u32>(var_2.c, 77864u, 4062u), vec4<i32>(var_2.a.x, 1i, 1i, -2147483647i), vec4<u32>(var_2.c, 4294967295u, 4294967295u, var_2.c), true, Struct_1(u_input.c.zz, vec2<bool>(true, var_2.b.x), var_1.c, vec2<bool>(true, false)))).b.x))), _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(abs(u_input.a), u_input.a), vec4<u32>(_wgslsmith_mod_u32(12247u, 4294967295u) | var_1.c, select(var_1.c, 101214u, u_input.b.x < 16853u), abs(u_input.a.x), ~_wgslsmith_add_u32(u_input.a.x, var_2.c))), all(!vec4<bool>(true | var_2.b.x, !var_2.d.x, var_2.b.x, var_1.b.x)), Struct_1(~vec2<i32>(-9016i, abs(-8078i)), vec2<bool>(_wgslsmith_sub_u32(var_1.c, var_1.c) < var_2.c, false), u_input.e, var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(~vec2<i32>(38211i, reverseBits(var_3.e.a.x)), ~(vec2<i32>(-1i) * -var_1.a)), var_3.e.c << (var_1.c % 32u), var_1.c);
}

