struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
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

var<private> global0: bool;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<u32, 9>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(max(-vec3<i32>(abs(u_input.b), u_input.b, -u_input.a.x), select(-vec3<i32>(u_input.a.x, 1i, u_input.b) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 31094u, u_input.c.x), vec3<u32>(u_input.c.x, 4294967295u, global2[_wgslsmith_index_u32(u_input.c.x, 9u)])) % vec3<u32>(32u)), max(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 24136i, 38314i), u_input.a)), select(vec3<bool>(global1.x, true, global1.x), !vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, false, true)))), false);
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~(global2[_wgslsmith_index_u32(u_input.c.x, 9u)] ^ 59198u), firstLeadingBit(u_input.c.x)), ~vec2<u32>(select(_wgslsmith_add_u32(95709u, 0u), 17204u | global2[_wgslsmith_index_u32(89689u, 9u)], true), abs(_wgslsmith_mult_u32(u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)])))), 9u)];
}

fn func_2() -> Struct_2 {
    var var_0 = false;
    let var_1 = Struct_1(max(u_input.a, vec3<i32>(abs(u_input.b), _wgslsmith_div_i32(u_input.b, select(36378i, u_input.a.x, true)), u_input.b)), all(vec3<bool>(true, false, global1.x)));
    let var_2 = 0i;
    let var_3 = -15249i;
    global0 = true;
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1165f, -576f, -445f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-523f, 133f, 1108f))))), var_1, func_3());
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_sub_vec4_i32(~(-vec4<i32>(6663i, arg_1.x, -27960i, u_input.a.x)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, arg_1.x, -1i, 1i), vec4<i32>(arg_1.x, arg_0.b.a.x, 0i, arg_1.x)))) & vec4<i32>(-8187i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.x, arg_1.x, 7260i), countOneBits(vec4<i32>(-5979i, -2424i, u_input.a.x, arg_0.b.a.x))), ~1i | u_input.a.x, arg_1.x ^ u_input.a.x));
    var var_1 = arg_1;
    let var_2 = -1000f;
    var_1 = max(countOneBits(var_0.a.wxy), -select(~arg_0.b.a, ~vec3<i32>(-558i, arg_0.b.a.x, -2147483647i), !vec3<bool>(arg_0.b.b, arg_0.b.b, global1.x))) >> ((~(~u_input.c.zyx << (~vec3<u32>(1u, 4294967295u, 1u) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.c, max(105087u, u_input.c.x), 1u), vec3<u32>(reverseBits(0u), _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(9375u, 9u)], 76208u), 0u ^ arg_0.c)) % vec3<u32>(32u))) % vec3<u32>(32u));
    global2 = array<u32, 9>();
    return vec3<bool>(all(select(select(!vec4<bool>(true, true, global1.x, false), !vec4<bool>(false, arg_0.b.b, global1.x, arg_0.b.b), select(vec4<bool>(true, false, false, true), vec4<bool>(arg_0.b.b, true, arg_0.b.b, global1.x), vec4<bool>(global1.x, false, global1.x, true))), vec4<bool>(false, func_2().b.b, arg_0.b.b & global1.x, true), all(!vec4<bool>(arg_0.b.b, false, global1.x, global1.x)))), false, any(select(!select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), vec2<bool>(true, false)), select(vec2<bool>(arg_0.b.b, true), !vec2<bool>(false, arg_0.b.b), !vec2<bool>(arg_0.b.b, false)), !select(vec2<bool>(arg_0.b.b, arg_0.b.b), vec2<bool>(arg_0.b.b, arg_0.b.b), global1.x))));
}

fn func_1() -> vec2<bool> {
    let var_0 = all(func_4(func_2(), countOneBits(~firstTrailingBit(u_input.a))));
    global2 = array<u32, 9>();
    let var_1 = ~countOneBits(firstLeadingBit(_wgslsmith_clamp_vec2_u32(u_input.c.zy, vec2<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], 1u), vec2<u32>(4294967295u, 0u))) & _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], 13153u), vec2<u32>(u_input.c.x, 0u)), firstTrailingBit(u_input.c.xy), vec2<u32>(u_input.c.x, global2[_wgslsmith_index_u32(42596u, 9u)])));
    global2 = array<u32, 9>();
    var var_2 = select(!select(!select(vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(true, global1.x, var_0, var_0), global1.x), !vec4<bool>(global1.x, false, global1.x, true), false), select(vec4<bool>(0u <= _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], u_input.c.x, global2[_wgslsmith_index_u32(4294967295u, 9u)]), 36339u != u_input.c.x, true, !var_0), select(!select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(false, global1.x, global1.x, global1.x), false), select(!vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(false, false, global1.x, false), select(vec4<bool>(global1.x, global1.x, global1.x, var_0), vec4<bool>(true, var_0, true, var_0), true)), any(select(vec4<bool>(var_0, true, global1.x, false), vec4<bool>(global1.x, false, true, global1.x), false))), false), vec4<bool>(var_0, true, all(select(select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), vec2<bool>(global1.x, global1.x)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), global1.x && var_0)), any(vec2<bool>(true, var_0)) && !any(vec4<bool>(var_0, global1.x, true, false))));
    return select(vec2<bool>(select(false, global1.x, !func_2().b.b), !var_0), var_2.yy, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.x;
    global1 = select(func_1(), vec2<bool>(global1.x, true), _wgslsmith_sub_i32(-2147483647i, ~(-u_input.a.x)) == -(~(-u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~15952u));
}

