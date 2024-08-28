struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(true, true, false, false, true, false, false, true, true, true, false, false, false, true, false, true, true, true, true, true, true, true, false, true, false, false, true, true, true);

var<private> global1: vec2<u32>;

var<private> global2: Struct_1;

var<private> global3: f32 = 724f;

var<private> global4: bool = false;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = arg_0;
    var var_1 = false;
    global2 = var_0.b;
    let var_2 = !vec3<bool>(any(var_0.b.c.wz), global2.c.x, true);
    global1 = min(u_input.b.xy, arg_0.a) ^ ~select(min(~vec2<u32>(u_input.b.x, 84251u), select(vec2<u32>(18169u, 0u), u_input.b.xz, false)), arg_0.a, select(!var_2.zy, arg_0.b.c.zz, true || var_2.x));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) - arg_0.b.e))), -702f, _wgslsmith_div_f32(arg_0.d, var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.e, var_0.b.e)) * _wgslsmith_f_op_f32(-1396f * _wgslsmith_div_f32(global2.e, arg_0.d))) - 101f));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1608f, global2.e, global2.e, -734f), vec4<f32>(arg_1.e, global2.e, global2.e, global2.e))), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<u32>(arg_0, u_input.b.x), arg_1, global0[_wgslsmith_index_u32(1u, 29u)], -249f)))))))));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e) + _wgslsmith_f_op_f32(-1460f + 1876f)), 199f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - arg_1.e)))), arg_1.e);
    global1 = _wgslsmith_add_vec2_u32(u_input.b.yz, u_input.b.zx);
    let var_2 = !global2.c;
    let var_3 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_1.x * 1242f));
    return Struct_2(vec2<u32>(0u, global1.x), arg_1, !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, reverseBits(~global1.x)), 29u)], var_1.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1046f * -1047f)));
    global4 = !(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(u_input.a.x, u_input.a.x, arg_1.b.b, u_input.a.x)), vec4<i32>(-2147483647i, ~arg_0.b.a.x, ~arg_1.b.d, -1i)) <= -4405i);
    var var_0 = ((~reverseBits(arg_0.b.d) & (i32(-1i) * -arg_1.b.d)) > _wgslsmith_dot_vec3_i32(~(-global2.a), global2.a)) | arg_0.b.c.x;
    var var_1 = Struct_1(arg_1.b.a, _wgslsmith_mod_i32(arg_0.b.d, -(~abs(arg_0.b.d))), select(vec4<bool>(~global1.x >= arg_0.a.x, arg_0.b.c.x, all(global2.c), arg_0.c), func_2(~arg_0.a.x & global1.x, arg_1.b).b.c, !vec4<bool>(!global2.c.x, arg_1.b.c.x, true, all(global2.c))), _wgslsmith_dot_vec2_i32(vec2<i32>(-8318i, _wgslsmith_sub_i32(arg_1.b.b, 1i)), ~(arg_0.b.a.yx >> (vec2<u32>(global1.x, arg_0.a.x) % vec2<u32>(32u)))) | max(min(0i, 18635i), ~u_input.a.x), arg_1.b.e);
    var var_2 = min(~vec4<i32>(_wgslsmith_mod_i32(arg_1.b.a.x & global2.d, var_1.a.x & -2147483647i), u_input.a.x ^ ~global2.d, ~2147483647i, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(1886i, var_1.a.x, 0i, ~0i), ~vec4<i32>(-2147483647i, -u_input.a.x, -2147483647i, u_input.a.x)));
    return Struct_1(~_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_2.x, 59046i), var_1.a) & -u_input.a, -(~vec3<i32>(var_1.b, var_2.x, -1i))), var_1.a.x, vec4<bool>(global2.b < _wgslsmith_clamp_i32(19151i, min(43287i, -14724i), 17494i), any(!select(global2.c.yy, vec2<bool>(arg_1.b.c.x, false), global0[_wgslsmith_index_u32(0u, 29u)])), all(!vec4<bool>(arg_0.c, global2.c.x, true, global2.c.x)) && true, var_1.c.x), 1i, -810f);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec4<u32>, arg_3: bool) -> f32 {
    let var_0 = global2.c;
    var var_1 = func_4(func_2(~1u, Struct_1(_wgslsmith_add_vec3_i32(u_input.a >> (vec3<u32>(99345u, global1.x, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(2550i, u_input.a.x, 0i), vec3<i32>(-1i, global2.d, u_input.a.x))), u_input.a.x, global2.c, 1i, _wgslsmith_f_op_f32(sign(arg_0)))), Struct_2(~_wgslsmith_mod_vec2_u32(u_input.b.yz, vec2<u32>(4673u, 4294967295u)) & func_2(~global1.x, Struct_1(u_input.a, u_input.a.x, global2.c, global2.d, 867f)).a, func_2(countOneBits(~arg_2.x), func_2(1u, Struct_1(vec3<i32>(-72709i, global2.d, 15260i), 0i, vec4<bool>(false, false, true, var_0.x), 1i, 403f)).b).b, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b.x, _wgslsmith_add_u32(63860u & u_input.b.x, ~6069u)), 29u)], -1114f));
    global3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e) + 1460f)))), arg_0));
    var_1 = func_4(func_2(~0u, Struct_1(global2.a, 20627i, !(!global2.c), -(var_1.d ^ u_input.a.x), -240f)), func_2(~global1.x, func_2(~(~1u), func_4(func_2(1u, Struct_1(u_input.a, -1i, vec4<bool>(false, arg_3, var_1.c.x, global2.c.x), 59191i, 1387f)), func_2(20671u, Struct_1(vec3<i32>(u_input.a.x, var_1.d, global2.a.x), u_input.a.x, global2.c, u_input.a.x, var_1.e)))).b));
    var var_2 = select(abs(-vec4<i32>(func_4(Struct_2(u_input.b.xy, Struct_1(u_input.a, u_input.a.x, vec4<bool>(true, true, true, false), -27704i, arg_0), true, global2.e), Struct_2(arg_2.yz, Struct_1(global2.a, 1i, vec4<bool>(false, global2.c.x, arg_1, false), global2.a.x, global2.e), global0[_wgslsmith_index_u32(1u, 29u)], 161f)).b, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.d, global2.d, global2.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -17364i, 0i, var_1.d)), ~(-18603i))), -(~_wgslsmith_div_vec4_i32(~vec4<i32>(0i, 68881i, 1i, 19012i), _wgslsmith_div_vec4_i32(vec4<i32>(-3604i, global2.d, u_input.a.x, global2.b), vec4<i32>(global2.a.x, -3563i, -17328i, 23389i)))), vec4<bool>(true, arg_3, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -1806f))) != var_1.e, any(!vec2<bool>(global2.c.x, false))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e));
}

