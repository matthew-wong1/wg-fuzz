struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(200f, -471f), vec2<f32>(998f, 2485f), vec2<f32>(-128f, 541f), vec2<f32>(-836f, 942f), vec2<f32>(-223f, 199f), vec2<f32>(-974f, 867f), vec2<f32>(1142f, -217f), vec2<f32>(1385f, 397f), vec2<f32>(-431f, 170f), vec2<f32>(2104f, 1000f), vec2<f32>(-280f, -974f), vec2<f32>(-761f, -186f), vec2<f32>(-240f, -1018f), vec2<f32>(807f, 265f), vec2<f32>(-516f, 576f), vec2<f32>(-192f, 499f), vec2<f32>(-377f, -758f), vec2<f32>(281f, -366f), vec2<f32>(-532f, 673f), vec2<f32>(394f, 491f), vec2<f32>(-3023f, -1048f), vec2<f32>(447f, -973f), vec2<f32>(-2670f, -1535f), vec2<f32>(-1000f, 456f), vec2<f32>(-1266f, 983f), vec2<f32>(1202f, -1340f), vec2<f32>(3097f, 362f), vec2<f32>(-768f, 2688f));

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 4294967295u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    let var_0 = arg_0.c.ywx;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1073f, arg_0.a.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(623f, arg_0.a.x) * global1[_wgslsmith_index_u32(13436u, 28u)]))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.zz + arg_0.a.xx)));
    let var_3 = var_1.d.x;
    global2 = vec3<u32>(_wgslsmith_sub_u32(~(~arg_0.e.x), _wgslsmith_mult_u32(~(~1u), ~_wgslsmith_div_u32(global2.x, 4294967295u))), 44321u, firstTrailingBit(arg_0.e.x));
    return 0i;
}

