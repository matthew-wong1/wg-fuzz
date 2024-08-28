struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec4<bool>(true, true, false, false), vec4<i32>(73853i, 1i, 30259i, -1i), Struct_1(vec4<f32>(-379f, 1241f, -449f, 218f)), vec4<i32>(33259i, 14308i, 0i, -64057i)), Struct_2(vec4<bool>(false, false, false, true), vec4<i32>(-33001i, 2147483647i, 2147483647i, 36736i), Struct_1(vec4<f32>(1401f, -1578f, -1133f, -231f)), vec4<i32>(2147483647i, -42011i, -48327i, -8195i)), Struct_2(vec4<bool>(true, true, true, true), vec4<i32>(19121i, 1i, 2930i, -1i), Struct_1(vec4<f32>(913f, -423f, 671f, -1073f)), vec4<i32>(-1i, -1i, 2147483647i, 2147483647i)), Struct_2(vec4<bool>(false, true, true, true), vec4<i32>(-1i, 2147483647i, -5472i, -21748i), Struct_1(vec4<f32>(1569f, -1107f, 1132f, 101f)), vec4<i32>(1i, 9999i, 43832i, i32(-2147483648))), Struct_2(vec4<bool>(true, false, true, false), vec4<i32>(-2309i, i32(-2147483648), -11744i, 0i), Struct_1(vec4<f32>(-612f, 2618f, 494f, 818f)), vec4<i32>(2558i, -21576i, -45951i, -85219i)), Struct_2(vec4<bool>(false, false, false, false), vec4<i32>(31444i, 33412i, 18040i, 18329i), Struct_1(vec4<f32>(627f, -972f, -413f, 1560f)), vec4<i32>(1i, i32(-2147483648), -23160i, -6834i)), Struct_2(vec4<bool>(false, true, false, true), vec4<i32>(-14525i, 46799i, 1i, 2147483647i), Struct_1(vec4<f32>(439f, -1203f, 532f, -166f)), vec4<i32>(i32(-2147483648), i32(-2147483648), -12511i, 20674i)), Struct_2(vec4<bool>(false, false, false, true), vec4<i32>(0i, 1i, 2147483647i, -1i), Struct_1(vec4<f32>(1411f, -1080f, 248f, 913f)), vec4<i32>(11329i, -17423i, -1i, -20319i)), Struct_2(vec4<bool>(false, true, true, true), vec4<i32>(26495i, -31647i, -1874i, 1112i), Struct_1(vec4<f32>(242f, -744f, -200f, -376f)), vec4<i32>(-28254i, -6378i, 0i, 0i)), Struct_2(vec4<bool>(true, true, false, true), vec4<i32>(37417i, 1i, 1i, 0i), Struct_1(vec4<f32>(1791f, 1028f, -543f, 1084f)), vec4<i32>(2147483647i, 0i, -9154i, 2147483647i)), Struct_2(vec4<bool>(true, true, false, true), vec4<i32>(-4778i, 1i, -1i, 15225i), Struct_1(vec4<f32>(-413f, 949f, -1274f, -1123f)), vec4<i32>(2147483647i, 1i, 0i, 4462i)), Struct_2(vec4<bool>(true, false, false, true), vec4<i32>(32897i, -1i, -34348i, -697i), Struct_1(vec4<f32>(316f, -370f, 3363f, -1316f)), vec4<i32>(-4242i, -11730i, 5879i, 26124i)), Struct_2(vec4<bool>(true, false, true, true), vec4<i32>(42103i, 2147483647i, 0i, 19656i), Struct_1(vec4<f32>(2278f, 205f, 1596f, 820f)), vec4<i32>(0i, -49240i, i32(-2147483648), 36274i)));

