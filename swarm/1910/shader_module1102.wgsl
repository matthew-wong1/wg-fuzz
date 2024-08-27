struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(1525f, -1895f, -1066f), vec3<f32>(-709f, 1546f, -620f), vec3<f32>(-505f, -1347f, -819f), vec3<f32>(533f, -584f, 1152f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: Struct_4) -> f32 {
    global0 = array<vec3<f32>, 4>();
    var var_0 = select(true, arg_2.b.a.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(367f)), _wgslsmith_f_op_f32(sign(-504f)))) == 620f) != (any(select(!vec4<bool>(true, arg_2.b.c.a.x, arg_0.b, arg_2.b.e), !vec4<bool>(true, true, arg_0.b, false), !vec4<bool>(arg_2.b.a.a.x, arg_2.b.e, true, arg_2.b.a.a.x))) & arg_2.b.d);
    var var_1 = arg_0.a.b;
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    return 1070f;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    global0 = array<vec3<f32>, 4>();
    var var_0 = Struct_2(Struct_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), false), _wgslsmith_f_op_f32(1713f + _wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(-2147483647i, vec3<i32>(0i, 10912i, -11853i), vec3<f32>(1000f, -1371f, -847f), arg_0), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(365f, 1929f, -418f, -302f)), Struct_4(vec4<f32>(507f, 973f, -566f, -2089f), Struct_2(Struct_1(vec3<bool>(true, true, false), 1061f, u_input.b, u_input.b), 39871u, Struct_1(vec3<bool>(false, false, true), 624f, 2147483647i, -2147483647i), false, false), u_input.c.zz)))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0, i32(-1i) * -34345i), u_input.c.xzy), arg_0), _wgslsmith_div_u32(countOneBits(49706u), _wgslsmith_dot_vec4_u32(abs(firstLeadingBit(vec4<u32>(u_input.d.x, 25807u, 0u, u_input.a))), vec4<u32>(0u, arg_1.x & u_input.d.x, ~u_input.d.x, 48498u))), Struct_1(vec3<bool>(false, false, true), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_div_f32(-1543f, 948f)))), -42141i, u_input.c.x), true, true);
    var var_1 = arg_0 & _wgslsmith_dot_vec3_i32(select(select(reverseBits(vec3<i32>(u_input.c.x, arg_0, -40436i)), abs(vec3<i32>(83591i, var_0.a.d, 1i)), true), _wgslsmith_add_vec3_i32(u_input.c.yzx, ~vec3<i32>(69390i, 2147483647i, -22730i)), !select(var_0.a.a, vec3<bool>(false, false, var_0.d), var_0.a.a.x)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.yyy, firstLeadingBit(vec3<i32>(-32494i, 46494i, u_input.b))), ~vec3<i32>(var_0.c.d, 0i, 1i) | (vec3<i32>(0i, -2147483647i, 2147483647i) & vec3<i32>(1i, var_0.c.c, 2147483647i)), -vec3<i32>(var_0.c.d, -21364i, 1i)));
    let var_2 = vec2<bool>(var_0.a.a.x, any(vec4<bool>(var_0.d, false, !any(vec4<bool>(false, var_0.a.a.x, false, true)), false | !var_0.c.a.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f)), var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b * var_0.a.b)))) + global0[_wgslsmith_index_u32(~1u, 4u)]);
    return var_0.c;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec2<i32>) -> bool {
    return select(false, !arg_1.e, true);
}

fn func_5(arg_0: u32, arg_1: bool) -> Struct_5 {
    return Struct_5(Struct_3(-19476i, vec3<i32>(-(i32(-1i) * -24241i), ~abs(u_input.c.x), 1i), global0[_wgslsmith_index_u32(23996u, 4u)], -2147483647i), true);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(0u, 4u)]);
    var var_1 = func_5(_wgslsmith_mod_u32(1u, firstTrailingBit(u_input.a)), select(func_4(true, Struct_2(func_2(5007i, u_input.d.zz), _wgslsmith_sub_u32(37753u, 8101u), func_2(u_input.b, vec2<u32>(u_input.d.x, u_input.d.x)), any(vec3<bool>(false, true, true)), u_input.b == -2147483647i), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec2<i32>(_wgslsmith_mod_i32(-49322i, u_input.b), -1i)), !all(vec2<bool>(true, true)) || false, true));
    let var_2 = u_input.d;
    global0 = array<vec3<f32>, 4>();
    let var_3 = _wgslsmith_mod_u32(max(~47489u, select(_wgslsmith_mult_u32(var_2.x, var_2.x) >> (_wgslsmith_clamp_u32(58181u, u_input.a, 26640u) % 32u), 0u, false)), 1u ^ abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 0u) << (vec3<u32>(u_input.d.x, var_2.x, u_input.a) % vec3<u32>(32u)), abs(vec3<u32>(var_2.x, 1u, 36021u)))));
    return 0i & (~(-2147483647i) ^ abs(0i & _wgslsmith_div_i32(u_input.c.x, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 13214u;
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1416f)), _wgslsmith_f_op_f32(1501f + _wgslsmith_f_op_f32(f32(-1f) * -1331f))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, var_1.x)))) + vec2<f32>(var_1.x, 685f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zx, _wgslsmith_add_u32(~(~1u), ~(~u_input.d.x)) | ~u_input.a, vec3<i32>(~func_1(), func_2(abs(2147483647i), u_input.d.zx).d, u_input.b), u_input.d.zx);
}

