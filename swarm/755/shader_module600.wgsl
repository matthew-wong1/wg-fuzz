struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1i, vec3<bool>(true, true, false)), 0u, Struct_1(-24996i, vec3<bool>(false, false, false)), Struct_1(0i, vec3<bool>(false, true, true)), Struct_1(-1i, vec3<bool>(true, false, true)));

var<private> global1: array<bool, 1> = array<bool, 1>(false);

var<private> global2: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-833f, 1266f, -521f, 1344f), vec4<f32>(880f, -1256f, 1000f, 912f), vec4<f32>(1000f, 214f, 151f, 1000f), vec4<f32>(1178f, -809f, -740f, 1032f), vec4<f32>(1076f, -1821f, 250f, 1232f), vec4<f32>(-598f, -1962f, -337f, -207f), vec4<f32>(-285f, -509f, 1861f, 1120f), vec4<f32>(-1347f, -761f, -438f, -849f), vec4<f32>(-968f, 1696f, 739f, 668f), vec4<f32>(-540f, 1743f, -395f, 689f), vec4<f32>(-629f, -139f, 278f, -234f), vec4<f32>(-306f, -2201f, 1046f, 1000f), vec4<f32>(-883f, 632f, -1125f, -1000f), vec4<f32>(326f, -833f, 717f, -1429f), vec4<f32>(176f, -1000f, 937f, 1042f), vec4<f32>(1000f, 334f, -608f, 843f), vec4<f32>(1000f, 1261f, 1144f, -1133f));

