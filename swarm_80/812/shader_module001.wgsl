struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: i32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
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

var<private> global0: array<Struct_3, 22>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<i32>(-40440i, -20278i, 2147483647i), 4294967295u), vec2<i32>(-1i, 39802i), 1u);

var<private> global3: vec2<f32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> bool {
    global1 = vec2<bool>(any(select(vec3<bool>(-580f >= global3.x, all(vec3<bool>(global1.x, false, global1.x)), global3.x != -1085f), !(!vec3<bool>(global1.x, false, global1.x)), select(!vec3<bool>(global1.x, false, global1.x), select(vec3<bool>(false, false, true), vec3<bool>(true, global1.x, true), vec3<bool>(false, global1.x, global1.x)), vec3<bool>(true, global1.x, global1.x)))), true);
    var var_0 = Struct_3(global2.a, global2.a, 419f, Struct_1(-_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 0i, 2147483647i), u_input.b.yzx), ~vec3<i32>(1i, 2147483647i, -2147483647i), _wgslsmith_mod_vec3_i32(u_input.b.yyw, vec3<i32>(-22351i, -23668i, global2.a.a.x))), 18514u << (min(global2.c, abs(global2.c)) % 32u)), global3.x);
    var var_1 = _wgslsmith_mult_u32(70590u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.d.b, u_input.a, u_input.a, 6062u), ~vec4<u32>(4294967295u, u_input.a, 70748u, u_input.a)), vec4<u32>(var_0.d.b, 15454u, abs(var_0.d.b), _wgslsmith_add_u32(1u, 1u)) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(42470u, global2.c, 1u, var_0.a.b), vec4<u32>(global2.a.b, 18620u, 7601u, u_input.a))));
    global0 = array<Struct_3, 22>();
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1369f - var_0.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e - -434f), 1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(-122f - global3.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1136f))))));
    return !(!((global1.x | !global1.x) | (false != global1.x)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> u32 {
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, arg_1)) - vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1000f) * vec2<f32>(arg_1, global3.x)))), arg_0)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(793f)), 1000f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 664f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2158f, 1389f)))));
    global1 = vec2<bool>(false, all(!(!vec4<bool>(arg_0, arg_0, arg_0, false))) || global1.x);
    var var_0 = any(select(vec3<bool>(arg_0, any(vec4<bool>(global1.x, true, arg_0, global1.x)), func_3()), !vec3<bool>(true, arg_0 || arg_0, !global1.x), select(vec3<bool>(!arg_0, !arg_0, arg_0), select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, arg_0, global1.x), vec3<bool>(arg_0, true, false)), !vec3<bool>(global1.x, arg_0, true), !vec3<bool>(true, arg_0, true)), vec3<bool>(true, arg_0, false))));
    var var_1 = !any(!vec4<bool>(true, false, select(false, true, false), global1.x));
    var var_2 = 1u;
    return 4294967295u;
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> bool {
    let var_0 = Struct_5(Struct_2(arg_0.b.b, u_input.b.xy, min(arg_0.b.b.b, ~(~global2.a.b))), Struct_4(~_wgslsmith_sub_u32(global2.a.b, ~global2.a.b), Struct_3(global2.a, arg_0.b.d, _wgslsmith_f_op_f32(max(arg_0.b.c, _wgslsmith_f_op_f32(arg_0.b.e * -1868f))), global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.c - -1080f))), arg_1, select(vec3<bool>(true, true, true), vec3<bool>(false || global1.x, all(vec2<bool>(false, arg_0.d.x)), arg_1 <= 2147483647i), global1.x)), u_input.a, arg_0.b.a);
    var var_1 = abs(select(firstLeadingBit(~(~vec4<u32>(28478u, arg_0.b.b.b, u_input.a, global2.a.b))), vec4<u32>(~1u, 4882u, reverseBits(arg_0.a), func_2(!arg_0.d.x, _wgslsmith_f_op_f32(max(779f, 1114f)), Struct_1(arg_0.b.b.a, 1u))), select(!select(vec4<bool>(false, false, arg_0.d.x, true), vec4<bool>(false, arg_0.d.x, true, arg_0.d.x), var_0.b.d.x), !vec4<bool>(true, true, global1.x, global1.x), !vec4<bool>(global1.x, true, global1.x, arg_0.d.x))));
    return ~var_1.x > _wgslsmith_sub_u32(~firstTrailingBit(select(var_0.c, 4810u, false)), 1u);
}

fn func_1() -> u32 {
    global3 = vec2<f32>(_wgslsmith_f_op_f32(1855f + global3.x), global3.x);
    global0 = array<Struct_3, 22>();
    global1 = vec2<bool>(false, true);
    var var_0 = _wgslsmith_clamp_u32(select(global2.c, u_input.a, any(vec3<bool>(true, global1.x, false))), global2.c, _wgslsmith_mult_u32((u_input.a | global2.a.b) | ~global2.a.b, 1u)) >= 5114u;
    var var_1 = !(true || func_4(Struct_4(func_2(global1.x, global3.x, Struct_1(vec3<i32>(global2.a.a.x, 1i, u_input.b.x), u_input.a)), global0[_wgslsmith_index_u32(1u | global2.c, 22u)], firstLeadingBit(35164i), !vec3<bool>(false, false, global1.x)), ~select(5218i, global2.a.a.x, false)));
    return max(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(32220u, global2.c, u_input.a), vec3<u32>(31366u, global2.c, u_input.a)), abs(vec3<u32>(u_input.a, 0u, global2.a.b)) << (abs(vec3<u32>(11977u, global2.a.b, 1u)) % vec3<u32>(32u))), abs(~(~1u))), global2.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(countOneBits(~global2.a.b) & 4294967295u, ~firstLeadingBit(func_1()), _wgslsmith_clamp_u32(0u, 24699u, 61972u) >> ((firstTrailingBit(firstTrailingBit(1u)) & u_input.a) % 32u), 10318u);
    global0 = array<Struct_3, 22>();
    let var_1 = u_input.b.x;
    global1 = select(select(vec2<bool>((global3.x >= -832f) | !global1.x, all(select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global1.x, false, global1.x, global1.x), false))), select(!vec2<bool>(global1.x, true), !vec2<bool>(true, global1.x), global1.x), vec2<bool>(global1.x, ~(-1i) > (1i >> (u_input.a % 32u)))), !select(!(!vec2<bool>(global1.x, global1.x)), select(vec2<bool>(global1.x, true), select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, true), false), select(vec2<bool>(global1.x, true), vec2<bool>(true, false), vec2<bool>(global1.x, true))), true), !select(select(vec2<bool>(true, true), !vec2<bool>(global1.x, true), select(vec2<bool>(true, global1.x), vec2<bool>(true, global1.x), vec2<bool>(global1.x, true))), vec2<bool>(false, false), vec2<bool>(true, true)));
    global1 = !vec2<bool>(true, all(vec2<bool>(func_3(), !global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~abs(vec2<i32>(global2.a.a.x, 1i))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, global2.a.b, 3198u, 15088u), _wgslsmith_mod_vec4_u32(var_0, var_0), vec4<u32>(global2.c, 12028u, u_input.a, var_0.x)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(0u, 4294967295u, 34847u, 4294967295u)), vec4<u32>(global2.a.b, global2.a.b, u_input.a, global2.a.b)), ~_wgslsmith_div_vec4_u32(vec4<u32>(global2.a.b, var_0.x, u_input.a, global2.a.b), vec4<u32>(var_0.x, 0u, var_0.x, var_0.x))));
}

