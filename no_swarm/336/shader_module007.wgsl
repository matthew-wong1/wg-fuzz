struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32;

var<private> global2: array<bool, 12> = array<bool, 12>(true, false, true, true, false, true, true, true, false, false, false, true);

var<private> global3: array<u32, 10> = array<u32, 10>(4294967295u, 5906u, 4294967295u, 0u, 0u, 13235u, 1u, 26185u, 65994u, 5910u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = vec3<i32>(-2147483647i, arg_0.b.x, -52802i) & -vec3<i32>(firstLeadingBit(-arg_0.b.x), 0i, arg_0.b.x);
    global2 = array<bool, 12>();
    global1 = -1i;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a)), _wgslsmith_f_op_f32(-arg_0.a), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - -1858f) * _wgslsmith_f_op_f32(min(global0.c, 712f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1172f), global0.c))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(505f, global0.c));
    return select(vec4<bool>(true, 1000f == var_2.x, select(all(!vec4<bool>(false, global0.d, global0.d, global0.d)), true, false), !any(!vec3<bool>(global0.d, global0.b.b.x, global2[_wgslsmith_index_u32(global0.b.a, 12u)]))), !select(!select(vec4<bool>(global0.d, global0.d, true, global2[_wgslsmith_index_u32(arg_0.c.x, 12u)]), vec4<bool>(true, global0.b.b.x, false, false), global2[_wgslsmith_index_u32(156u, 12u)]), vec4<bool>(global0.d, true, all(vec4<bool>(false, global0.d, true, global0.d)), global2[_wgslsmith_index_u32(~4294967295u, 12u)]), global0.d), vec4<bool>(true, global0.b.b.x, true, global2[_wgslsmith_index_u32(~(~arg_0.c.x), 12u)]));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = select(arg_2, func_3(Struct_4(_wgslsmith_f_op_f32(abs(global0.c)), vec4<i32>(arg_0.x, firstLeadingBit(-2147483647i), 1i, arg_1.a), _wgslsmith_add_vec3_u32(arg_1.b.a & arg_1.b.e, vec3<u32>(52865u, global0.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.e.x, 10u)], 10u)])))), any(!vec4<bool>(!arg_1.b.b.b.x, all(arg_2.zyx), false, !arg_2.x)));
    let var_1 = arg_1;
    var var_2 = arg_1.b.b;
    var var_3 = 30821i < var_1.a;
    let var_4 = Struct_3((_wgslsmith_f_op_f32(ceil(1127f)) > 304f) & arg_1.b.b.b.x, arg_0);
    return vec2<bool>(false, false);
}

fn func_4(arg_0: vec2<bool>) -> u32 {
    var var_0 = arg_0;
    var var_1 = 1078u;
    var var_2 = firstLeadingBit(global0.e.yy);
    global3 = array<u32, 10>();
    let var_3 = any(vec4<bool>(true, any(vec2<bool>(global2[_wgslsmith_index_u32(max(global3[_wgslsmith_index_u32(global0.b.a, 10u)], global3[_wgslsmith_index_u32(global0.e.x, 10u)]), 12u)], true)), true, func_2(min(vec2<i32>(-17945i, u_input.b) >> (vec2<u32>(0u, var_2.x) % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.b) << (vec2<u32>(1u, global0.e.x) % vec2<u32>(32u))), Struct_5(abs(-14385i), Struct_2(global0.e, Struct_1(global0.b.a, vec2<bool>(global2[_wgslsmith_index_u32(609u, 12u)], var_0.x)), 1756f, global0.d, global0.a)), vec4<bool>(true, any(vec4<bool>(global0.b.b.x, false, var_0.x, true)), global3[_wgslsmith_index_u32(1u, 10u)] != 26827u, global2[_wgslsmith_index_u32(18770u, 12u)])).x));
    return ~min(global0.a.x, ~1u);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> Struct_4 {
    let var_0 = vec3<u32>(~(~(~_wgslsmith_sub_u32(19571u, arg_2.e.x))), ~arg_2.b.a, select(reverseBits((arg_2.b.a << (70620u % 32u)) & global3[_wgslsmith_index_u32(4294967295u, 10u)]), ~40125u, true & global2[_wgslsmith_index_u32(func_4(func_2(vec2<i32>(arg_3, arg_3), Struct_5(arg_3, Struct_2(arg_2.a, global0.b, global0.c, global0.b.b.x, arg_2.e)), vec4<bool>(global0.d, false, true, false))), 12u)]));
    let var_1 = Struct_3(!any(select(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global0.d, global0.d, false), !vec4<bool>(global0.d, global0.d, true, global2[_wgslsmith_index_u32(global0.e.x, 12u)]), vec4<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 12u)], global0.d, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19349u, 10u)], 12u)], true))), vec2<i32>(~(~arg_0) & ~u_input.b, arg_0));
    global0 = Struct_2(vec3<u32>(global3[_wgslsmith_index_u32(arg_2.a.x, 10u)], ~global0.a.x, ~arg_2.e.x) & global0.a, Struct_1(33827u, vec2<bool>(!(!var_1.a), !global2[_wgslsmith_index_u32(global0.b.a, 12u)])), _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -843f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f))))), true, (vec3<u32>(47470u, ~86249u, max(global0.b.a, 27667u)) | global0.e) & ((var_0 >> (vec3<u32>(0u, 65544u, 0u) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.x, 32953u, global3[_wgslsmith_index_u32(2317u, 10u)]), vec3<u32>(global0.b.a, arg_2.b.a, 24920u) & var_0)));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(43670u, 10u)], var_0.x, 0u, 4294967295u)), vec4<u32>(~global3[_wgslsmith_index_u32(1u, 10u)], ~arg_2.b.a, 1u, countOneBits(4294967295u))), ~vec4<u32>(2783u, 4294967295u, global0.a.x, 18547u)), 14404u, ~countOneBits(var_0.x));
    let var_3 = arg_2.b;
    return Struct_4(1217f, _wgslsmith_div_vec4_i32(countOneBits(firstLeadingBit(vec4<i32>(u_input.b, -1i, 10845i, var_1.b.x) << (vec4<u32>(global3[_wgslsmith_index_u32(var_3.a, 10u)], 60203u, 0u, var_3.a) % vec4<u32>(32u)))), vec4<i32>(-u_input.a, _wgslsmith_mod_i32(arg_3, -1i), i32(-1i) * -2147483647i, min(-14743i, arg_0)) << ((min(vec4<u32>(75232u, var_3.a, 1u, 1u), vec4<u32>(16367u, 57641u, 1u, var_2.x)) | (vec4<u32>(global0.e.x, var_2.x, global0.b.a, arg_2.b.a) >> (vec4<u32>(4294967295u, var_2.x, 35656u, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u))), ~_wgslsmith_div_vec3_u32(firstTrailingBit(global0.e), vec3<u32>(var_3.a & 73648u, var_2.x, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)])));
}

