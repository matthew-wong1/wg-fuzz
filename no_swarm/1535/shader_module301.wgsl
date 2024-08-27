struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<f32, 18> = array<f32, 18>(1188f, -340f, 582f, -1191f, 742f, -667f, -1000f, 142f, 1000f, 1277f, -1000f, 206f, -799f, 1490f, -1000f, 338f, -931f, -579f);

var<private> global3: vec2<f32> = vec2<f32>(1120f, 124f);

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(~arg_3.x, arg_3.x, _wgslsmith_mult_i32(-66838i, u_input.a.x), arg_0.a.x), firstLeadingBit(-(~u_input.a)), reverseBits(~u_input.a)) >> ((_wgslsmith_mod_vec4_u32(countOneBits(~u_input.c), u_input.c) | u_input.c) % vec4<u32>(32u));
    let var_2 = -1i;
    let var_3 = any(!select(select(select(vec2<bool>(global0.b.x, true), vec2<bool>(false, true), vec2<bool>(global4.x, true)), arg_0.b.yz, global0.b.x), vec2<bool>(0u == arg_2.c.x, true), !arg_0.b.zy));
    global4 = select(select(vec2<bool>(true, true), arg_2.b.yx, true), select(vec2<bool>(true, true), vec2<bool>(all(arg_0.b.xx), any(arg_2.b.yx)), select(!select(global0.b.zy, vec2<bool>(global4.x, true), var_3), !(!arg_2.b.xy), global0.b.zx)), !all(vec2<bool>(all(vec2<bool>(global4.x, false)), all(arg_0.b.xz))));
    return all(vec2<bool>(all(vec4<bool>(all(vec3<bool>(false, global4.x, var_3)), global4.x, global2[_wgslsmith_index_u32(19365u, 18u)] < 899f, global0.b.x)), false));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    var var_0 = arg_1;
    var var_1 = true;
    let var_2 = select(!(!select(select(vec4<bool>(false, true, global4.x, false), vec4<bool>(var_0.b.x, global4.x, false, global0.b.x), vec4<bool>(global0.b.x, arg_1.b.x, false, global4.x)), !vec4<bool>(false, true, global0.b.x, false), vec4<bool>(global4.x, false, true, global4.x))), vec4<bool>(arg_1.b.x, any(vec2<bool>(func_3(Struct_1(vec3<i32>(0i, global0.a.x, arg_2), vec3<bool>(false, global4.x, false), vec2<u32>(u_input.c.x, 108820u)), global3.x, Struct_1(vec3<i32>(-1i, -1i, -2147483647i), var_0.b, vec2<u32>(var_0.c.x, 24139u)), global0.a), false)), _wgslsmith_f_op_f32(step(-2296f, _wgslsmith_f_op_f32(f32(-1f) * -1321f))) > -184f, arg_1.a.x < (21644i & countOneBits(arg_1.a.x))), func_3(Struct_1(var_0.a, vec3<bool>(4294967295u < var_0.c.x, var_0.b.x, global0.b.x), vec2<u32>(0u, arg_0.x)), -1686f, Struct_1(_wgslsmith_add_vec3_i32(global0.a, _wgslsmith_clamp_vec3_i32(u_input.a.yyz, vec3<i32>(0i, -28895i, arg_1.a.x), vec3<i32>(2147483647i, 1i, -1i))), !global0.b, vec2<u32>(global0.c.x, arg_1.c.x) & vec2<u32>(4828u, u_input.c.x)), -var_0.a ^ global0.a));
    let var_3 = arg_1;
    global0 = Struct_1(_wgslsmith_mod_vec3_i32(max(u_input.a.wyy, _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a.x, global0.a.x, 20511i), u_input.a.wzx), u_input.a.wyw, vec3<i32>(var_0.a.x, -30731i, -2147483647i))), var_3.a), var_3.b, var_3.c);
    return ~_wgslsmith_div_vec2_u32(~vec2<u32>(3631u, abs(0u)), var_3.c);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    global2 = array<f32, 18>();
    var var_1 = func_3(Struct_1((_wgslsmith_clamp_vec3_i32(u_input.a.xzx, vec3<i32>(62084i, -1i, 1i), arg_1.a) >> (firstTrailingBit(u_input.c.xyw) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_div_u32(arg_0.x, 4294967295u), 1u, 59496u) % vec3<u32>(32u)), vec3<bool>(!arg_1.b.x, any(!vec4<bool>(true, global0.b.x, true, false)), any(select(vec3<bool>(var_0.b.x, global4.x, false), var_0.b, var_0.b))), u_input.c.zy), -300f, Struct_1(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(-11087i, arg_1.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(21201i, 30584i, arg_1.a.x), vec3<i32>(-23857i, u_input.a.x, u_input.a.x))), -39736i, _wgslsmith_mult_i32(27953i, _wgslsmith_add_i32(global0.a.x, 2147483647i))), global0.b, select(~arg_0, select(u_input.c.yx, vec2<u32>(50214u, 4294967295u), vec2<bool>(var_0.b.x, var_0.b.x)), false)), global0.a);
    var var_2 = Struct_1(-vec3<i32>(u_input.a.x, max(arg_1.a.x, 2147483647i), _wgslsmith_mod_i32(arg_1.a.x, -8423i) >> (var_0.c.x % 32u)), var_0.b, ~var_0.c);
    var var_3 = Struct_1(global0.a, !select(vec3<bool>(true, global4.x == false, all(vec4<bool>(false, false, false, global0.b.x))), !vec3<bool>(global0.b.x, var_2.b.x, var_0.b.x), true), vec2<u32>(_wgslsmith_clamp_u32(~(~var_2.c.x), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 4294967295u, 0u, var_0.c.x)), reverseBits(u_input.c)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, var_0.c.x, var_0.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(43130u, 2903u, arg_0.x), u_input.c.zzw))), var_2.c.x));
    return -countOneBits(var_3.a.x);
}

