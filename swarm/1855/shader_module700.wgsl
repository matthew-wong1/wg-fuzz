struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: array<Struct_2, 1>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32) -> vec2<u32> {
    global0 = array<Struct_2, 21>();
    let var_0 = global0[_wgslsmith_index_u32(abs(max(1u, ~(~8735u))), 21u)];
    var var_1 = Struct_3(!any(!vec3<bool>(true, var_0.a.a, true)), var_0.b, (~var_0.b.x ^ var_0.b.x) & _wgslsmith_mod_u32(var_0.b.x, ~(~0u)), vec3<i32>(abs(arg_1), arg_1, 0i));
    global0 = array<Struct_2, 21>();
    var var_2 = false;
    return _wgslsmith_div_vec2_u32(var_0.b, vec2<u32>(11068u, ~var_1.b.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: u32) -> bool {
    global1 = array<Struct_2, 1>();
    global0 = array<Struct_2, 21>();
    return select(all(arg_0), !(countOneBits(arg_2.x) > _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 0u, 25771u), vec3<u32>(arg_3, 101720u, arg_2.x))), arg_1.x >= arg_1.x);
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_2, 1>();
    let var_0 = Struct_1((~_wgslsmith_clamp_u32(4294967295u, 24745u, 0u) | 61879u) >= 22085u);
    let var_1 = vec3<bool>(func_4(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2503f, -679f)))), reverseBits(func_3(_wgslsmith_div_f32(395f, 539f), 0i)), 1u), !var_0.a, true);
    global1 = array<Struct_2, 1>();
    let var_2 = ~(vec4<i32>(-13128i, u_input.a, 47307i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, -36286i, 4024i)), ~vec3<i32>(-1i, u_input.a, u_input.a))) & vec4<i32>(-21837i, -38091i, u_input.a, -1i));
    return global1[_wgslsmith_index_u32(min(0u, ~select(1u, func_3(-1613f, 1i).x, var_0.a)) & countOneBits(~(~35484u)), 1u)];
}

fn func_1(arg_0: f32, arg_1: i32) -> f32 {
    let var_0 = func_2();
    var var_1 = Struct_3(var_0.a.a, vec2<u32>(var_0.b.x, 1u), _wgslsmith_add_u32(min(var_0.b.x, ~var_0.b.x), ~8238u), _wgslsmith_add_vec3_i32(-vec3<i32>(select(arg_1, u_input.a, true), -9825i, var_0.c), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, arg_1), vec3<i32>(0i, u_input.a, arg_1)), u_input.a, 2147483647i) ^ abs(firstTrailingBit(vec3<i32>(u_input.a, arg_1, var_0.c)))));
    let var_2 = firstTrailingBit(vec3<u32>(var_1.c, _wgslsmith_mult_u32(53062u, ~(~var_0.b.x)), countOneBits(44221u << (~var_1.c % 32u))));
    var_1 = Struct_3(var_0.a.a, ~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(59953u, 11586u, var_2.x), vec3<u32>(4294967295u, 4294967295u, 31137u)), var_1.c << (15385u % 32u)), vec2<u32>(4294967295u, _wgslsmith_mod_u32(var_0.b.x, var_0.b.x))), (~1921u >> (var_0.b.x % 32u)) << (4294967295u % 32u), var_1.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_0)))), arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(806f + arg_0), _wgslsmith_f_op_f32(-1576f * arg_0)), -1472f)));
    return 800f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 1>();
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1549f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(726f, 178f, false))))) > _wgslsmith_f_op_f32(182f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-348f, 2147483647i)))));
    let var_1 = Struct_3(false, reverseBits(max(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 0u), ~vec2<u32>(1u, 4294967295u)), ~reverseBits(vec2<u32>(77841u, 67725u)))), 44984u, (~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 66376i), vec3<i32>(-33072i, -1i, u_input.a)) << (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 27554u, 66149u), vec3<u32>(33803u, 73207u, 80384u), vec3<u32>(0u, 4294967295u, 4294967295u)), max(vec3<u32>(4294967295u, 1u, 74388u), vec3<u32>(54674u, 4294967295u, 4294967295u))) % vec3<u32>(32u))) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(2078u, 17165u, 1u), ~vec3<u32>(77859u, 1u, 12004u)), 1u, 15642u) % vec3<u32>(32u)));
    let var_2 = var_1.a;
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~0u, 185f, ~(~(vec3<u32>(var_1.c, 58362u, 34403u) | firstLeadingBit(vec3<u32>(var_1.b.x, 4294967295u, 8919u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1234f, 1106f, 255f)) * vec3<f32>(-1618f, -356f, 1f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1026f, 1358f, -1108f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-847f, -1629f, -603f)), vec3<bool>(var_3.a, false, false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(482f * -1397f), -551f, 318f) + vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(-797f)), _wgslsmith_f_op_f32(trunc(-1763f)))), !select(select(vec3<bool>(var_0.a, true, var_2), vec3<bool>(var_1.a, var_0.a, true), vec3<bool>(var_3.a, false, var_1.a)), vec3<bool>(true, false, false), !var_0.a))));
}

