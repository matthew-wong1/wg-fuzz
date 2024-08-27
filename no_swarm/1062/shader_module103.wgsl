struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
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

var<private> global0: bool = false;

var<private> global1: array<Struct_4, 11>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(20350i, 4370i, 57616i, 20306i), vec4<i32>(-1i, 1i, 12082i, 1i));

var<private> global3: vec2<i32> = vec2<i32>(1i, 1i);

var<private> global4: vec4<i32> = vec4<i32>(44572i, 2147483647i, 18466i, 21183i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-492f, -318f))))), 845f))));
    let var_1 = Struct_4(vec2<f32>(var_0, -188f), vec2<u32>(u_input.c, firstLeadingBit(reverseBits(u_input.c))), Struct_2(u_input.c, var_0, 8202u));
    global4 = (-_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2147483647i, global4.x, u_input.a), vec4<i32>(90357i, global4.x, global4.x, global3.x)) ^ vec4<i32>(16414i, 38561i, _wgslsmith_clamp_i32(~u_input.b, ~global2.a.x, u_input.a), 1i)) ^ countOneBits(global2.a);
    let var_2 = any(!vec4<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), all(vec2<bool>(false, false)) | true, !all(vec2<bool>(false, false))));
    let var_3 = global2.a;
    return vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-global2.b.x, 52245i, ~var_3.x, global2.a.x), vec4<i32>(_wgslsmith_add_i32(u_input.a, 30365i), -2207i & (global4.x >> (0u % 32u)), 40521i, _wgslsmith_add_i32(~global4.x, _wgslsmith_mod_i32(13586i, 53024i)))), -var_3.x, _wgslsmith_div_i32(2147483647i ^ firstTrailingBit(~u_input.a), i32(-1i) * -1i));
}

fn func_2() -> vec2<i32> {
    var var_0 = _wgslsmith_mod_i32(global2.b.x, max(-abs(global3.x), global4.x));
    var var_1 = abs(~(max(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), max(vec4<u32>(0u, 4294967295u, u_input.c, u_input.c), vec4<u32>(u_input.c, 1u, u_input.c, 1u))) ^ firstTrailingBit(vec4<u32>(u_input.c, u_input.c, 10011u, u_input.c) & vec4<u32>(u_input.c, 80717u, u_input.c, 42821u))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.b);
    var var_3 = global2.b.wzx;
    return vec2<i32>(_wgslsmith_dot_vec3_i32(min(global4.yxz, max(func_3(), vec3<i32>(-24682i, 0i, -50377i))), vec3<i32>(-6417i, -1i, var_3.x) ^ global4.wzx), i32(-1i) * -max(u_input.a, -9480i));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    global1 = array<Struct_4, 11>();
    let var_0 = u_input.c;
    global3 = func_2();
    global3 = _wgslsmith_sub_vec2_i32(arg_0.yy, vec2<i32>(firstLeadingBit(u_input.b), _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(-3102i, firstLeadingBit(global4.x)))));
    let var_1 = Struct_1(~vec4<i32>(-39441i, _wgslsmith_dot_vec3_i32(~vec3<i32>(global2.b.x, global3.x, global4.x), -global4.xzz), 2147483647i, global3.x), vec4<i32>(-23493i, -arg_0.x, arg_0.x, i32(-1i) * -1i) & vec4<i32>(u_input.b << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 4294967295u), vec3<u32>(var_0, var_0, 131220u)) % 32u), global4.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_0, global2.b.zzz), vec3<i32>(u_input.a, 39835i, 1i) >> (vec3<u32>(1u, var_0, var_0) % vec3<u32>(32u))), reverseBits(arg_0.x << (var_0 % 32u))));
    return Struct_2(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.c, 1897u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), firstTrailingBit(vec2<u32>(1u, u_input.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(140f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1547f)), _wgslsmith_div_f32(2621f, 1163f)))))), u_input.c << (~0u % 32u));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = 0u;
    var var_1 = u_input.a;
    let var_2 = all(select(vec3<bool>(false, false, all(vec2<bool>(true, true))), select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), !(global3.x <= 14448i)), false));
    var var_3 = select(firstLeadingBit(min(vec3<i32>(2147483647i, -1i, global3.x) << (select(vec3<u32>(18460u, u_input.c, u_input.c), vec3<u32>(arg_0.a, 1u, u_input.c), vec3<bool>(var_2, true, false)) % vec3<u32>(32u)), global4.wyw)), (vec3<i32>(-global4.x, -17563i, -2147483647i) ^ -(global2.b.zzz << (vec3<u32>(u_input.c, arg_0.a, arg_0.c) % vec3<u32>(32u)))) >> ((vec3<u32>(1u, u_input.c, 0u) ^ firstTrailingBit(countOneBits(vec3<u32>(arg_0.c, 34502u, 0u)))) % vec3<u32>(32u)), !vec3<bool>(false, var_2, !all(vec4<bool>(var_2, false, var_2, false))));
    var var_4 = 0i;
    return func_1(global4.xzz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(vec4<bool>(select(any(vec4<bool>(true, true, true, false)), true, true), true, any(vec3<bool>(false, true, true)), true)) && false;
    global0 = false;
    let var_0 = global2.a.yx;
    global0 = select(all(select(vec2<bool>(all(vec3<bool>(true, true, false)), true), vec2<bool>(true, all(vec3<bool>(false, false, false))), false)), any(!vec2<bool>(-62286i < var_0.x, any(vec2<bool>(false, false)))), false);
    var var_1 = Struct_2(countOneBits(4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(469f - -1000f) * 381f) + 404f)), 40202u);
    var_1 = func_4(func_1(abs(select(vec3<i32>(40881i, 22191i, 4501i) ^ vec3<i32>(-14254i, global3.x, global2.a.x), global4.xxy, true))));
    let var_2 = _wgslsmith_add_vec3_i32(global2.a.www, vec3<i32>(_wgslsmith_sub_i32(-19712i, -1i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-28952i, global2.a.x), -2147483647i), 2147483647i & _wgslsmith_sub_i32(func_3().x, reverseBits(-57099i))));
    var var_3 = ~vec3<u32>(34683u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(max(var_1.c, u_input.c), 0u, countOneBits(u_input.c)), vec3<u32>(51095u, var_1.c, min(u_input.c, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(i32(-1i) * -20356i));
}

