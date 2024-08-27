struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
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

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_2, 8>;

var<private> global2: array<u32, 1>;

var<private> global3: array<f32, 21>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    global3 = array<f32, 21>();
    let var_0 = false;
    let var_1 = reverseBits(abs(vec2<u32>(43150u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)]) | _wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 55867u), u_input.b)) | (u_input.b | u_input.b));
    let var_2 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 0i, -1i), vec4<i32>(u_input.a, -arg_0.x, ~arg_0.x, -24400i)) >> (vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_div_u32(53568u, global2[_wgslsmith_index_u32(var_1.x, 1u)]), 1u), 1u ^ select(26317u, global2[_wgslsmith_index_u32(~u_input.b.x, 1u)], !var_0), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, u_input.b.x, 28860u), vec3<u32>(0u, var_1.x, 1u)), 18782u), 30751u), 1u)], _wgslsmith_dot_vec4_u32(vec4<u32>(15604u, u_input.b.x, u_input.b.x, ~var_1.x), reverseBits(vec4<u32>(5772u, u_input.b.x, var_1.x, global2[_wgslsmith_index_u32(u_input.b.x, 1u)])) >> (abs(vec4<u32>(1u, 44612u, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_3 = _wgslsmith_div_f32(-1198f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1611f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 15327u, 1u), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 4294967295u)), 21u)] + global3[_wgslsmith_index_u32(min(0u, 5963u), 21u)]))));
    return ~(~_wgslsmith_mult_u32(4294967295u, firstTrailingBit(19310u)) ^ (46126u << (max(min(var_1.x, 0u), firstLeadingBit(63506u)) % 32u)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = vec4<u32>(~func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, 1i, -94778i), vec4<i32>(-19500i, -44982i, u_input.a, 41133i))), 18691u, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(func_3(vec4<i32>(1i, 13303i, 2147483647i, u_input.a) & vec4<i32>(14886i, u_input.a, u_input.a, u_input.a)), 1u)] << (reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(0u, 1u)], 15753u, 5283u), vec3<u32>(u_input.b.x, 0u, u_input.b.x))) % 32u), 1u)], _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(39851u, 38468u, 49446u, 1u), vec4<u32>(0u, u_input.b.x, global2[_wgslsmith_index_u32(67150u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)])), vec4<u32>(0u, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], u_input.b.x, 0u) & vec4<u32>(0u, u_input.b.x, u_input.b.x, 1u)), global2[_wgslsmith_index_u32(~u_input.b.x, 1u)])), 1u)], _wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), vec2<u32>(~global2[_wgslsmith_index_u32(0u, 1u)], 0u))));
    let var_1 = _wgslsmith_div_i32(firstTrailingBit(-min(u_input.a, abs(2147483647i))), u_input.a);
    global1 = array<Struct_2, 8>();
    var var_2 = select(!(!vec3<bool>(false, true, all(vec4<bool>(false, true, true, true)))), vec3<bool>(!(!all(vec2<bool>(true, false))), true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(all(vec3<bool>(true, false, true)), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(var_0.x, 21u)])) <= _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(0u, 21u)], -358f))), false));
    var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 4294967295u), ~vec4<u32>(1u, u_input.b.x, 1u, 4294967295u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 1u, global2[_wgslsmith_index_u32(12072u, 1u)], 4294967295u) ^ vec4<u32>(0u, u_input.b.x, 12467u, u_input.b.x), ~vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 4294967295u, var_0.x)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u, var_0.x, 10789u)), firstLeadingBit(min(vec4<u32>(u_input.b.x, 4294967295u, var_0.x, var_0.x), vec4<u32>(u_input.b.x, 1u, 1u, 4294967295u))))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, ~20711u, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 0u), 1u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)]), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(var_0.x, 1u)], 1u, 1u, 4294967295u) << (vec4<u32>(12576u, u_input.b.x, u_input.b.x, global2[_wgslsmith_index_u32(var_0.x, 1u)]) % vec4<u32>(32u)), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 1u)], 1u)], var_0.x, 4294967295u, 39617u))));
    return Struct_3(var_2.x, countOneBits(select(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 4294967295u, 0u), vec4<u32>(11238u, global2[_wgslsmith_index_u32(var_0.x, 1u)], 53287u, 58235u)), vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(18036u, 1u)], var_0.x, ~1u), true)), !vec3<bool>(all(vec3<bool>(true, true, true)), all(!vec4<bool>(true, var_2.x, var_2.x, false)), !all(var_2.xz)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = select(~(vec3<i32>(-1i) * -vec3<i32>(1199i, u_input.a, u_input.a)), max(~(~vec3<i32>(2147483647i, u_input.a, u_input.a)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 25225i, 2147483647i)), vec3<i32>(-12021i, 14318i, -33948i), arg_0.c)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(57469u, arg_0.b.x), abs(0u)) != _wgslsmith_clamp_u32(arg_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(27740u, 77544u, arg_2.c), vec3<u32>(0u, u_input.b.x, global2[_wgslsmith_index_u32(73472u, 1u)])), 65218u)) & -vec3<i32>(5544i, abs(~u_input.a), u_input.a);
    var var_1 = u_input.b.x;
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 21u)] * global0.x) - _wgslsmith_div_f32(arg_2.e.x, 419f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(532f, _wgslsmith_f_op_f32(global0.x - arg_2.e.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.e.xx * vec2<f32>(2160f, global0.x))))), ~32604u, global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(u_input.b.x, ~106225u, 1u) << (~min(global2[_wgslsmith_index_u32(25426u, 1u)], 41050u) % 32u)), 8u)]);
    global1 = array<Struct_2, 8>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.b.x, 21u)])))))));
    return 50158u;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) * global3[_wgslsmith_index_u32(func_4(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 501f))), any(vec4<bool>(true, true, true, true)), Struct_1(vec3<u32>(20388u, 568u, u_input.b.x) >> (vec3<u32>(4294967295u, 21730u, u_input.b.x) % vec3<u32>(32u)), vec2<bool>(false, false), func_2(vec2<f32>(global3[_wgslsmith_index_u32(52939u, 21u)], global0.x)).b.x, ~vec2<u32>(4294967295u, 13684u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-338f, global0.x, 728f, -261f))))), 21u)])));
    let var_1 = -1037f;
    let var_2 = -68730i;
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))), vec2<f32>(_wgslsmith_f_op_f32(-418f - 308f), -852f)));
    var var_3 = Struct_4(vec2<f32>(673f, 1032f), firstTrailingBit(_wgslsmith_mult_u32(~3023u >> (global2[_wgslsmith_index_u32(0u, 1u)] % 32u), firstLeadingBit(abs(1u)))), Struct_2(!select(vec2<bool>(true, false), func_2(vec2<f32>(-644f, global3[_wgslsmith_index_u32(arg_0, 21u)])).c.xy, any(vec3<bool>(false, false, false))), min(i32(-1i) * -20278i, _wgslsmith_mod_i32(u_input.a, 31281i)) & (-19847i >> (firstLeadingBit(arg_0) % 32u))));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], 78390u, u_input.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u), vec4<u32>(1u, global2[_wgslsmith_index_u32(1u, 1u)], 40943u, global2[_wgslsmith_index_u32(0u, 1u)]))), ~vec4<u32>(global2[_wgslsmith_index_u32(93606u, 1u)], u_input.b.x, 44488u, 1u) ^ vec4<u32>(u_input.b.x, 39498u, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 4793u))));
    let var_1 = firstTrailingBit(~vec3<u32>(44119u | global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(0u, 1u)], u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 1u)]), vec4<u32>(64801u, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 4294967295u, u_input.b.x)), 1u)], ~0u, _wgslsmith_mod_u32(~1u, reverseBits(96335u))));
    var var_2 = select(firstLeadingBit(max(~vec4<u32>(u_input.b.x, 1u, var_1.x, 0u), select(vec4<u32>(u_input.b.x, 63725u, 84636u, 86332u), vec4<u32>(u_input.b.x, 17312u, u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41237u, 1u)], 1u)]), false))), ~(~select(vec4<u32>(var_1.x, 79215u, 6025u, u_input.b.x), ~vec4<u32>(0u, 12993u, 45367u, 28168u), select(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x)))), vec4<bool>(true, func_1(_wgslsmith_div_u32(1u, ~18690u)).a.x, var_0.a.x, 1u < ~(~global2[_wgslsmith_index_u32(373u, 1u)])));
    global0 = vec2<f32>(_wgslsmith_div_f32(-162f, _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(4294967295u, 21u)]))), -2002f);
    var var_3 = 56068u;
    var var_4 = global2[_wgslsmith_index_u32(~(_wgslsmith_add_u32(var_1.x, (var_2.x >> (var_2.x % 32u)) & 0u) >> (var_1.x % 32u)), 1u)];
    var_4 = _wgslsmith_sub_u32(~var_1.x, ~(~var_1.x)) << (~(~7079u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(29978u & ~var_2.x, 1u)));
}

