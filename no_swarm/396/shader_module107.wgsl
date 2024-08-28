struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: Struct_1 = Struct_1(vec2<u32>(4294967295u, 39625u), false, 963f, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec2<u32>) -> vec2<i32> {
    var var_0 = 4294967295u;
    return select(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, _wgslsmith_mult_i32(-28002i, -1i)), select(-vec2<i32>(0i, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(23151i, -3606i), vec2<i32>(12000i, -2147483647i)), true)), ~(-vec2<i32>(0i, -761i) << ((vec2<u32>(9528u, u_input.a.x) << (vec2<u32>(4294967295u, arg_0.x) % vec2<u32>(32u))) % vec2<u32>(32u))), ~select(vec2<i32>(-1i, -31069i), select(vec2<i32>(3868i, -15348i), vec2<i32>(0i, 1i), arg_1.zz), any(arg_1.zy))), _wgslsmith_mult_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(-16956i, -18134i), vec2<i32>(61143i, -43673i)), vec2<i32>(i32(-1i) * -14511i, _wgslsmith_dot_vec4_i32(vec4<i32>(-5321i, -5031i, 1i, 4413i), vec4<i32>(-2147483647i, -2147483647i, -33590i, 1i)))) << (_wgslsmith_clamp_vec2_u32(global0.a, vec2<u32>(firstTrailingBit(arg_2.x), _wgslsmith_sub_u32(u_input.a.x, 58174u)), ~vec2<u32>(arg_0.x, 1u)) % vec2<u32>(32u)), all(!vec3<bool>(global0.b, all(vec2<bool>(arg_1.x, global0.b)), global0.b)));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: i32) -> bool {
    let var_0 = -max(-func_3(countOneBits(u_input.a), select(vec3<bool>(global0.b, false, false), vec3<bool>(global0.b, true, false), global0.b), u_input.a.zz), vec2<i32>(~arg_3 >> (u_input.a.x % 32u), arg_3));
    var var_1 = -2147483647i;
    let var_2 = Struct_1(_wgslsmith_mod_vec2_u32(max(global0.a, global0.a << (countOneBits(global0.a) % vec2<u32>(32u))), ~vec2<u32>(~20552u, ~50210u)), all(vec2<bool>(any(select(vec3<bool>(global0.d, global0.d, global0.b), vec3<bool>(false, false, global0.b), vec3<bool>(true, global0.b, false))), false)), arg_0.b.x, global0.b);
    var var_3 = _wgslsmith_mod_i32(0i, var_0.x);
    var var_4 = vec3<bool>(all(select(!vec3<bool>(false, global0.b, true), select(vec3<bool>(var_2.b, true, var_2.b), !vec3<bool>(true, var_2.b, true), vec3<bool>(var_2.d, true, var_2.b)), true)), all(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, var_2.b, false), false), !vec3<bool>(global0.b, false, false), !(!vec3<bool>(var_2.d, global0.b, false)))), true);
    return false;
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = select(!vec2<bool>(global0.d, 526f >= global0.c), select(!select(select(vec2<bool>(global0.b, true), vec2<bool>(global0.b, false), vec2<bool>(true, false)), !vec2<bool>(global0.d, global0.b), select(vec2<bool>(false, global0.d), vec2<bool>(global0.d, global0.b), true)), !vec2<bool>(true, func_2(Struct_2(vec3<f32>(-121f, 837f, global0.c), vec2<f32>(396f, 371f)), 3017u, global0.a.x, arg_0)), any(!select(vec2<bool>(global0.b, global0.d), vec2<bool>(false, false), vec2<bool>(global0.b, global0.b)))), !(!vec2<bool>(global0.d, true)));
    var var_1 = _wgslsmith_mult_vec3_u32(select(~(~vec3<u32>(20373u, u_input.a.x, u_input.a.x)), u_input.a, select(vec3<bool>(var_0.x, false, false), select(vec3<bool>(global0.b, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, global0.d, global0.d)), !vec3<bool>(var_0.x, false, var_0.x))) >> (~(~min(vec3<u32>(global0.a.x, 0u, 4294967295u), vec3<u32>(global0.a.x, 35952u, 53662u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, 4294967295u ^ u_input.a.x), global0.a.x, 4294967295u << (~global0.a.x % 32u)), abs(1u), 1u));
    var_1 = u_input.a;
    global0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(24660u, abs(12081u), _wgslsmith_sub_u32(14444u, global0.a.x)), u_input.a), 0u), false, _wgslsmith_f_op_f32(-global0.c), false);
    var var_2 = select(var_1.yy >> ((countOneBits(vec2<u32>(u_input.a.x, 20988u)) << ((u_input.a.zy ^ var_1.xy) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), u_input.a), u_input.a), var_1.x), select(!(!vec2<bool>(var_0.x, true)), vec2<bool>(false, true), !select(select(vec2<bool>(false, var_0.x), vec2<bool>(false, global0.d), var_0.x), vec2<bool>(true, var_0.x), any(vec4<bool>(false, global0.b, true, false)))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-2054f, _wgslsmith_f_op_f32(ceil(global0.c))), _wgslsmith_f_op_f32(step(1099f, _wgslsmith_f_op_f32(-1000f + 937f))), global0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1245f, global0.c)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(974f, -1426f)))))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>) -> i32 {
    let var_0 = ~abs((vec4<u32>(arg_2.x, global0.a.x, 24499u, u_input.a.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4403u, arg_2.x, 40791u), vec4<u32>(global0.a.x, 34197u, 1u, u_input.a.x)) % vec4<u32>(32u))) >> (vec4<u32>(32345u, 4294967295u, abs(global0.a.x), ~global0.a.x) % vec4<u32>(32u)));
    global0 = Struct_1(vec2<u32>(~_wgslsmith_sub_u32(arg_2.x, arg_2.x), 19001u) & var_0.zz, !global0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.x))))), global0.d);
    global0 = Struct_1(~vec2<u32>(4294967295u, firstLeadingBit(countOneBits(1u))), true, _wgslsmith_f_op_f32(f32(-1f) * -1617f), true);
    var var_1 = Struct_1(vec2<u32>(3472u, 0u), 714f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1022f), func_1(arg_1).a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(443f - 1208f)), any(!vec3<bool>(global0.d, !global0.d, global0.c <= -797f)));
    global0 = Struct_1(~u_input.a.zy, var_1.b, 534f, var_1.d);
    return select(countOneBits(arg_1 | arg_1) >> (countOneBits(0u) % 32u), arg_1, (_wgslsmith_mod_i32(arg_1, _wgslsmith_mult_i32(arg_1, arg_1)) ^ -arg_1) >= -5641i);
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = func_1(_wgslsmith_div_i32(-arg_2, 1i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b.x - 849f))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1593f, global0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), !func_2(arg_3, abs(u_input.a.x), ~0u, arg_1.x))));
    let var_2 = arg_3;
    global0 = Struct_1(vec2<u32>(global0.a.x, ~reverseBits(u_input.a.x)) & reverseBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(global0.a, u_input.a.xy), vec2<u32>(4294967295u, 102196u) >> (u_input.a.xx % vec2<u32>(32u)), ~vec2<u32>(1u, global0.a.x))), any(select(vec2<bool>(all(vec3<bool>(true, global0.d, false)), all(vec4<bool>(true, false, true, global0.d))), vec2<bool>(true, true), !select(vec2<bool>(false, global0.b), vec2<bool>(global0.d, global0.d), vec2<bool>(false, global0.b)))), func_1(-21768i | _wgslsmith_add_i32(-2147483647i & arg_1.x, arg_0)).a.x, global0.d);
    var var_3 = arg_3.a.x;
    return Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(~select(u_input.a, u_input.a, false), countOneBits(u_input.a)), ~_wgslsmith_mult_u32(1u, global0.a.x)), global0.d, global0.c, !any(vec2<bool>(global0.b, global0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(~(func_4(func_1(-31717i), abs(-6016i), ~vec3<u32>(u_input.a.x, global0.a.x, 9415u)) | ~1i), vec4<i32>(firstTrailingBit(~(i32(-1i) * -1486i)), ~firstLeadingBit(1i), _wgslsmith_dot_vec2_i32(firstLeadingBit(abs(vec2<i32>(10134i, -63458i))), ~vec2<i32>(2147483647i, 2147483647i)), abs(-11139i)), _wgslsmith_sub_i32(2147483647i, firstTrailingBit(~(i32(-1i) * -37182i))), func_1(abs(_wgslsmith_div_i32(1i, -1i))));
    var var_0 = 0i;
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-global0.c), 1198f, _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, -1112f)) - vec2<f32>(global0.c, -686f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, global0.c) * vec2<f32>(global0.c, 1301f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, -1607f)))), vec2<f32>(573f, func_1(i32(-1i) * -838i).a.x), !(!global0.b))));
    var var_2 = Struct_1(func_5(-1i, vec4<i32>(_wgslsmith_sub_i32(-61868i, -45081i), ~13592i, func_4(Struct_2(vec3<f32>(-113f, var_1.a.x, -1000f), var_1.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 22894i), vec2<i32>(-2147483647i, -2259i)), ~vec3<u32>(u_input.a.x, 1u, 18535u)), func_3(vec3<u32>(global0.a.x, global0.a.x, 1u), vec3<bool>(global0.d, global0.d, true), u_input.a.xz).x ^ -30608i), -_wgslsmith_div_i32(8746i, 35299i), func_1(-2147483647i)).a, global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1734f + var_1.b.x) + _wgslsmith_f_op_f32(var_1.b.x * 1595f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-718f, global0.c, global0.d)) - 1f))), global0.b);
    var_0 = -(~(~_wgslsmith_div_i32(1i, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(-22176i, 41145i)) | -2147483647i, (-2147483647i >> (global0.a.x % 32u)) & -41190i), ~(-16113i)));
}

