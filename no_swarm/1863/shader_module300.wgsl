struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32>;

var<private> global2: vec2<i32> = vec2<i32>(-30923i, 12671i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> f32 {
    var var_0 = -firstTrailingBit(global0.a.x);
    global2 = _wgslsmith_mult_vec2_i32(global0.a.zw, ~global0.a.zy);
    return _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(min(global0.d.x, 610f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)))));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> vec4<u32> {
    var var_0 = global0.c.x;
    let var_1 = Struct_1(vec4<i32>(_wgslsmith_div_i32(~global0.a.x, 22922i), ~u_input.a, -1i, ~(-global0.a.x)) & ~_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, global0.a.x, global0.a.x, global2.x), vec4<i32>(1i, 2147483647i, 20173i, -1i)), ~vec4<i32>(global2.x, 42803i, global2.x, global2.x)), ~arg_1, vec4<u32>(~39993u, 43617u >> (_wgslsmith_mult_u32(arg_1.x ^ 4294967295u, arg_1.x) % 32u), reverseBits(arg_1.x) >> (global0.c.x % 32u), ~select(_wgslsmith_add_u32(arg_1.x, global0.b.x), global0.b.x, true)), global0.d);
    var var_2 = global0.a;
    let var_3 = arg_1.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.d.wz, global1.zw) * _wgslsmith_f_op_vec2_f32(trunc(global0.d.wx))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x * arg_0))) + vec2<f32>(global0.d.x, var_1.d.x)));
    return var_1.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: i32) -> f32 {
    let var_0 = arg_0;
    global2 = _wgslsmith_mod_vec2_i32(reverseBits(select(vec2<i32>(1i, u_input.a) | vec2<i32>(global0.a.x, 27161i), ~var_0.a.zy, !vec2<bool>(true, arg_1.x))), vec2<i32>(~(-24867i), max(min(-30933i, global0.a.x), 38063i))) & _wgslsmith_mult_vec2_i32(abs(vec2<i32>(1i, arg_0.a.x)), _wgslsmith_mod_vec2_i32((vec2<i32>(arg_0.a.x, 2147483647i) ^ vec2<i32>(0i, global0.a.x)) << (~arg_2.xz % vec2<u32>(32u)), countOneBits(vec2<i32>(u_input.a, global0.a.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.d.x)), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(-532f, global1.x), true)), _wgslsmith_f_op_f32(sign(174f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1550f, -767f))), _wgslsmith_f_op_vec4_f32(global0.d + _wgslsmith_f_op_vec4_f32(min(global0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global0.d.x, var_0.d.x, -467f))))))));
    var var_2 = 0u;
    var var_3 = min(~27200u, var_0.b.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(round(arg_0.d.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.d.x)))));
}

fn func_1(arg_0: vec3<i32>) -> vec2<u32> {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(func_2()), global1.x, -1000f, _wgslsmith_f_op_f32(func_4(Struct_1(reverseBits(global0.a), select(firstTrailingBit(global0.b), global0.b, true), func_3(_wgslsmith_f_op_f32(-154f + global0.d.x), vec3<u32>(1u, global0.c.x, global0.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(967f, 910f, -175f, -875f))) - _wgslsmith_div_vec4_f32(global0.d, vec4<f32>(1228f, 1666f, global1.x, -501f)))), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), ~(_wgslsmith_div_vec3_u32(vec3<u32>(global0.b.x, 4294967295u, global0.c.x), global0.b) << (~vec3<u32>(global0.b.x, 6843u, global0.b.x) % vec3<u32>(32u))), ~(-21251i))));
    var var_0 = _wgslsmith_mult_i32(-1i, -u_input.a);
    var var_1 = Struct_1(~(-vec4<i32>(-5733i, min(global2.x, global0.a.x), ~u_input.a, _wgslsmith_sub_i32(1i, 11919i))), global0.b, global0.c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(global0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1320f, global1.x, 1021f))))))));
    let var_2 = -select(_wgslsmith_clamp_vec2_i32(-arg_0.zx, max(abs(vec2<i32>(-2147483647i, u_input.a)), -vec2<i32>(-17448i, 1i)), arg_0.zx), vec2<i32>(-1i, ~abs(40113i)), vec2<bool>(false, true || select(false, false, true)));
    var var_3 = arg_0;
    return ~global0.c.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, _wgslsmith_div_i32(global2.x, global2.x), global2.x, ~(-36713i)) >> (~select(vec4<u32>(global0.b.x, 117623u, 4294967295u, 1u), vec4<u32>(17341u, global0.b.x, 0u, 0u), vec4<bool>(false, false, false, true)) % vec4<u32>(32u)), global0.a, -global0.a), global0.c.ywz, global0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0.d))));
    let var_1 = _wgslsmith_div_vec4_u32(global0.c, vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(func_1(vec3<i32>(global0.a.x, global0.a.x, global2.x)), vec2<u32>(var_0.c.x, 1485u))), ~min(select(1u, 4294967295u, false), _wgslsmith_mod_u32(global0.c.x, 10434u)), 4294967295u, 0u << (_wgslsmith_clamp_u32(32243u, _wgslsmith_mult_u32(0u, global0.c.x), ~var_0.b.x) % 32u)));
    global0 = Struct_1(~vec4<i32>(16230i, abs(abs(global0.a.x)), ~(~var_0.a.x), ~6361i), ~countOneBits(~global0.b), ~vec4<u32>(_wgslsmith_sub_u32(var_0.c.x & var_0.c.x, ~4294967295u), ~max(global0.c.x, 0u), abs(73375u), var_0.b.x), global0.d);
    global2 = global0.a.yy;
    global0 = var_0;
    global2 = -global0.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.a.yw, _wgslsmith_clamp_vec2_i32(abs(global0.a.yw), vec2<i32>(-1i, -49808i), firstTrailingBit(global0.a.zw))), 2147483647i), ~global0.a.yxy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-162f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-var_0.d.x))) + _wgslsmith_f_op_f32(round(-882f))), global0.d);
}

