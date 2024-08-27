struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(82216u, 39186u, 0u, 0u));

var<private> global2: Struct_5 = Struct_5(vec2<bool>(false, false), 29640u, -16115i, Struct_1(vec4<u32>(0u, 4294967295u, 10506u, 0u)), vec3<bool>(true, true, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> vec3<bool> {
    var var_0 = Struct_2(-abs(u_input.a.x), select(select(u_input.a, vec4<i32>(arg_0.a, global2.c, -3103i, -74894i), false && global2.a.x) << (vec4<u32>(4294967295u, ~arg_0.c.a.x, _wgslsmith_mult_u32(1u, 32963u), 1980u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(2147483647i, 17451i, u_input.a.x, global2.c)) ^ vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.a, arg_0.a, 2147483647i, global2.c), u_input.d), 0i, ~u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.c, -7005i), u_input.a.wx)), !(true | global2.a.x)), arg_0.b.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-587f, -803f, arg_0.b.d.x, arg_0.b.d.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b.d * vec4<f32>(-350f, arg_0.b.d.x, 641f, arg_0.b.d.x)))), vec4<f32>(arg_0.b.d.x, _wgslsmith_f_op_f32(max(-370f, 1000f)), _wgslsmith_f_op_f32(min(arg_0.b.d.x, -1159f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0.b.d.x, -984f)))))));
    global1 = Struct_1(~(~vec4<u32>(29939u, _wgslsmith_mult_u32(global1.a.x, arg_0.c.a.x), 57637u, 4294967295u)));
    var var_1 = Struct_5(arg_0.b.c.zy, 15888u, -2147483647i, arg_0.c, vec3<bool>(false, !(~60600u >= ~global1.a.x), global2.b == _wgslsmith_mod_u32(_wgslsmith_mult_u32(121506u, arg_0.c.a.x), ~1u)));
    global1 = arg_0.c;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(328f)), -233f, true))) * arg_0.b.d.x), _wgslsmith_f_op_f32(-arg_0.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f)));
    return var_1.e;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> f32 {
    global0 = select(select(select(func_3(Struct_3(-57878i, Struct_2(global2.c, u_input.a, vec4<bool>(true, true, global2.a.x, true), vec4<f32>(981f, 215f, 182f, 1000f)), arg_1), global0.x), !(!global2.e), global2.e), select(!select(global2.e, vec3<bool>(global0.x, global0.x, false), vec3<bool>(global2.e.x, global0.x, global2.a.x)), select(global2.e, vec3<bool>(true, global2.e.x, global2.a.x), global2.e), vec3<bool>(global2.a.x, true, global0.x)), !func_3(Struct_3(1i, Struct_2(-59720i, vec4<i32>(arg_2, 8859i, 20425i, -12503i), vec4<bool>(global2.e.x, true, global2.a.x, global0.x), vec4<f32>(-370f, 715f, -1000f, 655f)), Struct_1(arg_0.a)), true)), vec3<bool>(true, !select(true, select(global0.x, global0.x, global2.a.x), func_3(Struct_3(2147483647i, Struct_2(-2147483647i, u_input.d, vec4<bool>(global2.a.x, global2.a.x, true, false), vec4<f32>(492f, -1656f, 189f, 120f)), arg_0), false).x), arg_2 != ~(-4898i)), true);
    let var_0 = select(max(u_input.a.wz, u_input.a.zy), u_input.d.yx, true) << ((~(~vec2<u32>(31767u, arg_1.a.x)) ^ select(reverseBits(arg_0.a.zz), vec2<u32>(~0u, ~global1.a.x), all(global0.yy))) % vec2<u32>(32u));
    let var_1 = -2147483647i;
    return -350f;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = vec3<u32>(~(~global2.d.a.x), _wgslsmith_dot_vec3_u32(global1.a.yzx, global1.a.wyw), firstTrailingBit(global1.a.x));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1305f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -925f)))) + _wgslsmith_f_op_f32(floor(1099f))), arg_0.x);
    var_0 = select(abs(~global1.a.zyx), ~global1.a.yyy, global0.x);
    global0 = func_3(Struct_3(reverseBits(global2.c), Struct_2(1i, abs(max(vec4<i32>(32667i, global2.c, 3026i, global2.c), vec4<i32>(0i, 25467i, 34908i, 0i))), select(select(vec4<bool>(false, global2.a.x, global0.x, true), vec4<bool>(true, false, true, global2.a.x), true), select(vec4<bool>(global2.a.x, false, global2.e.x, false), vec4<bool>(global2.e.x, global0.x, false, true), false), !vec4<bool>(global0.x, false, false, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_1.x, 1302f, arg_1.x))), global2.d), func_3(Struct_3(firstTrailingBit(17058i), Struct_2(global2.c, vec4<i32>(-2147483647i, 1i, global2.c, 2147483647i), vec4<bool>(global0.x, true, global2.e.x, global0.x), vec4<f32>(arg_0.x, var_1.x, arg_0.x, var_1.x)), global2.d), global2.e.x).x | (select(global2.e.x && global2.e.x, true, false) || all(vec4<bool>(global2.e.x, true, false, false))));
    global2 = Struct_5(select(global2.e.yx, vec2<bool>(true, !all(vec4<bool>(global2.e.x, global0.x, false, false))), func_3(Struct_3(21517i, Struct_2(u_input.d.x, u_input.d, vec4<bool>(true, global0.x, true, global0.x), vec4<f32>(-429f, arg_0.x, 1000f, arg_0.x)), Struct_1(vec4<u32>(global1.a.x, var_0.x, 111369u, var_0.x))), any(!global0.zy)).yx), var_0.x, ~_wgslsmith_sub_i32(-u_input.d.x, 8216i) | 0i, global2.d, global2.e);
    return Struct_1(global1.a);
}

