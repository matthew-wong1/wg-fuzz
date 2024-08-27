struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10>;

var<private> global1: vec4<i32> = vec4<i32>(-1i, -24420i, i32(-2147483648), -1i);

var<private> global2: Struct_1 = Struct_1(1u, 2147483647i);

var<private> global3: array<Struct_3, 2>;

var<private> global4: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(abs(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(17746u, global2.a, global2.a), ~vec3<u32>(81140u, 7310u, 4294967295u), all(global4.zxx)), ~vec3<u32>(4294967295u, arg_3.a, 57591u))), arg_1.c.b);
    let var_1 = abs(_wgslsmith_div_vec4_u32(max(vec4<u32>(42203u, countOneBits(4294967295u), 0u, _wgslsmith_clamp_u32(var_0.a, 0u, arg_2)), reverseBits(select(vec4<u32>(arg_1.c.a, 1u, 1769u, arg_3.a), vec4<u32>(arg_3.a, arg_3.a, 25390u, 23608u), vec4<bool>(true, false, arg_1.b, false)))), vec4<u32>(arg_1.c.a, global2.a >> (countOneBits(var_0.a) % 32u), global2.a, _wgslsmith_mod_u32(~0u, var_0.a))));
    var var_2 = min(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~u_input.d.wxy, countOneBits(vec3<i32>(2147483647i, -13309i, arg_1.c.b))), _wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, u_input.d.x, -2868i), firstLeadingBit(vec3<i32>(12508i, 42951i, global1.x)))), countOneBits(global1.xyz)), ~(_wgslsmith_div_vec3_i32(-vec3<i32>(global2.b, arg_0, -2147483647i), vec3<i32>(25852i, 50970i, 8306i)) | global1.xzx));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(min(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1633f, _wgslsmith_f_op_f32(sign(arg_1.a))) + _wgslsmith_f_op_f32(-arg_1.a)))), select(arg_1.b, arg_1.b, false), arg_1.c);
    var var_4 = vec2<u32>(~(~var_3.c.a), _wgslsmith_div_u32(~firstTrailingBit(~var_3.c.a), 54307u));
    return ~28873u;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    global4 = !arg_0;
    let var_0 = u_input.d.yyx;
    let var_1 = ~80605u;
    var var_2 = _wgslsmith_mult_vec3_u32(~vec3<u32>(global2.a, _wgslsmith_div_u32(func_3(-1i, Struct_2(-368f, true, arg_1), 57479u, arg_1), arg_1.a), 12475u), firstLeadingBit(select(reverseBits(vec3<u32>(63809u, global2.a, global2.a) & vec3<u32>(4294967295u, 0u, 36593u)), abs(vec3<u32>(arg_1.a, 42580u, global2.a)), false != select(false, true, arg_0.x))));
    var_2 = ~(vec3<u32>(1u, _wgslsmith_add_u32(global2.a, 53763u) ^ 1u, var_1) ^ vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 29314u), firstLeadingBit(vec2<u32>(var_1, 0u))), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, 62192u, arg_1.a), firstTrailingBit(vec3<u32>(arg_1.a, global2.a, 4294967295u))), ~4294967295u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-386f))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<u32>(~1u, _wgslsmith_mod_u32(countOneBits(_wgslsmith_sub_u32(min(29340u, global2.a), reverseBits(0u))), min(global2.a, ~max(global2.a, global2.a))));
    let var_1 = global4.wx;
    let var_2 = Struct_2(arg_1, true, Struct_1(func_3(_wgslsmith_div_i32(max(20476i, arg_0.b), 1i), Struct_2(_wgslsmith_f_op_f32(max(-211f, arg_1)), var_1.x, arg_0), 84934u, Struct_1(arg_0.a, arg_0.b)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(global1.x, global2.b)), 22809i)));
    var var_3 = global4.wzz;
    let var_4 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u >> (_wgslsmith_mult_u32(arg_0.a, 1u) % 32u), firstTrailingBit(~0u) & func_3((global2.b ^ u_input.a) << (firstTrailingBit(global2.a) % 32u), Struct_2(_wgslsmith_f_op_f32(min(1535f, var_2.a)), var_3.x, Struct_1(20516u, global1.x)), 0u, Struct_1(104757u, global2.b))), 2u)];
    return Struct_1(~1u, ~(-14302i & global1.x));
}

