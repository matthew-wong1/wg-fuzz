struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
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

var<private> global0: Struct_3;

var<private> global1: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    global0 = arg_1;
    global1 = any(select(vec4<bool>(arg_1.b.a, !(!arg_0.c.x), false, any(select(global0.c, arg_1.c, vec3<bool>(global0.b.a, arg_0.b.a, arg_0.c.x)))), vec4<bool>(true, true, true, true), global0.c.x));
    let var_0 = arg_1.b.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -871f))), _wgslsmith_f_op_f32(min(471f, 305f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-582f, 328f))), -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(823f, 122f, -887f, -747f))))) * vec4<f32>(-298f, _wgslsmith_f_op_f32(-506f + -1502f), _wgslsmith_f_op_f32(f32(-1f) * -701f), 1032f)), !select(all(vec3<bool>(arg_1.c.x, var_0, arg_1.b.a)), true, global0.c.x)))));
    var var_2 = Struct_3(_wgslsmith_mult_i32(select(-9613i, u_input.a.x, 139673u > _wgslsmith_dot_vec3_u32(vec3<u32>(4978u, 1u, u_input.b.x), u_input.b)), 1i), arg_0.b, vec3<bool>(select(all(!vec2<bool>(arg_0.b.a, false)), true, false), false, true), 0u, Struct_2(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.e.a, 38679i), u_input.a.ww))));
    return _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1745f - _wgslsmith_div_f32(-182f, var_1.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -736f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1445f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2069f) - -464f)))));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-127f * -925f) + -1489f), _wgslsmith_f_op_f32(func_3(Struct_3(min(0i, 1i), global0.b, vec3<bool>(false, global0.b.a, true), reverseBits(19943u), Struct_2(global0.a)), Struct_3(~890i, global0.b, vec3<bool>(global0.b.a, global0.c.x, false), 1u, Struct_2(u_input.a.x))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-1379f - 539f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-192f + -1248f) - -1000f)))));
    let var_2 = Struct_1(any(select(!vec2<bool>(global0.c.x, global0.c.x), !select(global0.c.zz, vec2<bool>(global0.b.a, true), global0.c.zz), global0.c.zx)));
    let var_3 = ~0u;
    let var_4 = Struct_4(abs(4294967295u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 142f, var_1.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-1259f * var_1.x), 345f, _wgslsmith_f_op_f32(round(var_1.x)))));
    return Struct_1(!global0.c.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: u32, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(reverseBits(0u)) ^ arg_1.d, reverseBits(~4294967295u), arg_1.d, 1u), vec4<u32>(~abs(global0.d), ~(~(~arg_2)), reverseBits(max(arg_1.d, 57088u)) & ~arg_2, _wgslsmith_div_u32(u_input.b.x, 2386u)), max(_wgslsmith_mod_vec4_u32(max(vec4<u32>(60287u, global0.d, arg_2, arg_2), vec4<u32>(1u, arg_2, arg_1.d, arg_2)), ~(vec4<u32>(arg_2, arg_1.d, arg_1.d, 4294967295u) & vec4<u32>(28212u, 4294967295u, 20371u, 4294967295u))), abs(select(firstLeadingBit(vec4<u32>(u_input.b.x, 9154u, global0.d, 45136u)), vec4<u32>(1u, 71144u, arg_2, arg_1.d), select(vec4<bool>(arg_1.c.x, arg_1.c.x, false, arg_0.x), vec4<bool>(true, global0.c.x, global0.c.x, true), arg_0.x)))));
    var var_1 = Struct_3(reverseBits(countOneBits(-global0.a)) | _wgslsmith_sub_i32(-1i, firstTrailingBit(arg_1.e.a)), global0.b, vec3<bool>(!(!global0.b.a), true, 1u != ~_wgslsmith_add_u32(global0.d, 28094u)), u_input.b.x, arg_1.e);
    let var_2 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32((vec2<i32>(var_1.e.a, 10499i) | u_input.a.zx) | arg_3.xz, -firstLeadingBit(vec2<i32>(global0.a, arg_1.a))), arg_1.a));
    global0 = Struct_3(global0.e.a, var_1.b, vec3<bool>(true, func_2().a, (global0.b.a | global0.c.x) & global0.b.a), 1u, Struct_2(reverseBits(firstTrailingBit(5076i) | (2147483647i & var_1.a))));
    var var_3 = var_1.b;
    return Struct_3(arg_1.e.a, func_2(), select(select(vec3<bool>(true, true, var_3.a), select(vec3<bool>(false, true, arg_1.c.x), var_1.c, !var_1.c), true), select(arg_1.c, select(vec3<bool>(false, var_1.b.a, false), vec3<bool>(arg_0.x, arg_1.c.x, false), true), vec3<bool>(true, var_1.c.x || arg_1.b.a, false)), select(true, true, all(!vec3<bool>(var_3.a, true, var_3.a)))), var_1.d, Struct_2(var_2.a));
}

