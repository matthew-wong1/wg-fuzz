struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(301f, 1000f, -113f, 553f, -1030f, 661f, -1949f, 265f, -336f, -250f, -263f, -551f, -1027f, -1323f, 1194f, 112f, -939f, 873f, -2222f, 1000f, -1171f, 607f, 930f, -539f);

var<private> global1: vec2<i32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_mult_u32(min(max(u_input.c, 1u) >> (0u % 32u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, arg_3.a.x, 54646u), arg_3.a)) ^ 1u), ~(~(~(~4294967295u))));
    global1 = _wgslsmith_sub_vec2_i32(vec2<i32>(global1.x, ~_wgslsmith_div_i32(2130i, _wgslsmith_add_i32(global1.x, global1.x))), vec2<i32>(min(u_input.d.x, u_input.a) >> (abs(u_input.c) % 32u), arg_2.x) >> (~select(max(arg_3.a.zz, vec2<u32>(arg_0, arg_3.a.x)), _wgslsmith_clamp_vec2_u32(arg_3.a.yw, arg_3.a.yx, arg_3.a.wy), !vec2<bool>(true, arg_1)) % vec2<u32>(32u)));
    let var_1 = arg_3.a.zz;
    let var_2 = Struct_1(_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(arg_3.a, select(vec4<u32>(var_1.x, arg_3.a.x, 35440u, 0u), arg_3.a, vec4<bool>(arg_1, arg_1, true, false))), vec4<u32>(~(44410u ^ u_input.e), arg_0, 18154u, ~(~1u))));
    var_0 = select(_wgslsmith_dot_vec4_u32(~firstTrailingBit(~vec4<u32>(14954u, 29330u, 33096u, arg_3.a.x)), firstLeadingBit(~vec4<u32>(arg_3.a.x, var_1.x, 4294967295u, 55115u))), 142393u, arg_1);
    return any(!(!vec3<bool>(arg_1, true, arg_1)));
}

fn func_2() -> u32 {
    global1 = select(~u_input.d.xw, vec2<i32>(_wgslsmith_div_i32(~u_input.d.x, u_input.d.x), reverseBits(0i)), !func_3(u_input.c & u_input.c, false, vec2<i32>(global1.x, 0i), Struct_1(vec4<u32>(0u, 22358u, 0u, 4294967295u)))) ^ -(~u_input.d.zz);
    let var_0 = Struct_1(reverseBits(abs(abs(firstLeadingBit(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.e))))));
    global1 = vec2<i32>(0i, ~select(-(~0i), 72243i, -1100f == global0[_wgslsmith_index_u32(max(1u, 66904u), 24u)]));
    global0 = array<f32, 24>();
    global1 = u_input.d.zy;
    return ~0u;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>) -> Struct_1 {
    global1 = abs(-min(countOneBits(countOneBits(vec2<i32>(1i, arg_1.x))), min(-vec2<i32>(41455i, -1i), abs(u_input.d.ww))));
    let var_0 = Struct_1(~(~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 26003u, u_input.c, 0u), vec4<u32>(29167u, arg_0.x, arg_0.x, 1u)))));
    global1 = u_input.d.zx << (~(~min(reverseBits(vec2<u32>(4294967295u, var_0.a.x)), var_0.a.zy)) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(671f + _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~50378u, 24u)])));
    let var_2 = true;
    return var_0;
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_1(vec4<u32>(0u, 0u, u_input.c, u_input.e));
    let var_1 = func_4(vec2<u32>(0u >> (var_0.a.x % 32u), ~(13801u ^ func_2())), _wgslsmith_mult_vec3_i32(-u_input.d.yww >> (vec3<u32>(u_input.c, 43904u, var_0.a.x) % vec3<u32>(32u)), ~reverseBits(vec3<i32>(u_input.b, global1.x, -6948i))) >> (reverseBits(var_0.a.xzx) % vec3<u32>(32u)));
    global0 = array<f32, 24>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1434f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_0.a.x, 24u)])))), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, u_input.c), 24u)], _wgslsmith_f_op_f32(947f + -1715f))), _wgslsmith_div_f32(1944f, global0[_wgslsmith_index_u32(u_input.c, 24u)]), -1049f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(365f, global0[_wgslsmith_index_u32(23198u, 24u)], 787f, global0[_wgslsmith_index_u32(u_input.e, 24u)])))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(~1u, 24u)], _wgslsmith_f_op_f32(var_2.x + var_2.x), 931f, var_2.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1254f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x - 971f), _wgslsmith_f_op_f32(1208f - global0[_wgslsmith_index_u32(4294967295u, 24u)]))))));
    return vec2<u32>(3724u, _wgslsmith_add_u32(~(~var_0.a.x), _wgslsmith_mult_u32(~0u, ~firstTrailingBit(var_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-_wgslsmith_add_i32(~9820i, 2016i | _wgslsmith_mult_i32(global1.x, global1.x)));
    global1 = abs(vec2<i32>(global1.x, global1.x));
    let var_1 = Struct_1(~firstLeadingBit(reverseBits(vec4<u32>(u_input.e, u_input.e, u_input.e, 4294967295u))) << (~vec4<u32>(~51518u, min(u_input.c, 35672u), u_input.e, 46023u) % vec4<u32>(32u)));
    global0 = array<f32, 24>();
    let var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(32874u, ~var_1.a.x), func_1()), vec2<u32>(28778u, 69004u));
    var var_3 = Struct_1(vec4<u32>(var_2.x, u_input.e, ~(~u_input.c), var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, 2147483647i, ~(abs(u_input.d.ywy) << (select(firstTrailingBit(var_1.a.wyz), var_1.a.wwy, false) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(u_input.c, 26555u), (35258u << (var_3.a.x % 32u)) << (var_3.a.x % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(59644u, 4294967295u), reverseBits(var_3.a.ww))), vec3<u32>(countOneBits(~var_2.x), u_input.e, var_3.a.x), _wgslsmith_sub_vec3_u32(countOneBits(var_3.a.zxx), var_1.a.zyw)));
}

