struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<Struct_1, 26>();
    var var_0 = Struct_2(arg_0, Struct_1(-784f, ~arg_0.b, ~(~arg_0.c << ((u_input.b.x ^ 46847u) % 32u))));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(67660u, u_input.b.x), 26u)];
    var_0 = Struct_2(arg_0, Struct_1(arg_0.a, arg_0.b, _wgslsmith_div_u32(~arg_0.c >> (1u % 32u), ~4294967295u)));
    var_0 = Struct_2(arg_0, var_0.a);
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, min(_wgslsmith_mult_u32(0u, 10508u), ~0u)), _wgslsmith_add_vec2_u32(u_input.b.wy, vec2<u32>(u_input.c.x << (28371u % 32u), u_input.c.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<bool>) -> vec2<bool> {
    var var_0 = vec3<f32>(1340f, arg_0.a, arg_0.a);
    var var_1 = Struct_2(Struct_1(841f, ~abs(arg_0.b << (u_input.b.x % 32u)), ~arg_0.c), Struct_1(_wgslsmith_f_op_f32(arg_0.a * -1443f), u_input.a.x, u_input.b.x));
    let var_2 = 1i | arg_0.b;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a * var_0.x) + 223f)) - _wgslsmith_f_op_f32(sign(var_0.x)));
    var_3 = var_0.x;
    return select(select(vec2<bool>(true, true), vec2<bool>(true, all(arg_1.ywx)), arg_2.zy), vec2<bool>(!arg_1.x, arg_1.x), vec2<bool>(4088u != ~(~u_input.c.x), select(true, arg_1.x, arg_2.x)));
}

fn func_2(arg_0: u32) -> f32 {
    global0 = array<Struct_1, 26>();
    var var_0 = true;
    let var_1 = !vec3<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, false), true)), all(vec3<bool>(true, true, true)) | any(vec3<bool>(false, true, false)), any(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), any(vec2<bool>(false, false)))));
    let var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), i32(-1i) * -6585i, func_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, ~u_input.b.x), 26u)])), vec4<bool>(!(~0u == (u_input.c.x & 34901u)), any(!select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x), false)), select(false, all(select(vec3<bool>(var_1.x, var_1.x, var_1.x), var_1, var_1)), true | !var_1.x), all(vec4<bool>(true, var_1.x | false, true, arg_0 == 1u))), vec3<bool>(!any(select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, true, var_1.x), var_1.x)), !(!select(var_1.x, true, true)), select(false, true, any(vec4<bool>(false, var_1.x, false, true)))));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2187f)), -722f)));
    return -1000f;
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0.a;
    var var_1 = Struct_2(arg_0, global0[_wgslsmith_index_u32(select(arg_0.c, u_input.b.x, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), 26u)]);
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.a * 299f)))), countOneBits(-54083i) << (1u % 32u), u_input.b.x), Struct_1(_wgslsmith_div_f32(766f, _wgslsmith_f_op_f32(var_1.b.a - var_0)), arg_0.b, u_input.c.x));
    global0 = array<Struct_1, 26>();
    var_1 = Struct_2(Struct_1(-269f, arg_0.b | u_input.a.x, var_1.b.c), Struct_1(-1000f, firstLeadingBit(-u_input.a.x), 69418u));
    return 0u;
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-552f + 903f))))), 1i, func_5(Struct_1(_wgslsmith_f_op_f32(func_2(1u << (u_input.c.x % 32u))), -1i, ~_wgslsmith_div_u32(u_input.b.x, 1u))));
    var var_1 = _wgslsmith_sub_vec2_i32(u_input.a.yz, u_input.a.zz << (~vec2<u32>(u_input.b.x, countOneBits(u_input.c.x)) % vec2<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1001f, -242f), _wgslsmith_f_op_f32(-var_0.a)))) * 1000f), arg_0, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(18593u, u_input.b.x, u_input.c.x)), vec3<u32>(var_0.c & 16576u, 1u, ~29837u)) ^ 1u);
    var_1 = -select(vec2<i32>(~min(-2147483647i, var_0.b), -591i), reverseBits(u_input.a.zx), vec2<bool>(arg_1.x, select(u_input.b.x, var_0.c, false) != 1737u));
    let var_3 = arg_1.x;
    return Struct_2(var_2, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(countOneBits(_wgslsmith_mult_i32(-_wgslsmith_div_i32(u_input.a.x, 2147483647i), -13203i)), !(!vec2<bool>(true, all(vec4<bool>(false, true, false, false)))));
    let var_1 = vec3<bool>(any(!vec3<bool>(u_input.a.x != u_input.a.x, all(vec2<bool>(true, true)), true)), any(vec3<bool>(true, true, true)) || true, true);
    let var_2 = u_input.b.x;
    var var_3 = var_1.yy;
    let var_4 = func_1(var_0.b.b, var_1.xx);
    var var_5 = ((~23926u << (~firstTrailingBit(var_0.b.c) % 32u)) & (max(10853u, var_0.a.c) ^ 0u)) | ((max(var_4.a.c, countOneBits(0u)) ^ reverseBits(1u)) & firstTrailingBit(~var_4.a.c));
    var var_6 = var_4.b;
    var_0 = func_1(-6684i, select(!(!var_1.xz), vec2<bool>(false, true), select(var_4.a.b <= var_4.a.b, var_1.x, true)));
    let var_7 = reverseBits(~select(var_6.c, ~20912u, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.c, min(_wgslsmith_add_i32(-(~(-2857i)), var_4.b.b), 1i), ~firstLeadingBit(-vec3<i32>(var_0.a.b, u_input.a.x, -1i)));
}

