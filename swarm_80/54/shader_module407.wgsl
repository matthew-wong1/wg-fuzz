struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 942f;

var<private> global1: array<vec3<i32>, 8>;

var<private> global2: bool;

var<private> global3: bool = false;

var<private> global4: Struct_1 = Struct_1(-24738i, vec3<u32>(18891u, 87591u, 42175u), 20952i, vec4<i32>(-20006i, -16741i, 37687i, -69963i), vec4<bool>(true, false, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>) -> vec3<u32> {
    var var_0 = !(!vec3<bool>(true, true, select(global4.e.x, any(global4.e.yxw), global4.e.x)));
    let var_1 = Struct_2(Struct_1(-1i, vec3<u32>(firstTrailingBit(1u), ~(~global4.b.x), abs(global4.b.x << (global4.b.x % 32u))), -1i, vec4<i32>(u_input.c >> (53631u % 32u), u_input.c & u_input.c, -2147483647i, ~u_input.c) & select(vec4<i32>(arg_0.x, -48115i, -1i, 39456i), ~global4.d, global4.e), global4.e));
    let var_2 = Struct_2(Struct_1(40771i, var_1.a.b, u_input.c, vec4<i32>(2435i, countOneBits(-23409i), -_wgslsmith_sub_i32(var_1.a.d.x, 26390i), ~(-12256i)), select(select(!vec4<bool>(global4.e.x, false, global4.e.x, var_0.x), global4.e, var_0.x), vec4<bool>(false, all(vec3<bool>(true, true, global4.e.x)), !global4.e.x, all(global4.e.zzy)), global4.e)));
    global0 = 388f;
    global3 = true;
    return ~var_2.a.b;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(2147483647i, ~_wgslsmith_mult_vec3_u32(func_3(max(vec3<i32>(8586i, global4.c, u_input.c), vec3<i32>(global4.d.x, -1i, u_input.c))), firstTrailingBit(vec3<u32>(42476u, u_input.b, 0u))), firstTrailingBit(_wgslsmith_div_i32(firstLeadingBit(u_input.c), select(1i, _wgslsmith_dot_vec4_i32(global4.d, global4.d), 36585i > u_input.c))), ~select(max(global4.d, ~vec4<i32>(-32908i, -5022i, 15411i, -74i)), vec4<i32>(31539i, -global4.a, _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(global4.b.x, 8u)], vec3<i32>(global4.c, -3671i, global4.d.x)), -1i), global4.e.x), !(!select(!vec4<bool>(true, global4.e.x, true, global4.e.x), !vec4<bool>(false, false, global4.e.x, global4.e.x), !global4.e)));
    let var_1 = Struct_1(u_input.c ^ -global4.d.x, select(firstTrailingBit(_wgslsmith_div_vec3_u32(var_0.b, var_0.b | var_0.b)), vec3<u32>(1u, 0u, _wgslsmith_mod_u32(u_input.a, 35436u)), select(vec3<bool>(all(vec4<bool>(var_0.e.x, false, false, true)), all(vec2<bool>(var_0.e.x, false)), false), select(select(vec3<bool>(global4.e.x, true, false), global4.e.wyw, var_0.e.yxy), !vec3<bool>(false, global4.e.x, global4.e.x), any(vec4<bool>(false, global4.e.x, true, false))), any(select(vec2<bool>(true, false), global4.e.zx, global4.e.yz)))), i32(-1i) * -3161i, reverseBits(-_wgslsmith_add_vec4_i32(var_0.d, _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 0i, 38209i, var_0.c), global4.d))), !(!select(vec4<bool>(true, true, var_0.e.x, global4.e.x), !vec4<bool>(global4.e.x, var_0.e.x, false, false), vec4<bool>(true, var_0.e.x, false, global4.e.x))));
    let var_2 = Struct_2(var_1);
    var var_3 = ~countOneBits(vec4<u32>(~4294967295u, 1u, var_0.b.x, 89608u)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(abs(firstTrailingBit(vec4<u32>(var_2.a.b.x, var_1.b.x, var_2.a.b.x, 45414u))), ~(~vec4<u32>(global4.b.x, global4.b.x, 1u, u_input.a))), _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(74148u, var_2.a.b.x, 12492u), var_1.b)), var_2.a.b.x), (global4.b.x & ~14201u) ^ abs(func_3(vec3<i32>(56883i, var_0.d.x, u_input.c)).x), ~(~1u)) % vec4<u32>(32u));
    var_0 = Struct_1(-_wgslsmith_mult_i32(8575i, global4.c & global4.d.x), abs(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.b.xx, var_3.wx), global4.b.yz), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 0u, var_2.a.b.x, 1u), ~vec4<u32>(1u, 27944u, 37102u, var_2.a.b.x)), var_2.a.b.x)), global4.c, _wgslsmith_add_vec4_i32(abs(max(_wgslsmith_sub_vec4_i32(var_2.a.d, var_0.d), vec4<i32>(23380i, var_1.d.x, global4.d.x, 32281i))), ~vec4<i32>(var_1.c << (var_1.b.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(9295i, -105637i, 1i, global4.c), vec4<i32>(var_0.c, var_1.c, 2147483647i, 9435i)), var_1.c, -var_2.a.a)), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) * _wgslsmith_f_op_f32(step(1118f, arg_0.x))) > _wgslsmith_f_op_f32(f32(-1f) * -1000f), !(1u >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.b.x, 1u, 4294967295u), vec4<u32>(u_input.b, var_1.b.x, var_1.b.x, 45666u))), !global4.e.x, any(var_1.e.xw)));
    return Struct_1(-var_1.a << (~var_1.b.x % 32u), ~vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, global4.b.x, var_1.b.x, 1u)), max(vec4<u32>(4294967295u, 1u, 4294967295u, var_1.b.x), vec4<u32>(4294967295u, global4.b.x, var_3.x, var_1.b.x))), ~max(0u, 7200u), var_2.a.b.x), _wgslsmith_add_i32(var_1.a, var_0.a), firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(min(vec4<i32>(-1i, -2147483647i, global4.d.x, var_1.a), var_2.a.d), var_2.a.d ^ var_0.d), max(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.c, var_1.a, -2147483647i, -2147483647i), global4.d), global4.d))), global4.e);
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-916f))))));
    var var_0 = ~vec3<i32>(~u_input.c, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global4.d, global4.d), vec4<i32>(84523i, -2040i, -1i, global4.d.x)), -1i) & select(vec3<i32>(u_input.c, 0i, _wgslsmith_mult_i32(arg_0.c, u_input.c)) << (~(~vec3<u32>(0u, 20385u, 2723u)) % vec3<u32>(32u)), ~vec3<i32>(-arg_0.c, -1i, ~60455i), !arg_0.e.yyy);
    let var_1 = min(arg_0.b.x, ~(~arg_0.b.x));
    global3 = false;
    let var_2 = u_input.c;
    return global4.e.wxz;
}

