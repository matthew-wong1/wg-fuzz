struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 7>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_mult_i32(~(~(i32(-1i) * -92928i)), max(9461i, 11155i));
    let var_1 = min(u_input.c.x, u_input.c.x);
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-529f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1412f, 861f))), _wgslsmith_f_op_f32(f32(-1f) * -194f))))), _wgslsmith_f_op_f32(floor(306f))));
    let var_2 = !vec4<bool>(global1[_wgslsmith_index_u32(47793u, 7u)], global1[_wgslsmith_index_u32(~4294967295u, 7u)], global1[_wgslsmith_index_u32(u_input.a << (reverseBits(1u ^ u_input.b) % 32u), 7u)], global1[_wgslsmith_index_u32(reverseBits(abs(~u_input.a)), 7u)]);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    return -887f;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(303f * arg_0.b.x), arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(206f, -349f), _wgslsmith_div_f32(arg_0.b.x, 1251f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1228f, 841f, 1000f, arg_0.b.x) - vec4<f32>(1011f, 2593f, arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 2354f, arg_0.b.x, arg_0.b.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(arg_0.b.x - 737f), arg_0.b.x)))));
    let var_1 = reverseBits(arg_1);
    let var_2 = Struct_2(-u_input.c.zx & -abs(u_input.c.xy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(908f, -957f) - arg_0.b)))), arg_0.b));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))));
    global1 = array<bool, 7>();
    return var_0.a.x;
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    let var_0 = abs(u_input.c.x & _wgslsmith_sub_i32(~u_input.c.x, _wgslsmith_mult_i32(-2147483647i, u_input.c.x))) ^ _wgslsmith_mod_i32(_wgslsmith_mult_i32(59661i, _wgslsmith_sub_i32(21919i, u_input.c.x)) & _wgslsmith_sub_i32(2147483647i >> (0u % 32u), _wgslsmith_mod_i32(u_input.c.x, -24670i)), u_input.c.x);
    global0 = 195f;
    var var_1 = -1000f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_2(firstLeadingBit(vec2<i32>(-11036i, 17004i)), arg_0.b.a.xw), 16577u)))));
    let var_2 = u_input.d;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_3(2004f, Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(2032f, -1504f, 354f, -1082f), vec4<f32>(-874f, -284f, 1209f, -1255f)))))), -1443f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_0.a, var_0.a))));
    var var_2 = u_input.c;
    global0 = -250f;
    global1 = array<bool, 7>();
    let var_3 = Struct_2(var_2.yy, vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), 909f));
    var var_4 = countOneBits(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-firstTrailingBit(-1i), reverseBits(firstLeadingBit(var_3.a.x))), var_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(abs(1u)), 1u, 0u), ~vec3<u32>(_wgslsmith_add_u32(22448u, u_input.d.x), u_input.b << (u_input.a % 32u), ~1u)), u_input.a, vec3<i32>(-11673i, _wgslsmith_dot_vec2_i32(reverseBits(firstTrailingBit(vec2<i32>(var_3.a.x, -25374i))), _wgslsmith_add_vec2_i32(~vec2<i32>(-27913i, 32715i), vec2<i32>(u_input.c.x, var_2.x))), abs(firstLeadingBit(1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_3.b))));
}

