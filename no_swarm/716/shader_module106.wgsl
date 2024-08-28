struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(countOneBits(u_input.c.zzy), _wgslsmith_f_op_f32(-1f)), Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.b, 1u, global0.b), vec3<u32>(66437u, 1u, 12097u)), 287f), true, _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(6007i, -21941i, u_input.b, u_input.d) | vec4<i32>(u_input.d, 44028i, u_input.b, u_input.e.x)), -vec4<i32>(u_input.b, u_input.d, u_input.d, u_input.e.x) ^ (_wgslsmith_sub_vec4_i32(vec4<i32>(37383i, -1i, u_input.b, u_input.d), vec4<i32>(u_input.d, u_input.b, -1i, u_input.b)) | abs(vec4<i32>(u_input.b, -85160i, u_input.e.x, u_input.b)))), Struct_1(countOneBits(vec3<u32>(12890u, global0.a.x, 17226u)) & ~_wgslsmith_sub_vec3_u32(global0.a, vec3<u32>(global0.b, u_input.a, 0u)), -290f));
    global0 = Struct_4(u_input.c.wxx, max(abs(_wgslsmith_mult_u32(global0.b, global0.a.x)), ~(~var_0.e.a.x >> (~25772u % 32u))), select(vec4<bool>(any(global0.c), any(vec3<bool>(true, true, true)), true, var_0.c), !global0.c, true));
    let var_1 = !vec3<bool>(true, any(!global0.c) || true, false);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b.b, var_0.b.b), 1f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2 + 630f), var_0.e.b));
    return vec3<u32>(37013u, u_input.a, select(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(var_0.e.a, global0.a), u_input.c.x), 0u, all(vec4<bool>(var_0.b.b != -1888f, true, var_3.x >= var_3.x, !var_1.x))));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>, arg_3: vec4<bool>) -> Struct_5 {
    global0 = Struct_4(func_3(), min(reverseBits(u_input.c.x), 21913u), global0.c);
    var var_0 = Struct_3(Struct_1(u_input.c.zyy, _wgslsmith_f_op_f32(arg_0.a.b + -1816f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b.b))), arg_0, -2550i);
    var var_1 = 0u;
    let var_2 = Struct_2(Struct_1(vec3<u32>(~43193u, ~(~9513u), abs(u_input.c.x & 1u)), _wgslsmith_div_f32(arg_0.e.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0.b)), _wgslsmith_f_op_f32(-arg_0.b.b))))), arg_0.e, var_0.c.c, ~(-_wgslsmith_add_vec4_i32(arg_0.d, vec4<i32>(16250i, -41306i, arg_1, arg_0.d.x) >> (vec4<u32>(31340u, global0.a.x, global0.a.x, arg_2.x) % vec4<u32>(32u)))), Struct_1(~(~vec3<u32>(arg_0.e.a.x, u_input.a, 38965u)), var_0.a.b));
    let var_3 = arg_0.b.a.x;
    return Struct_5(_wgslsmith_f_op_f32(floor(481f)));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: f32, arg_3: Struct_4) -> vec3<i32> {
    var var_0 = Struct_1(vec3<u32>(52251u, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, 1u) >> (4294967295u % 32u), 4294967295u), ~countOneBits(9963u)), _wgslsmith_f_op_f32(-arg_1));
    let var_1 = _wgslsmith_f_op_f32(ceil(833f));
    var var_2 = arg_1;
    var_0 = Struct_1(~(~(~firstTrailingBit(global0.a))), 1567f);
    global0 = Struct_4(firstLeadingBit((u_input.c.wxx | vec3<u32>(u_input.a, global0.a.x, 19514u)) ^ u_input.c.zww) | var_0.a, ~1u, !arg_3.c);
    return vec3<i32>(-6209i, _wgslsmith_clamp_i32(2147483647i, firstLeadingBit(-u_input.b), ~(-18664i)), _wgslsmith_div_i32(~_wgslsmith_mod_i32(-15201i, -2147483647i), -1i)) >> (vec3<u32>(u_input.c.x, 46034u, 37428u ^ var_0.a.x) % vec3<u32>(32u));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    global0 = Struct_4(~(~max(global0.a, vec3<u32>(1u, 20607u, u_input.a))), ~arg_0.a.x, global0.c);
    var var_0 = ~(~(-u_input.e));
    let var_1 = arg_0.a.x;
    var var_2 = -1i;
    let var_3 = _wgslsmith_dot_vec3_i32(abs(func_4(func_2(Struct_2(Struct_1(vec3<u32>(arg_0.a.x, var_1, 0u), arg_0.b), Struct_1(u_input.c.www, arg_0.b), global0.c.x, vec4<i32>(14693i, arg_1, -2147483647i, 15023i), arg_0), -11139i ^ u_input.d, arg_0.a & vec3<u32>(u_input.a, 0u, 46328u), !global0.c), _wgslsmith_f_op_f32(645f + arg_0.b), arg_0.b, Struct_4(firstTrailingBit(global0.a), 0u, select(vec4<bool>(false, global0.c.x, global0.c.x, false), vec4<bool>(true, global0.c.x, global0.c.x, global0.c.x), global0.c)))), vec3<i32>(func_4(Struct_5(_wgslsmith_f_op_f32(-arg_0.b)), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * 1f), Struct_4(~vec3<u32>(33168u, 1u, 4294967295u), 9497u, select(global0.c, global0.c, false))).x, firstLeadingBit(var_0.x), var_0.x));
    return Struct_2(arg_0, arg_0, !(~42249u == select(global0.b, 6363u, global0.c.x)) != all(!global0.c), max(select(~firstTrailingBit(vec4<i32>(u_input.e.x, 6263i, -2147483647i, u_input.d)), countOneBits(~vec4<i32>(arg_1, 0i, u_input.b, var_0.x)), !(!global0.c)), select(-(~vec4<i32>(-2147483647i, arg_1, 0i, arg_1)), reverseBits(firstTrailingBit(vec4<i32>(u_input.e.x, -59539i, var_0.x, 3812i))), select(!global0.c, vec4<bool>(true, false, global0.c.x, global0.c.x), !global0.c))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(49978u, ~u_input.a), u_input.c.x, 28876u), _wgslsmith_mod_u32(~global0.a.x, u_input.a));
    var var_1 = func_1(Struct_1(select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 5103u), u_input.c.wy), 0u, 1u), u_input.c.yxx, select(global0.c.zyz, vec3<bool>(true, true, true), vec3<bool>(global0.c.x, false, false))), _wgslsmith_f_op_f32(f32(-1f) * -312f)), u_input.b);
    var var_2 = _wgslsmith_f_op_f32(-var_1.a.b) != 1f;
    var var_3 = func_2(func_1(var_1.a, -2147483647i), 8469i, _wgslsmith_add_vec3_u32(func_3(), vec3<u32>(select(40820u, ~4294967295u, all(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.c.x))), 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.a.a.x, 4294967295u, 47746u), vec3<u32>(var_1.b.a.x, var_0, 0u) ^ u_input.c.zzy))), vec4<bool>(any(!global0.c), global0.c.x || (~global0.b > var_0), true, func_1(var_1.a, 1i).c));
    var_3 = func_2(Struct_2(func_1(Struct_1(_wgslsmith_clamp_vec3_u32(u_input.c.yxx, vec3<u32>(var_0, 0u, 27523u), vec3<u32>(1u, global0.b, global0.a.x)), var_1.e.b), ~u_input.e.x).e, func_1(var_1.b, (1i | var_1.d.x) >> (~4294967295u % 32u)).b, any(!vec2<bool>(true, var_1.c)), vec4<i32>(~_wgslsmith_dot_vec2_i32(var_1.d.zy, vec2<i32>(-14854i, -1i)), 1i, 6518i, countOneBits(_wgslsmith_mod_i32(var_1.d.x, -1968i))), var_1.a), _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.d.x, -22213i), vec2<i32>(var_1.d.x, u_input.e.x)), var_1.d.xz), -(~(var_1.d.yz & var_1.d.yx))), _wgslsmith_clamp_vec3_u32(var_1.e.a, vec3<u32>(15492u, ~46656u & _wgslsmith_mod_u32(global0.b, 66977u), ~_wgslsmith_mult_u32(var_1.a.a.x, 9673u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_0), vec3<u32>(27034u, 0u, global0.b)) ^ u_input.c.xxz, firstTrailingBit(_wgslsmith_mult_vec3_u32(var_1.e.a, u_input.c.wxy)), var_1.e.a)), select(!select(global0.c, vec4<bool>(var_1.c, true, var_1.c, true), any(vec3<bool>(global0.c.x, true, global0.c.x))), vec4<bool>(func_1(Struct_1(global0.a, var_3.a), -31604i).c, true, global0.c.x, all(!global0.c.ywx)), any(!vec4<bool>(var_1.c, var_1.c, global0.c.x, global0.c.x))));
    let var_4 = Struct_3(func_1(Struct_1(u_input.c.wyy, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a, var_3.a))), var_1.d.x).a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(func_1(var_1.e, -1511i).a.b)))), func_1(var_1.e, -(select(var_1.d.x, 2147483647i, false) << (_wgslsmith_dot_vec2_u32(var_1.b.a.zy, u_input.c.wz) % 32u))), max(1i, select(0i, var_1.d.x | 0i, var_1.c) << (~reverseBits(var_0) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(~func_1(func_1(Struct_1(vec3<u32>(0u, u_input.a, 4294967295u), -952f), 8668i).b, -1i).b.a.zy, _wgslsmith_sub_vec2_u32(min(max(vec2<u32>(1u, var_1.b.a.x), vec2<u32>(global0.a.x, var_4.c.b.a.x)), firstLeadingBit(vec2<u32>(var_1.e.a.x, 0u))), ~vec2<u32>(u_input.c.x, 12457u))), vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(0u), 7698u) | 36092u, ~firstLeadingBit(abs(4294967295u)), func_1(var_1.a, 65138i).e.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.b, var_4.a.b, var_4.c.b.b) + vec3<f32>(-1562f, -998f, var_3.a)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(737f, -1192f, -1072f)))), vec3<f32>(var_1.e.b, -523f, var_1.e.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1848f, var_3.a, 1060f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(164f, -577f, -295f)))), !select(true, select(global0.c.x, false, false), global0.c.x))));
}

