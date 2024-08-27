struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: array<vec2<u32>, 22>;

var<private> global1: vec3<bool>;

var<private> global2: Struct_2 = Struct_2(Struct_1(false, vec2<f32>(1556f, 820f), 0u), 1649f, vec4<f32>(-1207f, 644f, 1000f, 791f));

var<private> global3: vec2<bool> = vec2<bool>(false, true);

var<private> global4: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(9662u < _wgslsmith_clamp_u32(arg_0.a.c, ~global2.a.c, arg_0.a.c >> (1u % 32u)), global2.a.b, ~abs(max(1u, 35859u))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.b, -469f, arg_0.a.b.x, 1402f), arg_0.c)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1292f, arg_1, arg_1), arg_0.c)))), _wgslsmith_f_op_vec4_f32(global2.c + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -675f, -1679f, -901f))))))));
    var_0 = Struct_2(Struct_1(global2.a.a, global2.a.b, _wgslsmith_sub_u32(~var_0.a.c, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-497f, -1028f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.c.x, -304f, all(vec4<bool>(true, false, true, arg_0.a.a))))))), _wgslsmith_f_op_vec4_f32(-arg_0.c));
    global0 = array<vec2<u32>, 22>();
    let var_1 = -810f;
    global3 = global1.yy;
    return arg_0.c.wx;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<bool>, arg_3: vec2<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(false, vec2<f32>(global2.b, -1820f), 43775u), -1209f, global2.c), global2.b)) - _wgslsmith_f_op_vec2_f32(exp2(global2.c.xy))), _wgslsmith_add_u32(~23321u, 0u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.a.b.x * 2004f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global2.c * _wgslsmith_f_op_vec4_f32(global2.c + vec4<f32>(global2.a.b.x, 463f, 2140f, -2336f))))), global2.c)));
    global1 = select(arg_2, !vec3<bool>(any(!vec4<bool>(true, var_0.a.a, false, var_0.a.a)), all(arg_2) & (arg_2.x | arg_2.x), true), vec3<bool>(any(!select(arg_2, arg_2, vec3<bool>(false, var_0.a.a, true))), all(vec4<bool>(arg_2.x | global3.x, true, arg_2.x, true)), global1.x));
    var var_1 = Struct_1(false, _wgslsmith_f_op_vec2_f32(floor(global2.a.b)), abs(global2.a.c));
    var var_2 = select(select(!(!vec4<bool>(var_0.a.a, true, true, var_0.a.a)), select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, var_1.a, false), vec4<bool>(arg_3.x, arg_1, global2.a.a, true), vec4<bool>(true, false, true, arg_3.x)), var_1.c <= var_1.c), vec4<bool>(true, all(arg_3), true, all(vec3<bool>(true, true, true))), vec4<bool>(var_0.a.c == global2.a.c, global3.x, true, arg_1)), true), vec4<bool>(global3.x, arg_3.x, true, all(select(!arg_2, select(arg_2, vec3<bool>(true, global2.a.a, false), var_0.a.a), all(arg_2)))), 1u < (var_1.c & 43873u));
    var_1 = global2.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -267f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global2.b, _wgslsmith_f_op_f32(-894f + var_0.a.b.x))), var_1.b.x))));
}

fn func_1() -> vec2<u32> {
    global4 = !(-845f >= _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), true, vec3<bool>(false, false, global3.x), vec2<bool>(global2.a.a, false)))))));
    var var_0 = u_input.a.x;
    global0 = array<vec2<u32>, 22>();
    let var_1 = global2.a.c;
    global0 = array<vec2<u32>, 22>();
    return global0[_wgslsmith_index_u32(4286u, 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 22>();
    var var_0 = global2.a;
    let var_1 = ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(max(23555u, 81218u), var_0.c)), func_1());
    global1 = select(!select(vec3<bool>(true, true, true), !(!vec3<bool>(true, true, global2.a.a)), firstTrailingBit(-14146i) != _wgslsmith_mult_i32(0i, u_input.a.x)), select(vec3<bool>(!(global2.b > global2.a.b.x), true, !global2.a.a), vec3<bool>(all(vec4<bool>(false, false, true, global1.x)) | global1.x, global2.a.a, true), !(!(!global1.x))), true);
    var var_2 = global2.a.b.x;
    var var_3 = any(!select(!select(vec4<bool>(false, true, global3.x, global1.x), vec4<bool>(global2.a.a, global1.x, var_0.a, true), false), !vec4<bool>(global3.x, true, global2.a.a, true), select(!vec4<bool>(true, false, false, var_0.a), select(vec4<bool>(global1.x, global3.x, true, false), vec4<bool>(global2.a.a, var_0.a, global1.x, false), false), global1.x)));
    var var_4 = Struct_3(~vec4<i32>(firstLeadingBit(abs(-1i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), vec4<i32>(12756i, 41730i, 0i, 25270i)), -(u_input.a.x >> (global2.a.c % 32u)), -23931i));
    var var_5 = Struct_2(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.b.x - -124f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global2.c)) + vec4<f32>(-512f, var_0.b.x, 324f, 208f))) + vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1558f)))), var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-993f, global2.c.x, global3.x)) * _wgslsmith_f_op_f32(-var_0.b.x)))));
    let var_6 = Struct_3(var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~var_1));
}

