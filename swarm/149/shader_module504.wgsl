struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<u32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3) -> vec4<u32> {
    global0 = select(!arg_0.a.d.x, !(!(!arg_0.a.b.a)), arg_2.c.a);
    let var_0 = arg_2.a.b;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(arg_2.a.a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(2291f, arg_2.a.a.x), -1234f, _wgslsmith_f_op_f32(-arg_0.a.a.x), _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(130f, 193f, arg_0.a.a.x, arg_0.a.a.x)))), arg_0.a.d.x)), arg_0.c, firstTrailingBit(~vec2<u32>(_wgslsmith_div_u32(7990u, arg_0.a.c.x), min(2278u, global1.x))), select(vec2<bool>(true, true), !arg_0.a.d, !(true || (arg_1.x < global1.x))), 0i);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_2.a.a.x))));
    global0 = true;
    return vec4<u32>(arg_2.a.c.x, _wgslsmith_dot_vec2_u32(min(_wgslsmith_mod_vec2_u32(max(vec2<u32>(0u, arg_1.x), global1.wz), arg_1), arg_0.a.c), vec2<u32>(arg_1.x, ~arg_2.a.c.x)), _wgslsmith_dot_vec2_u32(u_input.b.xz, abs(arg_2.a.c)), 5966u);
}

