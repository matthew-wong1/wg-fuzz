struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(54285u, 43851u, 0u, 66395u);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<Struct_2, 23>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec3<bool> {
    global0 = ~(~(~(~global3.b) & global3.b));
    let var_0 = global2[_wgslsmith_index_u32(global3.b.x, 23u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-523f, 637f, -1010f))))) - vec3<f32>(_wgslsmith_f_op_f32(round(-1156f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-969f)))), -401f)));
    let var_2 = u_input.b;
    var var_3 = 4294967295u >> (0u % 32u);
    return !vec3<bool>(true, true, !(!(var_1.x <= var_1.x)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(global3.b.x, 23u)];
    global0 = ~global3.b;
    var var_1 = !(!select(false, true, true && (-2147483647i != u_input.c)));
    var var_2 = countOneBits(global3.b.x);
    var var_3 = 53725u;
    return Struct_3(global0.x ^ 1u, u_input.a.xx, select(vec3<bool>(false, false, false), select(func_3(_wgslsmith_dot_vec4_u32(global3.b, global3.b)), vec3<bool>(false, true, any(vec3<bool>(true, true, true))), select(func_3(global0.x), vec3<bool>(true, true, true), any(vec2<bool>(true, false)))), all(func_3(firstLeadingBit(65856u)))));
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = func_2(arg_2.a.xxy);
    global1 = 2147483647i >> (~(0u >> (_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, var_0.a), _wgslsmith_div_u32(var_0.a, 40580u)) % 32u)) % 32u);
    global0 = global3.b;
    let var_1 = arg_0;
    var var_2 = var_1;
    return Struct_3(var_1.d.b.x, vec2<i32>(_wgslsmith_div_i32(var_1.d.a, _wgslsmith_clamp_i32(-18063i, 2147483647i, var_2.c.a.x) >> (global3.b.x % 32u)), _wgslsmith_clamp_i32(abs(~arg_0.c.a.x), -26776i, 0i)), arg_0.b);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> i32 {
    global3 = Struct_1(0i, global3.b | max(~(~vec4<u32>(70709u, global0.x, 1u, 4294967295u)), global3.b));
    var var_0 = func_1(Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1178f)))), arg_1.c, Struct_2(~vec4<i32>(arg_1.b.x, global3.a, arg_1.b.x, 0i) ^ (vec4<i32>(1i, -2147483647i, global3.a, arg_1.b.x) >> (vec4<u32>(global0.x, 800u, 17389u, arg_0) % vec4<u32>(32u)))), Struct_1(_wgslsmith_add_i32(-7631i << (arg_0 % 32u), arg_1.b.x | arg_1.b.x), global3.b ^ (global3.b >> (vec4<u32>(global3.b.x, 5390u, global3.b.x, 4294967295u) % vec4<u32>(32u))))), (-(-28325i << (global0.x % 32u)) != (u_input.b.x << (global0.x % 32u))) && all(arg_1.c.zy), global2[_wgslsmith_index_u32(global3.b.x, 23u)], vec3<u32>(1u, 1u, global3.b.x));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(198f - _wgslsmith_f_op_f32(sign(-102f))), vec3<bool>(arg_2, var_0.c.x, false), Struct_2(countOneBits(select(abs(vec4<i32>(global3.a, u_input.a.x, -3018i, arg_1.b.x)), abs(vec4<i32>(u_input.d, var_0.b.x, 24579i, -1i)), arg_2))), Struct_1(-2147483647i, global3.b));
    let var_2 = arg_0;
    global0 = vec4<u32>(~(~0u) | var_0.a, func_1(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -498f), vec3<bool>(false, false, var_1.b.x), Struct_2(vec4<i32>(u_input.d, var_0.b.x, 1542i, -12755i)), var_1.d), false, global2[_wgslsmith_index_u32(0u, 23u)], vec3<u32>(var_2, ~4294967295u, _wgslsmith_dot_vec3_u32(var_1.d.b.wxw, global3.b.xxx))).a, _wgslsmith_div_u32(func_1(Struct_4(var_1.a, arg_1.c, global2[_wgslsmith_index_u32(arg_0, 23u)], Struct_1(var_1.c.a.x, vec4<u32>(var_2, global0.x, global0.x, var_0.a))), arg_2, Struct_2(var_1.c.a), global3.b.zzy).a, arg_0), firstLeadingBit(4294967295u)) >> (vec4<u32>(1u, ~global0.x << (global3.b.x % 32u), arg_1.a, reverseBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(50451u, 6441u), 16791u))) % vec4<u32>(32u));
    return global3.a;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_1 {
    global1 = u_input.b.x;
    var var_0 = Struct_3(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(global3.b.zx, vec2<u32>(global3.b.x, arg_1.a)), _wgslsmith_mult_u32(global0.x, global0.x))), select(global3.b.xzz, global3.b.yzw >> (_wgslsmith_add_vec3_u32(global0.xwx, vec3<u32>(4294967295u, 1u, arg_1.a)) % vec3<u32>(32u)), !arg_1.c.x)), vec2<i32>(25953i, -u_input.c), select(!select(arg_1.c, vec3<bool>(true, arg_1.c.x, arg_1.c.x), arg_1.c.x && arg_1.c.x), !func_2(countOneBits(u_input.b)).c, arg_1.c.x));
    let var_1 = !vec3<bool>(!var_0.c.x, arg_1.c.x, any(select(select(arg_1.c.zy, arg_1.c.zx, arg_1.c.x), func_2(vec3<i32>(var_0.b.x, global3.a, global3.a)).c.xz, select(vec2<bool>(arg_1.c.x, arg_1.c.x), vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(true, true)))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-221f * _wgslsmith_f_op_f32(max(935f, _wgslsmith_f_op_f32(abs(216f)))))), select(arg_1.c, arg_1.c, any(arg_1.c)), global2[_wgslsmith_index_u32(func_2(~_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(arg_0.x, 13284i, var_0.b.x))).a ^ global0.x, 23u)], Struct_1(abs(global3.a), vec4<u32>(~_wgslsmith_mult_u32(17526u, global0.x), 4294967295u, ~1u, var_0.a)));
    var var_3 = vec3<u32>(~abs(abs(arg_1.a)) >> (_wgslsmith_div_u32(global3.b.x, min(75135u, global3.b.x) << (var_0.a % 32u)) % 32u), ~(func_2(abs(vec3<i32>(var_2.c.a.x, 1i, var_0.b.x))).a << (_wgslsmith_mult_u32(func_1(Struct_4(var_2.a, var_0.c, Struct_2(var_2.c.a), Struct_1(-1i, global3.b)), false, Struct_2(var_2.c.a), var_2.d.b.xyz).a, 620u << (var_0.a % 32u)) % 32u)), arg_1.a);
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(vec3<i32>(global3.a, max(0i, u_input.d), func_4(max(47146u, global0.x), func_1(Struct_4(-2534f, vec3<bool>(false, true, true), global2[_wgslsmith_index_u32(global0.x, 23u)], Struct_1(1i, global3.b)), false, global2[_wgslsmith_index_u32(global0.x, 23u)], global0.xxz), true) ^ u_input.a.x), func_1(Struct_4(_wgslsmith_f_op_f32(min(2014f, 406f)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), Struct_2(vec4<i32>(global3.a, u_input.b.x, global3.a, u_input.a.x)), Struct_1(~2910i, global3.b)), all(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.b.x, _wgslsmith_add_u32(global0.x, firstTrailingBit(global3.b.x))), 23u)], abs(~vec3<u32>(global0.x, global0.x, global0.x))));
    var var_0 = _wgslsmith_mod_i32(-26516i, i32(-1i) * -1i);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1372f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(150f, 163f))), (13753i & u_input.a.x) == 0i)))), func_2(~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, u_input.d), -u_input.b, u_input.a)).c, global2[_wgslsmith_index_u32(~(global0.x ^ 1u), 23u)], func_5(u_input.a, Struct_3(global3.b.x, vec2<i32>(global3.a, max(2147483647i, u_input.d)), vec3<bool>(true, true, true))));
    global3 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_1.a)), _wgslsmith_f_op_f32(select(1792f, var_1.a, !all(!vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)))), vec4<i32>(1i, abs(0i), var_1.c.a.x, -2147483647i));
}

