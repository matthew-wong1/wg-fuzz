struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(1u, 4294967295u, 26200u, 14123u, 31634u, 108336u, 53564u, 1u, 1u, 63048u, 2239u, 41650u, 58630u, 4294967295u, 31553u, 0u, 29755u, 65024u, 52638u);

var<private> global1: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(0u, 76226u, 5096u, 4294967295u), vec4<u32>(85464u, 10901u, 0u, 21640u), vec4<u32>(19837u, 24025u, 4294967295u, 0u), vec4<u32>(40501u, 0u, 72337u, 26035u), vec4<u32>(0u, 4294967295u, 66566u, 58188u), vec4<u32>(4294967295u, 0u, 28437u, 2682u), vec4<u32>(16602u, 41787u, 0u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(8793u, 4294967295u, 51729u, 31641u), vec4<u32>(1u, 48757u, 1u, 66577u), vec4<u32>(52186u, 1u, 0u, 64128u), vec4<u32>(0u, 19041u, 70255u, 0u), vec4<u32>(0u, 1u, 28864u, 4294967295u), vec4<u32>(23918u, 1u, 56041u, 67986u), vec4<u32>(35351u, 13465u, 20577u, 63787u), vec4<u32>(4294967295u, 4294967295u, 62199u, 26725u), vec4<u32>(26061u, 1u, 66133u, 32218u));

var<private> global2: vec4<f32> = vec4<f32>(-782f, 1610f, -1326f, 1207f);

