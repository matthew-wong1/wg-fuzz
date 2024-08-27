struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<vec4<f32>, 18>;

var<private> global2: vec4<i32> = vec4<i32>(28140i, -22275i, 1i, 0i);

var<private> global3: vec3<f32> = vec3<f32>(-1000f, 1118f, 1000f);

var<private> global4: array<u32, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32) -> i32 {
    global1 = array<vec4<f32>, 18>();
    var var_0 = Struct_1(-global2.zz, ~vec4<i32>(global2.x, global2.x, -(~(-1i)), _wgslsmith_add_i32(902i, global2.x) | (i32(-1i) * -20935i)));
    global2 = ~abs(var_0.b);
    var var_1 = firstLeadingBit(global2.xxy);
    var var_2 = global0[_wgslsmith_index_u32(abs(~(~0u)), 25u)];
    return -((i32(-1i) * -28419i) >> (global4[_wgslsmith_index_u32(u_input.b, 30u)] % 32u));
}

fn func_3() -> i32 {
    var var_0 = true;
    let var_1 = global3.x;
    let var_2 = (_wgslsmith_add_u32(~(~u_input.a.x), u_input.b) & u_input.b) == (1u >> (select(reverseBits(54876u << (u_input.a.x % 32u)), firstLeadingBit(~1u), all(vec3<bool>(false, false, true))) % 32u));
    let var_3 = -1215f;
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-371f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-573f - 793f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3.x, global3.x), _wgslsmith_f_op_f32(round(-997f)))))) - _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f) - _wgslsmith_f_op_f32(100f * var_3)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x + -1783f), _wgslsmith_f_op_f32(global3.x - -850f)))));
    return max(-firstTrailingBit(2147483647i | global2.x) ^ global2.x, -5152i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> i32 {
    global1 = array<vec4<f32>, 18>();
    var var_0 = arg_0;
    let var_1 = max(max(50005u, 1u >> (global4[_wgslsmith_index_u32(~u_input.a.x, 30u)] % 32u)), u_input.b);
    var var_2 = arg_3;
    global2 = vec4<i32>(-firstTrailingBit(-arg_0.b.x | min(arg_2.b.x, -7521i)), -global2.x, firstLeadingBit(max(max(arg_2.a.x << (var_1 % 32u), func_2(413f)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_2.b.x, arg_2.b.x, -39674i), func_3()))), _wgslsmith_add_i32(-global2.x, arg_1.b.x));
    return -1081i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 18>();
    global2 = ~max(vec4<i32>(func_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 30u)], 30u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)]), 25u)], Struct_1(global2.xw, vec4<i32>(global2.x, global2.x, global2.x, -1i)), global0[_wgslsmith_index_u32(4294967295u, 25u)], true), global2.x, -6212i, 1i), _wgslsmith_div_vec4_i32(-vec4<i32>(13019i, -2147483647i, global2.x, global2.x) << (_wgslsmith_add_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 30u)], 4294967295u, 0u, 49060u), vec4<u32>(3626u, u_input.a.x, 37014u, 0u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, global2.x, global2.x, global2.x), select(vec4<i32>(global2.x, global2.x, -38638i, global2.x), vec4<i32>(26451i, global2.x, global2.x, global2.x), vec4<bool>(false, true, false, false)))));
    let var_0 = u_input.a.yz;
    var var_1 = Struct_1(abs(global2.xx), -_wgslsmith_sub_vec4_i32(firstTrailingBit(-vec4<i32>(global2.x, global2.x, global2.x, global2.x)), min(~vec4<i32>(-52730i, global2.x, 2147483647i, global2.x), vec4<i32>(1i, -2147483647i, global2.x, global2.x))));
    var var_2 = false;
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, -179f)), _wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global3.x, -1000f), vec3<f32>(global3.x, -1000f, global3.x))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~1u, ~4294967295u, ~(78678u >> (var_0.x % 32u))), countOneBits(~vec4<u32>(1u, global4[_wgslsmith_index_u32(u_input.a.x, 30u)], u_input.a.x, u_input.b))), 30u)], 18u)] + global1[_wgslsmith_index_u32((countOneBits(select(u_input.a.x, 0u, true)) | _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 0u), vec2<u32>(var_0.x, 4294967295u)), u_input.a.xz >> (vec2<u32>(var_0.x, u_input.b) % vec2<u32>(32u)))) >> (_wgslsmith_clamp_u32(var_0.x, ~30764u, _wgslsmith_div_u32(3142u, var_0.x << (global4[_wgslsmith_index_u32(11998u, 30u)] % 32u))) % 32u), 18u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.xx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.yx))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(var_3.zw, _wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, -569f), global3.yz))), global3.yx, select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), all(vec4<bool>(true, true, false, true)))))));
}

