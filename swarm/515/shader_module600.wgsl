struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(49059u, 15999u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> vec2<i32> {
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(0u, global0.x), min(u_input.b.xz, firstLeadingBit(u_input.b.xy) >> (~(~vec2<u32>(0u, u_input.b.x)) % vec2<u32>(32u))));
    let var_0 = ~((vec3<i32>(-1i) * -vec3<i32>(-16770i, arg_1.a.x, -1i)) << (u_input.b % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(~u_input.c, vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, 0i) | 1i, 3790i, ~(-39110i)));
    var var_1 = Struct_5(!vec4<bool>(arg_0.a, true, any(vec2<bool>(false, arg_0.a)), reverseBits(-1i) != countOneBits(arg_3)), ~0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)), vec3<u32>(global0.x, ~1u, 33029u), var_0);
    global0 = vec2<u32>(16572u, _wgslsmith_mult_u32(var_1.b, ~1u));
    let var_2 = Struct_3(-u_input.c.yx);
    return ~min(vec2<i32>(15496i, reverseBits(arg_1.a.x) << (~u_input.d.x % 32u)), var_0.zz);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_2, arg_2: u32) -> vec2<bool> {
    let var_0 = -func_3(arg_1, Struct_3(_wgslsmith_clamp_vec2_i32(u_input.c.yy, arg_0.e.yy, arg_0.e.zz & arg_0.e.xy)), _wgslsmith_f_op_f32(f32(-1f) * -551f), _wgslsmith_div_i32(abs(arg_0.e.x), ~(-67478i)));
    let var_1 = arg_0.a.x;
    var var_2 = select(abs(firstLeadingBit(-(~vec4<i32>(arg_0.e.x, arg_0.e.x, 70257i, var_0.x)))), abs(min(vec4<i32>(arg_0.e.x, arg_0.e.x ^ 2147483647i, 0i | arg_0.e.x, reverseBits(27987i)), -vec4<i32>(arg_0.e.x, arg_0.e.x, arg_0.e.x, 2147483647i))), _wgslsmith_dot_vec2_i32(var_0, _wgslsmith_clamp_vec2_i32(~u_input.c.xy, ~vec2<i32>(u_input.c.x, arg_0.e.x), vec2<i32>(arg_0.e.x, u_input.c.x))) <= arg_0.e.x);
    let var_3 = vec4<bool>(true, false, var_1 && true, arg_1.a);
    var var_4 = Struct_1(arg_0.c);
    return select(!(!(!select(vec2<bool>(var_1, arg_1.a), var_3.yx, var_3.x))), select(vec2<bool>(true, !(arg_1.a | true)), vec2<bool>(!(true && arg_0.a.x), true), !select(!var_3.wz, !arg_0.a.xz, select(var_3.yx, vec2<bool>(var_1, var_1), arg_0.a.yw))), !(!(!arg_0.a.zy)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_5 {
    var var_0 = ~_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(1u, abs(u_input.d.x))), ~select(~u_input.d, u_input.d, true));
    var var_1 = !any(!func_2(Struct_5(vec4<bool>(true, false, false, true), global0.x, arg_0.x, vec3<u32>(1u, 1u, var_0.x), u_input.c), Struct_2(false), max(31901u, u_input.d.x)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(abs(1116f))) - arg_0.x) - 2144f), 499f);
    var_1 = false;
    var var_3 = ~u_input.c.x;
    return Struct_5(vec4<bool>(true, true, true, true), _wgslsmith_clamp_u32(reverseBits(global0.x), var_0.x, _wgslsmith_clamp_u32(u_input.b.x, ~_wgslsmith_mod_u32(global0.x, 1u), _wgslsmith_clamp_u32(global0.x, ~var_0.x, ~var_0.x))), _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + -1100f))), -744f, _wgslsmith_f_op_f32(329f + var_2) != _wgslsmith_f_op_f32(f32(-1f) * -1305f))))), select(u_input.b, ~u_input.b, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))) != (any(vec3<bool>(false, true, false)) || true)), _wgslsmith_div_vec3_i32(u_input.c ^ _wgslsmith_div_vec3_i32(-vec3<i32>(12025i, u_input.c.x, -22382i), countOneBits(u_input.c)), u_input.c << (vec3<u32>(var_0.x >> (0u % 32u), 4294967295u, var_0.x) % vec3<u32>(32u))));
}