fn func_5(arg_0: Struct_4) -> u32 {
    var var_0 = Struct_2(countOneBits(abs(vec3<u32>(_wgslsmith_add_u32(arg_0.c.x, global0.a.x), _wgslsmith_mult_u32(global0.e.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(43430u, 10u)], 10u)]), ~7722u))), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1734f * global0.c)), global0.b.b.x, vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 10u)], global0.e.x << (firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]) % 32u), ~arg_0.c.x));
    var var_1 = -9287i;
    global3 = array<u32, 10>();
    var var_2 = vec3<bool>(global2[_wgslsmith_index_u32(arg_0.c.x, 12u)], var_0.b.b.x, ~abs(-93852i) != _wgslsmith_div_i32(2147483647i, ~(~arg_0.b.x)));
    var var_3 = Struct_5(max(arg_0.b.x, arg_0.b.x) << (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, global3[_wgslsmith_index_u32(0u, 10u)]), ~vec4<u32>(25226u, 8575u, var_0.e.x, global0.e.x)), vec4<u32>(0u, 1u, ~global3[_wgslsmith_index_u32(11263u, 10u)], 4294967295u)) % 32u), Struct_2(global0.e, Struct_1(4294967295u, vec2<bool>(all(vec2<bool>(global0.b.b.x, true)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), global0.b.b.x, select(~(vec3<u32>(global3[_wgslsmith_index_u32(56601u, 10u)], 1u, 60448u) << (vec3<u32>(39044u, arg_0.c.x, global0.a.x) % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_u32(global0.e, vec3<u32>(51422u, var_0.e.x, var_0.e.x), var_0.a), !select(vec3<bool>(global0.d, true, false), vec3<bool>(false, var_0.d, var_2.x), var_2.x))));
    return func_4(vec2<bool>(any(vec3<bool>(var_2.x, global0.d, var_3.b.b.b.x)) & all(select(vec3<bool>(var_2.x, global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42690u, 10u)], 12u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(arg_0.c.x, 12u)], true), vec3<bool>(false, true, var_0.d))), global0.b.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(max(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(countOneBits(44798u), global0.e.x), ~_wgslsmith_mult_u32(global0.a.x, global3[_wgslsmith_index_u32(4294967295u, 10u)])), 10u)], ~4294967295u), ~func_5(func_1(-2147483647i, -1000f, Struct_2(global0.e, global0.b, global0.c, false, vec3<u32>(global3[_wgslsmith_index_u32(global0.b.a, 10u)], 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 10u)])), 8576i)) << (4294967295u % 32u));
    global3 = array<u32, 10>();
    let var_1 = global0.d;
    var var_2 = Struct_2(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], firstLeadingBit(~_wgslsmith_add_u32(14809u, 18983u)), 28108u), global0.b, global0.c, true, vec3<u32>(select(~min(13545u, global3[_wgslsmith_index_u32(1u, 10u)]), 1u, all(select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(11282u, 12u)]), vec3<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 10u)], 12u)], global0.d, global2[_wgslsmith_index_u32(var_0.x, 12u)]), global0.d))), ~select(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(48919u, 1u), 10u)], ~var_0.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.e.x, 72737u, 38512u), 12u)]), global3[_wgslsmith_index_u32(1u, 10u)]));
    var var_3 = var_2.c;
    let var_4 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.b) | min(u_input.b >> (~4294967295u % 32u), -2147483647i), reverseBits(~vec3<u32>(abs(0u), countOneBits(0u), var_4.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(548f + _wgslsmith_div_f32(1518f, 447f)))), vec3<u32>(~(~931u), _wgslsmith_sub_u32(select(4294967295u << (var_4.a % 32u), ~54994u, true), _wgslsmith_sub_u32(~1u, _wgslsmith_mult_u32(var_2.b.a, var_4.a))), 4294967295u));
}

