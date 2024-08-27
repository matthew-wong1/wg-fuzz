struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_4 = Struct_4(vec2<u32>(32059u, 0u));

var<private> global2: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(-19370i, vec4<bool>(true, false, true, false), 4294967295u), Struct_3(-2970i, vec4<bool>(false, true, true, false), 4721u), Struct_3(1i, vec4<bool>(false, false, true, false), 132756u), Struct_3(2147483647i, vec4<bool>(true, true, true, false), 44520u), Struct_3(0i, vec4<bool>(false, false, true, true), 54205u), Struct_3(1i, vec4<bool>(true, false, true, false), 72112u));

var<private> global3: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(426f, -1436f), vec2<f32>(1523f, -619f), vec2<f32>(154f, -744f), vec2<f32>(881f, 1053f), vec2<f32>(220f, -887f), vec2<f32>(1000f, 1766f), vec2<f32>(-1068f, 574f));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<i32>) -> f32 {
    let var_0 = -u_input.a.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 1000f, all(!arg_2))) - _wgslsmith_f_op_f32(round(-230f)));
    var var_1 = -42369i;
    let var_2 = Struct_5(arg_2.x, Struct_1(arg_3.xy, any(vec4<bool>(all(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), any(vec3<bool>(false, arg_2.x, false)), true == arg_2.x, arg_2.x)), 225f, global1.a, abs(global1.a.x)), abs(reverseBits(global1.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(647f, _wgslsmith_f_op_f32(f32(-1f) * -2659f), global1.a.x <= global1.a.x))))), -(min(u_input.a.x, arg_3.x) >> (global1.a.x % 32u)) | abs(firstLeadingBit(u_input.a.x)));
    let var_3 = true;
    return -1335f;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2164f - -707f) * 601f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(395f + 298f) - -445f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(775f))), _wgslsmith_f_op_f32(func_3(-vec3<i32>(u_input.a.x, -21284i, 1i), 15865i, select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(1i, u_input.a.x, -2147483647i)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-293f - 2380f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(-30682i, 0i, u_input.a.x), 42423i, vec2<bool>(false, true), vec3<i32>(u_input.a.x, u_input.a.x, -11581i))) - _wgslsmith_f_op_f32(ceil(-791f)))))));
    global1 = Struct_4(_wgslsmith_add_vec2_u32(global1.a, global1.a));
    var var_1 = i32(-1i) * -(~(-2147483647i));
    let var_2 = _wgslsmith_f_op_f32(min(1280f, _wgslsmith_f_op_f32(select(468f, -2016f, false))));
    global2 = array<Struct_3, 6>();
    return _wgslsmith_dot_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -20301i), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(global1.a.x, global1.a.x, 29975u) % vec3<u32>(32u)), vec3<bool>(false, false, false)) >> (~vec3<u32>(40084u, 51729u, global1.a.x) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -676i, 0i), vec3<i32>(1i, -21195i, 49240i)), abs(vec3<i32>(0i, 2147483647i, u_input.a.x)), abs(vec3<i32>(-34268i, u_input.a.x, -1i)))) >> (countOneBits(global1.a.x) % 32u);
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_4 {
    global2 = array<Struct_3, 6>();
    var var_0 = !select(vec2<bool>(false, all(vec3<bool>(true, true, true))), !(!vec2<bool>(true, arg_3.x)), arg_3.x);
    let var_1 = arg_0 << (global1.a.x % 32u);
    var var_2 = Struct_1(~u_input.a, !all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, arg_3.x, true), true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<u32>(~24162u, global1.a.x), firstTrailingBit((global1.a.x | 58267u) & min(~global1.a.x, _wgslsmith_mult_u32(global1.a.x, global1.a.x))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(35661u, _wgslsmith_mod_u32(~0u, 1u)), 7u)]);
    return Struct_4(var_2.d);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> bool {
    var var_0 = !vec3<bool>(!any(vec4<bool>(false, arg_1.b, true, true)), !(1u <= _wgslsmith_sub_u32(global1.a.x, arg_0.a.x)), false);
    global1 = func_4(abs(countOneBits(_wgslsmith_mod_i32(~arg_1.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-291f, _wgslsmith_f_op_f32(-arg_1.c)))), -(arg_1.a << (global1.a % vec2<u32>(32u))), !vec2<bool>(true, any(vec2<bool>(var_0.x, arg_1.b))));
    global0 = arg_1.c;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(~(~min(2414u, 21896u)), _wgslsmith_clamp_u32(4990u | arg_1.d.x, arg_1.e, 0u) & 12768u), _wgslsmith_sub_u32(0u, 4294967295u & ~_wgslsmith_clamp_u32(76231u, 21064u, arg_0.a.x))), 6u)];
    let var_2 = select(min(-vec4<i32>(var_1.a, 1i, -17551i, -35209i), vec4<i32>(u_input.a.x, var_1.a | arg_1.a.x, ~arg_1.a.x, u_input.a.x)), ~firstTrailingBit(-vec4<i32>(u_input.a.x, arg_1.a.x, arg_1.a.x, 46795i)), !(!any(vec3<bool>(true, false, var_1.b.x)))) >> (min(firstLeadingBit(firstTrailingBit(~vec4<u32>(var_1.c, 48199u, global1.a.x, 26686u))), vec4<u32>(_wgslsmith_add_u32(~84979u, _wgslsmith_dot_vec2_u32(arg_1.d, arg_1.d)), ~global1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(23594u, arg_1.d.x), ~arg_1.d), ~_wgslsmith_mult_u32(0u, 26049u))) % vec4<u32>(32u));
    return true;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>) -> bool {
    return select(any(vec3<bool>(!(!arg_0.b.x), arg_0.b.x, true)), !arg_0.b.x, func_5(func_4(func_2(), global3[_wgslsmith_index_u32(global1.a.x, 7u)], arg_1.yx, vec2<bool>(false, u_input.a.x >= 2147483647i)), Struct_1(vec2<i32>(-1i, -28099i), (false && arg_0.b.x) | false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f) + _wgslsmith_f_op_f32(949f - -350f)), _wgslsmith_clamp_vec2_u32(global1.a, global1.a, global1.a) >> (~vec2<u32>(global1.a.x, global1.a.x) % vec2<u32>(32u)), ~reverseBits(56404u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global2 = array<Struct_3, 6>();
    global0 = -1402f;
    let var_1 = vec3<bool>(func_1(global2[_wgslsmith_index_u32(~33966u, 6u)], -vec4<i32>(u_input.a.x | u_input.a.x, min(u_input.a.x, u_input.a.x), -71630i, -60862i)), any(vec2<bool>(true, true)), true);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-112f)));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(global1.a.x << (firstTrailingBit(global1.a.x) % 32u), 4294967295u, ~_wgslsmith_div_u32(3124u, 15671u)), countOneBits(~(~vec3<u32>(global1.a.x, 12865u, global1.a.x)))), vec2<i32>(_wgslsmith_div_i32(-(u_input.a.x | u_input.a.x), 3859i), -18598i), ~vec2<i32>(_wgslsmith_div_i32(-3814i, -u_input.a.x), func_2()));
}

