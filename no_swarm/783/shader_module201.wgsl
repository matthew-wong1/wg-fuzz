struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-863f, -1385f, 1000f, -1350f), vec4<f32>(-432f, 2315f, -888f, -364f), vec4<f32>(267f, 485f, 1295f, -161f), vec4<f32>(926f, -185f, -1544f, -1290f), vec4<f32>(-1000f, 483f, 1354f, -847f), vec4<f32>(-444f, -1240f, 544f, 511f), vec4<f32>(-428f, -1000f, -538f, -437f), vec4<f32>(-558f, 2236f, 1246f, 257f), vec4<f32>(1000f, 752f, -1000f, -1081f), vec4<f32>(511f, 284f, 197f, 511f), vec4<f32>(681f, 2606f, -221f, 968f), vec4<f32>(-822f, -662f, -1000f, -1800f), vec4<f32>(773f, -493f, 1465f, 764f), vec4<f32>(-2031f, -1000f, -653f, 651f), vec4<f32>(-1470f, 831f, -494f, -1511f), vec4<f32>(828f, 623f, 133f, 1000f), vec4<f32>(199f, 1861f, -1996f, -1000f), vec4<f32>(1919f, -874f, 1885f, -2076f), vec4<f32>(-173f, 867f, -779f, 1033f), vec4<f32>(539f, -1069f, 667f, 653f), vec4<f32>(1133f, 1375f, -908f, 291f), vec4<f32>(-842f, 938f, 660f, -266f), vec4<f32>(323f, -1723f, -954f, -1594f), vec4<f32>(701f, 378f, -904f, 832f), vec4<f32>(222f, -1000f, 1373f, 1132f), vec4<f32>(-108f, 789f, -1075f, 924f), vec4<f32>(-207f, 319f, 203f, 248f), vec4<f32>(1013f, -1198f, 300f, -601f), vec4<f32>(269f, 541f, 1372f, -904f), vec4<f32>(244f, -528f, 772f, -1000f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = Struct_1(1i, _wgslsmith_sub_vec2_u32(u_input.a, u_input.a));
    let var_1 = Struct_4(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 109i, 75391i, -3218i) >> (~vec4<u32>(28131u, 1u, 25813u, var_0.b.x) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_clamp_i32(var_0.a, -4636i, global1.c), 1i, 0i, -global1.c)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, var_0.b.x, u_input.a.x, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, 1u, u_input.a.x, u_input.a.x) << (vec4<u32>(66338u, 10406u, var_0.b.x, 1u) % vec4<u32>(32u)), ~vec4<u32>(24994u, 0u, 4294967295u, 84995u))) % vec4<u32>(32u)), (var_0.a & _wgslsmith_add_i32(global1.c, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, 3975i), vec2<i32>(var_0.a, global1.c)))) >> (countOneBits(var_0.b.x) % 32u), var_0);
    global0 = array<Struct_3, 32>();
    var var_2 = global1.b;
    var var_3 = var_2.a;
    return global0[_wgslsmith_index_u32(~1u, 32u)];
}

fn func_1() -> Struct_4 {
    var var_0 = func_2(_wgslsmith_f_op_f32(trunc(469f)));
    let var_1 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -184f));
    var var_2 = func_2(955f);
    var var_3 = i32(-1i) * -2147483647i;
    var_2 = var_1;
    return Struct_4(vec4<i32>(~var_2.c, _wgslsmith_mult_i32(~(global1.c << (30233u % 32u)), ~(~2178i)), var_0.c, var_0.c), ~2147483647i, Struct_1(var_1.c, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, u_input.a), ~vec2<u32>(7795u, 0u)) ^ ~(~u_input.a)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> Struct_4 {
    var var_0 = arg_0;
    var var_1 = Struct_4(vec4<i32>(arg_0.a >> (11314u % 32u), arg_1.c, 41011i, 1i), ~23815i ^ (_wgslsmith_mod_i32(select(-2866i, 25267i, arg_1.a.b.x), 6858i) >> (abs(u_input.a.x | 0u) % 32u)), arg_0);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1.a.a.x))));
    var var_3 = global1.a.b.x;
    var var_4 = Struct_4(max(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a ^ -1i, countOneBits(-2147483647i), var_1.c.a, abs(-1i)), abs(max(var_1.a, vec4<i32>(45538i, -2147483647i, -2147483647i, var_1.c.a)))), var_1.a), 12665i, Struct_1(7688i, min(_wgslsmith_mod_vec2_u32(~arg_0.b, countOneBits(var_1.c.b)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.c.b.x, var_0.b.x), ~u_input.a))));
    return Struct_4(_wgslsmith_mod_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-25043i, 7185i, 0i, -1i), select(var_4.a, var_1.a, arg_1.a.b.x)), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_0.a, arg_0.a, 19443i), var_4.a))), _wgslsmith_sub_i32(var_0.a, global1.c), func_1().c);
}

