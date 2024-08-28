struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec4<i32>(10921i, i32(-2147483648), -1i, -9433i), Struct_1(true, 13238u, vec4<f32>(-825f, 244f, -129f, 1170f), 2147483647i, 105445u), -419f), Struct_2(vec4<i32>(2147483647i, -14684i, 27695i, -46707i), Struct_1(true, 41542u, vec4<f32>(274f, -127f, 531f, 1633f), 2147483647i, 588u), 902f), Struct_2(vec4<i32>(i32(-2147483648), 74673i, 2147483647i, 4107i), Struct_1(true, 0u, vec4<f32>(1075f, 1000f, -1706f, 816f), 15909i, 12105u), -176f), Struct_2(vec4<i32>(2147483647i, -1i, -10841i, -14219i), Struct_1(true, 4294967295u, vec4<f32>(-146f, 2286f, 677f, -865f), 2147483647i, 28246u), 749f), Struct_2(vec4<i32>(0i, -13317i, 0i, 1i), Struct_1(true, 8633u, vec4<f32>(772f, -799f, 452f, -1000f), -33890i, 5321u), -1454f));

var<private> global2: array<Struct_1, 27>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = global0.a;
    global2 = array<Struct_1, 27>();
    var var_1 = min(~(~(~arg_0)) << ((11250u << (1u % 32u)) % 32u), arg_0);
    global0 = Struct_2(vec4<i32>(~(-29837i), u_input.b, ~(-u_input.b & -14112i), firstLeadingBit(-60917i)), global2[_wgslsmith_index_u32(0u, 27u)], global0.c);
    global2 = array<Struct_1, 27>();
    return vec3<bool>(true, arg_1.x <= arg_1.x, true);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: u32, arg_3: vec3<bool>) -> vec4<bool> {
    let var_0 = global0.a.yxw | _wgslsmith_div_vec3_i32(vec3<i32>(-(global0.a.x ^ u_input.b), abs(firstLeadingBit(u_input.b)), -u_input.b & -2147483647i), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -2147483647i, -12282i), abs(vec3<i32>(u_input.b, 2147483647i, 2147483647i)), vec3<i32>(-2147483647i, -32224i, u_input.b)), vec3<i32>(_wgslsmith_sub_i32(global0.b.d, 2147483647i), _wgslsmith_sub_i32(1i, 42070i), 2147483647i), true));
    global1 = array<Struct_2, 5>();
    var var_1 = reverseBits(~_wgslsmith_mult_u32(u_input.c.x, firstTrailingBit(arg_2)));
    var_1 = 72994u;
    var var_2 = -1i;
    return vec4<bool>((var_0.x >> (_wgslsmith_div_u32(~global0.b.b, ~arg_0) % 32u)) < -2147483647i, true, !(_wgslsmith_f_op_f32(exp2(1f)) > global0.c), false);
}

fn func_2() -> Struct_1 {
    var var_0 = global0.b.c.x;
    global1 = array<Struct_2, 5>();
    global0 = global1[_wgslsmith_index_u32(firstTrailingBit(global0.b.e), 5u)];
    global2 = array<Struct_1, 27>();
    let var_1 = all(func_4(63277u, global0.b.c.zww, firstLeadingBit(4294967295u), select(select(!vec3<bool>(true, global0.b.a, global0.b.a), !vec3<bool>(true, global0.b.a, false), !vec3<bool>(global0.b.a, global0.b.a, global0.b.a)), !func_3(1u, u_input.c), true)));
    return Struct_1(var_1, u_input.d.x, _wgslsmith_f_op_vec4_f32(-global0.b.c), 1i | ~(-u_input.b), global0.b.e);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global1 = array<Struct_2, 5>();
    var var_0 = select(true, true, true);
    var var_1 = func_2();
    var var_2 = u_input.c.yyw;
    let var_3 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c.x))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(global0.c, 678f);
    var var_1 = abs(vec2<i32>(~u_input.b, ~u_input.b));
    var var_2 = u_input.c.x;
    var var_3 = global0.b;
    var var_4 = func_1(!(!(!vec3<bool>(var_3.a, var_3.a, var_3.a))));
    global1 = array<Struct_2, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1942f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.c.wzx, _wgslsmith_f_op_vec3_f32(-var_4.c.xyw))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-412f, -261f, -1065f, var_3.c.x), _wgslsmith_f_op_vec4_f32(var_4.c - var_3.c), var_4.a)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2069f, var_0.x, 149f, 113f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.c.x, global0.c, var_0.x, 670f) * global0.b.c), var_3.e == u_input.c.x))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 115f), -846f), _wgslsmith_f_op_f32(-607f - _wgslsmith_f_op_f32(-var_3.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(2803f, 405f)), _wgslsmith_f_op_f32(-1392f - var_3.c.x))), global0.b.c.x)), _wgslsmith_dot_vec3_i32(global0.a.wwy, global0.a.zxz));
}

