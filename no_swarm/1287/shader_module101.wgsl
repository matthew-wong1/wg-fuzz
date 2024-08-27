struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: vec4<i32> = vec4<i32>(-1i, -30072i, 1i, 14677i);

var<private> global2: array<vec3<i32>, 32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global1 = -select(_wgslsmith_mult_vec4_i32(-max(vec4<i32>(global1.x, global1.x, global1.x, -6776i), vec4<i32>(7148i, global1.x, global1.x, 0i)), ~select(vec4<i32>(-1i, global1.x, -57880i, global1.x), vec4<i32>(0i, global1.x, 17968i, -58175i), vec4<bool>(arg_0.a, true, true, false))), vec4<i32>(global1.x, global1.x, firstLeadingBit(global1.x), _wgslsmith_add_i32(global1.x, -23273i)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 3611u, arg_0.b, u_input.b.x), vec4<u32>(arg_0.b, 0u, 0u, 1u)) % vec4<u32>(32u)), vec4<bool>(true, !arg_0.a | arg_0.a, true, arg_0.a));
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 39545u, ~min(firstTrailingBit(arg_0.b), ~arg_0.b)), max(~(vec3<u32>(arg_0.b, 97642u, u_input.b.x) | u_input.b), vec3<u32>(arg_0.b << (arg_0.b % 32u), 24435u, _wgslsmith_mod_u32(~0u, 1u))));
    let var_1 = !select(vec2<bool>(!arg_0.a, arg_0.a), select(vec2<bool>(all(vec2<bool>(arg_0.a, true)), any(vec2<bool>(arg_0.a, arg_0.a))), !select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, false), arg_0.a), select(true, any(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), true)), !(!(!vec2<bool>(false, arg_0.a))));
    let var_2 = arg_0;
    var var_3 = Struct_3(Struct_2(vec3<bool>(any(!vec3<bool>(false, var_1.x, arg_0.a)), ~u_input.b.x == 48208u, var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2806f, 936f, 498f, -614f)))))), Struct_1(true, arg_0.b), 1u), arg_0);
    return -2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = Struct_3(arg_1, Struct_1(arg_1.c.a, min(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, arg_1.d, 1u), ~u_input.b), min(19437u & arg_2, 107869u))));
    global1 = vec4<i32>(global1.x, abs(-4580i), reverseBits(39994i), -1i);
    global1 = vec4<i32>(-1i) * -vec4<i32>(countOneBits(global1.x), func_3(Struct_1(arg_1.c.a, arg_1.d)) & (i32(-1i) * -2147483647i), global1.x << (50962u % 32u), ~_wgslsmith_mod_i32(0i, global1.x));
    var_0 = Struct_3(arg_1, Struct_1(arg_0.a, ~arg_3));
    global1 = ~select(~(-vec4<i32>(-2147483647i, global1.x, global1.x, global1.x)), countOneBits(firstTrailingBit(vec4<i32>(global1.x, 10648i, global1.x, 2147483647i))), false) | ~select(-firstTrailingBit(vec4<i32>(global1.x, 29421i, global1.x, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-2147483647i, global1.x, global1.x, global1.x)), all(vec4<bool>(true, true, false, arg_0.a)));
    return ~0u;
}

