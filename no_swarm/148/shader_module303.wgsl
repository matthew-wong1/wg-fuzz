struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: array<bool, 14>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 0u, 4294967295u, 0u);

var<private> global2: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_1(23626u, 0u, -42005i, vec2<f32>(-622f, 826f))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_4(Struct_1(0u, 0u, 15040i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-911f, -138f))))));
    var var_1 = var_0.a.d.x;
    var var_2 = global2[_wgslsmith_index_u32(~0u, 1u)];
    global1 = ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(62670u, arg_0.x, var_0.a.b, arg_0.x), firstTrailingBit(select(vec4<u32>(global1.x, global1.x, 6454u, var_0.a.b), vec4<u32>(1u, 124028u, var_2.a.a, 75178u), false))));
    let var_3 = Struct_2(Struct_1(1u, _wgslsmith_div_u32(var_2.a.b, 0u), ~var_2.a.c, vec2<f32>(_wgslsmith_f_op_f32(trunc(1288f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.d.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.d.x - _wgslsmith_div_f32(var_2.a.d.x, var_0.a.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.d.x - _wgslsmith_f_op_f32(exp2(var_0.a.d.x))), _wgslsmith_f_op_f32(1180f - _wgslsmith_f_op_f32(-var_0.a.d.x)))), _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.c, var_0.a.c), vec2<i32>(43954i, -2147483647i)) >> (64469u % 32u), -(var_0.a.c | _wgslsmith_sub_i32(var_2.a.c, -10688i))), reverseBits(-2320i));
    return ~1u;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec3<f32>) -> Struct_2 {
    global1 = _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(arg_2, arg_2)), vec4<u32>(select(u_input.a.x, 13819u, false), _wgslsmith_add_u32(global1.x, u_input.a.x), ~49820u, 32673u), arg_2), arg_2), ~vec4<u32>(global1.x, arg_1.x, arg_1.x, ~abs(arg_1.x)));
    global1 = ~vec4<u32>(global1.x, func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 1u), abs(u_input.a.yz))), ~(~u_input.a.x), 4294967295u);
    global2 = array<Struct_4, 1>();
    global1 = vec4<u32>(_wgslsmith_mult_u32(~arg_1.x, _wgslsmith_mult_u32(u_input.a.x, reverseBits(u_input.a.x))), 8208u, global1.x, 0u);
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1132f, _wgslsmith_f_op_f32(arg_3.x * -148f))), _wgslsmith_f_op_f32(ceil(-1667f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(464f + _wgslsmith_f_op_f32(min(arg_3.x, -1432f)))), _wgslsmith_f_op_f32(597f - _wgslsmith_f_op_f32(sign(1005f)))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-832f * -668f))), 957f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))), 777f));
    return Struct_2(Struct_1(u_input.a.x, ~1u, _wgslsmith_div_i32(reverseBits(firstLeadingBit(-24319i)), -37124i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(var_0.x * -1000f)) * arg_3.yx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1310f, arg_3.x)) + -1164f))), -_wgslsmith_clamp_i32(-2147483647i, 1i, i32(-1i) * -2147483647i), -34197i);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = 10177u;
    var var_1 = _wgslsmith_mult_u32(global1.x, countOneBits(1u));
    var_1 = _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, firstTrailingBit(40929u) ^ _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, global1.yxw), vec3<u32>(0u, u_input.a.x, 0u))));
    global1 = ~vec4<u32>(~(~1u), ~select(42157u, 1u, any(vec4<bool>(false, arg_0, false, global0[_wgslsmith_index_u32(global1.x, 14u)]))), arg_1.a.a, 1u);
    global1 = abs(vec4<u32>(~(~(~arg_1.a.b)), 6245u, arg_1.a.a, _wgslsmith_div_u32(1u, ~(~global1.x))));
    return !(!select(vec3<bool>(arg_0, any(vec2<bool>(true, arg_0)), true), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(24275u, 14u)]), vec3<bool>(arg_0, arg_0, true), true), vec3<bool>(arg_1.b.x <= arg_1.b.x, true, arg_0)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_4(Struct_1(global1.x, firstTrailingBit(arg_1.b), arg_0.a.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_1.d)))))));
    let var_1 = any(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 14u)], !any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 14u)], false, global0[_wgslsmith_index_u32(var_0.a.a, 14u)])), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.a, 1u), 14u)]), !func_4(!global0[_wgslsmith_index_u32(59429u, 14u)], func_2(vec2<bool>(false, false), vec2<u32>(4294967295u, var_0.a.a), vec4<u32>(1u, global1.x, 22066u, 0u), vec3<f32>(arg_1.d.x, -667f, 115f))), !(func_2(vec2<bool>(global0[_wgslsmith_index_u32(arg_1.a, 14u)], false), vec2<u32>(u_input.a.x, 4294967295u), vec4<u32>(3072u, u_input.a.x, 1u, 0u), vec3<f32>(1214f, -1000f, -649f)).a.b < 0u)));
    return func_2(!(!(!select(vec2<bool>(false, var_1), vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 14u)], global0[_wgslsmith_index_u32(20761u, 14u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(29320u, 14u)])))), max(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, arg_1.a), ~(vec2<u32>(global1.x, var_0.a.a) | global1.xy)), reverseBits(~vec2<u32>(global1.x, 47294u))), _wgslsmith_div_vec4_u32(max(_wgslsmith_div_vec4_u32(vec4<u32>(1016u, 117185u, arg_1.a, u_input.a.x) << (vec4<u32>(var_0.a.a, 33936u, 10253u, 26913u) % vec4<u32>(32u)), countOneBits(vec4<u32>(global1.x, global1.x, 36598u, u_input.a.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, global1.x, 49664u), _wgslsmith_sub_vec4_u32(vec4<u32>(21336u, 72641u, 15049u, u_input.a.x), vec4<u32>(4294967295u, global1.x, 1u, global1.x)))), min(~(~vec4<u32>(var_0.a.a, global1.x, global1.x, var_0.a.a)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.b, global1.x, arg_1.b, 1u), vec4<u32>(arg_1.a, u_input.a.x, var_0.a.a, arg_1.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.x, 1972f, 514f) - vec3<f32>(var_0.a.d.x, var_0.a.d.x, arg_1.d.x))))), vec3<f32>(var_0.a.d.x, 653f, _wgslsmith_f_op_f32(f32(-1f) * -434f))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_2) -> u32 {
    var var_0 = countOneBits(arg_3.c);
    let var_1 = func_1(Struct_3(vec4<i32>(reverseBits(-2147483647i), -2147483647i, _wgslsmith_mult_i32(-arg_1.c, firstTrailingBit(-18277i)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c, 1i) ^ vec2<i32>(-1i, arg_3.c), ~vec2<i32>(arg_3.a.c, -28617i)))), func_1(Struct_3(vec4<i32>(-1i, _wgslsmith_add_i32(-37707i, arg_1.c), arg_3.c, -arg_1.c)), Struct_1(arg_1.a.a, arg_0.x, -2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.d * arg_1.a.d))), vec3<i32>(~6615i, _wgslsmith_mod_i32(~2977i, 26207i), arg_1.a.c)).a, _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, _wgslsmith_mod_i32(-45241i, ~arg_3.a.c)), firstLeadingBit(~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.a.c, 2147483647i, arg_1.a.c), vec3<i32>(-14375i, arg_3.c, arg_1.d), vec3<i32>(-1952i, -53852i, -2147483647i))))).a;
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(arg_1.a.a >> (arg_0.x % 32u), select(var_1.b, 0u, false)), 90007u), ~(~(~vec2<u32>(4294967295u, 1u))));
    global2 = array<Struct_4, 1>();
    let var_3 = firstLeadingBit(~_wgslsmith_dot_vec4_u32(arg_0, ~arg_0) & 9809u);
    return _wgslsmith_add_u32(74442u, ~(~var_2.x));
}

