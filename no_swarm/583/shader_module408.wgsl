struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32>;

var<private> global2: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> u32 {
    var var_0 = global1.xy;
    global1 = u_input.d.yzz;
    global0 = Struct_1(i32(-1i) * -2147483647i);
    let var_1 = Struct_1(global2.a);
    let var_2 = Struct_1(var_1.a);
    return 0u;
}

fn func_3() -> vec3<bool> {
    global1 = u_input.d.xyx;
    global0 = Struct_1(global1.x);
    global2 = Struct_1(global2.a);
    let var_0 = Struct_1(2207i);
    global2 = Struct_1(global0.a);
    return vec3<bool>(true || all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false)), !(!all(vec3<bool>(false, true, false)) | !all(vec4<bool>(true, false, true, false))), true);
}

fn func_1() -> vec2<u32> {
    var var_0 = vec4<u32>(4294967295u, 0u, 1u, func_2());
    let var_1 = -u_input.d;
    var var_2 = vec2<i32>(global2.a, -7722i);
    let var_3 = !vec2<bool>(-1i > reverseBits(global0.a), true);
    global1 = _wgslsmith_mod_vec3_i32(select(-_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2145i, 0i, var_2.x), vec3<i32>(global2.a, u_input.d.x, var_2.x)), var_1.wwy | vec3<i32>(global2.a, 35613i, 11334i)), u_input.d.zwy, select(!(!vec3<bool>(var_3.x, var_3.x, true)), !vec3<bool>(var_3.x, false, var_3.x), all(func_3()))), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.d.xww, u_input.d.wzw), global0.a, ~(~(~2147483647i))));
    return vec2<u32>(16050u, 29258u);
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    global0 = Struct_1(-40809i);
    var var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(29726u, ~arg_0.x) << (select(min(arg_0, arg_0), _wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_0.x), arg_0), true) % vec2<u32>(32u)), arg_0), _wgslsmith_div_u32(1u, 1u), select(4294967295u, 8710u, true) & arg_0.x);
    let var_1 = vec3<bool>(false, any(!func_3().yy), !(_wgslsmith_div_u32(~arg_0.x, _wgslsmith_div_u32(4294967295u, var_0.x)) != arg_0.x));
    var var_2 = ~0u;
    var var_3 = arg_0.x;
    return Struct_1(-(~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -43927i, global2.a), u_input.d.yzw), _wgslsmith_dot_vec2_i32(u_input.d.zy, u_input.d.zw))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global1 = reverseBits(u_input.d.xxx | _wgslsmith_div_vec3_i32(max(abs(vec3<i32>(20537i, global2.a, global1.x)), vec3<i32>(global2.a, -7700i, -2147483647i)), u_input.d.wwz));
    let var_0 = Struct_1(8033i);
    var var_1 = func_4(vec2<u32>(abs(1u), 1u));
    global1 = min(_wgslsmith_mod_vec3_i32(select(u_input.d.zxx, reverseBits(vec3<i32>(0i, -1i, 2993i)) ^ _wgslsmith_mult_vec3_i32(u_input.d.zzz, u_input.d.zzw), any(select(vec4<bool>(arg_2, arg_2, false, false), vec4<bool>(false, arg_2, true, arg_2), vec4<bool>(arg_2, false, arg_2, arg_2)))), vec3<i32>(arg_1.a, -2147483647i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.a, arg_0.a, global2.a)), vec3<i32>(-21306i, 71985i, 20374i)))), ~(vec3<i32>(arg_0.a, global0.a, select(arg_1.a, -9101i, arg_2)) & u_input.d.zwz));
    let var_2 = var_1.a;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(1i, u_input.d.x);
    global0 = func_5(func_4(func_1()), Struct_1(~(-1i)), true);
    var var_1 = 0u;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(186f, 608f)))))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -192f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -989f))))));
    var var_3 = _wgslsmith_add_u32(select(~_wgslsmith_mult_u32(1u, 91384u), 4294967295u, all(!func_3())), (_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), ~vec2<u32>(1u, 4294967295u)) | 1u) | _wgslsmith_div_u32(~33058u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), max(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 0u, 1u)))));
    var_0 = global1.yy >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(~(~49937u), ~_wgslsmith_mult_u32(1u, 6359u)), vec2<u32>(1u, 1u), func_1()) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a, -1i), ~(global2.a | -18050i)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(73827i, 8719i, -26331i, u_input.b) | u_input.d, vec4<i32>(global0.a, global0.a, u_input.b, global0.a)), reverseBits(vec4<i32>(11878i, u_input.a, -2147483647i, -47280i)))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(global0.a, global0.a, 13055i), _wgslsmith_mod_vec3_i32(u_input.d.zyx, vec3<i32>(-1i, 1i, global1.x)), vec3<i32>(_wgslsmith_mult_i32(1i, 1i), func_5(Struct_1(24560i), Struct_1(global0.a), true).a, ~global0.a)) | u_input.d.wwz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)) - _wgslsmith_f_op_f32(round(var_2.x))), -631f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) - _wgslsmith_f_op_f32(sign(var_2.x))))));
}

