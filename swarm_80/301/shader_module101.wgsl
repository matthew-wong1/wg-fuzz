struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(0u, 84073u, 28813u, 1u, 55111u, 21549u, 4294967295u, 14005u, 4294967295u, 5981u, 4294967295u, 2513u, 35379u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.b.b.wzw);
    let var_1 = 1u;
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * arg_1.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-422f)), _wgslsmith_f_op_f32(min(var_0.x, arg_2.b.x)))) + -280f)) - arg_1.b.b.wxw);
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-782f, arg_1.b.b.x, -856f)))), arg_1.d.b.xwz));
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_2.b.xyw);
    return arg_2.c;
}

fn func_2(arg_0: vec3<f32>) -> vec3<u32> {
    global0 = array<u32, 13>();
    let var_0 = _wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 63337u);
    var var_1 = true;
    let var_2 = Struct_1(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), vec4<f32>(_wgslsmith_f_op_f32(288f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -153f) - arg_0.x)), arg_0.x, -1766f, arg_0.x), !func_3(~(vec3<u32>(4294967295u, 15164u, global0[_wgslsmith_index_u32(35596u, 13u)]) >> (vec3<u32>(32426u, 65061u, var_0) % vec3<u32>(32u))), Struct_2(~19973u, Struct_1(vec2<bool>(false, true), vec4<f32>(arg_0.x, arg_0.x, 195f, arg_0.x), vec4<bool>(true, false, true, true), false), ~u_input.d.x, Struct_1(vec2<bool>(false, true), vec4<f32>(-127f, -789f, arg_0.x, arg_0.x), vec4<bool>(false, false, true, true), false)), Struct_1(vec2<bool>(true, true), vec4<f32>(arg_0.x, arg_0.x, -1785f, arg_0.x), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x) <= -1000f);
    let var_3 = false;
    return select(vec3<u32>(min(4294967295u, 1u | select(var_0, 0u, true)), 130983u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18035u, 13u)], 13u)], 13u)]), firstLeadingBit(1u)), 13u)], 13u)], _wgslsmith_mod_u32(4294967295u, 0u >> (var_0 % 32u)))), ~select(vec3<u32>(_wgslsmith_div_u32(var_0, global0[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(10375u, 1u, 23335u), vec3<u32>(0u, 1u, var_0)), 33000u), ~(~vec3<u32>(0u, global0[_wgslsmith_index_u32(var_0, 13u)], var_0)), func_3(reverseBits(vec3<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 13u)], 1u)), Struct_2(1u, var_2, 49201i, Struct_1(var_2.c.zy, vec4<f32>(var_2.b.x, 722f, var_2.b.x, -110f), vec4<bool>(var_2.d, var_2.d, false, false), false)), Struct_1(var_2.a, var_2.b, vec4<bool>(var_2.d, true, var_2.d, var_3), true)).x), any(vec2<bool>(false, any(var_2.c))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec3_u32(~func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2613f, -316f, -1161f) * vec3<f32>(1179f, -655f, 2170f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-552f, -568f, 141f)))), _wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], 0u, 4294967295u, 142034u), vec4<u32>(global0[_wgslsmith_index_u32(35067u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31494u, 13u)], 13u)], global0[_wgslsmith_index_u32(34469u, 13u)], 0u))), ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(37884u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31976u, 13u)], 13u)]), ~min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68149u, 13u)], 13u)], global0[_wgslsmith_index_u32(1u, 13u)])), firstTrailingBit(~(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 13u)], 22717u, global0[_wgslsmith_index_u32(3619u, 13u)])))), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15406u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 96133u, 15440u), vec3<u32>(0u, 11906u, global0[_wgslsmith_index_u32(4294967295u, 13u)])) ^ 1u, abs(70976u), countOneBits(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)])));
    var_0 = vec3<u32>(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-921f, 2110f, 676f))).x ^ var_0.x, ~(~var_0.x), var_0.x) ^ ~(~(~select(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 13u)], 13u)], 0u), vec3<u32>(var_0.x, var_0.x, 50035u), vec3<bool>(true, true, false))));
    var_0 = vec3<u32>(global0[_wgslsmith_index_u32(0u, 13u)], min(countOneBits(0u), min(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 13u)], 13u)], 13u)], var_0.x)), var_0.x) >> ((~firstLeadingBit(vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(66757u, 13u)], var_0.x) >> (vec3<u32>(30290u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 13u)], 13u)], global0[_wgslsmith_index_u32(105078u, 13u)]) % vec3<u32>(32u))) << (~select(max(vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(var_0.x, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)]), vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(6925u, 13u)])), firstLeadingBit(vec3<u32>(47674u, 29927u, 69818u)), any(vec4<bool>(true, false, true, false))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = var_0.x;
    let var_2 = 2147483647i;
    return Struct_2(var_0.x, Struct_1(vec2<bool>(true, all(vec2<bool>(false, false)) | false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-3097f, -1455f, _wgslsmith_div_f32(1068f, -541f), -1000f)), !vec4<bool>(all(vec2<bool>(true, false)), true, all(vec3<bool>(true, false, true)), true), true), u_input.c.x, Struct_1(vec2<bool>(false, u_input.a >= (-2147483647i >> (var_0.x % 32u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-611f, -1123f, 2462f, -1727f))))), vec4<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), (var_0.x < var_0.x) || true, false), func_3(vec3<u32>(4294967295u, var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)]), Struct_2(72171u, Struct_1(vec2<bool>(false, true), vec4<f32>(-1194f, -135f, -1499f, -338f), vec4<bool>(false, false, true, true), false), var_2, Struct_1(vec2<bool>(false, false), vec4<f32>(984f, 2475f, 1430f, 849f), vec4<bool>(true, false, false, true), true)), Struct_1(vec2<bool>(true, false), vec4<f32>(-589f, -955f, -518f, -165f), vec4<bool>(false, false, true, false), true)).x && true));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = func_1().d;
    let var_1 = Struct_5(Struct_4(arg_2.a.b.b.x, func_1().d.c.xww, Struct_2(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(46304u, arg_2.a.a), vec2<u32>(1u, 3444u)), 13u)], Struct_1(arg_1.yy, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.b.x, arg_0.b.b.x, var_0.b.x) - var_0.b), arg_0.d.c, true), _wgslsmith_dot_vec3_i32(max(u_input.b.xxx, vec3<i32>(arg_2.a.c, arg_2.a.c, u_input.a)), vec3<i32>(arg_2.a.c, arg_2.a.c, u_input.b.x) >> (vec3<u32>(arg_2.a.a, global0[_wgslsmith_index_u32(0u, 13u)], 60486u) % vec3<u32>(32u))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-arg_0.d.b), vec4<bool>(arg_1.x, arg_0.d.d, true, true), arg_2.a.b.d))), false, _wgslsmith_clamp_u32(arg_0.a, abs(firstLeadingBit(~72912u)), select(global0[_wgslsmith_index_u32(arg_0.a, 13u)], 18537u | select(68916u, 1u, false), !(!var_0.a.x))));
    let var_2 = arg_0.b.c;
    var var_3 = Struct_3(func_1(), false);
    let var_4 = Struct_5(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(-var_3.a.d.b.x)) <= _wgslsmith_f_op_f32(1831f * -136f), arg_0.a);
    return !func_1().d.c.wwz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 13>();
    var var_0 = func_4(func_1(), vec3<bool>(func_3(vec3<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45307u, 13u)], 13u)], 13u)], 1543u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, 1u), 13u)], 13u)], 24791u), Struct_2(1u, func_1().b, select(-69528i, -2147483647i, false), func_1().d), Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -549f, -1000f, -393f)), func_3(vec3<u32>(23001u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24886u, 13u)], 13u)], 13u)], 4294967295u), Struct_2(global0[_wgslsmith_index_u32(52107u, 13u)], Struct_1(vec2<bool>(true, false), vec4<f32>(-131f, 866f, -2094f, -1139f), vec4<bool>(false, false, true, true), true), 17501i, Struct_1(vec2<bool>(false, false), vec4<f32>(700f, -982f, 1715f, 666f), vec4<bool>(true, false, false, true), true)), Struct_1(vec2<bool>(true, true), vec4<f32>(864f, 343f, -1831f, 132f), vec4<bool>(false, false, false, false), true)), all(vec3<bool>(false, false, true)))).x, false, true), Struct_3(Struct_2(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(111940u, 13u)], 12093u), func_1().b, func_1().c, Struct_1(vec2<bool>(true, true), vec4<f32>(680f, 2459f, 1295f, 1608f), func_1().b.c, true)), all(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(406f, 1277f, 1322f, 1276f))) - vec4<f32>(754f, -580f, -532f, -419f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-468f, -214f, 209f, 340f) + vec4<f32>(-1122f, 439f, 407f, 1443f))), _wgslsmith_div_vec4_f32(vec4<f32>(701f, -1000f, 429f, -684f), vec4<f32>(838f, 257f, -640f, -168f)), !func_1().b.d)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1315f, _wgslsmith_f_op_f32(round(190f)), 1f, -534f) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-695f, 1305f, 366f, 1715f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1067f, 978f, -697f, -865f)))))));
    let var_2 = ~(~(~abs(abs(vec4<u32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(7877u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 10422u)))));
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(-20000i, _wgslsmith_add_i32(u_input.d.x ^ -54990i, i32(-1i) * -2720i)), -_wgslsmith_clamp_i32(1i, -(i32(-1i) * -41393i), ~1i), u_input.a ^ 1i);
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.b.x), u_input.b, _wgslsmith_f_op_vec2_f32(sign(var_1.zw)), reverseBits(u_input.a), _wgslsmith_mod_vec2_i32(select(firstTrailingBit(vec2<i32>(-50680i, u_input.d.x)), vec2<i32>(-59392i, abs(-71882i)), !select(vec2<bool>(var_0.x, var_0.x), var_0.yz, false)), _wgslsmith_add_vec2_i32(vec2<i32>(var_3, u_input.c.x), u_input.b.wy)));
}

