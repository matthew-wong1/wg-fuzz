struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    var var_0 = vec2<bool>(false, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(218f, -1148f, 662f) * vec3<f32>(103f, 944f, -304f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(100f, -1246f, -490f)))))));
    let var_2 = Struct_4(~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.a, u_input.c)), ~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.c)) >> (~(~select(vec2<u32>(u_input.c, 27090u), vec2<u32>(u_input.c, u_input.a), false)) % vec2<u32>(32u)), Struct_2(vec4<i32>(-11976i, min(u_input.b.x, 1i), u_input.b.x & 0i, 1i) ^ vec4<i32>(0i, 47034i, u_input.b.x, ~32502i)), _wgslsmith_div_i32(2147483647i, -13910i));
    let var_3 = -1i;
    return all(select(vec4<bool>(false, all(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)), false, all(!vec3<bool>(var_0.x, var_0.x, false))), vec4<bool>(u_input.a >= _wgslsmith_mod_u32(u_input.a, var_2.a.x), select(true, var_0.x, true), all(vec2<bool>(false, var_0.x)) || true, var_0.x), !(var_1.x <= -392f) || var_0.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>) -> Struct_3 {
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -962f) + _wgslsmith_f_op_f32(1097f + 162f))))), vec4<bool>(func_3(), u_input.b.x < -(~arg_1.x), true, all(vec4<bool>(true, any(vec4<bool>(true, false, false, false)), true, true))));
}

fn func_1(arg_0: vec2<i32>) -> StorageBuffer {
    let var_0 = func_2(~max(vec2<u32>(0u, 11145u), ~vec2<u32>(0u, u_input.c)), -min(u_input.b, vec2<i32>(arg_0.x, -6237i) | u_input.b) << (_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(32271u, u_input.c)), ~vec2<u32>(u_input.c, 17809u)) % vec2<u32>(32u)));
    var var_1 = all(var_0.b) || false;
    let var_2 = var_0;
    var_1 = var_2.b.x;
    let var_3 = !(any(var_2.b) == !(!var_0.b.x));
    return StorageBuffer(~(~countOneBits(52070u) ^ _wgslsmith_sub_u32(5661u, _wgslsmith_sub_u32(4294967295u, u_input.c))), 651f, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(-583f), vec4<bool>(true, true, !select(select(true, false, false), true, true), true));
    var var_1 = _wgslsmith_mult_vec3_i32(select(abs(select(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), var_0.b.zyy)) ^ countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), countOneBits(select(_wgslsmith_mult_vec3_i32(vec3<i32>(47176i, u_input.b.x, u_input.b.x), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i)), true)), true), -min(vec3<i32>(-26042i, u_input.b.x, -41189i) | vec3<i32>(u_input.b.x, u_input.b.x, 29845i), -vec3<i32>(u_input.b.x, u_input.b.x, -42437i)) << (vec3<u32>(~0u, u_input.a, ~4294967295u) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = func_1(vec2<i32>(u_input.b.x, firstLeadingBit(1i)));
}

