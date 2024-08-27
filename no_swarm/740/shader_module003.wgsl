struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 31> = array<f32, 31>(-311f, -542f, -1012f, 182f, 650f, 781f, -1000f, -255f, 280f, 1104f, 417f, -555f, -1118f, -153f, 1418f, -1411f, -1201f, 630f, 1473f, -1000f, 361f, 314f, -684f, -876f, -434f, 281f, -214f, -1680f, -394f, -917f, 778f);

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(27780u, 14765u, 4294967295u), false, vec2<bool>(true, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> vec2<i32> {
    var var_0 = vec4<u32>(52527u, 50676u, global2.a.a.x, firstLeadingBit(_wgslsmith_sub_u32(global2.c.a.x, global3.a.x)));
    let var_1 = ~min(~firstLeadingBit(65515u | global3.a.x), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u), vec4<u32>(2152u, var_0.x, 55296u, 17166u))));
    var_0 = ~vec4<u32>(countOneBits(_wgslsmith_add_u32(firstLeadingBit(global2.c.a.x), global3.a.x >> (0u % 32u))), (1u ^ global3.a.x) >> (~countOneBits(12857u) % 32u), var_1, select(~(~u_input.b), ~(~4294967295u), true));
    let var_2 = _wgslsmith_mult_u32(0u, select(~min(1u, 0u), countOneBits(~global2.a.a.x), true)) < 2883u;
    let var_3 = Struct_1(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(4829u, global2.c.a.x, var_0.x) << (vec3<u32>(51901u, var_0.x, var_0.x) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_sub_u32(1u, global2.a.a.x), ~global2.c.a.x, u_input.b)) | ~_wgslsmith_mod_vec3_u32(max(vec3<u32>(global2.a.a.x, 0u, global3.a.x), vec3<u32>(1u, var_1, var_1)), global2.c.a), global2.a.b, global3.c);
    return _wgslsmith_clamp_vec2_i32(-u_input.a.wx, vec2<i32>(~global2.d.x, ~0i), ~_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 29591i), u_input.a.xx ^ u_input.a.wz), _wgslsmith_mult_vec2_i32(u_input.a.yw, ~vec2<i32>(10192i, global2.b.x))));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<i32>) -> Struct_4 {
    var var_0 = firstLeadingBit(firstLeadingBit(-_wgslsmith_clamp_vec2_i32(max(vec2<i32>(arg_2.x, u_input.a.x), arg_2.wy), ~arg_2.xx, func_3(vec2<f32>(271f, 2036f)))));
    let var_1 = 1049f;
    let var_2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(0u, ~global2.a.a.x), ~87140u), vec2<u32>(1u, 1u) & ~_wgslsmith_mod_vec2_u32(global2.c.a.xz, global2.c.a.yy));
    global3 = Struct_1(~global2.c.a, global2.a.b, vec2<bool>(false, all(vec4<bool>(any(vec3<bool>(false, false, false)), global3.b | global2.a.b, global2.a.c.x, select(global3.c.x, global3.c.x, global3.b)))));
    global0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -414f));
    return Struct_4(vec4<i32>(0i, (i32(-1i) * -1i) >> (firstLeadingBit(global2.c.a.x) % 32u), 1i, ~max(-46259i, 31140i)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.b, 110522u), 35098u | var_2.x, 4294967295u, min(14284u, 63526u)), reverseBits(~vec4<u32>(u_input.b, 1u, 1u, 4294967295u))) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_4) -> f32 {
    global0 = Struct_3(global1[_wgslsmith_index_u32(firstLeadingBit(~(_wgslsmith_sub_u32(1u, global3.a.x) & 16192u)), 31u)]);
    global0 = Struct_3(-1667f);
    var var_0 = global2.c.a;
    var var_1 = -50346i;
    var_0 = global3.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1827f));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global3.a.x << (global3.a.x % 32u), 31u)])))))));
    global2 = Struct_2(Struct_1(~(~global2.c.a), u_input.b >= (reverseBits(global2.c.a.x) | reverseBits(22911u)), !vec2<bool>(false, !global3.b)), vec3<i32>(arg_2.x, u_input.a.x, ~global2.d.x), Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(global2.a.a, vec3<u32>(global3.a.x, global3.a.x, global2.c.a.x)) | ~global3.a, ~(~global2.c.a)), global3.b, vec2<bool>(all(select(vec4<bool>(true, global3.c.x, true, false), vec4<bool>(global2.c.b, global3.b, true, true), global3.c.x)), global2.a.b)), global2.d);
    global3 = global2.c;
    global2 = Struct_2(Struct_1(vec3<u32>(~global3.a.x, firstLeadingBit(~u_input.b), 28206u), true, select(!select(global3.c, global3.c, global3.c), global2.a.c, (u_input.b <= u_input.b) | global2.c.c.x)), arg_2.yxx, global2.a, -global2.d);
    return vec4<f32>(_wgslsmith_f_op_f32(func_4(vec3<bool>(true, (549f > var_0) || true, !(34161u != u_input.b)), _wgslsmith_f_op_f32(select(var_0, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(43759u, u_input.b | 13211u), 31u)], true)), Struct_4(func_2(u_input.a.www, u_input.c, -vec4<i32>(0i, 0i, global2.d.x, arg_2.x)).a))), _wgslsmith_f_op_f32(max(1422f, -404f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-561f * arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(2578f)))))));
}

