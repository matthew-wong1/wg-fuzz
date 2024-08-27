struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> bool {
    var var_0 = Struct_3(arg_0.a, 15627u, arg_0.c, arg_0.d);
    var var_1 = arg_0.d;
    var_0 = arg_0;
    let var_2 = var_0.d;
    var_1 = var_0.d;
    return false;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0, -636f) - vec3<f32>(arg_0, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, arg_0, arg_0))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -357f)), vec3<f32>(arg_0, -883f, -1119f))))));
    var var_1 = abs(~u_input.d);
    var var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(~(vec3<u32>(16263u, var_1.x, 6169u) ^ var_1.zxw), ~(~vec3<u32>(u_input.c, 1u, arg_1.x))), -1i, abs(firstTrailingBit(4294967295u)), arg_1.x != countOneBits(0u)), vec2<f32>(671f, _wgslsmith_f_op_f32(-var_0.x)));
    let var_3 = arg_2.x;
    var_1 = reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(47260u, 4294967295u, 0u, var_2.a.a), u_input.d), u_input.d)) << (~u_input.d % vec4<u32>(32u));
    return select(!vec3<bool>(!var_2.a.d, var_2.a.d, var_2.a.d), vec3<bool>(true, var_2.a.d, var_2.a.d), !select(!select(vec3<bool>(true, var_2.a.d, var_2.a.d), vec3<bool>(var_2.a.d, var_2.a.d, false), vec3<bool>(true, true, var_2.a.d)), select(!vec3<bool>(var_2.a.d, var_2.a.d, false), select(vec3<bool>(false, var_2.a.d, var_2.a.d), vec3<bool>(true, var_2.a.d, false), true), vec3<bool>(false, var_2.a.d, var_2.a.d)), vec3<bool>(true, func_3(Struct_3(vec2<bool>(true, true), var_2.a.c, var_2.a.d, Struct_2(var_2.a, vec2<f32>(486f, var_2.b.x))), vec3<f32>(1340f, -782f, arg_0)), any(vec3<bool>(false, true, false)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_add_u32(u_input.d.x & _wgslsmith_dot_vec2_u32(vec2<u32>(select(4294967295u, u_input.a, arg_0.x), 0u), u_input.e.xx), ~u_input.a);
    let var_1 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 24133u, firstLeadingBit(26761u), u_input.b.x) >> ((vec4<u32>(u_input.c, u_input.d.x, var_0, var_0) << (u_input.d % vec4<u32>(32u))) % vec4<u32>(32u)), select(u_input.d, ~vec4<u32>(u_input.d.x, u_input.c, 4294967295u, 0u), vec4<bool>(any(arg_0), arg_1, false, arg_1 | false)));
    var var_2 = !select(!(!vec3<bool>(false, false, arg_0.x)), select(vec3<bool>(u_input.b.x < 4294967295u, true, arg_1), vec3<bool>(arg_0.x, true, true), true), select(!(!vec3<bool>(arg_1, arg_0.x, arg_0.x)), func_2(1508f, u_input.e, -vec3<i32>(20392i, 6962i, 1i)), !(!vec3<bool>(arg_1, arg_0.x, arg_1))));
    let var_3 = _wgslsmith_mult_u32(var_1.x, ~var_1.x);
    return countOneBits(countOneBits(u_input.d));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = ~_wgslsmith_mult_vec3_u32(~select(arg_1.zzy, vec3<u32>(53317u, u_input.d.x, arg_1.x), vec3<bool>(arg_2.c, false, false)) & abs(u_input.e), ~u_input.d.zzy);
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(7494u & ~arg_2.b, firstLeadingBit(_wgslsmith_sub_u32(reverseBits(arg_1.x), var_0.x)), min(~reverseBits(98253u), arg_2.d.a.c)), u_input.e);
    var_0 = _wgslsmith_mult_vec3_u32(abs(select((arg_1.wzz & var_1) | vec3<u32>(var_1.x, var_1.x, var_0.x), firstTrailingBit(arg_1.wxx), select(!vec3<bool>(false, arg_2.d.a.d, false), !vec3<bool>(false, true, arg_2.c), arg_2.c))), abs(~(~u_input.e & _wgslsmith_div_vec3_u32(u_input.e, arg_1.zwy))));
    var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(abs(~var_0.x), func_1(vec2<bool>(true, true), !arg_2.a.x).x), ~reverseBits(0u), firstTrailingBit(u_input.a)), ~vec3<u32>(min(var_1.x, var_1.x) ^ 7839u, ~arg_2.b, ~50954u), arg_1.xzz);
    var_0 = ~_wgslsmith_sub_vec3_u32(var_1, reverseBits(vec3<u32>(arg_2.d.a.a, var_1.x << (var_1.x % 32u), arg_1.x)));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-499f, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-312f, 465f, -168f) - vec3<f32>(589f, -293f, -642f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(507f, 1217f, 1233f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1154f, -269f, -990f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(588f, 820f, 1156f), vec3<f32>(3306f, 1000f, 954f), true))))), func_1(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), any(vec2<bool>(true, false))), false) ^ ~u_input.d, Struct_3(func_2(-1000f, u_input.d.zzz, vec3<i32>(-1i) * -vec3<i32>(1i, -1i, 7471i)).zz, ~u_input.e.x | reverseBits(8621u), true, Struct_2(Struct_1(u_input.c ^ u_input.a, reverseBits(-21327i), 2507u, false), vec2<f32>(-903f, _wgslsmith_f_op_f32(f32(-1f) * -833f))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(128f, _wgslsmith_f_op_f32(-var_0.x), (~u_input.b.x & 1u) >= u_input.b.x)), var_0.x);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), -718f) - vec2<f32>(_wgslsmith_f_op_f32(var_0.x + -449f), var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(58117i, 64179i, -15224i, -18067i), -vec4<i32>(-42939i, -6127i, 19203i, 2147483647i))) ^ reverseBits(select(vec4<i32>(-2147483647i, 1i, 2147483647i, 4132i), countOneBits(vec4<i32>(-1i, 27613i, 2147483647i, -1i)), true)), u_input.e.x, ~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(58551i, 1i, -17236i, 2147483647i), vec4<i32>(-70079i, -1i, 3776i, 21094i)), ~vec4<i32>(-18817i, 17467i, 1i, 1i)) >> (_wgslsmith_add_vec4_u32(u_input.d, ~u_input.d) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1238f * var_0.x)), vec3<i32>(0i, -23422i, abs(firstLeadingBit(1i))));
}

