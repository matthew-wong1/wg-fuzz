struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 452f;

var<private> global1: Struct_2;

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_3, 20>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(5216u, 20u)];
    let var_1 = false;
    global2 = vec4<i32>(29859i, -49852i, -1i, ~u_input.a.x);
    let var_2 = Struct_3(any(select(var_0.b.c.xzw, vec3<bool>(all(vec4<bool>(var_1, true, true, true)), global1.b.a.x, true), var_1)), global1.b);
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.b.d + _wgslsmith_f_op_f32(-var_0.b.d)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return var_2.b;
}

fn func_3() -> bool {
    global1 = Struct_2(func_2(), func_2(), global1.a, func_2().a);
    let var_0 = global3[_wgslsmith_index_u32(func_2().b << (global1.c.b % 32u), 20u)];
    global2 = _wgslsmith_mult_vec4_i32(select(-max(vec4<i32>(27726i, u_input.a.x, 0i, -15372i) & vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, global2.x), _wgslsmith_add_vec4_i32(vec4<i32>(-25326i, -18977i, u_input.a.x, global2.x), vec4<i32>(2147483647i, -46053i, global2.x, 48922i))), ~vec4<i32>(1i, global2.x, global2.x >> (var_0.b.b % 32u), abs(-2147483647i)), var_0.b.c), abs(select(vec4<i32>(~(-2147483647i), -2147483647i, global2.x & 0i, _wgslsmith_mult_i32(1i, global2.x)), vec4<i32>(global2.x, 0i, -1i, u_input.a.x | 0i), select(vec4<bool>(true, var_0.b.a.x, global1.d.x, var_0.b.c.x), vec4<bool>(global1.b.a.x, false, false, true), !global1.b.c.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1130f, global1.b.d, global1.a.d, var_0.b.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -632f, global1.c.d, var_0.b.d) - vec4<f32>(1022f, 1351f, -945f, var_0.b.d)))))));
    let var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1.c.b, var_0.b.b, global1.b.b, var_0.b.b), ~vec4<u32>(4294967295u, 93666u, 14584u, var_0.b.b)), select(_wgslsmith_div_vec4_u32(vec4<u32>(global1.c.b, global1.b.b, global1.a.b, 0u), vec4<u32>(var_0.b.b, 1u, var_0.b.b, var_0.b.b)), firstLeadingBit(vec4<u32>(var_0.b.b, global1.a.b, var_0.b.b, global1.a.b)), vec4<bool>(true, global1.d.x, true, global1.d.x)), ~(vec4<u32>(var_0.b.b, var_0.b.b, 30313u, var_0.b.b) >> (vec4<u32>(global1.c.b, var_0.b.b, 4294967295u, 1u) % vec4<u32>(32u)))) | _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(33199u, 38089u, 75348u, var_0.b.b), vec4<u32>(var_0.b.b, var_0.b.b, var_0.b.b, global1.a.b), true), vec4<u32>(2700u, reverseBits(1957u), ~15333u, ~var_0.b.b), vec4<u32>(~0u, ~1u, abs(global1.b.b), 0u)), _wgslsmith_mod_vec4_u32(~(~abs(vec4<u32>(0u, global1.b.b, global1.b.b, 0u))), vec4<u32>(global1.c.b, 1u, global1.c.b, ~(var_0.b.b & 0u))));
    return var_0.b.c.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = Struct_4(min(global1.c.b, ~(~17844u)) >> (abs(min(global1.c.b, global1.a.b)) % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.b.x)), var_0.b.x), _wgslsmith_f_op_f32(-arg_1.b.x))), any(!(!arg_0.xz)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 14694u, 4294967295u), vec4<u32>(var_0.a, 11066u, var_0.d.x, arg_1.d.x)), _wgslsmith_add_u32(arg_1.a, var_0.a)), firstLeadingBit(vec2<u32>(arg_1.a, global1.c.b)) & var_0.d), vec2<u32>(max(reverseBits(48068u), ~1u), 11762u)));
    var_0 = arg_1;
    var_0 = Struct_4(~3012u, var_1.b, func_2().c.x, var_1.d);
    var var_2 = false;
    return global1.c;
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    global0 = _wgslsmith_f_op_f32(floor(var_0.d));
    let var_1 = global1.b.d;
    let var_2 = Struct_4(_wgslsmith_add_u32(firstTrailingBit(1u), 4294967295u) >> (4294967295u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-375f + global1.c.d), global1.c.d, _wgslsmith_f_op_f32(var_0.d * global1.c.d)) + vec3<f32>(_wgslsmith_f_op_f32(-global1.b.d), 667f, -1276f))), true, reverseBits(reverseBits(firstTrailingBit(~vec2<u32>(52575u, 4294967295u)))));
    var var_3 = var_0.d;
    return Struct_2(Struct_1(!var_0.c.zx, var_2.d.x, select(var_0.c, !global1.c.c, var_0.c), _wgslsmith_f_op_f32(-466f * _wgslsmith_f_op_f32(round(-769f)))), func_4(select(!(!var_0.c), vec4<bool>(true, global1.c.c.x, true | var_2.c, false), !func_3()), Struct_4(0u, _wgslsmith_f_op_vec3_f32(exp2(var_2.b)), any(var_0.c.zyw), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b, 29020u), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b, var_2.a), vec2<u32>(var_0.b, 4294967295u)))), vec3<i32>(2147483647i, ~2147483647i, ~_wgslsmith_clamp_i32(global2.x, global2.x, 2145i))), Struct_1(vec2<bool>(global1.b.a.x, true), 29971u, vec4<bool>(global2.x < min(global2.x, 2147483647i), false, all(var_0.c), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -434f))))), vec2<bool>(true, var_2.c));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~select(vec2<u32>(4294967295u, 511u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(global1.c.b, global1.c.b), vec2<u32>(2842u, global1.c.b)), arg_0.b.d != global1.c.d), vec2<u32>(abs(global1.a.b), func_4(global1.b.c, Struct_4(0u, vec3<f32>(598f, arg_0.c.d, global1.b.d), true, vec2<u32>(arg_0.a.b, global1.b.b)), global2.zxw).b) ^ vec2<u32>(global1.c.b, _wgslsmith_mult_u32(global1.c.b, 0u))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(global1.c.b, global1.b.b), min(vec2<u32>(global1.a.b, 54922u), ~vec2<u32>(arg_0.a.b, global1.a.b))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(860f, _wgslsmith_f_op_f32(-1035f * 404f), _wgslsmith_f_op_f32(-global1.c.d), -333f)))));
    let var_1 = 2147483647i;
    global3 = array<Struct_3, 20>();
    let var_2 = -517f;
    global0 = 148f;
    global0 = var_0.x;
    global1 = func_5(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(abs(~global2.x), 40422i, u_input.a.x, -31154i), 19392u, global1.c.b << (global1.c.b % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global1.a.d, func_2().d)))), -vec3<i32>(var_1 >> ((global1.c.b & global1.b.b) % 32u), 2147483647i, var_1));
}

