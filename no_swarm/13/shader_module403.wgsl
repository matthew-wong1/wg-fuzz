struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<f32>, 27>;

var<private> global2: Struct_1;

var<private> global3: vec4<i32> = vec4<i32>(-26999i, 19963i, 40327i, 0i);

var<private> global4: vec4<f32> = vec4<f32>(-1197f, 350f, 1660f, -1042f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec3<u32>) -> vec4<i32> {
    var var_0 = true;
    let var_1 = true;
    var var_2 = vec3<i32>(u_input.b.x, 0i, arg_0.c.c.x);
    global2 = arg_0.b;
    var var_3 = arg_0.c.b.d;
    return vec4<i32>(_wgslsmith_div_i32(-u_input.b.x, _wgslsmith_mod_i32(global3.x, var_3.x)), min(-514i, (global3.x << (34310u % 32u)) ^ arg_0.c.c.x) >> (max(_wgslsmith_dot_vec3_u32(countOneBits(global2.a.xzw), firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 0u))), arg_2.x) % 32u), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global2.d.ww, global2.d.xw | vec2<i32>(5977i, 14916i)), global2.b), 13409i), var_3.x);
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_4(-_wgslsmith_mult_vec4_i32(vec4<i32>(global2.e.x, global2.b, 0i, -8899i) | global2.d, -func_3(Struct_3(257f, Struct_1(global2.a, -2147483647i, 4294967295u, global2.d, global3.wyy), Struct_2(vec4<bool>(true, false, true, true), Struct_1(global2.a, u_input.b.x, 83966u, vec4<i32>(global2.b, 11199i, 1i, global3.x), global2.e), vec4<i32>(-2147483647i, global3.x, 11268i, -1i)), vec3<f32>(429f, global4.x, global4.x)), 17989u, vec3<u32>(global2.a.x, 31886u, 18805u))));
    var var_1 = global4.x;
    global4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.x), 492f), global4.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global4.x, global4.x, global4.x), vec4<f32>(global4.x, global4.x, -556f, -341f), true)))) - vec4<f32>(-712f, -1654f, -599f, 1000f)))), _wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 27u)], global1[_wgslsmith_index_u32(abs(u_input.a), 27u)]));
    global2 = Struct_1(~select(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.x, 16887u, 25246u, 4294967295u), vec4<u32>(1u, arg_0.x, arg_0.x, arg_0.x) ^ global2.a), vec4<u32>(26801u, 109602u, abs(arg_0.x), global2.c), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), _wgslsmith_add_i32(countOneBits(_wgslsmith_dot_vec2_i32(global2.e.zy, global3.wz << (arg_0 % vec2<u32>(32u)))), 19379i), ~_wgslsmith_mult_u32(4294967295u, 0u), abs(-(vec4<i32>(u_input.b.x, global2.e.x, global3.x, global2.b) ^ vec4<i32>(74292i, global2.b, 0i, u_input.b.x))), ~vec3<i32>(~firstLeadingBit(global2.d.x), _wgslsmith_dot_vec3_i32(firstLeadingBit(var_0.a.zzx), reverseBits(global2.e)), select(-23333i, -2147483647i, true)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x + 1519f), _wgslsmith_f_op_f32(global4.x + global4.x)))) + global4.x) - -1000f);
    return arg_0.x;
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: u32, arg_3: Struct_5) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(arg_3.a - 467f);
    var var_1 = Struct_4(arg_0.e.d);
    let var_2 = !all(vec3<bool>(_wgslsmith_f_op_f32(trunc(917f)) != _wgslsmith_f_op_f32(round(-340f)), (arg_3.a < 1000f) == true, all(vec2<bool>(true, true))));
    var var_3 = global2.e ^ global3.wyy;
    let var_4 = arg_3;
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-707f - _wgslsmith_f_op_f32(max(var_4.a, arg_3.a))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.a, arg_3.a) - -1127f), arg_0.a, ~u_input.a < _wgslsmith_sub_u32(var_4.c, global2.c)))), Struct_1(_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(global2.a, var_4.e.a), ~_wgslsmith_mult_vec4_u32(global2.a, arg_0.e.a)), func_3(Struct_3(-1721f, Struct_1(arg_3.e.a, var_4.e.e.x, global2.c, arg_3.e.d, vec3<i32>(arg_1, var_3.x, u_input.b.x)), Struct_2(vec4<bool>(var_2, var_2, true, false), var_4.e, vec4<i32>(-1i, 53436i, -1i, -46374i)), global4.xyy), u_input.a, ~global2.a.wyy).x >> (reverseBits(reverseBits(u_input.a)) % 32u), 85949u, _wgslsmith_div_vec4_i32(vec4<i32>(~arg_1, -15637i, var_4.e.d.x << (30162u % 32u), i32(-1i) * -1i), vec4<i32>(1i & global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_4.e.b, arg_0.d, -80182i), vec4<i32>(-1i, u_input.b.x, 26135i, -1i)), 59372i, ~u_input.b.x)), vec3<i32>((arg_1 | -22306i) | -8367i, i32(-1i) * -27970i, u_input.b.x)), Struct_2(select(!select(vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(var_2, false, var_2, false), vec4<bool>(false, var_2, true, var_2)), select(!vec4<bool>(false, var_2, true, var_2), vec4<bool>(var_2, false, true, var_2), any(vec2<bool>(true, false))), !(!vec4<bool>(var_2, false, var_2, var_2))), Struct_1(var_4.e.a, global3.x, ~4294967295u, var_4.e.d, arg_0.e.d.yxw), -_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(var_1.a, vec4<i32>(11209i, var_3.x, 0i, 1i)), vec4<i32>(var_1.a.x, -2147483647i, 56238i, 1i))), vec3<f32>(-154f, 245f, _wgslsmith_f_op_f32(min(arg_3.a, 2226f))));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: f32, arg_3: vec3<bool>) -> Struct_4 {
    let var_0 = arg_1.c.a.ywy;
    var var_1 = vec4<bool>(!(_wgslsmith_f_op_f32(abs(arg_2)) <= 322f), -71006i != _wgslsmith_clamp_i32(_wgslsmith_sub_i32(7635i, -11637i) >> (_wgslsmith_sub_u32(global2.a.x, 1u) % 32u), 47406i, ~(-global2.e.x)), true, func_4(Struct_5(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(global4.x - 302f)), firstTrailingBit(_wgslsmith_mult_u32(4294967295u, global2.c)), firstTrailingBit(0u << (arg_1.c.b.c % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(2295i, 0i, global3.x), global3.wzy) ^ ~global2.e.x, Struct_1(vec4<u32>(arg_1.b.c, arg_1.b.a.x, 1u, 0u), global3.x, global2.a.x >> (u_input.a % 32u), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, 1i, arg_1.c.c.x), arg_1.b.d), arg_1.c.c.wyx)), global2.e.x, _wgslsmith_div_u32(u_input.a, countOneBits(0u)), Struct_5(-1166f, arg_1.b.c, global2.c, global2.e.x | global2.e.x, Struct_1(arg_1.c.b.a | vec4<u32>(4294967295u, 91211u, global2.c, 48039u), firstLeadingBit(1i), ~global2.a.x, vec4<i32>(global3.x, arg_1.c.b.d.x, -9529i, -63227i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.b.e.x, 0i, global2.e.x), global3.wwz)))).c.a.x);
    global2 = func_4(Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1890f), ~(~(arg_1.b.c | global2.a.x)), func_2(reverseBits(countOneBits(arg_1.c.b.a.yx))), global3.x >> (~u_input.a % 32u), func_4(Struct_5(_wgslsmith_f_op_f32(-arg_2), arg_1.b.a.x, arg_1.c.b.a.x, ~global2.e.x, arg_1.b), -_wgslsmith_div_i32(-29501i, 2147483647i), ~_wgslsmith_mult_u32(global2.a.x, 34571u), Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_mult_u32(arg_1.b.c, 22259u), ~arg_1.b.a.x, 14716i >> (0u % 32u), arg_1.b)).c.b), ~arg_1.c.c.x & -_wgslsmith_clamp_i32(u_input.b.x, func_4(Struct_5(146f, global2.a.x, 41737u, 1i, Struct_1(vec4<u32>(global2.a.x, u_input.a, 47311u, 0u), -650i, 1u, vec4<i32>(39723i, global2.b, -2147483647i, u_input.b.x), vec3<i32>(global3.x, 2147483647i, -43903i))), -57350i, arg_1.c.b.a.x, Struct_5(663f, 37418u, arg_1.b.c, 99i, arg_1.b)).c.b.d.x, global2.b), func_2(global2.a.wx), Struct_5(-370f, 11091u, global2.c, 1i, Struct_1(~vec4<u32>(29010u, arg_1.c.b.a.x, arg_1.c.b.a.x, u_input.a), u_input.b.x & (u_input.b.x & u_input.b.x), u_input.a, global2.d, global3.wxy))).c.b;
    global1 = array<vec4<f32>, 27>();
    var_1 = !vec4<bool>(!var_1.x, !(!select(arg_1.c.a.x, arg_1.c.a.x, arg_0)), false, true);
    return Struct_4(firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(-26615i, ~2147483647i, u_input.b.x), -(global2.b >> (global2.c % 32u)), i32(-1i) * -u_input.b.x, _wgslsmith_clamp_i32(-15918i, 54699i, -global3.x))));
}

