struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: bool = false;

var<private> global2: i32;

var<private> global3: vec2<i32> = vec2<i32>(8760i, -24170i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    global2 = -_wgslsmith_clamp_i32(1i, 1411i, firstTrailingBit(global3.x));
    let var_0 = ~select(u_input.c.ww, u_input.c.ww, global0.x);
    var var_1 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1026f, arg_0)) * _wgslsmith_f_op_f32(-1069f * 1216f))))));
    let var_2 = !(!select(select(vec3<bool>(true, global0.x, global0.x), !vec3<bool>(global0.x, false, global0.x), false), vec3<bool>(any(vec3<bool>(global0.x, true, false)), any(vec4<bool>(true, global0.x, false, true)), true), vec3<bool>(false, true, true)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    return vec2<i32>(firstTrailingBit(global3.x), 1i >> (u_input.c.x % 32u));
}

fn func_2(arg_0: bool) -> Struct_4 {
    let var_0 = Struct_4(select(!select(!vec4<bool>(arg_0, false, arg_0, arg_0), !vec4<bool>(global0.x, global0.x, false, false), true), vec4<bool>(any(!vec4<bool>(global0.x, true, true, true)), false, false, !select(arg_0, arg_0, arg_0)), false), _wgslsmith_add_i32(~(-1139i), u_input.a), Struct_2(vec4<bool>(true, true, true, true), min(~_wgslsmith_dot_vec3_i32(vec3<i32>(38307i, -1i, global3.x), vec3<i32>(1i, -2147483647i, 1i)), -33301i), Struct_1(u_input.c.yz, firstTrailingBit(_wgslsmith_mult_vec3_u32(u_input.c.yxy, u_input.c.wwz)), ~(vec2<i32>(2147483647i, global3.x) ^ vec2<i32>(global3.x, u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1053f, 653f, -1057f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1008f, 782f, -744f), vec3<f32>(157f, 1539f, 1444f)))), countOneBits(reverseBits(countOneBits(u_input.c)))), true, u_input.b);
    let var_1 = var_0.c;
    var var_2 = var_0.c.c.d.x;
    global3 = _wgslsmith_sub_vec2_i32(~(vec2<i32>(-4009i, i32(-1i) * -2147483647i) ^ func_3(-390f)), vec2<i32>(min(~(-36800i), var_0.b), -var_0.b));
    var var_3 = -1i;
    return var_0;
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    let var_0 = func_2(false);
    let var_1 = var_0;
    let var_2 = -2147483647i;
    var var_3 = -(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(var_1.b, var_0.b, -7699i, -9221i))) ^ select(~_wgslsmith_clamp_vec4_i32(vec4<i32>(32641i, 15719i, u_input.a, var_2), vec4<i32>(global3.x, 18305i, var_0.c.c.c.x, var_0.e), select(vec4<i32>(-2147483647i, -2147483647i, -28979i, u_input.b), vec4<i32>(arg_0.b, 99088i, var_0.c.b, -1i), var_1.c.a.x)), vec4<i32>(22756i, countOneBits(1i), var_1.b, var_1.b) << (var_1.c.d % vec4<u32>(32u)), true);
    let var_4 = Struct_2(!func_2(arg_0.a.x).c.a, var_1.b, var_0.c.c, ~(~(~(vec4<u32>(arg_0.c.d.x, var_0.c.d.x, var_0.c.d.x, arg_0.c.c.b.x) | vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, arg_0.c.c.a.x)))));
    return var_0.c.c;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> vec4<u32> {
    global1 = true;
    let var_0 = select(~abs(firstTrailingBit(4561u)), arg_1, all(arg_0.e.a)) <= ~7920u;
    global0 = arg_0.e.a.xx;
    global3 = arg_0.d.c;
    let var_1 = var_0;
    return ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.d.a.x, _wgslsmith_clamp_u32(1626u, func_1(Struct_4(arg_0.e.a, global3.x, Struct_2(arg_0.e.a, u_input.a, Struct_1(vec2<u32>(u_input.c.x, 0u), arg_0.a.zww, vec2<i32>(13683i, u_input.b), vec3<f32>(830f, -360f, arg_0.e.c.d.x)), u_input.c), arg_2, 0i)).b.x, select(u_input.c.x, u_input.c.x, true)), reverseBits(~u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(19543u, u_input.c.x, 44450u), firstTrailingBit(arg_0.d.b))), u_input.c);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = func_2(arg_1.e.a.x).c;
    var var_1 = func_2(arg_1.e.a.x).c;
    var var_2 = firstLeadingBit(_wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_div_i32(1i, arg_1.e.c.c.x)), func_3(_wgslsmith_f_op_f32(sign(995f))).x));
    var var_3 = -abs(select(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.c.c.x, -1i, -33900i, 45354i), firstLeadingBit(vec4<i32>(0i, -4720i, -1i, -1i))), vec4<i32>(arg_1.b.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, global3.x, global3.x), vec4<i32>(var_0.b, 42318i, 45423i, u_input.b)), abs(arg_1.e.c.c.x), ~(-5944i)), func_2(true).a));
    var_1 = func_2(any(vec2<bool>(global0.x, !(!global0.x)))).c;
    return -(~_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(arg_1.e.c.c.x, arg_1.c, 6095i, 53063i) ^ vec4<i32>(arg_1.d.c.x, var_3.x, var_3.x, -1i)), -countOneBits(vec4<i32>(arg_1.c, u_input.a, var_0.b, global3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_dot_vec4_i32(~vec4<i32>(global3.x, ~(-u_input.a), -firstTrailingBit(-1i), 1i), func_5(func_4(Struct_3(vec4<u32>(u_input.c.x, 12685u, 1u, u_input.c.x) << (u_input.c % vec4<u32>(32u)), Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.yxw, vec2<i32>(u_input.a, global3.x), vec3<f32>(-208f, 2794f, 1081f)), global3.x, func_1(Struct_4(vec4<bool>(global0.x, global0.x, false, false), -2147483647i, Struct_2(vec4<bool>(false, true, global0.x, global0.x), global3.x, Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 9529u), vec2<i32>(-21001i, global3.x), vec3<f32>(-484f, 565f, -551f)), u_input.c), false, -1i)), func_2(global0.x).c), u_input.c.x, global0.x), Struct_3(_wgslsmith_add_vec4_u32(~u_input.c, _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 1u), u_input.c)), Struct_1(max(u_input.c.zy, vec2<u32>(4294967295u, 76770u)), u_input.c.zyx, vec2<i32>(14219i, -2147483647i), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-326f, 1544f, 374f), vec3<f32>(-558f, -707f, 892f), vec3<bool>(global0.x, true, global0.x)))), 0i, Struct_1(~u_input.c.xx, u_input.c.zzx, -vec2<i32>(u_input.b, 2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(906f, -736f, -169f))), Struct_2(vec4<bool>(false, false, global0.x, false), _wgslsmith_clamp_i32(u_input.b, -65220i, u_input.a), Struct_1(u_input.c.wz, u_input.c.xyz, vec2<i32>(global3.x, global3.x), vec3<f32>(-1916f, 1000f, -467f)), func_2(global0.x).c.d))));
    let var_0 = Struct_2(!vec4<bool>(any(select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, true, global0.x), true)), any(vec4<bool>(true, false, true, false)) && true, all(vec4<bool>(true, global0.x, global0.x, true)), false), global3.x, func_2(any(!select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, true), global0.x))).c.c, ~u_input.c);
    let var_1 = !(-min(_wgslsmith_sub_i32(55781i, u_input.a), -1670i) > -(~11321i));
    var var_2 = abs((~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, var_0.c.c.x, global3.x, -35281i), vec4<i32>(-1i, -2147483647i, u_input.a, 2147483647i)) ^ vec4<i32>(~global3.x, u_input.a, ~(-2147483647i), u_input.a)) << (vec4<u32>(func_1(func_2(true)).b.x, var_0.d.x, 4294967295u, (u_input.c.x & 0u) & (u_input.c.x >> (35227u % 32u))) % vec4<u32>(32u)));
    var var_3 = var_0.c.b.x >= func_1(Struct_4(vec4<bool>(!global0.x, true, var_1, var_0.a.x), ~min(-2147483647i, var_2.x), Struct_2(var_0.a, 0i, func_2(var_0.a.x).c.c, var_0.d), true, func_3(var_0.c.d.x).x)).b.x;
    let var_4 = !func_2(true).c.a;
    var_3 = all(var_4.xw);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, ~select(var_2.xyx, var_2.yww, all(var_4) && any(var_0.a.ww)));
}

