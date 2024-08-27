struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec2<i32>;

var<private> global2: vec3<bool>;

var<private> global3: vec2<f32> = vec2<f32>(281f, 338f);

var<private> global4: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(1219f, -652f, Struct_1(true, true), 2147483647i), Struct_2(284f, -1236f, Struct_1(false, false), i32(-2147483648)), Struct_2(-1306f, 748f, Struct_1(false, true), 25229i), Struct_2(-172f, -757f, Struct_1(false, false), -20448i), Struct_2(-110f, -567f, Struct_1(true, false), 1i), Struct_2(-1263f, -311f, Struct_1(false, true), 21725i), Struct_2(-476f, -731f, Struct_1(true, false), 39926i), Struct_2(-1778f, 249f, Struct_1(false, false), -16101i), Struct_2(-460f, 197f, Struct_1(true, false), 69297i), Struct_2(540f, 777f, Struct_1(false, true), 49728i), Struct_2(1000f, 513f, Struct_1(true, true), 12237i), Struct_2(-2213f, 1737f, Struct_1(false, true), -2462i), Struct_2(976f, -1252f, Struct_1(true, false), -6086i), Struct_2(1293f, -344f, Struct_1(true, false), -11566i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<bool>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(497f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x))))), 1522f)));
    var var_1 = Struct_5(Struct_1(true, false));
    let var_2 = Struct_3(!arg_0);
    let var_3 = Struct_5(global0.a);
    global3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) - global3.x) * -314f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -492f)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.x, var_0)) + _wgslsmith_f_op_f32(var_0 + global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-214f)) - -1105f)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec2<f32>) -> vec2<f32> {
    global0 = Struct_5(Struct_1(global0.a.b, arg_2));
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(845f, global3.x, 815f, 550f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 229f, global3.x, arg_3.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1017f)))), arg_1, _wgslsmith_f_op_f32(-global3.x), 1197f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1199f)));
    global2 = vec3<bool>(any(vec2<bool>(~global1.x >= ~2147483647i, global2.x)), all(!select(select(vec3<bool>(false, global2.x, false), vec3<bool>(global0.a.b, global0.a.a, arg_2), arg_2), vec3<bool>(false, false, arg_2), !vec3<bool>(global0.a.a, true, arg_2))), false);
    var var_2 = vec3<i32>(_wgslsmith_add_i32(select(~0i, ~(~u_input.c), u_input.e >= (u_input.e | 0u)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(global1.x, 2147483647i, -8700i, u_input.c)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, global1.x, -1i, u_input.c)), _wgslsmith_sub_i32(u_input.c, u_input.c), true)), 1i, min(u_input.c, select(22450i, ~u_input.c, select(arg_0.b, false, global2.x))) & global1.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-825f, _wgslsmith_f_op_f32(global3.x + arg_3.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xz + vec2<f32>(global3.x, -782f))))), arg_3));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = reverseBits(vec3<i32>(-1i) * -vec3<i32>(reverseBits(global1.x), -8061i, global1.x));
    var var_1 = vec4<u32>(42848u, ~_wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(1u, u_input.a.x)), 100712u >> (u_input.b % 32u), u_input.e) ^ ~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, u_input.e, u_input.e), vec4<u32>(u_input.b, 1u, u_input.a.x, 4294967295u)), reverseBits(vec4<u32>(u_input.d, 4294967295u, u_input.e, u_input.b))), vec4<u32>(u_input.d >> (u_input.b % 32u), 29810u ^ u_input.a.x, ~u_input.b, _wgslsmith_add_u32(u_input.d, u_input.e)));
    var var_2 = global2.yy;
    let var_3 = _wgslsmith_f_op_vec2_f32(func_4(global0.a, arg_0.x, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 1359f) - arg_0) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.x, global3.x), vec2<f32>(1199f, -910f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(!vec3<bool>(var_2.x, true, var_2.x)))))));
    global4 = array<Struct_2, 14>();
    return abs(u_input.e);
}