fn func_6(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    var var_0 = _wgslsmith_mult_u32(global2.c, arg_3.c.b.a.x);
    var var_1 = all(vec3<bool>(arg_3.c.a.x, false | arg_3.c.a.x, all(vec3<bool>(all(vec2<bool>(arg_3.c.a.x, arg_3.c.a.x)), arg_3.c.a.x, false))));
    let var_2 = arg_2;
    global4 = vec4<f32>(1983f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(206f)) + func_4(Struct_5(-876f, 59994u, global2.c, 2147483647i, arg_3.b), 7947i, global2.c, Struct_5(arg_0.x, u_input.a, 59615u, arg_3.c.c.x, Struct_1(vec4<u32>(21380u, arg_3.c.b.c, global2.c, u_input.a), arg_2.a.x, 1u, vec4<i32>(u_input.b.x, global2.e.x, -2147483647i, -44553i), arg_2.a.yxw))).d.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-154f + -816f), -537f)), _wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.d.x + global4.x), global4.x))));
    var var_3 = func_4(Struct_5(_wgslsmith_f_op_f32(-func_4(Struct_5(arg_0.x, 0u, 37172u, global2.b, arg_3.c.b), var_2.a.x >> (54415u % 32u), ~u_input.a, Struct_5(-627f, arg_3.c.b.a.x, 4294967295u, 17278i, arg_3.c.b)).d.x), global2.c, ~_wgslsmith_div_u32(~global2.a.x, ~arg_3.b.a.x), _wgslsmith_mult_i32(1i, 52063i), arg_3.c.b), min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, global2.e.x, -42238i) ^ arg_3.c.b.d, global2.d >> (vec4<u32>(4294967295u, global2.a.x, 9059u, u_input.a) % vec4<u32>(32u))) ^ ~_wgslsmith_mod_i32(28064i, -2425i), _wgslsmith_sub_i32(12626i, 2147483647i)), 1u ^ ((global2.c ^ global2.a.x) >> (68657u % 32u)), Struct_5(-103f, select(arg_3.c.b.a.x, 0u, false), u_input.a, 2147483647i, Struct_1(vec4<u32>(~15752u, min(u_input.a, arg_3.b.a.x), firstLeadingBit(global2.c), global2.a.x), 1i, 0u, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, global2.e.x, arg_1, arg_1), vec4<i32>(var_2.a.x, arg_3.c.c.x, 2147483647i, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.a.x, arg_1, arg_3.b.e.x), vec3<i32>(global2.e.x, -2147483647i, arg_2.a.x)) << (~vec3<u32>(u_input.a, 20504u, 0u) % vec3<u32>(32u)))));
    return any(!select(var_3.c.a.wy, arg_3.c.a.yw, !all(arg_3.c.a)));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> Struct_3 {
    var var_0 = -41208i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a | _wgslsmith_mod_u32(~global2.a.x, 1u), arg_0.x), 27u)]);
    let var_2 = ~(-u_input.b);
    let var_3 = !func_6(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(~1u, 27u)]), arg_1, func_5(false, func_4(Struct_5(-1056f, 4294967295u, global2.c, var_2.x, Struct_1(global2.a, var_2.x, arg_0.x, vec4<i32>(2147483647i, -2147483647i, arg_1, u_input.b.x), vec3<i32>(-4018i, 1i, var_2.x))), global2.d.x, func_2(vec2<u32>(u_input.a, 67177u)), Struct_5(-1034f, u_input.a, 0u, 0i, Struct_1(global2.a, -47228i, global2.c, global2.d, global2.d.yzx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4.x, global4.x)) * _wgslsmith_f_op_f32(1006f - var_1.x)), vec3<bool>(true, true, all(vec2<bool>(true, false)))), Struct_3(global4.x, func_4(Struct_5(global4.x, 1u, arg_0.x, var_2.x, Struct_1(global2.a, u_input.b.x, 35541u, global2.d, vec3<i32>(arg_1, -29647i, 5476i))), _wgslsmith_div_i32(u_input.b.x, global3.x), 1591u, Struct_5(global4.x, arg_0.x, 1u, global2.d.x, Struct_1(global2.a, global3.x, 47670u, global2.d, global2.d.wyx))).c.b, Struct_2(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false), func_4(Struct_5(var_1.x, global2.a.x, 7449u, global2.d.x, Struct_1(vec4<u32>(14980u, 83952u, u_input.a, global2.a.x), var_2.x, 4294967295u, global2.d, vec3<i32>(2147483647i, -23737i, -2147483647i))), arg_1, arg_0.x, Struct_5(889f, global2.a.x, arg_0.x, 14744i, Struct_1(vec4<u32>(global2.c, arg_0.x, u_input.a, global2.a.x), var_2.x, 0u, global2.d, global3.wzw))).c.b, _wgslsmith_sub_vec4_i32(vec4<i32>(1i, arg_1, 0i, var_2.x), vec4<i32>(19146i, 33878i, 6415i, arg_1))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(var_1.xwz))))));
    var var_4 = firstLeadingBit(~global2.d.wyx);
    return func_4(Struct_5(1f, u_input.a, ~34943u, max(global3.x, -17614i), Struct_1(global2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, var_4.x), global3.xy), _wgslsmith_clamp_u32(32651u, 108240u, 12363u), vec4<i32>(0i, -23930i & u_input.b.x, firstLeadingBit(var_4.x), -1i), vec3<i32>(-1i) * -global2.e)), var_2.x, _wgslsmith_mult_u32(global2.c, abs(max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, global2.a.x), vec2<u32>(u_input.a, 1u)), u_input.a))), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1358f, _wgslsmith_f_op_f32(293f - -682f)))), _wgslsmith_div_u32(39996u, select(1u, u_input.a, var_3) | 61529u), arg_0.x, 38681i, Struct_1(_wgslsmith_sub_vec4_u32(global2.a, min(vec4<u32>(arg_0.x, 1u, u_input.a, global2.c), global2.a)), -8842i, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 19660u, 4294967295u), global2.a.wwz), vec4<i32>(arg_1, func_4(Struct_5(1000f, 4294967295u, global2.a.x, 0i, Struct_1(vec4<u32>(29947u, 4294967295u, 1u, 82229u), 2147483647i, 1u, global2.d, global3.ywz)), global3.x, 13775u, Struct_5(1325f, u_input.a, 24954u, 10311i, Struct_1(vec4<u32>(0u, 1778u, arg_0.x, global2.a.x), -10880i, 16492u, global2.d, vec3<i32>(var_2.x, var_4.x, arg_1)))).c.b.e.x, 1i, -1i), -global2.d.wxw)));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> f32 {
    let var_0 = countOneBits(vec2<i32>(-_wgslsmith_add_i32(arg_1.c.b.e.x, global2.e.x) ^ 3307i, _wgslsmith_clamp_i32(func_5(false, func_1(arg_0.c.b.a.xw, arg_0.c.b.e.x), _wgslsmith_div_f32(arg_1.a, 514f), select(vec3<bool>(false, arg_1.c.a.x, arg_0.c.a.x), vec3<bool>(arg_1.c.a.x, arg_1.c.a.x, arg_0.c.a.x), arg_1.c.a.x)).a.x, func_3(arg_1, reverseBits(u_input.a), arg_1.b.a.yyy ^ vec3<u32>(3901u, 4294967295u, 26284u)).x, 1i)));
    let var_1 = ~(func_1(arg_1.b.a.xx, firstTrailingBit(global2.b | arg_1.b.b)).b.a >> (vec4<u32>(~arg_1.b.a.x, global2.a.x, 19473u, ~global2.a.x) % vec4<u32>(32u)));
    global2 = Struct_1(select(arg_0.b.a, vec4<u32>(arg_1.c.b.a.x, ~(~var_1.x), func_1(global2.a.xx, -1i).b.a.x, ~global2.a.x >> (global2.a.x % 32u)), vec4<bool>(arg_0.c.a.x, !arg_1.c.a.x, arg_0.c.a.x, arg_1.c.a.x)), arg_2, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.b.a.x, 1u, 0u), min(min(global2.a.www, arg_0.b.a.ywz), ~global2.a.xww)), 14991u), global2.d, _wgslsmith_mult_vec3_i32(abs(vec3<i32>(71848i, global2.b, ~(-13652i))), _wgslsmith_mult_vec3_i32(abs(arg_0.c.c.wxy << (vec3<u32>(0u, 21404u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.c.b.d.x, 1i, global2.e.x), ~arg_0.b.e))));
    var var_2 = -35581i;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(1743f, arg_0.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.d.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * _wgslsmith_f_op_f32(-arg_0.d.x))) - func_1(~(~vec2<u32>(16579u, var_1.x)), var_0.x).a));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec4_f32(min(global1[_wgslsmith_index_u32(~(~1u), 27u)], vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(-global4.x)) - _wgslsmith_f_op_f32(abs(global4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_7(Struct_3(1000f, Struct_1(global2.a, global3.x, 0u, global2.d, global3.xyx), Struct_2(vec4<bool>(false, true, false, false), Struct_1(global2.a, global3.x, 1u, vec4<i32>(global2.e.x, global2.e.x, global2.b, global3.x), global2.d.xyx), vec4<i32>(global3.x, global3.x, global2.e.x, 11908i)), vec3<f32>(-873f, 412f, global4.x)), func_1(vec2<u32>(u_input.a, u_input.a), 0i), _wgslsmith_div_i32(2147483647i, u_input.b.x))) * _wgslsmith_f_op_f32(167f * _wgslsmith_f_op_f32(global4.x - -1346f))), -749f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(517f)) - 317f))))));
    var var_0 = func_4(Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(287f + func_4(Struct_5(931f, 4294967295u, 4294967295u, -23601i, Struct_1(vec4<u32>(0u, 1u, 1u, global2.c), global3.x, 28881u, vec4<i32>(2147483647i, 1i, -43996i, global3.x), global3.xxw)), u_input.b.x, 4294967295u, Struct_5(1019f, u_input.a, 13572u, global2.e.x, Struct_1(global2.a, u_input.b.x, global2.a.x, vec4<i32>(u_input.b.x, global2.d.x, u_input.b.x, -2147483647i), vec3<i32>(33941i, u_input.b.x, global3.x)))).d.x))), _wgslsmith_sub_u32(~4294967295u << (_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u), global2.a.x), 72331u, -2147483647i, func_1(vec2<u32>(countOneBits(global2.a.x), abs(0u)), global3.x).b), u_input.b.x, _wgslsmith_sub_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(global2.a.x, 4294967295u))), Struct_5(1000f, global2.a.x ^ ~(~u_input.a), u_input.a, func_5(all(vec2<bool>(false, true)) | true, Struct_3(_wgslsmith_div_f32(-201f, 1367f), Struct_1(global2.a, u_input.b.x, u_input.a, global2.d, vec3<i32>(u_input.b.x, global2.b, 1i)), func_4(Struct_5(global4.x, u_input.a, global2.c, u_input.b.x, Struct_1(vec4<u32>(u_input.a, 1u, global2.a.x, 10592u), -11547i, 42059u, global2.d, global3.wxy)), -900i, global2.a.x, Struct_5(global4.x, 106212u, u_input.a, global2.b, Struct_1(vec4<u32>(53496u, global2.a.x, global2.a.x, 90610u), global2.d.x, global2.a.x, vec4<i32>(global2.b, global2.b, -1i, global2.b), vec3<i32>(-28984i, 1i, global2.d.x)))).c, global4.yyy), 702f, vec3<bool>(true, true, true)).a.x, Struct_1(vec4<u32>(_wgslsmith_mult_u32(global2.a.x, global2.c), select(0u, u_input.a, false), 38435u, _wgslsmith_div_u32(8273u, u_input.a)), abs(~global2.b), select(global2.c, 29741u, true), global2.d, _wgslsmith_add_vec3_i32(max(vec3<i32>(u_input.b.x, -33969i, 37025i), vec3<i32>(global2.e.x, -1i, u_input.b.x)), abs(global2.d.xxz)))));
    var var_1 = !(!(_wgslsmith_f_op_f32(-global4.x) == _wgslsmith_div_f32(-1684f, -118f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, min(~0u, 4294967295u) << (0u % 32u), func_3(Struct_3(global4.x, var_0.c.b, Struct_2(var_0.c.a, Struct_1(global2.a, var_0.b.b, 1u, vec4<i32>(global3.x, 34074i, 0i, var_0.b.e.x), vec3<i32>(var_0.b.d.x, u_input.b.x, u_input.b.x)), max(global2.d, vec4<i32>(var_0.b.e.x, u_input.b.x, global3.x, global2.e.x))), _wgslsmith_f_op_vec3_f32(-global4.yzy)), _wgslsmith_add_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.a), ~var_0.b.a.x), var_0.c.b.a.x), ~var_0.c.b.a.xwy | vec3<u32>(~global2.a.x, _wgslsmith_mult_u32(1u, 0u), 1u)).x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(-1047f, 1442f), -889f)))));
}

