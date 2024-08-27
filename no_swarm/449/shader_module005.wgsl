struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(4294967295u, 1u, 0u, 48352u);

var<private> global1: vec3<u32>;

var<private> global2: vec2<i32> = vec2<i32>(1i, -40206i);

var<private> global3: array<Struct_3, 16>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>) -> u32 {
    let var_0 = Struct_2(~17168u, select(u_input.c, vec4<i32>(u_input.c.x, 2147483647i << (0u % 32u), global2.x, -2147483647i | global2.x) & firstLeadingBit(u_input.c), arg_0.x), true, Struct_1(vec4<bool>(arg_0.x, true, true, select(true, true, true)), arg_0.yx, vec3<u32>(3551u, ~max(28648u, u_input.e), 47781u), reverseBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, global1.x, u_input.b), vec4<u32>(global1.x, global0[_wgslsmith_index_u32(26849u, 4u)], global0[_wgslsmith_index_u32(51193u, 4u)], 2071u)))), _wgslsmith_mult_u32(~84556u, _wgslsmith_mult_u32(102569u, global0[_wgslsmith_index_u32(4294967295u, 4u)])) < global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 10061u, 1u), vec3<u32>(50594u, u_input.e, u_input.b)), 4u)]));
    global1 = var_0.d.c;
    var var_1 = 1f;
    let var_2 = var_0.d;
    var var_3 = _wgslsmith_sub_i32(global2.x, i32(-1i) * -26298i);
    return _wgslsmith_clamp_u32(var_0.a ^ ~global0[_wgslsmith_index_u32(firstTrailingBit(36234u), 4u)], ~0u, var_0.a);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: i32) -> i32 {
    global1 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(firstLeadingBit(arg_1.x), ~abs(arg_0.x)), global0[_wgslsmith_index_u32(arg_0.x, 4u)] ^ ~countOneBits(1u)), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(func_3(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec2<bool>(true, true)), global1.x, countOneBits(17343u), 3404u >> (1u % 32u)), countOneBits(~(~vec4<u32>(0u, u_input.b, 0u, u_input.d)))));
    global2 = select(abs(countOneBits(u_input.c.zw)), ~u_input.c.wy, true);
    global2 = select(select(vec2<i32>(u_input.c.x, 1i) << (~global1.xz % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(u_input.c.zz, select(u_input.c.yy, u_input.c.wy, vec2<bool>(true, false))), abs(0i) >= ~global2.x), u_input.c.zz, !vec2<bool>(all(vec3<bool>(true, true, false)), true)) | vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -2506i), select(vec2<i32>(-65478i, u_input.c.x), vec2<i32>(1i, u_input.c.x), true)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(global2.x, u_input.c.x), ~0i)), u_input.c.x);
    global1 = (~vec3<u32>(u_input.a, arg_0.x, ~10595u) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, arg_1.x, 4294967295u), firstTrailingBit(vec3<u32>(4294967295u, global1.x, arg_0.x))) % vec3<u32>(32u))) >> (vec3<u32>(58759u, ~33522u, select(firstTrailingBit(~u_input.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, arg_1.x, 0u), vec4<u32>(0u, 33566u, arg_1.x, 1u)), all(vec4<bool>(true, true, true, true)))) % vec3<u32>(32u));
    var var_0 = Struct_3(vec2<bool>(!all(vec4<bool>(true, true, false, true)), true), Struct_1(vec4<bool>(true, true, true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), countOneBits(~(vec3<u32>(arg_1.x, 23874u, 35868u) << (vec3<u32>(7680u, 60064u, 49706u) % vec3<u32>(32u)))), countOneBits(~arg_0.x), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1159f - -123f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(976f, 815f) - -1667f)))));
    return -43231i;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_mod_i32(52204i, ~(u_input.c.x | -49087i) ^ max(min(global2.x, arg_2) & 1i, 2147483647i));
    let var_1 = reverseBits(i32(-1i) * -15800i);
    global1 = ~_wgslsmith_mod_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b) >> (arg_0.c % vec3<u32>(32u)), ~vec3<u32>(global0[_wgslsmith_index_u32(35164u, 4u)], 52196u, global1.x))), vec3<u32>(abs(_wgslsmith_dot_vec3_u32(arg_0.c, vec3<u32>(1u, u_input.d, 0u))), countOneBits(~arg_0.d), ~(1u >> (1u % 32u))));
    let var_2 = func_2(~(~global1.zz), _wgslsmith_add_vec2_u32(vec2<u32>(~59870u, u_input.d), min(global1.zy, ~vec2<u32>(arg_0.c.x, global1.x))), global2.x);
    global1 = _wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, 72408u, global1.x), arg_0.c), 0u << (0u % 32u), 1u), _wgslsmith_mult_vec3_u32(~arg_0.c, vec3<u32>(u_input.b, global1.x, arg_0.d))), arg_0.c);
    return i32(-1i) * -func_2(vec2<u32>(u_input.a, u_input.b) << (vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40098u, 4u)], 4u)]) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(select(arg_0.c.xx, arg_0.c.zy, vec2<bool>(true, arg_0.e)), arg_0.c.zz), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true))), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), !vec4<bool>(all(vec4<bool>(false, false, true, false)), true, select(true, false, true), all(vec4<bool>(true, false, true, false))), !(true == all(vec2<bool>(false, false)))), !vec2<bool>(true, !all(vec2<bool>(true, false))), max(_wgslsmith_sub_vec3_u32(firstTrailingBit(~vec3<u32>(83923u, 1u, global1.x)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, global1.x, u_input.b) ^ vec3<u32>(100422u, global0[_wgslsmith_index_u32(u_input.e, 4u)], global0[_wgslsmith_index_u32(46440u, 4u)]), reverseBits(vec3<u32>(42802u, 16837u, 47841u)))), max(vec3<u32>(4294967295u & u_input.d, global1.x, ~global1.x), ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(1624u, 4u)], 54154u))), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~4294967295u, ~25765u, ~4294967295u), 4u)], 4294967295u), true);
    global2 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), ~_wgslsmith_add_vec2_i32(u_input.c.wz, select(u_input.c.yx, u_input.c.zw, false))), ~(~u_input.c.xy));
    global3 = array<Struct_3, 16>();
    global3 = array<Struct_3, 16>();
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(808f, -409f, -795f, -207f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(256f, 626f, 411f, 1718f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -526f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -101f, _wgslsmith_f_op_f32(f32(-1f) * -793f)), select(var_0.a, var_0.a, false & var_0.a.x))))));
    let var_2 = select(!var_0.b, !(!select(vec2<bool>(var_0.b.x, var_0.b.x), vec2<bool>(false, var_0.b.x), var_0.a.xw)), false);
    let var_3 = Struct_2(0u, ~vec4<i32>(_wgslsmith_mod_i32(-1921i, u_input.c.x), -16656i, 2147483647i, _wgslsmith_mult_i32(func_1(Struct_1(vec4<bool>(var_0.e, var_2.x, var_0.b.x, var_2.x), var_2, var_0.c, var_0.d, true), 1000f, u_input.c.x), u_input.c.x)), ~(~4294967295u) == var_0.d, Struct_1(var_0.a, !vec2<bool>(var_2.x, true), var_0.c, _wgslsmith_dot_vec4_u32(~max(vec4<u32>(var_0.c.x, 25675u, u_input.d, 30577u), vec4<u32>(u_input.e, global1.x, global1.x, 4294967295u)), ~select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.c.x, 4u)], 4u)], 4u)], var_0.c.x, 22210u, 62974u), vec4<u32>(42160u, 503u, global0[_wgslsmith_index_u32(67162u, 4u)], 72770u), false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1314f, -1179f, var_1.x, -1629f) * vec4<f32>(var_1.x, var_1.x, -246f, var_1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 259f), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1329f, var_1.x, var_1.x, 682f), vec4<f32>(var_1.x, -655f, var_1.x, var_1.x), var_0.e)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -543f) * -1551f), var_1.x, var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-655f * var_1.x), _wgslsmith_f_op_f32(-var_1.x)))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(254f, -275f)), _wgslsmith_f_op_f32(177f + var_1.x), var_1.x, _wgslsmith_f_op_f32(-var_1.x)), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-1462f - -808f), var_1.x, 699f))), 0u, var_1.x, var_1.x);
}