fn func_1() -> Struct_1 {
    global3 = true;
    var var_0 = select(select(func_4(func_2(vec3<f32>(-140f, 1271f, -1283f))), func_4(func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1237f, 959f, 343f), vec3<f32>(1000f, -316f, -1000f), global4.e.x)))), vec3<bool>(global4.e.x, false, global4.e.x)), func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-347f, 685f, -1172f) + vec3<f32>(-244f, 483f, -460f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-947f, 1621f, -1879f) * vec3<f32>(-803f, 1017f, 459f)))))).e.xxy, !((firstTrailingBit(u_input.c) << (~4294967295u % 32u)) > (i32(-1i) * -34609i)));
    let var_1 = Struct_1(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(878f, 1240f, -1000f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1183f, -219f, -597f))))).c, global4.b, 30567i, -global4.d, vec4<bool>(true, var_0.x, var_0.x, true));
    let var_2 = var_1;
    var_0 = select(vec3<bool>(!global4.e.x, true, !(_wgslsmith_f_op_f32(trunc(798f)) < -787f)), var_2.e.xxy, func_2(vec3<f32>(-174f, -117f, 125f)).e.x);
    return func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-249f * _wgslsmith_f_op_f32(ceil(-989f))));
    global1 = array<vec3<i32>, 8>();
    global0 = -1606f;
    let var_2 = func_3(~_wgslsmith_sub_vec3_i32(-global4.d.wzy, global4.d.zxx)).x;
    return arg_3;
}

