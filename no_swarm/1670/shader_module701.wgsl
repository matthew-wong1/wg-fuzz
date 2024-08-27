struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
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

var<private> global0: array<u32, 2>;

var<private> global1: array<vec3<i32>, 5>;

var<private> global2: Struct_4;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_4, arg_3: u32) -> vec2<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d.c.x, arg_2.d.c.x)), select(arg_2.b, select(!vec4<bool>(false, true, true, arg_2.c.x), vec4<bool>(all(vec2<bool>(true, arg_2.c.x)), arg_2.c.x, arg_2.b.x & true, true), arg_2.b), arg_2.b.x), arg_2.b.zwz, global2.d);
    var var_1 = var_0.d.c;
    global1 = array<vec3<i32>, 5>();
    global0 = array<u32, 2>();
    var var_2 = Struct_1(vec4<u32>(arg_3, 32647u, _wgslsmith_mult_u32(arg_3, ~0u), 0u), ~(-46066i));
    return global2.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_4) -> Struct_4 {
    var var_0 = Struct_4(global2.d.c.zx, arg_3.b, vec3<bool>(true, !global2.b.x, u_input.c <= 1u), arg_3.d);
    var var_1 = arg_3;
    var_0 = arg_3;
    var var_2 = vec3<bool>(true & any(vec4<bool>(!var_0.b.x, true, true, true)), false, (global2.d.b.a.x ^ 2563u) >= ~(global0[_wgslsmith_index_u32(10565u, 2u)] ^ ~arg_3.d.b.a.x));
    let var_3 = global0[_wgslsmith_index_u32(1u, 2u)] > _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_1.d.b.a.x, u_input.c, 63807u), ~(~vec3<u32>(var_0.d.b.a.x, 4294967295u, var_0.d.b.a.x))), vec3<u32>(arg_1, _wgslsmith_mod_u32(~var_0.d.b.a.x, min(var_1.d.b.a.x, global0[_wgslsmith_index_u32(4294967295u, 2u)])), ~var_1.d.b.a.x));
    return Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_0.d.c.yz, var_1.a, select(select(vec2<bool>(false, var_1.c.x), vec2<bool>(true, arg_3.b.x), true), select(var_1.b.ww, var_1.c.zx, vec2<bool>(false, var_1.b.x)), var_1.b.x | var_1.c.x))), _wgslsmith_f_op_vec2_f32(func_3(arg_2.a, 2834i, arg_3, 0u)), var_2.x)), vec4<bool>(arg_3.c.x, var_0.c.x, var_1.d.b.b != (arg_3.d.b.b | var_1.d.a.x), var_1.c.x), !select(!(!var_0.c), var_0.c, true), arg_3.d);
}

