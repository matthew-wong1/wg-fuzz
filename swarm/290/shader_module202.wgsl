struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 26>;

var<private> global2: bool = false;

var<private> global3: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(Struct_1(vec3<bool>(false, true, false), 0i, 34714u, vec4<i32>(-37727i, 40080i, -61249i, 0i))), Struct_4(Struct_1(vec3<bool>(false, true, true), -18488i, 4294967295u, vec4<i32>(7429i, -12416i, 1i, 13838i))), Struct_4(Struct_1(vec3<bool>(true, true, true), 26629i, 65500u, vec4<i32>(-82784i, 2147483647i, 0i, -21979i))), Struct_4(Struct_1(vec3<bool>(false, false, false), 1i, 1u, vec4<i32>(30030i, -16034i, 2147483647i, -1i))), Struct_4(Struct_1(vec3<bool>(true, true, false), -1i, 34417u, vec4<i32>(2147483647i, i32(-2147483648), 0i, -7466i))), Struct_4(Struct_1(vec3<bool>(false, false, true), -1i, 32689u, vec4<i32>(18919i, 1i, 14395i, 14603i))), Struct_4(Struct_1(vec3<bool>(false, true, false), i32(-2147483648), 0u, vec4<i32>(-60269i, 0i, 2147483647i, -1963i))), Struct_4(Struct_1(vec3<bool>(false, false, true), 1i, 0u, vec4<i32>(-1832i, 40426i, 1i, 1i))), Struct_4(Struct_1(vec3<bool>(false, true, false), 0i, 1u, vec4<i32>(13617i, 1i, 44023i, 0i))), Struct_4(Struct_1(vec3<bool>(true, true, true), -14498i, 43502u, vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 0i))), Struct_4(Struct_1(vec3<bool>(true, false, false), 11220i, 6587u, vec4<i32>(-6528i, 2147483647i, 2147483647i, 0i))), Struct_4(Struct_1(vec3<bool>(false, true, false), 1i, 4294967295u, vec4<i32>(2147483647i, 51465i, -37308i, 12445i))), Struct_4(Struct_1(vec3<bool>(false, true, true), -34788i, 0u, vec4<i32>(0i, -1720i, -10428i, 0i))), Struct_4(Struct_1(vec3<bool>(false, false, true), -29590i, 13987u, vec4<i32>(57113i, 0i, 1i, 20111i))), Struct_4(Struct_1(vec3<bool>(false, true, true), 48923i, 49689u, vec4<i32>(i32(-2147483648), -1i, 0i, 9797i))), Struct_4(Struct_1(vec3<bool>(false, true, true), 1i, 88059u, vec4<i32>(-1i, -1i, 0i, 1i))), Struct_4(Struct_1(vec3<bool>(true, true, true), 1i, 2981u, vec4<i32>(-42969i, -34330i, 2147483647i, 31140i))), Struct_4(Struct_1(vec3<bool>(true, false, true), i32(-2147483648), 21222u, vec4<i32>(3504i, -31172i, 2147483647i, -1i))), Struct_4(Struct_1(vec3<bool>(true, true, false), 32544i, 26670u, vec4<i32>(-1i, i32(-2147483648), 1i, 0i))), Struct_4(Struct_1(vec3<bool>(false, true, true), 24639i, 0u, vec4<i32>(-1i, i32(-2147483648), 2447i, 0i))), Struct_4(Struct_1(vec3<bool>(false, true, false), 292i, 0u, vec4<i32>(-1i, 0i, i32(-2147483648), -6691i))), Struct_4(Struct_1(vec3<bool>(true, false, false), 0i, 4294967295u, vec4<i32>(1i, 0i, 1i, -1i))), Struct_4(Struct_1(vec3<bool>(true, true, false), -2171i, 0u, vec4<i32>(-28790i, -50449i, 25406i, 2147483647i))), Struct_4(Struct_1(vec3<bool>(false, true, true), -1i, 1u, vec4<i32>(2147483647i, -1i, -11985i, 0i))), Struct_4(Struct_1(vec3<bool>(false, false, false), -1i, 34588u, vec4<i32>(i32(-2147483648), 0i, 0i, -34604i))), Struct_4(Struct_1(vec3<bool>(false, false, true), -1i, 4294967295u, vec4<i32>(-24928i, 23716i, -73336i, -49734i))), Struct_4(Struct_1(vec3<bool>(true, false, true), -35995i, 4294967295u, vec4<i32>(-30727i, -1i, 11354i, -11446i))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: Struct_3) -> vec3<bool> {
    global2 = !all(select(global0.b.a, select(global0.b.a, vec3<bool>(arg_2.d.b.a.x, arg_3.b.a.x, global0.b.a.x), global0.b.a.x), arg_3.b.a)) == !(abs(countOneBits(arg_3.b.c)) == global0.b.c);
    let var_0 = 28867u;
    var var_1 = Struct_3(global0.a, arg_2.a, ~select(countOneBits(global0.c), vec4<i32>(max(-30778i, 21192i), u_input.b >> (var_0 % 32u), firstLeadingBit(-2147483647i), global0.c.x), vec4<bool>(arg_3.b.a.x, arg_2.a.a.x, global0.b.a.x, !arg_3.b.a.x)));
    var var_2 = arg_2.a.d.zw;
    global0 = arg_3;
    return select(!var_1.b.a, !select(select(arg_2.a.a, arg_2.d.b.a, !var_1.b.a.x), !(!arg_2.d.b.a), any(select(global0.b.a.yz, vec2<bool>(var_1.b.a.x, true), false))), !select(vec3<bool>(var_1.b.a.x, arg_2.a.a.x, true), select(select(vec3<bool>(arg_3.b.a.x, true, false), vec3<bool>(true, true, true), global0.b.a), select(vec3<bool>(true, var_1.b.a.x, arg_3.b.a.x), vec3<bool>(global0.b.a.x, false, arg_3.b.a.x), false), vec3<bool>(true, arg_2.a.a.x, arg_2.a.a.x)), var_1.b.a));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> bool {
    var var_0 = ~0i;
    var var_1 = vec2<u32>(~(~u_input.a) | _wgslsmith_mult_u32(1u, ~(~21429u)), global0.b.c);
    var var_2 = ~(~(~vec3<u32>(0u, 21096u, firstLeadingBit(var_1.x))));
    var var_3 = Struct_3(global1[_wgslsmith_index_u32(abs(~36318u), 26u)], Struct_1(select(select(func_3(global0.b.d.x, vec3<f32>(global1[_wgslsmith_index_u32(var_2.x, 26u)], global0.a, -1209f), Struct_5(Struct_1(global0.b.a, -2147483647i, var_1.x, vec4<i32>(-1i, -25603i, 66528i, 50986i)), false, Struct_3(global1[_wgslsmith_index_u32(global0.b.c, 26u)], Struct_1(vec3<bool>(false, false, global0.b.a.x), arg_0, var_2.x, vec4<i32>(-15496i, u_input.b, 6145i, global0.b.b)), vec4<i32>(global0.c.x, -2147483647i, u_input.b, 1i)), Struct_3(global0.a, global0.b, global0.b.d)), Struct_3(493f, global0.b, global0.b.d)), !vec3<bool>(false, global0.b.a.x, true), false), global0.b.a, vec3<bool>(func_3(-2147483647i, vec3<f32>(-684f, -659f, -883f), Struct_5(Struct_1(vec3<bool>(arg_1.x, true, arg_1.x), global0.b.b, global0.b.c, global0.c), true, Struct_3(global0.a, global0.b, vec4<i32>(-42793i, -1i, -41467i, arg_0)), Struct_3(-175f, Struct_1(vec3<bool>(false, true, true), 41887i, 49309u, vec4<i32>(16161i, u_input.b, global0.b.b, 29037i)), vec4<i32>(-51155i, u_input.b, u_input.b, 38759i))), Struct_3(-485f, Struct_1(arg_1, global0.b.d.x, 102067u, vec4<i32>(-45790i, global0.b.b, u_input.b, 18071i)), vec4<i32>(global0.b.b, -16908i, arg_0, arg_0))).x, all(vec2<bool>(true, true)), true)), global0.c.x, u_input.a, abs(max(global0.c & vec4<i32>(2147483647i, global0.b.b, 42620i, global0.c.x), vec4<i32>(arg_0, -22918i, 39241i, -27270i)))), _wgslsmith_div_vec4_i32(~(-global0.c) | vec4<i32>(u_input.b, countOneBits(2147483647i), arg_0, arg_0), -_wgslsmith_mod_vec4_i32(-global0.b.d, reverseBits(global0.c))));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.a, 26u)]))), Struct_1(select(vec3<bool>(all(vec2<bool>(arg_1.x, arg_1.x)), true, false), func_3(1i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-190f, var_3.a, global1[_wgslsmith_index_u32(1u, 26u)]), vec3<f32>(715f, 269f, global1[_wgslsmith_index_u32(var_3.b.c, 26u)]), false)), Struct_5(Struct_1(vec3<bool>(false, false, true), 27627i, var_3.b.c, vec4<i32>(-2147483647i, var_3.b.d.x, -2147483647i, u_input.b)), true, Struct_3(136f, Struct_1(vec3<bool>(var_3.b.a.x, false, global0.b.a.x), global0.c.x, var_1.x, vec4<i32>(0i, arg_0, arg_0, 1i)), vec4<i32>(arg_0, -3446i, global0.b.d.x, var_3.c.x)), Struct_3(global0.a, var_3.b, global0.b.d)), Struct_3(644f, global0.b, global0.b.d)), vec3<bool>(true, func_3(u_input.b, vec3<f32>(global1[_wgslsmith_index_u32(var_3.b.c, 26u)], -1186f, global1[_wgslsmith_index_u32(var_3.b.c, 26u)]), Struct_5(global0.b, arg_1.x, Struct_3(global0.a, var_3.b, vec4<i32>(2147483647i, u_input.b, 0i, arg_0)), Struct_3(var_3.a, global0.b, vec4<i32>(arg_0, arg_0, global0.c.x, -1i))), Struct_3(-273f, Struct_1(vec3<bool>(true, arg_1.x, var_3.b.a.x), u_input.b, var_1.x, vec4<i32>(arg_0, -1i, 0i, -1i)), global0.c)).x, true)), ~(-30853i), 25272u, _wgslsmith_div_vec4_i32(vec4<i32>(1i, -arg_0, ~40364i, 61674i), vec4<i32>(~(-1i), _wgslsmith_dot_vec4_i32(var_3.b.d, vec4<i32>(u_input.b, u_input.b, -11272i, 18206i)), 2147483647i, ~u_input.b))), countOneBits(select(select(-var_3.c, min(global0.b.d, vec4<i32>(-2147483647i, var_3.c.x, global0.b.d.x, 2147483647i)), arg_0 > var_3.c.x), vec4<i32>(-40835i, ~(-2147483647i), ~global0.c.x, countOneBits(2147483647i)), true)));
    return false;
}

