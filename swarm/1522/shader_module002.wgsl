struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec2<i32>(21995i, 2147483647i), Struct_1(vec2<u32>(1u, 53142u), -2329f)), Struct_2(vec2<i32>(23393i, -2343i), Struct_1(vec2<u32>(4294967295u, 36000u), 347f)), Struct_2(vec2<i32>(-22839i, -1546i), Struct_1(vec2<u32>(55189u, 0u), -595f)), Struct_2(vec2<i32>(-3508i, 2147483647i), Struct_1(vec2<u32>(1u, 76845u), 865f)), Struct_2(vec2<i32>(2147483647i, -29216i), Struct_1(vec2<u32>(1u, 76734u), 498f)), Struct_2(vec2<i32>(22863i, 2147483647i), Struct_1(vec2<u32>(17497u, 55414u), -1681f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> vec4<i32> {
    return abs(vec4<i32>(u_input.b, _wgslsmith_sub_i32(min(_wgslsmith_clamp_i32(arg_0.x, 6604i, arg_0.x), i32(-1i) * -2147483647i), _wgslsmith_mult_i32(22300i, -arg_0.x)), reverseBits(u_input.b), countOneBits(~arg_0.x >> (732u % 32u))));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    global0 = array<Struct_2, 6>();
    var var_0 = Struct_4(Struct_1(max(abs(vec2<u32>(1u, 13975u)), select(~vec2<u32>(u_input.a, u_input.a), min(vec2<u32>(2878u, u_input.a), vec2<u32>(19077u, 1497u)), select(vec2<bool>(true, false), vec2<bool>(false, false), true))), _wgslsmith_f_op_f32(ceil(446f))), _wgslsmith_sub_u32(~u_input.a, ~(~60721u)), !all(vec2<bool>(-34094i == u_input.b, true)));
    var var_1 = u_input.b;
    let var_2 = min(vec4<i32>(-1i, -1i, 1i & u_input.b, min(u_input.b, -2147483647i)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(max(func_3(vec3<i32>(-34260i, u_input.b, -61011i), 1u), vec4<i32>(u_input.b, 1i, -91035i, u_input.b)), vec4<i32>(u_input.b, -1i, select(u_input.b, -7067i, var_0.c), -1i << (var_0.b % 32u)), vec4<i32>(-u_input.b, -2677i, -u_input.b, u_input.b)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, 21580i, -42211i), vec4<i32>(-9412i, u_input.b, 1i, 1i) | vec4<i32>(u_input.b, u_input.b, -1i, u_input.b)))));
    var_0 = Struct_4(Struct_1(vec2<u32>(var_0.b, 1u), _wgslsmith_f_op_f32(-var_0.a.b)), var_0.a.a.x, any(vec4<bool>(any(vec3<bool>(var_0.c, var_0.c, true)) && !var_0.c, any(!vec4<bool>(true, true, true, var_0.c)), _wgslsmith_f_op_f32(sign(var_0.a.b)) < _wgslsmith_f_op_f32(ceil(arg_0.x)), false)));
    return var_0.a.a.x;
}

fn func_1() -> f32 {
    let var_0 = !((_wgslsmith_div_u32(func_2(vec3<f32>(-1008f, 852f, 931f)), ~u_input.a) < 42853u) && true);
    let var_1 = global0[_wgslsmith_index_u32(22863u, 6u)];
    let var_2 = _wgslsmith_sub_u32(var_1.b.a.x, 22146u);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(max(var_1.b.b, var_1.b.b)), _wgslsmith_f_op_f32(step(var_1.b.b, _wgslsmith_f_op_f32(-var_1.b.b))), 625f);
    var var_4 = vec4<f32>(var_1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b))), var_3.x, -779f);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_4.x, -926f), -1844f)))), 1301f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x - var_4.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -714f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1631f + 195f), _wgslsmith_f_op_f32(func_1())))), vec2<f32>(1f, 1f));
    global0 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) + var_0.x));
}

