struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 28>;

var<private> global1: Struct_3 = Struct_3(vec2<u32>(1656u, 66853u), -247f, Struct_2(vec3<bool>(false, false, false), vec2<bool>(false, false), 45506i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global1.b)), global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-141f)))));
    global0 = array<Struct_5, 28>();
    global0 = array<Struct_5, 28>();
    let var_1 = var_0.x;
    global0 = array<Struct_5, 28>();
    return vec4<i32>(u_input.a, firstLeadingBit(-1i), _wgslsmith_clamp_i32(0i, abs(3216i), u_input.a), -2147483647i);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_5, 28>();
    var var_0 = vec4<u32>(reverseBits(_wgslsmith_add_u32(global1.a.x, ~16136u)), u_input.e, ~19281u, ~_wgslsmith_clamp_u32(arg_1.a.x, 102813u, 1u & arg_1.a.x) << (~47956u % 32u));
    global1 = Struct_3(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(arg_2.x, arg_1.a.x)), _wgslsmith_div_vec2_u32(arg_1.a, vec2<u32>(6224u, 76391u)) >> (abs(arg_2.xw) % vec2<u32>(32u))) >> (~global1.a % vec2<u32>(32u)), arg_1.b, arg_3);
    var var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = global1.c;
    return reverseBits(global1.a.x & (var_0.x >> (abs(0u) % 32u)));
}

fn func_2() -> u32 {
    let var_0 = ~_wgslsmith_add_vec3_u32(~vec3<u32>(~1u, ~1u, func_3(false, Struct_3(u_input.c, -1307f, Struct_2(global1.c.a, vec2<bool>(false, global1.c.a.x), u_input.d)), vec4<u32>(global1.a.x, 4294967295u, u_input.e, global1.a.x), global1.c)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.c.x, global1.a.x, global1.a.x)), max(~vec3<u32>(0u, global1.a.x, u_input.e), vec3<u32>(global1.a.x, global1.a.x, 1u))));
    var var_1 = true;
    var var_2 = global1.b;
    var var_3 = _wgslsmith_div_u32(u_input.e, global1.a.x);
    let var_4 = !vec2<bool>(global1.c.b.x, true);
    return ~(~var_0.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = min(~0i, reverseBits(_wgslsmith_dot_vec2_i32(arg_0.xz & ~arg_0.xz, arg_0.zy << (~arg_3.a % vec2<u32>(32u)))));
    let var_1 = Struct_1(~(~(-u_input.a & 1i)), select(vec4<bool>(true && global1.c.a.x, (arg_1 << (4294967295u % 32u)) >= (22227i & u_input.d), true, global1.c.a.x), vec4<bool>(true, global1.c.a.x, arg_3.c.b.x, !(!global1.c.b.x)), arg_3.c.a.x), 2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(612f, _wgslsmith_div_f32(global1.b, -346f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1209f - -608f) * _wgslsmith_f_op_f32(ceil(-685f))))));
    global1 = arg_3;
    var var_2 = !arg_3.c.a.x;
    var_0 = arg_0.x;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i << (global1.a.x % 32u), _wgslsmith_sub_i32(u_input.b.x, u_input.d), global1.c.c, global1.c.c), vec4<i32>(abs(0i), ~2147483647i, _wgslsmith_div_i32(global1.c.c, 1i), 1i))));
    let var_1 = 1u;
    global1 = func_4(func_1(), var_0.x, _wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.x >> (1u % 32u), func_2(), ~26235u, select(~u_input.e, 43026u, global1.c.b.x)), ~vec4<u32>(~0u, 1u, var_1, _wgslsmith_mult_u32(4294967295u, global1.a.x))), Struct_3(~u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(346f)))), Struct_2(global1.c.a, select(select(global1.c.a.xy, global1.c.a.zx, vec2<bool>(false, false)), vec2<bool>(global1.c.a.x, global1.c.b.x), any(vec4<bool>(false, global1.c.b.x, false, true))), -_wgslsmith_sub_i32(global1.c.c, var_0.x))));
    let var_2 = Struct_1(var_0.x, select(vec4<bool>(any(select(global1.c.b, vec2<bool>(global1.c.a.x, global1.c.b.x), global1.c.a.x)), true, global1.c.a.x, (u_input.e << (var_1 % 32u)) <= _wgslsmith_dot_vec4_u32(vec4<u32>(20107u, var_1, u_input.e, global1.a.x), vec4<u32>(var_1, global1.a.x, var_1, global1.a.x))), vec4<bool>((var_0.x & -2046i) < 1i, global1.c.a.x, func_4(var_0, -u_input.d, vec4<u32>(var_1, global1.a.x, 4294967295u, u_input.c.x), func_4(var_0, u_input.b.x, vec4<u32>(global1.a.x, 798u, var_1, 15037u), Struct_3(global1.a, global1.b, Struct_2(global1.c.a, vec2<bool>(false, true), 0i)))).c.b.x, true), vec4<bool>(true, true, true, true)), ~(~reverseBits(func_1().x)), vec3<f32>(_wgslsmith_f_op_f32(global1.b - -291f), -1205f, global1.b));
    var var_3 = abs(max(global1.a, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_2.d.yx, vec3<f32>(_wgslsmith_f_op_f32(round(var_2.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(abs(var_2.d.x))), -423f));
}

