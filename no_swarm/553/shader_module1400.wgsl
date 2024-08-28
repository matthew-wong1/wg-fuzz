struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<u32>(37259u, 0u, 37283u, 4294967295u), 1000f, vec3<i32>(0i, 2147483647i, 1294i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 83817u), -1376f, vec3<i32>(-78392i, -16873i, 50966i)), Struct_1(vec4<u32>(0u, 0u, 0u, 10359u), -361f, vec3<i32>(2147483647i, 0i, 0i)), Struct_1(vec4<u32>(35633u, 0u, 46274u, 7860u), 1098f, vec3<i32>(0i, 22657i, 10404i)));

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<u32>(15763u, 6900u, 0u, 0u), -981f, vec3<i32>(39843i, 2147483647i, 2147483647i)), Struct_1(vec4<u32>(4294967295u, 0u, 17315u, 5666u), -1239f, vec3<i32>(2147483647i, i32(-2147483648), 1i)), Struct_1(vec4<u32>(26153u, 63134u, 4294967295u, 0u), 1354f, vec3<i32>(i32(-2147483648), -3204i, -47587i)), Struct_1(vec4<u32>(1u, 1u, 41607u, 1u), 383f, vec3<i32>(-1i, 0i, 1i)), Struct_1(vec4<u32>(43495u, 0u, 42104u, 1u), 407f, vec3<i32>(-1i, 27071i, -44742i)), Struct_1(vec4<u32>(11322u, 64460u, 91696u, 1u), -2403f, vec3<i32>(10684i, -26695i, 0i)), Struct_1(vec4<u32>(41597u, 1587u, 5548u, 29313u), -1000f, vec3<i32>(i32(-2147483648), 12312i, 665i)), Struct_1(vec4<u32>(9299u, 66229u, 5630u, 1u), -419f, vec3<i32>(21783i, 0i, 0i)), Struct_1(vec4<u32>(1u, 46590u, 128787u, 0u), 381f, vec3<i32>(5481i, -34224i, 22743i)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 41057u), 1427f, vec3<i32>(i32(-2147483648), -47707i, 11107i)), Struct_1(vec4<u32>(79140u, 0u, 11073u, 0u), -318f, vec3<i32>(i32(-2147483648), 50615i, -53465i)), Struct_1(vec4<u32>(4294967295u, 0u, 11707u, 4294967295u), 1000f, vec3<i32>(2147483647i, 11156i, -45810i)), Struct_1(vec4<u32>(1u, 4294967295u, 40301u, 6437u), -701f, vec3<i32>(0i, -17682i, -1465i)), Struct_1(vec4<u32>(1u, 1u, 0u, 1u), -1000f, vec3<i32>(0i, 0i, -15475i)));

