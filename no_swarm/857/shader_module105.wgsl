struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), any(vec2<bool>(true, true))), !(!vec2<bool>(select(false, false, false), u_input.b != 1u)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), select(true, true, all(vec2<bool>(false, true)))), vec2<bool>(true, all(vec3<bool>(true, true, false))), true));
    var var_1 = _wgslsmith_add_u32(u_input.b, arg_0.x);
    let var_2 = !vec2<bool>(var_0.x, true);
    var_1 = _wgslsmith_div_u32(~(~45976u), ~12335u);
    var_1 = u_input.b;
    return !vec3<bool>((_wgslsmith_f_op_f32(f32(-1f) * -1301f) < _wgslsmith_f_op_f32(floor(614f))) | any(vec3<bool>(true, true, var_0.x)), !(4294967295u == (u_input.b | u_input.b)), true);
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = arg_0;
    let var_1 = Struct_1(firstLeadingBit(~(~var_0.c.a)), ((i32(-1i) * -23820i) >= u_input.d.x) | any(!vec4<bool>(false, arg_0.a.c.x, var_0.e.b, var_0.c.c.x)), !select(!(!var_0.d.c), select(!var_0.c.c, vec3<bool>(arg_0.c.b, var_0.b, false), vec3<bool>(false, true, true)), !var_0.c.c));
    var var_2 = !any(!select(vec4<bool>(true, var_0.c.b, var_1.b, true), !vec4<bool>(arg_0.b, arg_0.c.b, var_0.a.b, true), true));
    let var_3 = Struct_3(u_input.c);
    var_2 = select(arg_0.d.c.x, !(!(_wgslsmith_clamp_i32(var_3.a, -48985i, var_3.a) == 43595i)), true);
    return !(!(!all(func_1(vec2<u32>(arg_0.c.a.x, 4294967295u)))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(abs(select(min(_wgslsmith_sub_vec3_u32(vec3<u32>(32354u, 2374u, u_input.b), vec3<u32>(u_input.b, u_input.b, 34770u)), abs(vec3<u32>(26573u, 4294967295u, 42080u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(63422u, 1u, u_input.b), vec3<u32>(u_input.b, u_input.b, 25089u), _wgslsmith_sub_vec3_u32(vec3<u32>(21846u, 1u, 10428u), vec3<u32>(u_input.b, u_input.b, u_input.b))), vec3<bool>(false, all(vec3<bool>(true, true, false)), true))), func_1(vec2<u32>(_wgslsmith_div_u32(u_input.b << (37777u % 32u), 54783u | u_input.b), ~reverseBits(1u))).x, vec3<bool>(!select(func_3(Struct_2(Struct_1(vec3<u32>(u_input.b, 43318u, u_input.b), false, vec3<bool>(true, true, true)), true, Struct_1(vec3<u32>(u_input.b, 7658u, 26382u), false, vec3<bool>(false, true, true)), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), true, vec3<bool>(false, true, true)), Struct_1(vec3<u32>(u_input.b, u_input.b, 1u), true, vec3<bool>(true, false, true)))), true, all(vec2<bool>(true, true))), true, true));
    var var_1 = _wgslsmith_sub_i32(u_input.d.x, _wgslsmith_sub_i32(-u_input.d.x ^ 1i, -1i));
    var var_2 = Struct_2(var_0, var_0.b, Struct_1(~select(_wgslsmith_mult_vec3_u32(var_0.a, vec3<u32>(u_input.b, var_0.a.x, u_input.b)), ~vec3<u32>(u_input.b, 32277u, u_input.b), true), u_input.a > _wgslsmith_dot_vec4_i32(select(vec4<i32>(-6884i, 0i, 1i, u_input.a), vec4<i32>(-17296i, 44953i, 0i, 32304i), vec4<bool>(true, var_0.b, var_0.b, var_0.c.x)), select(vec4<i32>(-13223i, -30661i, u_input.c, 1i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.c, -1i), vec4<bool>(true, false, var_0.c.x, false))), vec3<bool>(var_0.b, true, false)), var_0, var_0);
    let var_3 = vec3<i32>(countOneBits(_wgslsmith_div_i32(i32(-1i) * -6574i, i32(-1i) * -u_input.d.x)), -51383i, 1i);
    var var_4 = Struct_3(-38104i);
    return var_2.d;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> StorageBuffer {
    var var_0 = arg_0.a;
    var var_1 = arg_0.a.a.x;
    var_1 = arg_0.c.a.x;
    var var_2 = var_0.a;
    var_0 = Struct_1(var_0.a, arg_0.a.c.x, vec3<bool>(any(func_2(vec4<f32>(arg_1, arg_1, -1387f, 1000f)).c.zy), var_0.b, arg_0.a.c.x));
    return StorageBuffer(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(551f, arg_1)) * arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(251f));
    var var_1 = abs(abs(u_input.d));
    var_1 = vec3<i32>(u_input.c, u_input.d.x & -2147483647i, u_input.d.x);
    let var_2 = ~vec2<u32>(~1u, ~1u);
    let var_3 = abs(countOneBits(countOneBits(var_2)));
    var_1 = ~abs(-firstTrailingBit(u_input.d) >> (vec3<u32>(39876u, var_3.x & 4294967295u, 44940u << (1u % 32u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = func_4(Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.b, ~1u), true, func_1(_wgslsmith_clamp_vec2_u32(var_3, var_3, vec2<u32>(1u, 94209u)))), var_1.x == min(9529i >> (var_2.x % 32u), var_1.x & -5964i), Struct_1(vec3<u32>(max(var_3.x, var_3.x), u_input.b, u_input.b), false, vec3<bool>(true, true, true)), Struct_1(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 21147u, u_input.b), vec3<u32>(u_input.b, u_input.b, 69994u), vec3<u32>(var_2.x, var_3.x, var_3.x)), !all(vec4<bool>(true, true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, var_0, -549f, -1000f))))))), -1000f);
}