fn func_5(arg_0: u32) -> Struct_1 {
    let var_0 = true;
    global1 = abs((-(~vec2<i32>(-1i, u_input.c)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, u_input.c) >> (u_input.a % vec2<u32>(32u)), vec2<i32>(1i, 1i))) >> (vec2<u32>(0u, u_input.e) % vec2<u32>(32u)));
    global0 = Struct_5(Struct_1(false && (_wgslsmith_div_f32(484f, -1165f) > _wgslsmith_f_op_f32(global3.x * 1187f)), ~u_input.c == -abs(global1.x)));
    global0 = Struct_5(Struct_1(true, false));
    global2 = vec3<bool>(!global2.x, all(select(vec3<bool>(true, all(vec3<bool>(global2.x, true, true)), !global2.x), select(vec3<bool>(global0.a.b, true, false), vec3<bool>(var_0, false, false), select(vec3<bool>(global0.a.b, var_0, true), vec3<bool>(true, true, true), global0.a.a)), select(!vec3<bool>(global0.a.b, true, global2.x), vec3<bool>(global2.x, false, global0.a.b), select(vec3<bool>(false, false, true), vec3<bool>(true, global2.x, global0.a.b), true)))), all(select(!vec4<bool>(global2.x, false, true, false), vec4<bool>(var_0, !var_0, all(vec3<bool>(true, false, true)), global2.x), false)));
    return Struct_1(true, select(select(global1.x, ~(-41339i), false) > u_input.c, !(all(vec4<bool>(global0.a.a, true, false, var_0)) || true), true));
}

fn func_6(arg_0: Struct_5, arg_1: u32, arg_2: bool, arg_3: vec3<i32>) -> f32 {
    global1 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(-(~(~arg_3.zz)), ~arg_3.zz), ~firstTrailingBit(arg_3.xz));
    let var_0 = ~vec4<u32>(34414u >> (arg_1 % 32u), 4294967295u, 9256u, _wgslsmith_mult_u32(~(~u_input.d), ~(0u << (u_input.e % 32u))));
    var var_1 = global0.a.a;
    global3 = vec2<f32>(global3.x, global3.x);
    var var_2 = select(!vec4<bool>(false, all(select(vec4<bool>(arg_0.a.b, true, global0.a.b, global2.x), vec4<bool>(false, arg_0.a.b, arg_0.a.b, true), vec4<bool>(arg_2, true, true, true))), !arg_2 != (global3.x != -491f), (arg_0.a.a || arg_0.a.a) && !arg_2), !select(vec4<bool>(global0.a.a, false, true, all(vec3<bool>(false, arg_0.a.b, arg_2))), select(!vec4<bool>(global0.a.b, true, arg_0.a.b, true), select(vec4<bool>(global2.x, global2.x, true, arg_2), vec4<bool>(false, true, global2.x, false), vec4<bool>(global0.a.a, false, arg_2, false)), select(vec4<bool>(true, arg_0.a.a, arg_0.a.a, false), vec4<bool>(true, false, arg_2, false), vec4<bool>(false, arg_0.a.b, arg_2, false))), !select(vec4<bool>(true, arg_2, global0.a.b, false), vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(true, arg_0.a.b, false, false))), vec4<bool>(true, arg_2, !any(select(vec2<bool>(arg_2, true), vec2<bool>(true, false), vec2<bool>(global2.x, true))), _wgslsmith_dot_vec3_i32(arg_3, _wgslsmith_mult_vec3_i32(vec3<i32>(11421i, -12615i, arg_3.x), vec3<i32>(18815i, 1i, -29851i))) >= abs(_wgslsmith_mult_i32(35488i, u_input.c))));
    return _wgslsmith_f_op_f32(floor(-1000f));
}

