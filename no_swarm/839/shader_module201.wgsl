struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1775f;

var<private> global1: Struct_2 = Struct_2(444f);

var<private> global2: vec4<f32> = vec4<f32>(-741f, 486f, -712f, -395f);

var<private> global3: bool = true;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = -196f;
    var var_1 = arg_3;
    var_1 = Struct_1(_wgslsmith_f_op_f32(round(-1572f)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1550f)), arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-112f)))), -769f, !any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true)))));
}

fn func_2() -> Struct_2 {
    var var_0 = 62406u;
    let var_1 = 72149u;
    var var_2 = Struct_2(1000f);
    global1 = Struct_2(_wgslsmith_f_op_f32(-global2.x));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-global2.yw), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, global2.x)))), _wgslsmith_add_vec3_i32(vec3<i32>(min(u_input.a, u_input.e), -2147483647i, u_input.e ^ u_input.e), firstLeadingBit(-vec3<i32>(u_input.e, u_input.a, u_input.a))), Struct_1(_wgslsmith_f_op_f32(sign(614f))))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global2.x) - global1.a));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: f32) -> vec4<i32> {
    global1 = func_2();
    var var_0 = u_input.d.x ^ u_input.c.x;
    let var_1 = vec4<bool>(true, true, !all(select(!vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(false, arg_0.x, true, arg_0.x), any(arg_0.zy))), true);
    global0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-global2.wx), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-296f, _wgslsmith_f_op_f32(arg_2 - global1.a)))), _wgslsmith_mult_vec3_i32((reverseBits(vec3<i32>(-30909i, u_input.a, 6956i)) | _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, arg_1.x), vec3<i32>(arg_1.x, arg_1.x, u_input.e))) << (min(~u_input.c.ywz, vec3<u32>(4294967295u, 0u, u_input.d.x)) % vec3<u32>(32u)), vec3<i32>(87763i, -u_input.e, u_input.b.x) & ~(-vec3<i32>(2147483647i, 1i, u_input.e))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)) - func_2().a))));
    let var_2 = ~select(~(~u_input.d), ~vec2<u32>(u_input.d.x << (u_input.d.x % 32u), 1u), vec2<bool>(arg_0.x, arg_0.x));
    return ~(~(-(vec4<i32>(u_input.e, u_input.b.x, arg_1.x, 0i) ^ -vec4<i32>(arg_1.x, 5054i, -23077i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + global2.x) * global1.a) + -427f)));
    global3 = u_input.e == _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-1i, 2147483647i, u_input.a, u_input.a)), _wgslsmith_div_vec4_i32(func_1(vec3<bool>(false, true, false), u_input.b, -1300f), -vec4<i32>(19089i, 24284i, 24001i, u_input.b.x))), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-34351i, 0i, 0i, u_input.a) >> (vec4<u32>(u_input.d.x, u_input.c.x, 0u, 24410u) % vec4<u32>(32u)), select(vec4<i32>(u_input.b.x, 0i, -25839i, 1439i), vec4<i32>(30951i, u_input.e, u_input.e, u_input.a), true))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.a));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(~u_input.d.x, firstTrailingBit(16751u)), _wgslsmith_add_u32(u_input.c.x, _wgslsmith_add_u32(u_input.d.x, 1u))), 4632u) >= u_input.c.x;
    var var_3 = ~max(_wgslsmith_div_vec2_u32(u_input.c.yw, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, 0u), vec2<u32>(u_input.c.x, u_input.d.x)) >> (_wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, 13189u)) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.wx, vec2<u32>(u_input.d.x, 1u)), u_input.d.x ^ 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(-111f, 0i, u_input.c.x);
}

