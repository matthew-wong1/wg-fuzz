struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: f32) -> vec2<bool> {
    global1 = u_input.c;
    let var_0 = Struct_1((_wgslsmith_mult_vec3_i32(~vec3<i32>(-13079i, 2147483647i, 1i), vec3<i32>(u_input.b, -1i, u_input.e)) >> (~(~vec3<u32>(u_input.a, u_input.c, 4294967295u)) % vec3<u32>(32u))) & vec3<i32>(-_wgslsmith_sub_i32(-14871i, u_input.e), select(max(2147483647i, u_input.b), u_input.b, true), _wgslsmith_add_i32(u_input.e >> (u_input.d.x % 32u), ~1i)), (global0.x || (_wgslsmith_f_op_f32(trunc(arg_2)) <= _wgslsmith_div_f32(arg_2, arg_2))) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(613f * arg_2), _wgslsmith_f_op_f32(sign(-1518f)))));
    let var_1 = select(countOneBits(abs(max(vec3<u32>(0u, u_input.d.x, 1764u), u_input.d.wzw))), ~u_input.d.yzw, select(select(!vec3<bool>(true, true, arg_1), arg_0, var_0.b), arg_0, true));
    var var_2 = Struct_1(abs(_wgslsmith_clamp_vec3_i32(var_0.a, abs(var_0.a | vec3<i32>(var_0.a.x, u_input.b, var_0.a.x)), var_0.a)), false);
    global1 = var_1.x;
    return !arg_0.zz;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec4<bool> {
    let var_0 = arg_0;
    return select(vec4<bool>(select(!global0.x, true, false), all(!select(vec3<bool>(var_0.b, false, arg_1.b), vec3<bool>(true, false, arg_1.b), vec3<bool>(arg_0.b, false, true))), global0.x, all(select(vec2<bool>(true, true), func_3(vec3<bool>(arg_1.b, false, global0.x), arg_0.b, -1533f), global0.x == true))), !select(!select(vec4<bool>(arg_0.b, false, false, true), vec4<bool>(var_0.b, arg_0.b, arg_1.b, arg_0.b), vec4<bool>(global0.x, true, true, true)), vec4<bool>(false != global0.x, true, true, true), func_3(!vec3<bool>(global0.x, arg_0.b, true), arg_0.b, 1428f).x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1290f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(ceil(666f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-427f, _wgslsmith_div_f32(264f, 1690f)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<u32>) -> Struct_1 {
    global0 = !vec2<bool>(all(func_2(Struct_1(vec3<i32>(-24789i, 4237i, u_input.e), false), arg_0, ~arg_1.x)), true);
    global1 = ~u_input.d.x | ~(u_input.a << (1u % 32u));
    let var_0 = ~u_input.e;
    var var_1 = Struct_1(vec3<i32>(~0i, arg_1.x, countOneBits(-28611i) >> (_wgslsmith_clamp_u32(14223u, arg_2.x ^ arg_2.x, ~29643u) % 32u)), arg_0.b);
    var var_2 = Struct_1(~(-firstLeadingBit(~var_1.a)), any(vec3<bool>(true, true, false)));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = func_1(func_1(func_1(arg_0, arg_1.zy, _wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(4294967295u, 16148u, u_input.d.x, 55881u))), -vec2<i32>(-2147483647i, arg_0.a.x) >> (vec2<u32>(_wgslsmith_mult_u32(u_input.c, 3337u), _wgslsmith_mult_u32(78464u, 1u)) % vec2<u32>(32u)), ~select(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c, u_input.d.x, 60228u), u_input.d), vec4<u32>(u_input.a, u_input.d.x, 1u, 1u) & u_input.d, vec4<bool>(true, false, true, arg_0.b))), ~vec2<i32>(-arg_1.x, 8037i), vec4<u32>(u_input.d.x, _wgslsmith_div_u32(u_input.d.x, u_input.c), ~(~u_input.d.x), ~min(_wgslsmith_clamp_u32(u_input.d.x, 31987u, u_input.d.x), ~u_input.c)));
    global0 = func_3(!select(func_2(Struct_1(arg_3.a, arg_0.b), Struct_1(vec3<i32>(u_input.e, arg_3.a.x, 2147483647i), false), -2147483647i).wyx, vec3<bool>(global0.x, false, true), false), func_3(select(select(select(vec3<bool>(true, false, var_0.b), vec3<bool>(true, true, arg_0.b), vec3<bool>(false, true, false)), !vec3<bool>(arg_2.b, false, var_0.b), !vec3<bool>(arg_3.b, arg_2.b, true)), select(func_2(Struct_1(arg_3.a, false), Struct_1(var_0.a, arg_0.b), -18854i).yxx, func_2(arg_0, arg_3, -11583i).zwz, vec3<bool>(true, arg_3.b, false)), true), true, -344f).x, _wgslsmith_f_op_f32(1281f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2282f)) + 552f) - 479f)));
    var_0 = func_1(Struct_1(firstLeadingBit(~vec3<i32>(arg_1.x, 1i, 0i)), u_input.c < (~u_input.a >> (_wgslsmith_sub_u32(u_input.d.x, 59096u) % 32u))), select(_wgslsmith_sub_vec2_i32(var_0.a.xy, arg_3.a.yx), min(arg_3.a.zy, ~vec2<i32>(-22046i, u_input.e)), func_3(vec3<bool>(var_0.b, false, true), true == global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(420f - -596f)))), abs(select(_wgslsmith_sub_vec4_u32(u_input.d, u_input.d), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.d.x, u_input.d.x), ~4294967295u, select(0u, 0u, arg_0.b), u_input.a >> (u_input.d.x % 32u)), arg_2.b)));
    var var_1 = func_1(Struct_1(arg_3.a, !any(!vec2<bool>(false, arg_3.b))), max(abs(firstLeadingBit(reverseBits(vec2<i32>(1i, arg_2.a.x)))), -(arg_3.a.xy << (vec2<u32>(u_input.c, u_input.d.x) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_add_u32(u_input.c, 16246u), firstLeadingBit(u_input.a)) % vec2<u32>(32u))), vec4<u32>(u_input.c, u_input.a, ~_wgslsmith_div_u32(~0u, 1u), (_wgslsmith_add_u32(105625u, u_input.a) | u_input.d.x) ^ 4294967295u));
    var_1 = func_1(arg_2, firstLeadingBit(-_wgslsmith_sub_vec2_i32(max(var_0.a.xx, vec2<i32>(var_0.a.x, 2147483647i)), vec2<i32>(0i, var_0.a.x))), abs(select(u_input.d, u_input.d, !func_2(Struct_1(vec3<i32>(0i, u_input.b, var_0.a.x), true), Struct_1(vec3<i32>(-1i, arg_2.a.x, 9285i), true), -1i))));
    return max(vec3<i32>(_wgslsmith_clamp_i32(19926i, _wgslsmith_dot_vec4_i32(-vec4<i32>(35078i, -1i, -1i, arg_2.a.x), -vec4<i32>(-2147483647i, -4913i, 2147483647i, 2147483647i)), abs(~u_input.b)), -var_1.a.x, i32(-1i) * -9825i), vec3<i32>((~40476i & ~arg_0.a.x) & -14952i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(firstLeadingBit(arg_3.a.x), min(var_1.a.x, 2147483647i)), -(~2147483647i), ~var_1.a.x), arg_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_u32(u_input.d.x, u_input.c);
    let var_0 = Struct_1(max(-func_4(Struct_1(vec3<i32>(u_input.e, 0i, 15999i), global0.x), -vec3<i32>(u_input.b, -10718i, 1i), func_1(Struct_1(vec3<i32>(u_input.e, u_input.b, -1i), true), vec2<i32>(-2147483647i, -2147483647i), vec4<u32>(4294967295u, 4294967295u, u_input.c, 49442u)), func_1(Struct_1(vec3<i32>(2147483647i, -2147483647i, u_input.b), true), vec2<i32>(u_input.b, u_input.b), vec4<u32>(u_input.a, 41026u, 4294967295u, u_input.d.x))), (vec3<i32>(-1i) * -vec3<i32>(u_input.b, 2147483647i, u_input.e)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(36207u, 1u, u_input.d.x) ^ u_input.d.zwx, vec3<u32>(u_input.a, u_input.c, 0u)) % vec3<u32>(32u))), false);
    var var_1 = func_1(func_1(func_1(func_1(Struct_1(var_0.a, false), ~var_0.a.yz, _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(u_input.a, 80874u, 38450u, u_input.d.x))), _wgslsmith_mult_vec2_i32(var_0.a.xz, var_0.a.xz | vec2<i32>(var_0.a.x, -36002i)), select(select(u_input.d, u_input.d, var_0.b), u_input.d, any(vec2<bool>(true, var_0.b)))), var_0.a.yy, ((vec4<u32>(0u, u_input.d.x, 0u, 4294967295u) ^ u_input.d) ^ ~u_input.d) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(46384u, u_input.a, 41471u, u_input.d.x), u_input.d) & u_input.d) % vec4<u32>(32u))), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-10246i, var_0.a.x)) | vec2<i32>(~0i, u_input.e), vec2<i32>(1i, ~func_4(Struct_1(var_0.a, false), var_0.a, var_0, Struct_1(var_0.a, var_0.b)).x)), u_input.d);
    var_1 = Struct_1(-(var_1.a << (countOneBits(abs(u_input.d.xyw)) % vec3<u32>(32u))), true);
    var_1 = var_0;
    var var_2 = -972f;
    var var_3 = vec2<u32>(~(~_wgslsmith_mod_u32(4294967295u, abs(34272u))), ~33411u);
    let var_4 = var_0;
    var_3 = u_input.d.zy;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~u_input.a, ~_wgslsmith_mod_u32(50557u, 27485u), firstTrailingBit(_wgslsmith_div_u32(~var_3.x, max(4294967295u, u_input.a))), countOneBits(u_input.d.x)));
}