fn func_6(arg_0: Struct_1) -> i32 {
    var var_0 = abs(vec4<u32>(min(_wgslsmith_add_u32(arg_0.b.x >> (global4.b.x % 32u), ~19933u), 0u), ~max(_wgslsmith_div_u32(52463u, u_input.a), 11750u), _wgslsmith_sub_u32(global4.b.x, func_2(vec3<f32>(-848f, 222f, -1000f)).b.x), arg_0.b.x));
    var var_1 = arg_0;
    var var_2 = ~select(vec2<u32>(~var_0.x, 4219u), vec2<u32>(select(u_input.b, var_0.x, var_1.e.x), global4.b.x), vec2<bool>(var_1.e.x | false, false)) | ~vec2<u32>(0u, global4.b.x);
    var var_3 = func_5(vec2<bool>(true, var_1.e.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2084f), 1111f)))), ~_wgslsmith_mult_u32(var_2.x, _wgslsmith_clamp_u32(24907u, func_1().b.x, 49496u)), arg_0);
    var var_4 = arg_0;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(func_6(func_5(!vec2<bool>(global4.e.x, true), _wgslsmith_f_op_f32(-257f * 1000f), 88890u, func_1())), vec3<u32>(global4.b.x, 67308u, u_input.a), ~abs(global4.c << (firstLeadingBit(global4.b.x) % 32u)), _wgslsmith_mult_vec4_i32(func_5(vec2<bool>(true, true), _wgslsmith_f_op_f32(-1258f * 1000f), func_1().b.x, func_5(vec2<bool>(global4.e.x, global4.e.x), -745f, 1u, Struct_1(global4.a, vec3<u32>(11254u, u_input.a, global4.b.x), global4.a, vec4<i32>(17349i, u_input.c, global4.d.x, -2147483647i), vec4<bool>(global4.e.x, global4.e.x, false, global4.e.x)))).d, func_5(func_1().e.wy, _wgslsmith_f_op_f32(1012f - 482f), func_5(vec2<bool>(true, false), 459f, u_input.b, Struct_1(-59288i, global4.b, u_input.c, vec4<i32>(-1i, global4.a, u_input.c, -2147483647i), global4.e)).b.x, func_2(vec3<f32>(-668f, -1161f, -230f))).d) & ~max(vec4<i32>(0i, 22052i, 44029i, -53997i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, -10574i, -59106i), global4.d)), vec4<bool>(true, _wgslsmith_f_op_f32(max(-797f, _wgslsmith_f_op_f32(trunc(-447f)))) >= 1258f, global4.e.x, !func_5(vec2<bool>(global4.e.x, global4.e.x), _wgslsmith_f_op_f32(-1076f - 132f), abs(u_input.a), Struct_1(global4.a, global4.b, -14256i, vec4<i32>(2147483647i, -14143i, global4.d.x, u_input.c), vec4<bool>(global4.e.x, false, true, global4.e.x))).e.x));
    let var_0 = !(!global4.e.x);
    let var_1 = Struct_1(firstTrailingBit(u_input.c), ~global4.b & global4.b, _wgslsmith_div_i32(select(u_input.c, (-45769i >> (u_input.a % 32u)) & ~0i, var_0 | global4.e.x), _wgslsmith_div_i32(global4.c ^ global4.d.x, ~(global4.d.x >> (4294967295u % 32u)))), _wgslsmith_clamp_vec4_i32(~global4.d, vec4<i32>(abs(1i), u_input.c, _wgslsmith_div_i32(u_input.c ^ global4.a, u_input.c), 4658i), select(~vec4<i32>(global4.d.x, 13334i, 1i, -2147483647i), vec4<i32>(-20763i, -1717i, 1i, ~global4.c), vec4<bool>(var_0, true, true, true))), !(!func_5(vec2<bool>(var_0, true), _wgslsmith_f_op_f32(f32(-1f) * -813f), 1u, func_2(vec3<f32>(-801f, 1000f, 612f))).e));
    let var_2 = Struct_1(abs(global4.d.x), _wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.a, 8773u), min(vec3<u32>(~5491u, global4.b.x, firstTrailingBit(var_1.b.x)), vec3<u32>(func_3(vec3<i32>(0i, -5239i, 2147483647i)).x, countOneBits(global4.b.x), ~24789u))), u_input.c, vec4<i32>(-14022i, _wgslsmith_add_i32(select(28192i, abs(-32888i), var_1.e.x), _wgslsmith_mult_i32(min(global4.c, 0i), global4.a)), -var_1.d.x, u_input.c), select(!global4.e, global4.e, global4.e.x));
    global0 = -1227f;
    let var_3 = var_1;
    global4 = Struct_1(reverseBits(_wgslsmith_mod_i32(func_6(func_5(vec2<bool>(false, true), 258f, 4294967295u, var_3)), u_input.c)), _wgslsmith_mod_vec3_u32(var_3.b, _wgslsmith_mod_vec3_u32(var_3.b, select(vec3<u32>(u_input.a, 1u, 17060u), vec3<u32>(u_input.a, 0u, var_2.b.x), true))), -(var_1.a << (~var_2.b.x % 32u)), -_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(var_3.d, var_3.d) << (vec4<u32>(0u, 4294967295u, var_3.b.x, u_input.a) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(global4.d, vec4<i32>(var_1.c, u_input.c, 21862i, var_3.d.x))), global4.e);
    let var_4 = Struct_1(_wgslsmith_mult_i32(func_5(var_2.e.xw, _wgslsmith_f_op_f32(-1097f - 610f), global4.b.x, var_3).c, var_2.d.x ^ _wgslsmith_div_i32(global4.c, 14270i)) << ((var_3.b.x << (~global4.b.x % 32u)) % 32u), _wgslsmith_sub_vec3_u32(var_2.b, _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, var_2.b.x), vec2<u32>(0u, 72152u)), 1u), ~(~var_1.b))), 2147483647i, -var_1.d, var_3.e);
    global3 = var_1.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(global4.d.yy, var_2.b.x, func_1().b.xz);
}

