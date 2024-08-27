struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: i32) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(421f, -523f))), ~0u, ~(~u_input.a), u_input.b, -select(vec3<i32>(arg_0, 87481i, 1i), vec3<i32>(1i, u_input.b.x, 0i), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1307f, var_0.a.a)), _wgslsmith_f_op_f32(-900f + var_0.a.a), -1037f, var_0.a.a)));
    let var_2 = Struct_3(u_input.b.wzy, var_0.a);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(888f + var_2.b.a) * -290f);
    var var_4 = var_1.zyz;
    return -abs(_wgslsmith_mult_vec3_i32(-var_2.b.e, ~u_input.b.yyz)) >> (~(~(select(vec3<u32>(var_2.b.c, var_0.a.b, var_0.a.c), vec3<u32>(u_input.a, var_2.b.b, var_2.b.c), vec3<bool>(false, true, true)) << (reverseBits(vec3<u32>(u_input.a, u_input.a, var_0.a.c)) % vec3<u32>(32u)))) % vec3<u32>(32u));
}

fn func_1() -> Struct_4 {
    return Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -810f), 4294967295u, ~(u_input.a ^ u_input.a), -(~vec4<i32>(u_input.b.x, 13747i, 0i, -1i)), func_2(u_input.b.x))), Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_div_f32(-1643f, 1867f)), u_input.a, u_input.a, select(abs(u_input.b), vec4<i32>(-2147483647i, -6071i, u_input.b.x, u_input.b.x) >> (vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) % vec4<u32>(32u)), true), _wgslsmith_mod_vec3_i32(~u_input.b.xzx, u_input.b.yxw))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_3) -> i32 {
    let var_0 = func_1().a;
    let var_1 = Struct_4(Struct_2(func_1().b.a), var_0);
    let var_2 = vec4<i32>(var_0.a.d.x, 0i, arg_0.a.e.x, 22989i << (min(6212u, ~select(19059u, arg_3.b.c, false)) % 32u));
    var var_3 = _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-var_2.x | var_0.a.e.x, 1i, min(_wgslsmith_sub_i32(1i, var_2.x), arg_3.a.x))), vec3<i32>(1i, ~1i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, arg_0.a.d.x, arg_0.a.d.x), -arg_3.a), reverseBits(abs(u_input.b.yzw)))));
    var var_4 = _wgslsmith_mult_vec4_u32(min(~_wgslsmith_add_vec4_u32(max(vec4<u32>(4294967295u, 4294967295u, var_1.a.a.b, 0u), vec4<u32>(0u, u_input.a, 13779u, 4294967295u)), vec4<u32>(arg_0.a.b, arg_3.b.b, arg_3.b.b, u_input.a) & vec4<u32>(1u, 1u, 4294967295u, 6256u)), ~abs(~vec4<u32>(var_0.a.c, 23869u, u_input.a, arg_0.a.c))), vec4<u32>(48031u ^ ~u_input.a, firstLeadingBit(_wgslsmith_clamp_u32(0u, arg_3.b.b, u_input.a)), _wgslsmith_sub_u32(firstTrailingBit(arg_0.a.c), 0u), _wgslsmith_sub_u32(var_0.a.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.a.b, u_input.a), vec3<u32>(var_0.a.b, 8535u, 39040u)))) & ~firstLeadingBit(vec4<u32>(var_0.a.c, arg_3.b.b, 1u, 47472u)));
    return var_1.a.a.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_3(vec3<i32>(func_3(func_1().b, any(vec3<bool>(true, true, true)), vec4<bool>(var_0.a.a.a >= 1170f, true, true, true), Struct_3(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -47678i, u_input.b.x), vec3<i32>(var_0.a.a.e.x, 16866i, 51139i)), Struct_1(1199f, var_0.a.a.b, u_input.a, vec4<i32>(u_input.b.x, var_0.b.a.e.x, 105i, -896i), vec3<i32>(-1604i, 69896i, -1i)))), i32(-1i) * -1i, -2147483647i), var_0.b.a);
    var var_2 = _wgslsmith_add_i32(var_1.a.x, 1385i);
    var var_3 = Struct_4(func_1().a, var_0.a);
    var_3 = func_1();
    let var_4 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(352f, var_1.b.a)), _wgslsmith_f_op_f32(min(var_1.b.a, _wgslsmith_f_op_f32(661f - var_1.b.a)))), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.b.c, 4294967295u, u_input.a), firstTrailingBit(vec3<u32>(28376u, 24511u, var_3.b.a.c)), abs(vec3<u32>(1u, 1u, 1640u))) | reverseBits(vec3<u32>(75599u, u_input.a, 4294967295u) << (vec3<u32>(1u, var_0.a.a.c, 11918u) % vec3<u32>(32u))), vec3<u32>(~var_0.b.a.b, max(var_4, var_0.b.a.b) << (var_3.b.a.c % 32u), select(42128u, countOneBits(0u), true))), vec3<u32>(reverseBits(0u), ~u_input.a, ~49466u));
}

