struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    return arg_1;
}

fn func_2(arg_0: Struct_5) -> Struct_4 {
    var var_0 = Struct_1(vec3<u32>(u_input.c.x, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 0u, 3804u), u_input.c)) << ((~u_input.c.x & func_3(vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, u_input.a), u_input.c.x, vec3<f32>(806f, -1170f, 326f), 705f)) % 32u), ~u_input.c.x));
    var_0 = Struct_1(min(select(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(1u, 0u, var_0.a.x)), vec3<u32>(1u, u_input.c.x, var_0.a.x)), ~var_0.a, vec3<bool>(true, any(vec3<bool>(true, true, false)), arg_0.a)), ~_wgslsmith_add_vec3_u32(u_input.c.zxz, ~vec3<u32>(1u, 31143u, u_input.c.x))));
    var_0 = Struct_1(min(~vec3<u32>(~u_input.c.x, _wgslsmith_sub_u32(var_0.a.x, var_0.a.x), 1u), vec3<u32>(0u, ~0u, ~34653u) & vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(8009u, 4294967295u), vec2<u32>(79204u, 57801u)), _wgslsmith_mod_u32(var_0.a.x, u_input.c.x), 1u)));
    var_0 = Struct_1(~vec3<u32>(1u, 71489u & _wgslsmith_mult_u32(var_0.a.x, u_input.c.x), var_0.a.x));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -228f);
    return Struct_4(Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c.xzz, ~var_0.a), u_input.c.wzz)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.c.x, 30538u), u_input.c.wx, arg_0.a) >> (u_input.c.xw % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~(~u_input.c.wy), u_input.c.zw)), _wgslsmith_div_u32(~(~u_input.c.x), 35734u), Struct_1(select(~(~vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x)), vec3<u32>(0u & var_0.a.x, u_input.c.x, 43297u), true)), ~u_input.c);
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec2<bool>) -> vec2<u32> {
    let var_0 = Struct_3(Struct_1(~(~func_2(Struct_5(false)).a.a)), select(select(vec4<bool>(arg_2.x, false, arg_1, true), !(!vec4<bool>(arg_1, true, false, arg_1)), vec4<bool>(arg_2.x, arg_2.x, all(vec4<bool>(arg_2.x, arg_1, arg_1, false)), true)), vec4<bool>(arg_1, true & !arg_2.x, all(select(vec2<bool>(arg_2.x, arg_1), vec2<bool>(false, false), arg_2)), arg_1), select(vec4<bool>(!arg_2.x, arg_1 & false, false, arg_2.x), select(vec4<bool>(true, false, true, true), !vec4<bool>(arg_2.x, arg_1, arg_1, true), arg_2.x), !vec4<bool>(arg_1, arg_1, true, true))), vec4<bool>(arg_1, any(select(!vec3<bool>(arg_1, true, true), select(vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(arg_1, arg_2.x, arg_2.x), vec3<bool>(true, false, arg_1)), all(vec4<bool>(arg_1, false, arg_1, false)))), any(!select(vec2<bool>(arg_1, arg_1), arg_2, vec2<bool>(true, false))), !any(!arg_2)));
    var var_1 = Struct_5(false);
    var_1 = Struct_5(arg_1);
    var var_2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, u_input.c.x), 46266u << (1u % 32u), _wgslsmith_dot_vec3_u32(var_0.a.a, vec3<u32>(4294967295u, arg_0.e.x, 13124u)), u_input.c.x), ~arg_0.e), select(vec4<u32>(firstTrailingBit(arg_0.c), abs(0u), ~97602u, ~4294967295u), vec4<u32>(0u, abs(71251u), _wgslsmith_add_u32(21741u, var_0.a.a.x), abs(var_0.a.a.x)), true));
    var var_3 = _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(func_2(Struct_5(false)).a.a.zy, arg_0.b), ~(~vec2<u32>(arg_0.a.a.x >> (4294967295u % 32u), countOneBits(var_0.a.a.x))));
    return var_2.ww;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_5, arg_3: vec3<f32>) -> vec4<i32> {
    var var_0 = 4199u;
    let var_1 = !(!(!(!select(vec4<bool>(false, true, arg_2.a, false), vec4<bool>(true, false, false, arg_2.a), false))));
    var_0 = ~arg_0.a.x;
    let var_2 = ~(func_4(func_2(arg_2), var_1.x, vec2<bool>(var_1.x, false)) ^ ~vec2<u32>(4294967295u, arg_0.a.x)) ^ abs(arg_0.a.zy);
    let var_3 = 2147483647i;
    return abs(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_3, 1i, u_input.b.x) & select(vec4<i32>(-1i, -7171i, arg_1.a.x, var_3), vec4<i32>(0i, var_3, u_input.a, arg_1.a.x), vec4<bool>(var_1.x, false, var_1.x, false)), vec4<i32>(-34046i, 1i, -15983i, ~158i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-u_input.b.x, u_input.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(2147483647i), 0i, -50049i, u_input.b.x), ~func_1(Struct_1(vec3<u32>(23902u, u_input.c.x, u_input.c.x)), Struct_2(vec3<i32>(u_input.a, u_input.a, 2147483647i), u_input.c.zz, Struct_1(u_input.c.wzx), vec3<u32>(u_input.c.x, u_input.c.x, 41814u)), Struct_5(true), vec3<f32>(160f, -1000f, 1000f))), firstTrailingBit(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(1i, 2147483647i, u_input.b.x, u_input.d.x)), max(vec4<i32>(-6875i, u_input.a, 1i, u_input.b.x), vec4<i32>(u_input.a, -28609i, 6380i, 0i))))));
    let var_1 = Struct_4(func_2(Struct_5(any(vec4<bool>(true, true, true, true)))).a, u_input.c.xw, 0u, Struct_1(u_input.c.xyy), _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(~(u_input.c.x << (11149u % 32u)), reverseBits(38359u), ~u_input.c.x, select(~u_input.c.x, u_input.c.x, all(vec3<bool>(false, false, false))))));
    let var_2 = vec2<bool>(true, true);
    var var_3 = Struct_5(var_2.x);
    var_3 = Struct_5(!var_3.a);
    var_3 = Struct_5(~(~abs(u_input.c.x)) <= (reverseBits(0u) >> (_wgslsmith_mult_u32(func_2(Struct_5(var_2.x)).b.x, _wgslsmith_add_u32(u_input.c.x, 4294967295u)) % 32u)));
    let var_4 = Struct_1(u_input.c.ywx);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(396f, -848f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(651f, -823f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(267f, _wgslsmith_f_op_f32(f32(-1f) * -457f)))), var_0, _wgslsmith_mult_i32(~(-23744i), ~7545i));
}

