struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = !vec4<bool>(arg_2.d.x, arg_1.d.x, arg_0.a < reverseBits(firstLeadingBit(arg_2.a)), !arg_0.d.x);
    global0 = select(select(select(vec4<bool>(arg_1.a < 37426i, true, arg_1.d.x, true), !select(vec4<bool>(arg_1.d.x, arg_2.d.x, true, false), vec4<bool>(false, arg_2.d.x, global0.x, false), vec4<bool>(true, arg_1.d.x, global0.x, global0.x)), arg_1.d.x), vec4<bool>(false, arg_2.d.x, all(!vec3<bool>(arg_0.d.x, false, false)), arg_1.d.x), global0.x), !vec4<bool>(any(vec2<bool>(true, arg_0.d.x)), !global0.x == all(vec4<bool>(arg_1.d.x, true, false, global0.x)), true, true), all(select(!arg_2.d.yx, vec2<bool>(true, all(arg_2.d.xz)), arg_1.d.xy)));
    var var_0 = Struct_1(-1i, _wgslsmith_f_op_f32(step(679f, 507f)), arg_2.c, vec3<bool>(((true & arg_1.d.x) && arg_1.d.x) != !select(arg_0.d.x, true, arg_0.d.x), false, !select(all(vec3<bool>(arg_2.d.x, true, true)), all(arg_0.d), false)));
    var var_1 = var_0.a;
    var var_2 = arg_0;
    return -min(-(66386i | var_2.a), _wgslsmith_add_i32((1i ^ arg_2.a) << (arg_0.c.x % 32u), countOneBits(var_0.a)));
}

