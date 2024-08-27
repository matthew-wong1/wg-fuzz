struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<bool>(false, false), 4294967295u, vec3<bool>(true, false, false), vec3<f32>(-1184f, 707f, -1556f)), Struct_1(vec2<bool>(true, false), 35189u, vec3<bool>(false, true, false), vec3<f32>(-1038f, -445f, 326f)), Struct_1(vec2<bool>(true, false), 7071u, vec3<bool>(true, true, false), vec3<f32>(-348f, -1615f, -1393f)), Struct_1(vec2<bool>(false, true), 100265u, vec3<bool>(true, false, false), vec3<f32>(660f, 1131f, 1000f)), Struct_1(vec2<bool>(true, true), 58374u, vec3<bool>(true, false, true), vec3<f32>(-363f, -885f, -577f)), Struct_1(vec2<bool>(true, false), 4294967295u, vec3<bool>(false, false, true), vec3<f32>(578f, -1619f, -2032f)), Struct_1(vec2<bool>(false, false), 41918u, vec3<bool>(true, true, false), vec3<f32>(149f, 785f, 275f)), Struct_1(vec2<bool>(false, false), 15519u, vec3<bool>(false, true, true), vec3<f32>(1780f, -224f, -308f)), Struct_1(vec2<bool>(true, true), 0u, vec3<bool>(true, false, true), vec3<f32>(1203f, -1000f, 605f)), Struct_1(vec2<bool>(true, false), 46398u, vec3<bool>(true, false, false), vec3<f32>(-661f, -2062f, 2238f)), Struct_1(vec2<bool>(true, false), 4294967295u, vec3<bool>(false, true, true), vec3<f32>(732f, -1617f, -870f)), Struct_1(vec2<bool>(false, false), 4294967295u, vec3<bool>(false, false, false), vec3<f32>(165f, 1000f, -1222f)), Struct_1(vec2<bool>(false, false), 18157u, vec3<bool>(false, true, true), vec3<f32>(-1553f, 464f, 286f)), Struct_1(vec2<bool>(true, false), 4294967295u, vec3<bool>(false, true, true), vec3<f32>(136f, 545f, 306f)), Struct_1(vec2<bool>(true, true), 7660u, vec3<bool>(true, true, false), vec3<f32>(-141f, -373f, 426f)), Struct_1(vec2<bool>(true, true), 0u, vec3<bool>(false, false, false), vec3<f32>(-636f, -208f, -1000f)), Struct_1(vec2<bool>(true, false), 0u, vec3<bool>(false, false, true), vec3<f32>(-1615f, 188f, 1000f)), Struct_1(vec2<bool>(true, false), 1u, vec3<bool>(true, true, true), vec3<f32>(1000f, 1000f, 550f)), Struct_1(vec2<bool>(true, true), 50640u, vec3<bool>(true, false, true), vec3<f32>(1098f, 831f, 1198f)), Struct_1(vec2<bool>(false, true), 1u, vec3<bool>(true, false, false), vec3<f32>(602f, 1438f, -1000f)), Struct_1(vec2<bool>(true, true), 10909u, vec3<bool>(false, false, false), vec3<f32>(1398f, 282f, 1031f)), Struct_1(vec2<bool>(false, false), 0u, vec3<bool>(true, false, false), vec3<f32>(381f, 543f, -1000f)), Struct_1(vec2<bool>(false, false), 0u, vec3<bool>(false, true, true), vec3<f32>(237f, 185f, 528f)), Struct_1(vec2<bool>(false, false), 4294967295u, vec3<bool>(true, false, true), vec3<f32>(286f, 2544f, -1051f)), Struct_1(vec2<bool>(true, false), 1u, vec3<bool>(false, false, true), vec3<f32>(-669f, 871f, -769f)), Struct_1(vec2<bool>(true, true), 0u, vec3<bool>(false, true, true), vec3<f32>(1511f, 1146f, 593f)), Struct_1(vec2<bool>(true, false), 57532u, vec3<bool>(false, true, false), vec3<f32>(-140f, 1156f, -1000f)));

var<private> global1: vec2<f32> = vec2<f32>(-325f, 1000f);

var<private> global2: vec4<i32>;

