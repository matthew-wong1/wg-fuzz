struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = arg_2;
    global0 = Struct_1(select(arg_2.a, 14505u, true), var_0.b, _wgslsmith_f_op_f32(step(-767f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -558f))))), _wgslsmith_mult_vec2_u32(~min(arg_1.d, arg_1.b.zx), arg_2.b.xy) << (vec2<u32>(firstLeadingBit(31858u >> (arg_1.b.x % 32u)), arg_1.d.x) % vec2<u32>(32u)), ~(~_wgslsmith_mult_u32(var_0.b.x, 47492u)));
    var var_1 = Struct_1(abs(~_wgslsmith_sub_u32(arg_3.e, _wgslsmith_dot_vec3_u32(arg_2.b, vec3<u32>(arg_1.b.x, var_0.a, arg_2.b.x)))), select(~(vec3<u32>(arg_2.b.x, arg_2.e, arg_1.a) & (arg_1.b ^ vec3<u32>(1u, 4851u, 10525u))), reverseBits(max(~var_0.b, ~arg_3.b)), vec3<bool>(select(all(vec2<bool>(false, false)), true, 2305u == arg_2.b.x), true, false)), _wgslsmith_f_op_f32(351f - 1620f), arg_3.d, arg_0);
    var_1 = arg_2;
    var var_2 = arg_2;
    return _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(firstTrailingBit(4294967295u), firstTrailingBit(var_2.a), select(4294967295u, 0u, false))), _wgslsmith_sub_vec3_u32(firstTrailingBit(select(global0.b >> (arg_1.b % vec3<u32>(32u)), vec3<u32>(19234u, var_1.e, 4294967295u), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), ~u_input.e | (vec3<u32>(3584u, arg_0, var_1.e) >> (vec3<u32>(95335u, arg_2.d.x, u_input.b.x) % vec3<u32>(32u)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_u32(~_wgslsmith_div_u32(max(global0.a, 8098u), 29297u), 1u), ~vec3<u32>(6818u, u_input.e.x, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1171f, global0.c))))), countOneBits(vec2<u32>(abs(1u), func_3(global0.e, Struct_1(u_input.e.x, global0.b, global0.c, vec2<u32>(global0.a, global0.a), 0u), Struct_1(global0.a, u_input.b.zzw, global0.c, u_input.b.zy, global0.b.x), Struct_1(65355u, global0.b, -104f, u_input.b.yw, 1u)))), 0u);
    var var_1 = -reverseBits(-2147483647i);
    let var_2 = -abs(-26612i);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.c, 618f, global0.c, -2074f))), vec4<f32>(global0.c, global0.c, var_0.c, 344f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-772f, var_0.c, 886f, global0.c)))))));
    var var_4 = var_0;
    return Struct_1(_wgslsmith_clamp_u32(~91517u, var_0.b.x, min(var_0.d.x << (4294967295u % 32u), 12882u)), _wgslsmith_mod_vec3_u32(~(~var_4.b), select(u_input.b.xzx, min(var_4.b, var_0.b), false)), _wgslsmith_f_op_f32(355f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c + global0.c), var_4.c)))), ~var_0.b.xz, var_4.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = false;
    global0 = func_2(vec2<bool>(!(!any(vec4<bool>(false, false, false, var_0))), var_0), !(!var_0));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, _wgslsmith_f_op_f32(max(-1116f, global0.c)), _wgslsmith_f_op_f32(-427f + arg_1.c)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(max(arg_1.c, -1000f)), -719f)))));
    let var_3 = _wgslsmith_add_i32(firstTrailingBit(-u_input.c) >> (56248u % 32u), u_input.c);
    return var_1.e;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = ~vec2<u32>(func_4(func_2(!vec2<bool>(false, arg_1), arg_1), func_2(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), true), arg_1)), reverseBits(~(~u_input.b.x)));
    global0 = func_2(!vec2<bool>(arg_1, all(vec2<bool>(true, true))), arg_1);
    let var_1 = u_input.d.xz;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-global0.c), arg_2.x, func_2(vec2<bool>(arg_1, all(vec2<bool>(arg_1, true))), !arg_1 || true).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(944f - _wgslsmith_f_op_f32(771f + arg_2.x)))));
    let var_3 = u_input.d.yz << (vec2<u32>(arg_0 | 6205u, 4294967295u) % vec2<u32>(32u));
    return func_2(vec2<bool>(arg_1, _wgslsmith_add_u32(~global0.e, _wgslsmith_mod_u32(0u, var_0.x)) >= 124929u), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(u_input.b.x, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-541f, 1751f, 1629f, global0.c) - vec4<f32>(-1056f, 1112f, global0.c, global0.c))))));
    let var_0 = true;
    global0 = Struct_1(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(global0.d.x, global0.d.x, 0u))), ~select(firstTrailingBit(u_input.e), func_2(vec2<bool>(true, var_0), var_0).b, select(vec3<bool>(false, var_0, var_0), vec3<bool>(true, var_0, var_0), vec3<bool>(false, var_0, true)))), u_input.e, global0.c, min(~select(select(global0.d, vec2<u32>(4294967295u, u_input.b.x), vec2<bool>(var_0, true)), ~vec2<u32>(u_input.b.x, 1u), !vec2<bool>(var_0, var_0)), u_input.b.wy), _wgslsmith_mod_u32(select(func_1(~u_input.b.x, true, vec4<f32>(global0.c, global0.c, -690f, global0.c)).d.x, ~u_input.e.x, false), _wgslsmith_mult_u32(firstTrailingBit(countOneBits(4294967295u)), 59069u)));
    let var_1 = Struct_1(~u_input.e.x, global0.b, global0.c, global0.b.yy, 29572u);
    global0 = Struct_1(var_1.b.x, ~(~var_1.b), func_2(select(select(vec2<bool>(var_0, true), !vec2<bool>(var_0, var_0), !vec2<bool>(var_0, true)), vec2<bool>(true, true), true), all(!(!vec3<bool>(var_0, true, var_0)))).c, _wgslsmith_add_vec2_u32(max(global0.d, ~(u_input.e.zx & vec2<u32>(0u, global0.e))), select(_wgslsmith_sub_vec2_u32(u_input.b.yx, u_input.b.xx) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(69436u, 0u), u_input.b.zx), _wgslsmith_sub_vec2_u32(var_1.b.zy, ~vec2<u32>(var_1.a, 33963u)), vec2<bool>(select(false, false, false), true))), ~var_1.a);
    let var_2 = vec3<i32>(u_input.c, _wgslsmith_div_i32(min(u_input.a, u_input.c) >> (22912u % 32u), u_input.d.x & u_input.c), u_input.c);
    let var_3 = var_1.d;
    global0 = var_1;
    global0 = func_2(!select(vec2<bool>(true, var_0 && true), vec2<bool>(all(vec2<bool>(false, false)), var_0), all(!vec4<bool>(true, var_0, false, var_0))), all(vec2<bool>(!(var_3.x >= var_1.b.x), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.c, 212f))) + var_1.c)), ~max(min(_wgslsmith_mod_i32(-2147483647i, u_input.d.x), ~1i), 50289i | u_input.c), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.c, _wgslsmith_f_op_f32(-1444f * func_2(vec2<bool>(var_0, true), true).c)))));
}

