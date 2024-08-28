struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec2<i32> {
    var var_0 = -799f;
    var var_1 = arg_0;
    let var_2 = countOneBits(-27665i);
    var var_3 = Struct_1(countOneBits(-arg_0.e.zx), -1534f, true != arg_0.d.x, !(!(!vec4<bool>(true, arg_0.c, var_1.d.x, true))), abs(firstTrailingBit(vec3<i32>(1i, -1605i, var_1.e.x))) >> (vec3<u32>(~324u, u_input.a.x, 0u ^ (global1.x & u_input.a.x)) % vec3<u32>(32u)));
    let var_4 = !(all(arg_0.d) & var_3.c);
    return u_input.b.xz;
}

fn func_3(arg_0: Struct_1) -> i32 {
    global1 = _wgslsmith_mult_vec2_u32(~firstTrailingBit(select(abs(u_input.a.yw), _wgslsmith_mult_vec2_u32(u_input.a.zw, vec2<u32>(17635u, global1.x)), arg_0.d.zx)), max(_wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.a.wx), u_input.a.ww << (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global1.x), vec2<u32>(4294967295u, 2263u), vec2<u32>(global1.x, global1.x)) % vec2<u32>(32u)), ~(u_input.a.yx & vec2<u32>(7734u, 104627u))), u_input.a.yz));
    let var_0 = any(!arg_0.d);
    var var_1 = Struct_1(max(arg_0.e.zy, _wgslsmith_div_vec2_i32(-(~vec2<i32>(-59460i, u_input.b.x)), u_input.b.zz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-767f)), 297f)), -304f)) + arg_0.b), any(!select(select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), arg_0.c), vec2<bool>(var_0, false), select(vec2<bool>(true, arg_0.c), arg_0.d.zz, false))), vec4<bool>(true, true, any(vec2<bool>(var_0 && var_0, false)), arg_0.d.x), -(min(vec3<i32>(-743i, u_input.b.x, -2147483647i) >> (u_input.a.yzx % vec3<u32>(32u)), select(vec3<i32>(-1476i, 2147483647i, arg_0.e.x), vec3<i32>(2147483647i, -20341i, u_input.b.x), vec3<bool>(false, var_0, arg_0.c))) << (~u_input.a.wyy % vec3<u32>(32u))));
    global0 = firstLeadingBit(vec4<i32>(1i, -74781i, ~arg_0.a.x, -firstTrailingBit(var_1.e.x)) << (vec4<u32>(~0u, 36816u, ~reverseBits(13999u), 27022u | global1.x) % vec4<u32>(32u)));
    global0 = vec4<i32>(~(-global0.x), -u_input.b.x, reverseBits(~(~(-arg_0.e.x))), _wgslsmith_mult_i32(0i, var_1.e.x));
    return ~(~_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, ~2147483647i), ~2147483647i));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(func_2(Struct_1(global0.yy, arg_0, true, select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, false, true)), global0.wyx), -14280i << (~4294967295u % 32u)), arg_0, any(vec2<bool>(!(-2147483647i != u_input.b.x), func_3(Struct_1(vec2<i32>(global0.x, -22985i), arg_0, false, vec4<bool>(false, false, true, false), vec3<i32>(1i, u_input.b.x, global0.x))) > _wgslsmith_mod_i32(u_input.b.x, -1i))), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec3<bool>(false, true, true)), true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), global0.xzz);
    global0 = vec4<i32>(global0.x, ~_wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(_wgslsmith_add_i32(var_0.a.x, var_0.e.x), _wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(var_0.e.x, global0.x)))), -11307i, -21445i);
    var var_1 = vec2<u32>(31677u, _wgslsmith_sub_u32(14815u, 0u));
    var var_2 = var_0.d.x;
    global1 = select(vec2<u32>(4294967295u, ~(min(1u, global1.x) | firstTrailingBit(var_1.x))), u_input.a.xy, select(!vec2<bool>(var_0.c, false), !(!vec2<bool>(true, var_0.c)), !select(!vec2<bool>(true, var_0.d.x), vec2<bool>(false, var_0.d.x), false)));
    return Struct_1(vec2<i32>(-(~(-2147483647i)), global0.x) << (u_input.a.yz % vec2<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -569f)) * -752f), _wgslsmith_f_op_f32(f32(-1f) * -519f))), var_0.d.x, !select(var_0.d, var_0.d, select(select(var_0.d, vec4<bool>(var_0.d.x, var_0.d.x, true, false), var_0.d), select(vec4<bool>(var_0.d.x, var_0.d.x, false, true), vec4<bool>(var_0.c, false, var_0.c, var_0.d.x), var_0.d), var_0.d)), reverseBits(vec3<i32>(_wgslsmith_div_i32(-2147483647i, -u_input.b.x), global0.x, func_2(Struct_1(var_0.e.xz, var_0.b, var_0.d.x, var_0.d, vec3<i32>(1i, -1i, var_0.e.x)), -1i).x)));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = vec3<bool>(false, _wgslsmith_f_op_f32(sign(arg_3.b)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.b)) * 1825f)), true);
    var var_1 = -47389i;
    let var_2 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -197f));
    let var_3 = func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_3.b)), 759f)));
    var var_4 = true != !(arg_2.e.x <= 1i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.b + 1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b), var_2.b)))))) - _wgslsmith_f_op_f32(min(-1213f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-107f)))))));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: f32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_sub_vec2_i32(global0.yw, vec2<i32>(~global0.x, -34950i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1140f))), any(!vec2<bool>(any(vec3<bool>(true, false, false)), true)), !func_1(_wgslsmith_div_f32(-729f, _wgslsmith_f_op_f32(select(arg_2, arg_2, true)))).d, firstTrailingBit(-select(vec3<i32>(global0.x, 1i, global0.x), u_input.b, vec3<bool>(false, false, false))) ^ vec3<i32>(_wgslsmith_add_i32(u_input.b.x >> (18030u % 32u), 1i), ~(~u_input.b.x), global0.x));
    global1 = _wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wzy, vec3<u32>(4294967295u, 0u, u_input.a.x)), ~0u)), _wgslsmith_add_vec2_u32(min(~_wgslsmith_mult_vec2_u32(u_input.a.zx, u_input.a.zw), u_input.a.yy), ~vec2<u32>(1u, ~u_input.a.x)));
    var var_1 = vec2<bool>((8924u ^ _wgslsmith_mod_u32(72525u, u_input.a.x)) == 29522u, false);
    let var_2 = !(!(all(var_0.d.wyy) & var_1.x));
    var var_3 = u_input.a;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(func_5(global1.x, _wgslsmith_f_op_f32(func_4(-32187i, u_input.a, func_1(-127f), func_1(-1234f))), 1000f), u_input.b.x), abs(reverseBits(global0.x)), 2147483647i, _wgslsmith_mult_i32(0i, (i32(-1i) * -15785i) >> (global1.x % 32u)));
    var var_1 = Struct_1(~abs(firstTrailingBit(u_input.b.zy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-230f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1033f, 1778f)) + func_1(-153f).b))) + -1206f), !(!any(vec3<bool>(true, true, true))), !func_1(-592f).d, global0.zzw);
    let var_2 = func_1(1129f);
    var var_3 = Struct_1(~var_0.xw, _wgslsmith_f_op_f32(1392f - 501f), all(select(vec3<bool>(all(vec4<bool>(false, var_1.d.x, true, var_2.c)), false, true), !vec3<bool>(var_2.d.x, var_2.c, true), var_1.c)), select(var_2.d, var_1.d, var_2.c), -(max(func_1(var_2.b).e, reverseBits(var_2.e)) >> ((_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global1.x), u_input.a.xww) >> (_wgslsmith_clamp_vec3_u32(u_input.a.zxz, vec3<u32>(146276u, global1.x, u_input.a.x), vec3<u32>(global1.x, 4294967295u, 24681u)) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_4 = 1i;
    global1 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.a.xz), _wgslsmith_mod_vec2_u32(u_input.a.zy, abs(_wgslsmith_add_vec2_u32(~vec2<u32>(global1.x, 49301u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(0u, 18497u))))), ~u_input.a.yy);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a.zzw) ^ ~vec3<u32>(select(global1.x, 90067u, var_3.d.x), _wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(11637u, u_input.a.x)), ~53122u), global0.zw);
}

