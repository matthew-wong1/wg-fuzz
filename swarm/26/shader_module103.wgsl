struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1617f, 503f, -913f, -1355f);

var<private> global1: f32 = -499f;

var<private> global2: array<f32, 21>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<f32> {
    var var_0 = firstTrailingBit(2147483647i) << (~firstTrailingBit(~1u) % 32u);
    global1 = 447f;
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 21u)];
    var var_2 = -_wgslsmith_sub_i32(-u_input.b >> (firstTrailingBit(_wgslsmith_mod_u32(61156u, 13235u)) % 32u), u_input.b >> (~1u % 32u));
    let var_3 = !vec3<bool>(any(vec4<bool>(u_input.b > u_input.a.x, true, any(vec2<bool>(true, false)), true)), false, true);
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(509f, -1255f, 1662f, -388f)))), vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(10635u, 21u)]), _wgslsmith_f_op_f32(-110f * global0.x), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(4488u, 21u)], 1000f), global0.x), any(select(vec4<bool>(false, false, var_3.x, true), vec4<bool>(var_3.x, var_3.x, var_3.x, true), true))))))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = -1646f;
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3())));
    var var_1 = max(max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), abs(select(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, 46776u, 1u), ~vec4<u32>(4734u, 0u, 1u, 19224u)), vec4<bool>(u_input.a.x > 12358i, true, all(vec2<bool>(true, false)), true))));
    var var_2 = -_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(0i, -1i, -28912i, -7864i), countOneBits(vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, -1i)), false), select(_wgslsmith_mult_vec4_i32(vec4<i32>(9059i, u_input.a.x, u_input.a.x, -25360i), vec4<i32>(-12779i, u_input.b, u_input.a.x, u_input.a.x)), vec4<i32>(2147483647i, u_input.b, u_input.b, -66936i) ^ vec4<i32>(u_input.a.x, u_input.b, 1i, u_input.a.x), true)), reverseBits(-select(vec4<i32>(u_input.a.x, u_input.a.x, -1i, 2147483647i), vec4<i32>(u_input.b, u_input.a.x, u_input.b, u_input.b), true)));
    var_1 = _wgslsmith_sub_vec4_u32(select(_wgslsmith_mod_vec4_u32(~(vec4<u32>(var_1.x, 4294967295u, 0u, 0u) | vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<u32>(53929u, var_1.x ^ 80341u, ~60696u, 11297u)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 1u, var_1.x, var_1.x), vec4<u32>(1u, var_1.x, 5439u, var_1.x))), vec4<bool>(true, true, true, true)), vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.wy, select(vec2<u32>(4294967295u, 3930u), var_1.xz, vec2<bool>(false, false))), ~var_1.x & _wgslsmith_mult_u32(4294967295u, var_1.x), abs(0u) >> ((var_1.x >> (46646u % 32u)) % 32u), var_1.x) >> (vec4<u32>(~0u, reverseBits(25917u), _wgslsmith_dot_vec4_u32(~vec4<u32>(35643u, 87449u, 45223u, var_1.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_1.x, 0u, var_1.x), vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x))), var_1.x) % vec4<u32>(32u)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_1.x, 21u)], -142f, global0.x, 1361f) * vec4<f32>(1163f, 1660f, 129f, global0.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, 503f, -449f, 1000f))), vec4<bool>(true, false, false, false))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_0.x, var_0, var_0))))));
}

fn func_1() -> i32 {
    var var_0 = u_input.a.xz;
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.ww * global0.zx) * global0.wz));
    global1 = global0.x;
    global0 = _wgslsmith_f_op_vec4_f32(trunc(func_2(_wgslsmith_f_op_vec2_f32(floor(var_1.a.zy))).a));
    global2 = array<f32, 21>();
    return firstTrailingBit(-16289i);
}

