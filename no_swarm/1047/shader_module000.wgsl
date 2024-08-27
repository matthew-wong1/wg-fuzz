struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    global0 = !vec4<bool>(true, !(true | !global0.x), global0.x, max(20010i, u_input.b.x & 33766i) != 2147483647i);
    let var_0 = countOneBits((~vec4<i32>(0i, u_input.d, -77944i, 0i) << (~vec4<u32>(4294967295u, 1937u, 4373u, 23442u) % vec4<u32>(32u))) ^ select(max(vec4<i32>(-1i, 1i, u_input.d, u_input.b.x), vec4<i32>(u_input.c, -1i, -2147483647i, -1i)), firstTrailingBit(vec4<i32>(1i, u_input.c, -1i, u_input.a)), true)) | -vec4<i32>(select(u_input.a, _wgslsmith_mod_i32(45492i, u_input.d), any(vec4<bool>(false, global0.x, true, global0.x))), ~u_input.a | ~u_input.b.x, _wgslsmith_dot_vec2_i32(min(u_input.b, u_input.b), _wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, u_input.b)), u_input.a);
    global0 = !(!select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, global0.x, global0.x), false), vec4<bool>(true, true, true, true), any(!global0.xz)));
    return select(select(!vec4<bool>(any(global0.zwy), !global0.x, all(vec4<bool>(false, global0.x, global0.x, global0.x)), any(global0.xz)), !(!(!vec4<bool>(global0.x, global0.x, global0.x, true))), !(!select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, true, false, false)))), !(!(!select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, global0.x, true, global0.x), true))), global0.x);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    global0 = select(!(!(!vec4<bool>(global0.x, true, arg_0.b, false))), vec4<bool>(all(select(!vec4<bool>(true, global0.x, arg_0.b, arg_0.b), vec4<bool>(global0.x, false, global0.x, false), func_3())), any(vec2<bool>(-14006i > u_input.a, true)), true, arg_0.b), select(!vec4<bool>(any(vec4<bool>(false, arg_0.b, arg_0.b, false)), func_3().x, true || arg_0.b, true), !(!(!vec4<bool>(arg_0.b, false, false, arg_0.b))), true));
    global0 = vec4<bool>(72711i >= _wgslsmith_div_i32(min(abs(arg_0.a.x), arg_0.a.x), -u_input.d), true, any(!vec2<bool>(arg_0.b, arg_0.b)), true);
    var var_0 = Struct_3(1u, !(!select(select(vec3<bool>(true, true, true), global0.yzw, true), vec3<bool>(true, global0.x, true), vec3<bool>(true, false, arg_0.b))), arg_0, _wgslsmith_div_vec4_i32(max(vec4<i32>(20098i, 0i, arg_0.a.x, arg_0.a.x) & vec4<i32>(arg_0.a.x, -23624i, u_input.b.x, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(-12362i, arg_0.a.x, -1i, u_input.c), vec4<i32>(arg_0.a.x, -4099i, 34157i, u_input.b.x))), select(vec4<i32>(-15995i, -38549i, arg_0.a.x, -7449i), vec4<i32>(arg_0.a.x, arg_0.a.x, 1i, arg_0.a.x), vec4<bool>(global0.x, false, arg_0.b, true))) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 2465u, 4294967295u, 22007u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
    var_0 = Struct_3(select(min(var_0.a, select(var_0.a & var_0.a, _wgslsmith_div_u32(1u, var_0.a), global0.x)), ~var_0.a, !any(!global0.xwz)), select(select(func_3().xxz, global0.xyy, all(vec2<bool>(var_0.b.x, var_0.c.b))), !select(vec3<bool>(true, arg_0.b, true), global0.ywx, func_3().xxz), global0.xxz), arg_0, vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(-27098i, ~var_0.c.a.x, -13592i, -arg_0.a.x)), min(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, var_0.d.x, -40055i), vec4<i32>(arg_0.a.x, arg_0.a.x, 7438i, arg_0.a.x)) | 1i), 28942i));
    let var_1 = Struct_4(var_0.d.x, _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(var_0.a, 0u, var_0.a)) & vec3<u32>(~var_0.a, min(var_0.a, 13776u), var_0.a ^ var_0.a), select(~vec3<u32>(var_0.a, 0u, 9919u), ~(~vec3<u32>(var_0.a, var_0.a, var_0.a)), false)));
    return 93319u;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> f32 {
    global0 = func_3();
    global0 = arg_1;
    global0 = vec4<bool>(any(select(arg_1, select(!arg_1, select(arg_1, arg_1, arg_1), select(arg_1, arg_1, vec4<bool>(true, false, arg_1.x, arg_1.x))), arg_1)), all(global0.yzz), arg_1.x, true);
    global0 = arg_1;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1154f, _wgslsmith_f_op_f32(-1277f + -1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1165f, 1169f) + 1195f)))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1655f, -572f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 142f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1777f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1701f)))), _wgslsmith_f_op_f32(-889f - -129f)))));
}

fn func_1() -> StorageBuffer {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f) * -821f), _wgslsmith_f_op_f32(func_4(~vec4<u32>(_wgslsmith_mod_u32(1u, 4294967295u), 1u, func_2(Struct_1(vec2<i32>(u_input.c, u_input.d), true), -301f), _wgslsmith_add_u32(1u, 0u)), select(select(func_3(), !vec4<bool>(global0.x, global0.x, false, true), all(vec3<bool>(global0.x, true, global0.x))), select(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, true, false, true), false), vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(false, true, true, true)), true), Struct_2(-28995i))));
    var var_1 = Struct_4(_wgslsmith_clamp_i32(-2147483647i, u_input.d | _wgslsmith_clamp_i32(11324i | u_input.a, ~u_input.c, u_input.d), firstTrailingBit(_wgslsmith_clamp_i32(1i, u_input.c, u_input.c))), abs(~vec3<u32>(1u, 1u, 1u)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1964f)), _wgslsmith_f_op_f32(-1f))));
    var_1 = Struct_4(-1i, _wgslsmith_mod_vec3_u32(abs(vec3<u32>(56716u, var_1.b.x, 4294967295u)) >> (~_wgslsmith_mult_vec3_u32(var_1.b, var_1.b) % vec3<u32>(32u)), ~select(~vec3<u32>(8174u, 15662u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b.x, 70506u, 4208u), var_1.b), true)));
    let var_2 = Struct_4(_wgslsmith_mult_i32(1i, -var_1.a << (45111u % 32u)), firstLeadingBit(vec3<u32>(~30127u, var_1.b.x, var_1.b.x)));
    return StorageBuffer(151f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1131f - _wgslsmith_f_op_f32(func_4(vec4<u32>(1u, 4294967295u, var_2.b.x, 4294967295u), vec4<bool>(global0.x, global0.x, global0.x, false), Struct_2(-1i)))), _wgslsmith_f_op_f32(func_4(vec4<u32>(30576u, 4294967295u, 6222u, 1u), select(vec4<bool>(global0.x, false, true, false), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(false, false, global0.x, false)), Struct_2(40626i))), var_0.x, 296f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

