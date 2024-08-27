struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: array<Struct_5, 6>;

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(48252u, vec4<u32>(12507u, 62403u, 16360u, 37707u), 4439i, 1i), Struct_1(5783u, vec4<u32>(13909u, 29851u, 0u, 0u), 2147483647i, -61055i)), vec3<i32>(-22958i, -1i, -1i));

var<private> global3: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(0i, true), Struct_4(26490i, true), Struct_4(54817i, false), Struct_4(-16315i, false), Struct_4(-1115i, false), Struct_4(0i, true), Struct_4(1827i, false), Struct_4(2147483647i, false), Struct_4(20456i, true), Struct_4(-15392i, false), Struct_4(2147483647i, false), Struct_4(-27943i, true), Struct_4(25220i, false), Struct_4(-27582i, false), Struct_4(-24253i, true), Struct_4(61189i, true), Struct_4(4293i, false));

var<private> global4: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    var var_0 = global2.a;
    global1 = array<Struct_5, 6>();
    let var_1 = select(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, 4294967295u, 4294967295u, var_0.a.b.x)), var_0.a.b, var_0.a.b) ^ select(vec4<u32>(firstLeadingBit(u_input.b), 20653u, reverseBits(var_0.a.a), ~global2.a.a.a), abs(countOneBits(vec4<u32>(1u, 4294967295u, 0u, 0u))), global2.a.b.a >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 74877u), global2.a.b.b.xw)), ~(~_wgslsmith_mod_vec4_u32(abs(var_0.b.b), countOneBits(vec4<u32>(1u, 4294967295u, 28921u, 0u)))), global0[_wgslsmith_index_u32(0u, 15u)]);
    let var_2 = Struct_2(Struct_1(firstTrailingBit(4294967295u), reverseBits(abs(vec4<u32>(0u, var_0.b.a, global2.a.a.a, var_1.x) ^ vec4<u32>(4294967295u, 4294967295u, var_1.x, var_1.x))), global2.b.x, ~countOneBits(-22723i ^ var_0.b.c)), global2.a.b);
    let var_3 = global1[_wgslsmith_index_u32(~abs(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, var_1.x), global2.a.a.b.yyy), vec3<u32>(var_0.b.a, var_1.x, var_2.b.a) ^ vec3<u32>(global2.a.a.b.x, u_input.a, var_2.a.b.x))), 6u)];
    return 468f;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = ~global2.a.a.b;
    let var_2 = global4.x;
    let var_3 = global2.a.b.b.ww;
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-224f + 354f), _wgslsmith_f_op_f32(floor(-884f)))), _wgslsmith_div_f32(-1925f, 122f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-338f + -451f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1585f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(135f, -528f, -1709f, 743f) + vec4<f32>(-273f, 960f, -2869f, -609f)), vec4<f32>(1037f, 1108f, -1445f, 1000f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(1000f, -412f), _wgslsmith_f_op_f32(954f + -886f), _wgslsmith_f_op_f32(ceil(-1573f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-128f)), _wgslsmith_f_op_f32(floor(-1000f)), 1f, 1539f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(398f, 812f, 2104f, 516f))))));
    return false;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1590f, arg_0, _wgslsmith_f_op_f32(arg_0 - arg_0), arg_0), vec4<f32>(arg_0, arg_0, 982f, 1032f), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1132f, arg_0, arg_0, -617f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 573f, arg_0) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(709f, -154f, 384f, 482f))))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(2094f)), _wgslsmith_f_op_f32(f32(-1f) * -1132f), arg_0, _wgslsmith_f_op_f32(-144f * arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 428f, arg_0) * vec4<f32>(-462f, 235f, arg_0, 758f))))))));
    var var_1 = Struct_3(Struct_2(Struct_1(u_input.b, vec4<u32>(global2.a.a.b.x, global2.a.a.b.x, 1u, global2.a.b.b.x) >> (select(global2.a.a.b, global2.a.a.b, global4.x) % vec4<u32>(32u)), _wgslsmith_dot_vec2_i32(global2.b.xz, vec2<i32>(arg_2, arg_2)) ^ -global2.b.x, arg_2), global2.a.a), global2.b | vec3<i32>(_wgslsmith_dot_vec3_i32(-global2.b, global2.b), -_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.x, -2147483647i, 3581i, -51197i), vec4<i32>(global2.b.x, -2147483647i, global2.a.b.c, 14093i)), -(-68830i | global2.a.b.d)));
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-arg_0), 340f)))));
    var var_4 = _wgslsmith_add_i32(~(-2210i), (2147483647i >> (_wgslsmith_clamp_u32(select(global2.a.b.a, global2.a.a.a, true), ~29964u, u_input.b) % 32u)) & _wgslsmith_sub_i32(5285i, -arg_2));
    return Struct_2(var_1.a.a, var_1.a.a);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global4 = !vec4<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(65049u, 1u), 15u)], false, all(vec4<bool>(true, true, true, true)), true);
    return func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-431f, -1407f))))), func_2(), -31147i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 17>();
    let var_0 = select(global4.yy, global4.xy, global4.x);
    var var_1 = ~global2.a.b.d;
    global3 = array<Struct_4, 17>();
    global0 = array<bool, 15>();
    var var_2 = Struct_5(func_1(global2.a), true, global2.a.b, _wgslsmith_dot_vec4_i32(select(~vec4<i32>(global2.a.a.c, global2.a.b.c, global2.b.x, 1i) >> (global2.a.b.b % vec4<u32>(32u)), ~vec4<i32>(global2.b.x, 42168i, global2.b.x, global2.a.b.d), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 15u)], global4.x, var_0.x), select(vec4<bool>(true, global0[_wgslsmith_index_u32(23421u, 15u)], var_0.x, true), vec4<bool>(global0[_wgslsmith_index_u32(74638u, 15u)], global0[_wgslsmith_index_u32(global2.a.b.b.x, 15u)], global0[_wgslsmith_index_u32(57318u, 15u)], var_0.x), true), !global0[_wgslsmith_index_u32(4294967295u, 15u)])), vec4<i32>(_wgslsmith_div_i32(0i, global2.a.a.c) & global2.b.x, -1i, global2.b.x, _wgslsmith_mult_i32(0i, 0i))));
    global4 = select(vec4<bool>(true, true, !var_2.b, 0u != abs(var_2.a.b.b.x & var_2.c.a)), !(!select(select(vec4<bool>(var_2.b, true, false, var_0.x), vec4<bool>(global4.x, var_0.x, var_2.b, var_0.x), true), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(global2.a.a.b.x, 15u)], var_2.b), vec4<bool>(false, true, var_0.x, global0[_wgslsmith_index_u32(49036u, 15u)]), var_0.x), !vec4<bool>(true, false, var_2.b, global4.x))), !vec4<bool>(func_2(), !global4.x, all(!vec3<bool>(false, var_0.x, global0[_wgslsmith_index_u32(global2.a.a.b.x, 15u)])), global4.x));
    let var_3 = !(!select(global4.zxz, global4.wyy, !select(vec3<bool>(true, var_2.b, global0[_wgslsmith_index_u32(41573u, 15u)]), global4.xzz, vec3<bool>(var_0.x, true, global0[_wgslsmith_index_u32(global2.a.a.b.x, 15u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(global2.b.zx, global2.b.xz), vec2<i32>(global2.a.a.d, -8127i) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-121f + 873f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1275f))), _wgslsmith_f_op_f32(f32(-1f) * -112f)));
}

