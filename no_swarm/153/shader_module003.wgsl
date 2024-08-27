struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: Struct_1;

var<private> global2: array<bool, 30>;

var<private> global3: array<i32, 20>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    global2 = array<bool, 30>();
    let var_0 = u_input.b;
    global1 = arg_2.a;
    var var_1 = arg_3.a;
    global0 = select(select(vec3<bool>(false, true, false), vec3<bool>(!arg_0, true, arg_3.a.b), arg_0), !(!vec3<bool>(var_1.b && true, global1.b, global0.x)), false == arg_0);
    return ~29487u;
}

fn func_2() -> vec3<u32> {
    global3 = array<i32, 20>();
    let var_0 = ~_wgslsmith_dot_vec4_i32(u_input.b, u_input.b | u_input.b);
    let var_1 = Struct_2(Struct_1(global1.e.x >> (reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.e.x, 79295u, 1u), vec3<u32>(global1.e.x, 42093u, global1.e.x))) % 32u), global0.x, vec2<i32>(_wgslsmith_add_i32(-1i, u_input.a), abs(_wgslsmith_dot_vec3_i32(u_input.b.wzx, u_input.b.xxw))), firstTrailingBit(2147483647i), vec4<u32>(global1.e.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global1.e.xz, vec2<u32>(63290u, global1.a)), 14658u), global1.e.x, global1.a)));
    var var_2 = vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(global0.x, Struct_2(var_1.a), var_1, var_1), ~_wgslsmith_dot_vec3_u32(~global1.e.xxy, ~var_1.a.e.wyz)), 30u)], true, !global0.x);
    global0 = select(!vec3<bool>(true, var_2.x & true, var_1.a.b), vec3<bool>(true, false, true), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, var_2.x, false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(9342u, var_1.a.a)), 30u)]), select(select(!vec3<bool>(false, global0.x, var_2.x), select(vec3<bool>(var_2.x, true, false), vec3<bool>(false, var_2.x, false), global1.b), select(vec3<bool>(global2[_wgslsmith_index_u32(global1.e.x, 30u)], var_1.a.b, global0.x), vec3<bool>(true, var_1.a.b, var_1.a.b), vec3<bool>(true, false, false))), select(vec3<bool>(true, true, true), !vec3<bool>(var_2.x, false, var_1.a.b), true), !(!vec3<bool>(false, var_1.a.b, global1.b))), all(vec2<bool>(false, var_2.x))));
    return max(vec3<u32>(global1.a, ~var_1.a.a, countOneBits(1u)), ~global1.e.xxz);
}

fn func_1(arg_0: bool, arg_1: f32) -> u32 {
    let var_0 = global1.e.yzz | ~(~select(func_2(), ~global1.e.zyy, global3[_wgslsmith_index_u32(25284u, 20u)] < 23140i));
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global1.a, 0u)), vec2<u32>(global1.e.x, var_0.x)), false, -_wgslsmith_sub_vec2_i32(global1.c, _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global1.d), u_input.b.xy)), ~firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(var_0.x, 20u)], u_input.c), u_input.b.wx)), global1.e));
    global1 = Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_1) * -1065f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_1)), -750f))), vec2<i32>(-global1.d, _wgslsmith_sub_i32(_wgslsmith_mult_i32(global1.d << (4294967295u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), var_1.a.c)), -var_1.a.c.x)), _wgslsmith_dot_vec4_i32(~vec4<i32>(~(-23944i), max(40600i, 1i), global3[_wgslsmith_index_u32(var_0.x, 20u)], ~(-22844i)), ~((vec4<i32>(321i, 0i, 30765i, u_input.c) ^ u_input.b) << (_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.a, global1.e.x, var_0.x, global1.a), vec4<u32>(1u, 0u, 0u, 4294967295u)) % vec4<u32>(32u)))), _wgslsmith_div_vec4_u32(global1.e, vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(var_0, var_1.a.e.yww), 4294967295u, func_3(global2[_wgslsmith_index_u32(1u, 30u)], var_1, var_1, Struct_2(Struct_1(0u, false, global1.c, 47424i, vec4<u32>(var_0.x, 4294967295u, global1.e.x, global1.e.x)))))) & select(select(_wgslsmith_clamp_vec4_u32(global1.e, vec4<u32>(31765u, var_0.x, global1.a, var_1.a.e.x), vec4<u32>(0u, global1.a, 8879u, 0u)), ~var_1.a.e, true), ~reverseBits(vec4<u32>(0u, global1.e.x, 22240u, 1u)), true));
    global2 = array<bool, 30>();
    global2 = array<bool, 30>();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(any(vec3<bool>(true, global0.x, global0.x)), any(vec4<bool>(true, global2[_wgslsmith_index_u32(abs(4294967295u), 30u)], true, true)) || (!global1.b || (_wgslsmith_add_u32(global1.a, global1.e.x) < ~71610u)), global2[_wgslsmith_index_u32(min(func_1((global1.a > 1925u) & any(vec4<bool>(false, false, true, global0.x)), 422f), reverseBits(max(~47197u, ~124029u))), 30u)]);
    global0 = !(!vec3<bool>(!all(vec4<bool>(global0.x, true, global2[_wgslsmith_index_u32(37499u, 30u)], false)), false, false));
    let var_0 = firstTrailingBit(select(~(-vec2<i32>(-1253i, global1.c.x)), ~(~vec2<i32>(-8324i, global1.d)), global0.yx)) & vec2<i32>(-(~(i32(-1i) * -1222i)), 0i);
    var var_1 = Struct_1(abs(global1.a), false, _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, ~u_input.b.x), vec2<i32>(~var_0.x, _wgslsmith_clamp_i32(u_input.a, 69356i, global3[_wgslsmith_index_u32(0u, 20u)]))) | ~(~(~global1.c)), 2147483647i, _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(global1.e), vec4<u32>(4294967295u, 0u, 0u, global1.e.x)), vec4<u32>(global1.a | 44467u, ~global1.e.x, max(36756u, 28471u), global1.a ^ 0u)), global1.e, global1.e));
    global2 = array<bool, 30>();
    var var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yyw, global1.e.x);
}