fn func_4(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = arg_0.c;
    var var_1 = global1.b.b.x;
    global1 = Struct_3(Struct_2(global1.b.a, vec2<bool>(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1704f)).a.b.x, global1.b.b.x)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global1.a.a))), !global1.b.b), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_mod_i32(1i, var_0.a), -2147483647i), ~_wgslsmith_add_vec3_i32(arg_0.a.zwy, arg_0.a.xwx))));
    var var_2 = _wgslsmith_sub_vec2_u32(abs(select(u_input.a, vec2<u32>(arg_0.c.b.x, arg_0.c.b.x), vec2<bool>(global1.b.b.x, global1.a.b.x))) << (u_input.a % vec2<u32>(32u)), vec2<u32>(0u, ~(~0u))) >> ((u_input.a >> (vec2<u32>(~_wgslsmith_add_u32(u_input.a.x, 1u), firstLeadingBit(~arg_0.c.b.x)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var_2 = arg_0.c.b;
    return func_2(1000f).a.b;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.a, -27646i, arg_3.a, 2147483647i), -_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-26662i, global1.c, -2147483647i, -1i), vec4<i32>(4215i, global1.c, arg_2.a, 1559i)), vec4<i32>(arg_1, global1.c, -22495i, arg_3.a))), min(func_1().a, _wgslsmith_mult_vec4_i32(~vec4<i32>(40371i, arg_3.a, 25320i, arg_2.a) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.b.x, 0u, arg_3.b.x, u_input.a.x), vec4<u32>(arg_2.b.x, u_input.a.x, arg_3.b.x, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(0i, 0i, func_1().c.a, _wgslsmith_sub_i32(arg_0, -22105i)))));
    global0 = array<Struct_3, 32>();
    let var_1 = func_1();
    global1 = global0[_wgslsmith_index_u32(~60687u, 32u)];
    var var_2 = 50892i;
    return func_3(var_1.c, Struct_3(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a.x + global1.b.a.x) - _wgslsmith_div_f32(718f, -939f))).b, global1.b, 1i)).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_5(0i, -14725i, var_0.c, Struct_1(~(~_wgslsmith_add_i32(var_0.a.x, global1.c)), select(~vec2<u32>(40269u, 4294967295u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c.b.x, var_0.c.b.x), var_0.c.b), func_4(func_3(Struct_1(var_0.a.x, var_0.c.b), global0[_wgslsmith_index_u32(4294967295u, 32u)])))));
    let var_2 = ~(~0u);
    let var_3 = global2[_wgslsmith_index_u32(~func_3(var_1, Struct_3(func_2(-1136f).a, Struct_2(vec3<f32>(global1.a.a.x, 971f, -1000f), global1.a.b), 1i ^ var_1.a)).c.b.x >> (((1918u << (min(max(1u, 142343u), min(1u, var_1.b.x)) % 32u)) ^ ~(11715u | _wgslsmith_div_u32(var_2, 1u))) % 32u), 30u)];
    let var_4 = select(select(select(vec4<bool>(4294967295u > var_1.b.x, all(global1.b.b), !global1.a.b.x, global1.a.b.x), vec4<bool>(global1.a.b.x, true, true, global1.a.b.x), false), select(vec4<bool>(true, true, true, false), select(vec4<bool>(global1.a.b.x, false, global1.a.b.x, false), vec4<bool>(global1.a.b.x, true, false, global1.b.b.x), global1.a.b.x), global1.a.b.x), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, global1.a.b.x, global1.b.b.x, global1.a.b.x), global1.a.b.x)), vec4<bool>(true, reverseBits(2147483647i) == _wgslsmith_clamp_i32(-var_0.a.x, -2147483647i, 25707i), global1.b.b.x, global1.b.b.x), true);
    let var_5 = !(_wgslsmith_f_op_f32(ceil(-317f)) < 830f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(9008u, var_1.b.x), var_2 << (u_input.a.x % 32u)), func_1().c.b.x), var_1.b.x), select(vec3<u32>(_wgslsmith_mult_u32(10440u, var_0.c.b.x), var_1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 16002u, 0u), vec3<u32>(var_1.b.x, var_1.b.x, 0u))) & abs(firstTrailingBit(vec3<u32>(var_1.b.x, 80979u, u_input.a.x))), ~vec3<u32>(select(29234u, u_input.a.x, global1.b.b.x), _wgslsmith_dot_vec2_u32(var_0.c.b, var_0.c.b), ~4294967295u), var_1.a < _wgslsmith_add_i32(global1.c, global1.c)), 4294967295u, _wgslsmith_f_op_f32(trunc(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1373f + 609f), _wgslsmith_div_f32(232f, var_3.x))).a.a.x)));
}