fn func_7(arg_0: i32, arg_1: f32, arg_2: f32) -> vec4<bool> {
    var var_0 = Struct_4(firstTrailingBit(vec3<i32>(-19686i ^ arg_0, arg_0, select(global1.x, arg_0, global0.a.a)) ^ max(-vec3<i32>(1i, -2147483647i, u_input.c), select(vec3<i32>(u_input.c, global1.x, -1i), vec3<i32>(21940i, u_input.c, -45060i), global2.x))), Struct_3(!vec3<bool>(global2.x, true, global2.x)), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(u_input.a, select(vec2<u32>(1u, u_input.b), u_input.a, false)), u_input.a) >> (u_input.e % 32u), 14u)], global4[_wgslsmith_index_u32(u_input.d, 14u)], vec2<i32>(_wgslsmith_mult_i32(-7379i, (-1i >> (u_input.b % 32u)) >> (firstTrailingBit(1u) % 32u)), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -16106i), vec2<i32>(arg_0, 1i)) | _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-40593i, -39747i, global1.x), vec3<i32>(global1.x, -1i, 27665i)), select(vec3<i32>(arg_0, -25616i, -1i), vec3<i32>(1i, global1.x, u_input.c), false))));
    var var_1 = ~vec3<i32>(abs(_wgslsmith_add_i32(u_input.c, ~global1.x)), -global1.x, _wgslsmith_dot_vec4_i32(-(vec4<i32>(32815i, 47507i, 2147483647i, var_0.a.x) >> (vec4<u32>(0u, u_input.b, u_input.b, 65105u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(~vec4<i32>(global1.x, -1i, arg_0, u_input.c), reverseBits(vec4<i32>(u_input.c, 1i, -1i, var_0.e.x)))));
    let var_2 = abs(_wgslsmith_add_vec2_i32(vec2<i32>(abs(u_input.c), ~var_1.x), select(select(var_0.e, vec2<i32>(-20778i, -13023i), var_0.d.c.a), var_1.zz >> (u_input.a % vec2<u32>(32u)), var_0.c.c.a))) | var_0.e;
    let var_3 = _wgslsmith_add_u32(1u, ~(~u_input.e));
    var var_4 = Struct_5(global0.a);
    return vec4<bool>(true, all(!(!vec4<bool>(false, var_4.a.a, var_4.a.b, global2.x))) | (global0.a.a != var_4.a.a), true, !func_5(var_3).b);
}

fn func_1(arg_0: vec2<f32>) -> Struct_5 {
    global4 = array<Struct_2, 14>();
    var var_0 = func_7(-1i, global3.x, _wgslsmith_f_op_f32(func_6(Struct_5(func_5(func_2(vec2<f32>(global3.x, -433f)))), ~_wgslsmith_mult_u32(4294967295u, 0u), global2.x, -_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, 15997i, u_input.c), vec3<i32>(global1.x, u_input.c, 2147483647i), vec3<i32>(2147483647i, 2147483647i, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, 22968i, -1i), vec3<i32>(-7261i, u_input.c, 0i))))));
    var_0 = func_7(~abs(firstTrailingBit(max(-26985i, 1i))), _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.x - global3.x), global3.x)))), -953f);
    let var_1 = Struct_5(global0.a);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -844f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-706f, _wgslsmith_f_op_f32(global3.x * global3.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-309f + arg_0.x))))))), arg_0.x, Struct_1(true, global0.a.b), u_input.c);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 14>();
    var var_0 = reverseBits(vec2<i32>(global1.x, -(~reverseBits(-1i))));
    var var_1 = _wgslsmith_f_op_f32(-global3.x);
    global1 = ~(-((_wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, 2147483647i), vec2<i32>(u_input.c, global1.x)) << (u_input.a % vec2<u32>(32u))) | vec2<i32>(max(-50133i, 2213i), ~(-2147483647i))));
    global3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(274f * 2110f))));
    let var_2 = func_1(vec2<f32>(-192f, _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(round(global3.x)))));
    global0 = func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, global3.x))), 314f))));
    let var_3 = global1.x;
    let var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 342f, -384f) + vec3<f32>(1275f, 479f, -350f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1081f, 219f, global3.x) * vec3<f32>(-519f, -804f, global3.x)), !vec3<bool>(true, global0.a.b, false))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 927f, global3.x), vec3<f32>(482f, 888f, 2252f)))))), _wgslsmith_mult_i32(global1.x, ~(global1.x << (4294967295u % 32u))), u_input.b, _wgslsmith_f_op_f32(func_6(func_1(vec2<f32>(global3.x, global3.x)), firstLeadingBit(~var_4) << (var_4 % 32u), select(false, !var_2.a.b, global0.a.a), ~(-vec3<i32>(var_0.x, global1.x, u_input.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3.x, global3.x))), _wgslsmith_f_op_f32(floor(-104f))));
}

