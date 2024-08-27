struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = u_input.c.x <= ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.c.x), 31002i), 10957i);
    global0 = vec4<bool>(any(select(select(vec4<bool>(false, arg_0, false, false), select(vec4<bool>(global0.x, global0.x, arg_0, false), vec4<bool>(false, global0.x, false, true), global0.x), select(vec4<bool>(true, arg_0, true, true), vec4<bool>(true, true, global0.x, false), vec4<bool>(arg_0, global0.x, global0.x, global0.x))), vec4<bool>(true, all(global0.zy), !arg_0, true), select(any(global0.yx), arg_0 && true, false))), var_0 == true, true, !var_0);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-415f, -1474f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1113f)))))), vec2<u32>(arg_1.b.x, arg_1.b.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(-2590f + arg_1.a.x))))) + var_1.a.x);
    var var_3 = Struct_4(u_input.b.wxy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, -529f, -1012f, -226f), vec4<f32>(arg_1.a.x, -1000f, 1180f, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 122f, arg_1.a.x, arg_1.a.x) + vec4<f32>(arg_1.a.x, 1508f, 1031f, var_1.a.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1037f, -576f, var_1.a.x, -622f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, 944f, 360f, 539f)), false))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(998f, 175f, arg_1.a.x, arg_1.a.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, -476f, arg_1.a.x, var_1.a.x), vec4<f32>(1369f, -1073f, -354f, 357f))), vec4<f32>(_wgslsmith_div_f32(-1000f, -559f), _wgslsmith_f_op_f32(exp2(var_1.a.x)), arg_1.a.x, 785f))), _wgslsmith_sub_u32(arg_1.b.x, max(min(0u, 0u), countOneBits(u_input.b.x))) & 1u);
    return !(!vec4<bool>(true, any(global0.zw), arg_0, true));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_2) -> bool {
    global0 = arg_3.b;
    return func_3(false, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-467f, _wgslsmith_f_op_f32(-arg_3.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -382f))), arg_3.c.b)).x;
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.b.xwy * arg_0.b.zyw), ~vec2<u32>(4294967295u, 4294967295u));
    global0 = select(vec4<bool>(func_4(!vec4<bool>(false, false, true, global0.x), 31819u, vec3<f32>(_wgslsmith_f_op_f32(-889f - arg_0.b.x), _wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x), Struct_2(u_input.a << (16597u % 32u), func_3(global0.x, Struct_1(vec3<f32>(-511f, -257f, 1918f), arg_0.a.zx)), Struct_1(arg_0.b.zyx, u_input.b.zz))), true, select(2147483647i, ~u_input.c.x, all(vec4<bool>(true, global0.x, global0.x, true))) <= _wgslsmith_mod_i32(~u_input.a, -1i), all(!global0.wy)), select(!vec4<bool>(true, -892f <= arg_0.b.x, select(false, false, global0.x), global0.x && global0.x), func_3(true, Struct_1(vec3<f32>(186f, 123f, var_0.a.x), ~vec2<u32>(u_input.b.x, u_input.b.x))), global0.x), !(!func_3(any(vec4<bool>(global0.x, global0.x, false, global0.x)), Struct_1(vec3<f32>(arg_0.b.x, 577f, var_0.a.x), vec2<u32>(var_0.b.x, 0u)))));
    var var_1 = ~u_input.b;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, -415f, arg_0.b.x))))) - var_0.a), ~vec2<u32>(arg_0.c, 61790u));
    global0 = !vec4<bool>(true || (all(global0.xz) | false), all(global0.zw), !func_3(false || global0.x, Struct_1(var_0.a, arg_0.a.zz)).x, u_input.c.x == _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-16573i, 9745i, u_input.c.x, u_input.a)), vec4<i32>(24181i, u_input.a, u_input.c.x, u_input.a)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, arg_0.b.x, global0.x)), _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.a.x))))))), true));
}

fn func_1() -> vec4<bool> {
    global0 = vec4<bool>(global0.x || true, false, any(global0.wzw), _wgslsmith_f_op_f32(868f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(u_input.b.xzx, vec4<f32>(498f, 220f, 154f, -706f), u_input.b.x))) * _wgslsmith_div_f32(-1134f, -1438f))) >= _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-364f * 1709f))))));
    let var_0 = u_input.b.ww;
    let var_1 = Struct_2(_wgslsmith_add_i32(u_input.a, 1i), func_3(global0.x, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 725f, 339f) - vec3<f32>(882f, -1125f, -1244f)), var_0)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-298f, 806f, 1614f) - vec3<f32>(1204f, -231f, 253f))))), var_0));
    global0 = vec4<bool>(!any(global0.zw), any(!vec4<bool>(!global0.x, true, var_1.c.a.x <= -1474f, true)), any(var_1.b.xw), any(select(global0.xy, select(select(var_1.b.xx, global0.zy, var_1.b.x), !var_1.b.yw, global0.wy), !var_1.b.wx)));
    var var_2 = var_1.c.a.x;
    return !(!select(select(var_1.b, var_1.b, vec4<bool>(var_1.b.x, true, global0.x, var_1.b.x)), vec4<bool>(true, any(var_1.b), !var_1.b.x, var_1.b.x & global0.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !func_1();
    var var_0 = Struct_2(u_input.a, select(func_1(), !vec4<bool>(global0.x, 55602i == u_input.c.x, true, any(global0.wwx)), vec4<bool>(true, 45655i == -u_input.c.x, any(func_1().zy), !select(true, global0.x, global0.x))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1051f, 1226f, 163f)) + vec3<f32>(-347f, -191f, 1000f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-602f, -144f, -951f)))), u_input.b.zy ^ vec2<u32>(~u_input.b.x, abs(30963u))));
    var_0 = Struct_2(-41290i, vec4<bool>(true, !global0.x, var_0.b.x, false), Struct_1(var_0.c.a, vec2<u32>(firstLeadingBit(0u), 1u)));
    let var_1 = Struct_2(abs(firstTrailingBit(firstTrailingBit(-28769i << (var_0.c.b.x % 32u)))), var_0.b, Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(321f, 1270f, var_0.c.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a.x, -468f, -467f) + var_0.c.a)), func_1().xxz)), vec2<u32>(u_input.b.x, var_0.c.b.x)));
    var_0 = var_1;
    var_0 = Struct_2(i32(-1i) * -1i, !var_0.b, var_0.c);
    let var_2 = Struct_5(_wgslsmith_dot_vec2_u32(countOneBits(min(vec2<u32>(4294967295u, var_1.c.b.x), vec2<u32>(1u, 19944u))), ~(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.c.b.x, u_input.b.x), var_1.c.b) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(0u, 48695u)) % vec2<u32>(32u)))), ~(~(~(~12585u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec2_u32(u_input.b.xy | vec2<u32>(var_2.a, 27384u), abs(u_input.b.yx & var_0.c.b), _wgslsmith_div_vec2_u32(~vec2<u32>(25529u, var_2.b), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), var_0.c.b))), firstTrailingBit(var_1.c.b), var_1.b.xz), ~abs(select(u_input.b.wxz, abs(vec3<u32>(12476u, 0u, 2717u)), var_1.c.a.x <= var_1.c.a.x)), firstLeadingBit(_wgslsmith_mod_u32(31204u, var_2.a) >> (~(~var_1.c.b.x) % 32u)), vec4<u32>(~1u ^ u_input.b.x, 1u, u_input.b.x & ~47654u, ~19774u) | ~u_input.b);
}

