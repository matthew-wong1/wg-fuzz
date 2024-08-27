struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i);

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(i32(-2147483648)), Struct_1(-11537i), Struct_1(-24993i), Struct_1(i32(-2147483648)), Struct_1(-33618i), Struct_1(-40225i), Struct_1(6555i), Struct_1(-27100i), Struct_1(56385i));

var<private> global2: u32 = 15165u;

var<private> global3: array<u32, 7>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(~arg_0.x, 9u)];
    return u_input.c.x;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(27258u, 21930u), 9u)];
    let var_0 = -(vec4<i32>(-1i, -1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.b.x), vec3<i32>(-1i, global0.a, arg_0.a)), select(~31867i, ~arg_0.a, true)) >> (u_input.c % vec4<u32>(32u)));
    var var_1 = arg_2.yz;
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_2.x, ~20430u), countOneBits(_wgslsmith_dot_vec3_u32(arg_2 >> (vec3<u32>(16771u, var_1.x, 1u) % vec3<u32>(32u)), ~arg_2))) ^ ~_wgslsmith_mod_u32(abs(4294967295u), arg_2.x), 9u)];
    let var_2 = Struct_1(~_wgslsmith_sub_i32(25567i, max(abs(arg_0.a), 1i)));
    return 16410u;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(reverseBits(global3[_wgslsmith_index_u32(4294967295u, 7u)]), u_input.c.x), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(14144u, func_2(u_input.c.xwx, global1[_wgslsmith_index_u32(4294967295u, 9u)], arg_3.x)), 7u)]), 33834u), vec3<u32>(~(~u_input.c.x), arg_2.x, 4294967295u)), 9u)];
    var var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    global2 = _wgslsmith_add_u32(firstTrailingBit(func_3(global1[_wgslsmith_index_u32(firstTrailingBit(~1u), 9u)], ~1i, vec3<u32>(~u_input.c.x, ~arg_0, ~34096u), arg_1.x)), ~(~(~1u)));
    global3 = array<u32, 7>();
    let var_2 = arg_3.x;
    return global1[_wgslsmith_index_u32(arg_2.x, 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(139f, -1000f, 1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-485f, _wgslsmith_f_op_f32(f32(-1f) * -1692f), _wgslsmith_f_op_f32(-1633f + 1708f)))) * vec3<f32>(710f, _wgslsmith_f_op_f32(round(-109f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-505f, -201f), -111f, false)))));
    global0 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(58873u, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c.x << (1u % 32u), ~global3[_wgslsmith_index_u32(u_input.c.x, 7u)]), 11229u), 7u)]), 9u)];
    var var_1 = func_1(global3[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, global3[_wgslsmith_index_u32(u_input.c.x, 7u)]), ~global3[_wgslsmith_index_u32(u_input.c.x, 7u)]), 33035u << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(5129u, global3[_wgslsmith_index_u32(41554u, 7u)]), vec2<u32>(global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(49737u, 7u)])), 7u)], 7u)] % 32u))), 7u)], _wgslsmith_f_op_vec2_f32(var_0.zx - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.xy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x))))))), vec2<u32>(~(~(4294967295u << (global3[_wgslsmith_index_u32(u_input.c.x, 7u)] % 32u))), ~(~global3[_wgslsmith_index_u32(~4294967295u, 7u)])), vec3<bool>(var_0.x > _wgslsmith_div_f32(-116f, _wgslsmith_div_f32(-1501f, -1115f)), u_input.a.x != ~41277i, !(_wgslsmith_f_op_f32(-var_0.x) == var_0.x)));
    global3 = array<u32, 7>();
    var var_2 = (((35374u | ~global3[_wgslsmith_index_u32(2526u, 7u)]) >> (u_input.c.x % 32u)) | abs(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) << ((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 7u)], 7u)] >> (17327u % 32u)) % 32u))) ^ global3[_wgslsmith_index_u32(~(~(~reverseBits(u_input.c.x))), 7u)];
    let var_3 = Struct_1(max(_wgslsmith_div_i32(-2147483647i, var_1.a | 4110i) | _wgslsmith_sub_i32(global0.a, var_1.a), firstTrailingBit(u_input.b.x)));
    let var_4 = u_input.a;
    let var_5 = func_1(_wgslsmith_mult_u32(1u, func_3(var_3, ~1i, ~vec3<u32>(22189u, 0u, 4294967295u), var_0.x)) ^ 23821u, var_0.yx, ~u_input.c.yz, select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, false), vec3<bool>(-1593f > var_0.x, any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true & (1i >= var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(68013u, 0u, 1u, 0u), u_input.c), reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(16821u, 7u)], 50121u, 30049u, 0u))) | (~global3[_wgslsmith_index_u32(1u, 7u)] ^ _wgslsmith_div_u32(global3[_wgslsmith_index_u32(u_input.c.x, 7u)], global3[_wgslsmith_index_u32(6790u, 7u)]))), 7u)], max(~(~4294967295u), _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, ~u_input.c.x), ~70461u)));
}