fn func_1(arg_0: vec3<f32>) -> vec2<f32> {
    var var_0 = !select(select(!vec3<bool>(true, true, global0.b.x), vec3<bool>(true, false, global4.x), global0.b), !vec3<bool>(!global4.x, true, false), !(!vec3<bool>(global0.b.x, true, true)));
    var var_1 = false;
    var_1 = _wgslsmith_div_i32(_wgslsmith_div_i32(func_4(func_2(u_input.c, Struct_1(vec3<i32>(-2147483647i, global0.a.x, u_input.a.x), global0.b, u_input.c.xz), 0i), Struct_1(global0.a, vec3<bool>(global0.b.x, false, var_0.x), vec2<u32>(53767u, u_input.c.x))), ~global0.a.x >> (4294967295u % 32u)), ~firstLeadingBit(~(-60915i))) == -11489i;
    global1 = arg_0.x;
    global4 = select(vec2<bool>(false, select(var_0.x, true, true & (var_0.x | false))), select(select(global0.b.yx, var_0.zx, any(!vec2<bool>(global4.x, false))), vec2<bool>(all(vec4<bool>(false, global0.b.x, true, global4.x)), false), !vec2<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(global4.x, true, true, true)))), global0.b.zx);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-567f, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(45470u, 18u)]);
    let var_0 = Struct_1(global0.a << (_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c.x, 4294967295u, global0.c.x)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.wzz, vec3<u32>(global0.c.x, 0u, global0.c.x)), vec3<u32>(9660u, 35786u, global0.c.x))) % vec3<u32>(32u)), select(vec3<bool>(!global0.b.x, global0.b.x, !all(vec4<bool>(global4.x, global0.b.x, global4.x, global4.x))), select(global0.b, vec3<bool>(false, all(vec2<bool>(global4.x, true)), all(vec2<bool>(false, true))), false | global0.b.x), global0.b), u_input.c.yz);
    global3 = _wgslsmith_f_op_vec2_f32(func_1(vec3<f32>(116f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 18u)] + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-452f)), -1540f, true | global0.b.x))), _wgslsmith_f_op_f32(floor(-340f)))));
    global1 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(38056u, ~global0.c.x), var_0.c.x), 18u)] - 1692f);
    var var_1 = ~(~_wgslsmith_clamp_u32(global0.c.x, 4372u, u_input.c.x));
    var var_2 = var_0;
    global2 = array<f32, 18>();
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~30967u), _wgslsmith_add_u32(~u_input.b, 4294967295u)), vec2<u32>(_wgslsmith_mod_u32(~var_2.c.x, countOneBits(1u)), _wgslsmith_sub_u32(var_0.c.x, _wgslsmith_add_u32(global0.c.x, 4294967295u)))), ~(i32(-1i) * -1i), (~u_input.a ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, var_0.a.x, var_2.a.x, 1660i), _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(var_0.a.x, u_input.a.x, -2147483647i, 7272i)), u_input.a)) & u_input.a, ~var_0.c.x);
}

