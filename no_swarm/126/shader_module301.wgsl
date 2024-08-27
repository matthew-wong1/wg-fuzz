struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(1969f, 284f, -642f, 441f, 735f, 1310f, -285f, 962f, -1432f, -2708f, -667f, 182f, 580f);

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(true, vec2<i32>(-30530i, 1i), vec3<f32>(1000f, 1591f, 1088f), 1u, 20790i), Struct_1(false, vec2<i32>(-21951i, -100716i), vec3<f32>(1246f, 1001f, 360f), 9914u, -1i), Struct_1(false, vec2<i32>(53938i, 15181i), vec3<f32>(199f, -1260f, 1000f), 4294967295u, 1i), Struct_1(true, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<f32>(599f, 569f, 232f), 1415u, 0i), Struct_1(true, vec2<i32>(0i, -64466i), vec3<f32>(-733f, 773f, -257f), 61326u, i32(-2147483648)), Struct_1(true, vec2<i32>(-1i, 2147483647i), vec3<f32>(-1301f, -111f, -1467f), 0u, 1i), Struct_1(true, vec2<i32>(i32(-2147483648), 14745i), vec3<f32>(1476f, 1341f, 580f), 4294967295u, 68902i), Struct_1(true, vec2<i32>(1i, 0i), vec3<f32>(850f, 1000f, 694f), 0u, 66499i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(max(1958u, abs(2421u ^ (_wgslsmith_mult_u32(6774u, 1u) ^ u_input.a.x))), 8u)];
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-991f - _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 13u)] + 469f)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-128f * -1066f)), -484f);
    return _wgslsmith_f_op_f32(f32(-1f) * -1389f);
}

fn func_2(arg_0: vec4<i32>) -> vec3<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1286f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1263f);
    global1 = array<Struct_1, 8>();
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-443f)) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1031f))), var_0.x));
    var var_2 = Struct_1(false & (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(min(var_0.x, -286f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) * 1000f)), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, 84907i, arg_0.x), vec4<i32>(0i, 22287i, 27858i, -563i)), arg_0.x), 2147483647i) | vec2<i32>(arg_0.x, min(~2147483647i, arg_0.x << (114742u % 32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(abs(u_input.a.x), 13u)], var_1.a, -561f)), 7814u ^ _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(0u, 22508u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 24149u, u_input.a.x))), -29680i);
    let var_3 = all(vec2<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(var_2.a, var_2.a), var_2.a), select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(true, var_2.a), var_2.a), select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(true, true), var_2.a))), var_2.a));
    return vec3<u32>(1u & _wgslsmith_dot_vec2_u32(select(u_input.a.zw, vec2<u32>(0u, var_2.d), var_2.a), vec2<u32>(~15037u, u_input.a.x)), _wgslsmith_add_u32(var_2.d, 1699u), 0u);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_3(Struct_2(1844f), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-40779i, 8651i) << (u_input.a.xw % vec2<u32>(32u))), 1i), vec4<bool>(false, true, all(vec2<bool>(true, true)) & any(vec2<bool>(false, true)), true), ~(-_wgslsmith_div_vec4_i32(vec4<i32>(10908i, -42187i, 53528i, 46789i), vec4<i32>(-4280i, 1940i, -13875i, 1i)) >> (select(vec4<u32>(arg_0.x, u_input.a.x, 17386u, arg_0.x) >> (vec4<u32>(arg_0.x, 4294967295u, 6908u, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(arg_0.x, arg_0.x, u_input.a.x, arg_0.x), vec4<bool>(false, true, false, false)) % vec4<u32>(32u))), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)))), !(!all(vec3<bool>(true, true, true)))));
    var_0 = Struct_3(var_0.a, -3785i, select(var_0.c, vec4<bool>(false, true, true, (var_0.c.x || false) || all(var_0.c.xw)), select(vec4<bool>(true, true, true, var_0.c.x), select(var_0.c, var_0.c, false), var_0.c)), ~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_0.b, var_0.b, var_0.b), var_0.d), var_0.d ^ vec4<i32>(var_0.d.x, 7347i, var_0.b, var_0.b)), vec4<i32>(_wgslsmith_mult_i32(var_0.b, -1i), var_0.d.x << (1u % 32u), 9313i, -var_0.d.x)), vec2<bool>(any(var_0.c.zz), !var_0.c.x));
    let var_1 = vec4<u32>(~39271u, _wgslsmith_dot_vec3_u32(arg_0, arg_0), ~u_input.a.x, 9696u) ^ ~vec4<u32>(abs(~4294967295u), abs(4294967295u), ~0u, 67713u);
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-325f, arg_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -1304f))) - -266f)), _wgslsmith_add_i32(~var_0.d.x, 15952i), vec4<bool>(!all(!vec2<bool>(var_0.c.x, var_0.c.x)), all(var_0.c), _wgslsmith_div_i32(firstLeadingBit(3781i), var_0.d.x) >= var_0.d.x, all(!var_0.c)), vec4<i32>(2147483647i, ~var_0.b, var_0.d.x, ~(-1i)), vec2<bool>(false, any(var_0.c)));
    var var_2 = -1i;
    return 1i;
}

