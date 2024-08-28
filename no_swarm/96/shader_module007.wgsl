struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<f32> = vec4<f32>(191f, 911f, -1000f, 843f);

var<private> global2: array<bool, 20>;

var<private> global3: Struct_3 = Struct_3(false, vec4<bool>(true, true, true, false), vec3<f32>(963f, 1809f, -409f), Struct_1(vec2<u32>(43136u, 0u), 1u));

var<private> global4: array<Struct_3, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: Struct_4) -> bool {
    global3 = Struct_3(any(select(vec4<bool>(false, !global3.a, false & global2[_wgslsmith_index_u32(global3.d.b, 20u)], arg_3.c), select(global3.b, global3.b, select(vec4<bool>(arg_1.c, global2[_wgslsmith_index_u32(11565u, 20u)], false, true), vec4<bool>(global0.a, global0.a, false, false), true)), vec4<bool>(global2[_wgslsmith_index_u32(8169u, 20u)] && global0.a, true, arg_2.x == -437f, true))), global3.b, global1.zwy, global3.d);
    var var_0 = Struct_2(~(i32(-1i) * -41331i), global0.d.a.x, global0.b.zww, select(vec3<bool>(arg_3.c, !arg_1.c, !all(vec4<bool>(arg_3.c, true, arg_3.c, global0.b.x))), select(!select(global0.b.wyy, global3.b.xww, global0.b.xzx), !select(vec3<bool>(arg_3.c, true, false), global0.b.wzz, true), vec3<bool>(true, all(global3.b.yx), true)), !arg_3.c), firstTrailingBit(_wgslsmith_clamp_vec3_u32(u_input.e, _wgslsmith_mod_vec3_u32(max(vec3<u32>(83924u, global3.d.b, global0.d.b), u_input.e), vec3<u32>(55537u, 6754u, 46599u)), _wgslsmith_mod_vec3_u32(~u_input.e, u_input.e ^ vec3<u32>(u_input.d, 1u, 45334u)))));
    var var_1 = _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(reverseBits(-23664i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.b.x), u_input.c)) << (~(~global3.d.a) % vec2<u32>(32u))), u_input.c.xz);
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(415f, 893f, var_0.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-670f - -173f))), 1931f)))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(min(global3.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(min(927f, 345f))), global1.x)))), global0.c.x);
    return false;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> i32 {
    global4 = array<Struct_3, 13>();
    global0 = Struct_3(func_3(global0.c.x, Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c.x - global3.c.x), _wgslsmith_f_op_f32(513f + global0.c.x)), global3.c.x, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3.c.x, -619f)), -1000f)), global1.wyw, Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.c.x)) * _wgslsmith_f_op_f32(-global1.x)), global3.c.x, select(false, true, global0.b.x), global3.c.x)), !global0.b, global1.wzz, Struct_1(firstTrailingBit(u_input.e.zz), arg_0.x));
    global2 = array<bool, 20>();
    var var_0 = -8700i;
    global3 = global4[_wgslsmith_index_u32(min(11957u, global3.d.a.x), 13u)];
    return abs(u_input.c.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(~func_2(arg_0.e, global0.d.b), _wgslsmith_clamp_i32(u_input.b.x, -arg_0.a, 0i), _wgslsmith_sub_i32(-2147483647i | arg_1.x, firstTrailingBit(-19231i))), 1i, -_wgslsmith_div_i32(_wgslsmith_div_i32(22979i, u_input.c.x), 11626i), ~0i) | vec4<i32>(func_2(~_wgslsmith_mult_vec3_u32(u_input.e, vec3<u32>(6654u, 26679u, 40174u)), arg_0.b), 0i, 1i, -1i);
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1338f)), _wgslsmith_f_op_f32(-global0.c.x), -7307i < u_input.b.x)), arg_3.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c.x), global0.c.x)))));
    let var_1 = u_input.e;
    var var_2 = true;
    var var_3 = vec3<bool>(global2[_wgslsmith_index_u32(arg_0.e.x >> (1u % 32u), 20u)], !arg_2.x, all(vec2<bool>(false, arg_0.d.x && arg_2.x)));
    return Struct_2((-_wgslsmith_mod_i32(2147483647i, 21613i) ^ countOneBits(u_input.b.x)) & arg_0.a, var_1.x, select(!vec3<bool>(false, u_input.c.x <= u_input.b.x, true), global3.b.zzx, true & (func_3(-950f, Struct_4(global1.x, -487f, arg_3.b.x, 979f), global3.c, Struct_4(1222f, -515f, global0.b.x, 191f)) | var_3.x)), select(!(!select(arg_0.c, vec3<bool>(false, true, true), arg_3.a)), select(vec3<bool>(true, u_input.d > arg_0.e.x, false), vec3<bool>(arg_2.x || var_3.x, true, select(true, arg_3.b.x, true)), select(select(arg_3.b.yyw, global3.b.xyw, global0.a), !global0.b.zwx, 4294967295u > arg_0.b)), vec3<bool>(global2[_wgslsmith_index_u32(1u, 20u)], !select(true, true, false), false)), vec3<u32>(~(_wgslsmith_add_u32(global0.d.a.x, 4294967295u) ^ var_1.x), 1u, 7632u));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec2<i32>) -> bool {
    let var_0 = global0.d;
    global2 = array<bool, 20>();
    global2 = array<bool, 20>();
    var var_1 = arg_2.c;
    var var_2 = func_1(arg_1, _wgslsmith_add_vec3_i32(u_input.c, max(vec3<i32>(-41675i, 0i, arg_0), select(_wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(arg_0, arg_0, -2147483647i)), vec3<i32>(u_input.c.x, arg_0, -56587i), vec3<bool>(arg_2.c, true, global0.b.x)))), select(select(select(!global0.b, !vec4<bool>(false, global0.b.x, false, false), !global2[_wgslsmith_index_u32(global0.d.a.x, 20u)]), global0.b, select(vec4<bool>(arg_1.d.x, global3.b.x, global2[_wgslsmith_index_u32(6289u, 20u)], false), global3.b, global2[_wgslsmith_index_u32(~arg_1.e.x, 20u)])), vec4<bool>(global3.a, firstTrailingBit(-35007i) == u_input.b.x, func_1(func_1(Struct_2(2147483647i, 27361u, vec3<bool>(true, arg_2.c, true), vec3<bool>(global3.a, arg_2.c, false), vec3<u32>(13165u, global3.d.a.x, u_input.e.x)), u_input.c, global0.b, Struct_3(true, global3.b, global3.c, global3.d)), _wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(0i, 1i, 28626i)), !vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(4294967295u, 20u)]), Struct_3(true, global0.b, vec3<f32>(global1.x, 188f, global0.c.x), global0.d)).d.x, !arg_2.c && !global3.a), func_1(func_1(func_1(arg_1, vec3<i32>(65390i, arg_3.x, u_input.b.x), vec4<bool>(global0.a, arg_1.d.x, false, true), Struct_3(global0.a, global0.b, global3.c, global0.d)), u_input.c, select(global3.b, global3.b, global0.b), Struct_3(false, vec4<bool>(false, arg_2.c, global3.a, global0.a), global1.yyz, global3.d)), vec3<i32>(_wgslsmith_add_i32(arg_0, arg_0), i32(-1i) * -35500i, -12109i), !global0.b, global4[_wgslsmith_index_u32(~1u, 13u)]).d.x), global4[_wgslsmith_index_u32(reverseBits(0u), 13u)]);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(global0.d.b >> (_wgslsmith_sub_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), ~16444u), global0.d.a.x) % 32u), 13u)];
    var var_1 = vec3<bool>(false, func_4(1i, func_1(Struct_2(reverseBits(306i), u_input.e.x, global0.b.wyx, !vec3<bool>(false, false, global2[_wgslsmith_index_u32(global3.d.a.x, 20u)]), ~u_input.e), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.b.x), u_input.c), select(global0.b, global0.b, select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 20u)], var_0.a, false, true), vec4<bool>(true, var_0.b.x, true, true), false)), Struct_3(u_input.b.x > u_input.c.x, vec4<bool>(global2[_wgslsmith_index_u32(19135u, 20u)], global3.a, true, global3.b.x), _wgslsmith_f_op_vec3_f32(-global1.wxy), Struct_1(vec2<u32>(global0.d.b, u_input.d), var_0.d.a.x))), Struct_4(_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(abs(global3.c.x))), _wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(-global1.x)), !all(vec3<bool>(false, true, true)), global3.c.x), u_input.b), any(select(select(!vec3<bool>(var_0.a, true, global3.b.x), !global0.b.yzw, global2[_wgslsmith_index_u32(select(56719u, u_input.a, true), 20u)]), select(global0.b.xww, !vec3<bool>(global2[_wgslsmith_index_u32(global0.d.a.x, 20u)], global2[_wgslsmith_index_u32(global0.d.b, 20u)], var_0.a), global2[_wgslsmith_index_u32(~var_0.d.b, 20u)]), true)));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(round(3087f)), global0.c.x, _wgslsmith_f_op_f32(min(global3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * -1000f)))), global3.c.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, var_0.c.x, 644f, -1098f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(657f, -3074f, -830f, global0.c.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global0.c.x, 368f, -1888f))), global0.b.x && true)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.x, global1.x, global3.c.x))) - vec3<f32>(530f, _wgslsmith_f_op_f32(step(1000f, -344f)), _wgslsmith_f_op_f32(max(global3.c.x, global1.x))))), vec3<f32>(-361f, var_2.x, _wgslsmith_f_op_f32(select(-161f, var_2.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(min(firstLeadingBit(-1i), u_input.b.x << (0u % 32u))));
}