fn func_1(arg_0: vec4<i32>) -> vec2<u32> {
    global2 = func_4(Struct_1(global2.a, arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, true), Struct_1(global2.a, 4339i))))));
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), -916f, global4.x));
    var var_1 = 0i;
    var var_2 = vec2<i32>(~global2.b, _wgslsmith_div_i32(-(-315i ^ u_input.c.x), ~global2.b));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-575f, 2262f, 1173f, -304f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(649f, 1656f, -741f, 554f) - vec4<f32>(-301f, 341f, -1101f, 339f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(620f, -950f, -149f, 918f))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(130f, -1416f, -1393f, -1101f))), vec4<f32>(-408f, -964f, 256f, 542f)))))));
    return ~(~select(vec2<u32>(~45716u, 0u), vec2<u32>(func_4(Struct_1(global2.a, u_input.d.x), var_3.x).a, global2.a), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 10>();
    var var_0 = Struct_3(((66057u & global2.a) << (_wgslsmith_dot_vec2_u32(func_1(u_input.d), ~vec2<u32>(1u, 4294967295u)) % 32u)) == abs(global2.a), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(655f))), any(vec3<bool>(true, all(global4.wx), true)), func_4(func_4(Struct_1(58808u, global1.x), -1545f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1127f))))), global2.a, func_4(func_4(func_4(Struct_1(global2.a, u_input.d.x), _wgslsmith_div_f32(-963f, -211f)), -1000f), -499f), vec4<u32>(1u, _wgslsmith_clamp_u32(~14487u, global2.a, 1u), func_1(u_input.d).x, ~global2.a) >> (countOneBits(firstLeadingBit(~vec4<u32>(global2.a, global2.a, global2.a, 1u))) % vec4<u32>(32u)));
    global4 = !select(!vec4<bool>(var_0.b.b, true, false, all(global4.ww)), select(vec4<bool>(true, false, false, select(var_0.a, var_0.a, var_0.b.b)), select(!vec4<bool>(false, var_0.b.b, true, global4.x), select(vec4<bool>(true, global4.x, var_0.a, true), vec4<bool>(var_0.b.b, global4.x, var_0.b.b, var_0.a), vec4<bool>(false, global4.x, global4.x, true)), true), all(select(vec4<bool>(var_0.a, true, true, false), vec4<bool>(true, global4.x, var_0.a, false), vec4<bool>(global4.x, false, var_0.b.b, false)))), !global4.x);
    let var_1 = Struct_1(var_0.c, min(-func_4(func_4(Struct_1(var_0.d.a, u_input.b), 484f), _wgslsmith_f_op_f32(step(-1199f, var_0.b.a))).b, 41317i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(!vec4<bool>(true, true, global4.x, true), Struct_1(global2.a, u_input.d.x))))) * _wgslsmith_f_op_f32(round(487f))));
    var var_3 = var_0.e.wxy;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, -(~(-75176i)), vec4<i32>(max(_wgslsmith_add_i32(abs(27454i), ~global1.x), -1i), 1i, var_0.b.c.b, 0i), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -570f), 1042f, _wgslsmith_f_op_f32(var_0.b.a - 488f), _wgslsmith_f_op_f32(-852f + var_2)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a, 781f, 573f, -1028f) + vec4<f32>(var_2, var_2, var_2, 872f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.a)), -932f, _wgslsmith_div_f32(1134f, var_0.b.a), var_2) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, 597f, -1455f, -499f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.a, var_2, 292f, -314f)))))));
}

