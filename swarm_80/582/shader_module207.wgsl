struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<i32>(0i, -26435i, 37i), vec2<f32>(1296f, 754f), vec2<i32>(-15485i, -45121i), vec4<u32>(1u, 1u, 1u, 11253u)), Struct_1(vec3<i32>(31933i, 24870i, 27339i), vec2<f32>(310f, -1967f), vec2<i32>(-1i, 29237i), vec4<u32>(1u, 34062u, 1u, 0u)), Struct_1(vec3<i32>(-10929i, -30353i, -12590i), vec2<f32>(-114f, -2675f), vec2<i32>(36928i, 15743i), vec4<u32>(4294967295u, 82692u, 5670u, 59008u)), Struct_1(vec3<i32>(31410i, -1i, i32(-2147483648)), vec2<f32>(-340f, 1000f), vec2<i32>(-18913i, 15463i), vec4<u32>(4294967295u, 4753u, 4294967295u, 4294967295u)), Struct_1(vec3<i32>(14366i, 49533i, -5998i), vec2<f32>(-2114f, 349f), vec2<i32>(2147483647i, -37712i), vec4<u32>(1u, 0u, 1u, 16763u)), Struct_1(vec3<i32>(-20916i, -31312i, -20165i), vec2<f32>(-442f, 207f), vec2<i32>(2147483647i, 0i), vec4<u32>(0u, 21398u, 1u, 4294967295u)), Struct_1(vec3<i32>(1i, 15272i, 14578i), vec2<f32>(-1779f, -1000f), vec2<i32>(-1i, -1i), vec4<u32>(33292u, 12851u, 4294967295u, 87741u)), Struct_1(vec3<i32>(0i, -22812i, -57407i), vec2<f32>(1000f, 1122f), vec2<i32>(55345i, 38324i), vec4<u32>(1u, 28070u, 4294967295u, 1u)), Struct_1(vec3<i32>(25993i, 82047i, -41235i), vec2<f32>(-215f, 483f), vec2<i32>(22365i, 2147483647i), vec4<u32>(11071u, 4294967295u, 4294967295u, 0u)), Struct_1(vec3<i32>(-22456i, 2147483647i, 0i), vec2<f32>(215f, 2382f), vec2<i32>(2147483647i, 1i), vec4<u32>(67653u, 4294967295u, 0u, 1u)), Struct_1(vec3<i32>(0i, 2147483647i, 23980i), vec2<f32>(1024f, -332f), vec2<i32>(i32(-2147483648), 1i), vec4<u32>(4294967295u, 1u, 0u, 54592u)), Struct_1(vec3<i32>(-26688i, -8628i, 0i), vec2<f32>(-163f, -1347f), vec2<i32>(30480i, 2147483647i), vec4<u32>(26551u, 4294967295u, 145300u, 1u)), Struct_1(vec3<i32>(3071i, 0i, 1i), vec2<f32>(199f, -1000f), vec2<i32>(0i, -27435i), vec4<u32>(1u, 1u, 32027u, 0u)), Struct_1(vec3<i32>(12059i, -1i, 0i), vec2<f32>(-476f, -1877f), vec2<i32>(i32(-2147483648), 1i), vec4<u32>(1u, 16253u, 1u, 4294967295u)), Struct_1(vec3<i32>(7989i, -12545i, 0i), vec2<f32>(1053f, 130f), vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(20893u, 1u, 57587u, 0u)), Struct_1(vec3<i32>(1i, -31472i, 200i), vec2<f32>(283f, 763f), vec2<i32>(28485i, 35953i), vec4<u32>(0u, 0u, 1u, 36958u)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 49617i), vec2<f32>(-1090f, -527f), vec2<i32>(i32(-2147483648), -16231i), vec4<u32>(38248u, 0u, 0u, 21025u)));

var<private> global1: bool = true;