fn func_1() -> i32 {
    var var_0 = vec4<u32>(~(~select(select(7240u, 0u, global0.x), ~u_input.a.x, true)), 1592u, 4294967295u, ~_wgslsmith_div_u32(20666u, u_input.a.x) << (4353u % 32u));
    var var_1 = Struct_1((12982i ^ abs(func_2(Struct_1(-1i, 437f, var_0.zz, vec3<bool>(global0.x, true, true)), Struct_1(1i, -306f, vec2<u32>(1u, u_input.a.x), global0.www), Struct_1(-2147483647i, 880f, var_0.wy, vec3<bool>(true, global0.x, true))))) >> (_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(1u, var_0.x, 0u), 0u) % 32u), 588f, vec2<u32>(39829u, 15979u), vec3<bool>(select(false, false, !any(vec4<bool>(global0.x, false, global0.x, global0.x))), false, true));
    var var_2 = true;
    return var_1.a << (24584u % 32u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> vec2<u32> {
    global0 = vec4<bool>(!(!(!arg_0.d.x)), global0.x, !all(vec4<bool>(all(vec3<bool>(global0.x, arg_1.d.x, true)), arg_1.d.x | true, arg_1.d.x, arg_0.d.x)), all(select(global0.wzy, vec3<bool>(true, all(global0.zxx), arg_0.b != arg_1.b), arg_1.d)));
    global0 = vec4<bool>(all(vec2<bool>(arg_0.d.x, false)), true, true, select(~(arg_0.a & 2147483647i) >= ~arg_0.a, arg_2 & true, true));
    global0 = vec4<bool>(all(vec4<bool>(false, any(select(vec3<bool>(arg_1.d.x, arg_2, false), vec3<bool>(false, false, arg_0.d.x), arg_1.d)), arg_1.d.x, any(select(vec3<bool>(arg_2, arg_0.d.x, global0.x), global0.zwx, arg_0.d)))), all(vec4<bool>(true, arg_1.b <= arg_1.b, any(vec3<bool>(true, false, arg_2)), any(!vec4<bool>(arg_1.d.x, global0.x, arg_0.d.x, false)))), global0.x, true);
    var var_0 = ~vec3<u32>(abs(4294967295u), ~(select(0u, u_input.a.x, false) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.x, 10221u, arg_0.c.x), vec3<u32>(0u, 61310u, arg_3)) % 32u)), _wgslsmith_dot_vec3_u32(min(~vec3<u32>(1053u, arg_3, arg_3), vec3<u32>(29854u, 8193u, 1u)), vec3<u32>(5299u, abs(0u), u_input.a.x)));
    var var_1 = 2147483647i;
    return ~abs(~u_input.a & var_0.yy);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = !select(!(!vec4<bool>(global0.x, true, true, arg_1.d.x)), !(!select(vec4<bool>(arg_0.d.x, global0.x, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, arg_1.d.x, arg_0.d.x, false))), select(!vec4<bool>(true, global0.x, true, arg_0.d.x), select(select(vec4<bool>(false, true, false, global0.x), vec4<bool>(arg_1.d.x, false, true, arg_1.d.x), vec4<bool>(true, false, false, false)), !vec4<bool>(global0.x, false, true, true), false), global0.x && true));
    global0 = !select(!(!vec4<bool>(true, arg_1.d.x, false, arg_0.d.x)), !vec4<bool>(all(vec2<bool>(true, false)), arg_1.d.x, true, arg_0.d.x || arg_1.d.x), vec4<bool>(global0.x, all(!arg_1.d.yz), select(!arg_0.d.x, arg_1.b >= arg_0.b, any(global0.wzw)), !select(true, global0.x, arg_0.d.x)));
    global0 = !select(vec4<bool>((arg_0.b > -664f) && any(vec4<bool>(true, false, global0.x, false)), false, any(vec4<bool>(global0.x, true, false, arg_0.d.x)), true), vec4<bool>((arg_1.c.x >= arg_1.c.x) && all(vec2<bool>(global0.x, arg_1.d.x)), any(!vec4<bool>(arg_0.d.x, arg_1.d.x, arg_1.d.x, false)), true, true), vec4<bool>(false || any(vec2<bool>(false, arg_0.d.x)), arg_0.d.x, select(any(vec4<bool>(arg_1.d.x, true, arg_1.d.x, global0.x)), true, false), !(arg_0.a > arg_1.a)));
    var var_0 = arg_0;
    var var_1 = Struct_1(arg_1.a, -948f, vec2<u32>(abs(arg_1.c.x), u_input.a.x), select(global0.zwz, select(select(select(arg_0.d, arg_0.d, arg_0.d), vec3<bool>(true, arg_1.d.x, arg_1.d.x), !var_0.d.x), !(!arg_1.d), global0.zzw), true));
    return Struct_1(_wgslsmith_mult_i32(firstTrailingBit(var_1.a) >> (arg_0.c.x % 32u), func_1()), _wgslsmith_f_op_f32(-var_0.b), ~select(max(arg_0.c & vec2<u32>(u_input.a.x, 4294967295u), firstLeadingBit(vec2<u32>(1u, 31739u))), vec2<u32>(arg_0.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 41293u), vec3<u32>(4294967295u, u_input.a.x, 0u))), !select(var_0.d.zz, var_0.d.zx, global0.yx)), var_0.d);
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(arg_0.a, 1f, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, arg_0.c.x), u_input.a.x), func_3(func_4(Struct_1(-25900i, arg_0.b, arg_0.c, vec3<bool>(false, arg_0.d.x, true)), arg_0), arg_0, arg_0.b > -213f, func_4(arg_0, arg_0).c.x).x), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a, arg_0.c), reverseBits(vec2<u32>(u_input.a.x, 2611u)))), vec3<bool>(false, arg_0.d.x, ~(~arg_0.c.x) > (74428u >> (countOneBits(u_input.a.x) % 32u))));
    let var_1 = ~arg_0.a & ~reverseBits(var_0.a);
    var var_2 = Struct_1(~(-30961i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b, 1022f, !global0.x)) + 1972f))), ~(~(~(var_0.c >> (var_0.c % vec2<u32>(32u))))), select(vec3<bool>(any(select(var_0.d, global0.wyx, false)), true, _wgslsmith_f_op_f32(f32(-1f) * -318f) >= var_0.b), arg_0.d, vec3<bool>(true, true, !arg_0.d.x)));
    var var_3 = arg_0;
    var var_4 = arg_0;
    return !select(select(vec4<bool>(true, 104f == var_4.b, any(vec4<bool>(var_3.d.x, var_4.d.x, var_4.d.x, false)), var_2.d.x | var_2.d.x), !vec4<bool>(global0.x, false, false, var_3.d.x), select(!vec4<bool>(var_0.d.x, true, false, var_3.d.x), vec4<bool>(true, true, global0.x, true), select(vec4<bool>(false, true, var_2.d.x, false), vec4<bool>(var_4.d.x, var_3.d.x, var_4.d.x, arg_0.d.x), vec4<bool>(false, false, var_2.d.x, var_0.d.x)))), vec4<bool>(reverseBits(var_4.c.x) < (u_input.a.x & var_4.c.x), true, (var_4.c.x >= var_4.c.x) == (var_0.a != var_4.a), var_3.d.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(Struct_1(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_mult_vec2_u32(u_input.a ^ u_input.a, _wgslsmith_mult_vec2_u32(u_input.a, u_input.a)), select(vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(false, true, global0.x), global0.wyx, true), !vec3<bool>(global0.x, true, true))), Struct_1(-7594i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(632f, 874f)) - 1000f), func_3(Struct_1(1i, 2504f, vec2<u32>(u_input.a.x, 49841u), vec3<bool>(false, true, global0.x)), Struct_1(20357i, -1030f, vec2<u32>(u_input.a.x, u_input.a.x), global0.wyw), true, u_input.a.x), !global0.xzy)));
    global0 = vec4<bool>(!any(vec3<bool>(global0.x, select(false, false, global0.x), global0.x)), global0.x, true, true);
    global0 = vec4<bool>(!all(select(!vec4<bool>(false, global0.x, true, global0.x), !vec4<bool>(true, global0.x, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, global0.x, false))), any(!select(vec3<bool>(true, global0.x, true), global0.yzw, global0.zyz)) | true, false, global0.x);
    var var_0 = _wgslsmith_sub_vec2_i32(select(vec2<i32>(_wgslsmith_mod_i32(1i, reverseBits(14469i)), _wgslsmith_add_i32(func_2(Struct_1(2147483647i, 1309f, u_input.a, vec3<bool>(false, global0.x, false)), Struct_1(-53688i, 1864f, u_input.a, global0.zzw), Struct_1(1i, 717f, u_input.a, vec3<bool>(true, global0.x, true))), -5266i)), max(vec2<i32>(_wgslsmith_sub_i32(-1i, 41257i), max(13624i, -2147483647i)), max(vec2<i32>(37710i, 2147483647i), ~vec2<i32>(51985i, 20748i))), all(global0.wxw)), firstLeadingBit(-_wgslsmith_mod_vec2_i32(~vec2<i32>(65694i, 1i), min(vec2<i32>(-65693i, 8121i), vec2<i32>(-1i, -2147483647i)))));
    var_0 = max(~(_wgslsmith_add_vec2_i32(vec2<i32>(0i, var_0.x), ~vec2<i32>(-3073i, 801i)) & _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(1i, 1i))), ~vec2<i32>(var_0.x, -(~var_0.x)));
    let var_1 = Struct_1(2147483647i, 400f, firstLeadingBit(~(countOneBits(vec2<u32>(4294967295u, 0u)) ^ ~u_input.a)), select(global0.wxw, func_4(Struct_1(-3544i, _wgslsmith_f_op_f32(f32(-1f) * -132f), vec2<u32>(u_input.a.x, u_input.a.x), func_4(Struct_1(var_0.x, 1201f, u_input.a, vec3<bool>(true, false, global0.x)), Struct_1(var_0.x, 991f, vec2<u32>(u_input.a.x, u_input.a.x), global0.zzx)).d), func_4(Struct_1(var_0.x, 292f, vec2<u32>(u_input.a.x, 23576u), vec3<bool>(global0.x, false, false)), Struct_1(-1i, 1202f, u_input.a, global0.wzw))).d, func_4(Struct_1(-var_0.x, _wgslsmith_f_op_f32(-1000f * 307f), vec2<u32>(u_input.a.x, u_input.a.x), select(vec3<bool>(false, global0.x, global0.x), global0.xxw, global0.x)), Struct_1(var_0.x, 280f, vec2<u32>(4294967295u, u_input.a.x), select(global0.wxw, global0.xzx, global0.x))).d));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_1(19952i, _wgslsmith_f_op_f32(ceil(var_1.b)), vec2<u32>(var_1.c.x, 62857u), var_1.d), Struct_1(-var_0.x, _wgslsmith_f_op_f32(select(var_1.b, -139f, true && var_1.d.x)), u_input.a, !vec3<bool>(global0.x, global0.x, var_1.d.x))).b, ~(select(vec3<i32>(1i, -28378i, var_1.a) | vec3<i32>(var_1.a, -2147483647i, -13543i), vec3<i32>(var_0.x, var_1.a, var_1.a), vec3<bool>(false, true, var_1.d.x)) << (_wgslsmith_mod_vec3_u32(abs(vec3<u32>(4294967295u, 1279u, 33538u)), firstTrailingBit(vec3<u32>(var_1.c.x, 1u, u_input.a.x))) % vec3<u32>(32u))), ~_wgslsmith_mod_u32(90559u, ~var_1.c.x) & 17738u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.b, var_1.b))))) - _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), -2147483647i);
}

