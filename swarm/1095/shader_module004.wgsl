struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(-9791i, 1u, vec2<u32>(20789u, 0u))), Struct_2(Struct_1(0i, 31387u, vec2<u32>(68887u, 47212u))), Struct_2(Struct_1(17206i, 1u, vec2<u32>(4294967295u, 33163u))), Struct_2(Struct_1(0i, 15536u, vec2<u32>(20161u, 23135u))), Struct_2(Struct_1(13419i, 1u, vec2<u32>(4294967295u, 0u))), Struct_2(Struct_1(49210i, 5461u, vec2<u32>(7518u, 1611u))), Struct_2(Struct_1(46196i, 0u, vec2<u32>(36741u, 76819u))), Struct_2(Struct_1(63403i, 1u, vec2<u32>(1u, 1u))), Struct_2(Struct_1(i32(-2147483648), 1u, vec2<u32>(3569u, 1u))), Struct_2(Struct_1(2147483647i, 54015u, vec2<u32>(104812u, 19248u))), Struct_2(Struct_1(i32(-2147483648), 4294967295u, vec2<u32>(0u, 49027u))), Struct_2(Struct_1(2147483647i, 4294967295u, vec2<u32>(23676u, 4294967295u))), Struct_2(Struct_1(8936i, 37672u, vec2<u32>(0u, 25117u))), Struct_2(Struct_1(-1i, 10293u, vec2<u32>(4294967295u, 83103u))), Struct_2(Struct_1(-1i, 4294967295u, vec2<u32>(4294967295u, 1295u))), Struct_2(Struct_1(49741i, 23918u, vec2<u32>(50649u, 54303u))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: u32) -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(2147483647i, arg_2, select(~vec2<u32>(u_input.e, u_input.e), u_input.a.xy, global0.xy)));
    let var_1 = vec3<i32>(firstLeadingBit(~_wgslsmith_clamp_i32(reverseBits(u_input.d.x), 11555i >> (u_input.a.x % 32u), u_input.d.x)), (var_0.a.a ^ -13774i) << (var_0.a.c.x % 32u), 2147483647i);
    let var_2 = vec3<i32>(reverseBits(0i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 15653i), u_input.d.xz), u_input.d.x, -47483i, ~0i), -vec4<i32>(1i, var_0.a.a, 2147483647i, u_input.b.x)), -1i);
    global1 = array<Struct_2, 16>();
    var var_3 = var_0.a;
    return vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, -9959i));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~(arg_2.a.c.x >> ((75308u ^ _wgslsmith_sub_u32(arg_1.x, arg_1.x)) % 32u)), 16u)];
    let var_1 = reverseBits(~func_3(_wgslsmith_f_op_f32(f32(-1f) * -865f), ~arg_2.a.c.x > abs(arg_1.x), u_input.c.x));
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1, ~vec3<u32>(_wgslsmith_sub_u32(var_0.a.b, 1u), 1u, u_input.c.x) >> (arg_1 % vec3<u32>(32u))), 16u)];
    let var_2 = -34920i;
    var var_3 = Struct_1(var_2, var_0.a.b, arg_2.a.c);
    return var_0.a;
}

fn func_1() -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(545f - -1039f), -1534f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-200f, 506f)) - -224f)), _wgslsmith_f_op_f32(1708f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1866f, -1490f)), _wgslsmith_f_op_f32(f32(-1f) * -431f))))), _wgslsmith_f_op_f32(max(1362f, 364f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(1855f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f) - 1890f), true))));
    var var_1 = Struct_2(func_2(select(vec3<bool>(15631u > u_input.e, true, true), vec3<bool>(any(vec3<bool>(global0.x, global0.x, global0.x)), all(vec4<bool>(global0.x, true, global0.x, global0.x)), true), vec3<bool>(40554u < u_input.a.x, any(vec4<bool>(false, global0.x, false, true)), !global0.x)), firstTrailingBit(firstLeadingBit(u_input.a)), global1[_wgslsmith_index_u32(max(1u, ~10557u), 16u)], 1060f));
    var var_2 = global1[_wgslsmith_index_u32(~var_1.a.c.x, 16u)];
    let var_3 = _wgslsmith_clamp_i32(firstLeadingBit(var_2.a.a), -4131i, ~(-28579i << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.a.c.x), ~var_2.a.c) % 32u)));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x - -1250f)), -842f, 474f);
    return 15826u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(vec2<u32>(func_1(), _wgslsmith_div_u32(49812u, u_input.c.x)));
    let var_1 = global1[_wgslsmith_index_u32(0u, 16u)];
    global0 = !(!(!select(select(vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x)), vec3<bool>(true, true, true), global0.x)));
    global0 = select(!select(select(!vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, false)), !select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, false, global0.x)), global0.x), vec3<bool>(true, true, global0.x), false);
    let var_2 = var_1.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(1875f)), _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(~u_input.d.x, _wgslsmith_div_i32(7442i, 27345i)), ~abs(func_2(vec3<bool>(false, true, global0.x), u_input.c.zxw, Struct_2(var_1.a), 1513f).a), _wgslsmith_div_i32(u_input.d.x | min(-54531i, var_1.a.a), abs(u_input.d.x ^ 63408i))));
}

