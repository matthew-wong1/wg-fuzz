struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(-1792i, 0i, vec2<bool>(false, true), -817f), Struct_1(-857i, 3708i, vec2<bool>(true, false), -1052f), Struct_1(-1i, 2147483647i, vec2<bool>(true, true), 839f), Struct_1(1i, 0i, vec2<bool>(true, true), 452f), Struct_1(-22662i, 2147483647i, vec2<bool>(false, true), 1083f), Struct_1(2147483647i, -40718i, vec2<bool>(true, false), -250f), Struct_1(2147483647i, 2147483647i, vec2<bool>(false, true), -840f), Struct_1(-1i, 21129i, vec2<bool>(true, true), -156f), Struct_1(7037i, -25i, vec2<bool>(true, true), 479f), Struct_1(1i, -1007i, vec2<bool>(true, false), 1156f), Struct_1(-25817i, i32(-2147483648), vec2<bool>(false, false), 258f), Struct_1(35857i, 7644i, vec2<bool>(false, true), -1249f), Struct_1(1i, 47078i, vec2<bool>(false, false), -625f), Struct_1(-20799i, -1i, vec2<bool>(true, true), -368f), Struct_1(-11198i, -1i, vec2<bool>(true, true), 391f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    let var_0 = i32(-1i) * -(i32(-1i) * -7222i);
    global1 = array<Struct_1, 15>();
    global1 = array<Struct_1, 15>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(3549u ^ u_input.a.x, ~(~(~u_input.a.x))), 15u)];
    let var_2 = Struct_1(-12096i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a, -11209i) ^ vec2<i32>(41899i, 14626i), ~vec2<i32>(arg_1.a, var_0)), vec2<i32>(var_1.a ^ arg_2.a, arg_2.b)) & -22428i, var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(864f + -691f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d)))));
    return !(!vec4<bool>(true || (4294967295u >= u_input.a.x), any(!vec4<bool>(arg_1.c.x, var_1.c.x, var_1.c.x, var_2.c.x)), !arg_3, arg_0.c.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_add_i32(~(0i & firstTrailingBit(arg_0.x)), arg_0.x), arg_0.x, vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f)))));
    global1 = array<Struct_1, 15>();
    var var_1 = _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(~u_input.a.x, u_input.a.x & 32815u)) & _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(32987u, 4224u), vec2<u32>(31398u, u_input.a.x)), firstLeadingBit(vec2<u32>(u_input.b, 36885u)) & u_input.a), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.c)), ~(~min(vec2<u32>(4294967295u, 0u), u_input.a))));
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 15u)];
    let var_3 = !select(select(!(!vec4<bool>(var_2.c.x, var_0.c.x, true, var_0.c.x)), vec4<bool>(!var_0.c.x, !global0.x, 3234i >= arg_0.x, true), select(vec4<bool>(false, var_2.c.x, true, global0.x), select(vec4<bool>(true, true, false, var_2.c.x), vec4<bool>(var_2.c.x, false, var_2.c.x, var_0.c.x), vec4<bool>(false, false, true, var_0.c.x)), true)), !(!func_3(Struct_1(-30831i, arg_0.x, vec2<bool>(var_2.c.x, true), var_0.d), Struct_1(-2147483647i, arg_0.x, var_0.c, var_0.d), Struct_1(var_2.b, -16770i, vec2<bool>(global0.x, global0.x), var_2.d), false)), firstLeadingBit(arg_0.x) > 16420i);
    return 0u;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    var var_0 = ~(~(~select(~40431u, arg_1, -30437i <= arg_3)));
    var_0 = 1u;
    var var_1 = reverseBits(~(~(min(u_input.a.x, 1u) << (_wgslsmith_mult_u32(1u, 1u) % 32u))));
    var var_2 = !global0.x;
    var var_3 = arg_0.zz;
    return u_input.b >> (func_2(~vec4<i32>(arg_2.x, _wgslsmith_mult_i32(-1i, 7289i), 0i, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1036f, -322f)))) % 32u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-332f, -330f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d + -654f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + -768f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d, -150f, -636f) * vec3<f32>(343f, arg_1.d, arg_1.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2000f, -136f, -310f))) + vec3<f32>(-191f, 385f, arg_1.d)), arg_1.b == (i32(-1i) * -1i))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1361f, arg_1.d, -1000f)) * vec3<f32>(133f, arg_1.d, arg_1.d)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.d, arg_1.d, 530f)))))));
    let var_1 = any(vec2<bool>(any(select(vec4<bool>(arg_1.c.x, global0.x, true, arg_1.c.x), vec4<bool>(true, true, false, true), vec4<bool>(true, arg_1.c.x, true, global0.x))), false || (global0.x && arg_1.c.x))) | false;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_0.x)))));
    let var_3 = global1[_wgslsmith_index_u32(~select(arg_0.x ^ max(5724u, u_input.a.x), abs(firstTrailingBit(arg_0.x)), select(true, !arg_1.c.x, !arg_1.c.x)) & 1u, 15u)];
    var var_4 = 1u;
    return StorageBuffer(max(vec4<u32>(46425u, arg_0.x, ~(~22586u), 1u), _wgslsmith_mod_vec4_u32(min(vec4<u32>(23610u, 150374u, 4294967295u, arg_0.x), arg_0 ^ arg_0), ~(vec4<u32>(arg_0.x, arg_0.x, 30882u, u_input.c) & arg_0))), u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -116f), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(i32(-1i) * -2147483647i);
    var var_1 = _wgslsmith_div_vec2_u32(abs(~vec2<u32>(u_input.a.x, 0u)) << (u_input.a % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(u_input.a, u_input.a));
    let var_2 = firstTrailingBit(abs(1i)) >> (55097u % 32u);
    let var_3 = -2719f;
    var_0 = var_2;
    let x = u_input.a;
    s_output = func_4(vec4<u32>(_wgslsmith_mult_u32(func_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-160f, var_3, var_3, 1204f))), _wgslsmith_sub_u32(4294967295u, 4294967295u), -vec2<i32>(var_2, -2147483647i), var_2), 0u), _wgslsmith_sub_u32(1u, 1u), ~(4294967295u | u_input.c) ^ _wgslsmith_clamp_u32(_wgslsmith_sub_u32(33741u, var_1.x), firstLeadingBit(18626u), _wgslsmith_add_u32(59367u, 0u)), var_1.x), Struct_1(21645i, -1i, global0.yw, 2684f));
}