fn func_4(arg_0: vec4<u32>) -> vec2<bool> {
    global2 = array<vec3<i32>, 32>();
    global2 = array<vec3<i32>, 32>();
    let var_0 = Struct_3(Struct_2(vec3<bool>(global1.x <= (1469i ^ global1.x), all(vec4<bool>(false, false, true, false)), 1f > _wgslsmith_f_op_f32(select(-257f, 1147f, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(374f, 877f, -942f, -798f))), Struct_1(true, _wgslsmith_mult_u32(arg_0.x >> (u_input.b.x % 32u), _wgslsmith_sub_u32(u_input.a.x, 0u))), ~abs(u_input.b.x)), Struct_1(_wgslsmith_mod_i32(firstTrailingBit(-39647i), global1.x ^ 31766i) == _wgslsmith_add_i32(_wgslsmith_sub_i32(global1.x, -2147483647i), 1i), _wgslsmith_mod_u32(~(~105644u), abs(u_input.b.x) & ~17496u)));
    var var_1 = ~_wgslsmith_dot_vec4_u32(arg_0, arg_0);
    let var_2 = _wgslsmith_add_i32(_wgslsmith_add_i32(global1.x ^ global1.x, 6850i), global1.x);
    return var_0.a.a.zz;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<bool>(true, true);
    var_0 = !select(func_4(vec4<u32>(1u, ~u_input.a.x, ~4294967295u, func_2(Struct_1(true, 64488u), Struct_2(vec3<bool>(true, var_0.x, var_0.x), vec4<f32>(-1692f, -1423f, -125f, -1061f), Struct_1(var_0.x, 6661u), 4294967295u), u_input.a.x, u_input.a.x))), vec2<bool>(func_4(~vec4<u32>(84628u, u_input.a.x, u_input.b.x, u_input.a.x)).x, !var_0.x), var_0.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(489f - 829f) + _wgslsmith_f_op_f32(step(1022f, -790f))), _wgslsmith_f_op_f32(step(-360f, _wgslsmith_f_op_f32(floor(524f))))))));
    let var_2 = vec3<bool>(var_0.x, !all(vec3<bool>(var_0.x, all(vec3<bool>(var_0.x, true, false)), true)), true);
    let var_3 = Struct_1(func_4(~vec4<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.b.zz), _wgslsmith_mod_u32(u_input.a.x, 10641u))).x, ~u_input.b.x);
    return Struct_1(true, ~firstTrailingBit(_wgslsmith_mult_u32(u_input.b.x, 4294967295u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_clamp_vec3_u32(reverseBits(abs(abs(u_input.b))), vec3<u32>(func_1().b, min(max(firstLeadingBit(arg_0.b), arg_1.b >> (1u % 32u)), ~arg_1.b), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(arg_1.b, arg_0.b, 0u)), _wgslsmith_clamp_u32(arg_1.b, u_input.b.x, arg_1.b))), u_input.b);
    global0 = -347f;
    global2 = array<vec3<i32>, 32>();
    let var_1 = Struct_2(vec3<bool>(true, true, arg_1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1824f, _wgslsmith_f_op_f32(-313f + 510f)), 604f, -904f, -754f) * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(760f, -1282f, true)))), _wgslsmith_f_op_f32(floor(-427f)), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1467f, -1000f)))), arg_1, select(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.b, _wgslsmith_div_u32(10664u, 14788u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(17143u, var_0.x, u_input.a.x, var_0.x), ~vec4<u32>(0u, u_input.b.x, var_0.x, arg_1.b))), _wgslsmith_mod_u32(~1u, 65390u), all(!vec4<bool>(arg_1.a, arg_0.a, true, arg_1.a))));
    global1 = firstLeadingBit(vec4<i32>(reverseBits(firstTrailingBit(2147483647i)), ~(-2147483647i), reverseBits(2147483647i), firstTrailingBit(1i))) & vec4<i32>(abs(global1.x), ~global1.x, global1.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, -1i, global1.x, global1.x)) >> (min(vec4<u32>(var_0.x, arg_1.b, 11498u, 1u), vec4<u32>(arg_1.b, arg_1.b, u_input.a.x, 42574u)) % vec4<u32>(32u)), vec4<i32>(abs(10773i), -5739i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1.x, global1.x), global2[_wgslsmith_index_u32(var_1.c.b, 32u)]), countOneBits(58393i))));
    return StorageBuffer(abs(~var_0.yx), var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1.x, 2147483647i, -2147483647i, global1.x) | _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, global1.x, -70267i, 1i), vec4<i32>(-2147483647i, global1.x, 1i, 53727i)), vec4<i32>(global1.x, global1.x, -2147483647i, -1i) | vec4<i32>(global1.x, global1.x, 39730i, 6722i)), 1i), _wgslsmith_add_i32(reverseBits(global1.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(7879i, global1.x, global1.x), -vec3<i32>(global1.x, global1.x, global1.x)) ^ ~60409i));
    let x = u_input.a;
    s_output = func_5(Struct_1(true, 0u), func_1());
}

