struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
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

var<private> global0: vec4<bool>;

var<private> global1: vec2<f32> = vec2<f32>(837f, -1215f);

var<private> global2: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<i32>, arg_3: vec4<f32>) -> bool {
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global2.a), 117f))) + vec2<f32>(544f, _wgslsmith_f_op_f32(1560f * _wgslsmith_f_op_f32(global1.x + 558f))))));
    global2 = Struct_1(global1.x, global2.b, global2.c);
    var var_0 = -494f;
    var var_1 = _wgslsmith_mod_vec4_u32(u_input.d, ~(~u_input.d));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -383f);
    return !(firstTrailingBit(~54461u) != ~u_input.d.x);
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global2.a)), _wgslsmith_f_op_f32(floor(112f))))), ~u_input.d.x, ~(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(global2.c.x, arg_0.x, u_input.a, 36319i)) | abs(u_input.b))), -_wgslsmith_mod_i32(-48005i, ~global2.c.x), _wgslsmith_div_i32(u_input.a | abs(arg_0.x & 1i), global2.c.x), Struct_2(false, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - -498f), _wgslsmith_add_u32(countOneBits(0u), reverseBits(u_input.d.x)), min(vec4<i32>(-56225i, u_input.e, -2323i, global2.c.x), vec4<i32>(0i, -17586i, u_input.a, u_input.a)))));
    var var_1 = max(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.zy, u_input.d.yx), ~u_input.d.wy), 1u) >> (_wgslsmith_mult_u32(max(4294967295u, 48072u), u_input.d.x) % 32u);
    let var_2 = _wgslsmith_mod_i32(1i, var_0.a.c.x);
    var var_3 = u_input.d.zx;
    let var_4 = select(vec4<bool>(!any(vec4<bool>(false, false, global0.x, false)), all(!(!vec4<bool>(false, false, global0.x, global0.x))), all(vec3<bool>(true, true, true)), !(all(global0.yxz) || global0.x)), !vec4<bool>(!(global0.x && global0.x), global1.x > 1000f, var_0.d.a, true), any(select(!select(vec4<bool>(var_0.d.a, true, global0.x, false), vec4<bool>(global0.x, var_0.d.a, true, true), global0.x), !select(vec4<bool>(true, var_0.d.a, global0.x, true), vec4<bool>(true, false, global0.x, var_0.d.a), vec4<bool>(global0.x, var_0.d.a, true, global0.x)), _wgslsmith_f_op_f32(153f - global1.x) <= _wgslsmith_f_op_f32(var_0.a.a - -774f))));
    return u_input.a;
}

fn func_1() -> f32 {
    global0 = !select(!select(!vec4<bool>(global0.x, global0.x, true, true), !vec4<bool>(false, global0.x, true, false), vec4<bool>(false, global0.x, false, global0.x)), vec4<bool>(func_2(reverseBits(global2.c.x), global2.c.x, ~global2.c, vec4<f32>(global2.a, -1000f, 1453f, global1.x)), global0.x, (global2.b >= 56066u) || true, true != (global0.x && false)), false);
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 678f)))), select(firstLeadingBit(global2.b >> (1u % 32u)), reverseBits(4294967295u), !(global2.b != 28907u)), select(max(-vec4<i32>(u_input.a, 0i, u_input.e, global2.c.x), -vec4<i32>(global2.c.x, -30058i, 71614i, global2.c.x)), _wgslsmith_clamp_vec4_i32(-u_input.b, ~vec4<i32>(0i, u_input.c, -50765i, u_input.b.x), ~global2.c), select(vec4<bool>(false, false, global0.x, true), !vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, false, global0.x, global0.x)))), Struct_3(Struct_1(-713f, abs(0u), ~(~global2.c)), global2.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(func_3(global2.c.www), -2147483647i, u_input.c & global2.c.x), vec3<i32>(-1i) * -u_input.b.wyz), Struct_2(true, Struct_1(_wgslsmith_f_op_f32(-global1.x), abs(u_input.d.x), _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a, 0i, -2147483647i), global2.c)))), Struct_3(Struct_1(_wgslsmith_f_op_f32(-global2.a), u_input.d.x, u_input.b), 2147483647i, u_input.a, Struct_2(global0.x, Struct_1(1f, ~u_input.d.x, global2.c))), vec2<bool>(true, global0.x));
    var_0 = Struct_4(var_0.a, var_0.b, Struct_3(var_0.b.a, -(~(-43055i)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.c.d.b.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, global2.c.x), u_input.b.xyw)), _wgslsmith_div_i32(global2.c.x, ~global2.c.x)), var_0.c.d), var_0.d);
    return _wgslsmith_f_op_f32(var_0.c.a.a - _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(floor(-557f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(func_1())))) - global1.x), u_input.d.x, -(~u_input.b) | -(~_wgslsmith_sub_vec4_i32(global2.c, vec4<i32>(-23675i, -1i, global2.c.x, 16937i))));
    let var_0 = global2.a;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(trunc(global1.x)))) - -268f), global2.a);
    global2 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(f32(-1f) * -214f)), !any(global0.wx))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(544f, _wgslsmith_f_op_f32(-global2.a)), -1284f, any(vec4<bool>(global0.x, false, false, global0.x)))))), 0u, -select(vec4<i32>(i32(-1i) * -19394i, global2.c.x, u_input.e ^ 0i, _wgslsmith_mult_i32(u_input.c, 1i)), vec4<i32>(abs(u_input.a), firstLeadingBit(u_input.e), global2.c.x, global2.c.x), vec4<bool>(!global0.x, !global0.x, false, !global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.x);
}