fn func_2() -> Struct_1 {
    global2 = ~abs(vec3<u32>(abs(_wgslsmith_add_u32(44020u, 44570u)), 0u, ~(~48414u)));
    let var_0 = Struct_1(vec3<f32>(-515f, _wgslsmith_f_op_f32(max(334f, -299f)), -1193f), u_input.d.yy, firstTrailingBit(vec4<i32>(u_input.a, func_3(Struct_1(vec3<f32>(841f, -915f, -1000f), vec2<u32>(global2.x, 4294967295u), vec4<i32>(27712i, u_input.a, u_input.b.x, u_input.b.x), vec4<bool>(false, global0[_wgslsmith_index_u32(global2.x, 25u)], true, global0[_wgslsmith_index_u32(0u, 25u)]), vec2<u32>(66820u, global2.x)), vec2<i32>(2147483647i, 0i)), func_3(Struct_1(vec3<f32>(-389f, -1000f, -1269f), u_input.d.xy, vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, u_input.b.x), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(u_input.d.x, 25u)], true), global2.zy), vec2<i32>(18356i, 23946i)), u_input.c.x)), !(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], true, false, global0[_wgslsmith_index_u32(0u, 25u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(u_input.d.x, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(49709u, 25u)], true, true, false)), vec4<bool>(global0[_wgslsmith_index_u32(13423u, 25u)], false, true, true), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 25u)])))), ~(~vec2<u32>(global2.x, global2.x)) & ~(~vec2<u32>(49135u, u_input.d.x)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(-var_0.a))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(var_0.a, vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), false))))), var_0.d.zxx)), vec2<u32>(_wgslsmith_clamp_u32(~firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d.x, global2.x, global2.x, var_0.b.x), vec4<u32>(0u, 20327u, global2.x, var_0.e.x), global0[_wgslsmith_index_u32(u_input.d.x, 25u)]), ~vec4<u32>(7475u, 51251u, var_0.e.x, 5151u)), u_input.d.x), u_input.d.x), ~vec4<i32>(var_0.c.x, ~u_input.a, func_3(var_0, ~vec2<i32>(u_input.c.x, 2147483647i)), u_input.b.x), var_0.d, global2.xy);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<bool> {
    var var_0 = func_2();
    global0 = array<bool, 25>();
    global2 = select(u_input.d & countOneBits(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, u_input.d.x, arg_0.e.x)), min(u_input.d, vec3<u32>(arg_0.b.x, 20100u, global2.x)), u_input.d)), ~reverseBits(abs(vec3<u32>(arg_1.x, 4294967295u, arg_1.x))), any(var_0.d));
    let var_1 = 49227i;
    let var_2 = ~u_input.a;
    return arg_0.d.zz;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -571f;
    let var_1 = 0u;
    let var_2 = ~global2.yx ^ (~arg_1.e ^ vec2<u32>(~(~4294967295u), ~4294967295u));
    var var_3 = firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(var_2.x, var_2.x), u_input.d.x | global2.x, var_1, arg_1.b.x), abs(vec4<u32>(u_input.d.x, global2.x, 5434u, global2.x))), ~select(1u << (arg_1.b.x % 32u), var_2.x >> (var_1 % 32u), arg_0.x)));
    let var_4 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var var_0 = func_4(vec4<bool>(any(vec3<bool>(true, global0[_wgslsmith_index_u32(global2.x, 25u)], global0[_wgslsmith_index_u32(5202u, 25u)])), all(select(func_1(Struct_1(vec3<f32>(-311f, -1033f, 711f), vec2<u32>(4294967295u, 0u), vec4<i32>(-1i, -2147483647i, u_input.b.x, 15953i), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(global2.x, 25u)]), u_input.d.xy), u_input.d.xy), func_2().d.ww, vec2<bool>(true, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-462f, 494f)))) < -1000f, func_1(func_2(), ~vec2<u32>(44918u, 4294967295u)).x), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-244f, 1430f, 206f) + vec3<f32>(1162f, -1008f, -648f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-532f, -772f, -502f) + vec3<f32>(-1204f, 1559f, 1262f)))), _wgslsmith_mod_i32(u_input.c.x, u_input.b.x) >= _wgslsmith_clamp_i32(u_input.a, u_input.c.x, 17084i))), vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.d, u_input.d), 4294967295u), vec4<i32>(min(2744i, 1i), -(u_input.c.x << (1u % 32u)), -1i, -u_input.c.x), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 25u)], global0[_wgslsmith_index_u32(126383u, 25u)], true, global0[_wgslsmith_index_u32(u_input.d.x, 25u)])), select(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(1684u, 25u)], false), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d.x, 25u)], global0[_wgslsmith_index_u32(8112u, 25u)]), any(vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 25u)], false))), !(!global0[_wgslsmith_index_u32(global2.x, 25u)])), select(abs(_wgslsmith_add_vec2_u32(u_input.d.xy, u_input.d.yy)), select(u_input.d.xx, vec2<u32>(global2.x, 31677u), global0[_wgslsmith_index_u32(61792u, 25u)]) | vec2<u32>(global2.x, u_input.d.x), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], global0[_wgslsmith_index_u32(global2.x, 25u)]))));
    let var_1 = func_1(func_4(select(func_4(func_4(vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 25u)], var_0.d.x, false, false), Struct_1(vec3<f32>(var_0.a.x, -518f, -1000f), vec2<u32>(global2.x, 1u), var_0.c, vec4<bool>(false, var_0.d.x, var_0.d.x, global0[_wgslsmith_index_u32(1u, 25u)]), vec2<u32>(global2.x, 0u))).d, Struct_1(var_0.a, global2.zz, vec4<i32>(var_0.c.x, 18200i, 1i, u_input.b.x), var_0.d, var_0.e)).d, vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, var_0.b.x), 25u)], var_0.b.x > global2.x, false, all(var_0.d.xx)), true), Struct_1(var_0.a, min(vec2<u32>(var_0.e.x, global2.x), u_input.d.xz), vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.b.x) & var_0.c, !vec4<bool>(true, true, var_0.d.x, true), _wgslsmith_sub_vec2_u32(u_input.d.zz, select(vec2<u32>(var_0.e.x, global2.x), global2.zx, false)))), u_input.d.yz).x;
    global0 = array<bool, 25>();
    var_0 = func_4(vec4<bool>(true, !((var_1 && var_0.d.x) || true), all(!func_2().d), false), Struct_1(func_4(var_0.d, func_4(!var_0.d, Struct_1(var_0.a, global2.yy, var_0.c, var_0.d, var_0.e))).a, _wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.d.x, var_0.b.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(348u, 15847u) >> (global2.zz % vec2<u32>(32u)), var_0.e)), _wgslsmith_add_vec4_i32(var_0.c | vec4<i32>(u_input.b.x, var_0.c.x, u_input.c.x, u_input.c.x), ~vec4<i32>(1i, var_0.c.x, -22874i, u_input.b.x)) | select(var_0.c, vec4<i32>(u_input.c.x, -1i, u_input.a, u_input.b.x), var_0.c.x >= 2147483647i), !vec4<bool>(global0[_wgslsmith_index_u32(~var_0.e.x, 25u)], true, false, !var_1), reverseBits(~u_input.d.yz)));
    var var_2 = func_2().a.x;
    let var_3 = _wgslsmith_mult_i32(u_input.a, ~abs(u_input.b.x));
    var var_4 = Struct_1(var_0.a, abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 1u) | global2.yx, var_0.e)), -(vec4<i32>(-1i) * -var_0.c), func_4(!(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(6578u, 25u)], true, var_1))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(435f, var_0.a.x, var_0.a.x)), u_input.d.xy, vec4<i32>(-1i) * -var_0.c, vec4<bool>(!global0[_wgslsmith_index_u32(30401u, 25u)], select(var_1, true, global0[_wgslsmith_index_u32(u_input.d.x, 25u)]), !global0[_wgslsmith_index_u32(global2.x, 25u)], true), vec2<u32>(~0u, 0u & global2.x))).d, abs(~global2.yy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-695f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)))))), firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d >> (vec3<u32>(0u, 57484u, global2.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.e.x, var_4.b.x, global2.x), vec3<u32>(25u, 4294967295u, global2.x))), var_0.e.x, 1u)));
}

