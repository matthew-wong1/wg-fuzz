struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: array<bool, 10>;

var<private> global2: vec2<f32> = vec2<f32>(-2055f, 995f);

var<private> global3: array<i32, 15> = array<i32, 15>(-6088i, 29742i, 0i, 9293i, -31951i, i32(-2147483648), 1034i, 1i, 2147483647i, 52333i, 2968i, i32(-2147483648), -25022i, 17612i, -32886i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-arg_2.b.c))))))));
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(89738u), 8u)];
    var var_2 = Struct_2(vec3<f32>(global2.x, arg_2.e.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_1.b.c))))), Struct_1(arg_2.b.a, all(vec3<bool>(true, true, 35240i > u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c.c, -530f) - global2.x) + _wgslsmith_f_op_f32(abs(1513f)))), arg_1.b, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(arg_1.d, arg_1.d), reverseBits(arg_2.d), -1i, u_input.a.x), vec4<i32>(0i, arg_1.d, arg_1.d, -arg_2.d))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(179f, 1999f, 630f))) - arg_2.e), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, global2.x, -316f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.b.c, arg_2.c.c, 935f))), vec3<f32>(var_0, -824f, -836f)))))));
    var var_3 = _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    var var_4 = countOneBits(abs(~firstLeadingBit(countOneBits(vec2<u32>(arg_2.c.a, arg_1.b.a)))));
    return -1i;
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = (func_3(max(vec4<i32>(-50839i, global3[_wgslsmith_index_u32(42184u, 15u)], global3[_wgslsmith_index_u32(arg_0, 15u)], 2147483647i), vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(arg_0, 15u)], 19776i, u_input.a.x)) >> ((vec4<u32>(52337u, arg_0, arg_0, arg_0) << (vec4<u32>(31139u, 1u, 0u, arg_0) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, -1341f)), Struct_1(arg_0, global1[_wgslsmith_index_u32(arg_0, 10u)], global2.x), Struct_1(16u, global1[_wgslsmith_index_u32(6047u, 10u)], global2.x), reverseBits(-1i), vec3<f32>(global2.x, global2.x, 128f)), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(global2.x, global2.x, global2.x)), Struct_1(27153u, global0[_wgslsmith_index_u32(4294967295u, 8u)], -788f), Struct_1(0u, global1[_wgslsmith_index_u32(22031u, 10u)], -442f), 28221i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -294f, global2.x)))) | _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(arg_0 >> (1u % 32u), 15u)], ~_wgslsmith_mult_i32(-2147483647i, u_input.a.x))) & -select(_wgslsmith_clamp_i32(1i >> (arg_0 % 32u), ~(-2147483647i), u_input.a.x), 44214i, all(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 8u)], global1[_wgslsmith_index_u32(arg_0, 10u)], global0[_wgslsmith_index_u32(1494u, 8u)])));
    global3 = array<i32, 15>();
    var var_1 = min(firstTrailingBit(~(~(-u_input.a))), u_input.a);
    global2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-705f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -872f)), _wgslsmith_f_op_f32(161f * _wgslsmith_f_op_f32(sign(-1000f))), !(arg_0 != arg_0)))));
    let var_2 = var_1.x;
    return _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-297f, _wgslsmith_f_op_f32(-global2.x))))), false));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-464f + global2.x)), 165f, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(select(global2.x, -1821f, false)))) + vec3<f32>(1626f, _wgslsmith_f_op_f32(func_2(max(22521u, 1u))), _wgslsmith_f_op_f32(abs(global2.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1077f, global2.x)), -501f, _wgslsmith_f_op_f32(-global2.x))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), global2.x))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(617f, 1641f, -1092f), var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0, var_0))) * _wgslsmith_f_op_vec3_f32(-var_0)), Struct_1(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(6044u, 4294967295u)), vec2<u32>(1u, 1u)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(13249u)))), Struct_1(firstLeadingBit(24157u), global0[_wgslsmith_index_u32(reverseBits(~0u), 8u)] | !global0[_wgslsmith_index_u32(1u, 8u)], 1563f), min(0i, abs(max(1i, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 1579u), 15u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(288f, -1000f, 1283f), vec3<f32>(2337f, -451f, -770f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(883f, global2.x, var_0.x))) * var_0))));
    global1 = array<bool, 10>();
    var var_2 = Struct_1(~_wgslsmith_clamp_u32(min(var_1.b.a, var_1.b.a) >> (1u % 32u), var_1.c.a, ~var_1.b.a), (0u & (0u & var_1.c.a)) != (var_1.c.a << (var_1.b.a % 32u)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-global2.x)));
    var_2 = var_1.b;
    return var_1.b;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global3 = array<i32, 15>();
    var var_0 = ~vec2<i32>(i32(-1i) * -2147483647i, -u_input.a.x);
    var var_1 = firstLeadingBit(65162i);
    let var_2 = vec3<u32>(4294967295u, arg_3.a, abs(arg_3.a));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, arg_3.c, global2.x))))))), func_1(), Struct_1(_wgslsmith_mult_u32(var_2.x, ~5837u), arg_2, _wgslsmith_f_op_f32(trunc(-1867f))), -(u_input.a.x >> (1u % 32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-328f + 635f) + arg_3.c), func_1().c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1785f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-254f, global2.x)) * _wgslsmith_f_op_f32(-global2.x)))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    let var_0 = Struct_1(4294967295u, !global0[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) - -620f))));
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(2025f - 2028f), -1000f, 293f), Struct_1(var_0.a, (var_0.c >= _wgslsmith_f_op_f32(global2.x - 1228f)) | all(select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.a, 10u)], global1[_wgslsmith_index_u32(77921u, 10u)], global1[_wgslsmith_index_u32(56610u, 10u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.a, 8u)], var_0.b), vec3<bool>(true, true, var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c - global2.x), _wgslsmith_f_op_f32(max(var_0.c, -240f)))))), func_4(-u_input.a.x, u_input.a, false, func_1()), _wgslsmith_mod_i32(_wgslsmith_mod_i32(max(global3[_wgslsmith_index_u32(0u, 15u)], -2147483647i), _wgslsmith_div_i32(25389i, -25266i)), u_input.a.x) | global3[_wgslsmith_index_u32(reverseBits(~24989u), 15u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global2.x)), var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_2 = ~(~abs(vec3<u32>(var_1.b.a, var_1.b.a, var_0.a))) ^ (_wgslsmith_mult_vec3_u32(select(~vec3<u32>(47674u, var_1.b.a, 1u), vec3<u32>(4294967295u, var_1.c.a, 46u) | vec3<u32>(var_0.a, var_1.b.a, 4294967295u), select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.a, 10u)], true, var_0.b), vec3<bool>(global0[_wgslsmith_index_u32(var_1.b.a, 8u)], false, global1[_wgslsmith_index_u32(var_1.c.a, 10u)]), var_0.b)), _wgslsmith_add_vec3_u32(vec3<u32>(832u, 1u, 14641u) | vec3<u32>(var_1.c.a, var_0.a, var_1.c.a), vec3<u32>(var_0.a, var_0.a, var_1.c.a))) ^ vec3<u32>(var_0.a, select(9275u | var_0.a, var_0.a, false || global0[_wgslsmith_index_u32(0u, 8u)]), 23920u));
    var var_3 = func_4(global3[_wgslsmith_index_u32(countOneBits(12538u), 15u)], _wgslsmith_mult_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(countOneBits(var_0.a), 15u)], abs(global3[_wgslsmith_index_u32(var_0.a, 15u)]), _wgslsmith_mult_i32(-36747i, global3[_wgslsmith_index_u32(4294967295u, 15u)])), ~vec3<i32>(14876i, -1i, u_input.a.x)) | abs((vec3<i32>(0i, 2147483647i, 2147483647i) >> (vec3<u32>(var_2.x, 1u, var_0.a) % vec3<u32>(32u))) >> (vec3<u32>(var_0.a, var_1.c.a, var_2.x) % vec3<u32>(32u))), any(select(vec2<bool>(true, !global1[_wgslsmith_index_u32(4371u, 10u)]), vec2<bool>(!var_1.c.b, true), !select(vec2<bool>(false, var_0.b), vec2<bool>(global0[_wgslsmith_index_u32(25737u, 8u)], true), vec2<bool>(global0[_wgslsmith_index_u32(var_2.x, 8u)], var_1.b.b)))), var_0);
    var_3 = var_0;
    var_3 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, select(var_3.a, var_1.b.a, global1[_wgslsmith_index_u32(abs(0u), 10u)]), var_0.a, _wgslsmith_mod_u32(~7613u, _wgslsmith_mult_u32(0u, var_0.a))), ~select(~vec4<u32>(1u, var_0.a, var_3.a, var_1.b.a), select(vec4<u32>(93458u, 39463u, 0u, var_1.c.a), vec4<u32>(1u, var_2.x, var_2.x, 4294967295u), var_3.b), 4294967295u <= var_3.a)), !((~var_2.x | 4294967295u) == 0u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + func_4(var_1.d, firstLeadingBit(u_input.a), var_3.b || true, Struct_1(var_0.a, var_0.b, -1000f)).c))));
    let x = u_input.a;
    s_output = StorageBuffer(~(countOneBits(vec4<u32>(4294967295u, 116742u, 49494u, var_3.a)) << ((~vec4<u32>(var_1.b.a, var_0.a, var_3.a, var_2.x) << (reverseBits(vec4<u32>(var_3.a, var_0.a, 0u, var_0.a)) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

