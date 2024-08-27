struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<i32>;

var<private> global2: array<f32, 29>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    global2 = array<f32, 29>();
    global2 = array<f32, 29>();
    let var_0 = arg_1;
    var var_1 = -15337i ^ _wgslsmith_mult_i32(_wgslsmith_mod_i32(max(-2147483647i, 23567i) ^ _wgslsmith_add_i32(18080i, global1.x), var_0.e.x), -7399i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b + 768f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 29u)] * 887f))) + 1f) - arg_1.b) + global0.b);
    return !(countOneBits(abs(firstLeadingBit(var_0.e.x))) < firstTrailingBit(-1i));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = vec3<i32>(~arg_1, 36800i, -1i);
    var var_1 = _wgslsmith_mult_vec2_i32(abs(~(~_wgslsmith_add_vec2_i32(arg_0.e, var_0.yy))), vec2<i32>(var_0.x, ~_wgslsmith_dot_vec2_i32(global0.e, var_0.yz)));
    let var_2 = Struct_1(arg_0.a, -202f, false, vec4<bool>(false, func_3(Struct_1(4294967295u, _wgslsmith_f_op_f32(step(global0.b, global0.b)), !arg_0.c, vec4<bool>(arg_0.c, false, true, true), firstTrailingBit(global1.xz)), Struct_1(1u, _wgslsmith_f_op_f32(global0.b + 649f), arg_0.d.x, arg_0.d, _wgslsmith_mod_vec2_i32(var_0.yz, vec2<i32>(arg_1, -2147483647i))), var_0.x), global0.d.x, any(arg_0.d)), firstLeadingBit(reverseBits(-vec2<i32>(-39468i, 8473i)) >> ((firstLeadingBit(vec2<u32>(4294967295u, 46429u)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, arg_0.a), u_input.c.zy) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_3 = ((_wgslsmith_mult_u32(1u, u_input.c.x) != ~(~43674u)) || var_2.c) & !(!(~1i >= ~var_0.x));
    var_1 = abs(~global0.e);
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1.d.xw;
    global1 = -vec4<i32>(_wgslsmith_mult_i32(abs(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(9674i, -2147483647i, 44999i, global1.x), abs(vec4<i32>(1i, -35474i, 1i, global0.e.x)))), -(arg_0.e.x << (reverseBits(0u) % 32u)), arg_1.e.x, arg_1.e.x);
    var var_1 = global0.e.x;
    let var_2 = select(!(!arg_1.d), select(global0.d, vec4<bool>(false, arg_1.d.x, !(!global0.d.x), var_0.x), !vec4<bool>(-5892i > global0.e.x, all(arg_1.d.yzx), global1.x < global1.x, -39343i == global0.e.x)), !vec4<bool>(495f < arg_0.b, true, func_3(arg_1, arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -29236i, -48482i, global0.e.x), vec4<i32>(1i, u_input.a, global1.x, arg_1.e.x))), global0.c));
    var var_3 = func_2(Struct_1(0u, 285f, arg_1.b >= _wgslsmith_f_op_f32(abs(arg_0.b)), vec4<bool>(true, arg_1.c, !arg_1.d.x, arg_0.c), abs(global1.wx)), -2147483647i);
    return global1.x;
}

fn func_1() -> Struct_1 {
    let var_0 = ~(~select(global0.e, global1.ww, vec2<bool>(true, true))) | vec2<i32>(-(firstLeadingBit(global0.e.x) << (u_input.b % 32u)), 1i);
    global2 = array<f32, 29>();
    global1 = firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-select(vec4<i32>(-24204i, 12154i, var_0.x, -2147483647i), vec4<i32>(global1.x, -1i, -47016i, global1.x), true), ~(~vec4<i32>(global0.e.x, global1.x, global0.e.x, var_0.x))), vec4<i32>(func_4(func_2(Struct_1(4294967295u, global0.b, global0.d.x, vec4<bool>(false, true, global0.d.x, global0.c), vec2<i32>(global1.x, 52684i)), 1i), func_2(Struct_1(global0.a, global0.b, false, global0.d, vec2<i32>(global1.x, var_0.x)), var_0.x)), reverseBits(_wgslsmith_dot_vec2_i32(global0.e, vec2<i32>(u_input.a, -34276i))), firstTrailingBit(1i), firstTrailingBit(1i))));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(796f, _wgslsmith_div_f32(1000f, 2094f)))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(trunc(-437f)), -205f))))));
    var var_2 = func_2(func_2(func_2(Struct_1(func_2(Struct_1(global0.a, 1000f, global0.d.x, vec4<bool>(global0.d.x, false, global0.d.x, global0.d.x), global1.zz), 1i).a, -1000f, global0.c, global0.d, _wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-37725i, 42237i))), 5735i), ~(~global1.x)), i32(-1i) * -(~(-52684i)));
    return Struct_1(_wgslsmith_clamp_u32(var_2.a, 1u, _wgslsmith_clamp_u32(var_2.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.c.x), vec3<u32>(4294967295u, 0u, var_2.a) >> (vec3<u32>(1u, 25650u, 1u) % vec3<u32>(32u))), ~(~32294u))), var_1.x, true, var_2.d, ~min(-var_2.e, countOneBits(firstTrailingBit(global1.wy))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = true;
    global0 = func_1();
    let var_1 = ~(countOneBits(vec3<u32>(~global0.a, 1u, 427u)) & u_input.c);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, false, true, global0.c);
    global1 = vec4<i32>(0i, -firstLeadingBit(global1.x) >> (0u % 32u), i32(-1i) * -(_wgslsmith_mod_i32(9793i, global0.e.x) ^ (-1i >> (u_input.c.x % 32u))), abs(2147483647i));
    var var_1 = func_5(func_1(), Struct_1(_wgslsmith_div_u32(~1u, 1u | global0.a) << (_wgslsmith_mod_u32(~global0.a, reverseBits(1u)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b * global2[_wgslsmith_index_u32(u_input.b, 29u)]), _wgslsmith_f_op_f32(-1580f * global0.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(182f, 504f)))), var_0.x, global0.d, _wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(global0.e.x), ~u_input.a), vec2<i32>(u_input.a, _wgslsmith_add_i32(26340i, 9790i)))));
    let var_2 = Struct_1(_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.zx, u_input.c.yx), vec2<u32>(var_1.a, global0.a)) ^ abs(u_input.b)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(var_1.a, var_1.a) & global0.a), 29u)], 184f), !(!(!(var_0.x & var_0.x))), !(!vec4<bool>(var_1.b >= global2[_wgslsmith_index_u32(global0.a, 29u)], var_0.x & var_1.c, false, true)), vec2<i32>(-(var_1.e.x & -69242i), 1i));
    var var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-func_2(Struct_1(1u, global0.b, false, vec4<bool>(true, true, var_2.d.x, true), global1.zz), _wgslsmith_add_i32(u_input.a, 13247i)).b), _wgslsmith_f_op_f32(1612f * global2[_wgslsmith_index_u32(0u, 29u)]), -327f), _wgslsmith_add_vec3_i32(countOneBits(-abs(global1.www)), (-vec3<i32>(-1i, u_input.a, var_2.e.x) ^ (global1.zzx ^ vec3<i32>(global1.x, var_2.e.x, -1i))) >> (~vec3<u32>(71728u, var_2.a, u_input.c.x) % vec3<u32>(32u))), -1104f);
}

