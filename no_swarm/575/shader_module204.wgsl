struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_1, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: bool) -> bool {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(587f, 1154f)), arg_0);
    var var_1 = -1033f;
    let var_2 = 23017u;
    return true;
}

fn func_2() -> bool {
    global0 = array<Struct_1, 19>();
    let var_0 = select(!(!vec4<bool>(true, any(vec3<bool>(true, true, false)), func_3(-1348f, true), true)), select(vec4<bool>(true, max(-9027i, -47000i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(9866i, 24211i, 5386i), vec3<i32>(57017i, 8650i, 1i)), false, any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(false, true, false)), any(vec2<bool>(false, true)) & false, true)), !vec4<bool>(true, true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))), false));
    var var_1 = Struct_2(!select(var_0, var_0, !var_0), 24166u, !vec2<bool>(select(func_3(-2490f, var_0.x), u_input.a > 4294967295u, var_0.x), var_0.x));
    var var_2 = any(select(select(select(!var_1.a, select(vec4<bool>(false, false, true, false), var_1.a, var_1.c.x), any(vec4<bool>(var_0.x, false, var_1.a.x, true))), var_0, vec4<bool>(var_0.x, true, all(var_1.a.wxy), any(var_0))), select(!var_0, var_0, any(select(vec3<bool>(var_0.x, false, var_0.x), var_0.yyy, var_1.a.yyw))), !(_wgslsmith_f_op_f32(select(-220f, 299f, false)) != 1846f)));
    let var_3 = _wgslsmith_mult_u32(29242u, _wgslsmith_clamp_u32(var_1.b ^ 1u, 0u, abs(var_1.b)));
    return all(!select(vec4<bool>(true, all(var_0.yw), any(vec2<bool>(false, false)), var_1.c.x), select(var_1.a, vec4<bool>(false, var_1.a.x, true, false), vec4<bool>(false, false, var_0.x, false)), !(4294967295u >= var_3)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    return 1000f;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec4<f32>) -> i32 {
    let var_0 = Struct_2(select(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true))), !vec4<bool>(true, all(vec4<bool>(true, true, false, true)), true, all(vec4<bool>(false, false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), arg_0.x, vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false)))));
    let var_1 = Struct_4(var_0.a.yxw, global0[_wgslsmith_index_u32(1u, 19u)]);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(func_4(var_0, vec3<bool>(false, func_2(), var_0.a.x), Struct_1(var_1.a.zy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_0, select(!var_0.a.yyw, var_1.a, false), global0[_wgslsmith_index_u32(countOneBits(9244u), 19u)]))));
    var var_3 = Struct_4(var_0.a.xwz, global0[_wgslsmith_index_u32(~28225u, 19u)]);
    let var_4 = var_0.a.zyy;
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-43457i, ~_wgslsmith_sub_i32(2147483647i, 2147483647i), 1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1229i, 10252i, 0i, 10058i), vec4<i32>(1i, -1i, 0i, -23393i))), vec4<i32>(~abs(-1i), 1i, abs(-43311i), abs(i32(-1i) * -30419i))), i32(-1i) * -49136i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-min(-1i, 16117i), countOneBits(28180i) << (_wgslsmith_add_u32(u_input.a, 0u) % 32u), _wgslsmith_div_i32(-54463i, ~(-2147483647i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 2147483647i), select(vec2<i32>(1i, 14669i), vec2<i32>(24082i, -1i), true))), _wgslsmith_div_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(abs(-56303i), 1i, i32(-1i) * -45081i, func_1(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec4<f32>(513f, 1558f, 304f, 1153f))))));
    global0 = array<Struct_1, 19>();
    var var_1 = var_0.x << (~_wgslsmith_sub_u32(0u & ~u_input.a, 31400u) % 32u);
    var var_2 = Struct_2(!select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), !any(vec4<bool>(true, true, true, true))), ~(~(~(~u_input.a))), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))), any(vec3<bool>(all(vec3<bool>(false, false, true)), true, false))));
    let var_3 = vec3<u32>(31786u, ~u_input.a, u_input.a);
    var var_4 = -_wgslsmith_div_i32(var_0.x, firstLeadingBit(~1i));
    var_4 = -countOneBits(_wgslsmith_div_i32(~var_0.x, _wgslsmith_dot_vec2_i32(var_0.yz, vec2<i32>(var_0.x, var_0.x)))) | _wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_add_i32(var_0.x, var_0.x), -countOneBits(func_1(vec4<u32>(u_input.a, 4294967295u, var_3.x, 4294967295u), vec3<u32>(u_input.a, 4294967295u, var_2.b), vec4<f32>(-842f, -527f, 549f, -700f))));
    var_1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(_wgslsmith_dot_vec3_i32(var_0.xxw, vec3<i32>(0i, -1i, 30728i)) | min(-1i, -20830i))));
}

