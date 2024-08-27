struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(13854i, i32(-2147483648), 2787i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    var var_0 = -2147483647i;
    var var_1 = false;
    let var_2 = 4294967295u;
    var_1 = var_2 > 4294967295u;
    global0 = ~(-(~(vec3<i32>(u_input.b, u_input.b, global0.x) & ~vec3<i32>(global0.x, global0.x, global0.x))));
    return Struct_1(-_wgslsmith_add_i32(2147483647i, -31270i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-672f, 1118f), vec2<f32>(-613f, -1388f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-503f, 1000f))))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2239f), 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-733f, -1330f))))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = ~(vec3<i32>(-1i) * -(abs(vec3<i32>(1i, -1i, 1856i)) | (vec3<i32>(global0.x, -1934i, arg_0.a) | vec3<i32>(-59679i, global0.x, u_input.b))));
    return ~(~1i);
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    return Struct_1(func_3(func_2()) >> (~8984u % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1560f + -1000f) * 798f), _wgslsmith_f_op_f32(-2322f + _wgslsmith_f_op_f32(min(-251f, -1545f)))) - func_2().b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec4<bool>(!(global0.x <= u_input.b), !any(vec2<bool>(true, true)), true, false));
    var var_1 = func_1();
    global0 = _wgslsmith_clamp_vec3_i32(~reverseBits(select(-vec3<i32>(global0.x, global0.x, 49612i), vec3<i32>(u_input.b, u_input.b, var_1.a), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false))), abs(abs(select(vec3<i32>(-1249i, -1001i, global0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a, 1i, 2147483647i), vec3<i32>(var_1.a, global0.x, u_input.b)), true))), vec3<i32>(func_1().a, max(~(2147483647i << (u_input.a.x % 32u)), 1i), -(select(u_input.b, u_input.b, false) | abs(-2147483647i))));
    global0 = vec3<i32>(global0.x, global0.x, countOneBits(u_input.b) & max(-global0.x, -1i)) ^ -abs(vec3<i32>(u_input.b, u_input.b, var_1.a) | firstTrailingBit(vec3<i32>(var_1.a, -2147483647i, -20335i)));
    global0 = ~abs(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-1i, u_input.b, global0.x), vec3<i32>(2147483647i, -1i, 19198i), vec3<bool>(true, false, true)) >> (~vec3<u32>(u_input.c.x, u_input.a.x, 18437u) % vec3<u32>(32u)), ~vec3<i32>(2147483647i, -25326i, global0.x)));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(-var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(global0.x, var_1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1146f, 729f, 886f) - vec3<f32>(var_1.b.x, 978f, var_1.b.x))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(step(-625f, var_1.b.x)), -245f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.b.x, 1000f, var_1.b.x)))))))), ~abs(vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 11609u, u_input.c.x, 1u)), ~u_input.c.x ^ select(32390u, reverseBits(1u), true), 38902u);
}

