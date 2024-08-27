struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = !any(!(!(!vec2<bool>(arg_0, false))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-437f, -283f, 806f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-2036f, -507f, 790f), vec3<f32>(-127f, -151f, -394f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -705f), _wgslsmith_f_op_f32(f32(-1f) * -713f), _wgslsmith_f_op_f32(f32(-1f) * -890f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-369f, -425f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f + 456f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -234f)))), var_0 || any(select(vec3<bool>(true, true, arg_0), vec3<bool>(false, arg_0, var_0), arg_0)))), firstLeadingBit(vec3<i32>(~_wgslsmith_add_i32(u_input.c.x, u_input.c.x), 2147483647i, ~u_input.d.x)));
    global0 = array<vec2<i32>, 9>();
    let var_2 = var_1;
    var var_3 = Struct_1(var_1.a, vec3<i32>(0i, var_1.b.x, 33040i << (1u % 32u)));
    return var_3.b.x;
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1293f, -596f, true)), _wgslsmith_f_op_f32(-1031f * -607f), 157f) * vec3<f32>(_wgslsmith_f_op_f32(trunc(1348f)), -2191f, 1f)), countOneBits(_wgslsmith_div_vec3_i32(~u_input.d, countOneBits(u_input.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-121f - -318f))), ~u_input.d.zx, 0i, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1411f - 1621f))), vec4<i32>(func_3(true), -10084i ^ -u_input.c.x, max(_wgslsmith_mod_i32(u_input.d.x, u_input.c.x), -u_input.d.x), -15829i), firstTrailingBit(max(firstTrailingBit(u_input.a.yy), abs(vec2<u32>(21604u, u_input.a.x)))), ~(15747u << (_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x) % 32u))));
    var var_1 = _wgslsmith_div_vec2_i32(u_input.d.xy, u_input.d.zz);
    var var_2 = ~(-2147483647i);
    var var_3 = _wgslsmith_add_u32(~var_0.e.c.x, ~1u);
    var var_4 = abs(_wgslsmith_add_i32(-23920i, 11766i));
    return _wgslsmith_f_op_vec3_f32(floor(var_0.a.a));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(-527f * arg_2)), _wgslsmith_f_op_vec3_f32(func_2())), u_input.d), -204f, select(select(abs(vec2<i32>(-2147483647i, u_input.c.x)), u_input.c.xx, true) ^ select(vec2<i32>(u_input.d.x, u_input.c.x), u_input.c.zz, select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), abs(global0[_wgslsmith_index_u32(1u, 9u)]) | vec2<i32>(~u_input.d.x, 0i), arg_1 == abs(firstTrailingBit(arg_0.x))), 0i << (u_input.a.x % 32u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1148f * _wgslsmith_f_op_f32(trunc(532f)))), select(select(~vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, -36489i), ~vec4<i32>(u_input.d.x, -2147483647i, 0i, 1i), u_input.c.x >= u_input.d.x), vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), true), ~u_input.a.yx, _wgslsmith_add_u32(~u_input.b, 7278u) << (~arg_0.x % 32u)));
    var var_1 = !(!vec2<bool>(!any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))));
    let var_2 = !(!(!vec3<bool>(u_input.a.x <= arg_1, var_1.x, var_1.x)));
    var_1 = !vec2<bool>(var_2.x, false);
    let var_3 = var_0.a;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 9>();
    var var_0 = func_1(u_input.a, u_input.a.x, -120f);
    let var_1 = var_0.a.yz;
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) * _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -164f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-316f + var_0.a.x)))), var_1.x), select(reverseBits(_wgslsmith_mult_vec3_i32(u_input.d, var_0.b)), ~abs(-u_input.c), true));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)) * 1121f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), -1731f, var_1.x);
    var var_3 = true;
    var_0 = func_1(~u_input.a, _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(~u_input.b, 46909u), 4294967295u, abs(~1u)), -1271f);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_vec3_u32(~select(u_input.a, u_input.a, vec3<bool>(false, false, true)), vec3<u32>(_wgslsmith_div_u32(0u, u_input.b), firstTrailingBit(u_input.b), 15791u)), _wgslsmith_clamp_vec3_u32(countOneBits(~u_input.a), vec3<u32>(abs(u_input.b), ~u_input.a.x, 1u), u_input.a | ~vec3<u32>(u_input.b, u_input.b, u_input.b)), select(vec3<bool>(any(vec4<bool>(true, false, true, true)), true, true), vec3<bool>(true, any(vec4<bool>(false, false, false, true)), all(vec4<bool>(true, false, false, false))), vec3<bool>(true, all(vec2<bool>(false, true)), true))), vec3<u32>(24958u, firstTrailingBit(firstLeadingBit(~1u)), 0u));
}

