struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 0i, i32(-2147483648), i32(-2147483648), -44647i, -1i, -1i, 0i, 2147483647i, -17715i);

var<private> global1: Struct_2 = Struct_2(i32(-2147483648), vec4<bool>(true, false, true, false), Struct_1(-554f, -19947i, vec4<u32>(78272u, 4294967295u, 25181u, 1u), vec2<i32>(0i, i32(-2147483648))), 441f);

var<private> global2: vec2<i32> = vec2<i32>(-1i, 86319i);

var<private> global3: vec4<f32> = vec4<f32>(-577f, 449f, 850f, -1000f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: vec4<f32>) -> f32 {
    global3 = vec4<f32>(-690f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1746f))))), arg_0.c.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.x + arg_0.c.a))));
    var var_0 = vec2<f32>(-965f, 246f);
    global0 = array<i32, 12>();
    var var_1 = _wgslsmith_add_i32(~global1.c.d.x & abs(2147483647i), -(~1i));
    let var_2 = global2.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, -435f)) + arg_1.x);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.x, _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(func_3(Struct_2(global2.x, global1.b, global1.c, global1.c.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(805f, global1.c.a) + global3.zw), vec3<bool>(global1.b.x, false, global1.b.x), vec4<f32>(2505f, global3.x, 407f, -2302f)))))));
    let var_1 = Struct_2(50062i, global1.b, Struct_1(global3.x, 1i, global1.c.c, select((vec2<i32>(-1i, global1.c.d.x) & global1.c.d) | _wgslsmith_add_vec2_i32(global1.c.d, global1.c.d), -vec2<i32>(global2.x, -38762i), global1.b.yw)), -622f);
    let var_2 = var_1;
    var var_3 = var_2;
    global0 = array<i32, 12>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d + -1506f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), true)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_2 {
    global2 = vec2<i32>(global1.a, _wgslsmith_div_i32(~global1.a, arg_2.a));
    var var_0 = _wgslsmith_f_op_f32(func_2());
    global1 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.b, abs(-30930i), ~_wgslsmith_sub_i32(1i, -8394i)), vec3<i32>(firstLeadingBit(abs(global2.x)), global2.x, select(arg_2.a, 2147483647i, false))), vec4<bool>(!global1.b.x, all(global1.b.wzy), arg_2.a >= -5121i, !arg_2.b.x), arg_2.c, _wgslsmith_f_op_f32(-global1.d));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1367f) - arg_2.d), 458f));
    global2 = arg_2.c.d;
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = !global1.b.zw;
    global1 = Struct_2(-2147483647i, select(!global1.b, vec4<bool>(true, var_0.x, global1.b.x, true), -firstTrailingBit(-18775i) < -91057i), func_1(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.c.c.x, 4294967295u, global1.c.c.x), u_input.d, u_input.d), ~arg_1.c.c.xww), arg_1.c.c, func_1(~arg_1.c.c.wwz | ~global1.c.c.zwy, ~global1.c.c, func_1(~vec3<u32>(global1.c.c.x, 0u, u_input.c.x), vec4<u32>(84542u, 0u, arg_1.c.c.x, u_input.a), func_1(vec3<u32>(arg_1.c.c.x, arg_1.c.c.x, arg_1.c.c.x), vec4<u32>(4294967295u, 0u, global1.c.c.x, 1506u), arg_1)))).c, arg_1.d);
    var var_1 = !(!(!global1.b));
    global2 = ~global1.c.d;
    var var_2 = max(vec4<i32>(_wgslsmith_mult_i32(-14183i, 3025i), select(~arg_0, _wgslsmith_dot_vec2_i32(global1.c.d, vec2<i32>(global2.x, -2147483647i)), global1.c.d.x >= global0[_wgslsmith_index_u32(4294967295u, 12u)]), firstTrailingBit(0i & arg_0), reverseBits(-1i)), vec4<i32>(_wgslsmith_mod_i32(arg_1.c.d.x, _wgslsmith_add_i32(-23597i, global0[_wgslsmith_index_u32(u_input.c.x, 12u)])), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, global2.x, global0[_wgslsmith_index_u32(global1.c.c.x, 12u)], global2.x), vec4<i32>(-2147483647i, arg_0, -21411i, arg_0)), max(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 12u)], 5146i, global2.x), vec4<i32>(global2.x, global1.c.d.x, arg_0, arg_0))), global0[_wgslsmith_index_u32(~1u, 12u)], -8408i)) ^ max(vec4<i32>(global1.c.b, ~min(1i, 17926i), -13906i << (u_input.a % 32u), arg_1.c.d.x), vec4<i32>(-34517i, arg_0, global1.a, global1.c.d.x));
    return Struct_1(global3.x, ~(~reverseBits(20776i)), vec4<u32>(arg_1.c.c.x, 12730u, firstTrailingBit(firstTrailingBit(_wgslsmith_sub_u32(u_input.b.x, arg_1.c.c.x))), ~(4294967295u & arg_1.c.c.x)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(6713i, 310i), arg_0) << (u_input.a % 32u), ~38718i));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> vec2<i32> {
    global1 = func_1(~vec3<u32>(~global1.c.c.x, ~arg_1.c.x ^ ~arg_1.c.x, 74787u), arg_1.c >> (global1.c.c % vec4<u32>(32u)), func_1(vec3<u32>(global1.c.c.x, reverseBits(0u) >> (u_input.c.x % 32u), max(reverseBits(global1.c.c.x), _wgslsmith_mult_u32(u_input.b.x, 12673u))), min(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, 0u, global1.c.c.x), vec4<u32>(0u, u_input.d.x, global1.c.c.x, 0u)), arg_1.c), Struct_2(_wgslsmith_div_i32(-1i, ~global2.x), global1.b, Struct_1(-747f, ~arg_0.x, select(vec4<u32>(41935u, global1.c.c.x, u_input.e.x, u_input.b.x), vec4<u32>(u_input.b.x, arg_1.c.x, 2969u, 0u), true), _wgslsmith_add_vec2_i32(global1.c.d, vec2<i32>(-43197i, 2147483647i))), global1.d)));
    global1 = func_1(arg_1.c.zyw, global1.c.c, func_1(u_input.d, global1.c.c, Struct_2(29011i << (1u % 32u), select(vec4<bool>(global1.b.x, false, global1.b.x, true), vec4<bool>(global1.b.x, true, true, true), func_1(global1.c.c.xwy, vec4<u32>(u_input.b.x, 4294967295u, 34917u, u_input.c.x), Struct_2(-15986i, global1.b, global1.c, -1061f)).b.x), arg_1, _wgslsmith_f_op_f32(trunc(-285f)))));
    global1 = func_1(vec3<u32>(~global1.c.c.x, _wgslsmith_div_u32(~7008u, ~global1.c.c.x), reverseBits(~0u & _wgslsmith_sub_u32(global1.c.c.x, 5689u))), _wgslsmith_mod_vec4_u32(max(vec4<u32>(_wgslsmith_div_u32(25309u, u_input.b.x), func_4(arg_1.b, Struct_2(-29316i, global1.b, Struct_1(-1000f, arg_1.d.x, arg_1.c, arg_0.zx), global3.x)).c.x, 1u, global1.c.c.x ^ 4294967295u), vec4<u32>(_wgslsmith_sub_u32(1u, arg_1.c.x), ~47682u, ~54369u, 80830u)), vec4<u32>(1u, global1.c.c.x, ~20168u, global1.c.c.x)), func_1(func_4(reverseBits(-2147483647i), Struct_2(-2147483647i, !vec4<bool>(false, global1.b.x, false, global1.b.x), Struct_1(global3.x, -2147483647i, global1.c.c, global1.c.d), _wgslsmith_f_op_f32(f32(-1f) * -1489f))).c.zwy, firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global1.c.c.x, global1.c.c.x, 4294967295u, 1u), arg_1.c) & vec4<u32>(134578u, global1.c.c.x, 0u, arg_1.c.x)), Struct_2(60210i, vec4<bool>(func_1(vec3<u32>(16346u, 3789u, global1.c.c.x), vec4<u32>(1u, 4294967295u, u_input.c.x, arg_1.c.x), Struct_2(2147483647i, global1.b, global1.c, -1431f)).b.x, global1.b.x, !global1.b.x, global1.b.x), Struct_1(295f, arg_1.d.x, global1.c.c >> (vec4<u32>(global1.c.c.x, arg_1.c.x, global1.c.c.x, 4294967295u) % vec4<u32>(32u)), vec2<i32>(-17364i, arg_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-135f)), -632f, false)))));
    global2 = vec2<i32>(firstLeadingBit(global1.a) >> (~arg_1.c.x % 32u), arg_1.b);
    let var_0 = _wgslsmith_add_u32(1u, ~select(u_input.c.x, abs(reverseBits(global1.c.c.x)), global1.b.x));
    return -vec2<i32>(-1i, -_wgslsmith_clamp_i32(64102i, global2.x, firstLeadingBit(2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - 1255f)), 482f)), _wgslsmith_dot_vec2_i32(-(~_wgslsmith_add_vec2_i32(global1.c.d, global1.c.d)), func_5(countOneBits(vec4<i32>(2147483647i, global2.x, 88842i, -22330i)), func_4(global1.a, func_1(global1.c.c.zzy, vec4<u32>(4294967295u, 73154u, 41262u, global1.c.c.x), Struct_2(0i, vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), Struct_1(1319f, -24565i, global1.c.c, global1.c.d), -844f))))), ~(((global1.c.c << (global1.c.c % vec4<u32>(32u))) << (~global1.c.c % vec4<u32>(32u))) | select(~global1.c.c, global1.c.c & global1.c.c, 36694u >= global1.c.c.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, global2.x), vec2<i32>(_wgslsmith_mult_i32(1i, 1i), 79164i)));
    global0 = array<i32, 12>();
    let var_1 = _wgslsmith_dot_vec2_i32(-var_0.d, vec2<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.e.x << (1u % 32u), 12u)], -13334i), _wgslsmith_sub_i32(min(global1.c.b, 0i), 2147483647i) >> (u_input.e.x % 32u)));
    let var_2 = vec4<bool>(false, !global1.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1f)))) <= _wgslsmith_f_op_f32(-1053f * -227f), global1.b.x);
    let var_3 = vec3<i32>(select(16982i, min(_wgslsmith_clamp_i32(var_0.d.x, -global0[_wgslsmith_index_u32(95062u, 12u)], max(var_1, -35392i)), -8612i), false), ((var_1 << (global1.c.c.x % 32u)) >> (~4294967295u % 32u)) | -_wgslsmith_mult_i32(22838i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(var_0.c.x, 12u)], 2147483647i)), var_0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 626f, global3.x, global1.d), vec4<f32>(-1252f, 1505f, 726f, var_0.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1494f, 342f, global1.d, -925f), vec4<f32>(1993f, 901f, var_0.a, 677f), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-928f, -1352f, global1.d, -405f))))))), 116920u);
}