fn func_1(arg_0: vec3<u32>) -> vec2<f32> {
    global2 = func_2(~vec4<i32>(_wgslsmith_add_i32(2147483647i, reverseBits(-2147483647i)), global2.d.b.b, abs(u_input.e) ^ _wgslsmith_mult_i32(-1i, 0i), _wgslsmith_sub_i32(global2.d.b.b, global2.d.a.x) | 0i), 55618u, Struct_1(global2.d.b.a, -4659i), Struct_4(global2.d.c.zy, global2.b, global2.b.xwy, global2.d));
    global0 = array<u32, 2>();
    let var_0 = vec2<bool>(true, global2.c.x);
    let var_1 = Struct_3(global2.d.b);
    let var_2 = Struct_1(global2.d.b.a, ~1i);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a) - global2.d.c.zw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.a.x), global2.a.x)), _wgslsmith_f_op_vec2_f32(func_1(~reverseBits(vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(89461u, 2u)], 2u)], 2u)], 2u)], global0[_wgslsmith_index_u32(global2.d.b.a.x, 2u)]))))), !select(func_2(vec4<i32>(-16540i, 36649i, 0i, 0i), global2.d.b.a.x, func_2(vec4<i32>(global2.d.b.b, u_input.d.x, u_input.d.x, u_input.e), global0[_wgslsmith_index_u32(1u, 2u)], global2.d.b, Struct_4(vec2<f32>(-299f, global2.a.x), global2.b, global2.b.zxz, Struct_2(global2.d.a, global2.d.b, vec4<f32>(-1081f, 719f, 175f, global2.a.x)))).d.b, func_2(vec4<i32>(-2147483647i, -1i, u_input.d.x, u_input.e), 0u, global2.d.b, Struct_4(vec2<f32>(245f, global2.d.c.x), global2.b, vec3<bool>(false, global2.b.x, global2.c.x), Struct_2(vec2<i32>(global2.d.b.b, -2147483647i), global2.d.b, vec4<f32>(global2.d.c.x, 669f, global2.d.c.x, global2.d.c.x))))).b, vec4<bool>(global2.c.x & global2.c.x, any(vec2<bool>(global2.c.x, false)), global2.b.x, true && global2.c.x), global2.b.x), vec3<bool>(!(!global2.c.x), false, true), func_2(~vec4<i32>(u_input.d.x >> (1u % 32u), _wgslsmith_mult_i32(2147483647i, -1i), u_input.d.x, -u_input.e), _wgslsmith_dot_vec2_u32(global2.d.b.a.zy, vec2<u32>(reverseBits(13623u), 37820u)), func_2(abs(-vec4<i32>(31873i, 1i, 43855i, -38449i)), 10036u, func_2(vec4<i32>(12090i, global2.d.a.x, global2.d.b.b, 1i) ^ vec4<i32>(u_input.d.x, global2.d.b.b, u_input.d.x, global2.d.a.x), u_input.b, global2.d.b, func_2(vec4<i32>(1i, 2147483647i, global2.d.b.b, 0i), u_input.a.x, Struct_1(global2.d.b.a, 1134i), Struct_4(vec2<f32>(-1000f, 1879f), vec4<bool>(global2.c.x, global2.b.x, false, global2.c.x), global2.c, global2.d))).d.b, func_2(vec4<i32>(49902i, global2.d.b.b, global2.d.a.x, u_input.e) ^ vec4<i32>(global2.d.a.x, -12397i, -1i, global2.d.a.x), firstLeadingBit(global2.d.b.a.x), global2.d.b, Struct_4(global2.d.c.xy, vec4<bool>(global2.c.x, global2.b.x, global2.c.x, global2.c.x), vec3<bool>(false, global2.c.x, global2.b.x), Struct_2(vec2<i32>(4223i, -3597i), global2.d.b, global2.d.c)))).d.b, func_2(vec4<i32>(u_input.e, u_input.e ^ u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.e, u_input.d.x, global2.d.b.b), vec4<i32>(16496i, global2.d.a.x, global2.d.b.b, -22326i)), _wgslsmith_mod_i32(global2.d.a.x, global2.d.a.x)), u_input.b, global2.d.b, Struct_4(global2.d.c.wz, !global2.b, select(vec3<bool>(global2.c.x, false, global2.b.x), global2.c, vec3<bool>(true, global2.c.x, true)), Struct_2(vec2<i32>(global2.d.b.b, 0i), Struct_1(vec4<u32>(36998u, global0[_wgslsmith_index_u32(24450u, 2u)], 21420u, 14022u), 1i), global2.d.c)))).d);
    var var_1 = var_0.d.b;
    global2 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(var_0.d.c.yz)))), vec4<bool>(true, global2.c.x, ~1015u > u_input.c, true), !var_0.b.wzy, func_2(abs(vec4<i32>(var_1.b, 18468i, 0i, var_1.b)) >> (~vec4<u32>(27221u, 12976u, var_1.a.x, 54999u) % vec4<u32>(32u)), 0u, Struct_1(_wgslsmith_add_vec4_u32(~var_1.a, ~vec4<u32>(15988u, 1u, var_1.a.x, 45199u)), _wgslsmith_mod_i32(~0i, 2147483647i ^ var_0.d.b.b)), Struct_4(var_0.d.c.xy, select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.b.x, true, false, true), !var_0.b.x), var_0.c, func_2(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, -34120i, var_0.d.a.x, 1i), vec4<i32>(var_1.b, u_input.d.x, 2147483647i, var_0.d.b.b)), u_input.a.x | 6438u, global2.d.b, Struct_4(var_0.d.c.ww, vec4<bool>(var_0.c.x, false, var_0.c.x, false), vec3<bool>(var_0.c.x, false, true), Struct_2(vec2<i32>(var_0.d.a.x, -20280i), var_0.d.b, vec4<f32>(-1832f, -748f, 1000f, global2.d.c.x)))).d)).d);
    let var_2 = ~_wgslsmith_div_u32(var_0.d.b.a.x, u_input.a.x);
    var var_3 = !(!var_0.b);
    let var_4 = u_input.d.x;
    global1 = array<vec3<i32>, 5>();
    var_0 = func_2(~(-min(vec4<i32>(var_1.b, var_1.b, 2147483647i, global2.d.b.b), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_1.b, -3312i, u_input.d.x), vec4<i32>(-61533i, var_0.d.b.b, var_4, var_0.d.b.b)))), max(abs(u_input.c) >> (30156u % 32u), min(~var_1.a.x, 4294967295u)) ^ ~16689u, global2.d.b, func_2(min(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(1i, global2.d.a.x, var_0.d.b.b, 0i), vec4<i32>(var_1.b, global2.d.b.b, var_1.b, var_4))), select(-vec4<i32>(var_4, -47881i, -36100i, -10210i), vec4<i32>(u_input.e, u_input.d.x, var_1.b, u_input.e), var_0.b.x & var_0.b.x)), 38273u, func_2(abs(vec4<i32>(var_1.b, var_0.d.b.b, 4432i, -39553i)), firstLeadingBit(13994u), func_2(vec4<i32>(-2147483647i, var_0.d.b.b, var_4, -21442i), firstLeadingBit(23841u), func_2(vec4<i32>(global2.d.b.b, -2147483647i, var_1.b, 9959i), 4294967295u, Struct_1(vec4<u32>(u_input.c, 0u, 46798u, u_input.c), global2.d.a.x), Struct_4(var_0.a, var_0.b, vec3<bool>(false, var_0.b.x, true), var_0.d)).d.b, func_2(vec4<i32>(u_input.e, var_4, 1i, -2147483647i), 41081u, global2.d.b, Struct_4(vec2<f32>(global2.d.c.x, global2.a.x), global2.b, var_3.zxw, global2.d))).d.b, Struct_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-194f, global2.a.x))), var_0.b, select(vec3<bool>(true, var_0.b.x, false), var_3.www, global2.c.x), var_0.d)).d.b, func_2(-(~vec4<i32>(var_1.b, global2.d.a.x, global2.d.b.b, -3160i)), 1u, var_0.d.b, func_2(countOneBits(vec4<i32>(u_input.e, global2.d.b.b, -2147483647i, u_input.e)), ~var_2, Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(1u, 2u)], 83312u, 6131u, u_input.c), global2.d.b.b), func_2(vec4<i32>(global2.d.b.b, u_input.e, global2.d.b.b, var_1.b), 0u, Struct_1(vec4<u32>(var_1.a.x, u_input.c, var_2, 4158u), 0i), Struct_4(vec2<f32>(-638f, var_0.a.x), global2.b, var_0.b.wwz, global2.d))))));
    var var_5 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(abs(4294967295u)), ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 39522u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_0.d.b.a.x, 36239u, 26547u)), ~global2.d.b.a.wwy), ~var_2), global2.d.b.a) | global2.d.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(37606u, firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, var_0.d.b.a.x), var_5.x))));
}

