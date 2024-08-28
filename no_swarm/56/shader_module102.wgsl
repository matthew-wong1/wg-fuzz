struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec3<bool>, 9>;

var<private> global3: Struct_2;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_2(arg_1.a, global3.b);
    return arg_1.a.d;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>) -> bool {
    global0 = array<f32, 29>();
    var var_0 = Struct_2(global3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.b)));
    let var_1 = global3.a.c;
    var var_2 = -220f;
    let var_3 = true;
    return global3.a.c;
}

fn func_1() -> u32 {
    var var_0 = !((_wgslsmith_dot_vec4_u32(~u_input.c, ~u_input.b) > func_2(global3.a, Struct_2(Struct_1(global3.a.a, u_input.a.x, global3.a.c, 24763u), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 860f, 2157f)))) | (!(-8095i <= u_input.a.x) && !any(global2[_wgslsmith_index_u32(global3.a.d, 9u)])));
    let var_1 = reverseBits(_wgslsmith_mod_i32(reverseBits(_wgslsmith_sub_i32(_wgslsmith_mod_i32(18376i, u_input.a.x), firstTrailingBit(-53644i))), -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.a.xyx, u_input.a.xxz), _wgslsmith_sub_i32(-2147483647i, 1i), -1i)));
    var var_2 = Struct_2(Struct_1(var_1 > -max(var_1, -23572i), 1i, !any(vec2<bool>(global3.a.a, global3.a.c)), 63400u), _wgslsmith_f_op_vec3_f32(trunc(global3.b)));
    var var_3 = any(!select(select(!vec4<bool>(global3.a.c, var_2.a.c, true, var_2.a.a), select(vec4<bool>(true, false, var_2.a.a, true), vec4<bool>(var_2.a.c, true, var_2.a.a, var_2.a.c), vec4<bool>(global3.a.a, var_2.a.a, false, var_2.a.a)), true), select(!vec4<bool>(false, false, false, var_2.a.a), select(vec4<bool>(var_2.a.a, true, false, global3.a.a), vec4<bool>(var_2.a.a, global3.a.c, global3.a.a, true), global3.a.a), vec4<bool>(var_2.a.c, true, false, true)), !(!global3.a.a)));
    let var_4 = Struct_2(Struct_1(true, -(~u_input.a.x ^ _wgslsmith_div_i32(global3.a.b, -7408i)), func_3(vec4<u32>(4294967295u, u_input.c.x & 1u, 1u, 30947u << (1u % 32u)), abs(vec2<u32>(global3.a.d, global3.a.d)) << (u_input.c.yw % vec2<u32>(32u))), select(~firstLeadingBit(0u), ~5861u, any(vec2<bool>(global3.a.c, false)))), global3.b);
    return var_2.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(all(vec4<bool>(true, true, true, true)), -2147483647i ^ u_input.a.x, ~global3.a.d > abs(_wgslsmith_clamp_u32(global3.a.d, global3.a.d, 1u << (u_input.b.x % 32u))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b.x, ~global3.a.d, firstTrailingBit(global3.a.d & u_input.c.x)), func_1()));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-36519i, ~var_0.b, _wgslsmith_clamp_i32(0i, u_input.a.x, select(global3.a.b, u_input.a.x, true))), u_input.a.zwz), u_input.a.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.b, u_input.a.x, 44011i) | ~u_input.a.xxx, firstTrailingBit(-u_input.a.zwz)));
    var var_2 = var_0.a;
    var var_3 = var_1.xx;
    var var_4 = select(vec2<bool>(!all(vec3<bool>(false, false, false)), !(!(-156f <= global0[_wgslsmith_index_u32(4294967295u, 29u)]))), select(vec2<bool>(true, ~0i != _wgslsmith_add_i32(var_1.x, 1i)), vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(var_0.c, true), vec2<bool>(false, global3.a.a), true), var_0.d > global3.a.d)), true);
    let var_5 = select(vec4<bool>(((global3.a.d ^ 17143u) < 0u) || all(vec4<bool>(var_4.x, true, var_4.x, var_4.x)), var_4.x, var_0.c && func_3(max(u_input.b, vec4<u32>(global3.a.d, u_input.b.x, 57897u, u_input.c.x)), ~u_input.c.yw), all(select(vec2<bool>(true, var_4.x), select(vec2<bool>(global3.a.c, true), vec2<bool>(global3.a.c, false), vec2<bool>(false, true)), vec2<bool>(true, true)))), vec4<bool>(true, all(vec3<bool>(select(var_4.x, global3.a.a, global3.a.a), true, !global3.a.c)), !var_0.c, !global3.a.c), !select(select(vec4<bool>(var_4.x, true, var_0.a, global3.a.a), select(vec4<bool>(global3.a.c, var_4.x, true, var_4.x), vec4<bool>(var_4.x, false, true, var_0.a), false), var_0.c), !(!vec4<bool>(global3.a.a, var_4.x, false, var_0.c)), vec4<bool>(any(global2[_wgslsmith_index_u32(6346u, 9u)]), global3.a.a, true, select(var_0.c, true, global3.a.a))));
    var_3 = -vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-45344i, -34878i), -27918i) ^ -var_0.b, ~(-(var_1.x & u_input.a.x)));
    let var_6 = var_0.a;
    global3 = Struct_2(Struct_1(func_3(firstLeadingBit(u_input.b), max(~u_input.c.ww, _wgslsmith_mult_vec2_u32(u_input.c.wy, u_input.c.yx))), global3.a.b, all(select(!var_5, select(var_5, vec4<bool>(global3.a.c, var_5.x, true, var_5.x), var_5), !var_5)), ~4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 29u)] - 1000f)))))), 1i, 46205i >> ((~var_0.d | 1u) % 32u), _wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(-59344i >> (global3.a.d % 32u), 2147483647i, 1i), ~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b, -33599i), vec2<i32>(u_input.a.x, var_3.x)), u_input.a.ww), -1i));
}