var<private> global3: Struct_1 = Struct_1(2147483647i, vec3<bool>(true, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_4(Struct_1(~global0.a.a, !(!(!global0.e.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1)), arg_1)) * 1f), Struct_3(vec2<u32>(_wgslsmith_mult_u32(countOneBits(arg_2.a.x), 26441u), 39543u)));
    let var_1 = all(global0.c.b);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), -939f));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>) -> i32 {
    var var_0 = false;
    var_0 = global0.c.b.x;
    var var_1 = global0.a;
    var var_2 = Struct_5(Struct_2(Struct_1(-var_1.a, global0.d.b), global0.b, Struct_1(_wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(-1i, global3.a, 0i)), !vec3<bool>(global0.a.b.x, var_1.b.x, global3.b.x)), global0.e, global0.e), min(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, arg_0.x, global0.b, global0.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(22374u, global0.b, arg_0.x, 57333u), vec4<u32>(4294967295u, arg_0.x, global0.b, 0u), vec4<u32>(4294967295u, global0.b, global0.b, global0.b))), global0.b, 36558u), abs(min(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_0.x, 16648u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, arg_0.x, 1u)), abs(vec4<u32>(global0.b, global0.b, global0.b, 0u))))), Struct_2(Struct_1(1i ^ u_input.a.x, vec3<bool>(arg_1.x > arg_1.x, global0.c.a >= var_1.a, select(var_1.b.x, false, false))), _wgslsmith_dot_vec3_u32(abs(~arg_0), ~arg_0), global0.d, Struct_1(reverseBits(-5914i), global0.e.b), global0.a), max(~0u, firstTrailingBit(34856u)));
    var var_3 = u_input.a.x;
    return 1i;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_2 {
    global2 = array<vec4<f32>, 17>();
    let var_0 = vec3<bool>(!global3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(vec2<u32>(arg_0.x, arg_0.x)), -538f, Struct_3(arg_0.zz))) + _wgslsmith_f_op_f32(func_2(Struct_3(vec2<u32>(global0.b, arg_0.x)), 320f, Struct_3(arg_0.zx)))) - _wgslsmith_f_op_f32(func_2(Struct_3(vec2<u32>(global0.b, 4294967295u)), -291f, Struct_3(vec2<u32>(global0.b, global0.b))))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-256f + -917f), -603f, select(true, true, true))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global0.b, 1u), 1u)]);
    global2 = array<vec4<f32>, 17>();
    global2 = array<vec4<f32>, 17>();
    global1 = array<bool, 1>();
    return Struct_2(arg_2, 8443u, Struct_1(global0.d.a, vec3<bool>(firstLeadingBit(global0.a.a) >= (global0.a.a ^ global0.a.a), _wgslsmith_mult_i32(global3.a, -17688i) <= arg_2.a, all(vec3<bool>(global3.b.x, arg_2.b.x, false)))), Struct_1(func_3(arg_0, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-968f, 301f, -480f)))) << (_wgslsmith_mod_u32(0u >> (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 20285u), arg_0.zz)) % 32u), select(vec3<bool>(true & global3.b.x, false, false), select(var_0, select(global3.b, vec3<bool>(global1[_wgslsmith_index_u32(global0.b, 1u)], true, true), vec3<bool>(global0.c.b.x, false, arg_2.b.x)), true), select(!vec3<bool>(false, arg_2.b.x, global0.a.b.x), arg_2.b, arg_2.b))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~vec2<u32>(19926u, _wgslsmith_add_u32(global0.b, _wgslsmith_add_u32(54825u, global0.b))));
    var var_1 = Struct_5(func_1(~firstLeadingBit(firstTrailingBit(vec3<u32>(global0.b, var_0.a.x, global0.b))), !global0.d.b.zy, Struct_1(_wgslsmith_mod_i32(-u_input.a.x, ~(-14515i)), !(!vec3<bool>(global3.b.x, true, true)))), firstTrailingBit(~(~vec4<u32>(1u, 15909u, 4294967295u, 118625u))), Struct_2(func_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, var_0.a.x, 35363u), ~vec3<u32>(global0.b, var_0.a.x, 1u), ~vec3<u32>(4294967295u, 1u, var_0.a.x)), !select(global0.c.b.xx, vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.a.x, 1u)]), true), global0.d).c, ~((var_0.a.x ^ 0u) | func_1(vec3<u32>(67462u, 13566u, global0.b), global3.b.zx, global0.d).b), global0.e, global0.d, func_1(~vec3<u32>(26123u, 4294967295u, 0u) >> ((vec3<u32>(var_0.a.x, 7978u, global0.b) | vec3<u32>(41823u, 10493u, 0u)) % vec3<u32>(32u)), vec2<bool>(false, true), func_1(~vec3<u32>(0u, var_0.a.x, global0.b), vec2<bool>(false, false), func_1(vec3<u32>(7374u, 31595u, 4294967295u), vec2<bool>(false, global0.d.b.x), Struct_1(0i, global3.b)).d).e).a), 0u);
    let var_2 = func_1(vec3<u32>(_wgslsmith_mult_u32(~(4294967295u & global0.b), select(global0.b, ~var_0.a.x, var_1.a.c.a > global3.a)), 1u, reverseBits(_wgslsmith_dot_vec4_u32(var_1.b >> (vec4<u32>(var_0.a.x, 1u, 0u, global0.b) % vec4<u32>(32u)), var_1.b))), vec2<bool>(!global0.e.b.x, !(true != global1[_wgslsmith_index_u32(var_0.a.x, 1u)])), global0.e);
    global2 = array<vec4<f32>, 17>();
    global3 = Struct_1(u_input.a.x, global0.d.b);
    var var_3 = var_2.a.a;
    let var_4 = select(!(!(!global3.b)), global3.b, !all(global3.b) & (true && any(select(vec4<bool>(true, false, global0.d.b.x, var_2.d.b.x), vec4<bool>(global0.c.b.x, true, global3.b.x, false), vec4<bool>(global3.b.x, true, var_2.c.b.x, var_2.d.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec3_i32(abs(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(-28269i, 2147483647i, -39338i))), vec3<i32>(var_2.a.a, select(u_input.a.x, global3.a, var_4.x), _wgslsmith_clamp_i32(global3.a, global3.a, global3.a)), vec3<i32>(~var_1.a.c.a, global0.d.a, 1i))), u_input.a, _wgslsmith_add_vec3_i32(-(max(u_input.a, vec3<i32>(var_2.e.a, 34251i, 3318i)) & select(u_input.a, vec3<i32>(global0.c.a, var_1.c.d.a, -44513i), vec3<bool>(var_4.x, var_2.e.b.x, true))), vec3<i32>(-1i, -21580i >> (var_1.d % 32u), -var_1.a.e.a) | -(~vec3<i32>(global3.a, var_2.e.a, 57621i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -506f)));
}

