struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(34189i, vec2<bool>(false, true), vec2<f32>(-1366f, 764f), 2147483647i, vec4<u32>(4294967295u, 53311u, 0u, 4294967295u)), Struct_1(i32(-2147483648), vec2<bool>(true, false), vec2<f32>(906f, 1420f), 0i, vec4<u32>(63249u, 33894u, 0u, 13953u)), Struct_1(-9846i, vec2<bool>(false, false), vec2<f32>(-1072f, -971f), i32(-2147483648), vec4<u32>(27740u, 25610u, 11956u, 4294967295u)), Struct_1(-10960i, vec2<bool>(false, true), vec2<f32>(-710f, -1648f), -42490i, vec4<u32>(4294967295u, 0u, 0u, 4294967295u)), Struct_1(2147483647i, vec2<bool>(true, false), vec2<f32>(-165f, -1246f), 53341i, vec4<u32>(12759u, 1u, 4294967295u, 0u)));

var<private> global2: vec4<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<u32> {
    var var_0 = vec3<i32>(0i << (_wgslsmith_mult_u32(0u, ~(~arg_0.e.x)) % 32u), u_input.c.x, -2147483647i);
    var var_1 = ~_wgslsmith_dot_vec4_u32(arg_0.e, vec4<u32>(~u_input.d, u_input.d, max(_wgslsmith_div_u32(4294967295u, 4294967295u), 4294967295u), arg_0.e.x));
    var_0 = u_input.c.wwy;
    var var_2 = global1[_wgslsmith_index_u32(~(_wgslsmith_div_u32(~(~u_input.d), u_input.d) >> (abs(select(13307u, u_input.d, false) | 1u) % 32u)), 5u)];
    var var_3 = firstTrailingBit(_wgslsmith_sub_u32(91157u, _wgslsmith_clamp_u32(u_input.d, var_2.e.x, u_input.d)));
    return vec3<u32>(arg_0.e.x, arg_0.e.x, var_2.e.x);
}

fn func_2() -> Struct_2 {
    global0 = array<f32, 8>();
    var var_0 = _wgslsmith_mod_vec3_u32(~func_3(global1[_wgslsmith_index_u32(u_input.d | ~7536u, 5u)], true), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(select(vec3<u32>(40711u, u_input.d, 17193u), vec3<u32>(u_input.d, u_input.d, 8433u), true)), ~abs(vec3<u32>(u_input.d, u_input.d, 14097u))), ~func_3(Struct_1(global2.x, vec2<bool>(true, true), vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 8u)], global0[_wgslsmith_index_u32(21095u, 8u)]), 3842i, vec4<u32>(78523u, 1u, 4294967295u, u_input.d)), false)));
    let var_1 = Struct_3(Struct_2(global1[_wgslsmith_index_u32(~114765u, 5u)], global1[_wgslsmith_index_u32(~firstTrailingBit(~u_input.d), 5u)], !any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)))), u_input.c);
    let var_2 = Struct_3(Struct_2(var_1.a.b, Struct_1(-1i, select(vec2<bool>(var_1.a.c, true), !var_1.a.a.b, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.a.b.c)) * _wgslsmith_div_vec2_f32(var_1.a.a.c, vec2<f32>(-1026f, -357f))), firstTrailingBit(global2.x), vec4<u32>(_wgslsmith_div_u32(u_input.d, u_input.d), func_3(global1[_wgslsmith_index_u32(var_0.x, 5u)], var_1.a.c).x, ~u_input.d, _wgslsmith_clamp_u32(var_1.a.a.e.x, 71812u, 1u))), var_1.a.a.b.x), vec4<i32>(-40285i, -var_1.a.b.d, var_1.b.x, 1i));
    var var_3 = any(vec4<bool>(!(!var_2.a.a.b.x), !var_1.a.b.b.x || true, true, any(select(var_2.a.a.b, var_2.a.a.b, vec2<bool>(var_1.a.c, true))))) != var_1.a.b.b.x;
    return var_1.a;
}

fn func_1() -> vec4<i32> {
    global1 = array<Struct_1, 5>();
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = reverseBits(var_0.a.e);
    global1 = array<Struct_1, 5>();
    return firstTrailingBit(vec4<i32>(global2.x, ~reverseBits(15475i), 0i, _wgslsmith_mod_i32(-u_input.b << (_wgslsmith_add_u32(var_0.a.e.x, 0u) % 32u), max(-6337i, countOneBits(-2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global2 = vec4<i32>(u_input.b, 2147483647i, u_input.c.x, -20864i);
    global0 = array<f32, 8>();
    var var_0 = select(select(!vec4<bool>(true, true, true, any(vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true), vec4<bool>(true && (global2.x <= global2.x), true, any(vec4<bool>(false, true, true, false)) || true, true)), vec4<bool>(!((global0[_wgslsmith_index_u32(u_input.d, 8u)] == global0[_wgslsmith_index_u32(0u, 8u)]) || any(vec4<bool>(false, false, false, false))), (i32(-1i) * -113078i) != firstTrailingBit(~1i), true, !(!(40717u >= u_input.d))), select(select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))), true, true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false))));
    var_0 = select(vec4<bool>(true, select(var_0.x, var_0.x, all(vec2<bool>(var_0.x, false))) != any(var_0.wzy), var_0.x, true && (~65496u > u_input.d)), select(vec4<bool>(all(select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, false, var_0.x, var_0.x))), 1809f >= _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(26620u, 8u)])), true, select(var_0.x, false, var_0.x) & (false && var_0.x)), select(vec4<bool>(any(vec3<bool>(var_0.x, var_0.x, false)), true || var_0.x, global2.x < u_input.b, var_0.x), select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), true), select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), true), global0[_wgslsmith_index_u32(0u, 8u)] == 1621f), vec4<bool>(all(var_0.xx), true, true, true)), var_0.x & (u_input.d <= _wgslsmith_add_u32(4294967295u, u_input.d))), var_0.x);
    let var_1 = func_2().a;
    var var_2 = var_1;
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-var_2.d, 0i));
}

