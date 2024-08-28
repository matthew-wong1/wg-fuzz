struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 41072u);

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<u32>(25819u, 1u, 45681u, 4294967295u), vec4<u32>(18562u, 22312u, 17248u, 4294967295u), -44238i, -1443f, vec4<i32>(22167i, 0i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<u32>(32890u, 21622u, 20773u, 23714u), vec4<u32>(8347u, 1u, 50872u, 0u), 2147483647i, -122f, vec4<i32>(-1i, -499i, -7197i, 0i)), Struct_1(vec4<u32>(4294967295u, 1u, 27532u, 27876u), vec4<u32>(79318u, 0u, 4294967295u, 0u), -25086i, 171f, vec4<i32>(0i, i32(-2147483648), 22183i, 2147483647i)), Struct_1(vec4<u32>(4294967295u, 25209u, 0u, 4294967295u), vec4<u32>(34521u, 111159u, 4294967295u, 6763u), 0i, -327f, vec4<i32>(-1i, 0i, 2147483647i, 17665i)), Struct_1(vec4<u32>(4294967295u, 45460u, 24643u, 6711u), vec4<u32>(33727u, 1u, 26920u, 1u), 20039i, -106f, vec4<i32>(1i, 5206i, 2147483647i, -24607i)), Struct_1(vec4<u32>(1u, 28237u, 54985u, 0u), vec4<u32>(0u, 0u, 72000u, 0u), 2147483647i, -1525f, vec4<i32>(1i, -4409i, i32(-2147483648), 6004i)), Struct_1(vec4<u32>(0u, 14524u, 63479u, 1u), vec4<u32>(0u, 1u, 0u, 1u), 0i, 1693f, vec4<i32>(-18862i, -7709i, 26051i, 5575i)), Struct_1(vec4<u32>(22971u, 54910u, 1u, 0u), vec4<u32>(1u, 48899u, 16639u, 1u), -1i, 466f, vec4<i32>(0i, 23196i, 4703i, -1i)), Struct_1(vec4<u32>(0u, 20088u, 2310u, 22770u), vec4<u32>(1u, 23774u, 79210u, 4203u), 45003i, -1270f, vec4<i32>(-14750i, -20163i, 447i, 8262i)), Struct_1(vec4<u32>(34611u, 0u, 1u, 108u), vec4<u32>(66857u, 61306u, 57996u, 10383u), -1i, 670f, vec4<i32>(-43737i, 1i, 2147483647i, -29350i)), Struct_1(vec4<u32>(70903u, 16291u, 4294967295u, 47291u), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), i32(-2147483648), -674f, vec4<i32>(12499i, 24320i, -41772i, i32(-2147483648))), Struct_1(vec4<u32>(1u, 12759u, 1u, 6063u), vec4<u32>(2520u, 32288u, 134051u, 27534u), 1i, 1063f, vec4<i32>(2147483647i, -26431i, -7714i, 0i)), Struct_1(vec4<u32>(1u, 24071u, 4294967295u, 0u), vec4<u32>(82559u, 47033u, 4294967295u, 22605u), 30030i, 616f, vec4<i32>(1i, 0i, 44706i, 6997i)), Struct_1(vec4<u32>(4294967295u, 63563u, 19130u, 4294967295u), vec4<u32>(1u, 9291u, 1u, 12792u), -1i, -597f, vec4<i32>(i32(-2147483648), -1i, -11576i, 2147483647i)), Struct_1(vec4<u32>(1u, 75897u, 26989u, 0u), vec4<u32>(11317u, 0u, 50781u, 4294967295u), 3519i, -602f, vec4<i32>(2147483647i, -1i, -5606i, 16306i)), Struct_1(vec4<u32>(15964u, 1u, 1u, 1u), vec4<u32>(1u, 79650u, 0u, 0u), -14725i, 1000f, vec4<i32>(10307i, 2147483647i, 37716i, i32(-2147483648))), Struct_1(vec4<u32>(31074u, 0u, 4294967295u, 86560u), vec4<u32>(98916u, 70717u, 0u, 4294967295u), -16204i, -1685f, vec4<i32>(30619i, i32(-2147483648), -1i, -1i)), Struct_1(vec4<u32>(5564u, 27994u, 5028u, 47084u), vec4<u32>(9408u, 0u, 31934u, 4294967295u), i32(-2147483648), -1000f, vec4<i32>(i32(-2147483648), 3962i, 54527i, 9747i)), Struct_1(vec4<u32>(65651u, 0u, 40097u, 4294967295u), vec4<u32>(0u, 1u, 81279u, 0u), 27645i, 195f, vec4<i32>(i32(-2147483648), 2147483647i, 24251i, -7086i)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 25564u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), 19459i, -1406f, vec4<i32>(1i, -26681i, -35917i, 27109i)), Struct_1(vec4<u32>(0u, 41276u, 82967u, 1u), vec4<u32>(1u, 96259u, 0u, 38328u), 0i, -343f, vec4<i32>(-1i, -19469i, i32(-2147483648), 1697i)), Struct_1(vec4<u32>(0u, 1u, 35587u, 0u), vec4<u32>(17083u, 1u, 1u, 13815u), -1i, 557f, vec4<i32>(2147483647i, 2324i, 8093i, i32(-2147483648))), Struct_1(vec4<u32>(4294967295u, 92821u, 2694u, 0u), vec4<u32>(0u, 0u, 11247u, 1u), 25669i, 1215f, vec4<i32>(2147483647i, 2147483647i, 1i, 38872i)), Struct_1(vec4<u32>(18129u, 35585u, 40851u, 19224u), vec4<u32>(46687u, 0u, 26534u, 4294967295u), 1i, 214f, vec4<i32>(1i, 0i, -1i, -20376i)), Struct_1(vec4<u32>(5027u, 0u, 1u, 1u), vec4<u32>(0u, 4294967295u, 118617u, 17704u), 2147483647i, -2528f, vec4<i32>(-13110i, 17495i, -19930i, 0i)), Struct_1(vec4<u32>(4294967295u, 35049u, 29654u, 525u), vec4<u32>(4294967295u, 0u, 51190u, 4294967295u), 0i, -898f, vec4<i32>(8059i, 0i, 3028i, 0i)), Struct_1(vec4<u32>(31549u, 59353u, 0u, 1u), vec4<u32>(19399u, 518u, 4294967295u, 1u), -24929i, 282f, vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 1i)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 42248u), vec4<u32>(6480u, 49229u, 8809u, 1u), i32(-2147483648), 2150f, vec4<i32>(1i, i32(-2147483648), 1i, i32(-2147483648))), Struct_1(vec4<u32>(1u, 1u, 1u, 31998u), vec4<u32>(4294967295u, 4294967295u, 1u, 55620u), 0i, -1416f, vec4<i32>(-6618i, -18828i, i32(-2147483648), -9764i)), Struct_1(vec4<u32>(1u, 42752u, 31785u, 0u), vec4<u32>(39565u, 0u, 0u, 1u), 74667i, 1004f, vec4<i32>(83623i, -30605i, 2147483647i, -1202i)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = !any(vec4<bool>((i32(-1i) * -1i) < _wgslsmith_sub_i32(arg_1, -26542i), true, false, true));
    global1 = array<Struct_1, 30>();
    var_0 = true;
    return ~(~max(arg_0, ~(i32(-1i) * -2147483647i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    let var_0 = firstTrailingBit(vec3<i32>(0i ^ -_wgslsmith_sub_i32(u_input.c.x, 0i), arg_0.c, func_3(-(arg_0.e.x | 2147483647i), _wgslsmith_dot_vec4_i32(~arg_0.e, ~arg_0.e))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1984f, arg_0.d)), vec2<f32>(-114f, -209f))))) - vec2<f32>(arg_0.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(ceil(arg_0.d)))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-808f, arg_0.d)))), arg_0.d));
    return all(!select(vec4<bool>(var_1.x <= -261f, all(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = 1000f;
    let var_1 = select(select(select(vec4<bool>(arg_0.x < arg_2.a.d, any(vec2<bool>(true, false)), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(Struct_1(u_input.d, arg_2.a.b, arg_3, 537f, vec4<i32>(1i, arg_2.a.e.x, arg_2.a.c, -2147483647i)), vec3<u32>(arg_2.a.b.x, global0.x, 20494u))), vec4<bool>(true, true, true, true)), vec4<bool>(func_2(arg_2.a, ~u_input.d.xyz), func_2(Struct_1(u_input.d, vec4<u32>(0u, arg_2.a.a.x, u_input.a, arg_2.a.a.x), 41281i, arg_0.x, vec4<i32>(-1i, -36231i, 1843i, -2147483647i)), ~arg_2.a.b.yxy), false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !(-1i != arg_2.a.c))), !(!vec4<bool>(true, true, all(vec4<bool>(false, false, false, false)), 1402f > arg_2.a.d)), vec4<bool>(false, true, func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b, global0.x, 1u), ~51492u), 30u)], vec3<u32>(4294967295u, 47254u, ~u_input.d.x)), select(arg_3 <= -2147483647i, true, _wgslsmith_clamp_i32(-1i, -18888i, 2147483647i) != -arg_2.a.e.x)));
    let var_2 = true;
    var var_3 = arg_2.a.d;
    var_3 = arg_2.a.d;
    return arg_2;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> bool {
    return any(select(vec2<bool>(firstTrailingBit(arg_2.e.x) == arg_2.c, false), vec2<bool>(true, true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.d.zw;
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(22547u, 30u)]);
    var var_1 = !vec3<bool>(false, !(!select(false, true, false)), func_4(73727u, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d, 762f, var_0.a.d, 107f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.d, var_0.a.d, var_0.a.d), vec3<f32>(var_0.a.d, var_0.a.d, var_0.a.d)), Struct_2(Struct_1(vec4<u32>(global0.x, global0.x, 55528u, 38343u), vec4<u32>(global0.x, var_0.a.b.x, var_0.a.b.x, 4294967295u), var_0.a.e.x, 331f, var_0.a.e)), _wgslsmith_div_i32(var_0.a.e.x, -1i)), Struct_1(_wgslsmith_sub_vec4_u32(var_0.a.a, vec4<u32>(var_0.a.a.x, global0.x, u_input.d.x, global0.x)), abs(var_0.a.a), _wgslsmith_mod_i32(var_0.a.e.x, u_input.c.x), _wgslsmith_div_f32(var_0.a.d, 302f), select(vec4<i32>(-2147483647i, -1i, -6010i, var_0.a.c), vec4<i32>(-56951i, -2147483647i, u_input.c.x, u_input.c.x), vec4<bool>(false, true, true, true))), -899f));
    let var_2 = _wgslsmith_f_op_f32(1274f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.d, var_0.a.d)) * -553f));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.e.zz, vec4<u32>(~47667u, _wgslsmith_add_u32(~(~17475u), var_0.a.a.x), 4294967295u, _wgslsmith_clamp_u32(reverseBits(1u), _wgslsmith_sub_u32(~u_input.a, 77390u), _wgslsmith_sub_u32(firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.a.x, global0.x), vec2<u32>(19318u, var_0.a.b.x))))));
}

