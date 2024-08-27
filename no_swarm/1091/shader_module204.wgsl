struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = max(_wgslsmith_clamp_vec4_i32(vec4<i32>(abs(1i), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-10072i, -2147483647i, 32347i, -27292i), vec4<i32>(-5867i, 56277i, 1i, -31080i)) ^ -28347i, abs(i32(-1i) * -2147483647i)), _wgslsmith_add_vec4_i32(~vec4<i32>(-1i, -52361i, -38239i, -1i), countOneBits(select(vec4<i32>(2147483647i, 2147483647i, -1i, 2147483647i), vec4<i32>(-77636i, -1111i, 5276i, 4557i), vec4<bool>(true, false, true, true)))), ~select(vec4<i32>(2147483647i, 20089i, -2431i, 0i), vec4<i32>(-15842i, 13546i, 12022i, 12806i), true)), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-1i, 0i, -100995i, -1i) >> (vec4<u32>(36376u, u_input.a, u_input.a, 10758u) % vec4<u32>(32u)), ~vec4<i32>(-44425i, -13956i, 10645i, -12864i), vec4<bool>(true, true, true, true))), select(select(vec4<i32>(-13625i, 0i, 46693i, -1i), vec4<i32>(-102409i, -2147483647i, 0i, -17968i), vec4<bool>(false, false, false, true)), vec4<i32>(36752i, -45181i, 83328i, 11780i), vec4<bool>(true, true, true, true)) >> ((_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 46659u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 79188u)) ^ ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u)) % vec4<u32>(32u)), ~abs(-vec4<i32>(-42777i, 7247i, 1i, -16204i))));
    var var_1 = select(vec3<bool>(false, false, false), select(select(vec3<bool>(true, true, any(vec3<bool>(false, false, true))), vec3<bool>(false, true, any(vec3<bool>(false, false, true))), -2147483647i >= -var_0.x), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(false, true))), !vec3<bool>(true, true, 23479u != u_input.a)), !vec3<bool>(false, any(vec4<bool>(true, true, true, true)), true));
    var_1 = !select(!select(!vec3<bool>(var_1.x, true, false), !vec3<bool>(true, true, var_1.x), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false))), !select(vec3<bool>(true, false, var_1.x), !vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, var_1.x, false)), select(!select(vec3<bool>(false, true, var_1.x), vec3<bool>(false, var_1.x, var_1.x), true), vec3<bool>(true, select(true, var_1.x, true), var_1.x | var_1.x), select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), false), !vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x))));
    let var_2 = Struct_1(~var_0.x, select(!select(!vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(true, var_1.x, true), !vec3<bool>(var_1.x, true, true)), vec3<bool>(any(!vec3<bool>(var_1.x, var_1.x, true)), !(var_0.x != var_0.x), -2220f > _wgslsmith_f_op_f32(ceil(-1246f))), !vec3<bool>(!var_1.x, true, var_1.x)));
    var_0 = -vec4<i32>(11209i, -1i, var_2.a, i32(-1i) * -4074i);
    return 6229u;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<u32>(~u_input.a, (4294967295u & u_input.a) >> (~1u % 32u), select(_wgslsmith_sub_u32(0u, u_input.a), reverseBits(~1u), true), ~func_3());
    let var_1 = -1113f;
    let var_2 = ~(-_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(2147483647i, 25527i)), vec2<i32>(1i, 1i)));
    var var_3 = max(var_0.zzx, abs(~max(var_0.wxz, vec3<u32>(var_0.x, 23828u, u_input.a))));
    var_3 = ~vec3<u32>(0u, ~88668u, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(57978u, 4294967295u, 0u), vec3<u32>(var_0.x, var_0.x, u_input.a)), abs(~var_3.x), func_3()));
    return Struct_1(-var_2.x, select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, var_1 < -1267f, true)), vec3<bool>(any(vec2<bool>(false, false)), true, all(vec4<bool>(true, false, false, true)) == true), all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true))));
}

fn func_1() -> Struct_1 {
    let var_0 = abs(u_input.a) < 7128u;
    let var_1 = Struct_1(12999i, select(select(select(select(vec3<bool>(false, true, var_0), vec3<bool>(false, true, var_0), vec3<bool>(var_0, var_0, var_0)), vec3<bool>(false, var_0, true), false == var_0), !select(vec3<bool>(true, false, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, false, true)), !(!var_0)), !(!(!vec3<bool>(true, var_0, var_0))), var_0));
    var var_2 = -1437f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1770f + 614f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1423f - _wgslsmith_f_op_f32(select(-522f, 1586f, var_0))) * 1758f)));
    let var_3 = func_2();
    return func_2();
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_add_i32((-arg_1.a & -53199i) ^ -40465i, 1i), !(!vec3<bool>(true, arg_1.b.x, true)));
    var_0 = arg_1;
    var_0 = func_1();
    let var_1 = vec2<f32>(-167f, -1126f);
    var_0 = arg_1;
    return _wgslsmith_mod_i32(~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-var_0.a, countOneBits(-6644i)), arg_1.a | 320i, -49963i), _wgslsmith_add_i32(_wgslsmith_div_i32(reverseBits(var_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, 0i, var_0.a, arg_1.a), vec4<i32>(arg_1.a, var_0.a, var_0.a, -10010i))) | arg_1.a, func_1().a << (~u_input.a % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(-vec3<i32>(func_4(~vec4<u32>(29710u, u_input.a, 1u, u_input.a), func_1(), ~u_input.a), -17079i, abs(1i)), vec3<i32>(-1i) * -(~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 39869i, -5898i), vec3<i32>(-44236i, 0i, 35713i))), vec3<bool>(true, true, true));
    let var_1 = !func_1().b.yy;
    var var_2 = 273f;
    let var_3 = func_1();
    var_0 = -vec3<i32>(0i, -6163i, min(_wgslsmith_add_i32(var_3.a, -34447i), ~var_3.a) >> (4294967295u % 32u));
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-276f * -344f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-386f - _wgslsmith_f_op_f32(f32(-1f) * -780f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-386f)), _wgslsmith_f_op_f32(abs(-608f)), func_2().b.x)), false))))));
    let var_4 = abs(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 25488u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 5977u), vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)) >> (vec2<u32>(4294967295u, 18934u) % vec2<u32>(32u)), !vec2<bool>(var_3.b.x, var_3.b.x)), ~vec2<u32>(4294967295u, 32389u << (u_input.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a);
}

