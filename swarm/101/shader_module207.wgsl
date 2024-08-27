struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<Struct_1, 5>;

var<private> global3: vec2<f32> = vec2<f32>(-1000f, 1946f);

var<private> global4: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> vec2<i32> {
    return vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-1i, 1i), 20838i, max(1i, -11194i), -12243i), _wgslsmith_sub_vec4_i32(~vec4<i32>(90323i, -4477i, 1424i, 0i), vec4<i32>(-26203i, 5606i, -1i, -22192i))), 43877i);
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<f32>) -> vec3<bool> {
    global4 = _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 1u), min(firstLeadingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, arg_1.x), arg_1)), u_input.a.xz));
    global1 = global0.xy;
    return vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -676f) < arg_3.x, true, !all(vec3<bool>(global0.x, any(vec2<bool>(global1.x, global0.x)), !global0.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> bool {
    let var_0 = select(global0.yz, vec2<bool>(arg_2, any(!vec3<bool>(true, false, arg_2))), !any(vec3<bool>(false, all(vec3<bool>(true, true, arg_2)), global1.x)));
    let var_1 = arg_1;
    let var_2 = ~u_input.b.x;
    let var_3 = Struct_1(vec2<bool>(true, !var_0.x), _wgslsmith_f_op_f32(sign(-731f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-763f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(591f * 1322f), _wgslsmith_div_f32(global3.x, -529f), _wgslsmith_f_op_f32(-global3.x), arg_0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))))));
    global0 = select(func_3(-126f, ~u_input.b.xw, var_1, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, global3.x, 827f, 1000f), var_3.d))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 287f, 1000f, global3.x), vec4<f32>(var_3.b, global3.x, arg_0.x, var_3.d.x)), _wgslsmith_f_op_vec4_f32(var_3.d * var_3.d), vec4<bool>(true, global1.x, var_0.x, true)))))), func_3(626f, u_input.a.zz, arg_1, vec4<f32>(549f, _wgslsmith_f_op_f32(sign(var_3.c)), _wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-638f, arg_0.x)), _wgslsmith_f_op_f32(floor(552f)))))), select(func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x - arg_0.x))), ~u_input.b.wx, Struct_2(vec2<i32>(2147483647i, var_1.a.x) & var_1.a), vec4<f32>(1f, _wgslsmith_f_op_f32(-var_3.c), arg_0.x, global3.x)), !func_3(-800f, vec2<u32>(u_input.a.x, 7946u) ^ u_input.b.xx, Struct_2(var_1.a), var_3.d), true));
    return !(!global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!global0.xy, !global0.xy, !global0.yx);
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 5u)];
    var var_1 = Struct_2(abs(func_1()));
    var var_2 = 21305u;
    global4 = 60154u;
    global0 = !vec3<bool>(!select(!var_0.a.x, func_2(vec2<f32>(967f, global3.x), Struct_2(vec2<i32>(var_1.a.x, 1i)), true), false), global1.x, false);
    var_1 = Struct_2(abs(countOneBits(var_1.a) | vec2<i32>(-12655i, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, -735f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1122f * 1795f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1154f, -1841f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c))) * _wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(-var_0.d.x))))), select(var_1.a, reverseBits(~(-vec2<i32>(0i, -3889i))), true), var_0.d, ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a.x, var_1.a.x >> (u_input.b.x % 32u)), -(~var_1.a)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - 224f) * 1000f), var_0.d.x));
}

