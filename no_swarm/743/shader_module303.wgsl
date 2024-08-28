struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(2147483647i, vec2<i32>(15748i, 11974i)), Struct_2(887i, vec2<i32>(23490i, 50575i)), Struct_2(i32(-2147483648), vec2<i32>(0i, 16329i)), Struct_2(26002i, vec2<i32>(-1i, 25952i)), Struct_2(15887i, vec2<i32>(-21851i, 2147483647i)), Struct_2(1i, vec2<i32>(44968i, -1i)), Struct_2(-43381i, vec2<i32>(-15573i, -9455i)), Struct_2(-1i, vec2<i32>(-1i, 1i)), Struct_2(3296i, vec2<i32>(-1i, 1i)), Struct_2(-13734i, vec2<i32>(13504i, -1i)), Struct_2(52788i, vec2<i32>(-30119i, 1i)), Struct_2(-15978i, vec2<i32>(3281i, -66946i)), Struct_2(-51813i, vec2<i32>(1i, -1i)));

var<private> global1: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(15674i, -1i), vec2<i32>(-12047i, 31864i), vec2<i32>(i32(-2147483648), 54700i));

var<private> global2: Struct_4 = Struct_4(vec4<i32>(-3851i, 67231i, i32(-2147483648), 1i));

var<private> global3: Struct_1 = Struct_1(true);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_3) -> u32 {
    global0 = array<Struct_2, 13>();
    let var_0 = ~global2.a;
    let var_1 = 1u ^ firstLeadingBit(~_wgslsmith_sub_u32(u_input.e.x ^ u_input.b, u_input.b));
    global1 = array<vec2<i32>, 4>();
    global3 = Struct_1(false);
    return 91462u;
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    global1 = array<vec2<i32>, 4>();
    global0 = array<Struct_2, 13>();
    let var_0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(53541u, 41030u, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, u_input.e.x, 4294967295u) | vec4<u32>(u_input.e.x, u_input.e.x, 979u, 80732u)), ~vec4<u32>(1u, u_input.e.x, 0u, u_input.b) & (vec4<u32>(u_input.e.x, 1u, u_input.e.x, u_input.b) >> (~vec4<u32>(20122u, u_input.e.x, u_input.b, 991u) % vec4<u32>(32u)))) << (vec4<u32>(~66607u, abs(~(~1u)), _wgslsmith_sub_u32(countOneBits(37752u), _wgslsmith_add_u32(u_input.e.x, 1u) >> (1u % 32u)), _wgslsmith_dot_vec3_u32(~(vec3<u32>(23725u, u_input.b, 15511u) & vec3<u32>(112971u, 0u, u_input.e.x)), vec3<u32>(~35672u, u_input.e.x, _wgslsmith_mod_u32(14060u, u_input.b)))) % vec4<u32>(32u));
    global1 = array<vec2<i32>, 4>();
    var var_1 = _wgslsmith_f_op_f32(round(514f));
    return !vec2<bool>(any(!vec4<bool>(global3.a, true, global3.a, true)) && all(select(vec3<bool>(false, true, false), vec3<bool>(global3.a, true, global3.a), global3.a)), any(!select(vec4<bool>(global3.a, global3.a, true, global3.a), vec4<bool>(global3.a, false, true, global3.a), vec4<bool>(false, global3.a, false, false))));
}

