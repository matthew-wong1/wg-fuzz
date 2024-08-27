struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: array<bool, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec3<f32> {
    var var_0 = Struct_4(u_input.b, Struct_1(vec2<f32>(-1280f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1434f, -1824f)), _wgslsmith_f_op_f32(f32(-1f) * -494f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-151f, -1568f, -1060f) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1097f, 1734f, -175f))))), max(~u_input.c.x << (_wgslsmith_dot_vec3_u32(u_input.c.xyx, u_input.c.wyw) % 32u), 4294967295u), ~1u), Struct_1(vec2<f32>(1279f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-992f)))), vec3<f32>(1f, 1f, 1f), u_input.a << (64809u % 32u), ~1u & u_input.a));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(95297u, 3u)], _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(~global0[_wgslsmith_index_u32(0u, 4u)], abs(u_input.b))), u_input.c.yy), var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.b.yx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.b) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.a.x, var_0.b.a.x, var_0.c.a.x), vec3<f32>(var_0.c.b.x, 687f, -833f), false))))), (~global0[_wgslsmith_index_u32(105450u, 4u)] | _wgslsmith_clamp_u32(var_0.b.c, 4294967295u, 50349u)) >> (1u % 32u), 4294967295u), var_0.c);
    global1 = array<bool, 3>();
    let var_2 = Struct_4(var_1.e.c, Struct_1(vec2<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(select(675f, _wgslsmith_f_op_f32(f32(-1f) * -285f), true))), var_0.c.b, ~abs(~global0[_wgslsmith_index_u32(4294967295u, 4u)]), ~_wgslsmith_mod_u32(1u, 1u)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(272f, var_1.d.a.x), _wgslsmith_f_op_f32(sign(var_0.c.b.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1113f, -164f, var_0.b.a.x) - vec3<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(-var_1.c.b.x))), _wgslsmith_add_u32(~23070u, 1u), select(global0[_wgslsmith_index_u32(countOneBits(0u >> (var_0.b.c % 32u)), 4u)], var_1.c.d << ((var_1.e.c | global0[_wgslsmith_index_u32(u_input.c.x, 4u)]) % 32u), all(select(vec4<bool>(false, var_1.a, arg_0, false), vec4<bool>(var_1.a, var_1.a, var_1.a, false), arg_0)))));
    var var_3 = var_2.c.b.x;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.b) - var_2.c.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(360f, 340f, -1216f), var_0.b.b, vec3<bool>(arg_0, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 3u)], arg_0))) - _wgslsmith_div_vec3_f32(var_0.b.b, vec3<f32>(var_1.e.a.x, 336f, var_1.c.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(round(var_1.e.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.d.a.x * var_0.b.b.x))))));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_3 {
    global1 = array<bool, 3>();
    let var_0 = vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(13085i, 2147483647i, -2147483647i), vec3<i32>(2147483647i, 2147483647i, -24809i)), vec3<i32>(reverseBits(13088i), 1i, ~2147483647i));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2235f, 381f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(ceil(-743f)), _wgslsmith_f_op_f32(1326f - 1198f), _wgslsmith_f_op_f32(f32(-1f) * -147f))), select(abs(_wgslsmith_dot_vec3_u32(select(u_input.c.xww, u_input.c.wzy, true), vec3<u32>(3812u, 32507u, 31345u))), select(firstTrailingBit(4294967295u), ~15382u ^ select(u_input.c.x, u_input.c.x, global1[_wgslsmith_index_u32(u_input.a, 3u)]), arg_1), all(vec4<bool>(false, false, true, select(false, true, arg_0)))), global0[_wgslsmith_index_u32(u_input.a, 4u)]);
    global0 = array<u32, 4>();
    let var_2 = -var_0;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(822f, var_1.b.x) * vec2<f32>(199f, 372f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, 181f) - vec2<f32>(var_1.b.x, var_1.b.x)))), var_1.b, u_input.b, 4866u), ~17195u, Struct_2(!arg_1, vec2<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(3754u, u_input.c.x)), ~(~0u)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) - vec2<f32>(-529f, var_1.b.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(true)), _wgslsmith_f_op_vec3_f32(-var_1.b))), global0[_wgslsmith_index_u32(countOneBits(var_1.d), 4u)] ^ global0[_wgslsmith_index_u32(~1u, 4u)], ~u_input.b), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(977f, var_1.b.x) - vec2<f32>(var_1.b.x, var_1.a.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, 391f) * var_1.b.zx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)), 4294967295u, ~(~4294967295u)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a), _wgslsmith_f_op_vec3_f32(select(var_1.b, _wgslsmith_f_op_vec3_f32(var_1.b * var_1.b), !vec3<bool>(true, arg_0, false))), 1104u, select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.d, 50441u), u_input.c.zyz), u_input.a, true))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>) -> f32 {
    global1 = array<bool, 3>();
    var var_0 = func_2(arg_0.a, true);
    let var_1 = 28880u;
    var var_2 = vec3<bool>(false, global1[_wgslsmith_index_u32(var_1, 3u)], all(!(!vec2<bool>(arg_0.a, true))));
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_div_f32(_wgslsmith_div_f32(-1188f, -1984f), var_3.x)), var_0.a.a.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f), var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(-1i);
    global1 = array<bool, 3>();
    global0 = array<u32, 4>();
    var var_1 = Struct_2(any(!vec4<bool>(true, select(global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 3u)]), true, any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], false)))), _wgslsmith_sub_vec2_u32(u_input.c.yy, vec2<u32>(43604u, global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(countOneBits(32692u), 4u)]), 4u)])), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-813f)), _wgslsmith_f_op_f32(1965f + 447f))), vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(false, u_input.c.wx, Struct_1(vec2<f32>(198f, 267f), vec3<f32>(892f, -469f, -1000f), 0u, 23830u), Struct_1(vec2<f32>(635f, 204f), vec3<f32>(-2017f, -905f, -1706f), 4294967295u, u_input.a), Struct_1(vec2<f32>(1182f, 913f), vec3<f32>(3230f, -777f, 1514f), 34157u, 0u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(152f, 1034f, 381f, 1000f) * vec4<f32>(1000f, 2094f, 1509f, 2017f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-111f, -484f)) + -130f), _wgslsmith_f_op_f32(ceil(-296f))), u_input.c.x, ~u_input.b & func_2(true, false).c.e.d), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(398f, -100f) - vec2<f32>(-1290f, -1012f))), func_2((var_0 >> (u_input.a % 32u)) <= var_0, true).a.b, u_input.c.x, u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-655f, 560f) - vec2<f32>(-577f, -1086f)), _wgslsmith_div_vec2_f32(vec2<f32>(-647f, -1276f), vec2<f32>(-1746f, -1257f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1375f)) * -1360f), _wgslsmith_div_f32(-1000f, -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1690f)))), global0[_wgslsmith_index_u32(u_input.c.x, 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9921u, 4u)], 4u)]));
    global1 = array<bool, 3>();
    var var_2 = _wgslsmith_clamp_vec3_u32(u_input.c.xzx, firstTrailingBit(vec3<u32>(u_input.b, ~countOneBits(0u), ~(var_1.d.c << (u_input.b % 32u)))), vec3<u32>(global0[_wgslsmith_index_u32(57885u, 4u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_1.d.c ^ ~7974u, 42622u), 4u)], firstLeadingBit(0u)));
    var var_3 = func_2(!(!(!var_1.a)), any(vec2<bool>(var_1.a, !var_1.a))).c;
    let var_4 = ~var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-var_4 & ~(-1i), vec4<i32>(_wgslsmith_dot_vec2_i32(select(-vec2<i32>(-1i, -45242i), _wgslsmith_mult_vec2_i32(vec2<i32>(-36391i, -2147483647i), vec2<i32>(var_4, 16065i)), select(vec2<bool>(true, true), vec2<bool>(var_1.a, global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<bool>(true, true))), -vec2<i32>(var_4, 1i) | _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_0), vec2<i32>(-7462i, -26002i))), select(-(~37382i), _wgslsmith_dot_vec4_i32(-vec4<i32>(-62398i, var_4, var_4, 15681i), vec4<i32>(var_0, var_0, var_0, var_0)), true), _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_0, var_4, -2147483647i, var_0), vec4<i32>(2147483647i, -1i, var_4, var_4))), vec4<i32>(-var_0, var_4 << (var_2.x % 32u), 1i, ~0i)), -2147483647i), firstLeadingBit(_wgslsmith_clamp_vec2_u32(~(vec2<u32>(var_3.e.d, u_input.c.x) << (var_2.yx % vec2<u32>(32u))), var_2.xx, _wgslsmith_sub_vec2_u32(var_3.b, vec2<u32>(var_3.d.c, 1u)))), _wgslsmith_dot_vec4_i32(countOneBits(~(-vec4<i32>(-16281i, -8632i, -2147483647i, -2147483647i))), _wgslsmith_div_vec4_i32(-(~vec4<i32>(0i, var_4, var_0, -4332i)), max(-vec4<i32>(-1i, var_0, 0i, var_0), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0, -1i, 12694i, var_0), vec4<i32>(0i, var_4, var_4, -9311i))))), 4294967295u);
}

