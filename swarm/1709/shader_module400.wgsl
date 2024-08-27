struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = select(select(!(!select(vec3<bool>(false, false, true), vec3<bool>(arg_0.a, arg_0.a, true), true)), vec3<bool>(select(any(vec4<bool>(arg_0.a, arg_0.a, true, true)), all(vec4<bool>(arg_0.a, false, false, arg_0.a)), true), (u_input.a <= u_input.a) && arg_0.a, any(vec3<bool>(false, true, true))), vec3<bool>(true, any(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true)), arg_0.a)), vec3<bool>(any(vec2<bool>(arg_0.a, u_input.b != u_input.c)), all(!(!vec3<bool>(false, arg_0.a, false))), any(!vec3<bool>(true, arg_0.a, false))), arg_0.a);
    var var_1 = !(!(!vec2<bool>(!arg_0.a, false)));
    var_0 = vec3<bool>(!any(!vec4<bool>(false, arg_0.a, false, false)), all(vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(arg_0.a, false, true), vec3<bool>(var_0.x, true, true))), false, any(vec3<bool>(true, false, var_0.x)))), true);
    var var_2 = select(min(vec2<u32>(~u_input.c & _wgslsmith_div_u32(u_input.b, 4294967295u), _wgslsmith_mod_u32(min(arg_0.b.x, 0u), arg_0.b.x)), vec2<u32>(30454u, min(u_input.b, ~6521u))), arg_0.b, true);
    let var_3 = ~vec4<u32>(_wgslsmith_add_u32(0u, 4294967295u & (40127u << (arg_0.b.x % 32u))), ~reverseBits(4294967295u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.x, 1790u, var_2.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, var_2.x, var_2.x), vec3<u32>(var_2.x, 45448u, arg_0.b.x))), 48643u), 4294967295u);
    return false;
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = firstLeadingBit(1u);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -937f)), 1f, all(vec4<bool>(any(vec3<bool>(true, arg_0.a, arg_0.a)), true, func_3(Struct_1(arg_0.a, vec2<u32>(36212u, arg_0.b.x))), !arg_0.a)))), _wgslsmith_f_op_f32(min(-1224f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-590f))))))));
    var_0 = 1u;
    let var_2 = _wgslsmith_mod_vec2_i32(~(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -24982i), vec2<i32>(u_input.a, u_input.a))) >> (vec2<u32>(u_input.b, ~arg_0.b.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(-(~(vec2<i32>(0i, u_input.a) & vec2<i32>(u_input.a, 40308i))), countOneBits(~(vec2<i32>(-19333i, -49002i) & vec2<i32>(1i, u_input.a)))));
    let var_3 = _wgslsmith_f_op_f32(step(-1052f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f) - var_1))));
    return -1895f;
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2548f)) * _wgslsmith_f_op_f32(1803f - 189f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(Struct_1(false, vec2<u32>(0u, 4294967295u)))))))));
    var_0 = Struct_4(_wgslsmith_f_op_f32(func_2(Struct_1(any(vec3<bool>(true, true, true)), countOneBits(select(vec2<u32>(60749u, u_input.c), vec2<u32>(u_input.c, 3275u), false))))));
    let var_1 = var_0.a;
    var_0 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -142f), var_0.a, any(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true))))));
    var_0 = Struct_4(_wgslsmith_f_op_f32(-var_0.a));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1036f, 644f, true)))) + _wgslsmith_f_op_f32(func_2(Struct_1(true, vec2<u32>(4294967295u, u_input.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(~vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 22951i, 1i, u_input.a), vec4<i32>(1i, 1i, 2376i, 0i)), _wgslsmith_clamp_i32(-2147483647i, u_input.a << (4294967295u % 32u), ~u_input.a), _wgslsmith_mod_i32(~(-23008i), u_input.a << (u_input.b % 32u)), -93243i), !(!(!all(vec3<bool>(false, false, true)))));
    var var_2 = Struct_1(false, ~(~select(select(vec2<u32>(1012u, u_input.c), vec2<u32>(4294967295u, 54388u), vec2<bool>(var_1.b, var_1.b)), ~vec2<u32>(82981u, 37899u), var_1.b != true)));
    var_1 = Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_div_i32(var_1.a.x, -2147483647i), _wgslsmith_add_i32(628i, 1i), -var_1.a.x), vec4<i32>(1i, -u_input.a, _wgslsmith_mod_i32(var_1.a.x, 39570i), 8362i)) << (_wgslsmith_sub_vec4_u32(select(vec4<u32>(53634u, u_input.b, 4294967295u, var_2.b.x) << (vec4<u32>(u_input.c, 1u, u_input.c, 28385u) % vec4<u32>(32u)), countOneBits(vec4<u32>(u_input.c, 0u, 14473u, u_input.b)), select(vec4<bool>(var_1.b, var_2.a, var_2.a, var_1.b), vec4<bool>(false, true, false, var_2.a), vec4<bool>(var_1.b, true, var_1.b, var_2.a))), ~firstTrailingBit(vec4<u32>(13844u, u_input.c, 2578u, u_input.c))) % vec4<u32>(32u)), false);
    var var_3 = select(!(!select(!vec4<bool>(var_2.a, var_1.b, var_2.a, var_1.b), vec4<bool>(false, false, true, var_2.a), false)), select(vec4<bool>(true, false, var_2.a, 63609u < _wgslsmith_add_u32(u_input.b, var_2.b.x)), vec4<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.c, u_input.b), vec4<u32>(44358u, var_2.b.x, var_2.b.x, 4294967295u)) >= u_input.b, true, false), !select(select(vec4<bool>(var_1.b, true, var_1.b, var_1.b), vec4<bool>(true, true, false, var_2.a), vec4<bool>(var_1.b, var_2.a, var_2.a, false)), select(vec4<bool>(var_2.a, true, false, true), vec4<bool>(false, false, true, var_1.b), true), !var_1.b)), !(!all(vec4<bool>(var_2.a, true, var_1.b, false))));
    let var_4 = select(vec4<u32>(5892u, ~53181u, var_2.b.x, firstLeadingBit((u_input.b << (0u % 32u)) & ~14724u)), ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(35914u, u_input.c, u_input.b, 4294967295u), vec4<u32>(0u, 25429u, 1u, u_input.b)))), !(0u == var_2.b.x));
    let var_5 = -5953i == abs(var_1.a.x);
    var_1 = Struct_2(vec4<i32>(_wgslsmith_mod_i32(var_1.a.x, ~u_input.a), u_input.a, ~min(-29258i, _wgslsmith_dot_vec4_i32(vec4<i32>(19943i, 23253i, 40480i, var_1.a.x), vec4<i32>(var_1.a.x, u_input.a, -42779i, var_1.a.x))), -27124i), false);
    var_1 = Struct_2(vec4<i32>(var_1.a.x, _wgslsmith_add_i32(~u_input.a, _wgslsmith_add_i32(0i ^ var_1.a.x, -var_1.a.x)), ~(-2147483647i), var_1.a.x), var_5);
    let x = u_input.a;
    s_output = StorageBuffer(-22173i, _wgslsmith_mult_vec3_i32(-var_1.a.xzw, var_1.a.zwx), reverseBits(22968u));
}