fn func_5(arg_0: vec4<f32>, arg_1: f32) -> Struct_2 {
    var var_0 = func_2(~30474u, Struct_1(-vec3<i32>(2147483647i << (global1.x % 32u), abs(u_input.a.x), select(2147483647i, u_input.a.x, true)), 2147483647i, !vec4<bool>(global2.c.x || global0[_wgslsmith_index_u32(u_input.b.x, 29u)], true, true, arg_0.x < 831f), func_2(18269u, Struct_1(firstLeadingBit(vec3<i32>(7867i, u_input.a.x, global2.d)), -2147483647i, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], false, global2.c.x), global2.a.x, _wgslsmith_f_op_f32(trunc(global2.e)))).b.a.x, _wgslsmith_f_op_f32(-arg_1))).d;
    var var_1 = Struct_1(-vec3<i32>(-27615i, _wgslsmith_mult_i32(func_4(Struct_2(u_input.b.yy, Struct_1(global2.a, 26386i, vec4<bool>(false, global2.c.x, global2.c.x, global2.c.x), global2.d, global2.e), global0[_wgslsmith_index_u32(u_input.b.x, 29u)], arg_0.x), Struct_2(u_input.b.zx, Struct_1(vec3<i32>(u_input.a.x, -30782i, u_input.a.x), global2.a.x, vec4<bool>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], global2.c.x, global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), u_input.a.x, global2.e), false, 957f)).d, global2.d), ~28621i & u_input.a.x), 35275i, global2.c, ~_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mod_i32(0i, func_4(Struct_2(u_input.b.yy, Struct_1(u_input.a, -21804i, vec4<bool>(false, true, global0[_wgslsmith_index_u32(49869u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]), 2147483647i, -491f), global2.c.x, -1644f), Struct_2(u_input.b.zx, Struct_1(u_input.a, u_input.a.x, vec4<bool>(true, true, false, global2.c.x), global2.a.x, -1949f), false, global2.e)).d)), _wgslsmith_f_op_f32(-arg_1));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -811f))) - var_1.e);
    global1 = abs(abs(~(~u_input.b.zz))) << (~(~abs(~u_input.b.zx)) % vec2<u32>(32u));
    var var_3 = _wgslsmith_mult_vec4_i32((_wgslsmith_div_vec4_i32(vec4<i32>(global2.a.x, 8074i, 2147483647i, u_input.a.x), abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 15773i))) << ((vec4<u32>(u_input.b.x, global1.x, u_input.b.x, u_input.b.x) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 67782u, global1.x, u_input.b.x), vec4<u32>(53219u, 0u, global1.x, 1u))) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_1.b, u_input.a.x, 0i, var_1.d), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, var_1.b), u_input.a.yz), global2.d, -1i, firstTrailingBit(u_input.a.x)), vec4<i32>(-21644i, u_input.a.x, -26478i, -var_1.b)), vec4<i32>(-2147483647i, _wgslsmith_sub_i32(var_1.a.x, var_1.d), -1i, _wgslsmith_dot_vec2_i32(global2.a.xy, _wgslsmith_sub_vec2_i32(global2.a.zx, vec2<i32>(-2147483647i, u_input.a.x)))) | -vec4<i32>(global2.d, var_1.a.x, 1694i, global2.d));
    return func_2(76592u, func_4(func_2(abs(26465u), func_2(global1.x, Struct_1(u_input.a, var_1.a.x, var_1.c, global2.b, arg_0.x)).b), func_2(~1u, func_2(1u, func_2(global1.x, Struct_1(var_3.xzx, 12495i, global2.c, u_input.a.x, arg_0.x)).b).b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(global2.e, global2.c.x, vec4<u32>(53559u, 95267u, 0u, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), !global2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<u32>(23532u, global1.x), Struct_1(u_input.a, u_input.a.x, vec4<bool>(false, false, global2.c.x, false), u_input.a.x, global2.e), false, 100f))).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e) * 1214f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-748f * 589f), -646f)) + _wgslsmith_f_op_vec4_f32(func_3(func_2(17000u, Struct_1(vec3<i32>(u_input.a.x, 0i, global2.d), 1i, global2.c, -69i, global2.e))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(520f + -819f) - global2.e));
    global1 = abs(~u_input.b.xy);
    let var_1 = func_4(func_2(0u << ((~global1.x >> (11786u % 32u)) % 32u), var_0.b), Struct_2(vec2<u32>(countOneBits(func_2(u_input.b.x, var_0.b).a.x), _wgslsmith_mult_u32(~var_0.a.x, ~global1.x)), Struct_1(-u_input.a, global2.b, func_5(vec4<f32>(var_0.b.e, var_0.d, var_0.d, -949f), _wgslsmith_f_op_f32(-global2.e)).b.c, abs(func_5(vec4<f32>(global2.e, global2.e, var_0.b.e, -187f), global2.e).b.d), var_0.d), var_0.b.c.x, _wgslsmith_f_op_f32(f32(-1f) * -200f)));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.e + global2.e))))));
    global0 = array<bool, 29>();
    global3 = 1000f;
    let var_3 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(435f, var_0.b.e, global2.e, var_0.d)))), var_0.b.e);
    let var_4 = ~(~(~(func_5(vec4<f32>(var_0.b.e, -1000f, 774f, -2036f), global2.e).a.x << (max(4294967295u, 32094u) % 32u))));
    var var_5 = vec4<bool>(true && select(var_0.c, var_3.b.e == var_3.d, true), func_5(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-850f, func_5(vec4<f32>(1111f, global2.e, var_1.e, -1622f), 990f).d, _wgslsmith_f_op_f32(select(global2.e, -1464f, var_0.b.c.x)), var_2))), var_2).c, global2.c.x, !func_5(vec4<f32>(-1018f, var_0.d, -831f, -1276f), var_1.e).b.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_1.a.x), 5456u);
}