fn func_1() -> u32 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(829f, 669f, 358f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1198f, 1474f, -1512f) + vec3<f32>(-572f, 470f, 786f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(706f, -1157f, 955f), vec3<f32>(-631f, 880f, -745f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-319f, _wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(4294967295u, global1.a.x, 1u, 38910u)), global2.d, u_input.b)), _wgslsmith_f_op_f32(max(-705f, 229f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, 841f, -898f)) * vec3<f32>(890f, 737f, 1259f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(112f, -707f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-350f + _wgslsmith_f_op_f32(508f * -2065f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-780f)) - _wgslsmith_div_f32(131f, -303f)))));
    var var_2 = Struct_2(reverseBits(global2.c), vec4<i32>(2147483647i, abs(_wgslsmith_dot_vec2_i32(~u_input.d.zw, ~vec2<i32>(u_input.c, u_input.d.x))), max(min(1i, ~global2.c), _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.d.zx))), _wgslsmith_add_i32(firstLeadingBit(global2.c), abs(u_input.d.x)) << ((0u >> (~var_0.a.x % 32u)) % 32u)), select(vec4<bool>(false, global0.x, all(global0.zy), false), select(select(vec4<bool>(true, false, global0.x, global0.x), !vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(true, global2.e.x, global2.e.x, global2.e.x)), vec4<bool>(true, global0.x | global0.x, global0.x, any(vec4<bool>(global2.a.x, false, true, false))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, global2.a.x, false)), vec4<bool>(global0.x, false, true, false), !vec4<bool>(false, global0.x, true, global2.a.x))), !(!(!vec4<bool>(true, global2.a.x, global0.x, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 112f, 610f, 884f) * vec4<f32>(-255f, -1206f, 2045f, 553f)), vec4<f32>(-1729f, 269f, -757f, 765f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1236f, 408f, -147f, -340f))))));
    var var_3 = global2.d;
    var_1 = _wgslsmith_f_op_f32(round(var_2.d.x));
    return func_4(var_2.d.ywy, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-998f)), _wgslsmith_f_op_f32(step(var_2.d.x, var_2.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d.yw))))).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_5(vec2<bool>(global0.x, true), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(37006u, max(1u, global2.b)), max(57458u, abs(global2.d.a.x)) ^ (global1.a.x >> (7975u % 32u)), func_1()), ~u_input.c >> (global2.d.a.x % 32u), global2.d, !select(func_3(Struct_3(u_input.b, Struct_2(global2.c, vec4<i32>(-2147483647i, 0i, global2.c, global2.c), vec4<bool>(global0.x, global0.x, global0.x, global2.e.x), vec4<f32>(1446f, -342f, 1286f, -1441f)), global2.d), true), select(!global2.e, vec3<bool>(global0.x, true, true), func_3(Struct_3(global2.c, Struct_2(-1i, vec4<i32>(global2.c, global2.c, global2.c, u_input.d.x), vec4<bool>(true, global0.x, true, global2.e.x), vec4<f32>(-502f, 932f, -343f, 1919f)), global2.d), global0.x).x), vec3<bool>(false, global1.a.x <= global1.a.x, !global2.a.x)));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1154f);
    global2 = Struct_5(select(select(vec2<bool>(true, select(global2.e.x, true, global0.x)), select(vec2<bool>(true, true), vec2<bool>(false, global0.x), !vec2<bool>(global0.x, false)), false || func_3(Struct_3(global2.c, Struct_2(global2.c, u_input.d, vec4<bool>(true, global2.a.x, global2.e.x, global2.e.x), vec4<f32>(var_0, var_0, var_0, 821f)), global2.d), false).x), vec2<bool>(max(-24531i, u_input.c) > -1i, global0.x), !func_3(Struct_3(1i, Struct_2(global2.c, u_input.a, vec4<bool>(true, global0.x, true, global2.e.x), vec4<f32>(var_0, 205f, 497f, var_0)), global2.d), all(vec4<bool>(global0.x, false, global0.x, global0.x))).x), _wgslsmith_mod_u32(select(global1.a.x, 85755u, !any(vec2<bool>(true, true))), 60327u), u_input.c, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, -1512f, var_0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1292f, -1705f) + vec3<f32>(var_0, 141f, var_0)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0))), _wgslsmith_div_vec2_f32(vec2<f32>(1125f, var_0), vec2<f32>(775f, var_0)))))), !global2.e);
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(global2.d.a.zyz, _wgslsmith_clamp_vec3_u32(min(_wgslsmith_mod_vec3_u32(global2.d.a.xyy, vec3<u32>(35592u, 0u, 4294967295u)), firstLeadingBit(vec3<u32>(30095u, 4294967295u, 1u))), global2.d.a.zyy, vec3<u32>(10947u, global2.b & global2.d.a.x, 1u))), global2.d.a.wxx);
    global2 = Struct_5(select(select(!global2.a, !select(global2.e.xz, global0.zy, global0.x), global2.e.x), global2.e.xz, select(select(select(global0.xy, global0.yy, global2.e.yy), global2.e.yz, false), global0.xz, !global2.a)), abs(reverseBits(var_1.x)) & _wgslsmith_add_u32(~global1.a.x ^ 20575u, 1u), u_input.c, global2.d, vec3<bool>(global2.a.x, false, !(!(-2486f > var_0))));
    var var_2 = u_input.d.wx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -530f))))), -select(u_input.d.ywy, _wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.c, var_2.x, u_input.a.x), vec3<i32>(1i, u_input.a.x, -12985i)), u_input.d.ywz >> (vec3<u32>(global2.b, global2.d.a.x, global2.d.a.x) % vec3<u32>(32u))), true));
}

