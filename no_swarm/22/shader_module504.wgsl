struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, false, false, false, false, true, false, true, true, true, true, false, true, false, true);

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: bool) -> i32 {
    return u_input.b;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = max(~vec2<u32>(arg_2.c.x, reverseBits(1u)), vec2<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(21083u, 0u), vec2<u32>(arg_0.a, 22315u) << (vec2<u32>(93145u, 1u) % vec2<u32>(32u))), arg_2.b.a << (0u % 32u)));
    var var_1 = arg_2.b;
    let var_2 = Struct_2(_wgslsmith_mult_vec4_i32(select(arg_2.a, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, arg_2.a.x, arg_2.a.x, 21612i), vec4<i32>(arg_1.x, arg_2.a.x, arg_1.x, u_input.b) >> (vec4<u32>(4294967295u, 1u, arg_2.e.a, var_1.a) % vec4<u32>(32u))), !vec4<bool>(false, global0[_wgslsmith_index_u32(162041u, 15u)], global0[_wgslsmith_index_u32(44750u, 15u)], true)), -arg_2.a), Struct_1(arg_2.e.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b))), abs(~vec2<u32>(1u, u_input.a.x)), Struct_1(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_1.a, u_input.c.x, 30779u, var_0.x)) << (var_0.x % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, -223f, -1714f, -893f) - arg_2.e.b))), Struct_1(_wgslsmith_dot_vec4_u32(u_input.a, max(vec4<u32>(var_1.a, 54842u, var_1.a, 23992u), u_input.c)) >> (_wgslsmith_clamp_u32(countOneBits(arg_0.a), arg_0.a, firstTrailingBit(4294967295u)) % 32u), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x), _wgslsmith_f_op_f32(step(var_1.b.x, var_1.b.x)), -1222f, _wgslsmith_f_op_f32(step(arg_0.b.x, 1244f))), _wgslsmith_f_op_vec4_f32(arg_0.b + _wgslsmith_f_op_vec4_f32(-arg_0.b))))));
    var var_3 = arg_2.b;
    global1 = -2887i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.x)));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: vec2<i32>) -> i32 {
    var var_0 = vec3<u32>(arg_0, ~arg_0, 0u);
    var_0 = countOneBits(vec3<u32>(arg_2, 148588u, ~(~arg_0 & _wgslsmith_mod_u32(u_input.c.x, arg_0))));
    let var_1 = u_input.b;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(countOneBits(u_input.c.yz), u_input.a.xw << (_wgslsmith_mult_vec2_u32(u_input.c.ww, vec2<u32>(4294967295u, 3360u)) % vec2<u32>(32u))), ~u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, ~arg_0, 23099u), ~u_input.a.zww)), 15u)];
    let var_3 = _wgslsmith_f_op_f32(max(arg_1, -138f));
    return -935i;
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1751f);
    global1 = -func_4(~(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x) ^ _wgslsmith_dot_vec3_u32(u_input.c.xzy, u_input.a.yxx)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(111504u, vec4<f32>(var_0, 187f, var_0, var_0)), vec3<i32>(u_input.b, -1i, u_input.b), Struct_2(vec4<i32>(u_input.b, 9921i, u_input.b, 0i), Struct_1(40489u, vec4<f32>(797f, var_0, var_0, var_0)), u_input.a.wz, Struct_1(4294967295u, vec4<f32>(1412f, 2529f, var_0, -1276f)), Struct_1(38102u, vec4<f32>(var_0, 317f, var_0, var_0))))) * _wgslsmith_f_op_f32(floor(var_0))), _wgslsmith_f_op_f32(-1000f + 159f))), ~(~18953u), firstLeadingBit(abs(vec2<i32>(u_input.b, 17928i))) & max(_wgslsmith_mod_vec2_i32(vec2<i32>(-34150i, u_input.b), vec2<i32>(-2147483647i, 1i)), vec2<i32>(u_input.b, 0i)));
    var var_1 = Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(19672i, -2147483647i, ~(-11947i), reverseBits(1i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(1i, u_input.b, -1i, 67203i), -vec4<i32>(u_input.b, -4437i, u_input.b, 2147483647i)) & vec4<i32>(-1i, u_input.b | u_input.b, _wgslsmith_mult_i32(-1i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -48932i, 1i), vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b)))), Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -257f), 1976f, var_0, -1160f))), vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c.x, 20442u), 4294967295u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, var_0, -289f, var_0)))))), Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1105f, var_0, -148f, -1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1602f, var_0, var_0, 1000f))))));
    return var_1.b;
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec3_u32(~(u_input.c.xyx ^ _wgslsmith_mod_vec3_u32(vec3<u32>(13814u, 34147u, 4294967295u), u_input.c.wwz)), vec3<u32>(~u_input.c.x, 4294967295u << (arg_3.x % 32u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(31023u, 36890u, 4294967295u, 0u)), ~vec4<u32>(38000u, 1u, arg_3.x, 8895u))));
    let var_1 = select(select(select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(arg_2.a, 15u)]), !select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_2.a, 15u)], false)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)] & false, any(vec4<bool>(global0[_wgslsmith_index_u32(6806u, 15u)], true, false, global0[_wgslsmith_index_u32(1u, 15u)])))), !(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(21736u, 15u)]))), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], global0[_wgslsmith_index_u32(684u, 15u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_3.x, 15u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], true), vec2<bool>(global0[_wgslsmith_index_u32(45162u, 15u)], global0[_wgslsmith_index_u32(9609u, 15u)]), global0[_wgslsmith_index_u32(arg_3.x, 15u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.a, 0u), 15u)]), vec2<bool>(true, false))), select(!select(vec2<bool>(global0[_wgslsmith_index_u32(arg_2.a, 15u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_3.x, 15u)]), global0[_wgslsmith_index_u32(u_input.c.x, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(~(~1u), 15u)], false), !any(vec3<bool>(global0[_wgslsmith_index_u32(arg_2.a, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(arg_2.a, 15u)]))), all(vec2<bool>(all(!vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 15u)])), any(!vec2<bool>(global0[_wgslsmith_index_u32(54195u, 15u)], global0[_wgslsmith_index_u32(arg_2.a, 15u)])))));
    var var_2 = vec4<u32>(_wgslsmith_add_u32(abs(~reverseBits(var_0.x)), select(~max(96398u, var_0.x), 5711u, false)), func_2().a, _wgslsmith_mult_u32(countOneBits(~_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(13757u, var_0.x))), ~_wgslsmith_mult_u32(52986u, max(var_0.x, arg_3.x))), arg_2.a);
    global0 = array<bool, 15>();
    global1 = -1i;
    return !(!(!vec4<bool>(u_input.b < arg_0.x, var_0.x >= u_input.c.x, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(65539u, _wgslsmith_sub_u32(27213u, ~u_input.c.x & ~0u)), vec2<u32>(_wgslsmith_mult_u32(~(~u_input.a.x), 53687u), reverseBits(reverseBits(u_input.a.x))));
    let var_1 = select(func_5(vec3<i32>(-func_1(vec3<bool>(false, true, true), vec4<i32>(-1i, u_input.b, u_input.b, -2147483647i), vec2<i32>(22057i, 2147483647i), global0[_wgslsmith_index_u32(u_input.c.x, 15u)]), ~u_input.b, _wgslsmith_clamp_i32(func_1(vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(var_0, 15u)], false), vec4<i32>(u_input.b, -17455i, 44015i, -2147483647i), vec2<i32>(u_input.b, 1i), global0[_wgslsmith_index_u32(var_0, 15u)]), _wgslsmith_div_i32(-22265i, u_input.b), 1i)), u_input.b, func_2(), _wgslsmith_clamp_vec2_u32(~u_input.c.wz | u_input.a.zx, firstTrailingBit(u_input.a.xy >> (u_input.a.zz % vec2<u32>(32u))), select(vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(4294967295u, u_input.c.x), vec2<bool>(true, true)))), !(!vec4<bool>(true, false, u_input.c.x == 4294967295u, !global0[_wgslsmith_index_u32(1u, 15u)])), !vec4<bool>(u_input.b < ~u_input.b, func_5(~vec3<i32>(u_input.b, u_input.b, u_input.b), u_input.b, Struct_1(41481u, vec4<f32>(-667f, 538f, 606f, -416f)), u_input.a.zy << (vec2<u32>(u_input.a.x, var_0) % vec2<u32>(32u))).x, func_5(_wgslsmith_clamp_vec3_i32(vec3<i32>(-22164i, 1i, u_input.b), vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(2147483647i, 4972i, u_input.b)), _wgslsmith_mult_i32(-1i, 1i), func_2(), u_input.c.wx).x, false));
    var var_2 = !vec3<bool>(var_1.x & true, any(!func_5(vec3<i32>(u_input.b, u_input.b, u_input.b), -47766i, Struct_1(1u, vec4<f32>(202f, 1329f, 584f, -236f)), u_input.c.xx).yz), global0[_wgslsmith_index_u32(~32338u, 15u)]);
    global0 = array<bool, 15>();
    let var_3 = vec2<bool>(false, select((~31788u > firstTrailingBit(4294967295u)) & false, !(true & !global0[_wgslsmith_index_u32(var_0, 15u)]), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(25827u, var_0, var_0, _wgslsmith_mod_u32(~func_2().a, ~_wgslsmith_add_u32(u_input.a.x, 0u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -683f, _wgslsmith_f_op_f32(2154f - -186f)))), ~select(vec2<u32>(1u, u_input.c.x), select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, var_0), u_input.c.wy), u_input.c.xy >> (u_input.a.xx % vec2<u32>(32u)), any(vec3<bool>(var_1.x, var_1.x, false))), true & (var_0 <= var_0)), countOneBits(~(_wgslsmith_add_u32(1u, 30237u) >> (_wgslsmith_dot_vec4_u32(u_input.c, u_input.a) % 32u))), 37636i);
}

