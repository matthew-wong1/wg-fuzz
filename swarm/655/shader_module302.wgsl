struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = Struct_2(-_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.wwx, vec3<i32>(1i, 1i, u_input.c)) | vec3<i32>(-2147483647i, u_input.c, -2147483647i), -u_input.a.wwx >> (u_input.d % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.zxw, u_input.a.wyz), -vec3<i32>(u_input.c, 40679i, 2147483647i))));
    var_0 = Struct_2(reverseBits(var_0.a));
    var_0 = Struct_2(var_0.a);
    var var_1 = select(arg_0, select(select(vec4<bool>(all(arg_0.zxy), arg_0.x, true, select(false, arg_0.x, true)), !(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(sign(2115f)) > _wgslsmith_f_op_f32(select(-217f, -177f, false))), vec4<bool>(true, arg_0.x, arg_0.x && true, !(!arg_0.x)), arg_0), true);
    let var_2 = Struct_3(Struct_1(_wgslsmith_add_i32(~(-u_input.a.x), (u_input.c >> (9383u % 32u)) >> (_wgslsmith_clamp_u32(76696u, 5912u, 42394u) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f) - _wgslsmith_f_op_f32(-822f * 602f)), 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2054f))))), 35043u, Struct_1(2147483647i, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1100f, 556f, -2208f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 447f, -446f))))))));
    return 21403u;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(arg_0 - -1205f), -356f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(ceil(536f)), var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 1320f) - _wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -169f) * _wgslsmith_f_op_f32(arg_0 - -701f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-828f, 502f, _wgslsmith_f_op_f32(max(-1371f, arg_0)))))), any(!vec3<bool>(true, var_0, !var_0))));
    var var_2 = _wgslsmith_sub_vec2_u32(u_input.d.yx, min(vec2<u32>(func_3(select(vec4<bool>(false, false, true, var_0), vec4<bool>(true, var_0, true, false), var_0)), u_input.d.x), ~(~u_input.d.xy)));
    return Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 213f, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 444f, var_1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, 2182f, var_1.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.x, -237f) * vec3<f32>(310f, 602f, arg_0))) * _wgslsmith_div_vec3_f32(vec3<f32>(-453f, -1553f, arg_0), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, 1091f), vec3<f32>(arg_0, var_1.x, var_1.x), true)))))));
}

fn func_1() -> f32 {
    let var_0 = func_2(-1390f);
    let var_1 = ~vec3<u32>(func_3(vec4<bool>(u_input.d.x <= u_input.b, true, true, false)), func_3(vec4<bool>(true, true, true, true)), ~4294967295u);
    let var_2 = var_0.b;
    let var_3 = any(!(!vec2<bool>(var_0.b.x != var_0.b.x, false)));
    var var_4 = Struct_4(-u_input.a.ww ^ vec2<i32>(_wgslsmith_clamp_i32(-u_input.c, _wgslsmith_sub_i32(23274i, var_0.a), var_0.a), _wgslsmith_add_i32(0i, ~u_input.a.x)), var_2.x, _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-605f, func_2(-1000f).b.x, !var_3)) + var_2.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(func_2(var_4.c).b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, select(u_input.b, u_input.b, true), u_input.b, _wgslsmith_div_u32(u_input.d.x, u_input.b)), ~(~vec4<u32>(1u, u_input.d.x, u_input.b, 11741u))) << (select(~(~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)), vec4<u32>(1u << (u_input.d.x % 32u), u_input.d.x & 1u, ~28437u, 0u), vec4<bool>(true, true, true, false)) % vec4<u32>(32u))) & vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(u_input.b, 24606u, u_input.d.x)), min(u_input.d, u_input.d)), 1u, ~13962u);
    let var_2 = _wgslsmith_f_op_f32(func_1());
    var var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -609f)).b.x + _wgslsmith_f_op_f32(step(var_2, -1199f)))));
    var var_4 = -_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(u_input.a), u_input.a), vec4<i32>(-2147483647i, -20716i, _wgslsmith_div_i32(-u_input.c, _wgslsmith_sub_i32(var_0, var_0)), abs(reverseBits(var_0))), vec4<i32>(-1i) * -min(u_input.a, u_input.a));
    var var_5 = Struct_3(func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x * var_3.b.x))))), var_1.x, func_2(1045f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zz);
}