fn func_4(arg_0: bool, arg_1: Struct_5) -> f32 {
    let var_0 = u_input.b.xy;
    let var_1 = Struct_4(select(!arg_1.a.xxw, arg_1.a.yyx, vec3<bool>(true, any(vec2<bool>(false, arg_0)), !arg_0)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-625f + arg_1.c), _wgslsmith_f_op_f32(sign(1034f)))))));
    let var_3 = func_3(Struct_2(true), Struct_3(_wgslsmith_add_vec2_i32(~func_3(Struct_2(true), Struct_3(vec2<i32>(16617i, arg_1.e.x)), -1888f, -6752i), vec2<i32>(-11236i, 40043i) | arg_1.e.zy)), 1000f, _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_div_i32(arg_1.e.x, arg_1.e.x) | 1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, u_input.c.x, u_input.a.x, 18087i), ~vec4<i32>(62991i, arg_1.e.x, u_input.a.x, arg_1.e.x)), i32(-1i) * -abs(u_input.a.x))).x;
    let var_4 = _wgslsmith_mult_vec4_i32(~(~(~vec4<i32>(48324i, 0i, var_3, -1i) >> (select(vec4<u32>(15962u, 0u, arg_1.d.x, arg_1.d.x), vec4<u32>(global0.x, 11527u, var_0.x, 86423u), vec4<bool>(false, true, var_1.a.x, arg_0)) % vec4<u32>(32u)))), -vec4<i32>(-var_3, -2000i, 1i, -1i >> (0u % 32u)) >> (firstLeadingBit(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d.x, 18615u, var_0.x, global0.x)), countOneBits(vec4<u32>(u_input.b.x, u_input.d.x, 71022u, u_input.d.x)))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(471f, 1160f)) * arg_1.c) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-575f, arg_1.c))))));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = ~(vec4<u32>(0u, 2691u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.d), u_input.b.x, ~13917u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.d.x, global0.x, global0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(global0.x, global0.x, 4294967295u), vec3<u32>(global0.x, global0.x, 54927u)))) >> (firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.b.x, 0u, global0.x), ~vec4<u32>(4485u, 4294967295u, 2184u, 88686u))) % vec4<u32>(32u)));
    return Struct_2(func_2(func_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(412f, 1000f)))), Struct_2(any(arg_2.xz)), ~_wgslsmith_sub_u32(u_input.d.x, 1u)).x != ((_wgslsmith_dot_vec3_u32(var_0.yzw, vec3<u32>(u_input.b.x, global0.x, u_input.d.x)) & firstLeadingBit(4294967295u)) > 7333u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec2<u32>(_wgslsmith_sub_u32(~global0.x, ~(~u_input.d.x)), u_input.b.x);
    var var_0 = func_5(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(795f - -126f) - -651f), _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(func_4(true, func_1(_wgslsmith_div_vec2_f32(vec2<f32>(-253f, 1152f), vec2<f32>(-1000f, -904f)))))), any(!func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-439f, 865f) * vec2<f32>(-1966f, 191f))).a), vec4<bool>(!(~4294967295u != global0.x), false, !all(vec4<bool>(false, true, true, true)), !(!func_2(Struct_5(vec4<bool>(true, false, true, true), 120859u, 709f, u_input.b, u_input.c), Struct_2(true), global0.x).x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(180f + -213f), -1376f, _wgslsmith_f_op_f32(-453f * -528f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(916f, -1247f, 662f) - vec3<f32>(1380f, -1220f, -2961f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1206f, -207f, 755f) - vec3<f32>(-858f, 551f, -1142f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(1000f, 873f)), _wgslsmith_f_op_f32(func_4(true, Struct_5(vec4<bool>(true, false, var_0.a, var_0.a), 0u, -474f, vec3<u32>(4294967295u, 0u, global0.x), u_input.c))), -614f))));
    let var_2 = var_0.a;
    global0 = (~(vec2<u32>(u_input.b.x, 42569u) ^ u_input.b.zz) << (_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(20977u, 10644u)), u_input.b.zx) % vec2<u32>(32u))) ^ func_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.xx), _wgslsmith_f_op_vec2_f32(-var_1.zy)))))).d.zx;
    var var_3 = Struct_3(_wgslsmith_mod_vec2_i32(-(~u_input.c.xz), ~(select(vec2<i32>(-1i, -1i), u_input.c.yy, var_0.a) & vec2<i32>(u_input.a.x, 1i))));
    var_3 = Struct_3(select(-(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, var_3.a.x), var_3.a) ^ (vec2<i32>(2147483647i, -36541i) << (u_input.b.xy % vec2<u32>(32u)))), var_3.a, any(!(!vec3<bool>(var_0.a, var_0.a, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, u_input.d.x);
}

