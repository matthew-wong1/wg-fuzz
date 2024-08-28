struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_4,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_2) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + -2015f), _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1151f + 733f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_f32(arg_0.x - 708f)))), arg_1.x);
    let var_1 = select(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, 1u, u_input.d.x, 4294967295u), vec4<u32>(18271u, 4294967295u, 45075u, u_input.d.x) << (vec4<u32>(4294967295u, u_input.a, 31620u, u_input.a) % vec4<u32>(32u))) ^ u_input.d.x, ~u_input.a, ~firstTrailingBit(u_input.a)), vec3<u32>(u_input.d.x, 32953u, ~_wgslsmith_dot_vec2_u32(~u_input.d.zx, firstLeadingBit(u_input.d.zx))), arg_2.a);
    var var_2 = -select(_wgslsmith_mult_vec3_i32(vec3<i32>(77268i, -19362i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.b, 1i)) >> (var_1 % vec3<u32>(32u)), abs(abs(vec3<i32>(0i, -37950i, -1i))), arg_2.a) & abs(firstTrailingBit(~u_input.c & -u_input.c));
    var var_3 = 12426u;
    var_3 = max(_wgslsmith_div_u32(28870u, abs(1u | u_input.a)), ~_wgslsmith_add_u32(~abs(0u), var_1.x | _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-25949i, -u_input.c.x), var_2.x), -abs(vec2<i32>(_wgslsmith_mult_i32(var_2.x, u_input.c.x), u_input.b)));
}

fn func_2() -> u32 {
    var var_0 = ~_wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(122512u, 84962u))), ~vec2<u32>(u_input.a, u_input.a));
    var_0 = vec2<u32>(1u & (14505u | (~u_input.a >> (var_0.x % 32u))), ~(~(var_0.x & 4294967295u) >> (~(~u_input.d.x) % 32u)));
    var var_1 = u_input.c;
    let var_2 = vec2<i32>(select(~var_1.x, -func_3(vec4<f32>(-383f, 1521f, 1321f, -555f), vec2<f32>(1411f, 677f), Struct_2(vec3<bool>(true, false, true))), true), u_input.b) << (_wgslsmith_add_vec2_u32(abs(~max(vec2<u32>(61217u, u_input.d.x), vec2<u32>(24465u, var_0.x))), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(20661u, u_input.a), countOneBits(u_input.d.yy)), vec2<u32>(var_0.x, _wgslsmith_mult_u32(var_0.x, 0u)))) % vec2<u32>(32u));
    var var_3 = _wgslsmith_mult_i32(-1i << (u_input.d.x % 32u), i32(-1i) * -49401i);
    return ~1u;
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = true;
    var var_1 = func_2();
    var var_2 = !vec2<bool>(all(vec2<bool>(true, -1i <= u_input.b)), any(vec4<bool>(-17211i < u_input.b, -397f != arg_0, true, all(vec2<bool>(true, false)))));
    return Struct_4(Struct_3(Struct_2(select(vec3<bool>(false, true, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), !vec3<bool>(var_2.x, var_2.x, true))), -_wgslsmith_div_vec2_i32(~u_input.c.zz, _wgslsmith_add_vec2_i32(u_input.c.xz, vec2<i32>(u_input.c.x, u_input.b)))), true, Struct_3(Struct_2(vec3<bool>(var_2.x, true | var_2.x, false)), u_input.c.zz), Struct_2(vec3<bool>(var_2.x, _wgslsmith_div_i32(u_input.b, u_input.c.x) == ~u_input.c.x, var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-482f);
    let var_1 = vec2<i32>(-69889i << (1u % 32u), var_0.a.b.x);
    let var_2 = var_0;
    let var_3 = true;
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-331f))))), _wgslsmith_div_f32(-1244f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1715f, -1000f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