var<private> global3: Struct_3;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(min(arg_0.xzz, arg_0.xxw & (arg_0.ywx & vec3<u32>(0u, 4294967295u, arg_1.x))), max(~vec3<u32>(arg_1.x, 4294967295u, 25743u) << (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_0.x, arg_0.x), vec3<u32>(4294967295u, 0u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_0.x, arg_0.x), arg_1.yxy))), _wgslsmith_sub_vec3_u32(arg_0.wyy, arg_0.wwz) & ~arg_1.wxx);
    var var_1 = countOneBits(select(global2.xz, vec2<i32>(global2.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), false), 0i > u_input.a.x), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !select(vec2<bool>(false, true), vec2<bool>(false, true), false))));
    var var_2 = Struct_4(1u, Struct_1(select(vec2<bool>(730f == global3.d.x, false), vec2<bool>(536f != global3.d.x, global1.x == 196f), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true))), var_0.x, vec3<bool>(true, true, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1270f, 1369f, global3.c.x))) + global3.c.zyw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.c.x, 404f, 667f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - 2480f), Struct_2(true, _wgslsmith_add_i32(_wgslsmith_mod_i32(-4610i, global3.b.x) << (_wgslsmith_dot_vec4_u32(arg_1, arg_1) % 32u), 28054i), _wgslsmith_div_vec2_u32(~abs(var_0.yy), ~reverseBits(vec2<u32>(0u, 4294967295u)))));
    global2 = vec4<i32>(-(~(~global3.a.x)), ~_wgslsmith_mod_i32(var_2.d.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, arg_0.x), vec3<u32>(1u, 18158u, var_0.x)) % 32u), _wgslsmith_div_i32(-7266i, global2.x)), -2021i, countOneBits(reverseBits(global2.x)));
    let var_3 = var_2.d;
    return vec4<u32>(~arg_0.x, ~select(~33626u << (~var_0.x % 32u), select(reverseBits(4294967295u), 23063u, true), any(select(vec4<bool>(true, var_2.d.a, false, var_3.a), vec4<bool>(var_2.d.a, true, true, true), false))), 0u, _wgslsmith_div_u32(arg_0.x, 29188u));
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    var var_1 = _wgslsmith_mod_u32(~min(_wgslsmith_dot_vec2_u32(vec2<u32>(46175u, 4294967295u), vec2<u32>(1u, 1u)), 1u), firstLeadingBit(max(~1u, ~abs(18049u))));
    let var_2 = u_input.a.wx;
    global2 = select(vec4<i32>(2147483647i, ~(-19214i), 1i, 50430i), abs(u_input.a) << (countOneBits(vec4<u32>(0u, 0u, 26625u, 4294967295u)) % vec4<u32>(32u)), var_0) << (max(_wgslsmith_add_vec4_u32(func_3(~vec4<u32>(0u, 172u, 87676u, 0u), ~vec4<u32>(1u, 4294967295u, 35892u, 0u)), abs(vec4<u32>(0u, 0u, 4294967295u, 0u))), ~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u));
    let var_3 = Struct_1(!vec2<bool>(any(!vec4<bool>(true, var_0, true, var_0)), var_0), abs(4294967295u), vec3<bool>(var_0, true, var_0 && select(all(vec4<bool>(var_0, var_0, var_0, false)), true, var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.x, -939f, -623f)) * global3.c.wxw)));
    return Struct_2(any(vec4<bool>(var_3.a.x, true, true, !var_3.a.x)) & true, 24203i, vec2<u32>(68161u, ~27250u));
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = any(select(vec4<bool>(true, true, arg_0 >= abs(u_input.a.x), (global3.c.x > 2985f) == true), vec4<bool>(false, true, true, !all(vec4<bool>(false, false, false, true))), vec4<bool>(false, false, true, true)));
    let var_1 = abs(arg_0);
    let var_2 = reverseBits(-19951i);
    var var_3 = func_2();
    let var_4 = Struct_5(abs(-var_2), ~_wgslsmith_sub_i32(-(~var_2), 31115i & _wgslsmith_add_i32(u_input.a.x, global3.b.x)), ~(~(~var_3.c.x)));
    return Struct_4(1u, global0[_wgslsmith_index_u32(~var_4.c, 27u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_f32(-global1.x)))), Struct_2(false, ~(-27555i), ~firstTrailingBit(min(vec2<u32>(var_3.c.x, 66750u), var_3.c))));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: vec3<u32>) -> vec3<i32> {
    let var_0 = true;
    let var_1 = true;
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    return _wgslsmith_sub_vec3_i32(-(~global3.a), global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(countOneBits(func_4(global1.x, vec3<bool>(true, false, all(vec2<bool>(false, true))), func_1(1i), select(firstTrailingBit(vec3<u32>(1u, 1u, 59439u)), ~vec3<u32>(13473u, 0u, 47572u), true))), global2.yx, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-783f, _wgslsmith_f_op_f32(global3.c.x * global3.d.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.c.x - -618f))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1382f, 769f, -1000f, global3.d.x)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(439f, -358f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-366f, global1.x), _wgslsmith_div_vec2_f32(vec2<f32>(974f, global3.c.x), global3.c.xy))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(global3.c.zy, vec2<f32>(-124f, global3.d.x)))))));
    var var_1 = var_0.c.zz;
    let var_2 = func_2().b;
    let var_3 = func_1(var_2).d.c.x;
    let var_4 = Struct_4(max(_wgslsmith_sub_u32(~var_3, _wgslsmith_div_u32(var_3, 152620u)), ~max(var_3, var_3)), global0[_wgslsmith_index_u32(var_3, 27u)], 104f, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(var_0.c, vec4<f32>(_wgslsmith_f_op_f32(max(831f, _wgslsmith_f_op_f32(var_1.x * var_4.c))), -970f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.x) + func_1(-1i).b.d.x), func_1(func_2().b).b.d.x)), 1684f, 710f, vec4<i32>(-_wgslsmith_mult_i32(u_input.a.x, 1i), global2.x, ~countOneBits(reverseBits(var_0.a.x)), _wgslsmith_mod_i32(~var_0.b.x << (firstTrailingBit(var_3) % 32u), -10227i)), _wgslsmith_f_op_f32(step(-308f, global3.c.x)));
}

