struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

var<private> global1: vec2<i32> = vec2<i32>(-1i, -67802i);

var<private> global2: vec4<f32> = vec4<f32>(-176f, 536f, 437f, 979f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<u32> {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(435f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))) - global2.x), global2.x, _wgslsmith_f_op_f32(526f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) + 149f))));
    var var_0 = _wgslsmith_add_i32(arg_1, global1.x);
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.a.x, ~4314u >> (u_input.c.x % 32u)), ~0u), max(abs(vec2<u32>(u_input.c.x, 4294967295u)), ~arg_0.a.yy));
    var var_2 = vec2<bool>(var_1 <= 1u, all(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, true, false)), true, false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, -730f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -266f, 395f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1830f, global2.x, 672f, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 1261f, -602f) - vec4<f32>(807f, global2.x, 1108f, 939f)))))), vec4<f32>(535f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -211f)), -594f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) + -387f)))));
    return _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_1, 4294967295u), ~(~(firstTrailingBit(u_input.c.zwx) >> (u_input.c.xwz % vec3<u32>(32u)))));
}

fn func_2(arg_0: u32) -> vec3<bool> {
    global1 = u_input.b.zy;
    var var_0 = all(vec2<bool>(true, false));
    var var_1 = (u_input.c.wxy >> (u_input.c.zxx % vec3<u32>(32u))) << (func_3(Struct_1(min(select(vec3<u32>(1u, 1u, 15924u), vec3<u32>(u_input.c.x, u_input.a.x, 69390u), false), vec3<u32>(u_input.c.x, 0u, 1u))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1005i, 0i, global1.x), abs(vec4<i32>(global1.x, -2147483647i, 13671i, 3622i))), 1i)) % vec3<u32>(32u));
    var var_2 = Struct_3(~(~0u));
    var var_3 = global2.x;
    return !select(vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), any(vec2<bool>(false, true)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true))), vec3<bool>(true, true, true), false);
}

fn func_1() -> u32 {
    global2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1757f, global2.x, global2.x, 451f)));
    global0 = array<Struct_3, 30>();
    let var_0 = !(!select(select(func_2(u_input.a.x), func_2(1u), true), vec3<bool>(any(vec3<bool>(true, false, false)), true, any(vec4<bool>(true, true, true, true))), vec3<bool>(false, true, any(vec2<bool>(true, true)))));
    global1 = _wgslsmith_mult_vec2_i32(vec2<i32>(7659i, -1i & u_input.b.x), vec2<i32>(global1.x, u_input.b.x));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, 160f)), vec4<f32>(789f, global2.x, -1425f, -498f))))) * vec4<f32>(358f, _wgslsmith_f_op_f32(652f + -1247f), 2516f, _wgslsmith_f_op_f32(abs(1000f))));
    return 83422u;
}

fn func_4(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2.wxz, vec3<f32>(global2.x, 1259f, global2.x), true)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2.x * 1000f), _wgslsmith_f_op_f32(global2.x + global2.x), -1834f))));
    var var_1 = -(~(vec2<i32>(-1i) * -vec2<i32>(-4664i, u_input.b.x)));
    var var_2 = Struct_2(false, Struct_1(u_input.c.zzw), _wgslsmith_mult_i32(_wgslsmith_sub_i32(abs(~(-36509i)), u_input.b.x << (func_1() % 32u)), min(_wgslsmith_mult_i32(1i, 1i), firstLeadingBit(1i))), Struct_1(~u_input.c.yzw));
    let var_3 = -30658i;
    let var_4 = select(select(func_2(17127u).zx, !vec2<bool>(true, any(vec3<bool>(var_2.a, true, false))), any(!(!vec2<bool>(var_2.a, true)))), vec2<bool>((45479i <= -u_input.b.x) && true, false), !select(vec2<bool>(0u > arg_0.a, any(vec4<bool>(var_2.a, false, var_2.a, true))), !vec2<bool>(true, var_2.a), func_2(~arg_0.a).yz));
    return abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_2.b.a.x, _wgslsmith_mult_u32(0u, 0u), arg_0.a, _wgslsmith_div_u32(u_input.c.x, 95330u)), vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.a.x, 1u, arg_0.a, 11086u), vec4<u32>(0u, 1u, u_input.c.x, 1u))), _wgslsmith_mod_u32(~4294967295u, 1u), ~(arg_0.a >> (0u % 32u)), var_2.b.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -939f))) + -1024f);
    var var_1 = ~func_4(global0[_wgslsmith_index_u32(~func_1(), 30u)]);
    var var_2 = Struct_2(all(vec4<bool>(_wgslsmith_f_op_f32(-global2.x) > 143f, true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), any(vec2<bool>(false, true)))), Struct_1(abs((vec3<u32>(u_input.c.x, var_1.x, 4294967295u) ^ vec3<u32>(var_1.x, u_input.a.x, u_input.c.x)) << (~vec3<u32>(u_input.c.x, var_1.x, var_1.x) % vec3<u32>(32u)))), firstTrailingBit(-18407i), Struct_1(~var_1.wyy));
    let var_3 = true;
    global1 = _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(20770i, var_2.c), select(vec2<i32>(0i, 0i), vec2<i32>(-17441i, 1i), var_3), func_2(35530u).zx) | vec2<i32>(reverseBits(2147483647i), _wgslsmith_add_i32(global1.x, 0i)), u_input.b.zy, vec2<i32>(_wgslsmith_sub_i32(-29310i, firstTrailingBit(var_2.c)), u_input.b.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(u_input.b.x, u_input.b.x)), countOneBits(abs(max(vec2<i32>(global1.x, 65605i), u_input.b.zy)))));
    var var_4 = Struct_2(!var_2.a, Struct_1(~(~vec3<u32>(63515u, 4294967295u, var_1.x))), -firstLeadingBit(var_2.c), var_2.d);
    var var_5 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(206f, 1166f) - global2.x), _wgslsmith_f_op_f32(step(global2.x, global2.x))) * _wgslsmith_f_op_vec2_f32(-global2.wz)), u_input.c);
}

