struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1844f, -356f, 1317f, -1000f);

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_2, 19>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    var var_0 = Struct_4(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))))), abs(vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(~(~1421u), 0u, firstTrailingBit(1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(28928u, 0u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 32357u, 46191u))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -171f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-947f - 1291f))), 1915f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(425f, -1438f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) + -432f))));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b.x, u_input.a, u_input.a) & abs(-vec3<i32>(0i, u_input.b.x, u_input.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, 8477i), vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(u_input.b.x, -1i, -23319i)), vec3<i32>(-23058i, -7062i, u_input.a)))), vec3<i32>(u_input.b.x >> (51428u % 32u), -3196i, u_input.a));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = abs(vec4<i32>(countOneBits(12181i) << (firstTrailingBit(50153u) % 32u), func_3(), -u_input.a, -reverseBits(u_input.b.x)) << (reverseBits(max(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(48008u, 78265u, 17771u, 16411u))) % vec4<u32>(32u)));
    return Struct_1(arg_0, _wgslsmith_f_op_f32(-global0.x), u_input.b, select(vec4<bool>(true, !global1.x, true, arg_0), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(global1.x, false, false, false), false), select(select(vec4<bool>(true, global1.x, true, true), vec4<bool>(arg_0, false, arg_0, global1.x), arg_0), !vec4<bool>(false, arg_0, true, global1.x), global1.x), false), global1.x));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(-133f == global0.x);
    var var_1 = Struct_5(Struct_1(true, var_0.b, vec2<i32>(var_0.c.x, u_input.a), select(select(var_0.d, vec4<bool>(var_0.a, true, false, var_0.a), true), var_0.d, global1.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), var_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1187f * global0.x) * _wgslsmith_f_op_f32(-var_0.b))))));
    let var_2 = vec3<u32>(countOneBits(select(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(33259u, 39424u), vec2<u32>(1u, 42532u))), 1u, true)), 1u, abs(1u));
    global2 = array<Struct_2, 19>();
    global2 = array<Struct_2, 19>();
    return Struct_3(global2[_wgslsmith_index_u32(~var_2.x | 1u, 19u)]);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_5) -> vec4<u32> {
    var var_0 = max(arg_0.a.b.c, arg_1.c);
    var var_1 = global1.x;
    let var_2 = Struct_5(Struct_1(arg_2.a.a, _wgslsmith_f_op_f32(-arg_0.a.b.b), arg_2.a.c, !select(!vec4<bool>(false, true, arg_0.a.d.d.x, global1.x), vec4<bool>(global1.x, arg_0.a.b.d.x, arg_1.d.x, false), true || arg_2.a.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_2.b, vec3<f32>(global0.x, _wgslsmith_f_op_f32(arg_1.b * -657f), _wgslsmith_f_op_f32(-arg_2.b.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.b.x, -1734f, -1078f))) + _wgslsmith_f_op_vec3_f32(-global0.ywy))));
    var_1 = !var_2.a.a;
    var_0 = countOneBits(_wgslsmith_mod_vec2_i32(var_2.a.c, vec2<i32>(arg_2.a.c.x, arg_1.c.x)));
    return firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)) ^ firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<u32>(103336u, 62491u, 1u, 4294967295u), vec4<u32>(0u, 0u, 3541u, 1142u))) >> (max(reverseBits(vec4<u32>(50128u, 4294967295u, 38623u, 15352u)), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 19>();
    let var_0 = select(!vec3<bool>(global1.x, true, true), !vec3<bool>(global1.x, global1.x, global1.x), !select(!(!vec3<bool>(global1.x, true, global1.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, false, global1.x), true), vec3<bool>(global1.x, global1.x, true)), select(vec3<bool>(false, false, true), select(vec3<bool>(true, global1.x, true), vec3<bool>(false, global1.x, false), true), 2147483647i != u_input.b.x)));
    let var_1 = ~min(_wgslsmith_mod_vec4_u32(func_4(func_1(), func_2(global1.x), Struct_5(Struct_1(true, global0.x, vec2<i32>(0i, u_input.b.x), vec4<bool>(var_0.x, var_0.x, false, true)), global0.wxz)), ~(~vec4<u32>(1u, 1u, 4294967295u, 38379u))), vec4<u32>(_wgslsmith_add_u32(~57035u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 44527u, 28978u), vec4<u32>(4294967295u, 49501u, 44250u, 1u))), 26136u, 1u, 4294967295u));
    global1 = !var_0.yy;
    global1 = select(vec2<bool>(!(!any(var_0.xz)), !var_0.x || true), var_0.zz, !(!func_2(true).d.yz));
    global2 = array<Struct_2, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(-300f, _wgslsmith_f_op_f32(f32(-1f) * -1461f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(443f)), -1000f, _wgslsmith_f_op_f32(global0.x * global0.x), global0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1250f, -164f, 1329f, -875f) * vec4<f32>(931f, 131f, -1071f, global0.x)), vec4<f32>(global0.x, global0.x, 1000f, global0.x), func_2(true).d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(611f, global0.x, global0.x, -582f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(234f, global0.x, global0.x, 776f)))) - vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, global0.x, _wgslsmith_div_f32(1705f, 1000f)))), vec2<f32>(global0.x, -124f));
}