fn func_1() -> Struct_3 {
    global1 = true;
    global1 = true;
    let var_0 = false;
    var var_1 = func_4(select(global0.c.yy, global0.c.yx, !(!select(vec2<bool>(var_0, global0.c.x), global0.c.zy, global0.c.zz))), Struct_3(-73593i, func_2(), vec3<bool>(any(!vec4<bool>(true, false, global0.c.x, var_0)), false, var_0), 4294967295u, global0.e), 10455u & (global0.d << (global0.d % 32u)), vec4<i32>(1889i, global0.e.a, _wgslsmith_mod_i32(~global0.a, -u_input.a.x) >> (global0.d % 32u), _wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(u_input.a.yz, vec2<i32>(-20532i, u_input.a.x), vec2<i32>(global0.e.a, global0.e.a)), (u_input.a.zz & u_input.a.yy) << ((vec2<u32>(u_input.b.x, 4294967295u) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    var var_2 = -(~(~(-var_1.a) | firstLeadingBit(-var_1.a)));
    return func_4(select(select(global0.c.xy, !func_4(var_1.c.xz, Struct_3(39708i, Struct_1(true), global0.c, 12558u, var_1.e), u_input.b.x, u_input.a).c.xy, vec2<bool>(true, true)), func_4(select(!global0.c.zy, !global0.c.zy, vec2<bool>(false, false)), func_4(var_1.c.zx, Struct_3(2147483647i, Struct_1(false), vec3<bool>(global0.b.a, var_0, false), u_input.b.x, Struct_2(var_1.a)), _wgslsmith_clamp_u32(1u, 33780u, u_input.b.x), u_input.a ^ u_input.a), ~var_1.d | select(global0.d, var_1.d, global0.c.x), vec4<i32>(select(u_input.a.x, -1249i, global0.c.x), var_1.e.a, 10027i, u_input.a.x)).c.xy, !(!var_0) != !(var_0 && true)), func_4(!vec2<bool>(true, all(global0.c.xy)), func_4(select(select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), true), !vec2<bool>(false, global0.c.x), all(global0.c.xz)), Struct_3(~2147483647i, var_1.b, global0.c, 25634u, global0.e), ~_wgslsmith_mult_u32(4294967295u, var_1.d), u_input.a), 60891u, -firstLeadingBit(vec4<i32>(global0.e.a, 2147483647i, global0.a, 3102i))), ~(~(~max(4294967295u, 1u))), ~firstTrailingBit(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.d, u_input.b.x) | (u_input.b.yy | u_input.b.zz), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.d, global0.d), ~u_input.b.xz)), (~vec2<u32>(u_input.b.x, u_input.b.x) >> (vec2<u32>(_wgslsmith_div_u32(global0.d, 0u), ~73846u) % vec2<u32>(32u))) >> (select(select(abs(vec2<u32>(u_input.b.x, global0.d)), ~u_input.b.zy, global0.c.xy), _wgslsmith_clamp_vec2_u32(u_input.b.zx, u_input.b.yy, max(u_input.b.zy, vec2<u32>(global0.d, 1507u))), !global0.c.xz) % vec2<u32>(32u)));
    global0 = func_1();
    global0 = Struct_3(-_wgslsmith_sub_i32(u_input.a.x, global0.e.a >> (~var_0.x % 32u)), Struct_1(all(vec4<bool>(func_4(vec2<bool>(true, global0.c.x), Struct_3(-27878i, global0.b, vec3<bool>(global0.c.x, global0.b.a, global0.c.x), u_input.b.x, global0.e), u_input.b.x, u_input.a).b.a, !global0.b.a, func_4(vec2<bool>(global0.c.x, true), Struct_3(0i, Struct_1(global0.c.x), global0.c, 72937u, global0.e), var_0.x, vec4<i32>(u_input.a.x, u_input.a.x, 0i, 0i)).c.x, true))), global0.c, func_4(global0.c.xy, Struct_3(abs(i32(-1i) * -9015i), func_4(!vec2<bool>(global0.c.x, global0.c.x), Struct_3(u_input.a.x, Struct_1(global0.b.a), global0.c, 0u, global0.e), ~u_input.b.x, ~vec4<i32>(-2147483647i, 0i, 13191i, global0.e.a)).b, global0.c, func_4(func_1().c.zx, Struct_3(-3778i, Struct_1(true), vec3<bool>(true, global0.c.x, false), var_0.x, global0.e), select(2877u, u_input.b.x, global0.c.x), min(u_input.a, vec4<i32>(global0.a, 2147483647i, 1i, -5288i))).d, Struct_2(-1i)), ~max(~25775u, 57619u), ~select(select(vec4<i32>(-2147483647i, -1i, u_input.a.x, -4674i), u_input.a, global0.c.x), vec4<i32>(u_input.a.x, 1i, 0i, -19253i), !vec4<bool>(global0.c.x, true, false, global0.c.x))).d, global0.e);
    var var_1 = countOneBits(vec4<i32>(66538i << (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, var_0.x, global0.d, 0u), vec4<u32>(var_0.x, global0.d, 33121u, 15217u)), ~vec4<u32>(global0.d, 0u, global0.d, 57141u)) % 32u), select(0i, -global0.e.a, any(!vec4<bool>(true, global0.c.x, global0.c.x, true))), -global0.e.a, abs(firstLeadingBit(-2147483647i))));
    let var_2 = Struct_4(select(31678u, 0u, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-617f, 370f, 2365f)))))));
    global1 = !global0.c.x & !global0.c.x;
    let var_3 = ~50412u;
    let x = u_input.a;
    s_output = StorageBuffer(-global0.e.a);
}