fn func_1() -> Struct_2 {
    var var_0 = -940f;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_sub_i32(1i, u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, true), 448f, func_2(u_input.a.zxy, u_input.c, global2.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(ceil(1937f))), global0.a), -vec4<i32>(global2.b.x, global2.b.x, 31569i, abs(global2.d.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a, global1[_wgslsmith_index_u32(4294967295u, 31u)], global3.c.x))) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~0u, 31u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(527f))), -1000f), 86394u > _wgslsmith_add_u32(87036u, global2.c.a.x)));
    var var_2 = global2.a.a;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(558f, var_1.x, -372f, global1[_wgslsmith_index_u32(global3.a.x, 31u)]))))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.b, 31u)], var_1.x, global2.c.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1287f), 1f, global0.a)))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -814f), _wgslsmith_f_op_f32(sign(1111f)), _wgslsmith_f_op_f32(f32(-1f) * -1424f));
    return Struct_2(global2.a, global2.d.wxz >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, global3.a.x, var_2.x), ~global3.a) % vec3<u32>(32u)), global2.c, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(-741f);
    var var_0 = func_1();
    var var_1 = var_0.d >> (vec4<u32>(~(0u >> (~var_0.c.a.x % 32u)), _wgslsmith_clamp_u32(~10674u, ~(~8725u), ~u_input.b), ~abs(u_input.b), 1u) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(230f * _wgslsmith_f_op_f32(-global0.a))) + _wgslsmith_f_op_f32(f32(-1f) * -912f));
    var_0 = func_1();
    let var_3 = ~(~var_0.c.a.x);
    var_0 = Struct_2(global2.a, vec3<i32>(_wgslsmith_mod_i32(-var_0.d.x, 2147483647i), reverseBits(24038i), -35188i), global2.a, firstTrailingBit(global2.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2714f * -1741f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + var_2) - _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_add_i32(-3001i, u_input.c), _wgslsmith_div_vec3_f32(vec3<f32>(global0.a, global0.a, -816f), vec3<f32>(1679f, 411f, 606f)), u_input.a)).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 31u)])))) + 762f)), select(~(vec4<i32>(0i, -1i, global2.b.x, -3762i) >> (vec4<u32>(34828u, var_0.c.a.x, global2.c.a.x, u_input.b) % vec4<u32>(32u))), reverseBits(u_input.a), select(!vec4<bool>(false, var_0.a.c.x, global3.c.x, true), select(vec4<bool>(global2.c.b, true, false, global3.c.x), !vec4<bool>(global2.c.c.x, true, global3.c.x, global3.c.x), !vec4<bool>(global3.c.x, var_0.c.c.x, false, false)), vec4<bool>(!var_0.c.b, false, var_0.a.c.x, global0.a == 514f))), min(select(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.d.x, var_0.b.x, 2147483647i, var_0.b.x), vec4<i32>(25613i, global2.d.x, var_1.x, var_1.x)), vec4<i32>(var_1.x, var_1.x, -39284i, 21559i), select(vec4<bool>(true, false, true, true), vec4<bool>(true, var_0.c.c.x, true, global3.b), false)) >> ((vec4<u32>(u_input.b, u_input.b, 66268u, 4294967295u) | reverseBits(vec4<u32>(1u, u_input.b, var_0.c.a.x, 14138u))) % vec4<u32>(32u)), vec4<i32>(var_0.b.x, func_1().b.x, min(max(41433i, global2.d.x), var_0.d.x << (23902u % 32u)), -11505i)), _wgslsmith_add_vec2_u32(var_0.a.a.zx, global3.a.zx));
}

