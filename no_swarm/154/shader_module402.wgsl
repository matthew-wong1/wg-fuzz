struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_1, 17>();
    var var_0 = arg_1.a;
    var_0 = arg_1.a;
    var_0 = arg_1.a;
    let var_1 = vec3<i32>(reverseBits(_wgslsmith_div_i32(u_input.d.x, -_wgslsmith_mod_i32(-2147483647i, u_input.d.x))), -2147483647i << (~(~_wgslsmith_add_u32(arg_3.d, arg_3.b.x)) % 32u), u_input.a);
    return ~max(4294967295u, 1u);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = u_input.c.zx;
    var var_1 = vec4<i32>(~_wgslsmith_mult_i32(arg_2, _wgslsmith_div_i32(arg_2, u_input.a)), 13324i, arg_2 | _wgslsmith_add_i32(u_input.b.x, 21120i | u_input.b.x), u_input.d.x) | firstLeadingBit(firstTrailingBit(select(countOneBits(vec4<i32>(-2147483647i, u_input.d.x, arg_0, -30928i)), vec4<i32>(u_input.a, arg_0, u_input.d.x, u_input.d.x) ^ vec4<i32>(arg_0, arg_0, arg_2, -2147483647i), arg_1.x)));
    var var_2 = Struct_1(vec4<bool>(true & all(!arg_1), true, arg_3.c.x, arg_1.x));
    let var_3 = _wgslsmith_div_u32(min(~31121u, ~0u) >> (~(~arg_3.b.x) % 32u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(~arg_3.d, ~1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.b.x, func_1(vec2<f32>(750f, -618f), global0[_wgslsmith_index_u32(u_input.c.x, 17u)], vec2<bool>(arg_3.a.x, true), Struct_2(arg_1.yy, vec4<u32>(arg_3.b.x, 32942u, 4294967295u, arg_3.d), var_2.a.wy, var_0.x))), arg_3.b.zw)));
    var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(39244u), 17u)];
    return vec4<bool>(43138u < var_3, arg_3.a.x | true, true, any(!arg_3.a));
}

