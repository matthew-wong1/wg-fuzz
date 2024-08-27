struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec3<f32>(229f, 147f, -1091f), 61080i, vec4<i32>(-1i, -4602i, 0i, 29094i));

var<private> global1: Struct_1;

var<private> global2: Struct_3 = Struct_3(-24131i);

var<private> global3: bool;

var<private> global4: vec3<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = select(vec2<bool>(any(vec3<bool>(global1.a || arg_0, global0.a, false || global0.a)), true), select(!vec2<bool>(true, global4.x == 1u), select(select(!vec2<bool>(arg_0, global1.a), vec2<bool>(false, false), all(vec4<bool>(false, global0.a, false, global1.a))), !(!vec2<bool>(false, global1.a)), !(!vec2<bool>(global0.a, false))), !select(!vec2<bool>(arg_0, global1.a), !vec2<bool>(global0.a, global0.a), !vec2<bool>(global1.a, global0.a))), !(!select(vec2<bool>(global0.a, global1.a), select(vec2<bool>(false, false), vec2<bool>(arg_0, true), arg_0), vec2<bool>(true, global0.a))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1487f) - 377f)));
    let var_2 = vec2<bool>(true, true);
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(740f, global1.b.x), vec2<f32>(_wgslsmith_f_op_f32(round(global1.b.x)), global0.b.x))), vec2<f32>(-337f, _wgslsmith_div_f32(2540f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(223f, global1.b.x) + -1000f))), true));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.x, -909f)) + _wgslsmith_f_op_f32(f32(-1f) * -1980f)) * -1537f)));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b))), _wgslsmith_div_i32(~global1.c, 2147483647i), global1.d), -543f);
    let var_1 = var_0.a;
    let var_2 = vec4<f32>(global1.b.x, global1.b.x, _wgslsmith_f_op_f32(abs(global0.b.x)), _wgslsmith_f_op_f32(func_3(true)));
    global2 = Struct_3(i32(-1i) * -2147483647i);
    global4 = ~min(vec3<u32>(~30045u, global4.x | global4.x, 1u) & firstLeadingBit(vec3<u32>(4294967295u, global4.x, 1u)), vec3<u32>(19589u, ~(~global4.x), ~33168u));
    return var_1;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = true;
    global4 = vec3<u32>(reverseBits(global4.x), 1u, ~(~0u));
    var_0 = !(global0.a && !func_2(vec2<i32>(15365i, -21664i)).a);
    var var_1 = arg_0;
    global1 = func_2(select(global1.d.wx, arg_1 ^ global0.d.zz, select(vec2<bool>(true, true), vec2<bool>(true, true), global0.a)) | vec2<i32>(-1i, _wgslsmith_clamp_i32(arg_1.x, reverseBits(arg_1.x), ~global0.c)));
    return arg_0;
}

fn func_1() -> f32 {
    global2 = func_4(Struct_3(~_wgslsmith_mult_i32(_wgslsmith_sub_i32(global1.d.x, global1.d.x), 64827i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-12466i, ~global2.a & firstTrailingBit(u_input.a.x)), vec2<i32>(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_div_i32(global0.c, -1i)), max(_wgslsmith_sub_i32(u_input.a.x, 49307i), select(u_input.a.x, u_input.a.x, true))), -(~abs(vec2<i32>(global0.d.x, 0i)))), func_2(~vec2<i32>(-79904i | global2.a, select(global0.c, 1i, true))));
    var var_0 = select(min(~_wgslsmith_mult_i32(51048i, u_input.a.x), _wgslsmith_add_i32(-1i, func_4(Struct_3(global1.c), vec2<i32>(global1.c, 25170i), Struct_1(global1.a, vec3<f32>(global0.b.x, 1382f, global0.b.x), global1.d.x, global0.d)).a)), u_input.a.x, global1.a) & global2.a;
    let var_1 = Struct_1(global1.a, global0.b, firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(-14056i, 0i, -1i, u_input.a.x), vec4<i32>(global0.c, 0i, min(-21839i, u_input.a.x), -2147483647i))), countOneBits(u_input.a));
    let var_2 = vec2<i32>(i32(-1i) * -(~abs(1i)), -global2.a);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.b.x)), global0.b.x);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: vec4<u32>) -> Struct_3 {
    return func_4(Struct_3(reverseBits(countOneBits(3584i))), firstLeadingBit(vec2<i32>(global2.a, global2.a)), Struct_1(arg_1.a.a, global1.b, global1.c, -((vec4<i32>(14490i, arg_1.a.c, global1.c, 17093i) << (vec4<u32>(arg_3.x, 1u, 0u, 72443u) % vec4<u32>(32u))) << (arg_3 % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(2147483647i, Struct_2(Struct_1(!global1.a & (global1.a && global1.a), vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(global0.b.x * -2220f)), _wgslsmith_div_i32(~u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.a, global0.d.x, u_input.a.x, global2.a), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 0i, 1i, global0.d.x), global0.d), abs(vec4<i32>(global0.c, u_input.a.x, -1i, global0.c)))), -1360f), global1.b.x, vec4<u32>(_wgslsmith_mult_u32(global4.x, 71572u), _wgslsmith_mod_u32(~global4.x, 23053u), global4.x, 36137u ^ global4.x));
    let var_1 = 2147483647i;
    var var_2 = global1.a | global0.a;
    let var_3 = !global1.a;
    global0 = Struct_1(!(!all(vec4<bool>(var_3, global1.a, true, var_3))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1383f, global1.b.x, global1.b.x))) + vec3<f32>(_wgslsmith_div_f32(global0.b.x, global0.b.x), _wgslsmith_f_op_f32(trunc(191f)), global1.b.x)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(global1.b.x + 986f), _wgslsmith_f_op_f32(-global1.b.x), 1193f)))), global1.d.x, vec4<i32>(~(-(i32(-1i) * -41818i)), var_0.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, var_1, -11821i, var_1) | vec4<i32>(global1.c, global1.c, -52209i, global1.d.x), func_2(-global0.d.zw).d), _wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, reverseBits(global1.d.x)), global0.c)));
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(vec2<i32>(min(var_0.a, -1i) ^ select(global1.d.x, -9453i, false), var_1)).d.x, firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(83180u, global4.x, 75955u, global4.x), vec4<u32>(4294967295u, global4.x, global4.x, global4.x)) ^ max(global4.x, 4294967295u)), vec3<f32>(-616f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(global1.b.x, global0.b.x), true & global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(995f + global1.b.x)) * _wgslsmith_f_op_f32(-global0.b.x))), 58090u, 278f);
}

