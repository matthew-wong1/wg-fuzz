struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 46550u);

var<private> global1: Struct_2 = Struct_2(vec3<u32>(0u, 4294967295u, 4294967295u), Struct_1(182f, vec2<u32>(0u, 1u), vec4<f32>(3040f, 115f, 601f, 1156f)), Struct_1(1436f, vec2<u32>(28048u, 40009u), vec4<f32>(103f, 467f, 668f, -1361f)));

var<private> global2: array<vec2<bool>, 8>;

var<private> global3: vec2<i32>;

var<private> global4: Struct_5;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>) -> u32 {
    let var_0 = ~_wgslsmith_clamp_u32(~31320u, abs(global1.b.b.x), global4.b);
    global0 = global4.c.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global4.e + arg_0.wzw)));
    global0 = ~(~global1.c.b >> (((vec2<u32>(var_0, 28312u) << (global1.c.b % vec2<u32>(32u))) << (~global1.b.b % vec2<u32>(32u))) % vec2<u32>(32u)));
    global3 = firstLeadingBit(~vec2<i32>(~u_input.a, reverseBits(global3.x)));
    return _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(global0.x, 46953u)), ~vec2<u32>(u_input.b, var_0))) << (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, global0.x << (global4.c.b.x % 32u)), ~(~global0.x), 1u) % 32u), global0.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>) -> Struct_1 {
    global0 = vec2<u32>(~_wgslsmith_mod_u32(~firstTrailingBit(10675u), func_3(_wgslsmith_f_op_vec4_f32(select(global1.c.c, vec4<f32>(global4.d.x, 923f, 684f, 797f), arg_1)), global4.e)), (~firstTrailingBit(0u) & 84383u) ^ (min(global1.b.b.x, 1u) | firstTrailingBit(global1.a.x)));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global1.b.c.x, 2145f, -1000f))), vec4<f32>(-1000f, global1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.d.x, -133f))), _wgslsmith_f_op_f32(f32(-1f) * -351f)), !(u_input.a <= -global3.x))));
    let var_1 = abs(min(_wgslsmith_add_u32(~_wgslsmith_mult_u32(u_input.b, 1u), firstTrailingBit(global4.b)), countOneBits(39334u)));
    var var_2 = -2045f;
    var_2 = 754f;
    return global1.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2) -> Struct_5 {
    global2 = array<vec2<bool>, 8>();
    global0 = arg_2.a.xx << (vec2<u32>(57913u, global1.a.x) % vec2<u32>(32u));
    var var_0 = Struct_2(abs(firstTrailingBit(arg_2.a)), func_2(vec2<f32>(-754f, _wgslsmith_f_op_f32(f32(-1f) * -894f)), !vec4<bool>(false, arg_1.a & false, arg_1.a, select(true, arg_1.a, arg_1.a))), func_2(arg_2.c.c.xw, !(!(!vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a)))));
    var var_1 = select(vec2<i32>(-15591i, 1i) >> ((~vec2<u32>(0u, global0.x) << (~vec2<u32>(14799u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(-1i, arg_1.c.x) & vec2<i32>(global3.x, 31997i)), !select(vec2<bool>(true, true), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.b.b.x, 11699u), 8u)], !arg_1.a)) & u_input.c;
    var var_2 = ~firstTrailingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, global3.x), u_input.c));
    return Struct_5(arg_2.b.b.x, arg_2.b.b.x, func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.b.c.xw * arg_2.b.c.xw), vec2<f32>(arg_2.b.a, var_0.b.c.x)), arg_2.b.c.zw)), vec4<bool>(-1592i >= u_input.c.x, !(arg_2.c.a < arg_2.b.c.x), arg_1.a, all(select(vec2<bool>(false, arg_1.a), vec2<bool>(false, false), arg_1.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global1.c.c.ywy + vec3<f32>(-922f, 505f, arg_0.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1911f, arg_2.b.a, 304f) + arg_0.c.www)))), _wgslsmith_f_op_vec3_f32(-global1.c.c.wxx));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_5 {
    var var_0 = Struct_4(arg_0.x, -vec3<i32>(u_input.c.x & -3325i, select(i32(-1i) * -8850i, i32(-1i) * -11355i, true), _wgslsmith_div_i32(u_input.c.x >> (global1.c.b.x % 32u), global3.x)), (_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, -1i, global3.x) ^ vec4<i32>(57893i, u_input.c.x, global3.x, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, -40447i, global3.x), vec4<i32>(2147483647i, global3.x, 14522i, global3.x))) >> (~firstLeadingBit(vec4<u32>(global0.x, u_input.b, global0.x, global0.x)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.c.b.x, global1.b.b.x, 31527u), vec3<u32>(1u, 0u, 1u)), ~global1.c.b.x, 36508u, ~(0u | u_input.b)) % vec4<u32>(32u)));
    global4 = func_4(func_2(_wgslsmith_f_op_vec2_f32(-global1.b.c.wy), arg_0), Struct_4(false, select(~vec3<i32>(u_input.a, 0i, -2147483647i), var_0.c.yyw, !arg_0.x), var_0.c & _wgslsmith_mult_vec4_i32(-vec4<i32>(58696i, -2147483647i, global3.x, global3.x), var_0.c << (vec4<u32>(u_input.b, 62491u, global0.x, global0.x) % vec4<u32>(32u)))), Struct_2(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 79811u, global0.x), global1.a)), global4.c, func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(global4.d.zy, global4.d.yy, global2[_wgslsmith_index_u32(global0.x, 8u)])), vec2<f32>(-1009f, 565f))), arg_0)));
    var var_1 = u_input.b < u_input.b;
    let var_2 = any(select(!select(select(vec3<bool>(true, true, false), arg_0.zzx, arg_0.zww), vec3<bool>(arg_0.x, false, false), select(arg_0.wxz, arg_0.xwz, arg_0.xzw)), vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 83413u, 0u, u_input.b), vec4<u32>(30230u, global4.b, global4.a, 29568u)) <= 1u, var_0.a, true), vec3<bool>(true, true, true)));
    var var_3 = Struct_4(false, ~(-var_0.b), select(_wgslsmith_add_vec4_i32(countOneBits(var_0.c), min(vec4<i32>(var_0.b.x, 0i, 1i, var_0.c.x) | vec4<i32>(u_input.c.x, -12224i, -1i, 0i), _wgslsmith_sub_vec4_i32(var_0.c, vec4<i32>(global3.x, global3.x, 86809i, 18502i)))), vec4<i32>(var_0.c.x, -(global3.x >> (13888u % 32u)), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(1i, -1i, -1i, global3.x)), vec4<i32>(u_input.c.x, -36529i, -12580i, -1664i)), min(global3.x << (1u % 32u), ~var_0.c.x)), false));
    return func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -1540f) - _wgslsmith_f_op_f32(-1360f * -195f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.c.x) - _wgslsmith_f_op_f32(global1.b.a + global4.d.x))), func_4(global4.c, Struct_4(!var_2, var_0.c.zxw, ~var_0.c), Struct_2(global1.a, func_2(vec2<f32>(arg_1.x, global1.b.a), arg_0), Struct_1(-1134f, vec2<u32>(global0.x, 4294967295u), global1.b.c))).c.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(-2089f, arg_1.x)), _wgslsmith_f_op_f32(step(583f, global1.c.a)), -856f, _wgslsmith_f_op_f32(f32(-1f) * -383f)), global1.b.c, !var_2))), Struct_4(true, abs(-_wgslsmith_div_vec3_i32(vec3<i32>(var_3.b.x, 0i, global3.x), vec3<i32>(global3.x, 2147483647i, var_0.b.x))), reverseBits(var_0.c)), Struct_2(vec3<u32>(_wgslsmith_div_u32(1u, global1.a.x), 9932u, firstLeadingBit(~4294967295u)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.c.c.yw, global1.b.c.yw)), !vec4<bool>(false, true, var_2, var_0.a)), global4.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-89469i, 11926i, global3.x);
    global4 = func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-276f, -269f) * global4.c.c.xx) + _wgslsmith_f_op_vec2_f32(trunc(global1.c.c.yx))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.c.x, global4.c.c.x)), _wgslsmith_div_vec2_f32(global4.e.xz, vec2<f32>(686f, 1492f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.c.a, -1731f))), vec2<f32>(global1.c.a, global4.c.a))), vec2<f32>(_wgslsmith_f_op_f32(global1.b.c.x * -269f), _wgslsmith_f_op_f32(f32(-1f) * -1204f)), !select(false, false, false)))));
    global2 = array<vec2<bool>, 8>();
    let var_1 = reverseBits(_wgslsmith_mod_u32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.c.x, 623f, global1.c.a, 704f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.a, global1.c.a, global4.d.x) * vec3<f32>(-247f, -840f, global1.c.a))), global4.b));
    let var_2 = -238f;
    let var_3 = Struct_4(!(global0.x > _wgslsmith_sub_u32(abs(global4.b), _wgslsmith_add_u32(global4.a, 8562u))), -max(var_0, -var_0), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.c.x, var_0.x, -41242i, global3.x) >> (vec4<u32>(13622u, u_input.b, global0.x, 63773u) % vec4<u32>(32u)), ~vec4<i32>(21482i, -2147483647i, global3.x, global3.x)), countOneBits(_wgslsmith_div_vec4_i32(select(vec4<i32>(var_0.x, 21948i, 20148i, global3.x), vec4<i32>(var_0.x, 24888i, 28928i, u_input.a), false), countOneBits(vec4<i32>(1i, var_0.x, 2147483647i, global3.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(global1.c.c.wx, vec4<bool>(false, true, u_input.a != var_3.c.x, var_3.a)).b.x & 1u, _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 0i, global3.x) << (vec3<u32>(9746u, 12886u, 26473u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, 38208i, global3.x), vec3<i32>(var_3.b.x, -42059i, var_3.b.x)))), ~(_wgslsmith_div_vec3_i32(var_3.b, var_3.b) & -vec3<i32>(4650i, 1i, global3.x))));
}