var<private> global1: array<vec4<i32>, 7>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-540f, 1396f, 632f, 220f));

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-432f, 721f, 1002f, -815f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = Struct_2(!vec4<bool>(all(vec3<bool>(true, true, true)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true)), !(u_input.a.x <= 0u), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 1u, u_input.d, 1u)) != u_input.c.x), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 1i, -17044i, 23836i), global1[_wgslsmith_index_u32(u_input.c.x, 7u)]), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3.a.x, 592f), _wgslsmith_f_op_f32(global2.a.x + global3.a.x), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2368f + global2.a.x), _wgslsmith_f_op_f32(217f - 1000f))), global3.a.x, _wgslsmith_f_op_f32(abs(484f)))), abs(vec4<i32>(~(i32(-1i) * -9270i), u_input.b, ~_wgslsmith_mod_i32(u_input.b, 0i), firstTrailingBit(-u_input.b))));
    var var_1 = global0[_wgslsmith_index_u32(27597u, 13u)];
    var var_2 = -_wgslsmith_mult_i32(~(-var_1.d.x & var_1.b.x), 1i);
    let var_3 = _wgslsmith_div_u32(countOneBits(u_input.a.x), 1u);
    let var_4 = Struct_5(u_input.b);
    return !select(true, false, false);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = ~(u_input.b & -(18205i >> (_wgslsmith_div_u32(u_input.a.x, arg_0.x) % 32u)));
    var var_1 = func_3();
    var var_2 = 0i;
    global2 = Struct_1(global3.a);
    var var_3 = Struct_3(arg_1, -((vec3<i32>(u_input.b, -43483i, 1i) & vec3<i32>(u_input.b, u_input.b, 1253i)) & reverseBits(vec3<i32>(u_input.b, u_input.b, 0i))) >> (~arg_0 % vec3<u32>(32u)));
    return ~(~_wgslsmith_add_u32(~arg_3.x, abs(arg_3.x)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: i32, arg_3: u32) -> Struct_2 {
    let var_0 = u_input.a;
    return Struct_2(!vec4<bool>(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(global2.a.x + -119f) != arg_0.x, false, !any(vec3<bool>(true, true, false))), vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(33427i), 1i) >> (2091u % 32u), u_input.b, arg_1.a << (max(func_2(u_input.c.wyz, Struct_1(vec4<f32>(292f, 388f, global3.a.x, -150f)), vec4<f32>(global3.a.x, arg_0.x, 1231f, 360f), u_input.a), var_0.x) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(8212i, arg_1.a, arg_1.a)), countOneBits(vec3<i32>(arg_1.a, 40888i, 0i))), vec3<i32>(i32(-1i) * -35158i, arg_2, _wgslsmith_sub_i32(-1i, arg_1.a)))), Struct_1(global2.a), global1[_wgslsmith_index_u32(1u, 7u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_add_i32(~(-9010i), countOneBits(u_input.b)), _wgslsmith_add_i32(_wgslsmith_add_i32(0i, u_input.b), _wgslsmith_sub_i32(u_input.b, 1i))), -vec3<i32>(reverseBits(u_input.b), min(u_input.b, 16084i), u_input.b << (u_input.a.x % 32u))) & firstLeadingBit(_wgslsmith_sub_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), -_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.b, -1i), vec3<i32>(u_input.b, u_input.b, 0i))));
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-597f, _wgslsmith_f_op_f32(global3.a.x * 1000f))), global3.a.x, _wgslsmith_f_op_f32(global2.a.x * global3.a.x))), Struct_5(_wgslsmith_div_i32(-8306i, var_0.x)), 1i, 74838u);
    var var_2 = var_1.c;
    var_2 = func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a.x))), _wgslsmith_f_op_f32(-1f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, var_2.a.x, false))), global2.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-348f - 1693f)))), select(var_1.a.wzy, !(!vec3<bool>(false, var_1.a.x, var_1.a.x)), select(var_1.a.xwx, func_1(var_1.c.a.yzx, Struct_5(var_0.x), -52637i, u_input.c.x).a.zxz, select(vec3<bool>(true, false, var_1.a.x), var_1.a.xyx, vec3<bool>(var_1.a.x, false, var_1.a.x)))))), Struct_5((-1i ^ u_input.b) | _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_0.x, var_0.x)), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.d.x, -47813i), var_1.d.xz))), -_wgslsmith_mult_i32(-183i | var_0.x, _wgslsmith_mult_i32(var_1.b.x, var_0.x)) >> (u_input.c.x % 32u), abs(119100u)).c;
    var var_3 = Struct_2(var_1.a, global1[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, u_input.d)), vec2<u32>(u_input.d, 1u))), 7u)], func_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2202f, global2.a.x, var_2.a.x)), vec3<f32>(_wgslsmith_f_op_f32(global2.a.x - -486f), global3.a.x, -1212f))), Struct_5(-_wgslsmith_dot_vec4_i32(vec4<i32>(-22361i, -28490i, -2147483647i, var_0.x), var_1.b)), abs(firstLeadingBit(var_0.x | var_1.d.x)), u_input.a.x).c, global1[_wgslsmith_index_u32(u_input.d, 7u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(select(u_input.c.wzw, u_input.c.zyy, var_1.a.zyx), vec3<u32>(u_input.a.x, u_input.d, 160u) << (vec3<u32>(21107u, u_input.d, u_input.c.x) % vec3<u32>(32u))), ~firstTrailingBit(u_input.c.xzx | vec3<u32>(u_input.c.x, 5427u, 14430u))), -1013f);
}