var<private> global2: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> vec4<u32> {
    global1 = array<Struct_1, 14>();
    var var_0 = Struct_1(~(~_wgslsmith_div_vec4_u32(global0.a.a, vec4<u32>(global0.c.a.x, 22035u, arg_0.d.a.x, global2.a.x))), global0.d.b, vec3<i32>(1i, -44468i, -7964i));
    let var_1 = var_0.b;
    let var_2 = arg_0.a.c.zx;
    let var_3 = 1i;
    return ~firstLeadingBit(~(select(var_0.a, global0.c.a, true) & abs(arg_2.b.a)));
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(global0.b, global1[_wgslsmith_index_u32(1100u, 14u)], Struct_1(vec4<u32>(~4294967295u, _wgslsmith_mult_u32(u_input.a.x, 4294967295u) & abs(0u), global0.a.a.x, (global0.a.a.x >> (global0.d.a.x % 32u)) >> (_wgslsmith_mod_u32(75986u, global0.d.a.x) % 32u)), -357f, vec3<i32>(select(-global2.c.x, global2.c.x, true), 863i, ~0i)), global1[_wgslsmith_index_u32(max(firstLeadingBit(countOneBits(1u)), global2.a.x), 14u)]);
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global0.b.a.x, global2.a.x), 14u)], global0.b, Struct_1(firstLeadingBit(func_3(Struct_2(global0.b, global1[_wgslsmith_index_u32(u_input.a.x, 14u)], global1[_wgslsmith_index_u32(u_input.a.x, 14u)], Struct_1(global0.b.a, -1163f, global2.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.b, 613f) + vec2<f32>(global2.b, -447f)), Struct_2(global1[_wgslsmith_index_u32(global2.a.x, 14u)], Struct_1(global2.a, global0.d.b, global2.c), global1[_wgslsmith_index_u32(global2.a.x, 14u)], Struct_1(vec4<u32>(0u, u_input.a.x, global0.b.a.x, 104761u), 391f, global2.c)))), _wgslsmith_f_op_f32(157f * _wgslsmith_f_op_f32(sign(1000f))), vec3<i32>(max(select(10453i, 77175i, true), -u_input.b), -4892i, -6649i)), global1[_wgslsmith_index_u32(global2.a.x, 14u)]);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1434f + 340f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global0.a.b, -173f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-889f + var_0.c.b))))), 332f, 1849f);
    var var_2 = vec3<i32>(-(~global2.c.x), _wgslsmith_dot_vec4_i32(-(~(~vec4<i32>(global0.a.c.x, global2.c.x, 29136i, u_input.c))), vec4<i32>((i32(-1i) * -2147483647i) | (20288i << (var_0.a.a.x % 32u)), (u_input.b & -54666i) << (abs(u_input.a.x) % 32u), u_input.c, 9484i)), 71821i);
    var_0 = Struct_2(Struct_1(firstTrailingBit(abs(u_input.a)), -1367f, ~var_0.a.c), Struct_1(func_3(Struct_2(Struct_1(vec4<u32>(var_0.a.a.x, 113801u, 0u, u_input.a.x), var_1.x, vec3<i32>(0i, 9093i, global0.c.c.x)), var_0.d, Struct_1(global2.a, global0.c.b, vec3<i32>(u_input.b, global0.b.c.x, -62659i)), global0.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.wy, vec2<f32>(417f, global0.a.b), vec2<bool>(true, true))) + vec2<f32>(var_1.x, global0.a.b)), Struct_2(Struct_1(global0.d.a, 388f, global0.b.c), global1[_wgslsmith_index_u32(u_input.a.x, 14u)], Struct_1(vec4<u32>(4294967295u, 23157u, var_0.d.a.x, 4294967295u), global0.c.b, var_0.c.c), Struct_1(u_input.a, -1674f, vec3<i32>(var_0.c.c.x, global0.b.c.x, -6237i)))), 303f, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(-global0.a.c, vec3<i32>(-6332i, var_0.d.c.x, 28961i)), vec3<i32>(global2.c.x, global2.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-3420i, 1i, var_2.x, -1i), vec4<i32>(var_2.x, -33770i, -3177i, global0.c.c.x))))), var_0.c, var_0.c);
    return Struct_2(global1[_wgslsmith_index_u32(countOneBits(4294967295u), 14u)], Struct_1(global2.a, var_0.c.b, select(_wgslsmith_add_vec3_i32(vec3<i32>(-2069i, 1i, -2147483647i), countOneBits(global2.c)), min(var_0.d.c, -vec3<i32>(var_0.a.c.x, 1i, var_2.x)), vec3<bool>(true, true, true))), Struct_1(~vec4<u32>(_wgslsmith_div_u32(82066u, 1u), global0.c.a.x, global2.a.x, firstTrailingBit(global2.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_div_f32(var_1.x, -915f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 2142f) - 294f))), global2.c), Struct_1(_wgslsmith_add_vec4_u32(select(reverseBits(var_0.d.a), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.c.a.x, global2.a.x, u_input.a.x), vec4<u32>(12025u, u_input.a.x, 1u, u_input.a.x)), true), ~(global0.d.a & global2.a)), var_1.x, global0.d.c));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    global0 = arg_0;
    var var_0 = select(select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, false)), vec2<bool>(true, 1u <= _wgslsmith_dot_vec4_u32(u_input.a, global0.b.a)), ~(~u_input.a.x) <= global0.c.a.x), select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec4<bool>(true, false, false, true))), true), false);
    return func_2();
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>) -> vec4<bool> {
    var var_0 = ~global0.d.a.x;
    global0 = func_4(func_2(), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global0.b.c.x, -38011i), global0.c.c), global2.c), abs(~global0.c.c)), ~(~firstTrailingBit(global2.c.x))), func_2());
    var var_1 = global2.c;
    var var_2 = func_2();
    let var_3 = func_4(Struct_2(var_2.a, var_2.d, Struct_1(u_input.a, -115f, func_4(func_4(Struct_2(Struct_1(arg_1, global2.b, global0.c.c), global0.c, Struct_1(var_2.d.a, 462f, var_2.c.c), var_2.d), global0.c.c.x, Struct_2(Struct_1(vec4<u32>(4294967295u, global0.b.a.x, var_2.d.a.x, u_input.a.x), arg_0.x, vec3<i32>(var_2.d.c.x, 34260i, global0.a.c.x)), global0.d, global1[_wgslsmith_index_u32(global2.a.x, 14u)], Struct_1(u_input.a, 2158f, var_2.d.c))), firstTrailingBit(16609i), func_2()).c.c), func_4(Struct_2(func_4(Struct_2(Struct_1(vec4<u32>(4294967295u, 20057u, 5700u, var_2.c.a.x), global0.b.b, var_2.c.c), global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(62287u, 14u)], var_2.a), var_2.c.c.x, Struct_2(Struct_1(global2.a, var_2.b.b, vec3<i32>(2147483647i, u_input.c, 0i)), var_2.d, Struct_1(global2.a, -1355f, vec3<i32>(u_input.c, 2147483647i, 0i)), global1[_wgslsmith_index_u32(44042u, 14u)])).a, Struct_1(arg_1, global2.b, var_2.c.c), func_4(Struct_2(global0.a, global1[_wgslsmith_index_u32(1u, 14u)], var_2.d, global0.d), var_2.d.c.x, Struct_2(global1[_wgslsmith_index_u32(var_2.a.a.x, 14u)], Struct_1(vec4<u32>(1u, global0.c.a.x, global0.c.a.x, global2.a.x), 1402f, global2.c), global1[_wgslsmith_index_u32(0u, 14u)], global0.c)).c, Struct_1(vec4<u32>(4294967295u, global0.b.a.x, global2.a.x, 1u), global2.b, vec3<i32>(global0.a.c.x, var_2.a.c.x, global2.c.x))), 15375i | var_1.x, func_4(Struct_2(var_2.b, global1[_wgslsmith_index_u32(4294967295u, 14u)], Struct_1(vec4<u32>(1u, 50385u, 0u, 0u), arg_0.x, global0.a.c), var_2.b), _wgslsmith_div_i32(u_input.b, -31018i), func_4(Struct_2(global0.d, var_2.d, Struct_1(var_2.c.a, arg_0.x, global2.c), var_2.c), 0i, Struct_2(Struct_1(vec4<u32>(global2.a.x, var_2.b.a.x, var_2.a.a.x, u_input.a.x), -581f, vec3<i32>(-2147483647i, 18436i, -1i)), var_2.b, var_2.c, global0.b)))).c), var_2.d.c.x, Struct_2(Struct_1(u_input.a, var_2.b.b, vec3<i32>(var_1.x, var_2.d.c.x, -1i) & global2.c), func_2().b, var_2.c, Struct_1(vec4<u32>(~arg_1.x, _wgslsmith_mult_u32(arg_1.x, arg_1.x), ~var_2.c.a.x, var_2.c.a.x ^ global0.c.a.x), global2.b, _wgslsmith_sub_vec3_i32(func_2().a.c, -vec3<i32>(-1i, -8086i, -26426i))))).b;
    return !select(select(vec4<bool>(true, true, true, any(vec3<bool>(true, true, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), false), vec4<bool>(any(vec2<bool>(true, true)), false, all(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)))), vec4<bool>(true, false, true, var_3.b >= 464f));
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: bool, arg_3: bool) -> Struct_2 {
    var var_0 = global0.d.c.x;
    var var_1 = 38826i;
    var var_2 = !arg_1;
    var_0 = min(-20309i, (global0.c.c.x >> (21539u % 32u)) >> (global2.a.x % 32u));
    global1 = array<Struct_1, 14>();
    return Struct_2(global0.c, Struct_1(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.b))), 392f), ~_wgslsmith_sub_vec3_i32(global0.d.c ^ vec3<i32>(0i, u_input.b, -20326i), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 35105i, 11591i), global2.c, global0.b.c))), global1[_wgslsmith_index_u32(28561u, 14u)], func_4(func_4(Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, global0.a.a.x, 4294967295u), global2.b, vec3<i32>(u_input.c, global0.d.c.x, u_input.c)), func_4(Struct_2(global1[_wgslsmith_index_u32(global2.a.x, 14u)], Struct_1(u_input.a, global2.b, global2.c), Struct_1(vec4<u32>(global0.a.a.x, global2.a.x, 4294967295u, 1u), 817f, vec3<i32>(global0.a.c.x, global2.c.x, global0.d.c.x)), Struct_1(global2.a, global2.b, global0.c.c)), 1i, Struct_2(global0.d, Struct_1(global0.d.a, 2385f, global2.c), global0.a, Struct_1(u_input.a, -626f, global2.c))).c, global1[_wgslsmith_index_u32(func_2().c.a.x, 14u)], Struct_1(global2.a, arg_0, global2.c)), ~(-global0.d.c.x), func_2()), (global0.b.c.x >> (u_input.a.x % 32u)) ^ global2.c.x, Struct_2(global1[_wgslsmith_index_u32(global0.c.a.x, 14u)], func_4(func_2(), abs(global0.b.c.x), func_4(Struct_2(global0.c, global0.c, global0.c, Struct_1(vec4<u32>(43470u, 4294967295u, global2.a.x, 4294967295u), -1115f, global0.d.c)), u_input.c, Struct_2(global0.a, global0.c, global0.a, global1[_wgslsmith_index_u32(global2.a.x, 14u)]))).b, global1[_wgslsmith_index_u32(41877u, 14u)], func_2().d)).b);
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_2 {
    global1 = array<Struct_1, 14>();
    global2 = func_2().a;
    global0 = func_2();
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, 1336f, -163f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(339f, arg_3.x, 443f, -2282f)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.d.b, -309f, 1000f, 191f), vec4<f32>(-177f, global0.a.b, 1373f, arg_0.a.b)))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1339f, arg_0.b.b, -535f, arg_3.x) + vec4<f32>(757f, arg_3.x, arg_2.c.b, 429f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1235f, 817f, -123f))))))), ~u_input.a).zwy;
    global0 = Struct_2(Struct_1(vec4<u32>(4294967295u, arg_2.b.a.x, arg_2.b.a.x ^ max(u_input.a.x, 1u), arg_0.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1482f), -select(arg_0.c.c ^ global2.c, func_2().b.c, any(var_0.xz))), Struct_1(~global2.a, -1280f, global2.c), Struct_1(~vec4<u32>(_wgslsmith_mult_u32(16004u, global0.a.a.x), global2.a.x, global0.c.a.x & 32936u, ~arg_1.x), global0.c.b, ~_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0.b.c.x, arg_2.b.c.x, 39880i), arg_0.b.c)), arg_0.c);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1[_wgslsmith_index_u32(105120u, 14u)];
    global0 = func_6(func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.d.b)) - -866f), -402f, 1u > _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 23252u, global0.c.a.x), global0.c.a.zxw))), !(!func_1(vec4<f32>(-1496f, 1000f, global0.b.b, -678f), u_input.a)), ~u_input.c <= -5306i, any(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(795f, 419f, 1000f, global0.d.b)), vec4<u32>(u_input.a.x, 4294967295u, 88864u, 1u) << (vec4<u32>(global2.a.x, global2.a.x, global0.c.a.x, global2.a.x) % vec4<u32>(32u))))), ~firstTrailingBit(global0.d.a.yz), func_5(func_2().c.b, !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true), !(4494i >= countOneBits(global2.c.x)), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(func_2().a.b)), global0.d.b, _wgslsmith_f_op_f32(max(-326f, _wgslsmith_f_op_f32(-global2.b))))));
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.b + 2107f)), func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-549f - global0.c.b) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(global2.b, _wgslsmith_f_op_f32(max(global2.b, global0.d.b)))), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b - global2.b))), vec4<u32>(~(~0u), global2.a.x, u_input.a.x & 29132u, func_2().a.a.x)), 10931u > global2.a.x, !(!(!all(vec4<bool>(true, false, false, false)))));
    var var_1 = func_6(Struct_2(Struct_1(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 1u), 33519u, 4294967295u, global0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(446f, 1140f))), ~select(global0.d.c, var_0.c.c, vec3<bool>(false, true, false))), Struct_1(var_0.c.a, global2.b, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(72738i, 56556i), global0.d.c.xx), u_input.b, 0i)), Struct_1(_wgslsmith_sub_vec4_u32(min(var_0.b.a, u_input.a), ~vec4<u32>(34993u, 19567u, 1u, var_0.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1190f + 187f)), _wgslsmith_sub_vec3_i32(select(vec3<i32>(global0.c.c.x, var_0.c.c.x, global2.c.x), global2.c, false), var_0.b.c)), global0.c), _wgslsmith_div_vec2_u32(~u_input.a.xx, global0.b.a.wx), Struct_2(func_5(_wgslsmith_f_op_f32(1024f * global2.b), vec4<bool>(true, true, true, true), false, all(vec4<bool>(true, false, true, true)) && true).a, var_0.b, Struct_1(vec4<u32>(reverseBits(var_0.a.a.x), func_3(Struct_2(var_0.a, Struct_1(vec4<u32>(1u, global0.c.a.x, u_input.a.x, 4294967295u), var_0.a.b, global0.a.c), Struct_1(global0.c.a, 1000f, vec3<i32>(var_0.a.c.x, -2147483647i, 0i)), global1[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec2<f32>(global2.b, 584f), Struct_2(var_0.b, Struct_1(vec4<u32>(u_input.a.x, 0u, 0u, 12639u), global2.b, vec3<i32>(global2.c.x, 29533i, 8021i)), global0.c, Struct_1(global2.a, -1369f, global0.d.c))).x, 26748u, global0.c.a.x << (global2.a.x % 32u)), 371f, vec3<i32>(u_input.b, ~global0.c.c.x, global2.c.x)), global0.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(807f, global0.a.b, global0.c.b))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1267f, global0.d.b, var_0.d.b), vec3<f32>(var_0.b.b, 397f, 1357f))) - vec3<f32>(global0.d.b, var_0.c.b, global0.b.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(285f, 790f, -767f) - vec3<f32>(global0.d.b, -271f, -295f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(755f, global0.d.b, -593f) - vec3<f32>(global2.b, 660f, global0.d.b))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -439f)))));
    let var_3 = countOneBits(global2.a.yy);
    var var_4 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, -2147483647i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-214f, 425f, -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, 1231f, global0.c.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.c.b, global0.a.b, var_4.b)))), true)), 549f, vec2<i32>(~(~var_1.a.c.x), countOneBits(abs(reverseBits(var_1.d.c.x)))));
}

