struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec4<bool>, 1>;

var<private> global2: Struct_1;

var<private> global3: vec3<u32>;

var<private> global4: bool = false;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1520f, 145f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.e), _wgslsmith_div_f32(global2.c.x, 318f), true)))) + global2.e);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> i32 {
    global4 = true;
    global1 = array<vec4<bool>, 1>();
    global3 = global0.zzz;
    global4 = false;
    global3 = ~vec3<u32>(~(~58764u) | _wgslsmith_mult_u32(abs(global3.x), u_input.b.x), ~(~(~0u)), global3.x);
    return select((_wgslsmith_add_i32(20790i, u_input.a.x) & _wgslsmith_sub_i32(-1i, 0i)) | (_wgslsmith_add_i32(1i, global2.b.x) >> (global0.x % 32u)), ~_wgslsmith_mod_i32(arg_0.a, arg_0.b.x) << (~global3.x % 32u), 1000f > _wgslsmith_f_op_f32(func_2(!global2.d))) >> ((894u | global3.x) % 32u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, 502f, 1000f, arg_2.e)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.e, -1099f, global2.c.x, -166f))) * vec4<f32>(-1000f, arg_2.e, 1000f, arg_2.c.x))))), arg_2, abs(select(~1u, ~_wgslsmith_div_u32(global0.x, global0.x), arg_0.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-786f, 1010f)) + -381f) * global2.e) > -186f;
    let var_2 = u_input.b.x;
    global3 = firstLeadingBit(~abs(firstTrailingBit(vec3<u32>(u_input.b.x, 1u, u_input.b.x))));
    var var_3 = var_0.b;
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(686f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.c.x + global2.e), _wgslsmith_f_op_f32(min(global2.c.x, 428f)))), _wgslsmith_div_f32(-1521f, 101f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(116f * global2.e) - global2.c.x))), Struct_1(u_input.a.x, _wgslsmith_add_vec3_i32(u_input.a.zyx, vec3<i32>(u_input.c, _wgslsmith_dot_vec3_i32(global2.b, vec3<i32>(28026i, 5673i, global2.b.x)), global2.a)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.e, global2.c.x) - vec2<f32>(576f, global2.e)), _wgslsmith_div_vec2_f32(global2.c, global2.c))))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global2.c.x, 965f)))))), min(21144u, ~global3.x));
    global1 = array<vec4<bool>, 1>();
    var var_1 = var_0.b;
    global3 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~(firstLeadingBit(u_input.b.wwz) & _wgslsmith_div_vec3_u32(global0.zyx, u_input.b.zwx)), max(abs(u_input.b.yyy), u_input.b.wzx | vec3<u32>(21622u, var_0.c, global3.x))), min(~vec3<u32>(~var_0.c, global3.x, var_0.c >> (var_0.c % 32u)), u_input.b.yyx));
    var var_2 = Struct_1(_wgslsmith_sub_i32(reverseBits(func_1(var_0.b, true)), -46555i), vec3<i32>(-38582i, ~(max(global2.a, 0i) & -global2.b.x), var_1.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(var_0.b.d, true, true, var_0.b.d), vec4<bool>(true, false, var_0.b.d, false), var_0.b))) * var_0.a.xy), all(select(!select(vec2<bool>(true, var_0.b.d), vec2<bool>(true, false), var_1.d), select(vec2<bool>(var_0.b.d, false), !vec2<bool>(true, var_1.d), global2.d), true || (true | var_1.d))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))))));
    var var_3 = _wgslsmith_f_op_f32(step(var_0.a.x, var_1.e));
    let var_4 = select(var_0.b.d, all(global1[_wgslsmith_index_u32(~(~(u_input.b.x | 10968u)), 1u)]), false);
    let var_5 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(1291f, _wgslsmith_mod_u32(1u, global3.x), var_1.e);
}

