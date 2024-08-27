struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 572f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -967f) - _wgslsmith_f_op_f32(step(1000f, -254f)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-591f, 123f, -552f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-272f, 1000f, -1000f) + vec3<f32>(1939f, -1023f, -1000f)) - vec3<f32>(245f, -888f, -945f))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -1000f, 892f)))))))));
    var var_1 = 206f;
    var var_2 = ~(~arg_0) | vec4<u32>(~arg_0.x, ~0u, max(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, arg_0.x), arg_0.x), arg_0.x), arg_0.x);
    return -1274f;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_3) -> vec2<u32> {
    global0 = array<Struct_3, 25>();
    let var_0 = countOneBits(_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_3.a.d.a), vec2<u32>(4294967295u, arg_3.d.a))), _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.a, 38338u), min(vec2<u32>(arg_3.d.a, arg_0.a), vec2<u32>(4294967295u, 1u)))) & _wgslsmith_clamp_u32(arg_0.a, arg_3.a.c.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(20740u, 4294967295u, 75473u, 0u), vec4<u32>(0u, arg_3.a.a.a, 31313u, 7503u))));
    return ~select(countOneBits(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(38629u, arg_0.a), vec2<u32>(arg_0.a, arg_0.a)), select(vec2<u32>(30903u, 11304u), vec2<u32>(0u, 4229u), false))), vec2<u32>(~78117u, 4294967295u), 1843f != _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_3.d.b)));
}