var<private> global3: Struct_5 = Struct_5(-15890i, vec3<bool>(false, true, true), 0u, 0u);

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> vec4<f32> {
    let var_0 = true;
    let var_1 = -675f;
    var var_2 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(~(vec4<i32>(-1i, 1i, -2147483647i, global4.c) & vec4<i32>(1i, -2147483647i, -31284i, global4.c)), min(reverseBits(vec4<i32>(global4.c, 0i, global4.c, arg_0.c)), -vec4<i32>(arg_0.c, 0i, arg_0.c, global3.a))), vec4<i32>(arg_0.c, i32(-1i) * -global3.a, abs(40948i), global3.a), vec4<i32>(1i, abs(~global4.c), -_wgslsmith_sub_i32(-10306i, arg_0.c), 1i));
    let var_3 = u_input.a.wyx;
    global0 = array<u32, 19>();
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a, arg_1, -1339f, 740f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, var_1, 686f, var_1) + vec4<f32>(1789f, arg_1, 239f, arg_0.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(455f, 622f, 599f, -503f) * vec4<f32>(var_1, -1372f, global4.a, global4.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_0.a, global4.a, -537f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(861f, -1393f, -1048f, var_1)), any(arg_0.b))))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: i32) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(_wgslsmith_f_op_f32(step(-325f, global4.a)), global4.b, global4.c >> (u_input.a.x % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -1205f), all(!vec4<bool>(global4.b.x, false, global4.b.x, global4.b.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(454f, global4.b, arg_2), global4.a, global4.b.x)), vec4<f32>(-1000f, global4.a, global4.a, 1732f), select(vec4<bool>(global3.b.x, false, true, global3.b.x), vec4<bool>(global3.b.x, global4.b.x, true, true), global4.b.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.a, arg_0, arg_0, -1806f)))))));
    return Struct_2(_wgslsmith_f_op_f32(-arg_0), global4.b, global4.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = -vec4<i32>(~func_2(_wgslsmith_f_op_f32(max(132f, global4.a)), u_input.a, 16293i >> (1u % 32u)).c, -1i, global4.c, countOneBits(_wgslsmith_div_i32(arg_0.c, -arg_0.c)));
    global4 = arg_0;
    var var_1 = vec2<i32>(countOneBits(firstLeadingBit(-global3.a)) >> (0u % 32u), 9114i);
    var var_2 = Struct_1(select(var_0.xwz, var_0.xxy, select(vec3<bool>(true, true, true), vec3<bool>(false, global2.x > 1303f, arg_1.x), func_2(_wgslsmith_f_op_f32(select(581f, 357f, arg_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, global3.d, 4294967295u), vec4<u32>(1u, u_input.a.x, global0[_wgslsmith_index_u32(global3.d, 19u)], arg_2)), ~arg_0.c).b.zxy)), _wgslsmith_sub_vec3_i32(var_0.zww | vec3<i32>(global3.a & -8845i, _wgslsmith_mod_i32(29323i, -11674i), -70786i), -var_0.yxw), arg_2, max(_wgslsmith_add_vec3_u32(u_input.a.wxz, u_input.a.wxw), _wgslsmith_sub_vec3_u32(u_input.a.xyz, u_input.a.zzw)));
    var var_3 = Struct_4(global2.wwz);
    return Struct_2(-230f, arg_0.b, _wgslsmith_add_i32(var_0.x, 18621i));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = func_4(func_2(750f, ~vec4<u32>(1u >> (u_input.a.x % 32u), _wgslsmith_add_u32(arg_2.x, 4294967295u), ~global3.c, 1u), firstTrailingBit(_wgslsmith_sub_i32(global4.c, i32(-1i) * -2147483647i))), func_2(-370f, vec4<u32>(73266u, ~9008u, 1u, ~26028u), global4.c).b.yw, arg_2.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-832f, _wgslsmith_f_op_vec4_f32(func_3(Struct_2(-464f, arg_1.b, 33922i), 530f, arg_1.b.x)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))) * vec2<f32>(func_2(_wgslsmith_f_op_f32(-global2.x), vec4<u32>(u_input.a.x, global3.c, u_input.a.x, 108128u), _wgslsmith_div_i32(-40316i, arg_0.x)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1111f + 183f) * global4.a))));
    global4 = var_0;
    let var_1 = reverseBits(-var_0.c);
    global4 = func_4(func_2(global4.a, abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 24963u, global3.c, u_input.a.x), u_input.a >> (global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 17u)] % vec4<u32>(32u)), ~vec4<u32>(global0[_wgslsmith_index_u32(arg_2.x, 19u)], 50437u, 0u, 4294967295u))), -(-var_0.c << (~global0[_wgslsmith_index_u32(global3.c, 19u)] % 32u))), !select(func_4(Struct_2(arg_1.a, global4.b, global3.a), !global4.b.xz, u_input.a.x ^ 0u, _wgslsmith_f_op_vec2_f32(global2.yz + global2.zx)).b.zx, select(var_0.b.wx, func_4(arg_1, vec2<bool>(true, global3.b.x), 22910u, global2.zw).b.yw, var_0.b.xz), vec2<bool>(false, true)), 4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.zw + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a, 303f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.yz) + global2.zy)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.zx) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global4.a, 1000f), vec2<f32>(global2.x, -131f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(812f, arg_1.a))))));
    var var_2 = Struct_1(arg_0, _wgslsmith_div_vec3_i32(-(countOneBits(arg_0) | vec3<i32>(var_0.c, 0i, var_0.c)), abs(arg_0)), min(20118u, 73201u), vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(global0[_wgslsmith_index_u32(arg_2.x, 19u)]), ~reverseBits(1u)), _wgslsmith_mult_u32(arg_2.x, arg_2.x), u_input.a.x));
    return Struct_3((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a + 617f) - -1129f) == -1142f) | all(!(!vec4<bool>(true, true, false, global4.b.x))), -(~(~(arg_0.zx ^ arg_0.zx))));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_3(!global3.b.x, _wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(max(global3.a, global3.a)), arg_0.b.x), vec2<i32>(global4.c ^ _wgslsmith_mod_i32(-2147483647i, -40748i), reverseBits(-global3.a))));
    let var_1 = Struct_5(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(global3.a), _wgslsmith_div_i32(-15015i, global4.c), _wgslsmith_add_i32(-2147483647i, arg_0.b.x), 0i), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 22928i, 14870i, arg_0.b.x), vec4<i32>(-14068i, global4.c, var_0.b.x, global4.c)), max(vec4<i32>(var_0.b.x, 27953i, var_0.b.x, 17491i), vec4<i32>(31254i, -9420i, -1955i, -49499i)))) | (global3.a ^ _wgslsmith_div_i32(-45558i, max(0i, var_0.b.x))), global4.b.zyz, _wgslsmith_add_u32(max(37091u, 4294967295u), u_input.a.x & _wgslsmith_clamp_u32(~44596u, ~1u, ~arg_1.x)), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(arg_1.xy << (vec2<u32>(36280u, global3.d) % vec2<u32>(32u)), vec2<u32>(4294967295u, 30280u) | vec2<u32>(4294967295u, arg_1.x)), ~(~vec2<u32>(61283u, global3.d)) & arg_1.xx));
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~27338u, min(3515u, arg_1.x)), arg_1.x, global0[_wgslsmith_index_u32(~1u, 19u)]), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.xxx, u_input.a.zww), abs(u_input.a.ywx)) & (reverseBits(arg_1) & ~u_input.a.wxw)) ^ vec3<u32>(~1u, abs(reverseBits(abs(var_1.d))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 1u, max(global0[_wgslsmith_index_u32(arg_1.x, 19u)], global3.d)), ~(~4294967295u)), 19u)]);
    let var_3 = Struct_2(1073f, global4.b, arg_0.b.x ^ firstTrailingBit(-_wgslsmith_mult_i32(13211i, arg_0.b.x)));
    global4 = var_3;
    return Struct_4(_wgslsmith_f_op_vec3_f32(ceil(global2.xyx)));
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: i32) -> Struct_5 {
    global3 = Struct_5(_wgslsmith_dot_vec4_i32(~max(abs(vec4<i32>(arg_2, arg_2, 1012i, 1i)), abs(vec4<i32>(global3.a, 24528i, -16549i, 1i))), vec4<i32>(global3.a | global4.c, _wgslsmith_div_i32(1i, func_4(Struct_2(2196f, global4.b, global4.c), global4.b.xz, 0u, arg_1.a.yy).c), 0i, 2147483647i)), func_4(Struct_2(_wgslsmith_f_op_f32(-287f * _wgslsmith_f_op_f32(step(-786f, global4.a))), vec4<bool>(select(false, global4.b.x, false), true, global4.b.x, global4.b.x), -2147483647i), vec2<bool>(global4.b.x, true), 4294967295u, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(-827f)), 619f)))).b.yzw, ~54568u, 1u);
    global2 = _wgslsmith_div_vec4_f32(vec4<f32>(-1554f, _wgslsmith_f_op_f32(-535f + _wgslsmith_f_op_f32(1075f - _wgslsmith_f_op_f32(-global2.x))), global2.x, 1000f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, arg_1.a.x, arg_1.a.x, global2.x)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, global2.x, -566f, global2.x), vec4<f32>(global4.a, -558f, -152f, arg_1.a.x))), vec4<f32>(_wgslsmith_f_op_f32(trunc(870f)), 2098f, _wgslsmith_f_op_f32(-global2.x), arg_1.a.x), vec4<bool>(!global3.b.x, false, true | global4.b.x, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1000f, global2.x, -1408f))), !global4.b)));
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1144f, arg_1.a.x, global4.a, global4.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, global2.x, global4.a, -441f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(950f, arg_1.a.x, -1051f, 419f)) + vec4<f32>(1773f, arg_1.a.x, -259f, global4.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, global2.x, -1312f)))));
    var var_2 = true;
    return Struct_5(i32(-1i) * -global3.a, vec3<bool>(global4.b.x, true, true), global3.c, _wgslsmith_dot_vec3_u32(reverseBits(firstLeadingBit(u_input.a.zww)), u_input.a.wzx << (_wgslsmith_add_vec3_u32(vec3<u32>(global3.d, global3.c, 5665u), vec3<u32>(0u, global0[_wgslsmith_index_u32(arg_0.x, 19u)], global3.c)) % vec3<u32>(32u))) ^ _wgslsmith_div_u32(~10302u, arg_0.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global4.a, -1251f, global4.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 266f, 1000f, -902f) + vec4<f32>(global4.a, global2.x, 1192f, global4.a))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, global4.a, global3.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global4.a, global2.x))), _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(global4.a - global2.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2045f, _wgslsmith_f_op_f32(min(global2.x, global2.x)), _wgslsmith_div_f32(-1000f, global4.a), _wgslsmith_f_op_f32(select(144f, global4.a, global4.b.x))))));
    global0 = array<u32, 19>();
    global4 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -593f), vec4<bool>(select(true, true, true) || false, ~(~(-2147483647i)) > _wgslsmith_sub_i32(global4.c, 0i), true, !global3.b.x), 1i);
    let var_0 = vec2<f32>(-1494f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -320f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-814f - _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_div_f32(global4.a, _wgslsmith_f_op_f32(-484f - -675f))))));
    let var_1 = func_7(vec2<u32>(53113u, ~min(4294967295u, global3.c)) >> (arg_0 % vec2<u32>(32u)), func_6(func_5(-(arg_1.b << (vec3<u32>(arg_0.x, arg_1.d.x, u_input.a.x) % vec3<u32>(32u))), func_4(func_2(1000f, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global4.c), !global4.b.xz, global3.d << (16138u % 32u), _wgslsmith_div_vec2_f32(global2.xw, global2.yz)), ~vec4<u32>(global3.c, 9436u, 4294967295u, arg_1.d.x)), u_input.a.wyy), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global4.c, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.x, global3.a, 2147483647i, 2147483647i), vec4<i32>(-39215i, -50740i, arg_1.a.x, 2147483647i)), _wgslsmith_clamp_i32(0i, -2147483647i, arg_1.b.x), global4.c)), reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-26332i, 1i, arg_1.b.x, global4.c), vec4<i32>(14362i, global3.a, global4.c, global3.a)), vec4<i32>(global3.a, -1i, global3.a, global3.a)))));
    return (var_1.c ^ 1u) >> (_wgslsmith_mult_u32(~(var_1.d | global3.d), 4294967295u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 19>();
    var var_0 = global3.a >> (_wgslsmith_dot_vec2_u32(~(u_input.a.xw >> (vec2<u32>(1u, global0[_wgslsmith_index_u32(65792u, 19u)]) % vec2<u32>(32u))), ~(~abs(vec2<u32>(4294967295u, 5595u)))) % 32u);
    let var_1 = ~vec2<u32>(abs(4294967295u), func_1(reverseBits(vec2<u32>(57731u, 0u)), Struct_1(vec3<i32>(global4.c, 1i, global3.a), vec3<i32>(global3.a, 6389i, global3.a), global3.d, u_input.a.xww))) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global3.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61122u, 19u)], 19u)]), reverseBits(15154u)), u_input.a.zy), u_input.a.wz) % vec2<u32>(32u));
    global1 = array<vec4<u32>, 17>();
    global0 = array<u32, 19>();
    var var_2 = Struct_5(1i, global3.b, min(~global0[_wgslsmith_index_u32(~func_1(vec2<u32>(global3.c, u_input.a.x), Struct_1(vec3<i32>(global3.a, 2147483647i, global3.a), vec3<i32>(-15662i, 253i, global3.a), global0[_wgslsmith_index_u32(var_1.x, 19u)], vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))), 19u)], 86774u), max(u_input.a.x, ~1u) | _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(1u), firstTrailingBit(u_input.a.x), func_1(var_1, Struct_1(vec3<i32>(global4.c, 2147483647i, 0i), vec3<i32>(global4.c, 0i, global3.a), global3.d, u_input.a.yxz)), global0[_wgslsmith_index_u32(51574u, 19u)]), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(23288u, 19u)]), vec4<u32>(4294967295u, 15123u, u_input.a.x, global3.d), vec4<u32>(24942u, 0u, var_1.x, global0[_wgslsmith_index_u32(var_1.x, 19u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.d);
}

