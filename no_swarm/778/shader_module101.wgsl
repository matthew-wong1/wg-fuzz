struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(1u, 24668u, 1u, 19438u, 4294967295u, 15987u, 4294967295u, 33678u, 4798u, 2642u, 29367u, 1u, 45565u, 11816u, 1u, 4294967295u);

var<private> global1: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(-7468i, i32(-2147483648)), vec2<i32>(5551i, -1i), vec2<i32>(-1i, 5334i), vec2<i32>(8206i, -19636i), vec2<i32>(-5715i, -6646i), vec2<i32>(1i, -25067i), vec2<i32>(1i, -1i), vec2<i32>(1i, -6395i), vec2<i32>(1i, -1i), vec2<i32>(0i, -1i), vec2<i32>(-17363i, 2147483647i), vec2<i32>(-1i, 44702i), vec2<i32>(-21838i, -1293i), vec2<i32>(-22245i, i32(-2147483648)), vec2<i32>(-9104i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(-28212i, -17865i), vec2<i32>(-42712i, -7608i), vec2<i32>(-1i, -29104i), vec2<i32>(10865i, 2452i), vec2<i32>(1i, 1i), vec2<i32>(1i, 15695i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, 1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-1i, -32287i), vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), -45009i), vec2<i32>(0i, -45016i));

var<private> global2: Struct_2;

var<private> global3: f32 = -364f;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = !(!(arg_0 < _wgslsmith_f_op_f32(_wgslsmith_div_f32(-816f, -1681f) + _wgslsmith_f_op_f32(-global2.d.c.x))));
    let var_1 = u_input.a;
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, 262f, all(vec2<bool>(true, true))))), -168f, global2.c.d.x));
    let var_2 = Struct_2(global2.a, global2.c.d.x && true, global2.d, global2.d, ~(-u_input.b));
    let var_3 = var_2.d;
    return var_2;
}

