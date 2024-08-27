struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32> = vec3<u32>(84854u, 1u, 1u);

var<private> global2: vec2<f32> = vec2<f32>(-2164f, 188f);

var<private> global3: u32 = 0u;

var<private> global4: f32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec2<bool>) -> u32 {
    let var_0 = u_input.b.x;
    global2 = _wgslsmith_f_op_vec2_f32(arg_1 + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_1 * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -998f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, global2.x) - vec2<f32>(358f, 905f)))))));
    global1 = firstLeadingBit(~vec3<u32>(global1.x, 4294967295u, 67195u));
    var var_1 = _wgslsmith_add_u32(global1.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 90466u, global1.x, global1.x), vec4<u32>(global1.x, 0u, global1.x, 7249u)) ^ 0u, ~global1.x, _wgslsmith_clamp_u32(19597u << (1u % 32u), countOneBits(38099u), ~54244u)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), global1.yx))));
    let var_2 = true || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + _wgslsmith_div_f32(396f, arg_1.x)) * _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(-global2.x)))));
    return 0u;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(528f * global2.x), 400f, any(vec2<bool>(false, false))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, 795f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(1086f - 624f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1171f, global2.x, -658f, 472f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -145f, 720f, global2.x))))));
    var var_1 = _wgslsmith_mult_i32(-2147483647i, firstTrailingBit(16181i)) >= 1i;
    global1 = _wgslsmith_div_vec3_u32(vec3<u32>(~(global1.x & global1.x) << (countOneBits(global1.x) % 32u), _wgslsmith_sub_u32(firstTrailingBit(global1.x), 4294967295u), ~(~global1.x | abs(4294967295u))), min(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 53720u, 1u), vec3<u32>(14016u, 48718u, global1.x)), ~0u, global1.x), vec3<u32>(96652u, ~func_3(vec2<i32>(u_input.c, 60202i), var_0.zy, vec2<bool>(true, false)), global1.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_0.zwz);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-518f + global2.x), _wgslsmith_f_op_f32(step(841f, -303f)))) - _wgslsmith_f_op_f32(f32(-1f) * -574f))), var_0.x);
    return Struct_3(-(~vec4<i32>(1i, _wgslsmith_clamp_i32(39252i, 11871i, u_input.a.x), u_input.b.x & u_input.d, i32(-1i) * -32214i)));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    let var_1 = -475f;
    var var_2 = countOneBits(~u_input.c);
    var var_3 = vec3<u32>(~global1.x, 4294967295u << (0u % 32u), global1.x);
    var_2 = var_0.a.x;
    return Struct_2(global2.x, select(select(vec2<bool>(true, global1.x <= 1u), vec2<bool>(true, true), all(vec3<bool>(true, false, false))), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), !select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1934f, var_1))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))) - vec2<f32>(var_1, -2334f)), _wgslsmith_div_u32(2080u, ~global1.x), var_1);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: f32) -> vec2<f32> {
    let var_0 = Struct_1(true, -447f, global1.xy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-444f, arg_0)) - -1333f)), 404f, 886f), arg_1.b);
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, -25707i), abs(-38853i), ~15309i, arg_2.x) & vec4<i32>(u_input.d, u_input.c, 22212i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, 22282i, -1i, 2147483647i), -vec4<i32>(u_input.c, 39245i, u_input.c, 7177i))), _wgslsmith_clamp_vec4_i32(~(~(~vec4<i32>(arg_2.x, u_input.c, arg_2.x, arg_2.x))), _wgslsmith_mult_vec4_i32(~(~vec4<i32>(-38580i, u_input.b.x, u_input.c, -2147483647i)), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b.x, -1i, u_input.c, arg_2.x), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.d, -1i, arg_2.x), vec4<i32>(u_input.d, -2147483647i, -2147483647i, -2147483647i)))), select(vec4<i32>(i32(-1i) * -55672i, _wgslsmith_div_i32(arg_2.x, arg_2.x), -18642i | u_input.d, 10463i), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.c), arg_2.x, arg_2.x, -u_input.d), false)), min(-countOneBits(-vec4<i32>(-10916i, arg_2.x, 22212i, 2147483647i)), ~vec4<i32>(reverseBits(u_input.d), select(-2147483647i, 15559i, var_0.a), -arg_2.x, ~arg_2.x)));
    global0 = 27526u;
    var_1 = vec4<i32>(-1i, -41162i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -var_1.x, 17690i), vec3<i32>(0i, 0i, u_input.b.x)), ~u_input.a.x) << (firstLeadingBit(countOneBits(vec4<u32>(global1.x, _wgslsmith_dot_vec2_u32(global1.xx, vec2<u32>(0u, arg_1.d)), _wgslsmith_add_u32(var_0.c.x, var_0.c.x), abs(var_0.c.x)))) % vec4<u32>(32u));
    let var_2 = -9381i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-410f, -307f)), _wgslsmith_div_f32(689f, global2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), -556f)), var_0.d.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.x;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_f_op_f32(-global2.x))))) + _wgslsmith_f_op_vec2_f32(func_4(1882f, func_1(), min(~vec3<i32>(0i, -4099i, 2147483647i), vec3<i32>(1i, 19404i, 1i) << (firstLeadingBit(vec3<u32>(global1.x, 4899u, 4294967295u)) % vec3<u32>(32u))), 240f)));
    global1 = _wgslsmith_mult_vec3_u32(abs(~vec3<u32>(global1.x, 0u, _wgslsmith_sub_u32(global1.x, global1.x))), vec3<u32>(_wgslsmith_dot_vec3_u32(~(vec3<u32>(global1.x, global1.x, global1.x) >> (vec3<u32>(global1.x, global1.x, 0u) % vec3<u32>(32u))), ~select(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(4116u, global1.x, global1.x), vec3<bool>(false, true, true))), _wgslsmith_mult_u32(countOneBits(_wgslsmith_div_u32(global1.x, 292u)), 4294967295u), global1.x));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1001f), select(vec2<bool>(true, _wgslsmith_f_op_f32(ceil(global2.x)) >= global2.x), func_1().b, vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1042f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -156f))), true))), global1.x | global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    var var_1 = select(reverseBits(-min(_wgslsmith_sub_vec2_i32(u_input.a.xz, u_input.b), select(u_input.a.yx, u_input.a.xy, var_0.b.x))), min(-_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 2147483647i) >> (vec2<u32>(4294967295u, var_0.d) % vec2<u32>(32u)), abs(vec2<i32>(-2147483647i, 41888i))), ~u_input.a.yx ^ ~(-u_input.a.yy)), var_0.b.x);
    global0 = ~(~_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12704u, 4294967295u, global1.x, var_0.d), vec4<u32>(0u, 1176u, global1.x, global1.x)), min(37194u, 56771u)), ~global1.x));
    let var_2 = Struct_1(var_0.b.x, -262f, _wgslsmith_sub_vec2_u32(max(global1.zy, global1.yy), vec2<u32>(_wgslsmith_div_u32(13976u, global1.x), ~70943u)) >> (vec2<u32>(var_0.d, ~var_0.d) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2560f, _wgslsmith_f_op_f32(f32(-1f) * -421f), var_0.e))), func_1().b);
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -414f) + _wgslsmith_div_f32(var_2.b, 625f)) - 115f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(587f * _wgslsmith_f_op_f32(-var_2.b)) * 311f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1218f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_2.b)), 1462f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(1855f * 759f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, u_input.a);
}

