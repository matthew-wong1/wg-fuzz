struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = all(select(select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec2<bool>(true, true)), false, true), -1000f <= _wgslsmith_f_op_f32(389f + global0.d)), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), global0.a < global0.d), vec4<bool>(true, true, true, true), true), arg_0 <= 108143u));
    return u_input.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(max(-1000f, global0.d)), ~(-select(_wgslsmith_clamp_vec3_i32(u_input.c.ywz, vec3<i32>(arg_1.c, arg_0.c, arg_1.e.x), vec3<i32>(16102i, global0.e.x, 8914i)), ~arg_1.b, vec3<bool>(true, true, true))), arg_0.c, global0.a, ~vec4<i32>(_wgslsmith_dot_vec2_i32(global0.e.wx, arg_0.b.xz), i32(-1i) * -2147483647i, 12572i, -24044i) >> (vec4<u32>(func_3(_wgslsmith_sub_u32(0u, u_input.d)), 0u, _wgslsmith_sub_u32(abs(u_input.b.x), 1u), u_input.e.x) % vec4<u32>(32u)));
    global0 = arg_1;
    var var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-754f, var_0.d)), arg_0.e.yxy, var_0.b.x, _wgslsmith_f_op_f32(-118f + -1031f), reverseBits(vec4<i32>(arg_0.c, _wgslsmith_mod_i32(_wgslsmith_add_i32(37598i, -25234i), var_0.b.x), arg_0.c, _wgslsmith_sub_i32(-56877i, 52243i))));
    let var_2 = arg_2.x;
    return -58424i;
}

fn func_1(arg_0: vec4<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-869f, _wgslsmith_f_op_f32(round(global0.d)), true))));
    let var_1 = true;
    var var_2 = (vec4<i32>(select(u_input.c.x, func_2(Struct_1(-1512f, global0.b, -21810i, -1826f, vec4<i32>(global0.b.x, 1i, arg_0.x, 66005i)), Struct_1(var_0, global0.b, -1i, 185f, u_input.c), vec2<bool>(var_1, true)), !var_1), u_input.c.x, _wgslsmith_sub_i32(arg_0.x, 1i) >> ((66554u >> (u_input.d % 32u)) % 32u), ~countOneBits(arg_0.x)) & arg_0) ^ arg_0;
    var_2 = u_input.c;
    var var_3 = max(vec2<u32>(4294967295u, ~(~_wgslsmith_mod_u32(u_input.b.x, 4294967295u))), min(vec2<u32>(39134u, u_input.e.x) | vec2<u32>(34510u, 4294967295u), vec2<u32>(~4294967295u, 9310u)) ^ ~_wgslsmith_add_vec2_u32(u_input.b, abs(u_input.e)));
    return vec3<i32>(_wgslsmith_mod_i32(10507i << ((_wgslsmith_mult_u32(var_3.x, u_input.e.x) | u_input.b.x) % 32u), arg_0.x), _wgslsmith_clamp_i32(u_input.c.x, global0.e.x, 0i), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), (_wgslsmith_div_vec3_i32(abs(u_input.c.xzw), ~u_input.c.zzx) & func_1(-vec4<i32>(u_input.a, -2147483647i, 1i, 3381i))) ^ (select(firstTrailingBit(global0.e.zxz), select(global0.e.xyx, vec3<i32>(global0.c, -2147483647i, global0.c), false), true) ^ -(vec3<i32>(14920i, 1584i, 2147483647i) ^ u_input.c.zxz)), u_input.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-833f)))))), -u_input.c);
    global0 = Struct_1(-513f, _wgslsmith_mod_vec3_i32(vec3<i32>(global0.b.x, select(~1i, ~1134i, all(vec3<bool>(false, true, true))), _wgslsmith_mod_i32(-29836i, _wgslsmith_mod_i32(u_input.a, 1i))), u_input.c.wwy), countOneBits(~(-2147483647i)), 820f, ~u_input.c);
    var var_0 = Struct_1(global0.d, ~u_input.c.zxy, -firstTrailingBit(u_input.a), -661f, vec4<i32>(_wgslsmith_mod_i32(countOneBits(u_input.c.x), -u_input.a | -9446i), max(func_1(_wgslsmith_mod_vec4_i32(global0.e, u_input.c)).x, global0.c), ~(-11119i), ~u_input.c.x));
    var_0 = Struct_1(var_0.d, _wgslsmith_div_vec3_i32(u_input.c.yyy, max(func_1(min(vec4<i32>(u_input.a, u_input.c.x, -53316i, global0.c), u_input.c)), ~(-vec3<i32>(-6302i, var_0.c, var_0.b.x)))), -global0.b.x, var_0.a, vec4<i32>(0i, global0.c, _wgslsmith_mult_i32(min(global0.e.x, -2147483647i), 1i) | _wgslsmith_mult_i32(var_0.b.x, ~var_0.b.x), _wgslsmith_mult_i32(u_input.a, var_0.b.x)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1198f), _wgslsmith_f_op_f32(sign(var_0.a))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1089f)))))), _wgslsmith_div_f32(global0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1707f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - _wgslsmith_f_op_f32(-427f - var_0.a)))));
    var_0 = Struct_1(var_0.d, abs(countOneBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c.x, 53284i, var_0.e.x), vec3<i32>(u_input.c.x, u_input.a, u_input.c.x)))), func_2(Struct_1(_wgslsmith_f_op_f32(var_0.d - -1000f), global0.b ^ select(var_0.e.wwx, vec3<i32>(global0.c, u_input.a, 7432i), false), _wgslsmith_div_i32(var_0.e.x, var_0.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d))), vec4<i32>(min(global0.c, -785i), 86926i, _wgslsmith_dot_vec4_i32(u_input.c, global0.e), firstTrailingBit(global0.e.x))), Struct_1(-443f, -_wgslsmith_mod_vec3_i32(u_input.c.xwx, u_input.c.xzy), select(2147483647i, var_0.c, select(true, false, true)), var_0.a, vec4<i32>(-1i) * -vec4<i32>(var_0.e.x, 2147483647i, -2147483647i, var_0.c)), !select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), var_0.a != global0.a)), global0.a, _wgslsmith_add_vec4_i32(countOneBits(~vec4<i32>(-53710i, global0.e.x, u_input.c.x, u_input.a)), vec4<i32>(_wgslsmith_div_i32(abs(-2147483647i), min(23344i, var_0.c)), var_0.b.x, select(global0.b.x >> (4294967295u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e.x, var_0.c), vec2<i32>(global0.b.x, u_input.c.x)), all(vec3<bool>(false, true, true))), _wgslsmith_add_i32(u_input.c.x, ~2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(-min(select(vec2<i32>(u_input.c.x, global0.e.x), vec2<i32>(var_0.b.x, global0.e.x), false) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_i32(u_input.c.zy, vec2<i32>(var_0.c, global0.e.x), var_0.e.zz)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.e.x) & ~vec4<u32>(4294967295u, u_input.e.x, 1843u, u_input.e.x)), abs(~vec4<u32>(u_input.d, 879u, u_input.e.x, u_input.b.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(30902u, 38859u, u_input.d, 31880u), vec4<u32>(4294967295u, u_input.d, u_input.b.x, 1u)) % vec4<u32>(32u)))));
}

