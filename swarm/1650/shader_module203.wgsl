struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<bool>(true, false, false), vec2<f32>(247f, -982f), vec4<f32>(-1467f, 721f, -438f, 273f)));

var<private> global2: vec2<u32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> i32 {
    global2 = ~(~min(_wgslsmith_mult_vec2_u32(~vec2<u32>(14056u, 22971u), vec2<u32>(global2.x, 4294967295u)), countOneBits(max(vec2<u32>(global2.x, 4294967295u), vec2<u32>(4294967295u, arg_1.c.x)))));
    return firstTrailingBit(-reverseBits(reverseBits(23173i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = arg_0;
    global2 = vec2<u32>(arg_0.c.x, ~33882u);
    let var_1 = ~(~func_3(-366f, arg_1));
    let var_2 = arg_2;
    let var_3 = Struct_1(vec3<bool>(arg_1.b.a.x, select(global0.x, true, arg_1.b.a.x), false), arg_0.b.c.zy, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), var_2), 1227f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.b.x, var_2)), var_0.b.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_1.b.c))) + _wgslsmith_f_op_vec4_f32(var_0.b.c + var_0.b.c)))));
    return !vec2<bool>(all(vec2<bool>(true || arg_1.b.a.x, false | arg_0.b.a.x)), min(abs(0u), 4294967295u) < ~_wgslsmith_dot_vec4_u32(vec4<u32>(7724u, arg_0.c.x, var_0.c.x, global2.x), vec4<u32>(var_0.c.x, arg_1.c.x, 6562u, 9081u)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: bool) -> i32 {
    var var_0 = ~select(~vec4<u32>(0u, 0u, 1u, 4294967295u) << (_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(global2.x, global2.x, global2.x, global2.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 6918u, 1u), vec4<u32>(global2.x, global2.x, 0u, 0u), vec4<u32>(global2.x, 4294967295u, 97012u, 4294967295u))) % vec4<u32>(32u)), select(vec4<u32>(~global2.x, _wgslsmith_add_u32(0u, 61888u), ~global2.x, global2.x), ~vec4<u32>(global2.x, global2.x, 1u, global2.x) & ~vec4<u32>(0u, global2.x, global2.x, 4294967295u), all(func_2(Struct_2(u_input.c, Struct_1(vec3<bool>(false, arg_3, arg_0), vec2<f32>(-928f, -1555f), vec4<f32>(395f, 1000f, -1000f, -1206f)), vec2<u32>(0u, 105974u)), Struct_2(arg_1, Struct_1(vec3<bool>(false, true, false), vec2<f32>(277f, 1092f), vec4<f32>(306f, -128f, -253f, 412f)), vec2<u32>(1u, global2.x)), 104f, vec4<i32>(-18521i, arg_1.x, 22696i, -865i)))), vec4<bool>(~global2.x >= 4294967295u, true, arg_0, (global2.x <= global2.x) && arg_3));
    var var_1 = Struct_1(vec3<bool>(!(!any(vec4<bool>(false, arg_3, arg_3, global0.x))), any(!select(vec3<bool>(true, true, arg_3), vec3<bool>(true, global0.x, global0.x), true)), global0.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(335f, -163f) + vec2<f32>(-1106f, -471f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(140f, -1000f)), vec2<f32>(_wgslsmith_f_op_f32(abs(200f)), _wgslsmith_f_op_f32(select(405f, 119f, arg_0))), true)))), vec4<f32>(1f, 1f, 1f, 1f));
    var var_2 = Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, u_input.c.x, -1i), vec3<i32>(arg_2.x, u_input.b.x, 0i)), -19675i), firstLeadingBit(firstTrailingBit(34666i)))), Struct_1(var_1.a, vec2<f32>(1744f, _wgslsmith_f_op_f32(-var_1.b.x)), var_1.c), var_0.zz);
    global2 = _wgslsmith_mult_vec2_u32(vec2<u32>(~(~var_2.c.x), ~(~21167u ^ (117964u ^ var_2.c.x))), var_0.xw);
    var var_3 = select(select(select(!vec3<bool>(global0.x, false, true), select(!vec3<bool>(true, arg_3, true), var_2.b.a, arg_0), !select(vec3<bool>(var_2.b.a.x, false, false), var_1.a, true)), vec3<bool>(!(!var_2.b.a.x), _wgslsmith_add_i32(-23210i, u_input.a.x) != ~u_input.d.x, true), true), var_2.b.a, var_1.a);
    return _wgslsmith_clamp_i32(i32(-1i) * -19590i, 0i, _wgslsmith_dot_vec3_i32(u_input.b, min(vec3<i32>(-1i, 10775i, -2147483647i), vec3<i32>(countOneBits(2147483647i), 1i, var_2.a.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec3<bool>) -> vec4<bool> {
    global2 = _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, global2.x, global2.x), _wgslsmith_mod_vec3_u32(vec3<u32>(25989u, 4294967295u, 21486u), vec3<u32>(24179u, global2.x, global2.x))), 58279u | _wgslsmith_mult_u32(global2.x, global2.x)), ~vec2<u32>(10552u, global2.x));
    var var_0 = _wgslsmith_add_vec2_i32(u_input.d.zz, -vec2<i32>(-_wgslsmith_clamp_i32(u_input.a.x, 1i, arg_1.x), -(i32(-1i) * -55589i)));
    var var_1 = Struct_2(reverseBits(abs(vec2<i32>(u_input.b.x, var_0.x) | u_input.c)) | max(abs(max(vec2<i32>(-16101i, 4220i), arg_1.ww)), -arg_1.yw), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~53521u, _wgslsmith_mod_u32(1u, 4294967295u)), 1u)], ~(~_wgslsmith_sub_vec2_u32(~vec2<u32>(global2.x, 4294967295u), select(vec2<u32>(global2.x, global2.x), vec2<u32>(328u, 1u), arg_0.zy))));
    let var_2 = select(all(arg_0.yz), true, !global0.x);
    global0 = arg_0.yz;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(vec3<bool>(any(vec4<bool>(true, global0.x, global0.x, global0.x)), !global0.x, global0.x), select(!vec3<bool>(true, global0.x, global0.x), !vec3<bool>(global0.x, false, true), !vec3<bool>(global0.x, false, true)), all(!vec2<bool>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -703f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1100f, -638f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1841f, 1230f, -377f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(164f, 1291f, -435f, 276f))))))));
    var var_1 = !(!select(vec4<bool>(global0.x, select(global0.x, true, global0.x), select(false, true, false), global0.x && global0.x), vec4<bool>(!var_0.a.x, any(var_0.a), global0.x, any(var_0.a)), true));
    var var_2 = func_4(!vec4<bool>(_wgslsmith_mod_i32(-12904i, -9467i) <= (u_input.d.x & u_input.c.x), 30836i < func_1(var_0.a.x, vec2<i32>(u_input.a.x, -4752i), vec3<i32>(0i, u_input.d.x, 1i), var_0.a.x), all(select(var_0.a, var_0.a, true)), false), u_input.d & ((countOneBits(vec4<i32>(u_input.d.x, 1i, 12912i, -11936i)) | -vec4<i32>(-12553i, u_input.c.x, u_input.c.x, u_input.c.x)) ^ countOneBits(vec4<i32>(u_input.d.x, u_input.a.x, u_input.c.x, u_input.b.x))), select(var_0.a, vec3<bool>(false, true, false), vec3<bool>(var_0.a.x != false, var_0.a.x, func_2(Struct_2(vec2<i32>(u_input.d.x, u_input.c.x), global1[_wgslsmith_index_u32(1u, 1u)], vec2<u32>(4294967295u, 4294967295u)), Struct_2(u_input.d.zz, Struct_1(vec3<bool>(false, true, false), var_0.b, vec4<f32>(350f, -1557f, 220f, var_0.b.x)), vec2<u32>(1u, 34245u)), _wgslsmith_f_op_f32(sign(var_0.c.x)), u_input.d << (vec4<u32>(21684u, 16039u, 41771u, 8692u) % vec4<u32>(32u))).x)));
    var var_3 = Struct_2(u_input.d.yx, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(91286u, _wgslsmith_mod_u32(59893u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 1u, global2.x, global2.x), vec4<u32>(1u, global2.x, global2.x, 0u)))), ~_wgslsmith_sub_u32(4294967295u, 0u)), 1u)], _wgslsmith_clamp_vec2_u32(~(~(~vec2<u32>(0u, global2.x))), select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global2.x), vec2<u32>(38764u, 24806u), vec2<u32>(global2.x, 101532u)), max(~vec2<u32>(2450u, 747u), ~vec2<u32>(1u, 56697u)), vec2<bool>(any(var_0.a), true)), vec2<u32>(1u, global2.x)));
    let var_4 = _wgslsmith_div_vec4_i32(~_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.d | vec4<i32>(1i, var_3.a.x, 1i, 0i), vec4<i32>(0i, u_input.b.x, -1i, var_3.a.x), max(vec4<i32>(u_input.b.x, 1i, 4245i, var_3.a.x), vec4<i32>(var_3.a.x, var_3.a.x, -2147483647i, 7984i))), abs(u_input.d) & u_input.d, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, 1i, 2147483647i, var_3.a.x), vec4<i32>(var_3.a.x, 0i, 4044i, u_input.a.x), vec4<i32>(var_3.a.x, u_input.d.x, 30854i, u_input.a.x)) << (vec4<u32>(13612u, 35994u, global2.x, 0u) % vec4<u32>(32u))), max(_wgslsmith_div_vec4_i32(vec4<i32>(~u_input.c.x, -2147483647i, var_3.a.x >> (var_3.c.x % 32u), u_input.c.x ^ var_3.a.x), vec4<i32>(_wgslsmith_mult_i32(var_3.a.x, 43660i), min(var_3.a.x, var_3.a.x), 670i, -23205i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-17786i, u_input.a.x, 7323i, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-21472i, -22753i, -1i, u_input.d.x), u_input.d))));
    var var_5 = ~(~vec3<u32>(~(~global2.x), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, 20404u, 4833u), var_3.c.x & 1u), global2.x));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(428f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(237f, var_3.b.b.x))));
    let var_7 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(~vec3<i32>(14924i, 1i, 11469i), -vec3<i32>(-95116i, 27796i, var_3.a.x)), var_3.a.x, 84097u);
}

