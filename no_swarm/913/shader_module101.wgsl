struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = -1310f >= arg_0;
    var var_1 = Struct_2(true, u_input.e.wzx, Struct_1(min(~u_input.a.xx, ~reverseBits(u_input.d.zw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -601f, -1623f), vec3<f32>(arg_0, 1983f, 1222f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1161f, -1000f, arg_0))))), arg_0, vec2<bool>(true, any(vec2<bool>(true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_0)), 939f, all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(749f))))), Struct_1(reverseBits(~(~u_input.d.zy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1219f, arg_0)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2897f, 380f, 730f))) - _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, arg_0, arg_0), vec3<f32>(arg_0, arg_0, arg_0)))), -405f, vec2<bool>(true, false), arg_0), -u_input.b.yzx);
    var var_2 = Struct_2(true, _wgslsmith_clamp_vec3_i32(min(vec3<i32>(-u_input.b.x, _wgslsmith_div_i32(-12600i, var_1.b.x), u_input.b.x), max(vec3<i32>(u_input.e.x, var_1.e.x, -17524i), firstLeadingBit(vec3<i32>(-36229i, -13155i, 2147483647i)))), ~vec3<i32>(u_input.e.x << (u_input.a.x % 32u), -7665i, countOneBits(-95290i)), var_1.b), var_1.c, Struct_1(var_1.d.a, vec3<f32>(-197f, 1262f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.b.x) - -1544f)), 939f, !select(!vec2<bool>(var_1.c.d.x, false), vec2<bool>(true, true), var_1.c.d), -1347f), vec3<i32>(var_1.b.x, u_input.e.x, var_1.e.x));
    var var_3 = i32(-1i) * -firstTrailingBit(-(~u_input.e.x));
    var var_4 = Struct_2(!all(var_1.c.d), abs(vec3<i32>(-1i) * -vec3<i32>(u_input.e.x, u_input.e.x, var_1.b.x)), Struct_1(reverseBits(~(var_1.d.a << (u_input.d.yx % vec2<u32>(32u)))), var_1.c.b, _wgslsmith_f_op_f32(var_2.c.b.x - _wgslsmith_f_op_f32(min(arg_0, -1000f))), var_1.c.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-975f + var_1.d.c), _wgslsmith_f_op_f32(f32(-1f) * -370f))), var_2.d, _wgslsmith_div_vec3_i32(~(countOneBits(var_2.e) >> (u_input.d.wwx % vec3<u32>(32u))), u_input.e.wxx));
    return _wgslsmith_f_op_f32(f32(-1f) * -1042f);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(reverseBits(u_input.a.zy), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(ceil(-2495f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(555f, 1497f, false)))), 509f, _wgslsmith_f_op_f32(f32(-1f) * -225f)), 1f, select(select(vec2<bool>(select(false, false, false), false), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false), true)), select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), any(vec4<bool>(false, true, true, true))), vec2<bool>(true, true), true), vec2<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false)), false)), _wgslsmith_f_op_f32(f32(-1f) * -565f));
    var var_1 = vec4<bool>(select(true, any(select(select(vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.d.x), var_0.d.x), !vec4<bool>(var_0.d.x, true, var_0.d.x, true), vec4<bool>(var_0.d.x, true, var_0.d.x, false))), all(vec3<bool>(false, var_0.d.x, true)) || all(var_0.d)), var_0.d.x, false, false);
    var var_2 = any(select(vec4<bool>(var_0.a.x == ~u_input.a.x, !(var_0.d.x & var_1.x), all(var_0.d) | true, var_0.d.x), select(vec4<bool>(false, u_input.e.x == 0i, any(vec4<bool>(var_1.x, var_1.x, false, false)), true), vec4<bool>(false, all(var_0.d), var_0.e >= var_0.e, true), vec4<bool>(true, var_0.b.x == var_0.c, false, true)), !select(!vec4<bool>(var_0.d.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(true, var_1.x, false, false), true)));
    var_1 = !(!vec4<bool>(true, var_1.x, var_0.e >= -1028f, !var_1.x));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) - _wgslsmith_f_op_f32(-var_0.c));
    return _wgslsmith_f_op_f32(-1718f - _wgslsmith_f_op_f32(func_3(-1245f)));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.b.x, arg_0.d.b.x)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1282f, arg_0.d.e))))));
    let var_1 = firstLeadingBit(arg_0.c.a.x);
    var var_2 = max(_wgslsmith_sub_u32(var_1, var_1), arg_0.d.a.x);
    var_2 = arg_1;
    global0 = var_0.x;
    return -462f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1166f;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -1889f, 1726f, -1416f))), vec4<f32>(1460f, -1000f, 1668f, 356f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(735f, -769f, 193f, -264f), vec4<f32>(1382f, -1319f, 2202f, -768f), true))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1233f), _wgslsmith_f_op_f32(func_1(Struct_2(false, u_input.b.yxx, Struct_1(u_input.d.zy, vec3<f32>(-472f, 478f, -1194f), -1447f, vec2<bool>(false, false), -165f), Struct_1(u_input.d.yx, vec3<f32>(643f, 1192f, 1000f), -779f, vec2<bool>(false, true), -1046f), u_input.b.zxz), 4294967295u)), _wgslsmith_f_op_f32(trunc(1127f)), _wgslsmith_f_op_f32(422f * -1092f)), vec4<f32>(-1577f, _wgslsmith_div_f32(-1285f, -1000f), 738f, 2209f))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-559f)) + 1543f) * _wgslsmith_f_op_f32(-179f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) * _wgslsmith_f_op_f32(-360f * _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-953f)), _wgslsmith_f_op_f32(-1520f * var_0.x)))));
    global0 = var_0.x;
    let var_1 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false))), any(vec2<bool>(true, true)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))), select(vec4<bool>(false, true, true, any(vec2<bool>(false, false))), vec4<bool>(true, var_0.x > 227f, all(vec2<bool>(false, false)), all(vec3<bool>(false, false, false))), false & (u_input.a.x == u_input.d.x))), !vec4<bool>(any(vec4<bool>(true, true, true, true)), true, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))), !all(vec2<bool>(true, false))), vec4<bool>(!any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true)), !(any(vec4<bool>(true, true, false, true)) | true), !all(vec2<bool>(false, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b.x, 31867i, 1i), _wgslsmith_mult_i32(0i, ~countOneBits(firstLeadingBit(u_input.e.x))), ~4294967295u);
}