fn func_3() -> bool {
    var var_0 = ~global2.d.a.x;
    return any(vec2<bool>(global2.d.d.x, false)) & true;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~arg_3.a, _wgslsmith_mult_vec3_u32(countOneBits(global2.c.b), _wgslsmith_mod_vec3_u32(global2.d.b, vec3<u32>(4294967295u, _wgslsmith_mod_u32(global2.d.b.x, 18205u), arg_0.d.b.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.c.x, _wgslsmith_f_op_f32(global2.c.c.x - _wgslsmith_f_op_f32(ceil(arg_3.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 552f))), vec3<f32>(_wgslsmith_f_op_f32(max(arg_3.c.x, _wgslsmith_f_op_f32(abs(global2.a.x)))), func_2(1612f, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.c.a.x, 74667u), arg_3.a.wz, vec2<u32>(1u, arg_0.d.a.x))).c.c.x, arg_0.c.c.x))), !select(arg_0.d.d, arg_3.d, vec4<bool>(global2.a.x > global2.a.x, global2.b, true, global2.d.d.x)));
    let var_1 = 25371i;
    let var_2 = _wgslsmith_mod_vec3_i32(abs(vec3<i32>(_wgslsmith_add_i32(-37643i | var_1, 16179i), select(max(34293i, -1i), _wgslsmith_mult_i32(-40651i, u_input.b), var_0.d.x), ~global2.e)), vec3<i32>(arg_0.e, _wgslsmith_clamp_i32(65312i, firstTrailingBit(1i), -1i & -arg_1.x), u_input.b));
    let var_3 = ~(_wgslsmith_sub_i32(-abs(global2.e), max(arg_1.x >> (14964u % 32u), ~arg_0.e)) >> (_wgslsmith_clamp_u32(57878u, 21037u, 5513u ^ ~global0[_wgslsmith_index_u32(91432u, 16u)]) % 32u));
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_0.a), true, func_2(919f, _wgslsmith_div_vec2_u32(abs(arg_2.a.zz), arg_2.b.zz)).c, Struct_1(_wgslsmith_add_vec4_u32(countOneBits(select(vec4<u32>(global0[_wgslsmith_index_u32(48211u, 16u)], arg_0.c.b.x, arg_3.a.x, global0[_wgslsmith_index_u32(arg_3.a.x, 16u)]), arg_2.a, var_0.d.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(global2.c.a, var_0.a), ~1u, max(0u, 4294967295u), global2.c.b.x)), vec3<u32>(_wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(var_0.b.x, 16u)]) << (~0u % 32u), ~(~0u), firstLeadingBit(10953u) ^ ~global0[_wgslsmith_index_u32(global2.d.a.x, 16u)]), arg_0.c.c, !(!vec4<bool>(false, global2.d.d.x, true, arg_2.d.x))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, var_3 << (_wgslsmith_sub_u32(1u, 0u) % 32u)), -29283i, -1i));
    return arg_3;
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>) -> f32 {
    let var_0 = func_2(-1699f, _wgslsmith_sub_vec2_u32(countOneBits(~(~arg_2.zx)), global2.c.b.xx));
    global1 = array<vec2<i32>, 30>();
    let var_1 = var_0;
    var var_2 = func_4(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-global2.a.x), global2.d.c.x, var_0.d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), all(!var_0.c.d.yyy), Struct_1(global2.c.a, _wgslsmith_mult_vec3_u32(var_1.d.a.xzy & arg_2.yxw, max(vec3<u32>(148u, var_0.d.b.x, var_0.c.a.x), var_1.d.b)), global2.c.c, vec4<bool>(var_0.b & true, !var_1.c.d.x, func_3(), var_0.b)), global2.c, -2147483647i), -arg_0.a, Struct_1(var_1.c.a, vec3<u32>(29871u, 4294967295u >> (1u % 32u), _wgslsmith_dot_vec2_u32(~global2.c.b.zz, var_0.c.a.yw & var_0.c.b.xz)), global2.a.yxw, vec4<bool>(true, any(vec4<bool>(var_1.c.d.x, false, var_0.b, false)), any(!var_1.d.d.wz), true)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * var_0.c.c.x), var_0.d.a.xx).d);
    var_2 = global2.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(vec4<f32>(932f, 458f, var_0.a.x, 1935f), false, var_1.c, Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(75113u, 16u)], 23755u, arg_2.x, 16218u), var_2.a.yxx, var_1.a.zwz, vec4<bool>(var_2.d.x, true, true, false)), var_0.e), vec2<i32>(var_0.e, arg_0.a.x), var_0.d, func_4(Struct_2(var_1.a, false, Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(95375u, 16u)], 1u, 18258u, 4294967295u), vec3<u32>(78853u, 82942u, 1u), vec3<f32>(-505f, 1000f, 716f), vec4<bool>(global2.c.d.x, false, true, true)), Struct_1(vec4<u32>(var_2.b.x, 7900u, 14358u, 9711u), vec3<u32>(var_2.b.x, var_2.b.x, 4294967295u), var_0.c.c, var_1.d.d), var_1.e), global1[_wgslsmith_index_u32(1u, 30u)], global2.d, var_1.c)).c.x + -877f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.d;
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1921f - _wgslsmith_f_op_f32(func_1(Struct_3(global1[_wgslsmith_index_u32(0u, 30u)]), global2.a.x, vec4<u32>(4294967295u, 9126u, 32828u, global2.c.a.x))))), _wgslsmith_div_f32(773f, _wgslsmith_f_op_f32(618f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * -1592f)))));
    global0 = array<u32, 16>();
    var var_1 = func_2(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(29653u, 2234u), global2.c.b.xx | global2.c.a.zx), vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(global2.c.b.x, 4441u, 50531u)) << (func_4(Struct_2(global2.a, var_0.d.x, global2.d, global2.d, global2.e), vec2<i32>(-51316i, u_input.b), global2.d, global2.d).b.x % 32u), global2.d.b.x >> (func_4(Struct_2(vec4<f32>(-262f, 235f, -922f, -824f), true, Struct_1(vec4<u32>(global2.c.b.x, 4294967295u, global2.c.b.x, var_0.b.x), vec3<u32>(14825u, var_0.a.x, 4340u), vec3<f32>(var_0.c.x, var_0.c.x, 376f), vec4<bool>(false, true, global2.d.d.x, var_0.d.x)), global2.c, global2.e), vec2<i32>(2147483647i, global2.e), global2.d, global2.d).b.x % 32u)))).a.yz;
    var var_2 = vec4<i32>(-select(global2.e, -21300i, false), 0i, global2.e, ~firstTrailingBit(global2.e) ^ _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b ^ u_input.b, -global2.e), _wgslsmith_mult_i32(global2.e, _wgslsmith_add_i32(u_input.b, u_input.b))));
    var var_3 = _wgslsmith_dot_vec2_u32(~min(~vec2<u32>(45211u, 4294967295u), func_2(_wgslsmith_f_op_f32(239f * var_0.c.x), var_0.a.zw).d.a.yw), _wgslsmith_div_vec2_u32(var_0.a.zw, ~vec2<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], var_0.b.x), _wgslsmith_mult_u32(var_0.a.x, 1u))));
    let var_4 = Struct_3(var_2.xw);
    var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-(~(-u_input.a)), -_wgslsmith_mod_i32(5609i >> (global0[_wgslsmith_index_u32(27689u, 16u)] % 32u), var_4.a.x | -2147483647i), -var_4.a.x & 2147483647i, u_input.b), ~(min(-vec4<i32>(2883i, global2.e, var_4.a.x, var_4.a.x), ~vec4<i32>(var_4.a.x, var_2.x, var_4.a.x, -1i)) | ~countOneBits(vec4<i32>(0i, -21671i, -1i, var_4.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(-210f, max(vec2<u32>(4294967295u, global2.c.b.x), vec2<u32>(var_0.b.x, 1u)) << (~vec2<u32>(global2.d.b.x, 44619u) % vec2<u32>(32u))).d.a.x);
}