fn func_1(arg_0: i32) -> vec3<i32> {
    let var_0 = vec4<i32>(arg_0, -arg_0, 2147483647i, func_4(func_2(vec4<i32>(arg_0, arg_0, arg_0, arg_0)) << (u_input.a.zzx % vec3<u32>(32u)), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 16662u), vec2<u32>(0u, u_input.a.x)), 13u)])) >> (~(~select(20130u, 58248u, false)) % 32u));
    let var_1 = Struct_1(true, countOneBits(min(_wgslsmith_add_vec2_i32(var_0.xw, var_0.yw) & -var_0.wz, vec2<i32>(-1i) * -vec2<i32>(var_0.x, -28887i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(237f, 1280f, -169f)))))), (4294967295u & u_input.a.x) >> (4294967295u % 32u), 1i);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(select(var_1.d, var_1.d, var_1.a) ^ u_input.a.x), 13u)] * 663f));
    let var_3 = !var_1.a;
    return var_0.wxz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<i32>((firstTrailingBit(-30744i) >> (u_input.a.x % 32u)) & (~(-41854i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-2147483647i, 32597i))), -1i, ~firstLeadingBit(-30277i)), select(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(39863i, 24444i, 19093i), vec3<i32>(-15474i, -42714i, 2147483647i), vec3<i32>(-19105i, 12656i, 0i)), ~vec3<i32>(-2147483647i, 30035i, 2147483647i)), -(~vec3<i32>(49578i, 72592i, -15619i)), any(vec4<bool>(true, true, true, true))) | select(-_wgslsmith_add_vec3_i32(vec3<i32>(23890i, 1i, -3377i), vec3<i32>(-1i, 17953i, 4312i)), select(abs(vec3<i32>(0i, -1i, 1i)), func_1(1i), any(vec2<bool>(true, true))), vec3<bool>(true, true, true)), vec3<bool>(true, true, false));
    global0 = array<f32, 13>();
    let var_1 = vec3<i32>(-1i) * -vec3<i32>(25552i, var_0.x, _wgslsmith_mult_i32(-1i, -18305i));
    let x = u_input.a;
    s_output = StorageBuffer(~(~20489u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, _wgslsmith_div_u32(4079u, u_input.a.x), 38131u), vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x) << (select(u_input.a, u_input.a, true) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), abs(u_input.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-318f, global0[_wgslsmith_index_u32(24087u, 13u)]) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]) * vec2<f32>(-317f, -1000f)), all(vec3<bool>(true, false, true)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-419f, 1000f) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 660f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(24944u, 13u)]))))), vec2<u32>(~_wgslsmith_add_u32(0u, ~u_input.a.x), abs(~15380u)));
}