fn func_2() -> Struct_1 {
    var var_0 = !select(select(select(vec2<bool>(global3.a, global3.a), vec2<bool>(false, true), true), !vec2<bool>(false, global3.a), select(vec2<bool>(false, global3.a), !vec2<bool>(global3.a, global3.a), -1i <= u_input.a.x)), vec2<bool>(!all(vec2<bool>(global3.a, true)), false), all(!vec3<bool>(global3.a, global3.a, global3.a)));
    var_0 = select(!func_4(global0[_wgslsmith_index_u32(func_3(-2147483647i ^ u_input.a.x, -global2.a.xyy, true, Struct_3(global2.a.x, global0[_wgslsmith_index_u32(u_input.b, 13u)], vec3<f32>(-590f, -362f, -715f))), 13u)]), func_4(global0[_wgslsmith_index_u32(reverseBits(u_input.e.x) ^ _wgslsmith_mod_u32(reverseBits(u_input.e.x), ~37457u), 13u)]), vec2<bool>(!all(select(vec4<bool>(false, false, true, global3.a), vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(global3.a, var_0.x, global3.a, global3.a))), any(select(vec3<bool>(var_0.x, global3.a, false), vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, global3.a, var_0.x)))));
    let var_1 = !vec2<bool>(!any(!vec3<bool>(var_0.x, global3.a, true)), any(!(!vec3<bool>(true, var_0.x, true))));
    global2 = Struct_4(~firstTrailingBit(vec4<i32>(global2.a.x, global2.a.x, u_input.d.x, u_input.c.x) | global2.a) & vec4<i32>(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(11404u, 4u)], vec2<i32>(u_input.d.x, u_input.d.x)) << (~u_input.b % 32u), countOneBits(global2.a.x) ^ (global2.a.x | global2.a.x), ~(~global2.a.x), 1i));
    let var_2 = vec3<i32>(min(_wgslsmith_dot_vec3_i32(global2.a.zzw, select(global2.a.yww, min(global2.a.zxw, global2.a.ywy), !vec3<bool>(false, var_1.x, false))), _wgslsmith_clamp_i32(global2.a.x, ~max(0i, u_input.c.x), reverseBits(u_input.d.x | global2.a.x))), 0i, u_input.a.x << (func_3(abs(global2.a.x) ^ reverseBits(global2.a.x), select(global2.a.wxx & vec3<i32>(-1i, 55768i, global2.a.x), global2.a.wyw | global2.a.zyy, select(vec3<bool>(var_0.x, var_1.x, true), vec3<bool>(var_0.x, global3.a, true), global3.a)), false, Struct_3(0i, global0[_wgslsmith_index_u32(u_input.e.x, 13u)], vec3<f32>(-366f, 786f, 161f))) % 32u));
    return Struct_1(!(45835i < _wgslsmith_div_i32(-var_2.x, firstTrailingBit(u_input.c.x))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = abs(_wgslsmith_mod_vec2_i32(u_input.d, vec2<i32>(-1i) * -u_input.c));
    var_0 = u_input.a;
    global3 = func_2();
    global2 = Struct_4(global2.a);
    return Struct_3(var_0.x, Struct_2(-_wgslsmith_mult_i32(arg_0, global2.a.x) >> (~(~u_input.e.x) % 32u), countOneBits(_wgslsmith_clamp_vec2_i32(-global2.a.zx, vec2<i32>(15465i, global2.a.x), vec2<i32>(var_0.x, 2147483647i)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-987f, 904f, 460f), vec3<f32>(-714f, 328f, 1197f)))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2831f, -1517f, -1140f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1208f, -665f, 1247f) - vec3<f32>(-2166f, 324f, 168f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-829f, 1000f, 720f), vec3<f32>(-697f, -1178f, 771f), false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2.a.x);
    global3 = func_2();
    let var_1 = ~_wgslsmith_mult_u32(_wgslsmith_div_u32(abs(u_input.e.x) ^ 19036u, 4294967295u), ~31473u);
    global0 = array<Struct_2, 13>();
    var var_2 = Struct_4(-global2.a);
    let var_3 = Struct_1(!func_4(Struct_2(u_input.c.x, u_input.a)).x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(countOneBits(global2.a.x), ~(-53638i), global2.a.x), vec3<i32>(-2147483647i, -global2.a.x, _wgslsmith_clamp_i32(~u_input.d.x, -u_input.c.x, 10603i)) & vec3<i32>(_wgslsmith_div_i32(u_input.c.x, global2.a.x) | u_input.d.x, var_2.a.x, 31889i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.c.x, var_0.c.x)), 541f), ~(~countOneBits(u_input.e & vec2<u32>(49428u, 0u))));
}

