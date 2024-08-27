struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: Struct_3,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: Struct_3;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_4, arg_3: Struct_4) -> vec3<bool> {
    global0 = array<Struct_2, 16>();
    let var_0 = Struct_5(28029u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(735f, 657f) * vec2<f32>(-1134f, 1711f))))), vec2<f32>(_wgslsmith_f_op_f32(191f - _wgslsmith_f_op_f32(floor(global1.c.x))), 1022f), arg_2.a.a)), Struct_3(_wgslsmith_mod_vec4_i32(global1.b, _wgslsmith_div_vec4_i32(~global1.a, abs(vec4<i32>(19299i, 25490i, -2147483647i, global1.a.x)))), countOneBits(global1.b), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global1.c.x), 2322f))), global1.d, !global1.e), global1.e.yzw);
    let var_1 = _wgslsmith_add_vec4_u32(~vec4<u32>(~arg_3.b.x, 14461u, ~arg_3.b.x, global1.d.d.x) | select(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.b.x, 3292u, global1.d.b.x, 7758u), vec4<u32>(var_0.c.d.d.x, arg_2.b.x, 1u, 4294967295u)), reverseBits(vec4<u32>(16455u, arg_2.b.x, u_input.b.x, arg_3.b.x))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(36563u, 9694u, var_0.a, 1u), vec4<u32>(65631u, global1.d.b.x, global1.d.d.x, 0u)), var_0.c.e), _wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(firstLeadingBit(var_0.c.d.b.x)), arg_2.b.x, 25746u, 4294967295u), vec4<u32>(0u, 45324u, 4294967295u, ~_wgslsmith_mult_u32(u_input.b.x, 43954u))));
    global0 = array<Struct_2, 16>();
    var var_2 = var_0.c;
    return !var_2.e.wwx;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: i32, arg_3: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_div_u32(~(~global1.d.d.x), _wgslsmith_add_u32(~countOneBits(abs(1u)), 1u));
    var var_1 = false;
    var_1 = global1.e.x;
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(abs(global1.d.b.x), 16u)], u_input.b.yz);
    var_1 = !(min(abs(~u_input.b.x), _wgslsmith_mod_u32(~var_0, _wgslsmith_div_u32(1u, var_2.b.x))) >= u_input.c.x);
    return -22428i;
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_3 {
    var var_0 = Struct_2(true);
    let var_1 = select(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-u_input.a.x >> (48266u % 32u), u_input.a.x), -2147483647i), func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global1.c.x)), _wgslsmith_f_op_f32(arg_1 - -1000f))) < arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(-192f, arg_1, -374f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, 1532f, -1166f) + vec3<f32>(356f, -508f, global1.c.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(554f, global1.c.x, 1166f)))), u_input.a.x, select(!select(vec3<bool>(false, global1.d.e.x, global1.e.x), vec3<bool>(true, true, global1.e.x), vec3<bool>(false, var_0.a, false)), global1.e.zwy, select(global1.e.xwy, func_3(true, 14956i, Struct_4(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], vec2<u32>(57714u, u_input.c.x)), Struct_4(Struct_2(var_0.a), vec2<u32>(4294967295u, global1.d.b.x))), vec3<bool>(global1.d.e.x, var_0.a, var_0.a)))), !(!var_0.a));
    var var_2 = !(!vec2<bool>(true & (u_input.b.x > 6562u), var_0.a));
    let var_3 = Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, ~(-17772i), -var_1 & -1i, var_1), vec4<i32>(u_input.a.x, 0i, abs(var_1), 12782i << (max(global1.d.d.x, global1.d.b.x) % 32u))), vec4<i32>(global1.a.x, u_input.a.x, abs(var_1), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1, var_1, 2147483647i), vec3<i32>(global1.b.x, var_1, 0i)), ~vec3<i32>(2147483647i, -1i, u_input.a.x))) ^ -global1.b, global1.c, global1.d, vec4<bool>(!(!global1.e.x), var_0.a, !(-1848f < arg_1), select(true, any(vec4<bool>(true, false, false, global1.d.e.x)), var_2.x)));
    var var_4 = var_3.b;
    return var_3;
}

fn func_1() -> vec4<f32> {
    global1 = func_2(_wgslsmith_mod_u32(max(abs(0u) ^ u_input.b.x, ~u_input.b.x), u_input.b.x), _wgslsmith_f_op_f32(-global1.c.x));
    let var_0 = Struct_5(global1.d.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global1.c)))), func_2(_wgslsmith_mult_u32(95599u, ~select(u_input.b.x, u_input.b.x, global1.d.c)), global1.c.x), func_2(func_2(global1.d.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(345f, global1.c.x))))).d.d.x, 1f).e.zzz);
    global1 = func_2(_wgslsmith_sub_u32(u_input.b.x, ~(~u_input.c.x << (68192u % 32u))), global1.c.x);
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, 872f, global1.c.x, var_0.c.c.x) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-100f, -1700f, 989f, 1000f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1265f, global1.c.x, 2349f, var_0.c.c.x) - vec4<f32>(var_0.c.c.x, -1012f, global1.c.x, 1530f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - _wgslsmith_f_op_vec4_f32(func_1()))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-150f + 1291f) - global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1696f))))), 27060u);
}

