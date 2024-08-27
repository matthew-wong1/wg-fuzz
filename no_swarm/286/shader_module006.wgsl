struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = u_input.b.yy;
    let var_1 = Struct_1(_wgslsmith_mult_u32(4294967295u, countOneBits(u_input.d)) ^ ((arg_3.e.x >> (1u % 32u)) << (~(arg_1.a.a & 4541u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f)))), _wgslsmith_f_op_f32(max(-930f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1459f - 1000f))) + _wgslsmith_f_op_f32(f32(-1f) * -280f)))), _wgslsmith_sub_vec2_i32(arg_3.d, arg_0.a.d & -abs(vec2<i32>(31624i, 1i))), countOneBits(arg_0.a.e ^ firstLeadingBit(~vec2<u32>(arg_0.a.a, arg_0.a.a))));
    var var_2 = false;
    var var_3 = ~47855i;
    var var_4 = _wgslsmith_div_u32(33308u, ~_wgslsmith_add_u32(1u, ~4294967295u));
    return vec2<u32>(4294967295u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_3.e.x, var_0.x, 28203u), vec4<u32>(4956u, var_0.x, arg_0.a.e.x, u_input.c)) | (arg_0.a.e.x >> (71195u % 32u))));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> Struct_2 {
    var var_0 = u_input.e >> (u_input.a % vec4<u32>(32u));
    var_0 = -u_input.e;
    var var_1 = select(!select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), !vec2<bool>(!all(vec2<bool>(true, false)), true), vec2<bool>(true, any(vec2<bool>(true, true))));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(select(countOneBits(vec2<u32>(1u, arg_0.x) & vec2<u32>(u_input.d, u_input.a.x)), vec2<u32>(104855u, 76943u | arg_0.x), var_1.x || all(vec2<bool>(var_1.x, var_1.x))), _wgslsmith_clamp_vec2_u32(arg_0.zz, vec2<u32>(arg_1, ~arg_0.x), func_3(Struct_3(Struct_1(12008u, -952f, -1357f, u_input.e.zz, vec2<u32>(0u, 1021u))), Struct_3(global0[_wgslsmith_index_u32(u_input.d, 29u)]), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), Struct_1(u_input.b.x, 285f, 464f, var_0.xx, arg_0.yz)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(418f, 1014f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(864f - -100f)))))), _wgslsmith_div_f32(-761f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(167f + 404f), -1151f)))), ~vec2<i32>(1i, abs(firstTrailingBit(-1i))), arg_0.yz);
    var_0 = ~(~(~u_input.e & reverseBits(u_input.e)));
    return Struct_2(vec4<bool>((_wgslsmith_f_op_f32(1769f + 615f) != _wgslsmith_f_op_f32(step(var_2.b, -584f))) && true, !all(vec2<bool>(true, var_1.x)), all(vec2<bool>(all(vec2<bool>(var_1.x, true)), any(vec4<bool>(true, true, true, false)))), !all(!vec4<bool>(true, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_f32(149f * var_2.b), Struct_1(_wgslsmith_dot_vec2_u32(u_input.b.xz, ~abs(u_input.b.zz)), -1000f, 1000f, var_2.d, ~(~(~u_input.b.zx))));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    global0 = array<Struct_1, 29>();
    let var_0 = func_2(_wgslsmith_add_vec3_u32(~(~(~vec3<u32>(4294967295u, arg_0.a.e.x, arg_0.a.e.x))), ~u_input.b.yxy), arg_0.a.a);
    global0 = array<Struct_1, 29>();
    var var_1 = !any(select(vec4<bool>(true, false, false, var_0.a.x), vec4<bool>(true, false, var_0.a.x, var_0.a.x), !var_0.a.x)) && true;
    return var_0;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec3<i32>) -> vec4<bool> {
    global0 = array<Struct_1, 29>();
    let var_0 = !select(func_2(~(vec3<u32>(u_input.a.x, u_input.c, arg_2.x) >> (u_input.b.xwx % vec3<u32>(32u))), ~arg_1.c.a).a, !(!select(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.a, arg_1.a.x)), !select(!arg_1.a.x, any(arg_1.a), arg_1.a.x));
    global0 = array<Struct_1, 29>();
    var var_1 = vec3<f32>(arg_1.c.b, -107f, arg_1.c.b);
    let var_2 = Struct_3(arg_1.c);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(0u, 29u)];
    global0 = array<Struct_1, 29>();
    var var_1 = func_4(firstLeadingBit(-35760i), func_1(Struct_3(global0[_wgslsmith_index_u32(13459u, 29u)])), reverseBits(select(~u_input.a.zz, ~(u_input.a.zy >> (vec2<u32>(10839u, var_0.e.x) % vec2<u32>(32u))), false)), ~select(u_input.e.wzy, u_input.e.xxy, vec3<bool>(true, true, true)));
    var_1 = func_4(-2147483647i, func_2(countOneBits(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.b.x, u_input.a.x, 26619u)), vec3<u32>(u_input.b.x, 66973u, u_input.d) ^ u_input.b.wyz)), 1u), _wgslsmith_clamp_vec2_u32(func_2(vec3<u32>(0u, u_input.c, var_0.e.x) ^ vec3<u32>(0u, 27109u, var_0.a), ~var_0.a).c.e, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, var_0.e.x), vec2<u32>(var_0.a, var_0.a), var_0.e)), reverseBits(~u_input.a.wx)) >> ((~vec2<u32>(4294967295u, var_0.e.x) >> (select(var_0.e, ~var_0.e, all(vec3<bool>(var_1.x, false, var_1.x))) % vec2<u32>(32u))) % vec2<u32>(32u)), ~_wgslsmith_clamp_vec3_i32(~u_input.e.ywx & u_input.e.zxz, vec3<i32>(_wgslsmith_add_i32(u_input.e.x, -2147483647i), u_input.e.x, var_0.d.x), vec3<i32>(~u_input.e.x, -63992i, -2147483647i)));
    let var_2 = func_2(u_input.a.xzz >> ((~(~u_input.a.xwz) & ~select(vec3<u32>(var_0.a, u_input.c, 0u), vec3<u32>(52403u, var_0.a, 1u), var_1.x)) % vec3<u32>(32u)), 32931u).a.x;
    let var_3 = ~select(-2147483647i, -2147483647i, any(vec2<bool>(var_1.x, any(var_1.wzy))));
    let var_4 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(abs(max(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a.x, var_0.a))) >> ((_wgslsmith_sub_vec2_u32(var_0.e, u_input.a.wz) << (~var_0.e % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.b.ww), func_1(Struct_3(func_1(Struct_3(Struct_1(0u, -137f, 679f, vec2<i32>(var_0.d.x, 16678i), u_input.b.xy))).c)).c.e);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.e), u_input.b.zxx, _wgslsmith_mult_i32(24330i, var_0.d.x), abs(~1u));
}

