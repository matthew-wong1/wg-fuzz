struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> bool {
    let var_0 = -1110f;
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = u_input.b.yyw;
    let var_1 = true;
    let var_2 = u_input.e;
    var var_3 = max(u_input.b.yw, var_0.zy >> (_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(36602u, 17619u)), vec2<u32>(1u, var_2)), ~vec2<u32>(10653u, u_input.e)) % vec2<u32>(32u)));
    var var_4 = !arg_0.a.yzz;
    return select(vec4<bool>((_wgslsmith_f_op_f32(arg_1.x + arg_1.x) >= arg_1.x) && (func_1(var_1, vec2<i32>(0i, var_0.x)) & any(vec3<bool>(true, true, arg_0.b))), false, !arg_0.a.x, true), vec4<bool>(false, all(arg_0.a), !any(arg_0.a.yww), var_1), true);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: f32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = Struct_1(!arg_0.a, all(select(!(!vec4<bool>(arg_2, true, true, var_0.c.x)), select(var_0.a, func_3(Struct_1(vec4<bool>(arg_1, arg_2, arg_0.c.x, arg_0.c.x), true, arg_0.c), vec2<f32>(arg_3, arg_3)), vec4<bool>(false, true, true, var_0.c.x)), vec4<bool>(var_0.b, all(arg_0.a), true, select(arg_2, arg_2, arg_2)))), var_0.c);
    var_1 = arg_0;
    var var_2 = u_input.b;
    let var_3 = ~min(u_input.a.x, ~4294967295u);
    return Struct_1(arg_0.a, true, arg_0.a.zx);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_add_vec4_i32(u_input.b, ~(-(vec4<i32>(1i, 1i, u_input.b.x, 0i) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, -11296i, u_input.b.x, 20540i), vec4<i32>(u_input.b.x, -70781i, u_input.c.x, -83675i)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(768f, 664f)), _wgslsmith_f_op_f32(f32(-1f) * -2013f)))));
    var_0 = abs(vec4<i32>(-1218i, u_input.d, var_0.x, _wgslsmith_sub_i32(var_0.x, _wgslsmith_div_i32(u_input.b.x, var_0.x) | countOneBits(2147483647i))));
    var var_2 = ~vec4<u32>(u_input.a.x | countOneBits(u_input.e), u_input.a.x, max(u_input.e ^ 4294967295u, 1u), 1u);
    var var_3 = Struct_1(!select(arg_1.a, vec4<bool>(false, true, true, u_input.a.x <= 0u), true), !arg_0.a.x, select(!func_3(Struct_1(arg_1.a, arg_1.c.x, arg_0.a.zy), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.x, var_1.x)))).zx, select(func_3(func_2(arg_1, false, arg_1.c.x, 795f), vec2<f32>(396f, -396f)).yx, !func_2(Struct_1(vec4<bool>(arg_0.a.x, true, false, arg_1.a.x), arg_1.a.x, vec2<bool>(false, arg_1.a.x)), true, false, var_1.x).c, vec2<bool>(!arg_0.b, true)), arg_0.b));
    return StorageBuffer(-1i, _wgslsmith_sub_i32(u_input.c.x, ~u_input.d), _wgslsmith_add_vec3_i32(select(var_0.yyy, var_0.wwx, vec3<bool>(arg_1.b, true, true)) ^ vec3<i32>(2147483647i & var_0.x, var_0.x ^ 32578i, 1i), ~min(firstLeadingBit(u_input.c), vec3<i32>(-43510i, 2147483647i, u_input.b.x) << (var_2.zyx % vec3<u32>(32u)))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(3945u, 38017u, 13043u), ~firstTrailingBit(u_input.e << (19653u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(false, false, true, false)), any(vec2<bool>(true, true)), vec2<bool>(true, true)), func_2(Struct_1(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))), all(vec4<bool>(false, true, true, false)) || func_1(true, vec2<i32>(u_input.b.x, u_input.d)), vec2<bool>(true, true)), true, true, -120f));
}

