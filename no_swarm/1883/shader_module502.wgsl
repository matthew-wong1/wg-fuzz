struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: u32 = 1411u;

var<private> global2: array<vec3<u32>, 21>;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> vec3<i32> {
    global3 = arg_0.e;
    return vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-u_input.b.x, firstLeadingBit(-23537i)) ^ _wgslsmith_dot_vec2_i32(arg_0.e.d.xx, -vec2<i32>(u_input.a, 1424i)), -_wgslsmith_add_i32(global3.d.x & u_input.a, -arg_0.e.b.x)), -((-u_input.a & u_input.b.x) << (arg_0.c.a.x % 32u)), global3.d.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_add_i32(select(global3.b.x << (~abs(arg_0.x) % 32u), reverseBits(-arg_1.b.x), all(vec2<bool>(true, true))), -func_3(Struct_3(arg_0.yz, vec2<bool>(true, true), Struct_2(vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x), Struct_1(366f, global3.b, vec4<f32>(1000f, global3.c.x, -119f, global3.c.x), vec3<i32>(2147483647i, arg_1.b.x, global3.b.x))), arg_1, arg_1)).x);
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(172f)))), _wgslsmith_mult_vec3_i32(u_input.b.wyz, -u_input.b.wzx), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-506f - -1120f), _wgslsmith_f_op_f32(select(-1831f, global3.c.x, false)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(612f * 1645f)))), -2000f), abs(-(~vec3<i32>(-55054i, -5959i, -2147483647i) << (vec3<u32>(arg_0.x, 44591u, arg_0.x) % vec3<u32>(32u)))));
    let var_1 = Struct_3(~reverseBits(_wgslsmith_sub_vec2_u32(~arg_0.zx, vec2<u32>(arg_0.x, 59002u) >> (arg_0.xz % vec2<u32>(32u)))), vec2<bool>(true, true), Struct_2(_wgslsmith_clamp_vec4_u32((vec4<u32>(59945u, 22017u, arg_0.x, arg_0.x) << (vec4<u32>(arg_0.x, 4294967295u, 62423u, arg_0.x) % vec4<u32>(32u))) & (vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x) << (vec4<u32>(22734u, arg_0.x, 25964u, arg_0.x) % vec4<u32>(32u))), vec4<u32>(14977u, firstTrailingBit(arg_0.x), 1u, arg_0.x), ~vec4<u32>(arg_0.x, 90403u, 30227u, 0u)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-691f, global3.c.x))), vec3<i32>(var_0, arg_1.d.x, global3.d.x) << (~vec3<u32>(arg_0.x, 34707u, arg_0.x) % vec3<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, global3.a, 1217f, 841f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, global3.a, -1000f, 394f) + arg_1.c)), abs(global3.b))), arg_1, arg_1);
    let var_2 = 4294967295u;
    let var_3 = var_1.b.x;
    return !(!(!vec4<bool>(false, all(var_1.b), !var_3, var_1.b.x)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = countOneBits(abs(~(~countOneBits(0u))));
    var var_1 = !(!vec4<bool>(true, all(select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, true, arg_0), true)), true, arg_0));
    var_1 = func_4(firstLeadingBit(vec3<u32>(max(18584u, ~22876u), ~(~1u), 1u)), Struct_1(_wgslsmith_f_op_f32(-1f), func_3(Struct_3(vec2<u32>(15305u, 1u), var_1.yw, Struct_2(vec4<u32>(1u, 1u, 1u, 12544u), Struct_1(-2251f, u_input.b.xwx, global3.c, global3.d)), Struct_1(-241f, u_input.b.yzz, vec4<f32>(global3.a, global3.a, 600f, -1000f), vec3<i32>(global3.d.x, u_input.b.x, -10439i)), Struct_1(-720f, global3.d, global3.c, vec3<i32>(52925i, -20508i, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global3.c.x, -346f, global3.c.x, global3.c.x), global3.c))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, global3.c.x, -779f, 770f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, global3.c.x, -394f, 2159f) * vec4<f32>(global3.c.x, 845f, global3.a, global3.c.x)))), max(vec3<i32>(global3.b.x, -2147483647i, 1i), ~global3.b)));
    let var_2 = (~(-1i | ~global3.b.x) > (1i << (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(44213u, 91820u)) % 32u))) && (var_1.x && false);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.c.x))) * _wgslsmith_f_op_f32(max(1000f, _wgslsmith_div_f32(-2379f, global3.c.x)))), -636f)));
    return Struct_1(_wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.c.x, _wgslsmith_f_op_f32(1725f * -521f))) * global3.c.x)), abs(firstLeadingBit(global3.b)), global3.c, max(u_input.b.xxw, global3.d));
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: i32) -> u32 {
    global0 = _wgslsmith_mod_vec2_i32(arg_2.d.b.xz, _wgslsmith_add_vec2_i32(func_2(true).d.yy >> (_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.a.x, 47449u), arg_2.a) % vec2<u32>(32u)), -abs(vec2<i32>(u_input.b.x, 37332i))));
    var var_0 = arg_2;
    var var_1 = countOneBits((arg_2.c.a.x << (~_wgslsmith_div_u32(793u, var_0.a.x) % 32u)) | 4294967295u);
    let var_2 = arg_3;
    let var_3 = !select(vec4<bool>(all(select(vec3<bool>(false, var_0.b.x, arg_2.b.x), vec3<bool>(true, true, false), var_0.b.x)), !func_4(vec3<u32>(44158u, 4294967295u, var_0.a.x), Struct_1(global3.a, vec3<i32>(-1i, 33463i, 42393i), vec4<f32>(var_0.e.c.x, -1000f, var_0.e.a, arg_2.c.b.a), global3.b)).x, !var_0.b.x, all(select(arg_2.b, var_0.b, var_0.b.x))), vec4<bool>(any(vec2<bool>(false, false)), func_4(~vec3<u32>(35406u, arg_0, 13146u), var_0.c.b).x, !var_0.b.x, !(!var_0.b.x)), arg_2.b.x);
    return 10872u;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(714f, vec3<i32>(global3.d.x << (1u % 32u), global3.b.x >> (1u % 32u), 0i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, global3.c.x, global3.a, -103f) * _wgslsmith_f_op_vec4_f32(global3.c * vec4<f32>(844f, global3.c.x, global3.a, -1461f))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, true), any(vec4<bool>(false, true, false, true))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(global3.c, _wgslsmith_f_op_vec4_f32(global3.c - global3.c)), global3.c))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x | 0i, global3.d.x, firstTrailingBit(-17571i)) ^ -vec3<i32>(global0.x, 2129i, 37021i), select(~(~u_input.b.yyx), firstTrailingBit(reverseBits(vec3<i32>(global3.b.x, u_input.b.x, global0.x))), false)));
    let var_1 = global2[_wgslsmith_index_u32(func_5(4294967295u, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, global0.x, global3.b.x), global3.b), (global3.d ^ var_0.b) << (global2[_wgslsmith_index_u32(0u, 21u)] % vec3<u32>(32u))) >> (max(~vec3<u32>(1u, 1u, 1u), global2[_wgslsmith_index_u32(1u, 21u)]) % vec3<u32>(32u)), Struct_3(reverseBits(~vec2<u32>(1u, 26150u)), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), Struct_2(firstLeadingBit(~vec4<u32>(24234u, 3747u, 45443u, 0u)), func_2(true)), func_2(true), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(966f)))), vec3<i32>(-2147483647i, countOneBits(var_0.d.x), -1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, var_0.c.x, var_0.c.x, -1597f)), vec3<i32>(0i, -2147483647i, global0.x))), ~u_input.a), 21u)];
    var var_2 = Struct_1(global3.c.x, _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(func_3(Struct_3(vec2<u32>(4294967295u, var_1.x), vec2<bool>(false, false), Struct_2(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), Struct_1(var_0.a, vec3<i32>(-6512i, global0.x, u_input.a), vec4<f32>(var_0.c.x, -898f, 1161f, 301f), global3.b)), Struct_1(1641f, u_input.b.zyz, var_0.c, vec3<i32>(75598i, global0.x, -3944i)), Struct_1(global3.a, vec3<i32>(1102i, 22402i, 0i), vec4<f32>(global3.a, var_0.a, var_0.c.x, global3.a), vec3<i32>(global3.d.x, u_input.a, u_input.a)))), u_input.b.zyx, global3.b), u_input.b.wxz), global3.c, firstLeadingBit(_wgslsmith_mult_vec3_i32(~(~var_0.b), vec3<i32>(1i, global3.d.x >> (3899u % 32u), u_input.a))));
    let var_3 = all(vec4<bool>(false, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1762f, var_2.c.x)) * _wgslsmith_f_op_f32(round(464f))) == _wgslsmith_f_op_f32(-global3.c.x), any(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false))));
    var_2 = Struct_1(var_2.a, -reverseBits(countOneBits(-vec3<i32>(global0.x, 1i, var_2.d.x))), var_2.c, vec3<i32>(-1i, var_0.b.x, 0i));
    return Struct_1(var_2.a, vec3<i32>(_wgslsmith_mult_i32(min(_wgslsmith_clamp_i32(global3.b.x, global3.d.x, global0.x), u_input.b.x), -(global3.b.x ^ u_input.a)), 2147483647i, i32(-1i) * -abs(-38405i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-683f)), _wgslsmith_f_op_f32(-476f * var_0.c.x), _wgslsmith_f_op_f32(var_2.a + var_2.a), _wgslsmith_f_op_f32(-var_2.a)), vec4<f32>(func_2(false).c.x, _wgslsmith_f_op_f32(round(var_0.c.x)), var_2.c.x, var_0.a))), min(~global3.b, firstLeadingBit(vec3<i32>(var_2.b.x, var_2.b.x, var_0.b.x & 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(_wgslsmith_clamp_u32(1u, ~69989u, ~0u) << (select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 17234u, 1u), vec3<u32>(33782u, 4294967295u, 36008u)), false) % 32u)));
    global1 = ~4294967295u;
    let var_1 = ~countOneBits(~2147483647i);
    var var_2 = Struct_2(~firstLeadingBit(~vec4<u32>(var_0, 0u, var_0, var_0)), func_1());
    let var_3 = var_2.b.c.yyx;
    var var_4 = ~(-global3.d.x);
    let var_5 = var_2.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~global2[_wgslsmith_index_u32(~var_0, 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(109f * _wgslsmith_div_f32(-1082f, _wgslsmith_f_op_f32(select(225f, global3.c.x, true))))), ~select(vec2<u32>(select(1u, 12806u, false), _wgslsmith_dot_vec4_u32(var_2.a, var_2.a)), max(~var_2.a.yx, vec2<u32>(57848u, 0u)), false));
}

