struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-154f, 632f, 727f, 1000f);

var<private> global1: array<vec4<u32>, 18>;

var<private> global2: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(33816u, 44971u), vec2<u32>(44849u, 20396u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1671u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> vec2<i32> {
    let var_0 = !(!(!any(vec4<bool>(true, false, false, false))));
    var var_1 = global0.x;
    var var_2 = reverseBits(reverseBits(u_input.d.x));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(f32(-1f) * -734f))), _wgslsmith_f_op_f32(f32(-1f) * -160f)));
    global2 = array<vec2<u32>, 4>();
    return ~(~u_input.d | _wgslsmith_sub_vec2_i32(vec2<i32>(1i, i32(-1i) * -44350i), vec2<i32>(0i, ~arg_1)));
}

fn func_2() -> u32 {
    global2 = array<vec2<u32>, 4>();
    var var_0 = ~u_input.a.yxz;
    let var_1 = Struct_1(-func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, -618f, global0.x, global0.x)))), max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -1i, 0i, var_0.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.d.x)), var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1974f, 1000f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-1088f * global0.x))), global0.x)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(var_2 - global0.x), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-252f, var_2, global0.x, 126f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, var_2, global0.x) - vec4<f32>(-162f, 850f, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, -945f, 516f))))));
    return 1u;
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = global0.x;
    var var_1 = u_input.c >> ((u_input.b & u_input.e.x) % 32u);
    let var_2 = global1[_wgslsmith_index_u32(max(u_input.e.x, select(func_2(), 1u, true)), 18u)] >> (max(global1[_wgslsmith_index_u32(u_input.c, 18u)], abs(~(global1[_wgslsmith_index_u32(u_input.c, 18u)] ^ vec4<u32>(0u, u_input.e.x, 25681u, 113631u)))) % vec4<u32>(32u));
    return max(func_2(), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(min(~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(127387u, 15608u), 4u)], u_input.e), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(func_1(false), 18u)], global1[_wgslsmith_index_u32(u_input.e.x, 18u)]), 4u)], vec2<bool>(15127i != select(-1i, u_input.a.x, false), 4294967295u != _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(u_input.e.x, 4u)]))), vec2<u32>(_wgslsmith_add_u32((4294967295u & u_input.e.x) << (u_input.c % 32u), 45078u), u_input.c), !(u_input.b > _wgslsmith_clamp_u32(u_input.e.x, _wgslsmith_div_u32(u_input.c, u_input.b), ~40034u)));
    global2 = array<vec2<u32>, 4>();
    var_0 = ~abs(vec2<u32>(~var_0.x, 20092u));
    var var_1 = u_input.a.x;
    var_0 = select(vec2<u32>(var_0.x, 0u), vec2<u32>(u_input.c, ~var_0.x), select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, true), var_0.x > u_input.b), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-20909i, u_input.d.x), abs(vec3<u32>(u_input.c, _wgslsmith_div_u32(4294967295u, var_0.x), 17748u)) | firstTrailingBit(~vec3<u32>(u_input.c, u_input.b, 0u) | abs(vec3<u32>(u_input.c, 1u, 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(870f, _wgslsmith_f_op_f32(-1466f - global0.x), _wgslsmith_f_op_f32(ceil(-978f)), 558f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -253f))))) * vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, global0.x, 373f)), vec3<i32>((i32(-1i) * -76686i) >> (~_wgslsmith_mult_u32(var_0.x, 1u) % 32u), 1i, select(_wgslsmith_mult_i32(17324i, u_input.a.x), ~(-25732i), true)));
}