fn func_2(arg_0: Struct_4) -> i32 {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(4294967295u, select(select(abs(arg_0.e.a), 4294967295u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e.a, 1u), func_3(arg_0.e, arg_0.e.b, vec2<i32>(arg_0.c.x, -2147483647i), global0[_wgslsmith_index_u32(arg_0.e.a, 25u)])), all(select(vec3<bool>(arg_0.d, true, false), vec3<bool>(arg_0.a, false, false), arg_0.a))), arg_0.e.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_0.b)));
    var var_1 = ~(~(((vec2<u32>(0u, arg_0.e.a) ^ vec2<u32>(arg_0.e.a, 41782u)) << ((vec2<u32>(arg_0.e.a, 4294967295u) >> (vec2<u32>(1u, arg_0.e.a) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_clamp_u32(var_0.a, 82984u, var_0.a), abs(0u)) % vec2<u32>(32u))));
    let var_2 = Struct_2(Struct_1(~((arg_0.e.a << (73915u % 32u)) & 1u), _wgslsmith_f_op_f32(floor(-1401f))), select(select(vec4<bool>(0u < arg_0.e.a, !arg_0.d, any(vec2<bool>(false, true)), -2147483647i >= u_input.a.x), vec4<bool>(!arg_0.d, arg_0.a, true, arg_0.a), !select(vec4<bool>(arg_0.a, false, false, false), vec4<bool>(arg_0.a, true, false, arg_0.a), true)), select(!select(vec4<bool>(arg_0.a, arg_0.a, false, true), vec4<bool>(true, true, arg_0.d, false), vec4<bool>(true, arg_0.d, false, arg_0.d)), vec4<bool>(any(vec2<bool>(false, true)), arg_0.d, arg_0.a, arg_0.a), !(!vec4<bool>(arg_0.a, arg_0.d, arg_0.a, true))), arg_0.a), arg_0.e, Struct_1(_wgslsmith_mult_u32(select(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(23481u, 4294967295u, 4294967295u, var_0.a), vec4<u32>(var_0.a, 43168u, arg_0.e.a, 1u)), !arg_0.a), ~arg_0.e.a), _wgslsmith_f_op_f32(ceil(-265f))), !select(select(select(vec2<bool>(false, arg_0.a), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, arg_0.d), vec2<bool>(arg_0.d, false)), select(select(vec2<bool>(arg_0.d, true), vec2<bool>(arg_0.a, arg_0.d), vec2<bool>(arg_0.a, arg_0.a)), vec2<bool>(true, true), select(vec2<bool>(arg_0.d, true), vec2<bool>(arg_0.d, arg_0.d), arg_0.a)), vec2<bool>(arg_0.d, any(vec4<bool>(false, arg_0.a, true, arg_0.d)))));
    var_1 = ~firstLeadingBit(vec2<u32>(~(var_2.d.a >> (38152u % 32u)), 25426u));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, -458f) * vec3<f32>(-1000f, var_2.a.b, var_2.a.b)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 613f, 1000f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1405f, -588f, var_0.b), vec3<f32>(-533f, arg_0.b, 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(318f)) + _wgslsmith_f_op_f32(-var_2.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1297f, var_0.b)) * var_0.b) + 1147f), var_2.d.b));
    return -46943i;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: bool, arg_3: f32) -> Struct_1 {
    global0 = array<Struct_3, 25>();
    var var_0 = _wgslsmith_mult_i32(~(-1626i), 0i);
    var var_1 = _wgslsmith_mult_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(0i, 13399i) & min(arg_0.x, arg_0.x), ~(-2147483647i), u_input.a.x, -arg_0.x), (vec4<i32>(-1i) * -vec4<i32>(-287i, 2147483647i, arg_0.x, u_input.a.x)) ^ reverseBits(vec4<i32>(0i, u_input.a.x << (30072u % 32u), 1i, _wgslsmith_mod_i32(-2147483647i, -2147483647i))));
    let var_2 = Struct_3(Struct_2(Struct_1(4294967295u, arg_3), !vec4<bool>(arg_2, all(vec2<bool>(arg_1.x, arg_2)), !arg_1.x, false && arg_1.x), Struct_1(_wgslsmith_div_u32(40441u, ~85313u), arg_3), Struct_1(~(~24590u), 1000f), select(select(arg_1, select(vec2<bool>(arg_1.x, false), vec2<bool>(arg_1.x, true), vec2<bool>(arg_2, false)), arg_1.x), vec2<bool>(arg_2, any(vec4<bool>(arg_1.x, false, false, arg_2))), select(arg_1, arg_1, arg_1.x))), true, vec3<bool>(false, arg_2, true), Struct_1(~(~(~37941u)), _wgslsmith_f_op_f32(-arg_3)));
    let var_3 = 1u;
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-234f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-556f * -1154f)))));
    var var_1 = Struct_4(select(true, false || (true && any(vec3<bool>(true, false, true))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -287f) + -824f), vec2<i32>(firstTrailingBit(~(-u_input.a.x)), i32(-1i) * -22937i), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))) & true, Struct_1(1u, var_0.x));
    let var_2 = vec2<bool>(select(true, any(vec4<bool>(true, true, false, true)), var_1.d), var_1.a);
    let var_3 = var_1.e.b;
    global0 = array<Struct_3, 25>();
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1866f, -626f, 2068f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-213f, -960f, var_1.e.b) + vec3<f32>(var_1.e.b, var_0.x, 261f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_1.b, -1206f), vec3<f32>(-784f, -180f, var_1.b))))), vec3<f32>(_wgslsmith_f_op_f32(var_1.b * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1306f), 781f)) * vec3<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_1.e.a, var_1.e.a, 47138u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.e.a, 0u, var_1.e.a, var_1.e.a), vec4<u32>(var_1.e.a, var_1.e.a, 6412u, var_1.e.a))), vec3<bool>(any(vec3<bool>(false, true, true)), false, true), -5751i, -25672i)), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1123f))))));
    var var_5 = func_4(select(vec3<i32>(var_1.c.x, min(-18107i, _wgslsmith_add_i32(u_input.a.x, 0i)), 1i >> (1u % 32u)), vec3<i32>(func_2(Struct_4(var_2.x, 1862f, var_1.c, var_1.d, Struct_1(var_1.e.a, -394f))), select(50306i, u_input.a.x, var_1.d) ^ _wgslsmith_add_i32(var_1.c.x, u_input.a.x), var_1.c.x), vec3<bool>(!(!var_2.x), !(!var_1.a), false || all(vec2<bool>(var_2.x, var_1.a)))), vec2<bool>(any(select(!vec4<bool>(true, false, true, var_2.x), !vec4<bool>(var_1.a, true, var_1.d, true), select(vec4<bool>(var_1.d, true, var_1.a, false), vec4<bool>(false, true, true, var_1.a), var_1.a))), true), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-min(var_1.c.x, u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(vec4<u32>(var_5.a, var_1.e.a, var_1.e.a, 17430u), vec3<bool>(false, var_2.x, true), 0i, var_1.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_5.b, -1000f)) * _wgslsmith_f_op_f32(round(var_1.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -926f))))), 2147483647i, var_5.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -412f, var_4.x) + var_4)))));
}