fn func_2() -> f32 {
    global1 = ~func_3(Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(722f, -1000f, -1323f, -349f)), Struct_1(false), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 94732u), vec2<u32>(u_input.b.x, 31256u)), vec2<bool>(true, true), u_input.a), -vec4<i32>(u_input.a, u_input.c.x, 2147483647i, 0i), Struct_1(false)), _wgslsmith_mod_vec2_u32(u_input.b.xz, global1.zw), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -203f, -502f, -264f)), Struct_1(false), ~vec2<u32>(u_input.b.x, global1.x), select(vec2<bool>(false, true), vec2<bool>(false, false), true), -34031i), vec4<i32>(u_input.c.x << (4294967295u % 32u), i32(-1i) * -24021i, _wgslsmith_sub_i32(-2147483647i, u_input.c.x), -2147483647i), Struct_1(true)));
    var var_0 = _wgslsmith_dot_vec2_u32(~(~(u_input.b.yy & u_input.b.xy) >> (abs(vec2<u32>(1u, u_input.b.x)) % vec2<u32>(32u))), ~(~(~vec2<u32>(10355u, global1.x)) >> (_wgslsmith_mult_vec2_u32(global1.zx & u_input.b.zy, ~vec2<u32>(u_input.b.x, global1.x)) % vec2<u32>(32u))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-515f, -583f, -1089f, -398f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-857f, 292f, 1631f, 1032f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -651f, 164f, 597f), vec4<f32>(1000f, 814f, -1355f, 294f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2464f, 169f, 1915f, -1652f), vec4<f32>(-367f, -268f, -411f, -1000f)))), !any(vec3<bool>(false, true, true))))), Struct_1(u_input.b.x <= ~global1.x), ~((vec2<u32>(93956u, 59755u) << (firstTrailingBit(vec2<u32>(global1.x, u_input.b.x)) % vec2<u32>(32u))) >> (global1.ww % vec2<u32>(32u))), select(vec2<bool>(true, all(vec4<bool>(false, false, false, true))), !vec2<bool>(all(vec3<bool>(true, true, false)), all(vec2<bool>(false, false))), select(vec2<bool>(false, false), vec2<bool>(all(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, true, false))), true)), ~select(u_input.a, u_input.c.x, true));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a - vec4<f32>(var_1.a.x, -1000f, -1042f, var_1.a.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a.x, -751f, var_1.a.x, var_1.a.x), var_1.a)))), Struct_1(all(vec3<bool>(var_1.b.a, var_1.d.x, var_1.b.a))), u_input.b.zx ^ ~(var_1.c | vec2<u32>(var_1.c.x, var_1.c.x)), select(var_1.d, vec2<bool>(var_1.b.a && var_1.b.a, var_1.b.a), select(!var_1.d.x, 1u > var_1.c.x, true)), ~_wgslsmith_mult_i32(~2147483647i, var_1.e)), firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(-88840i, u_input.a) & _wgslsmith_mod_i32(u_input.a, u_input.c.x), -min(2147483647i, var_1.e), abs(_wgslsmith_sub_i32(u_input.a, u_input.c.x)), var_1.e)), var_1.b);
    var var_3 = select(vec2<bool>(64369u >= u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-429f, var_2.a.a.x)) + _wgslsmith_f_op_f32(-var_2.a.a.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-554f + var_1.a.x))), vec2<bool>(false, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), !vec3<bool>(false, var_2.a.d.x, var_2.c.a)))), any(select(vec3<bool>(var_1.b.a, false, var_1.b.a), vec3<bool>(all(vec2<bool>(var_1.d.x, false)), true, any(vec4<bool>(true, true, true, true))), true)));
    return -307f;
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: bool) -> Struct_2 {
    global0 = arg_2;
    var var_0 = u_input.c;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) * arg_0.b)), arg_1, _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-455f * arg_0.b), -396f))))), _wgslsmith_f_op_f32(f32(-1f) * -442f));
    var_0 = u_input.c;
    var var_2 = -vec2<i32>(var_0.x, abs(var_0.x));
    return Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1576f, _wgslsmith_f_op_f32(arg_1 - 574f), var_1.x, _wgslsmith_f_op_f32(arg_1 * var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(316f, arg_1, var_1.x, arg_1) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1280f, arg_1, arg_0.b) + vec4<f32>(arg_1, arg_1, 211f, var_1.x)))))), Struct_1(all(vec3<bool>(-1000f == var_1.x, arg_2, 4294967295u <= global1.x))), global1.yw, !select(!(!vec2<bool>(arg_2, arg_2)), vec2<bool>(true, !arg_2), select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, false), vec2<bool>(arg_2, arg_2)), select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, false), true), vec2<bool>(arg_2, arg_2))), 2147483647i);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global1 = abs(vec4<u32>(global1.x << (88505u % 32u), 1u, ~_wgslsmith_div_u32(16280u, reverseBits(78985u)), ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.b.x, 0u), vec2<u32>(28548u, 57775u)), vec2<u32>(global1.x, arg_0.c.x))));
    var var_0 = 28448i;
    let var_1 = Struct_4(u_input.c.xxz, -186f);
    let var_2 = vec2<bool>(!(!(true || arg_0.d.x)), !(false && all(select(vec4<bool>(arg_0.d.x, true, false, false), vec4<bool>(false, false, false, arg_0.d.x), arg_0.d.x))));
    var var_3 = select(select(vec4<bool>(all(vec3<bool>(arg_0.b.a, arg_0.b.a, false)), true, true, !any(vec4<bool>(false, true, var_2.x, true))), select(select(!vec4<bool>(arg_0.b.a, var_2.x, false, arg_0.d.x), select(vec4<bool>(arg_0.d.x, var_2.x, false, var_2.x), vec4<bool>(true, false, true, false), vec4<bool>(arg_0.d.x, false, false, arg_0.d.x)), !vec4<bool>(arg_0.b.a, arg_0.b.a, false, var_2.x)), select(!vec4<bool>(var_2.x, var_2.x, var_2.x, true), !vec4<bool>(true, false, true, var_2.x), vec4<bool>(false, false, var_2.x, var_2.x)), var_2.x), select(vec4<bool>(var_1.b <= 960f, 29393i == var_1.a.x, false, var_2.x), vec4<bool>(arg_0.d.x, u_input.c.x >= u_input.c.x, var_1.b >= -897f, true && arg_0.d.x), select(!vec4<bool>(false, true, var_2.x, true), !vec4<bool>(arg_0.b.a, var_2.x, var_2.x, var_2.x), select(vec4<bool>(true, arg_0.d.x, arg_0.d.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true), arg_0.d.x)))), !select(!(!vec4<bool>(false, false, var_2.x, true)), select(select(vec4<bool>(false, true, false, arg_0.d.x), vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true)), vec4<bool>(arg_0.d.x, false, false, arg_0.b.a), vec4<bool>(true, true, true, true)), select(!vec4<bool>(arg_0.d.x, true, false, var_2.x), vec4<bool>(var_2.x, false, var_2.x, arg_0.b.a), false | arg_0.d.x)), !(!(!any(vec2<bool>(arg_0.b.a, false)))));
    return func_4(var_1, 715f, true).b;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec2<u32>) -> i32 {
    var var_0 = -1236f;
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(~((-10298i ^ arg_1.e) << (~arg_1.c.x % 32u)), u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(53881i, ~arg_0.a.x), vec2<i32>(_wgslsmith_add_i32(0i, u_input.a), arg_1.e >> (arg_2.x % 32u))) << (_wgslsmith_add_vec2_u32(vec2<u32>(43647u, ~4294967295u), ~_wgslsmith_mult_vec2_u32(arg_3, arg_3)) % vec2<u32>(32u)));
    var var_2 = func_5(func_4(Struct_4(abs(arg_0.a), arg_0.b), _wgslsmith_f_op_f32(func_2()), arg_1.d.x));
    var var_3 = arg_0.a.xy;
    let var_4 = vec2<u32>(1u, ~countOneBits(0u));
    return _wgslsmith_mod_i32(-(firstTrailingBit(-u_input.c.x) & _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, u_input.a), func_4(Struct_4(vec3<i32>(-32628i, -1i, arg_1.e), -904f), arg_0.b, false).e)), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_sub_i32(func_1(Struct_4(vec3<i32>(u_input.a, u_input.c.x, -53566i), -1518f), Struct_2(vec4<f32>(1462f, 980f, 358f, 1000f), Struct_1(false), u_input.b.yx, vec2<bool>(false, true), 0i), vec4<u32>(1u, u_input.b.x, global1.x, u_input.b.x), u_input.b.xx), -28003i & u_input.c.x), max(3532i, u_input.c.x)), ~u_input.c.xyy));
    let var_1 = select(reverseBits(u_input.b.x), 4294967295u, false);
    global1 = vec4<u32>(reverseBits(1u) | var_1, var_1, ~(~global1.x), 13826u);
    var_0 = abs(reverseBits(u_input.c.yxx));
    let var_2 = global1.wxx;
    let var_3 = !(((_wgslsmith_f_op_f32(ceil(-1036f)) < _wgslsmith_f_op_f32(abs(1225f))) && (_wgslsmith_f_op_f32(f32(-1f) * -444f) < _wgslsmith_f_op_f32(sign(-1237f)))) | func_4(Struct_4(-u_input.c.xyz, _wgslsmith_f_op_f32(floor(1218f))), _wgslsmith_f_op_f32(-1514f + -360f), true).b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(u_input.b.x, 46946u, ~1u)), ~(~vec3<u32>(var_2.x, var_2.x, 16247u))), vec2<i32>(_wgslsmith_mod_i32(0i, 1i ^ func_4(Struct_4(vec3<i32>(-1i, 1i, -39905i), -166f), 770f, true).e), ~min(min(u_input.c.x, -3302i), u_input.a)), ~(~u_input.c.x), _wgslsmith_sub_vec3_u32(countOneBits(~(u_input.b | vec3<u32>(u_input.b.x, 55661u, var_1))), global1.yxy));
}

