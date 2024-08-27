struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 15>;

var<private> global3: bool = true;

var<private> global4: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    global3 = true;
    var var_0 = global1.xz;
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.e, arg_0), _wgslsmith_f_op_f32(max(global1.x, global1.x)), ~465u);
    var_0 = _wgslsmith_f_op_vec2_f32(-global1.zx);
    let var_2 = 22064i;
    return var_0.x;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> u32 {
    global0 = !(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(global2[_wgslsmith_index_u32(11021u, 15u)], true, global0.x), vec3<bool>(global2[_wgslsmith_index_u32(arg_0.c, 15u)], false, global2[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(true, true, global0.x)), false), select(!vec3<bool>(false, global2[_wgslsmith_index_u32(13494u, 15u)], global2[_wgslsmith_index_u32(arg_0.c, 15u)]), select(vec3<bool>(false, false, global0.x), vec3<bool>(global2[_wgslsmith_index_u32(0u, 15u)], global0.x, true), global2[_wgslsmith_index_u32(0u, 15u)]), select(vec3<bool>(false, true, false), vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, true, true))), global0.x));
    let var_0 = firstTrailingBit((~(vec4<i32>(arg_0.a, arg_0.a, 3617i, arg_0.a) ^ vec4<i32>(arg_0.a, arg_0.a, 0i, 2147483647i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -33249i, -9822i), countOneBits(vec4<i32>(1i, -2147483647i, arg_0.a, 1i)))) & -_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(u_input.e.x, u_input.d, arg_0.a, 22175i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, 31895i, -1i, -2147483647i), vec4<i32>(u_input.e.x, -1i, 0i, u_input.d)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-9944i, arg_0.a, -55007i, -4954i), vec4<i32>(-10028i, -23436i, arg_0.a, 751i), vec4<i32>(2147483647i, 2147483647i, 0i, -1i))));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_add_i32(-reverseBits(_wgslsmith_sub_i32(-1i, 0i)), _wgslsmith_mult_i32(-arg_0.a, ~_wgslsmith_mod_i32(u_input.d, var_0.x))), _wgslsmith_div_i32(_wgslsmith_sub_i32(reverseBits(-9122i), 54530i), _wgslsmith_add_i32(1i, firstTrailingBit(arg_0.a) << (arg_0.c % 32u))));
    var var_2 = u_input.a.zz ^ ~u_input.c.xz;
    var var_3 = arg_0;
    return var_3.c;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(866f, -101f) - 672f) * -409f) - -2374f) + _wgslsmith_f_op_f32(-arg_0));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.e.x ^ u_input.e.x, 44283i, 0i) >> (reverseBits(_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(14194u, arg_1.c, 4903u), vec3<u32>(33167u, 1u, 0u))) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-1193f - global1.x), 1430f);
    let var_0 = arg_1;
    var var_1 = max(104074u, _wgslsmith_div_u32(26915u, ~63535u)) >= ~firstLeadingBit(~(47676u << (arg_1.c % 32u)));
    let var_2 = vec3<u32>(_wgslsmith_add_u32(func_3(Struct_1(-5355i, 737f, u_input.b), _wgslsmith_f_op_f32(min(arg_0, 1692f)), _wgslsmith_f_op_f32(trunc(global1.x))), arg_1.c) | 0u, arg_1.c, _wgslsmith_mod_u32(~var_0.c, 29125u));
    return var_0.c;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>) -> StorageBuffer {
    var var_0 = Struct_1(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1092f, _wgslsmith_div_f32(global1.x, global1.x), global2[_wgslsmith_index_u32(func_3(Struct_1(u_input.d, global1.x, arg_1.x), 524f, 967f), 15u)])), _wgslsmith_f_op_f32(293f + global1.x))) + 345f), arg_1.x);
    var var_1 = Struct_1(33119i, _wgslsmith_f_op_f32(-581f * var_0.b), arg_1.x);
    var var_2 = var_1.a;
    var_1 = Struct_1(reverseBits(~(-21613i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -523f) + var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(142f))))), func_1(_wgslsmith_f_op_f32(min(260f, _wgslsmith_f_op_f32(select(global1.x, -238f, true)))), Struct_1(var_1.a, var_1.b, 4294967295u)));
    global1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-125f, var_0.b, global1.x)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1056f, -853f, 868f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(869f, var_0.b, global1.x) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.b, global1.x, var_0.b)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(358f, global1.x, 1000f))))));
    return StorageBuffer(vec2<i32>(1i, ~(-1i & firstTrailingBit(var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = select(!any(!(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)]))), !all(select(vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 15u)], global0.x), vec3<bool>(global2[_wgslsmith_index_u32(6898u, 15u)], global2[_wgslsmith_index_u32(u_input.a.x, 15u)], false), global2[_wgslsmith_index_u32(u_input.c.x, 15u)]), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 15u)], false, true))), global0.x);
    global0 = vec3<bool>(true, true, global0.x);
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * global1.x));
    var var_0 = _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(u_input.d, ~(-6901i), 1i, -u_input.e.x)), vec4<i32>(-reverseBits(-35087i), -2147483647i, -(firstTrailingBit(2147483647i) | u_input.e.x), 1i ^ u_input.d));
    var var_1 = Struct_1(u_input.e.x, _wgslsmith_f_op_f32(min(-1100f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-973f, -254f)) - global1.x))), _wgslsmith_dot_vec3_u32(u_input.c, ~u_input.a) << (_wgslsmith_div_u32(abs(u_input.c.x), min(u_input.b, ~7674u)) % 32u));
    let var_2 = Struct_1(49609i, global1.x, u_input.c.x >> (max(select(4294967295u, 31230u, global2[_wgslsmith_index_u32(var_1.c, 15u)]) | (var_1.c | 17943u), ~(var_1.c & 27003u)) % 32u));
    let var_3 = u_input.e.zx;
    let x = u_input.a;
    s_output = func_4(~var_1.c, _wgslsmith_clamp_vec2_u32(u_input.a.xy ^ _wgslsmith_mult_vec2_u32(u_input.c.yy, u_input.c.xy), _wgslsmith_mult_vec2_u32(u_input.a.xy, vec2<u32>(u_input.b, var_2.c) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.c, 55295u), vec2<u32>(var_2.c, var_1.c), vec2<u32>(var_1.c, u_input.c.x)) % vec2<u32>(32u))), vec2<u32>(func_1(-789f, var_2), 4294967295u) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))));
}

