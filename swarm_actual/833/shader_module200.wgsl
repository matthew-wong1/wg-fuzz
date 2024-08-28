struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)));

var<private> global1: array<Struct_2, 15>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> bool {
    let var_0 = arg_1.b;
    return true;
}

fn func_3(arg_0: u32, arg_1: bool) -> vec3<bool> {
    let var_0 = Struct_2(92581i, Struct_1(!select(!vec2<bool>(arg_1, arg_1), vec2<bool>(false, true), vec2<bool>(false, false))));
    let var_1 = vec4<bool>(all(select(!(!vec4<bool>(var_0.b.a.x, true, true, var_0.b.a.x)), vec4<bool>(true && var_0.b.a.x, arg_1 == arg_1, true, var_0.b.a.x), vec4<bool>(!var_0.b.a.x, true, true, true))), false, any(vec3<bool>(all(!vec4<bool>(true, arg_1, arg_1, true)), !(4294967295u >= arg_0), any(vec3<bool>(false, var_0.b.a.x, var_0.b.a.x)))), arg_1);
    var var_2 = !select(!var_1.xy, var_1.zx, select(select(var_0.b.a, var_1.xw, var_0.b.a), !select(var_1.wz, vec2<bool>(var_1.x, false), var_0.b.a), var_1.x));
    global0 = array<Struct_1, 5>();
    var var_3 = var_1.wyw;
    return select(var_1.xzx, vec3<bool>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -358f) < _wgslsmith_f_op_f32(-267f * _wgslsmith_f_op_f32(round(-1171f))), true), true);
}

fn func_1(arg_0: Struct_1) -> f32 {
    global1 = array<Struct_2, 15>();
    global0 = array<Struct_1, 5>();
    let var_0 = all(select(vec3<bool>(16479i == _wgslsmith_dot_vec3_i32(vec3<i32>(-43830i, 1i, u_input.a), vec3<i32>(u_input.a, 69802i, 14606i)), false, select(arg_0.a.x, !arg_0.a.x, false & arg_0.a.x)), select(vec3<bool>(all(vec3<bool>(arg_0.a.x, true, arg_0.a.x)), arg_0.a.x, true), vec3<bool>(true, true, func_2(vec4<bool>(true, true, arg_0.a.x, false), global1[_wgslsmith_index_u32(0u, 15u)])), true), !select(select(vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(false, true, true), true), func_3(20833u, false), select(arg_0.a.x, true, false))));
    global1 = array<Struct_2, 15>();
    var var_1 = vec2<u32>(2707u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(26507u, 54064u)) << (4294967295u % 32u), 1u, ~(_wgslsmith_div_u32(27115u, 1u) << (firstTrailingBit(0u) % 32u))));
    return _wgslsmith_f_op_f32(-1f);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = abs(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(25401u, 1u, 1u, max(0u, 1u)), select(vec4<bool>(true, true, func_2(vec4<bool>(arg_2, arg_2, true, false), Struct_2(u_input.a, Struct_1(vec2<bool>(false, true)))), false), !(!vec4<bool>(arg_2, arg_1, arg_1, arg_2)), vec4<bool>(arg_1, true, arg_1 || false, any(vec3<bool>(arg_1, arg_2, arg_1))))));
    global0 = array<Struct_1, 5>();
    let var_1 = var_0.wzz;
    global1 = array<Struct_2, 15>();
    global1 = array<Struct_2, 15>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(0u | (_wgslsmith_div_u32(func_4(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(4294967295u, 5u)])), true, true, global0[_wgslsmith_index_u32(1u, 5u)]), 31440u) >> (max(~1u >> (firstTrailingBit(0u) % 32u), ~_wgslsmith_mult_u32(1u, 1u)) % 32u)), 5u)];
    let var_1 = global0[_wgslsmith_index_u32(18473u, 5u)];
    var var_2 = -vec2<i32>(_wgslsmith_div_i32(~min(50936i, u_input.a), u_input.a), u_input.a);
    var var_3 = var_2.x != _wgslsmith_dot_vec3_i32(-countOneBits(vec3<i32>(var_2.x, 26559i, u_input.a)), countOneBits(max(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, var_2.x, u_input.a), vec3<i32>(u_input.a, 0i, 1i)), vec3<i32>(1i, u_input.a, -10526i))));
    var var_4 = Struct_1(!(!(!func_3(1u, var_0.a.x).xz)));
    global0 = array<Struct_1, 5>();
    var_4 = global0[_wgslsmith_index_u32(29315u, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(firstTrailingBit(select(~vec2<u32>(4294967295u, 1u), ~vec2<u32>(1u, 1323u), !var_4.a)), vec2<u32>(4294967295u, abs(50212u))), _wgslsmith_div_i32(u_input.a, u_input.a), 77736u);
}