fn func_2() -> bool {
    var var_0 = u_input.d;
    let var_1 = Struct_1(!func_3(select(u_input.b.x, _wgslsmith_div_i32(u_input.b.x, -45234i), true), vec3<bool>(true, true, any(vec4<bool>(false, true, true, true))), 1i, Struct_2(vec2<bool>(true, true), firstTrailingBit(u_input.c), vec2<bool>(true, false), 33467u)));
    let var_2 = func_3(-25229i, var_1.a.zwz, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.d.zx << (max(u_input.c.yy, vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u)), max(vec2<i32>(u_input.b.x, u_input.d.x), firstLeadingBit(u_input.d.yz))), u_input.b.x), Struct_2(!var_1.a.xz, select(~u_input.c << (u_input.c % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x) | vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 12173u, u_input.c.x, u_input.c.x), _wgslsmith_mod_vec4_u32(u_input.c, u_input.c)), vec4<bool>(var_1.a.x, false, any(vec4<bool>(true, var_1.a.x, true, var_1.a.x)), false)), !var_1.a.zw, u_input.c.x)).zz;
    global0 = array<Struct_1, 17>();
    var_0 = vec3<i32>(-_wgslsmith_div_i32(_wgslsmith_mod_i32(31668i, -1i), reverseBits(u_input.b.x)) ^ var_0.x, var_0.x & -2147483647i, _wgslsmith_add_i32(51424i | abs(_wgslsmith_mod_i32(var_0.x, 1i)), 33327i));
    return var_2.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_u32(arg_0.zyw, vec3<u32>(~firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(arg_0.xx, vec2<u32>(1u, u_input.c.x), vec2<u32>(arg_0.x, u_input.c.x)), ~vec2<u32>(u_input.c.x, 1u)), 1u));
    var var_1 = ~(-min(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.d.x, -1i)), max(arg_1.x, arg_1.x))) | -38788i;
    let var_2 = global0[_wgslsmith_index_u32(1u, 17u)];
    global0 = array<Struct_1, 17>();
    let var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~var_0.zz, vec2<u32>(~_wgslsmith_dot_vec3_u32(arg_0.xyy, arg_0.wyw), _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), _wgslsmith_sub_u32(u_input.c.x, arg_0.x), _wgslsmith_add_u32(36752u, var_0.x)))), _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(0u, u_input.c.x)), select(vec2<u32>(60514u, 49667u), vec2<u32>(var_0.x, var_0.x), false)), vec2<u32>(~_wgslsmith_clamp_u32(u_input.c.x, 43807u, 9909u), var_0.x)));
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(964f, 3680f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(171f, -776f))))))), Struct_1(!func_3(-22683i, arg_2.a.wwz, u_input.b.x, Struct_2(vec2<bool>(false, false), arg_0, vec2<bool>(arg_2.a.x, arg_2.a.x), 0u))), vec2<bool>(_wgslsmith_mult_i32(arg_1.x, -66898i) >= _wgslsmith_add_i32(47098i, arg_1.x), 1u > ~arg_0.x), Struct_2(var_2.a.xz, vec4<u32>(var_0.x, ~54770u, ~var_3, ~var_3), arg_2.a.wz, min(0u, _wgslsmith_mod_u32(1u, u_input.c.x)))), arg_0.x), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    var var_0 = func_4(select(~vec4<u32>(~u_input.c.x, u_input.c.x | u_input.c.x, 1u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1066f, 541f)), Struct_1(vec4<bool>(true, false, false, true)), vec2<bool>(true, true), Struct_2(vec2<bool>(true, true), u_input.c, vec2<bool>(true, true), 70699u)), u_input.c.x), func_2()), ~u_input.b ^ u_input.d.zz, Struct_1(func_3(1i, select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), ~firstLeadingBit(-37937i), Struct_2(func_3(0i, vec3<bool>(false, true, true), u_input.a, Struct_2(vec2<bool>(false, false), vec4<u32>(u_input.c.x, 1u, u_input.c.x, 1u), vec2<bool>(true, false), u_input.c.x)).yw, vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x) | u_input.c, func_3(u_input.b.x, vec3<bool>(true, false, false), u_input.b.x, Struct_2(vec2<bool>(true, false), u_input.c, vec2<bool>(true, true), u_input.c.x)).xx, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)))));
    var var_1 = Struct_2(var_0.a.wy, firstLeadingBit(vec4<u32>(u_input.c.x, ~1u, min(~u_input.c.x, _wgslsmith_clamp_u32(128769u, u_input.c.x, u_input.c.x)), 1u)), func_4(vec4<u32>(~34346u, min(1u, 20894u), countOneBits(~u_input.c.x), u_input.c.x), _wgslsmith_div_vec2_i32(~abs(vec2<i32>(u_input.d.x, -1i)), -u_input.b), func_4(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 0u) << (vec4<u32>(18730u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), vec2<i32>(u_input.b.x, 2762i), func_4(vec4<u32>(41805u, 4294967295u, u_input.c.x, 83887u), max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.b.x, u_input.d.x)), global0[_wgslsmith_index_u32(u_input.c.x, 17u)]))).a.zx, 1u);
    global0 = array<Struct_1, 17>();
    let var_2 = 4294967295u;
    let var_3 = Struct_2(vec2<bool>(func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2138i), -vec2<i32>(u_input.a, 2147483647i)), vec3<bool>(all(vec3<bool>(var_0.a.x, var_0.a.x, var_1.a.x)), true, var_1.a.x), _wgslsmith_mult_i32(u_input.d.x, u_input.a) | u_input.a, Struct_2(vec2<bool>(false, true), vec4<u32>(70194u, var_2, 0u, 83324u), !vec2<bool>(var_1.a.x, false), var_2)).x, (var_2 >= firstLeadingBit(var_2)) && func_2()), vec4<u32>(~u_input.c.x, abs(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(393f, 1000f) + vec2<f32>(-579f, 210f)), Struct_1(var_0.a), select(var_1.a, var_1.a, true), Struct_2(var_0.a.wy, var_1.b, var_1.c, 1u))), ~var_2 >> (u_input.c.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, ~var_2, 75819u), u_input.c.yww)), !var_0.a.yy, _wgslsmith_dot_vec2_u32(u_input.c.ww, u_input.c.yw ^ countOneBits(var_1.b.yw)));
    var_0 = Struct_1(var_0.a);
    var_1 = Struct_2(vec2<bool>(true, all(var_0.a)), firstTrailingBit(~vec4<u32>(1u ^ var_2, firstTrailingBit(11576u), abs(var_3.b.x), _wgslsmith_dot_vec3_u32(var_3.b.wzy, var_1.b.wwy))), vec2<bool>(false, var_3.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, firstTrailingBit(~24890u), ~u_input.c.x, var_1.b.x), countOneBits(_wgslsmith_sub_vec4_u32(var_3.b, vec4<u32>(u_input.c.x, 1u, u_input.c.x, 57119u)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(u_input.c.xzz & var_3.b.wwy, _wgslsmith_sub_vec3_u32(select(var_3.b.zyy, var_1.b.xyx, vec3<bool>(var_1.c.x, true, true)), ~var_3.b.yyw), !func_4(vec4<u32>(var_3.b.x, var_1.d, u_input.c.x, var_1.b.x), u_input.d.xz, Struct_1(vec4<bool>(true, var_3.c.x, true, true))).a.x)), abs(vec3<i32>(u_input.d.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(-17610i, u_input.d.x), i32(-1i) * -35973i), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b.x, 2147483647i)), u_input.d.zz))));
}