fn func_6(arg_0: vec3<u32>, arg_1: u32) -> Struct_2 {
    var var_0 = 2147483647i;
    var var_1 = global1.x;
    global1 = _wgslsmith_add_vec4_u32(~(~abs(vec4<u32>(arg_1, u_input.a.x, global1.x, u_input.a.x)) ^ vec4<u32>(_wgslsmith_div_u32(0u, global1.x), ~0u, func_3(vec2<u32>(u_input.a.x, u_input.a.x)), firstTrailingBit(u_input.a.x))), ~(~firstTrailingBit(~vec4<u32>(u_input.a.x, 22959u, arg_1, 0u))));
    var_0 = 12269i;
    let var_2 = firstLeadingBit(max(-_wgslsmith_mult_vec2_i32(vec2<i32>(-22160i, -11550i), max(vec2<i32>(-1i, -9959i), vec2<i32>(-5563i, -1i))), vec2<i32>(_wgslsmith_mod_i32(~(-1i), func_2(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 14u)], true), u_input.a.xy, vec4<u32>(49777u, u_input.a.x, arg_1, arg_0.x), vec3<f32>(275f, -1390f, -1000f)).d), _wgslsmith_div_i32(_wgslsmith_div_i32(-1i, 1i), firstTrailingBit(20247i)))));
    return Struct_2(Struct_1(arg_0.x, u_input.a.x, (max(var_2.x, var_2.x) ^ var_2.x) & _wgslsmith_div_i32(_wgslsmith_add_i32(var_2.x, 15121i), ~var_2.x), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2224f + -1733f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-127f)) + -916f))), vec2<f32>(353f, 439f), 2147483647i, 37174i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_i32(firstLeadingBit(~(~vec2<i32>(2147483647i, 1i))), vec2<i32>(1i, -13181i));
    var var_1 = func_6(firstTrailingBit(vec3<u32>(func_5(~vec4<u32>(global1.x, global1.x, global1.x, 61728u), Struct_2(Struct_1(u_input.a.x, 4824u, 45408i, vec2<f32>(1312f, 1127f)), vec2<f32>(425f, 1163f), 0i, var_0.x), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 14u)], true), func_1(Struct_3(vec4<i32>(var_0.x, 30352i, var_0.x, 1i)), Struct_1(1u, global1.x, -15382i, vec2<f32>(-169f, -516f)), vec3<i32>(var_0.x, 0i, 78826i))), 1u, ~firstTrailingBit(4294967295u))), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(reverseBits(u_input.a), vec3<u32>(4294967295u, 20003u, u_input.a.x)), ~global1.x, _wgslsmith_dot_vec4_u32((vec4<u32>(u_input.a.x, global1.x, 1u, u_input.a.x) & vec4<u32>(global1.x, 54973u, u_input.a.x, 36684u)) | vec4<u32>(68968u, 1u, 0u, 91225u), ~select(vec4<u32>(global1.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(116696u, 16810u, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(global1.x, 14u)]))));
    var var_2 = vec2<i32>(_wgslsmith_clamp_i32(~_wgslsmith_div_i32(1i, 26673i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.x, -36771i), _wgslsmith_div_vec3_i32(vec3<i32>(-29032i, var_1.d, var_1.d), vec3<i32>(var_0.x, 334i, -21535i))), -31074i) >> ((4294967295u ^ _wgslsmith_add_u32(var_1.a.a ^ 24890u, _wgslsmith_mod_u32(u_input.a.x, 3282u))) % 32u), var_0.x);
    var var_3 = var_1.a.d.x;
    var var_4 = false;
    let var_5 = select(!vec4<bool>(true, !global0[_wgslsmith_index_u32(select(0u, 40239u, global0[_wgslsmith_index_u32(var_1.a.a, 14u)]), 14u)], false, any(select(vec2<bool>(global0[_wgslsmith_index_u32(57206u, 14u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]), vec2<bool>(global0[_wgslsmith_index_u32(16550u, 14u)], global0[_wgslsmith_index_u32(39649u, 14u)])))), select(select(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], true, true, global0[_wgslsmith_index_u32(var_1.a.a, 14u)])), vec4<bool>(all(vec2<bool>(true, global0[_wgslsmith_index_u32(51343u, 14u)])), global0[_wgslsmith_index_u32(48593u, 14u)], func_4(global0[_wgslsmith_index_u32(4294967295u, 14u)], Struct_2(Struct_1(37112u, global1.x, -2147483647i, vec2<f32>(-119f, var_1.b.x)), vec2<f32>(-648f, var_1.b.x), var_1.c, var_0.x)).x, true), true), vec4<bool>(!func_4(global0[_wgslsmith_index_u32(var_1.a.b, 14u)], Struct_2(Struct_1(1u, var_1.a.b, -1i, var_1.b), var_1.b, 23952i, -72900i)).x, func_4(any(vec3<bool>(global0[_wgslsmith_index_u32(114246u, 14u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 14u)])), Struct_2(Struct_1(global1.x, 30230u, var_0.x, var_1.a.d), var_1.b, -25754i, var_2.x)).x, global0[_wgslsmith_index_u32(29025u, 14u)], true), global0[_wgslsmith_index_u32(var_1.a.a, 14u)]), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

