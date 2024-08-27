struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: array<u32, 22>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<u32, 22>();
    var var_0 = 78223u;
    var_0 = ~24220u;
    var var_1 = 1u;
    var var_2 = u_input.b;
    return arg_0;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-2147483647i), 2147483647i), _wgslsmith_sub_vec2_i32(~arg_3.a, vec2<i32>(1941i, arg_3.a.x))), arg_1.a.x | ~(~arg_1.a.x));
    global0 = !arg_2;
    let var_1 = func_2(func_2(arg_3));
    var var_2 = func_2(arg_3).c;
    let var_3 = arg_1;
    return 37386u;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global0 = !(!select(!vec3<bool>(true, false, global0.x), select(select(vec3<bool>(true, true, global0.x), vec3<bool>(false, false, global0.x), global0.x), vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, true)), !(!vec3<bool>(true, global0.x, global0.x))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-632f, arg_2.b.x))))), arg_2.b.x, _wgslsmith_f_op_f32(-arg_2.b.x), func_2(arg_2).b.x));
    let var_1 = 1i;
    var var_2 = vec4<u32>(abs(_wgslsmith_div_u32(~1u, ~46148u)), 36357u, ~0u, 1672u);
    let var_3 = select(-vec4<i32>(arg_2.a.x, arg_1.a.x, arg_1.a.x, firstTrailingBit(_wgslsmith_mult_i32(arg_3, 49977i))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(arg_1.a.x, 4188i, -39168i, arg_3)), _wgslsmith_mod_vec4_i32(vec4<i32>(21523i, arg_1.a.x, -33303i, 0i), vec4<i32>(var_1, var_1, arg_3, arg_2.a.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, var_2.x, var_2.x, 4294967295u), u_input.e) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_clamp_i32(abs(arg_2.a.x), arg_3, var_1 ^ arg_3), -2147483647i, -(i32(-1i) * -1i), arg_2.a.x)), !(!select(vec4<bool>(true, true, true, true), !vec4<bool>(true, global0.x, false, true), !vec4<bool>(global0.x, global0.x, global0.x, true))));
    return arg_1;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(vec3<u32>(_wgslsmith_sub_u32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-787f, -291f) - vec2<f32>(-155f, 817f)), Struct_1(vec2<i32>(-1i, 50565i), vec2<f32>(-1000f, 186f), vec2<u32>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(14569u, 22u)])), !vec3<bool>(global0.x, global0.x, true), func_2(Struct_1(vec2<i32>(-1i, 0i), vec2<f32>(1000f, -2300f), u_input.e.xy))), ~_wgslsmith_add_u32(u_input.a, 1u)), abs(7535u), u_input.b), func_2(Struct_1(firstLeadingBit(vec2<i32>(4401i, 65804i) >> (u_input.e.ww % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, 1038f)), -2208f), ~u_input.e.zy)), Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(-57795i, 1i)), -max(vec2<i32>(16568i, 4232i), vec2<i32>(28301i, 0i))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-468f, 1102f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(315f, -756f))), vec2<bool>(false, global0.x))), ~vec2<u32>(26874u, _wgslsmith_dot_vec3_u32(u_input.e.xyz, vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], u_input.b)))), 1i);
    global1 = array<u32, 22>();
    global0 = vec3<bool>(true, true, true);
    let var_1 = vec3<i32>(~var_0.a.x, var_0.a.x, ~((var_0.a.x & 30655i) << (4294967295u % 32u)));
    let var_2 = Struct_1(abs(-var_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x)), firstLeadingBit(vec2<u32>(~var_0.c.x ^ (u_input.d & 30603u), global1[_wgslsmith_index_u32(var_0.c.x, 22u)])));
    return func_2(func_2(Struct_1(abs(vec2<i32>(0i, 11665i)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.b.x, -191f))), abs(~var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-706f))), 106f, true)) + _wgslsmith_f_op_f32(round(928f))));
    global1 = array<u32, 22>();
    global1 = array<u32, 22>();
    let var_1 = -(_wgslsmith_div_i32(firstTrailingBit(1i), select(~(-30029i), 2147483647i, true)) << (_wgslsmith_div_u32(abs(global1[_wgslsmith_index_u32(29257u, 22u)] & 4294967295u), u_input.a) % 32u));
    var var_2 = vec3<bool>(global0.x, global0.x, all(!vec2<bool>(all(vec3<bool>(true, global0.x, true)), global1[_wgslsmith_index_u32(u_input.a, 22u)] <= global1[_wgslsmith_index_u32(0u, 22u)])));
    var var_3 = func_1();
    var var_4 = Struct_1(~_wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, 0i), ~var_3.a, vec2<i32>(var_3.a.x, -var_3.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), var_3.b.x)))), ~u_input.e.ww);
    let var_5 = func_4(~vec3<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.e.zzz, u_input.e.yzz, vec3<u32>(4294967295u, u_input.a, 4294967295u)), abs(u_input.e.xwy)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 54938u), _wgslsmith_mod_u32(37909u, 46662u), global1[_wgslsmith_index_u32(~var_4.c.x, 22u)])), Struct_1(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_4.a.x, var_4.a.x), vec4<i32>(var_3.a.x, -29390i, var_3.a.x, var_1))) >> ((select(var_3.c, vec2<u32>(0u, 0u), vec2<bool>(global0.x, global0.x)) & _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, 99832u), u_input.e.yx)) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(188f, 327f)), var_0)), _wgslsmith_f_op_f32(-var_4.b.x)), vec2<u32>(global1[_wgslsmith_index_u32(0u, 22u)], 1u)), Struct_1(var_4.a | ~(~vec2<i32>(var_3.a.x, 0i)), func_2(Struct_1(-var_4.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.b.x, var_0))), u_input.e.wy)).b, u_input.e.zy), -14084i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_5.a), 9839u);
}

