struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec2<i32> {
    global0 = Struct_1(firstTrailingBit(_wgslsmith_mod_vec2_i32(countOneBits(global1.zy), vec2<i32>(global0.a.x, u_input.b))) & vec2<i32>(-(~global0.a.x), reverseBits(global0.a.x)), u_input.c);
    var var_0 = !select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), all(vec2<bool>(true, false))), true), !select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), true), true);
    let var_1 = global0.a.x;
    let var_2 = vec4<i32>(u_input.b, 30999i, _wgslsmith_mod_i32((-u_input.b << (~34487u % 32u)) ^ -1i, ~(-global1.x)), ~(~_wgslsmith_mod_i32(-7759i, select(global1.x, global1.x, false))));
    var var_3 = Struct_2(Struct_1(global1.xz, vec3<u32>(~u_input.a ^ _wgslsmith_sub_u32(11910u, global0.b.x), ~_wgslsmith_sub_u32(u_input.a, 59794u), ~global0.b.x)));
    return vec2<i32>(~2147483647i, -11789i);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(13856i, 33975i)), vec2<i32>(43568i, -25469i))), ~vec3<u32>(u_input.c.x, global0.b.x, 61768u) << (global0.b % vec3<u32>(32u))));
    let var_1 = -arg_1.xxx;
    var_0 = Struct_2(Struct_1(-min(vec2<i32>(global0.a.x, 2001i), func_3()), max(vec3<u32>(~15602u, u_input.a, _wgslsmith_div_u32(0u, global0.b.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 11889u, arg_0.x), global0.b))));
    let var_2 = Struct_2(Struct_1(-u_input.d.zz, abs(var_0.a.b & vec3<u32>(1450u, 9909u, 0u)) & abs(abs(arg_0.xxx))));
    global1 = vec3<i32>(arg_1.x, ~_wgslsmith_sub_i32(0i, u_input.b), ~var_2.a.a.x) << ((vec3<u32>(_wgslsmith_sub_u32(select(4294967295u, global0.b.x, false), 4294967295u), 0u, _wgslsmith_add_u32(4294967295u, ~u_input.c.x)) & _wgslsmith_add_vec3_u32(vec3<u32>(~var_0.a.b.x, u_input.c.x, _wgslsmith_mod_u32(0u, u_input.a)), _wgslsmith_mod_vec3_u32(~vec3<u32>(3457u, var_2.a.b.x, var_2.a.b.x), ~global0.b))) % vec3<u32>(32u));
    return var_2.a.b << (vec3<u32>(global0.b.x, _wgslsmith_dot_vec2_u32(u_input.c.xx, _wgslsmith_mod_vec2_u32(var_2.a.b.xz, vec2<u32>(var_0.a.b.x, var_2.a.b.x))) ^ reverseBits(_wgslsmith_mult_u32(15208u, 0u)), _wgslsmith_div_u32(global0.b.x, var_2.a.b.x)) % vec3<u32>(32u));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global1 = _wgslsmith_add_vec3_i32(select(~vec3<i32>(-2147483647i, -60553i, 49914i), vec3<i32>(u_input.b, firstTrailingBit(-14296i), abs(global1.x)), vec3<bool>(true, u_input.a != u_input.c.x, select(true, true, true))), vec3<i32>(_wgslsmith_div_i32(11854i, -40502i), global1.x ^ _wgslsmith_clamp_i32(global1.x, 2147483647i, 0i), -1i)) ^ min(select(countOneBits(min(u_input.d.zwy, vec3<i32>(global1.x, -12178i, global1.x))), min(vec3<i32>(u_input.d.x, global0.a.x, arg_0) >> (global0.b % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(-18573i, u_input.b, global0.a.x), u_input.d.wyx)), any(vec2<bool>(true, true))), vec3<i32>(u_input.b, -_wgslsmith_mult_i32(-2147483647i, arg_0), ~arg_0));
    let var_0 = arg_0 ^ -1893i;
    var var_1 = Struct_1(global1.yz, vec3<u32>(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global0.b.x, u_input.a), u_input.c) << (global0.b % vec3<u32>(32u)), func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, global0.b.x, u_input.c.x, 27537u), vec4<u32>(11423u, 3752u, 0u, 0u)), u_input.d)), 0u));
    global0 = Struct_1(global0.a | min(vec2<i32>(-1i) * -u_input.d.wy, _wgslsmith_sub_vec2_i32(vec2<i32>(-6511i, var_1.a.x), global0.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.b.x, _wgslsmith_mult_u32(min(39326u, var_1.b.x), global0.b.x), _wgslsmith_div_u32(68169u, global0.b.x) | global0.b.x), global0.b));
    let var_2 = countOneBits(vec4<i32>(~(-func_3().x), global1.x, 2147483647i, global0.a.x | _wgslsmith_dot_vec4_i32(max(u_input.d, u_input.d), reverseBits(u_input.d))));
    return Struct_1(~u_input.d.ww, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(388f, 833f)))))), -global1.yz, _wgslsmith_div_u32(_wgslsmith_add_u32(countOneBits(u_input.a), global0.b.x), 84295u), max(-u_input.d, firstTrailingBit(u_input.d & firstTrailingBit(u_input.d))));
}