var<private> global2: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(14238u, 44822u, 37820u), vec3<u32>(3792u, 62353u, 0u), vec3<u32>(0u, 4294967295u, 27621u), vec3<u32>(32478u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(21882u, 4294967295u, 0u), vec3<u32>(4294967295u, 3730u, 4294967295u), vec3<u32>(4294967295u, 13430u, 1u), vec3<u32>(4288u, 9221u, 4883u), vec3<u32>(84822u, 4294967295u, 31769u), vec3<u32>(4294967295u, 16212u, 1u), vec3<u32>(46943u, 0u, 6010u), vec3<u32>(1u, 9677u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 1u, 27326u), vec3<u32>(36188u, 24009u, 58044u), vec3<u32>(49198u, 4294967295u, 34485u), vec3<u32>(29132u, 0u, 6310u), vec3<u32>(0u, 0u, 38450u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 22160u), vec3<u32>(137018u, 320u, 4294967295u), vec3<u32>(16752u, 53718u, 4294967295u), vec3<u32>(53932u, 0u, 75523u), vec3<u32>(16844u, 0u, 53313u), vec3<u32>(1u, 20880u, 85018u), vec3<u32>(0u, 0u, 1737u), vec3<u32>(21639u, 6883u, 24353u));

var<private> global3: Struct_1 = Struct_1(vec3<i32>(-50726i, -50276i, i32(-2147483648)), vec2<f32>(1322f, 863f), vec2<i32>(1i, 7634i), vec4<u32>(18016u, 2287u, 4294967295u, 24292u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global3 = Struct_1(~(~global3.a) | arg_0.a, vec2<f32>(959f, _wgslsmith_f_op_f32(min(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1398f, global3.b.x)))))), -(~max(vec2<i32>(48092i, 28665i), vec2<i32>(-1i, global3.c.x))) >> (vec2<u32>(u_input.b.x << (abs(arg_0.d.x) % 32u), 0u) % vec2<u32>(32u)), ~global3.d);
    var var_0 = firstTrailingBit(5785u);
    global1 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, global3.b.x, -1789f, _wgslsmith_f_op_f32(select(746f, _wgslsmith_f_op_f32(select(-2160f, global3.b.x, false)), all(vec3<bool>(false, false, false))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1582f, arg_0.b.x, arg_0.b.x, 345f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-656f)), global3.b.x, -501f, 192f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-770f, 1000f, -1446f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.b.x), -2221f, true))))));
    var var_2 = Struct_1(-(~_wgslsmith_div_vec3_i32(vec3<i32>(48736i, arg_0.c.x, arg_0.a.x), vec3<i32>(arg_0.c.x, -1i, -1i))), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec2<i32>(_wgslsmith_add_i32(-25215i, arg_0.c.x) >> (u_input.b.x % 32u), ~(-20846i)), arg_0.d);
    return abs(58027u);
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(-_wgslsmith_clamp_vec3_i32(global3.a, abs(vec3<i32>(arg_0.a.x, global3.c.x, 1i) & vec3<i32>(global3.a.x, 0i, global3.a.x)), global3.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.b)) * arg_0.b) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), -1000f)), global3.a.zz, vec4<u32>(u_input.a, u_input.b.x, ~(_wgslsmith_clamp_u32(9037u, arg_0.d.x, arg_0.d.x) ^ 1u), _wgslsmith_add_u32(arg_0.d.x, ~(~0u))));
    global2 = array<vec3<u32>, 29>();
    var var_1 = Struct_1(-arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, -1540f))), select(var_0.c, _wgslsmith_sub_vec2_i32(max(abs(vec2<i32>(var_0.c.x, var_0.c.x)), _wgslsmith_clamp_vec2_i32(var_0.a.yz, global3.a.xz, vec2<i32>(global3.a.x, var_0.a.x))), _wgslsmith_mod_vec2_i32(-vec2<i32>(arg_0.c.x, arg_0.c.x), global3.a.zx)), vec2<bool>(true, all(vec2<bool>(true, true)))), vec4<u32>(func_3(Struct_1(abs(global3.a), global3.b, vec2<i32>(-3576i, -2147483647i) << (global3.d.ww % vec2<u32>(32u)), ~vec4<u32>(arg_0.d.x, 4294967295u, 59945u, 0u))), ~75325u, _wgslsmith_add_u32(34694u, ~(51859u & var_0.d.x)), var_0.d.x));
    return true;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> Struct_1 {
    global2 = array<vec3<u32>, 29>();
    var var_0 = vec4<bool>(all(vec2<bool>(true, func_2(global0[_wgslsmith_index_u32(32436u, 17u)]))), true, !(true && (_wgslsmith_mod_u32(global3.d.x, 0u) >= arg_0)), !any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))));
    let var_1 = -global3.a.x;
    global2 = array<vec3<u32>, 29>();
    let var_2 = !select(var_0.xx, !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), select(var_0.xx, vec2<bool>(true, false), vec2<bool>(var_0.x, var_0.x))), false);
    return global0[_wgslsmith_index_u32(global3.d.x, 17u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = false;
    var_0 = arg_2.d.x > firstTrailingBit(35767u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1212f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-533f)) + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-arg_2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -104f) * _wgslsmith_f_op_f32(-arg_1.x))));
    var var_2 = arg_0;
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_0.b.x, 1000f))))) - _wgslsmith_f_op_f32(-global3.b.x)), 1000f, global3.b.x, -932f);
    return Struct_1(select(_wgslsmith_mult_vec3_i32(global3.a, ~var_2.a), arg_2.a, true || func_2(Struct_1(vec3<i32>(arg_0.c.x, 825i, arg_2.c.x), var_1.yx, vec2<i32>(global3.c.x, -2147483647i), vec4<u32>(arg_0.d.x, 28457u, 1u, arg_2.d.x)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2010f), 585f), countOneBits(~vec2<i32>(arg_2.c.x, arg_2.a.x)), select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(89987u, arg_0.d.x, arg_0.d.x), select(arg_2.d.zzx, arg_2.d.www, false)), 68890u, ~(~var_2.d.x), 460u), min(vec4<u32>(global3.d.x | 41386u, 0u, ~u_input.a, _wgslsmith_dot_vec3_u32(var_2.d.yxw, u_input.b)), select(max(vec4<u32>(arg_0.d.x, 0u, global3.d.x, 11664u), global3.d), max(vec4<u32>(22112u, 4294967295u, arg_2.d.x, global3.d.x), var_2.d), true)), 1482f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1236f, 804f)) + -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = func_4(func_1(~var_0, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 0u, 36359u, u_input.a)), max(global3.d, vec4<u32>(0u, 10644u, 2748u, u_input.a))), global3.d)), vec3<f32>(global3.b.x, -1380f, _wgslsmith_f_op_f32(-global3.b.x)), func_1(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(9377u, 0u)), u_input.b.xx), select(select(vec2<u32>(u_input.b.x, 30495u), global3.d.zx, vec2<bool>(true, true)), firstTrailingBit(u_input.b.yy), true)), select(global3.d >> (~vec4<u32>(42088u, 18214u, global3.d.x, 9585u) % vec4<u32>(32u)), global3.d, vec4<bool>(all(vec2<bool>(true, false)), true, true, all(vec4<bool>(false, true, false, false))))));
    let var_2 = Struct_1(vec3<i32>(global3.a.x, abs(var_1.a.x), -25606i), global3.b, ~global3.a.xx, _wgslsmith_div_vec4_u32(global3.d, ~firstLeadingBit(global3.d) ^ (_wgslsmith_mod_vec4_u32(global3.d, global3.d) | min(vec4<u32>(global3.d.x, var_0, 0u, u_input.b.x), vec4<u32>(global3.d.x, 13959u, 46410u, var_0)))));
    global0 = array<Struct_1, 17>();
    var var_3 = func_1(max(func_1(~var_1.d.x, vec4<u32>(~global3.d.x, abs(u_input.a), var_0 << (44993u % 32u), ~u_input.a)).d.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(~var_1.d.x, 4294967295u), max(1u, 0u))), ~firstLeadingBit(~global3.d) ^ var_2.d);
    var var_4 = ~var_2.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1727f, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-59538i, -48897i), min(vec2<i32>(var_3.c.x, var_2.c.x), var_1.a.yx)), -1i, -(5421i & var_1.c.x), reverseBits(var_3.a.x)) | abs(firstTrailingBit(~vec4<i32>(2147483647i, global3.a.x, -1i, 70199i))), vec3<u32>(func_3(func_4(func_1(4294967295u, var_1.d), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.b.x, 1000f, global3.b.x), vec3<f32>(global3.b.x, var_1.b.x, global3.b.x))), func_4(Struct_1(global3.a, vec2<f32>(global3.b.x, -1576f), var_3.a.xy, vec4<u32>(4294967295u, var_1.d.x, var_2.d.x, 64355u)), vec3<f32>(var_1.b.x, var_2.b.x, global3.b.x), var_2))), global3.d.x, ~var_1.d.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 587f, -1000f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(222f, 357f, global3.b.x)) + vec3<f32>(-2202f, var_2.b.x, 1751f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-841f, -1286f, var_1.b.x) * vec3<f32>(811f, var_3.b.x, 1614f)))))));
}

