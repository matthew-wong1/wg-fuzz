struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<i32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(true, vec3<f32>(-1150f, -699f, -1127f), vec4<i32>(1i, -1i, -1i, -1231i), false, vec2<bool>(true, true));

var<private> global2: u32;

var<private> global3: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = select(vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_sub_i32(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.x, 1i, u_input.b, global1.c.x), vec4<i32>(u_input.b, -22228i, -2147483647i, global1.c.x))) < firstLeadingBit(~global1.c.x), any(global1.e), !global3.a), select(!vec3<bool>(!global1.a, true, global1.a | true), select(select(select(vec3<bool>(global1.e.x, global3.a, true), vec3<bool>(false, global3.d, true), vec3<bool>(global1.a, true, false)), vec3<bool>(global1.d, true, false), !vec3<bool>(global3.a, false, global3.a)), vec3<bool>(true, global1.d, global1.a), !any(vec3<bool>(true, true, global3.a))), true && any(!vec4<bool>(global3.d, global3.a, global3.e.x, false))));
    let var_1 = firstTrailingBit(-(~global1.c.zww)) >> (select(abs(min(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), ~vec3<u32>(4294967295u, 55590u, 7290u))), _wgslsmith_div_vec3_u32(~countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), abs(select(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), var_0))), true) % vec3<u32>(32u));
    global1 = Struct_1(!(select(false, !var_0.x, !global1.d) | global1.e.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2073f, 180f, 542f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, -298f, -591f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1928f, 479f, -285f), global1.b))))), _wgslsmith_add_vec4_i32(firstTrailingBit(firstTrailingBit(vec4<i32>(14947i, -2147483647i, 10041i, var_1.x))), global3.c), var_0.x, !(!select(global1.e, vec2<bool>(global3.e.x, true), global3.e)));
    var var_2 = false;
    let var_3 = Struct_4(Struct_3(-241f, select(vec4<bool>(global3.d && global1.d, true, false, false), !vec4<bool>(global1.d, global3.e.x, global1.a, var_0.x), false), ~4294967295u));
    return _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -450f))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) + global1.b.x);
    global2 = 6011u;
    let var_1 = vec3<bool>(any(!select(select(vec4<bool>(true, false, global1.d, global1.a), vec4<bool>(global1.a, global1.e.x, false, global1.d), global3.e.x), vec4<bool>(false, true, false, global1.d), select(vec4<bool>(false, global3.d, true, global3.e.x), vec4<bool>(false, false, false, global1.e.x), vec4<bool>(false, true, global3.d, global1.a)))), true, !global1.a);
    global3 = Struct_1(!global3.e.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1128f)) - _wgslsmith_f_op_f32(max(global3.b.x, -930f))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-896f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) + _wgslsmith_f_op_f32(var_0 + 1656f)))), ~vec4<i32>(37571i, max(global3.c.x, abs(-1i)), 1i, 1i >> (_wgslsmith_add_u32(arg_0.x, 36343u) % 32u)), false, global1.e);
    var var_2 = any(!var_1);
    return Struct_4(Struct_3(global1.b.x, !vec4<bool>(true, global1.d, true, global1.b.x == var_0), u_input.a.x));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> Struct_1 {
    global3 = Struct_1(global3.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.x, arg_2.a.a))), arg_1.a.a, -855f), _wgslsmith_div_vec4_i32(~arg_3.c.c, _wgslsmith_div_vec4_i32(vec4<i32>(-27950i, _wgslsmith_mod_i32(29977i, 1i), global3.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(33874i, u_input.b), vec2<i32>(u_input.b, global1.c.x))), vec4<i32>(global1.c.x << (0u % 32u), 14408i & u_input.b, 23287i, ~global3.c.x))), !func_2(~select(vec4<u32>(1u, arg_0, arg_1.a.c, arg_2.a.c), vec4<u32>(59136u, 19131u, 65252u, u_input.a.x), false)).a.b.x, !(!vec2<bool>(global3.b.x != -145f, 4294967295u >= arg_1.a.c)));
    var var_0 = global1.c.ywz;
    global0 = _wgslsmith_f_op_f32(trunc(func_2(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 33338u, arg_0, arg_1.a.c), vec4<u32>(arg_2.a.c, 4769u, arg_2.a.c, arg_2.a.c)))).a.a));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.b.x + _wgslsmith_f_op_f32(func_3())) + 1802f)));
    let var_1 = global3.c.wzy & arg_3.c.c.zyy;
    return Struct_1(arg_3.b.e.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-702f, 1031f))), -384f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b.x))))), vec4<i32>(_wgslsmith_div_i32(var_1.x ^ select(u_input.b, var_1.x, global1.e.x), reverseBits(-28507i) ^ global3.c.x), ~1i, ~arg_3.b.c.x, -2147483647i >> (~4294967295u % 32u)), all(arg_1.a.b.zxy), !global3.e);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> i32 {
    global1 = func_4(4294967295u, func_2(~select(~vec4<u32>(80447u, 24595u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 38681u, 4294967295u, u_input.a.x) ^ vec4<u32>(1u, 57277u, 58421u, 4294967295u), global3.e.x)), Struct_4(func_2(vec4<u32>(_wgslsmith_mult_u32(0u, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 130250u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), _wgslsmith_div_u32(4421u, 1285u), _wgslsmith_div_u32(u_input.a.x, 6692u))).a), Struct_2(vec3<bool>(false, global1.d, all(vec2<bool>(false, global1.a))), Struct_1(all(global1.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)), -global1.c, func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 20445u, u_input.a.x, u_input.a.x))).a.b.x, !(!vec2<bool>(global1.a, global3.e.x))), Struct_1(true, arg_0, global1.c, func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 53972u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x))).a.b.x, !vec2<bool>(global3.d, global3.a)), global3.c.x, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x * -344f))), _wgslsmith_div_f32(global1.b.x, -156f), -424f)));
    return -(u_input.b | global3.c.x) >> (u_input.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, global3.b, vec4<i32>(global1.c.x, _wgslsmith_dot_vec3_i32(~(~global3.c.wyx), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(global1.c.zwy, vec3<i32>(u_input.b, -1i, global3.c.x)), abs(global1.c.yww))), select(_wgslsmith_mod_i32(10943i, ~(-41982i)), func_1(vec3<f32>(-433f, -202f, 855f), global3.c.xz), ~u_input.b <= func_4(1u, Struct_4(Struct_3(758f, vec4<bool>(true, false, true, false), 4294967295u)), Struct_4(Struct_3(-492f, vec4<bool>(global1.a, false, global3.e.x, true), 30836u)), Struct_2(vec3<bool>(false, global1.d, global3.a), Struct_1(true, vec3<f32>(-1100f, global1.b.x, 622f), vec4<i32>(global3.c.x, -1i, global1.c.x, -967i), global3.d, vec2<bool>(global3.d, true)), Struct_1(false, global3.b, vec4<i32>(-1i, u_input.b, global1.c.x, 2147483647i), global3.d, vec2<bool>(true, global1.a)), u_input.b, vec3<f32>(global1.b.x, global1.b.x, -451f))).c.x), -reverseBits(reverseBits(2147483647i))), global1.a, vec2<bool>(global1.d, global1.a));
    var var_1 = vec3<bool>(true, true, var_0.d);
    var var_2 = var_0.c;
    let var_3 = var_0;
    global3 = func_4(44519u, Struct_4(func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 14355u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) ^ vec4<u32>(0u, 0u, 31429u, u_input.a.x))).a), func_2(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(11082u, 1u, 1990u, u_input.a.x)) | vec4<u32>(u_input.a.x, 9117u, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u), vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x)) | ~vec4<u32>(u_input.a.x, 0u, 49125u, 4294967295u))), Struct_2(!vec3<bool>(false, true, var_3.a), func_4(~1u, Struct_4(Struct_3(799f, vec4<bool>(false, global1.e.x, var_1.x, var_3.d), 2049u)), Struct_4(func_2(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)).a), Struct_2(!vec3<bool>(true, global3.e.x, true), Struct_1(global1.a, var_0.b, global3.c, var_0.a, vec2<bool>(true, true)), var_3, global1.c.x | 2147483647i, _wgslsmith_f_op_vec3_f32(-var_3.b))), Struct_1(true, vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(global3.b.x * 247f), _wgslsmith_f_op_f32(-var_3.b.x)), vec4<i32>(_wgslsmith_sub_i32(8861i, 0i), var_3.c.x, select(var_2.x, var_0.c.x, true), -33192i), !(var_1.x | var_0.d), var_1.xz), 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) + vec3<f32>(-316f, 1000f, var_3.b.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b) * vec3<f32>(1000f, var_3.b.x, var_3.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1088f * _wgslsmith_f_op_f32(-var_0.b.x)) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2580f))), -119f, _wgslsmith_f_op_f32(abs(global1.b.x))), ~_wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(global3.c, vec4<i32>(-2147483647i, -24680i, -14342i, u_input.b)), countOneBits(7211i)), 13609i & -(var_0.c.x ^ var_0.c.x), global1.b.x);
}

