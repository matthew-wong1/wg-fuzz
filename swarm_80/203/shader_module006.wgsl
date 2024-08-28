struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(35350i, -9022i, 2147483647i, -4168i), vec4<i32>(1i, 24284i, 1i, -31492i), vec4<i32>(2147483647i, -1i, 7357i, 1i), vec4<i32>(-57685i, 0i, 1i, 12816i), vec4<i32>(0i, 946i, 24859i, 0i), vec4<i32>(1i, -29074i, -28785i, 1i), vec4<i32>(27085i, -7828i, 8812i, 6759i), vec4<i32>(13354i, -6133i, i32(-2147483648), 50952i), vec4<i32>(67091i, -59771i, 2147483647i, -34643i), vec4<i32>(i32(-2147483648), 107488i, 15547i, 48374i), vec4<i32>(-1i, -68654i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), 1248i, 5076i, 53877i), vec4<i32>(1i, 39125i, 27304i, 0i), vec4<i32>(54660i, -1i, -28830i, 2147483647i), vec4<i32>(1i, 2147483647i, 0i, 12113i), vec4<i32>(28509i, 0i, 4385i, -1i), vec4<i32>(1i, -20543i, 38558i, 48370i), vec4<i32>(0i, 0i, -5196i, -5708i), vec4<i32>(-1i, -1i, -1i, 39307i), vec4<i32>(i32(-2147483648), 2147483647i, 58495i, 8442i), vec4<i32>(-1i, 26983i, 36317i, -13930i), vec4<i32>(-1i, -35641i, -9630i, -7640i), vec4<i32>(i32(-2147483648), 2147483647i, 70668i, 0i), vec4<i32>(-1i, 20506i, 0i, -1i), vec4<i32>(-4653i, 2147483647i, 1i, -11474i), vec4<i32>(-41045i, 33737i, 0i, 46508i), vec4<i32>(-63042i, 16726i, -22939i, -1i), vec4<i32>(-35859i, 23487i, -23638i, i32(-2147483648)), vec4<i32>(5291i, -1i, 29871i, 36871i));

var<private> global1: vec2<f32>;

var<private> global2: array<vec3<bool>, 28>;