fn func_4(arg_0: i32) -> vec4<bool> {
    var var_0 = Struct_2(vec2<f32>(global0.x, 1968f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-103f * -521f) + _wgslsmith_f_op_f32(157f + 1329f)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(240f * global2[_wgslsmith_index_u32(31770u, 21u)]), _wgslsmith_f_op_f32(abs(1145f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-114f)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 21u)] * global2[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_f_op_f32(-817f + -1412f)))), firstLeadingBit(-(u_input.a.x >> (1u % 32u))) << (reverseBits(3359u) % 32u), 4294967295u, Struct_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec4_f32(func_3()).zxy, _wgslsmith_f_op_vec3_f32(floor(global0.wwx))))));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.d, 21u)]), _wgslsmith_f_op_f32(trunc(var_0.e.b.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.yx))))), _wgslsmith_f_op_vec2_f32(trunc(var_0.b.b.xx)), !all(select(vec3<bool>(var_0.e.a, var_0.e.a, var_0.b.a), vec3<bool>(var_0.b.a, var_0.b.a, true), var_0.e.a)))), var_0.e, ~0i, 0u, Struct_1(all(vec4<bool>(true, var_0.d != var_0.d, true, !var_0.e.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, global2[_wgslsmith_index_u32(24792u, 21u)])), global0.x, -614f))));
    global1 = -1662f;
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 21u)] * 688f))), -168f), var_0.e, i32(-1i) * -2147483647i, 28645u, Struct_1(!all(vec4<bool>(false, var_0.b.a, var_0.b.a, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.b - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1868f, global0.x, 823f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.b)))));
    let var_2 = var_1;
    return select(vec4<bool>(var_2.e.a, _wgslsmith_sub_i32(i32(-1i) * -34148i, min(-6457i, -4194i)) <= (7649i ^ var_1.c), all(vec4<bool>(!var_0.e.a, all(vec3<bool>(true, var_1.e.a, var_2.b.a)), var_2.b.a, !var_2.e.a)), true), select(select(!select(vec4<bool>(false, true, var_1.b.a, var_2.e.a), vec4<bool>(var_2.b.a, true, false, true), true), !(!vec4<bool>(false, var_1.e.a, true, false)), select(vec4<bool>(false, true, var_1.e.a, true), vec4<bool>(var_2.e.a, false, var_2.b.a, true), !vec4<bool>(false, var_2.e.a, true, var_2.b.a))), select(vec4<bool>(false, all(vec2<bool>(false, var_0.b.a)), var_2.d >= 30428u, true), select(vec4<bool>(var_1.e.a, false, var_2.b.a, false), vec4<bool>(true, false, var_0.b.a, var_1.b.a), !vec4<bool>(var_1.b.a, true, true, true)), !any(vec2<bool>(false, true))), any(vec4<bool>(any(vec4<bool>(true, var_0.e.a, false, true)), true, false, true))), false);
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: i32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(0u, 1u)), 21u)], global2[_wgslsmith_index_u32(78004u, 21u)]));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(global0.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(410f, global2[_wgslsmith_index_u32(81269u, 21u)]) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global2[_wgslsmith_index_u32(45686u, 21u)]) - vec2<f32>(global0.x, global2[_wgslsmith_index_u32(1u, 21u)])))), true)), Struct_1(true, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.www), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(14748u, 21u)], global0.x, 1512f) + global0.xzy))))), ~_wgslsmith_dot_vec3_i32(u_input.a, select(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), u_input.a, select(false, arg_0.x, arg_1))), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), vec3<u32>(1u, 1u, 1u)), Struct_1(false, vec3<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(~68461u, 21u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 574f)), global2[_wgslsmith_index_u32(~5406u, 21u)])));
    var var_2 = arg_0.x;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(31583u, 21u)]) - _wgslsmith_f_op_f32(-global0.x))) * global0.x), min(vec3<i32>(-1i, 0i, u_input.a.x), u_input.a));
    var_2 = !(_wgslsmith_add_i32(-u_input.b, -(~(-1i))) == ~_wgslsmith_add_i32(-arg_2, -11554i));
    return Struct_5(select(true, arg_0.x, true), var_1.b, var_1.b.b.zx, vec4<bool>(any(arg_0.zx), arg_1, false, all(select(select(arg_0.yw, arg_0.zy, vec2<bool>(false, arg_1)), vec2<bool>(false, arg_0.x), arg_1 && var_1.e.a))), max(countOneBits(vec3<u32>(88347u, ~24996u, _wgslsmith_dot_vec3_u32(vec3<u32>(14865u, var_1.d, var_1.d), vec3<u32>(1739u, var_1.d, 0u)))), abs(vec3<u32>(~8102u, var_1.d, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.d, 17137u), vec3<u32>(var_1.d, 3601u, var_1.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global2 = array<f32, 21>();
    let var_1 = Struct_1(-593f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 21u)]))) * global2[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-966f, -313f, global0.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -392f, 941f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1278f, 433f) - vec3<f32>(global0.x, -2117f, -1475f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_1.b);
    let var_3 = func_5(func_4(_wgslsmith_mod_i32(func_1(), 58793i) | u_input.a.x), var_1.a, u_input.b);
    global2 = array<f32, 21>();
    var var_4 = u_input.b;
    global1 = 297f;
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(4294967295u | var_3.e.x, reverseBits(var_3.e.x))), 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * global0.x)) - 1510f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-704f - global2[_wgslsmith_index_u32(var_3.e.x, 21u)])) - _wgslsmith_f_op_f32(f32(-1f) * -187f)), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-var_3.c.x))), vec4<f32>(-1792f, _wgslsmith_f_op_f32(-1f), var_2.x, -1125f));
    let x = u_input.a;
    s_output = StorageBuffer(6485u, ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(47737u, 61735u, var_3.e.x, 9106u), vec4<u32>(1u, 2601u, 4294967295u, var_3.e.x)) ^ firstTrailingBit(vec4<u32>(46296u, 0u, 0u, var_3.e.x)), ~vec4<u32>(4294967295u, var_3.e.x, var_3.e.x, var_3.e.x) >> ((vec4<u32>(var_3.e.x, var_3.e.x, var_3.e.x, 28422u) & vec4<u32>(var_3.e.x, 4294967295u, var_3.e.x, var_3.e.x)) % vec4<u32>(32u)), select(~vec4<u32>(28758u, var_3.e.x, var_3.e.x, var_3.e.x), vec4<u32>(var_3.e.x, var_3.e.x, 4294967295u, 13950u), vec4<bool>(true, var_3.b.a, false, true))), _wgslsmith_div_i32(~countOneBits(-1717i) | _wgslsmith_add_i32(-u_input.b, 19186i), _wgslsmith_sub_i32(u_input.b, 52606i)), vec3<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.b, 28674i, u_input.a.x, -1i), vec4<i32>(u_input.b, u_input.b, 80377i, 2147483647i)) << (select(vec4<u32>(var_3.e.x, var_3.e.x, var_3.e.x, 0u), vec4<u32>(var_3.e.x, 4294967295u, var_3.e.x, var_3.e.x), var_3.d) % vec4<u32>(32u)), select(vec4<i32>(-15393i, 39554i, u_input.b, u_input.b) & vec4<i32>(-69900i, u_input.a.x, u_input.a.x, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x), vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x)), var_1.a == var_1.a)), _wgslsmith_div_i32(-2147483647i, u_input.a.x), u_input.a.x), -885f);
}

