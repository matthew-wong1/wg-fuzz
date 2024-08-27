struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false));

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<i32>(-1i, 1i), 13137u, vec2<bool>(true, true), 32970i), Struct_1(vec2<i32>(-5311i, i32(-2147483648)), 4294967295u, vec2<bool>(false, true), -41663i));

var<private> global2: vec4<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(global2.x, 2u)];
    let var_1 = arg_2;
    global0 = array<vec3<bool>, 26>();
    let var_2 = arg_2.a.x;
    var var_3 = arg_2.b;
    return var_1.c.x;
}

fn func_2() -> i32 {
    global0 = array<vec3<bool>, 26>();
    global2 = ~vec4<u32>(1u, firstTrailingBit(_wgslsmith_add_u32(59782u, abs(80141u))), global2.x, 1u);
    let var_0 = Struct_1(vec2<i32>(select(firstTrailingBit(abs(0i)), _wgslsmith_clamp_i32(select(-6990i, -35394i, true), i32(-1i) * -48893i, -15080i & u_input.a.x), select(all(vec3<bool>(false, true, false)), func_3(-721f, global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(global2.x, 2u)]), true)), u_input.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(6950u, 34844u, global2.x, global2.x) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(47704u, global2.x, 78215u, 0u), select(vec4<u32>(1u, global2.x, 4294967295u, 30640u), vec4<u32>(29683u, global2.x, 4294967295u, 0u), vec4<bool>(true, true, false, false))), abs(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(14191u, global2.x, 10102u, global2.x), vec4<u32>(13929u, 37634u, global2.x, 79194u)), firstLeadingBit(vec4<u32>(global2.x, global2.x, global2.x, 0u))))), vec2<bool>(!func_3(_wgslsmith_f_op_f32(f32(-1f) * -978f), Struct_1(vec2<i32>(0i, 37861i), 13779u, vec2<bool>(false, false), 0i), global1[_wgslsmith_index_u32(4294967295u, 2u)]), true), -10383i);
    var var_1 = min(~global2.zzz, abs(firstTrailingBit(global2.xwx)));
    var var_2 = var_0;
    return var_2.d;
}

fn func_1() -> f32 {
    let var_0 = Struct_1(min(firstLeadingBit(vec2<i32>(~1i, ~u_input.a.x)), vec2<i32>(func_2(), ~7859i)), ~select(~(global2.x & 43200u), global2.x, true), vec2<bool>(false, true), -7450i);
    global1 = array<Struct_1, 2>();
    var var_1 = Struct_1(var_0.a & countOneBits(abs(-u_input.a)), _wgslsmith_mod_u32(0u, 16641u) & min(_wgslsmith_div_u32(var_0.b, ~77855u), 11015u), var_0.c, ~9472i);
    var var_2 = vec4<bool>(var_1.c.x, true | func_3(-1293f, Struct_1(u_input.a >> (vec2<u32>(global2.x, 24423u) % vec2<u32>(32u)), ~47631u, vec2<bool>(var_1.c.x, true), var_0.a.x), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(0i, var_1.d)), ~var_0.b, vec2<bool>(var_1.c.x, true), _wgslsmith_div_i32(var_1.d, 8181i))), all(vec3<bool>(true, !var_0.c.x, var_0.c.x)), true);
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f), _wgslsmith_f_op_f32(round(-1311f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-375f, 321f, var_3.c.x)), _wgslsmith_f_op_f32(select(-653f, 467f, var_3.c.x))))) + 788f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 26>();
    global1 = array<Struct_1, 2>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-351f, 1588f) + 470f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-560f)) + _wgslsmith_f_op_f32(abs(628f))), _wgslsmith_f_op_f32(func_1()), 225f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1300f, 820f, 143f, 2569f), vec4<f32>(-330f, 197f, 416f, 202f))))));
    let var_1 = global1[_wgslsmith_index_u32(~global2.x, 2u)];
    let var_2 = vec2<u32>(44420u, ~var_1.b);
    let var_3 = vec2<bool>(var_1.c.x, !(_wgslsmith_mod_i32(~(-75467i), var_1.d) < u_input.a.x));
    var var_4 = select(vec3<bool>(var_3.x, var_1.c.x, var_1.c.x), vec3<bool>(any(vec3<bool>(any(vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x)), true, var_1.a.x > u_input.a.x)), var_1.c.x, !var_3.x & true), !vec3<bool>(false, true, !select(false, var_1.c.x, true)));
    var var_5 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, firstTrailingBit(~(~firstLeadingBit(var_1.b))), vec4<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(124167u, 19243u, var_2.x, 4294967295u), vec4<u32>(var_2.x, 4294967295u, global2.x, 1u)) | 6866u, reverseBits(~var_2.x)), var_1.b >> (~_wgslsmith_mod_u32(37950u, var_1.b) % 32u), var_1.b), _wgslsmith_clamp_u32(global2.x & _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global2.x, var_1.b, var_2.x, var_1.b)), ~vec4<u32>(61479u, var_2.x, var_2.x, 0u)), var_2.x, 39724u), vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x << (var_2.x % 32u), -(u_input.a.x & -2938i)), 8172i ^ _wgslsmith_add_i32(u_input.a.x, firstTrailingBit(4570i)), -54316i >> (~4294967295u % 32u)));
}