var<private> global3: array<vec4<i32>, 27>;

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    global0 = array<vec4<i32>, 29>();
    global2 = array<vec3<bool>, 28>();
    let var_0 = global2[_wgslsmith_index_u32(96604u << (u_input.c.x % 32u), 28u)];
    var var_1 = Struct_1(~(~u_input.c), vec2<f32>(966f, _wgslsmith_f_op_f32(abs(1142f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 771f, 1000f, -1179f)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -1117f, global1.x, global1.x), vec4<f32>(global1.x, global1.x, -771f, -1498f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -1000f, global1.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global1.x, -2624f, -1163f), vec4<f32>(global1.x, global1.x, global1.x, 882f))))))), vec2<i32>(~_wgslsmith_clamp_i32(u_input.d, u_input.b, u_input.b), 1i) >> (~u_input.c.zy % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(select(~vec2<i32>(-48899i, u_input.d), vec2<i32>(39582i, -2147483647i), var_0.x & var_0.x) | ~vec2<i32>(u_input.d, 67504i), vec2<i32>(select(u_input.b, ~17182i, var_0.x), -1i), ~vec2<i32>(abs(u_input.d), u_input.b)));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) - global1.x), _wgslsmith_f_op_f32(trunc(-1369f))), 1521f, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(637f))));
    return var_0.yx;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>) -> i32 {
    var var_0 = Struct_5(all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), func_3(), true)) || false, true, 1i < reverseBits(max(reverseBits(arg_1.a.x), 2147483647i)), Struct_1(~(~vec3<u32>(u_input.c.x, 6877u, 81642u)), vec2<f32>(_wgslsmith_div_f32(-616f, 1651f), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2011f, -425f, arg_0, global1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -996f, 1586f, global1.x) - vec4<f32>(arg_0, 1406f, arg_0, global1.x))))), arg_2.yy >> ((min(u_input.c.xy, vec2<u32>(29745u, 10968u)) >> (~vec2<u32>(15458u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), countOneBits(~max(vec2<i32>(1i, 10813i), arg_2.xx))));
    global1 = _wgslsmith_f_op_vec2_f32(sign(var_0.d.c.yy));
    var var_1 = u_input.c;
    let var_2 = var_0.c;
    var var_3 = _wgslsmith_dot_vec4_i32(~global0[_wgslsmith_index_u32(~(~var_1.x), 29u)], global3[_wgslsmith_index_u32(~1u, 27u)] << (firstTrailingBit(select(vec4<u32>(var_1.x, u_input.a, var_0.d.a.x, var_1.x), vec4<u32>(1u, 4294967295u, 0u, var_0.d.a.x), vec4<bool>(true, true, false, var_0.a)) | vec4<u32>(var_0.d.a.x, 1u, 4294967295u, var_1.x)) % vec4<u32>(32u)));
    return var_0.d.d.x;
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_1(select(~u_input.c & _wgslsmith_mod_vec3_u32(countOneBits(u_input.c), vec3<u32>(u_input.a, 4294967295u, 0u)), u_input.c, global2[_wgslsmith_index_u32(~52285u, 28u)]), _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -369f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.x - global1.x), -229f) + vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x - -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, -1322f, global1.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1059f, 1000f, global1.x, global1.x), vec4<f32>(1976f, -1669f, 589f, global1.x), select(arg_0, arg_0, false))))), vec2<i32>(~u_input.d, u_input.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d ^ ~1i, func_2(583f, Struct_3(vec2<i32>(-2147483647i, u_input.b), -2147483647i), -vec3<i32>(u_input.d, u_input.d, 0i))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 1i) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.b), vec2<i32>(2147483647i, u_input.d)), ~vec2<i32>(u_input.d, u_input.b) & -vec2<i32>(6279i, u_input.d)), -vec2<i32>(u_input.b, ~u_input.d)));
    let var_1 = Struct_2(~vec2<u32>(_wgslsmith_sub_u32(min(u_input.a, 67016u), _wgslsmith_mult_u32(51327u, var_0.a.x)), ~(~0u)), vec2<i32>(_wgslsmith_sub_i32(var_0.e.x, var_0.e.x ^ u_input.b) ^ -(i32(-1i) * -1i), u_input.d), Struct_1(~(~_wgslsmith_mult_vec3_u32(u_input.c, u_input.c)), vec2<f32>(global1.x, var_0.b.x), var_0.c, ~var_0.d, _wgslsmith_mult_vec2_i32(abs(var_0.d), var_0.d & vec2<i32>(var_0.e.x, 2147483647i)) << (~(u_input.c.zx ^ u_input.c.xx) % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_mod_vec2_i32(firstTrailingBit(~var_0.e), vec2<i32>(~21411i, var_0.d.x))), var_0.c.yxw);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b, _wgslsmith_f_op_vec2_f32(step(var_1.c.c.yw, var_1.e.yy)))));
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, _wgslsmith_f_op_f32(-var_0.b.x)), vec2<f32>(1f, -1054f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(720f, global1.x), vec2<f32>(var_2.x, global1.x)))))))));
    global1 = var_1.e.zz;
    return -385f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 29>();
    var var_0 = Struct_1(_wgslsmith_mult_vec3_u32(min(~u_input.c, select(u_input.c, u_input.c, vec3<bool>(false, false, true))), _wgslsmith_div_vec3_u32(min(vec3<u32>(41274u, 0u, u_input.a), vec3<u32>(4294967295u, u_input.c.x, u_input.a)), vec3<u32>(0u, 39564u, u_input.a))) ^ firstTrailingBit(~vec3<u32>(44907u, 4961u, u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-519f, -157f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1349f, global1.x) + vec2<f32>(1014f, 867f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 346f))))), vec4<f32>(_wgslsmith_f_op_f32(-680f + _wgslsmith_div_f32(-446f, _wgslsmith_f_op_f32(f32(-1f) * -863f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * global1.x), _wgslsmith_f_op_f32(func_1(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false)))), global1.x, _wgslsmith_f_op_f32(step(global1.x, global1.x))), ~(-firstTrailingBit(~vec2<i32>(u_input.d, -2147483647i))), firstLeadingBit(abs(~vec2<i32>(-2147483647i, u_input.d))));
    var var_1 = ~2147483647i;
    var_0 = Struct_1(select(min(u_input.c, u_input.c), vec3<u32>(min(61151u, var_0.a.x << (59897u % 32u)), ~(~1u), _wgslsmith_dot_vec3_u32(var_0.a, u_input.c) << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 33019u), vec2<u32>(1u, 79133u)) % 32u)), false), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b.x, var_0.b.x), vec2<f32>(609f, 1233f)))) - vec2<f32>(global1.x, _wgslsmith_f_op_f32(round(var_0.c.x)))))), var_0.c, var_0.e, firstLeadingBit(vec2<i32>(var_0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -2147483647i, u_input.d), global0[_wgslsmith_index_u32(0u, 29u)] << (vec4<u32>(20350u, 1u, u_input.a, 1u) % vec4<u32>(32u))))));
    let var_2 = vec4<u32>(~u_input.a, 37935u, 1u, ~1u);
    let var_3 = !select(vec2<bool>(var_0.a.x >= ~var_2.x, !(0u != var_0.a.x)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false), all(vec4<bool>(true, false, true, true))), true), select(func_3(), select(vec2<bool>(false, false), vec2<bool>(true, true), true), any(vec4<bool>(true, true, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec2_i32(select(vec2<i32>(var_0.e.x, -1i), vec2<i32>(-2147483647i, u_input.d), var_3), vec2<i32>(19607i, u_input.b)) & var_0.e, _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, var_2.x), max(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, var_0.a.x), u_input.c.yx), u_input.c.xx)), var_0.e.x ^ u_input.b);
}

