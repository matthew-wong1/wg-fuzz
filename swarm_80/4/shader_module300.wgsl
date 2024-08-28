struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 3>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_2 {
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_div_u32(4294967295u, u_input.a), 0u), ~_wgslsmith_sub_u32(~(~u_input.a), ~u_input.a), abs(u_input.a)), 3u)];
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global1 = array<Struct_2, 3>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(global0.x, global0.x))), vec3<u32>(min(abs(_wgslsmith_clamp_u32(u_input.a, u_input.a, 20261u)), firstTrailingBit(~32129u)), u_input.a, ~firstLeadingBit(_wgslsmith_div_u32(u_input.a, 21612u))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-1911f - -562f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x + global0.x)) * 1595f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2160f + _wgslsmith_f_op_f32(global0.x - global0.x))))));
    let var_1 = Struct_1(true, true, false, firstLeadingBit(vec4<u32>(var_0.b.x, _wgslsmith_mult_u32(17072u & u_input.a, var_0.b.x), ~0u, 6667u)), arg_0.yxw);
    global1 = array<Struct_2, 3>();
    return 1543f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 2203f, -1000f)))), vec4<f32>(func_2().c, _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), 1000f)), vec4<f32>(arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(190f)) * _wgslsmith_div_f32(global0.x, arg_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1741f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.b, u_input.c.x, 1i, 0i)))))), select(vec4<bool>(false, all(!vec4<bool>(true, arg_1.b, arg_1.c, arg_1.b)), false, false), !(!select(vec4<bool>(arg_1.a, arg_1.b, arg_1.b, false), vec4<bool>(true, arg_1.c, arg_1.a, true), arg_1.a)), false)));
    let var_0 = vec4<bool>(!(!select(arg_1.b, arg_1.a, arg_1.b)), any(vec3<bool>(arg_1.c, true, !any(vec3<bool>(arg_1.b, arg_1.a, arg_1.b)))), arg_1.a, all(select(vec4<bool>(arg_1.a, arg_0.b.x != arg_0.b.x, false, true || arg_1.c), !select(vec4<bool>(arg_1.b, true, false, arg_1.a), vec4<bool>(false, true, arg_1.c, arg_1.c), false), select(!vec4<bool>(arg_1.a, arg_1.a, false, true), !vec4<bool>(false, arg_1.a, arg_1.c, true), arg_1.b))));
    var var_1 = arg_0;
    let var_2 = select(!var_0.zz, !vec2<bool>(false, all(!var_0)), select(vec2<bool>(any(var_0.xxx), !any(vec2<bool>(true, arg_1.a))), var_0.xz, var_0.zy));
    let var_3 = Struct_3(1000f, arg_1.d.xxw);
    return Struct_2(var_1.a, _wgslsmith_f_op_vec4_f32(abs(var_1.b)), _wgslsmith_f_op_f32(max(func_2().c, _wgslsmith_f_op_f32(floor(global0.x)))));
}

fn func_1() -> vec4<f32> {
    var var_0 = ~firstLeadingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(26621u, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 0u)))) & ~vec2<u32>(u_input.a, 47838u);
    let var_1 = func_4(func_2(), Struct_1(_wgslsmith_f_op_f32(global0.x - global0.x) < _wgslsmith_f_op_f32(func_3(vec4<i32>(-10707i, 2147483647i, u_input.b, 8537i))), true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), ~vec4<u32>(18341u & var_0.x, ~25978u, u_input.a, ~var_0.x), vec3<i32>(-_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), -2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 16194i, 8267i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.b, u_input.b, -53935i)))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(476f, -139f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))) - -879f), global0.x));
    global0 = _wgslsmith_f_op_vec4_f32(func_1());
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1425f)));
    var_0 = global0.x;
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-880f, -1000f, global0.x, global0.x) - vec4<f32>(global0.x, global0.x, -357f, global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(1667f, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, global0.x, global0.x, 952f), vec4<f32>(global0.x, global0.x, 1444f, 248f))))))));
    var var_1 = vec2<i32>(-_wgslsmith_mod_i32(1i, u_input.c.x), -abs(-1624i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

