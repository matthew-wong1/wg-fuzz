struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 28>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(0u, 28u)];
    global0 = !all(vec4<bool>(true, true, true, true));
    global1 = array<u32, 28>();
    var var_1 = all(vec4<bool>(any(vec2<bool>(true, false)) || true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true)), true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false)))) & false;
    let var_2 = Struct_1(vec3<bool>(true, !(reverseBits(1u) > global1[_wgslsmith_index_u32(0u, 28u)]), true | (u_input.c.x < countOneBits(-38792i))), global1[_wgslsmith_index_u32(max((72767u | u_input.b.x) | ~22865u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 31747u, global1[_wgslsmith_index_u32(u_input.b.x, 28u)]))), 28u)] >= min(~_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(u_input.b.x, 28u)]), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(122u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41004u, 28u)], 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)])), vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(10426u, 28u)], global1[_wgslsmith_index_u32(4432u, 28u)], u_input.b.x))), -select(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(40007i, u_input.a, 13041i, u_input.a), u_input.c, u_input.c)), ~(u_input.c << (vec4<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 28u)], 35820u, 4294967295u) % vec4<u32>(32u))), vec4<bool>(0i <= u_input.c.x, any(vec2<bool>(true, true)), true, true)));
    return -2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    global0 = !(!arg_0.b);
    var var_0 = ~vec2<i32>(0i, ~(-func_3()));
    let var_1 = !(!(!arg_0.a.xx));
    var_0 = arg_0.c.wy;
    var var_2 = 13001i;
    return firstTrailingBit(78192i);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> f32 {
    global1 = array<u32, 28>();
    var var_0 = arg_1;
    let var_1 = Struct_1(!arg_1.a, var_0.a.x, vec4<i32>(reverseBits(u_input.c.x), ~(~(0i ^ var_0.c.x)), arg_1.c.x, _wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(func_2(Struct_1(var_0.a, false, arg_1.c), global1[_wgslsmith_index_u32(u_input.b.x, 28u)]), select(u_input.c.x, arg_0, false)))));
    global0 = select(false, any(vec2<bool>(arg_1.a.x, select(all(vec4<bool>(false, true, true, arg_1.b)), any(vec2<bool>(var_1.b, var_0.a.x)), all(vec4<bool>(var_0.b, true, var_1.a.x, false))))), var_1.a.x);
    global1 = array<u32, 28>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(813f)) + _wgslsmith_div_f32(-745f, -530f)))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: i32) -> u32 {
    var var_0 = ~1u;
    var var_1 = 0i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(func_4(_wgslsmith_div_i32(-2147483647i, func_2(Struct_1(vec3<bool>(arg_0.x, true, false), true, vec4<i32>(u_input.c.x, u_input.c.x, -1i, u_input.c.x)), 0u)), Struct_1(!vec3<bool>(false, arg_0.x, true), arg_0.x, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 0i, arg_2, -33712i), vec4<i32>(-1i, 1i, 20122i, 1771i))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1363f))), _wgslsmith_div_f32(-152f, -207f)))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, -540f), vec3<f32>(-414f, 652f, var_2.x)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_f_op_f32(357f + -1269f))))));
    let var_3 = Struct_1(select(!select(!vec3<bool>(arg_0.x, true, true), !vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, false, arg_0.x)), vec3<bool>(false, false || arg_0.x, select(arg_0.x, true, true)), arg_0.x), !all(arg_0), vec4<i32>(arg_1, -_wgslsmith_sub_i32(-50848i, arg_1), -_wgslsmith_clamp_i32(u_input.a, arg_1, 244i) | (min(arg_2, -2147483647i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], u_input.b.x), u_input.b.yz) % 32u)), arg_2));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.c.x, -32325i, 6361i);
    global1 = array<u32, 28>();
    let var_1 = ~_wgslsmith_mult_vec4_u32(firstTrailingBit(reverseBits(firstTrailingBit(vec4<u32>(4294967295u, 78082u, 21990u, global1[_wgslsmith_index_u32(u_input.b.x, 28u)])))), _wgslsmith_add_vec4_u32(abs(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 0u, 1u, 65468u), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], 47589u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 28u)], 0u))) << (vec4<u32>(~global1[_wgslsmith_index_u32(4294967295u, 28u)], func_1(vec2<bool>(false, true), -1i, -13384i), 59802u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12314u, 28u)], 28u)]) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_sub_i32(var_0.x, ~(-(var_0.x & _wgslsmith_mult_i32(var_0.x, var_0.x))));
    global1 = array<u32, 28>();
    global0 = !all(vec4<bool>(any(vec2<bool>(true, false)), true, true, true));
    var var_3 = select(~reverseBits(abs(vec3<i32>(1i, u_input.a, 41766i))), vec3<i32>(~var_2, -2147483647i, var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-479f * _wgslsmith_f_op_f32(trunc(1000f)))) > 1096f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-419f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1256f * -707f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1349f, -1068f)), _wgslsmith_f_op_f32(-2426f + _wgslsmith_f_op_f32(f32(-1f) * -672f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1039f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(688f - 1397f), -255f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(542f, 315f, 1000f))) * vec3<f32>(_wgslsmith_div_f32(-187f, -1162f), -269f, _wgslsmith_div_f32(-132f, 976f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1328f, 850f, -1525f)))), _wgslsmith_div_vec3_f32(vec3<f32>(-599f, -515f, -1441f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-714f, 1427f, -146f) - vec3<f32>(-2823f, 2078f, 208f))))));
}