fn func_1(arg_0: f32) -> vec3<i32> {
    let var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(!vec4<bool>(global0.b.a.x, true, global0.b.a.x, global0.b.a.x)), _wgslsmith_sub_u32(global0.b.c, u_input.a) > ~0u, !(!global0.b.a.x), !func_2(u_input.b, vec3<bool>(global0.b.a.x, global0.b.a.x, true))), !(!vec4<bool>(false, true, global0.b.a.x, global0.b.a.x))), vec4<bool>(any(vec2<bool>(true, global0.b.a.x)), func_2(u_input.b, vec3<bool>(true, any(vec3<bool>(false, global0.b.a.x, global0.b.a.x)), true)), all(!select(global0.b.a, vec3<bool>(true, global0.b.a.x, global0.b.a.x), global0.b.a.x)), any(global0.b.a)), !(!(!global0.b.a.x) | func_3(-2147483647i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a, arg_0, 550f))), Struct_5(global0.b, global0.b.a.x, Struct_3(1000f, Struct_1(vec3<bool>(false, true, false), -59595i, u_input.c.x, vec4<i32>(u_input.b, global0.c.x, global0.c.x, -30198i)), global0.b.d), Struct_3(541f, Struct_1(vec3<bool>(true, global0.b.a.x, false), global0.c.x, global0.b.c, global0.c), global0.b.d)), Struct_3(207f, global0.b, global0.c)).x));
    global1 = array<f32, 26>();
    global3 = array<Struct_4, 27>();
    var var_1 = Struct_2(!(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, -476f)) == _wgslsmith_f_op_f32(-1f)), global0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.c, global0.b.c), max(vec2<u32>(firstLeadingBit(global0.b.c), abs(15129u)), _wgslsmith_add_vec2_u32(abs(u_input.c), u_input.c ^ u_input.c))));
    let var_2 = select(vec3<bool>(!var_0.x, global0.b.a.x, true), var_0.zzx, any(var_0));
    return vec3<i32>(0i, 2147483647i, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a * global0.a))));
    global1 = array<f32, 26>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(global0.a * global0.a)) + 1910f)) < global0.a;
    global2 = var_1;
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(global0.b.c, ~u_input.a), select(vec2<i32>(-24627i, _wgslsmith_dot_vec4_i32(global0.b.d >> (vec4<u32>(global0.b.c, u_input.a, 29474u, 1u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-19634i, var_0.x, -1i, var_0.x), vec4<i32>(var_0.x, var_0.x, 65974i, -2147483647i)))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, var_0.x), countOneBits(vec2<i32>(-1i, 4720i)), global0.b.d.wy), -(~global0.b.d.wy)), any(!(!global0.b.a.yz))), _wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(_wgslsmith_mod_u32(29640u, _wgslsmith_mod_u32(70332u, 4294967295u)), reverseBits(max(0u, 1u)))));
}

