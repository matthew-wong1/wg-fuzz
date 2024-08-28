struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(2419i, -1i, 1i, -1i, i32(-2147483648), 3983i, 15876i, -15947i, -20804i, i32(-2147483648), -46697i, -7832i, 11578i, 35198i, -1i);

var<private> global1: vec4<bool>;

var<private> global2: array<u32, 9> = array<u32, 9>(0u, 41512u, 0u, 0u, 19300u, 1u, 35821u, 0u, 1u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: u32, arg_3: vec3<i32>) -> u32 {
    var var_0 = Struct_2(vec4<f32>(-559f, -937f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1693f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-682f)), -515f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-804f + _wgslsmith_f_op_f32(692f * -2196f)) + 1466f)), (i32(-1i) * -37093i) <= abs(_wgslsmith_dot_vec3_i32(-vec3<i32>(-42100i, arg_0.x, global0[_wgslsmith_index_u32(20732u, 15u)]), reverseBits(vec3<i32>(-16298i, 1i, 7495i)))));
    let var_1 = u_input.b;
    let var_2 = ~(-(~vec4<i32>(arg_3.x, arg_1, arg_1 << (0u % 32u), 7067i)));
    global1 = !select(vec4<bool>(true, !(true != var_0.b), any(global1.zy), -324f < _wgslsmith_f_op_f32(var_0.a.x - 1105f)), vec4<bool>(36297u > u_input.a.x, var_0.b, true, !(292f <= var_0.a.x)), vec4<bool>(true, true, true, true));
    let var_3 = vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(var_0.b & var_0.b, global1.x), vec2<bool>(!var_0.b, false))), var_0.b);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 4379u, 1u), firstLeadingBit(vec4<u32>(4294967295u, var_1.x, arg_2, arg_2))), vec4<u32>(reverseBits(0u), ~u_input.a.x, 57174u, min(arg_2, 4294967295u))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2[_wgslsmith_index_u32(var_1.x, 9u)], 4294967295u), u_input.b), firstTrailingBit(arg_2), _wgslsmith_mult_u32(arg_2, var_1.x)), ~vec4<u32>(37663u, var_1.x, 4294967295u, 33448u) | ~vec4<u32>(0u, 1u, u_input.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 9u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, u_input.a.x, 125786u, var_1.x), vec4<u32>(u_input.b.x, arg_2, 4294967295u, arg_2))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(1u, 1u), ~1u | max(6471u, arg_2), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2, 10144u, u_input.b.x) >> (vec3<u32>(var_1.x, 1u, 4294967295u) % vec3<u32>(32u)), ~(~vec3<u32>(4294967295u, 4294967295u, arg_2))), ~(var_1.x & ~global2[_wgslsmith_index_u32(23509u, 9u)])));
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(min(arg_0.e, select(firstTrailingBit(arg_0.e), ~arg_0.a, global1.x)), abs(~global0[_wgslsmith_index_u32(firstTrailingBit(18170u), 15u)])), ~1i);
    let var_1 = Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(-global0[_wgslsmith_index_u32(u_input.a.x, 15u)], 1i, arg_0.e), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -2147483647i, var_0.x), countOneBits(vec3<i32>(2147483647i, 2147483647i, global0[_wgslsmith_index_u32(arg_0.d.x, 15u)])), vec3<i32>(2147483647i, arg_0.a, arg_0.e) >> (u_input.b % vec3<u32>(32u)))), firstLeadingBit(vec3<u32>(48215u, 4294967295u, 4294967295u)), _wgslsmith_f_op_f32(-arg_0.c), abs(vec4<u32>(_wgslsmith_add_u32(arg_0.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 9u)]), max(99537u, _wgslsmith_mult_u32(9703u, arg_0.d.x)), _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], firstLeadingBit(4294967295u)), ~global2[_wgslsmith_index_u32(~1u, 9u)])), global0[_wgslsmith_index_u32(reverseBits(~18243u), 15u)]);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(864f - arg_0.c), _wgslsmith_f_op_f32(f32(-1f) * -899f), var_1.c, arg_0.c), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1049f, -1507f, 509f, -310f) - vec4<f32>(1328f, 250f, 1490f, -429f))))))), false);
    let var_3 = Struct_2(vec4<f32>(var_2.a.x, var_1.c, arg_0.c, -1424f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.c)) * arg_0.c) != arg_0.c);
    var var_4 = arg_0;
    return global0[_wgslsmith_index_u32(var_4.b.x, 15u)];
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<u32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_1(func_4(Struct_1(2147483647i, vec3<u32>(func_3(vec2<i32>(1604i, global0[_wgslsmith_index_u32(arg_2.x, 15u)]), -51158i, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], 9u)], vec3<i32>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(arg_0.x, 15u)], 1i)), 22616u, arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-539f))), ~(~vec4<u32>(arg_2.x, 0u, arg_1, global2[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_mod_i32(15863i, -2147483647i >> (arg_1 % 32u)))), _wgslsmith_mult_vec3_u32(min(abs(~vec3<u32>(arg_2.x, arg_1, 43827u)), _wgslsmith_sub_vec3_u32(~u_input.b, vec3<u32>(u_input.b.x, 36106u, arg_2.x))), arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1193f * -930f)), _wgslsmith_f_op_f32(520f - _wgslsmith_f_op_f32(sign(-749f)))))), vec4<u32>(~(~4294967295u), countOneBits(countOneBits(min(u_input.a.x, 8775u))), min(select(~arg_0.x, ~79672u, global1.x || true), u_input.a.x), arg_1), -2147483647i);
    var var_1 = !global1.ww;
    global1 = vec4<bool>(false, false, false, -731f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c))));
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(1293f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-var_0.c)))), -1319f, 1f, _wgslsmith_f_op_f32(-1203f + _wgslsmith_f_op_f32(min(-1909f, -306f)))), any(select(global1.xy, vec2<bool>(var_1.x, global1.x), vec2<bool>(var_1.x, true))));
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(arg_3.x ^ var_0.e, 1i), _wgslsmith_clamp_i32(-func_4(Struct_1(var_0.a, vec3<u32>(arg_1, var_0.d.x, global2[_wgslsmith_index_u32(arg_2.x, 9u)]), var_0.c, var_0.d, 45091i)), 1i, -1i), var_0.a, -_wgslsmith_add_i32(1i, -19971i << (1u % 32u))), vec4<i32>(-_wgslsmith_div_i32(global0[_wgslsmith_index_u32(arg_0.x, 15u)], 14456i), select(arg_3.x, global0[_wgslsmith_index_u32(~14779u, 15u)], var_0.c != var_0.c), arg_3.x, i32(-1i) * -2147483647i) & (vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(var_0.e, 88022i, arg_3.x, -11235i))));
    return -2321f;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = global1.wyz;
    let var_1 = Struct_1(_wgslsmith_div_i32((firstTrailingBit(17779i) & (i32(-1i) * -25267i)) | global0[_wgslsmith_index_u32(0u, 15u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-16442i, 1i, global0[_wgslsmith_index_u32(1u, 15u)]), select(_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], -17489i, global0[_wgslsmith_index_u32(1u, 15u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], -4452i, -2081i)), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], -22532i, global0[_wgslsmith_index_u32(41812u, 15u)]) & vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)]), select(vec3<bool>(true, true, global1.x), global1.wwx, true)))), ~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, 1u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53641u, 9u)], 9u)]), u_input.b) << (~u_input.b % vec3<u32>(32u))), _wgslsmith_f_op_f32(2345f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-254f * _wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_sub_vec4_u32(select(_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, 41646u, 1u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 9u)], 4061u, 1u, 59021u), vec4<u32>(u_input.a.x, 0u, global2[_wgslsmith_index_u32(12448u, 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)]))), max(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 9u)], 9u)], global2[_wgslsmith_index_u32(18091u, 9u)], 1u, 7585u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], global2[_wgslsmith_index_u32(80494u, 9u)], u_input.b.x, 1u)), true), vec4<u32>(min(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(87576u, 9u)]), u_input.a.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], 9u)], 9u)], 9u)], 26611u, 4294967295u, 51424u)), vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(u_input.a.x, 9u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46432u, 9u)], 9u)])), 1u)), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]);
    let var_2 = var_1;
    global0 = array<i32, 15>();
    let var_3 = Struct_2(vec4<f32>(var_2.c, var_1.c, var_1.c, 781f), var_0.x);
    return var_3;
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    global1 = !vec4<bool>(true, global1.x, true, all(select(select(global1.zw, global1.zx, false), vec2<bool>(true, global1.x), vec2<bool>(false, true))));
    let var_0 = arg_0;
    var var_1 = ~vec4<u32>(u_input.a.x, abs(0u), 32447u, max(76834u, max(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54166u, 9u)], 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)], u_input.a.x), firstTrailingBit(global2[_wgslsmith_index_u32(3641u, 9u)]))));
    var var_2 = func_5(vec4<f32>(_wgslsmith_div_f32(-421f, var_0.a.x), arg_0.a.x, _wgslsmith_f_op_f32(min(452f, _wgslsmith_f_op_f32(func_2(vec2<u32>(4294967295u, 1u), _wgslsmith_div_u32(u_input.a.x, 1u), vec3<u32>(0u, 23638u, global2[_wgslsmith_index_u32(0u, 9u)]) | vec3<u32>(1u, var_1.x, u_input.b.x), vec3<i32>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)]) | vec3<i32>(global0[_wgslsmith_index_u32(17955u, 15u)], global0[_wgslsmith_index_u32(6072u, 15u)], -2147483647i))))), _wgslsmith_f_op_f32(func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, var_1.x) << (var_1.xx % vec2<u32>(32u)), ~vec2<u32>(9093u, 1u)), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(max(75110u, global2[_wgslsmith_index_u32(0u, 9u)]), 9u)], abs(11399u)), reverseBits(vec3<u32>(var_1.x, 0u, 0u)), min(vec3<i32>(global0[_wgslsmith_index_u32(0u, 15u)], 53598i, -15471i), vec3<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 15u)], 2147483647i)) ^ ~vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 15u)], global0[_wgslsmith_index_u32(var_1.x, 15u)])))), arg_0.a);
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-384f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * -342f)) * _wgslsmith_f_op_f32(abs(-1562f))))));
    return StorageBuffer(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], abs(firstTrailingBit(global0[_wgslsmith_index_u32(32037u, 15u)]) >> (1u % 32u))), countOneBits(firstLeadingBit(min(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(44869u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), vec3<i32>(-22008i, 0i, global0[_wgslsmith_index_u32(var_1.x, 15u)]))) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.x, var_1.x, var_1.x), var_1.wzx | vec3<u32>(var_1.x, u_input.b.x, 4741u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, 47270u), u_input.b)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * var_3)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))), 42279u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2213f * -977f), 2164f), _wgslsmith_f_op_f32(select(-501f, _wgslsmith_f_op_f32(f32(-1f) * -813f), true)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -768f)), _wgslsmith_f_op_f32(trunc(928f))))), all(!select(!global1.ywx, !vec3<bool>(false, global1.x, false), global1.x)));
    let x = u_input.a;
    s_output = func_1(Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-132f, 360f, 685f, 1780f)), var_0.a), (_wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], 4391u) <= 0u) & global1.x));
}

