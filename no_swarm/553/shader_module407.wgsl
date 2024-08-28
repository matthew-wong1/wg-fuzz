struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 24>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_4, 30>;

var<private> global4: vec3<f32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = !vec3<bool>(global0.b.x, false, !any(!vec4<bool>(false, true, global0.b.x, true)));
    global3 = array<Struct_4, 30>();
    let var_1 = global4.xx;
    global1 = array<u32, 24>();
    var var_2 = global4.x;
    return 72566u;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec2<f32>) -> f32 {
    var var_0 = func_3(all(global2.b));
    let var_1 = 4294967295u;
    global0 = Struct_1(global2.a, vec4<bool>(_wgslsmith_add_u32(4294967295u, ~4294967295u) <= (var_1 << (17938u % 32u)), arg_2.x <= _wgslsmith_f_op_f32(f32(-1f) * -657f), global0.b.x, all(!vec3<bool>(true, global2.a.x, global0.a.x))), -62569i == ~u_input.c.x);
    let var_2 = Struct_4(-firstLeadingBit(~u_input.b | max(u_input.b, u_input.b)));
    global4 = arg_0.wwz;
    return arg_0.x;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> u32 {
    global4 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.x, 845f, 418f, -1044f), vec4<f32>(global4.x, 131f, 1427f, global4.x))))), u_input.b.yyx & vec3<i32>(2147483647i, u_input.a, 1i), vec2<f32>(_wgslsmith_f_op_f32(ceil(global4.x)), _wgslsmith_f_op_f32(-126f + -567f))))), -1000f, global4.x);
    let var_0 = Struct_1(global0.b.wx, global2.b, !(!any(global2.b.zyy)));
    global2 = var_0;
    var var_1 = Struct_3(Struct_2(~abs(_wgslsmith_div_vec2_u32(arg_1.xy, arg_1.xz))), _wgslsmith_div_u32(~(arg_1.x ^ 4294967295u) ^ reverseBits(arg_0), ~(~_wgslsmith_dot_vec2_u32(arg_1.wy, arg_1.zz))), global4.x);
    global2 = Struct_1(vec2<bool>(select(global0.a.x, global0.b.x, !(!global2.c)), false), var_0.b, any(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 24u)], 24u)]), 24u)] >= ~46759u, var_0.b.x && all(vec3<bool>(global0.b.x, false, false)), true || any(global0.b.yyw))));
    return ~(~1u);
}

fn func_4(arg_0: vec4<u32>, arg_1: u32) -> Struct_4 {
    global0 = Struct_1(select(!(!vec2<bool>(false, global0.b.x)), select(!select(global2.a, global2.b.xz, global2.b.xz), select(global0.a, global0.a, select(vec2<bool>(global0.c, global2.a.x), global0.a, false)), all(vec4<bool>(global0.c, global2.c, global2.a.x, global2.a.x))), global2.a), select(!global2.b, vec4<bool>(false, global0.a.x, any(vec2<bool>(true, false)), false), !(!global2.b.x)), all(global0.b));
    return Struct_4(~_wgslsmith_div_vec4_i32(-u_input.b, _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(u_input.c.x, 1i, u_input.c.x, 11323i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 24>();
    let var_0 = func_4(vec4<u32>(global1[_wgslsmith_index_u32(~(~(~0u)), 24u)], func_1(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32495u, 24u)], 24u)], 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(62562u, 24u)], 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], 46518u, 0u, 15316u))), abs(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], 1u, 34432u, global1[_wgslsmith_index_u32(1u, 24u)]))), 43733u, global1[_wgslsmith_index_u32(1u, 24u)]), ~(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10398u, 24u)], 24u)], 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51279u, 24u)], 24u)], 24u)]), 24u)], 24u)] ^ 88074u));
    var var_1 = global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)]), 24u)]), 4294967295u, max(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], ~0u)), 24u)]), 24u)], 24u)];
    var var_2 = Struct_1(vec2<bool>(all(global0.b), false), global2.b, true);
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 187f, -1005f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4.x, 144f, global4.x))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global4.x * global4.x), -543f, _wgslsmith_f_op_f32(-973f * 114f)), vec3<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(global4.x * global4.x), global4.x), !select(global0.b.x, false, global2.c))), global2.a.x)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-727f - global4.x), _wgslsmith_f_op_f32(sign(global4.x))), vec3<f32>(global4.x, 695f, 255f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4.x, global4.x)) * global4.x))) - _wgslsmith_f_op_f32(105f * global4.x)), 494f, -348f, global4.zx, abs(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(var_0.a, vec4<i32>(-2147483647i, var_0.a.x, u_input.b.x, var_0.a.x)), var_0.a), -10306i, ~u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.b.yyz << (vec3<u32>(9654u, 14871u, global1[_wgslsmith_index_u32(33978u, 24u)]) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, u_input.a, u_input.b.x)))));
}

