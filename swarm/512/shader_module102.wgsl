struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 582f)), vec2<f32>(1f, 468f), !all(vec2<bool>(false, false)))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-875f - 472f)))) * vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1078f))))));
    var var_1 = (vec4<u32>(0u, u_input.a, u_input.a, u_input.a) << (_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(41834u, 4294967295u, u_input.a, 4294967295u), vec4<u32>(0u, 33094u, 14912u, 123562u)), ~(vec4<u32>(31931u, 14961u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) % vec4<u32>(32u)))) % vec4<u32>(32u))) ^ vec4<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 89646u, 4294967295u), firstLeadingBit(vec3<u32>(u_input.a, 69385u, u_input.a)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(47639u, u_input.a, u_input.a, 1u), abs(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), u_input.a);
    var var_2 = select(~firstTrailingBit(select(firstTrailingBit(vec3<u32>(var_1.x, var_1.x, 0u)), ~var_1.zzz, all(vec2<bool>(false, false)))), countOneBits(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, var_1.x, 1u), var_1.wwy), var_1.yyx | vec3<u32>(u_input.a, u_input.a, 7615u))) >> ((~(~var_1.zwz) ^ var_1.xyx) % vec3<u32>(32u)), true);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(670f * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, -352f);
    return true;
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = true;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_add_u32(31290u, 17169u);
    var_2 = arg_0.a.a.x;
    let var_3 = countOneBits(select(vec3<i32>(1i, 1i, select(i32(-1i) * -37799i, 1i, arg_0.a.c.x | true)), select(max(vec3<i32>(0i, 0i, 2147483647i) << (arg_0.a.a % vec3<u32>(32u)), min(vec3<i32>(-37227i, -1i, -1i), vec3<i32>(2147483647i, 0i, 0i))), countOneBits(vec3<i32>(0i, -2147483647i, 20333i)), true && all(vec3<bool>(arg_0.a.c.x, false, arg_0.a.b.x))), select(func_3(_wgslsmith_mod_i32(-2147483647i, 2147483647i)), var_0, true)));
    return select(!select(select(!vec2<bool>(var_0, var_0), select(arg_0.a.c, vec2<bool>(false, false), false), true), !select(var_1.a.b, vec2<bool>(true, false), var_1.a.b), countOneBits(var_3.x) > firstLeadingBit(0i)), var_1.a.b, select(!vec2<bool>(11909u < u_input.a, false), select(vec2<bool>(true, true), vec2<bool>(true, true & var_1.a.b.x), var_1.a.b.x), vec2<bool>(false, func_3(_wgslsmith_div_i32(var_3.x, 10329i)))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~4294967295u, 1u), arg_0.xyw) << (vec3<u32>(~(~40391u), 67388u, u_input.a) % vec3<u32>(32u)), vec2<bool>(~abs(1u) < abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 85481u, arg_0.x, arg_0.x), vec4<u32>(20735u, arg_0.x, arg_0.x, 0u))), all(vec2<bool>(true, true))), select(vec2<bool>(true, true), select(!func_2(Struct_2(Struct_1(arg_0.zxz, vec2<bool>(false, false), vec2<bool>(false, true)))), select(vec2<bool>(true, true), vec2<bool>(false, false), func_2(Struct_2(Struct_1(arg_0.yzz, vec2<bool>(false, true), vec2<bool>(true, true))))), func_2(Struct_2(Struct_1(vec3<u32>(58400u, arg_0.x, 59718u), vec2<bool>(false, true), vec2<bool>(true, true))))), true));
    var var_1 = Struct_2(var_0);
    var var_2 = var_1.a;
    let var_3 = -486f;
    var var_4 = ~(~_wgslsmith_mult_i32(abs(~(-1i)), ~1i << (_wgslsmith_sub_u32(var_1.a.a.x, 219u) % 32u)));
    return Struct_1(var_2.a, select(select(!var_0.b, var_1.a.b, false), !var_0.b, var_1.a.b), !func_2(Struct_2(var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<u32>(firstLeadingBit(24531u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.a), ~vec2<u32>(4294967295u, u_input.a)), 4294967295u), u_input.a, 0u));
    var var_1 = var_0;
    var var_2 = -1i;
    var_1 = var_0;
    var_2 = max(17633i, ~(43788i << (var_0.a.x % 32u)));
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, -1582i), abs(2397i))) ^ (~(-26690i) << (_wgslsmith_sub_u32(max(0u, var_0.a.x), var_0.a.x) % 32u)), vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -8348i), ~vec2<i32>(1i, -51494i)), 1i, abs(0i)), -1000f);
}

