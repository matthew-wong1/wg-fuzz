struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-133f, -1067f));

var<private> global1: vec3<bool>;

var<private> global2: array<u32, 1>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = Struct_1(vec2<f32>(1036f, arg_0));
    var var_1 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~(~(~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], u_input.c)))), 1u)], 1u)];
    var var_2 = Struct_1(var_0.a);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, -1215f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1300f, 177f)))))));
    let var_4 = min(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i)), -vec4<i32>(-42352i, u_input.b.x, 1i, 2147483647i) | (vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & u_input.b)), u_input.b.x) << (~18526u % 32u);
    return arg_1;
}

fn func_4(arg_0: u32) -> i32 {
    global1 = vec3<bool>(select(any(!select(global1.xz, vec2<bool>(global1.x, true), global1.zy)), global1.x, !(_wgslsmith_f_op_f32(global0.a.x * 1000f) >= _wgslsmith_f_op_f32(min(global0.a.x, global0.a.x)))), all(select(select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(false, global1.x, false, global1.x), global1.x), !(!vec4<bool>(global1.x, global1.x, global1.x, global1.x)), select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(false, false, false, global1.x), vec4<bool>(global1.x, false, true, true)))), true);
    var var_0 = global0.a.x;
    let var_1 = !vec4<bool>(false, true, ~(1u & arg_0) >= global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(62639u, _wgslsmith_mult_u32(1u, 0u)), 1u)], any(global1.zy));
    var var_2 = vec2<u32>(select(0u, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0, arg_0), 0u), false), 103504u);
    var var_3 = var_1.xx;
    return _wgslsmith_dot_vec2_i32(u_input.b.yz, _wgslsmith_add_vec2_i32(u_input.b.zw, -u_input.b.xw << (vec2<u32>(33138u, u_input.c) % vec2<u32>(32u)))) << (59723u % 32u);
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    let var_0 = func_4(~func_3(-1598f, ~u_input.a.x)) < (u_input.b.x & (u_input.b.x & _wgslsmith_mult_i32(1i << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2111u, 1u)], 1u)] % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))));
    let var_1 = ~(~vec4<u32>(max(~u_input.a.x, reverseBits(1u)), ~(u_input.a.x << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)] % 32u)), _wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(global2[_wgslsmith_index_u32(112623u, 1u)], 4294967295u, 1u, u_input.a.x)), u_input.a.x << (86941u % 32u)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(global0.a)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(144f, 1013f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-480f, arg_0.x)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a - vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return var_2.a.x;
}

fn func_5(arg_0: vec4<f32>) -> Struct_1 {
    global1 = vec3<bool>(true, true, any(vec2<bool>(_wgslsmith_f_op_f32(min(-2056f, global0.a.x)) < -252f, any(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, global1.x, true), global1.x)))));
    global0 = Struct_1(global0.a);
    var var_0 = Struct_1(vec2<f32>(-866f, arg_0.x));
    let var_1 = Struct_1(arg_0.xz);
    let var_2 = global2[_wgslsmith_index_u32(14211u, 1u)] << (global2[_wgslsmith_index_u32(func_3(-764f, 4294967295u), 1u)] % 32u);
    return var_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = u_input.a.zzx;
    return func_5(vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, 301f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, -1067f) * vec3<f32>(-2107f, 711f, global0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global0.a.x) + global0.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f))), -1130f, _wgslsmith_f_op_f32(global0.a.x * -1396f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<i32>(u_input.b.x >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 1u)], 1u)] % 32u), u_input.b.x, i32(-1i) * -2147483647i), _wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_mod_vec4_i32(max(u_input.b, u_input.b), min(vec4<i32>(-29895i, -11943i, u_input.b.x, u_input.b.x), u_input.b)) >> (max(u_input.a, vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, u_input.a.x) >> (vec4<u32>(0u, u_input.a.x, global2[_wgslsmith_index_u32(41081u, 1u)], 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), global1.yx);
    var var_1 = var_0.a.x;
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1162f, global0.a.x, -429f, global0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -182f, var_0.a.x, global0.a.x) - vec4<f32>(global0.a.x, var_0.a.x, var_0.a.x, global0.a.x))))));
    var var_3 = -140f;
    var var_4 = func_1(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-39129i, u_input.b.x, u_input.b.x), u_input.b.wzz), func_4(0u), -56525i) >> (abs(_wgslsmith_add_vec3_u32(u_input.a.xzz, vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], 14782u, u_input.c))) % vec3<u32>(32u)), u_input.b.ywx), _wgslsmith_mult_i32(u_input.b.x, -abs(~u_input.b.x)), global1.yy);
    let x = u_input.a;
    s_output = StorageBuffer(max(1i, _wgslsmith_mod_i32(28405i, u_input.b.x)), abs(_wgslsmith_sub_i32(~(-2147483647i), u_input.b.x)), var_4.a, u_input.a.x, -16105i);
}

