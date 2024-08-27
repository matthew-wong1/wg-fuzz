struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, 0i, -1i);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> i32 {
    var var_0 = global0.x;
    var_0 = firstTrailingBit(select(~((u_input.b.x | global0.x) ^ _wgslsmith_mult_i32(-899i, 34894i)), -10859i, false));
    var_0 = firstTrailingBit(i32(-1i) * -countOneBits(36920i));
    global0 = u_input.b;
    var var_1 = Struct_4(~select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 16556u, u_input.a.x, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), 0u, ~u_input.a.x, u_input.a.x), select(vec4<u32>(51034u, u_input.a.x, 40136u, 33977u) << (vec4<u32>(u_input.a.x, u_input.a.x, 26551u, u_input.a.x) % vec4<u32>(32u)), abs(vec4<u32>(16198u, 9295u, u_input.a.x, 0u)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true))), !any(vec4<bool>(true, true, true, false))));
    return -(~global0.x);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: u32) -> i32 {
    global0 = firstLeadingBit(u_input.b);
    var var_0 = Struct_2(-2147483647i, 0i, -(_wgslsmith_div_i32(-13194i, 1i >> (arg_3 % 32u)) >> (~abs(u_input.a.x) % 32u)), Struct_1(_wgslsmith_sub_i32(1i, ~_wgslsmith_mult_i32(-1i, -40875i)), arg_0.d.b, global0.xz));
    let var_1 = firstLeadingBit(1i) << (0u % 32u);
    var var_2 = !(!all(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))));
    global0 = _wgslsmith_div_vec3_i32(-select(max(_wgslsmith_div_vec3_i32(var_0.d.b.wyw, u_input.b), vec3<i32>(global0.x, -15939i, var_0.c)), max(u_input.b, var_0.d.b.yyy), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true))), reverseBits(vec3<i32>(~var_1, -1i ^ arg_1, _wgslsmith_add_i32(arg_0.b, 2147483647i))) << (u_input.a % vec3<u32>(32u)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, i32(-1i) * -2147483647i), vec2<i32>(arg_1, -2147483647i));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.d;
    let var_1 = func_2();
    var var_2 = -(_wgslsmith_sub_i32(var_0.b.x, 9015i) >> (abs(~u_input.a.x << (~1u % 32u)) % 32u));
    var var_3 = ~var_1;
    global0 = ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(global0.x, _wgslsmith_mod_i32(arg_0.a, 2147483647i)), -func_3(arg_0, var_1, -1244f, u_input.a.x), min(func_2(), 7795i)), vec3<i32>(abs(26817i), arg_0.c, _wgslsmith_clamp_i32(-1i, -global0.x, ~global0.x)));
    return Struct_1(arg_0.b, countOneBits(vec4<i32>(-13728i, _wgslsmith_mult_i32(var_0.a, ~var_1), var_0.b.x, var_0.c.x)), var_0.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.xx - _wgslsmith_f_op_vec2_f32(-arg_1.a.yy)));
    let var_1 = ~abs(vec3<i32>(0i, -26467i, -u_input.b.x));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.a.yz)));
    var var_2 = Struct_3(arg_2.d.xzz, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_1.b)))), any(!vec4<bool>(false, any(vec3<bool>(arg_1.c, true, true)), arg_2.c, true)), arg_2.d);
    let var_3 = _wgslsmith_add_u32(~(~(~min(u_input.a.x, u_input.a.x))), reverseBits(~67050u));
    return -countOneBits(-(min(global0.xx, u_input.b.yy) << (u_input.a.yx % vec2<u32>(32u))));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> StorageBuffer {
    global0 = min(firstTrailingBit(abs(vec3<i32>(arg_0.b, global0.x, 33853i)) & u_input.b), _wgslsmith_mult_vec3_i32((firstTrailingBit(arg_0.d.b.yzz) | -u_input.b) | arg_0.d.b.zyw, u_input.b));
    var var_0 = select(arg_1, !any(vec3<bool>(true, true, false)), arg_1) & false;
    global0 = vec3<i32>(~(~2147483647i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.d.c, global0.zy) & ~vec2<i32>(arg_0.a, global0.x), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 31032i), u_input.b.yy, global0.xz), vec2<i32>(global0.x, arg_0.c) ^ vec2<i32>(1i, global0.x), select(true, arg_1, arg_1))), u_input.b.x << (reverseBits(4294967295u) % 32u), -56174i | _wgslsmith_clamp_i32(7722i, func_3(arg_0, global0.x, -564f, 1134u), arg_0.d.b.x)), global0.x);
    let var_1 = u_input.a.yz;
    var var_2 = ~u_input.b;
    return StorageBuffer(u_input.a.xz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_vec2_i32(~(-_wgslsmith_mod_vec2_i32(u_input.b.yx, global0.xz)), abs(~(vec2<i32>(global0.x, 4987i) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)))));
    var_0 = abs(-select(firstLeadingBit(vec2<i32>(0i, 2147483647i)), -vec2<i32>(global0.x, -1i), vec2<bool>(true, true))) << (~min(~(vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a.xz % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(u_input.a.x, 66743u)) ^ vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u));
    let var_1 = var_0.x;
    let x = u_input.a;
    s_output = func_5(Struct_2(_wgslsmith_sub_i32(u_input.b.x, -34668i), ~u_input.b.x, _wgslsmith_dot_vec2_i32(func_4(func_1(Struct_2(u_input.b.x, 2147483647i, global0.x, Struct_1(-46519i, vec4<i32>(global0.x, u_input.b.x, 2147483647i, 2056i), vec2<i32>(30682i, u_input.b.x)))), Struct_3(vec3<f32>(-123f, -113f, 1635f), 1106f, true, vec4<f32>(294f, -600f, -1453f, -593f)), Struct_3(vec3<f32>(327f, -2103f, -2310f), -1128f, true, vec4<f32>(2089f, 395f, -516f, -113f))), abs(global0.xx)), func_1(Struct_2(0i, func_1(Struct_2(-5786i, 0i, -2147483647i, Struct_1(0i, vec4<i32>(global0.x, 14213i, u_input.b.x, -1i), vec2<i32>(16457i, -70392i)))).b.x, 0i, func_1(Struct_2(u_input.b.x, 0i, -18646i, Struct_1(u_input.b.x, vec4<i32>(4620i, u_input.b.x, 0i, -1i), global0.yx)))))), -(var_0.x & abs(u_input.b.x)) > (-1i >> (u_input.a.x % 32u)));
}

