struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: vec2<f32> = vec2<f32>(1000f, 953f);

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(~u_input.a.x, 24u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1255f, 1295f));
    var var_2 = arg_3;
    let var_3 = arg_1;
    var var_4 = !(!(arg_3.d.b.x != 1u));
    return 2147483647i;
}

fn func_1() -> bool {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -202f, global0.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + global0.x), 475f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1101f, global1.x, global0.x))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2364f), _wgslsmith_f_op_f32(min(global0.x, global1.x)), 2612f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-487f, global1.x, 720f), vec3<f32>(-1188f, -406f, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(184f, 136f, global1.x)), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(886f, 297f, 180f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, 315f, -378f)))))));
    let var_0 = Struct_1(0i ^ func_2(u_input.a.yx ^ vec2<u32>(1u, u_input.a.x), Struct_1(-37242i, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~1u, Struct_2(_wgslsmith_f_op_f32(-686f + global0.x), global2[_wgslsmith_index_u32(20554u, 24u)], global2[_wgslsmith_index_u32(u_input.a.x << (57496u % 32u), 24u)], Struct_1(0i, vec3<u32>(5491u, 16087u, 48358u)))), u_input.a);
    global2 = array<Struct_1, 24>();
    var var_1 = ~_wgslsmith_mod_vec4_u32(~(~min(vec4<u32>(4294967295u, var_0.b.x, var_0.b.x, var_0.b.x), vec4<u32>(27845u, 1u, 44615u, 19872u))), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, u_input.a.x, var_0.b.x, abs(4294967295u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(5337u, var_0.b.x, 0u, 11115u), vec4<u32>(4294967295u, u_input.a.x, var_0.b.x, var_0.b.x), vec4<u32>(u_input.a.x, 26593u, var_0.b.x, 4294967295u))));
    global0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -248f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.x)), global1.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1220f, 1199f))))));
    return !((global0.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) + global1.x)) & (1u >= u_input.a.x));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1310f, 211f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) - _wgslsmith_f_op_f32(-global0.x)), global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, -369f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1005f, global1.x, 1000f, 1000f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, 441f, global1.x, global1.x), vec4<f32>(527f, 1035f, global0.x, global0.x)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-var_0.zz);
    global0 = var_0.wy;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(global1.x, var_0.x, any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(10244u, _wgslsmith_div_u32(~(~38800u), _wgslsmith_mod_u32(u_input.a.x, 13329u) << (u_input.a.x % 32u))), 24u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 24u)], global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a, ~vec3<u32>(u_input.a.x, 29238u, u_input.a.x)), countOneBits(firstTrailingBit(53820u))), 24u)]);
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1406f), var_1.a) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-255f + 1000f) - 1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))))));
    return _wgslsmith_f_op_f32(1383f + var_0.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: f32, arg_3: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3())));
    global2 = array<Struct_1, 24>();
    let var_1 = -vec2<i32>(func_2(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(arg_1, u_input.a.x), vec2<u32>(arg_1, u_input.a.x))), Struct_1(-30725i, select(u_input.a, u_input.a, true)), u_input.a.x, Struct_2(-493f, Struct_1(0i, u_input.a), Struct_1(15704i, u_input.a), global2[_wgslsmith_index_u32(~52393u, 24u)])), ~((0i >> (arg_1 % 32u)) & 6686i));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1002f)), global2[_wgslsmith_index_u32(54672u, 24u)], global2[_wgslsmith_index_u32(~1u << (_wgslsmith_dot_vec3_u32(~u_input.a, select(u_input.a >> (u_input.a % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(2208u, arg_1, 1u)), true)) % 32u), 24u)], global2[_wgslsmith_index_u32(arg_1 | 20494u, 24u)]);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-307f, -329f, 131f, 1208f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -865f, -829f, 1000f)))))));
    return _wgslsmith_f_op_f32(var_2.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-576f, 331f)), var_2.a)) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-584f - global0.x) * _wgslsmith_div_f32(-1162f, -259f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1493f, global0.x, -1309f));
    let var_1 = _wgslsmith_mult_vec2_i32(-vec2<i32>(1i, i32(-1i) * -2147483647i), (vec2<i32>(_wgslsmith_add_i32(-13485i, 1630i), i32(-1i) * -2147483647i) & _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(-26145i, -1i), vec2<i32>(1i, -2147483647i)))) << (countOneBits((vec2<u32>(0u, u_input.a.x) ^ vec2<u32>(u_input.a.x, u_input.a.x)) | ~u_input.a.zx) % vec2<u32>(32u)));
    var var_2 = vec3<bool>(all(vec3<bool>(true, true, func_1())) || all(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), false, func_4(vec3<bool>(true, _wgslsmith_add_i32(29946i, -2147483647i) > _wgslsmith_mod_i32(var_1.x, var_1.x), false), select(~(~65372u), abs(~u_input.a.x), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x), vec3<bool>(_wgslsmith_mult_i32(13778i, var_1.x) < 1i, _wgslsmith_f_op_f32(func_3()) <= var_0.x, true)));
    var var_3 = Struct_1(~1i, ~(~(~u_input.a)) ^ u_input.a);
    let var_4 = -vec4<i32>(var_1.x, ~(-var_1.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a, -22750i), -var_1), var_1.x, -reverseBits(var_3.a) | var_3.a);
    let var_5 = vec2<i32>(abs(_wgslsmith_div_i32(var_4.x, var_4.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a, ~var_4.x), var_1)) & _wgslsmith_mult_vec2_i32(-var_1 | _wgslsmith_sub_vec2_i32(select(var_1, vec2<i32>(var_1.x, 1i), var_2.x), vec2<i32>(var_1.x, var_4.x) >> (u_input.a.xx % vec2<u32>(32u))), -vec2<i32>(var_3.a, _wgslsmith_sub_i32(8567i, -1i)));
    var var_6 = var_2.yx;
    let var_7 = _wgslsmith_sub_u32(firstLeadingBit(1u), ~abs(~u_input.a.x));
    var var_8 = Struct_2(565f, Struct_1(var_5.x, _wgslsmith_mod_vec3_u32(vec3<u32>(63263u, 1u, var_7), var_3.b) >> ((~vec3<u32>(var_7, var_3.b.x, var_3.b.x) >> (var_3.b % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_1(-31493i, vec3<u32>(~0u >> (_wgslsmith_div_u32(60652u, 28972u) % 32u), var_3.b.x << (var_7 % 32u), var_3.b.x)), Struct_1(min(-5934i, var_4.x), ~(~(~var_3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(27957u, u_input.a.x, u_input.a.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_8.d.b.x, var_3.b.x, var_8.b.b.x), vec3<u32>(4107u, u_input.a.x, var_3.b.x)), ~1u, var_7)) | ~var_3.b.x);
}

