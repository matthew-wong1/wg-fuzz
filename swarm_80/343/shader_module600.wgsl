struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_3,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: Struct_3) -> f32 {
    let var_0 = countOneBits(11833u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(2109f, arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f))))));
    var var_2 = 2672u;
    return _wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-786f + -318f) - arg_0), var_1.x, !(!arg_3.a.x))), arg_0));
}

fn func_2(arg_0: Struct_4) -> bool {
    var var_0 = 32582u;
    let var_1 = vec4<f32>(1385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(385f + -103f), 785f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-717f, -274f)) + _wgslsmith_f_op_f32(func_3(-1000f, vec3<bool>(arg_0.d.a, arg_0.e.x, arg_0.e.x), vec2<u32>(arg_0.a.a.x, arg_0.a.a.x), arg_0.c))) + _wgslsmith_f_op_f32(floor(1948f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f)) + 1f)));
    let var_2 = !all(!select(!vec3<bool>(arg_0.c.a.x, true, arg_0.d.a), vec3<bool>(arg_0.c.b.a, arg_0.d.c.x, arg_0.d.c.x), any(vec4<bool>(arg_0.c.a.x, true, true, false))));
    let var_3 = global0[_wgslsmith_index_u32(arg_0.a.a.x, 5u)];
    let var_4 = _wgslsmith_sub_vec2_u32(arg_0.c.b.d.xx, ~abs(~vec2<u32>(arg_0.c.b.d.x, 0u) | vec2<u32>(var_3.b.d.x, 0u)));
    return var_2;
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = vec4<bool>(select(true & (-arg_0.b < arg_0.b), true, false), !all(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, any(vec2<bool>(true, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(func_2(Struct_4(arg_0, vec3<i32>(2147483647i, arg_0.b, -22924i), Struct_3(vec2<bool>(true, false), Struct_2(true, vec2<bool>(false, false), vec2<bool>(true, false), vec4<u32>(10233u, u_input.a, 35312u, arg_0.a.x), arg_0.a.wx)), Struct_2(true, vec2<bool>(true, true), vec2<bool>(true, false), vec4<u32>(0u, 0u, arg_0.a.x, u_input.a), vec2<u32>(4294967295u, 22813u)), vec2<bool>(false, true))), all(vec2<bool>(false, true))))), true);
    var var_1 = Struct_5(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a, 27967u, 0u, 58226u)), abs(select(~vec4<u32>(u_input.a, arg_0.a.x, u_input.a, u_input.a), ~vec4<u32>(arg_0.a.x, 4294967295u, 4504u, u_input.a), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x)))), vec4<u32>(min(u_input.a, 29491u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, arg_0.a.x), abs(vec2<u32>(u_input.a, 4294967295u))), firstTrailingBit(4294967295u) | arg_0.a.x, ~(~arg_0.a.x))), Struct_2(var_0.x, !select(!vec2<bool>(false, var_0.x), vec2<bool>(false, false), !var_0.x), vec2<bool>(var_0.x, var_0.x), arg_0.a, _wgslsmith_div_vec2_u32(reverseBits(arg_0.a.zy), arg_0.a.ww)), !vec2<bool>(all(select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, true))), true), var_0.x || any(!vec4<bool>(false, false, var_0.x, var_0.x)));
    var_0 = select(vec4<bool>(true, !var_1.b.a, ((0u | arg_0.a.x) | _wgslsmith_add_u32(0u, 34962u)) != 1u, 1u <= (_wgslsmith_mod_u32(u_input.a, 4294967295u) << (0u % 32u))), select(select(select(!vec4<bool>(false, true, var_1.c.x, var_1.c.x), vec4<bool>(var_1.d, var_1.d, false, var_1.b.b.x), true), !(!vec4<bool>(false, true, false, var_1.d)), select(!vec4<bool>(var_0.x, false, var_0.x, true), select(vec4<bool>(var_1.b.b.x, false, false, false), vec4<bool>(var_1.b.c.x, var_1.b.c.x, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, var_1.d)), false || var_0.x)), vec4<bool>(any(var_0.zxz), all(vec2<bool>(var_0.x, false)), true, true), !(!(!vec4<bool>(false, var_0.x, false, true)))), vec4<bool>(select(true, false, !var_0.x), all(vec4<bool>(select(var_1.b.b.x, var_1.c.x, var_1.b.c.x), true, true, var_0.x)), var_0.x, false));
    let var_2 = vec3<bool>(var_0.x, true, true);
    var var_3 = global0[_wgslsmith_index_u32(u_input.a, 5u)];
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 5>();
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(-_wgslsmith_sub_i32(-1i, func_1(Struct_1(vec4<u32>(u_input.a, 66478u, 57741u, u_input.a), 2494i))), _wgslsmith_mult_i32(~(-4483i) << (1u % 32u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 16668i), vec2<i32>(1i, 51583i)))), -_wgslsmith_dot_vec2_i32(vec2<i32>(59608i, 13891i), -vec2<i32>(-49250i, 202i)) >> (~(~(u_input.a & 1u)) % 32u));
    let var_1 = abs(reverseBits(select(-vec2<i32>(29936i, var_0.x) & _wgslsmith_mod_vec2_i32(vec2<i32>(12030i, var_0.x), vec2<i32>(2147483647i, var_0.x)), vec2<i32>(-2147483647i, -36402i), _wgslsmith_f_op_f32(step(-537f, -935f)) < _wgslsmith_f_op_f32(floor(1522f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(u_input.a, ~reverseBits(u_input.a), false), 4294967295u, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) + 963f) + _wgslsmith_f_op_f32(f32(-1f) * -1151f)));
}

