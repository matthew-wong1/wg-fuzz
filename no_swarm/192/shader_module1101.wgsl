struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
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

var<private> global0: array<vec4<u32>, 20>;

var<private> global1: array<vec4<bool>, 19>;

var<private> global2: array<Struct_4, 12>;

var<private> global3: array<vec4<i32>, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: i32) -> vec2<f32> {
    return arg_1.b;
}

fn func_1() -> Struct_3 {
    global2 = array<Struct_4, 12>();
    global0 = array<vec4<u32>, 20>();
    global1 = array<vec4<bool>, 19>();
    global2 = array<Struct_4, 12>();
    let var_0 = Struct_2(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true)))));
    return Struct_3(_wgslsmith_mod_u32(4294967295u, u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-176f, -2377f, 616f), vec3<f32>(1316f, -1430f, 547f), var_0.a)), Struct_3(u_input.a.x, vec2<f32>(-1502f, 583f), global0[_wgslsmith_index_u32(0u, 20u)], Struct_1(true, vec2<i32>(u_input.b, -2147483647i))), 12688i)))), global0[_wgslsmith_index_u32(~0u, 20u)], Struct_1(var_0.a.x, countOneBits(vec2<i32>(2147483647i, _wgslsmith_mult_i32(u_input.b, u_input.b)))));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> vec3<i32> {
    let var_0 = abs(-abs(vec3<i32>(arg_0.b.d.b.x, arg_0.b.d.b.x, 2147483647i) ^ ~vec3<i32>(arg_0.b.d.b.x, u_input.b, 11362i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(661f, _wgslsmith_f_op_f32(floor(arg_0.b.b.x)), -1409f, _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1000f, 1642f, 327f), vec4<f32>(arg_0.c.x, -953f, arg_0.a, 1000f), global1[_wgslsmith_index_u32(arg_0.b.c.x, 19u)])) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b.b.x, arg_0.a, arg_0.b.b.x, -463f)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_0.b.b.x, arg_0.c.x, arg_0.b.d.a)))) * arg_0.c.x), -1998f, _wgslsmith_f_op_f32(exp2(arg_0.b.b.x)), _wgslsmith_div_f32(-826f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.c.x * -815f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, var_1.x, 338f))) - var_1.yzx)));
    global3 = array<vec4<i32>, 7>();
    let var_3 = vec4<u32>(~min(_wgslsmith_clamp_u32(countOneBits(23117u), ~0u, ~arg_0.b.c.x), ~u_input.a.x), ~(~0u), arg_0.b.a, 1u);
    return vec3<i32>(-reverseBits(i32(-1i) * -3340i), select(i32(-1i) * -1i, min(countOneBits(var_0.x) >> (arg_1 % 32u), _wgslsmith_clamp_i32(func_1().d.b.x, ~2689i, var_0.x << (arg_0.b.a % 32u))), arg_0.b.d.a), -_wgslsmith_div_i32(firstTrailingBit(abs(arg_0.b.d.b.x)), max(countOneBits(u_input.b), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 20>();
    global0 = array<vec4<u32>, 20>();
    global2 = array<Struct_4, 12>();
    global3 = array<vec4<i32>, 7>();
    var var_0 = _wgslsmith_mod_vec3_i32(~func_3(Struct_4(_wgslsmith_f_op_f32(round(-1257f)), func_1(), vec2<f32>(-1353f, -228f)), u_input.a.x), -_wgslsmith_mult_vec3_i32(max(abs(vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(u_input.b, 0i, u_input.b)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(u_input.b, u_input.b, u_input.b))));
    var var_1 = Struct_2(select(vec3<bool>(true, false, any(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), select(vec3<bool>(u_input.a.x <= u_input.a.x, true, false), vec3<bool>(true, true, any(vec3<bool>(false, true, true))), true), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

