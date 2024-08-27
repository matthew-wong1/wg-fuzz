struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 18>;

var<private> global2: i32 = -1i;

var<private> global3: u32;

var<private> global4: array<Struct_1, 1>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = -_wgslsmith_sub_vec4_i32(-(~(-vec4<i32>(arg_0.a, u_input.c.x, 1i, u_input.c.x))), vec4<i32>(-8252i, arg_0.a, u_input.c.x >> ((46592u & arg_0.b.x) % 32u), min(arg_0.a, _wgslsmith_mod_i32(u_input.c.x, 13914i))));
    var_0 = -vec4<i32>(-2147483647i, _wgslsmith_div_i32(92i, u_input.c.x) >> (arg_0.b.x % 32u), 1i, u_input.c.x) << (~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(105093u, u_input.b, 7772u, u_input.a) >> (vec4<u32>(37058u, arg_0.b.x, u_input.b, 32430u) % vec4<u32>(32u))), vec4<u32>(u_input.a, u_input.b, arg_0.b.x, ~0u)) % vec4<u32>(32u));
    let var_1 = abs(4294967295u);
    var var_2 = -vec4<i32>(~((i32(-1i) * -2147483647i) | _wgslsmith_clamp_i32(-40082i, u_input.c.x, 4714i)), -firstTrailingBit(i32(-1i) * -29587i), _wgslsmith_mod_i32(min(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(15205i, u_input.c.x, -48470i, -5857i), vec4<i32>(arg_0.a, 0i, var_0.x, -36083i))), select(32607i, var_0.x, true)), ~(u_input.c.x >> (_wgslsmith_sub_u32(140869u, 1u) % 32u)));
    var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~(-firstLeadingBit(vec4<i32>(arg_0.a, 0i, 7376i, 2147483647i))), ~(-vec4<i32>(-2147483647i, 1i, 9224i, var_0.x))), countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1872i, u_input.c.x, 28637i, 0i) & vec4<i32>(arg_0.a, -29213i, -9486i, -2147483647i), firstTrailingBit(vec4<i32>(26022i, -2147483647i, 14732i, arg_0.a))), ~vec4<i32>(2147483647i, arg_0.a, var_2.x, arg_0.a))));
    return any(vec3<bool>(true, true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2, arg_3: vec2<bool>) -> i32 {
    var var_0 = !vec3<bool>(arg_2.a, any(vec4<bool>(true, true, true || arg_2.a, true)), arg_3.x);
    var var_1 = global4[_wgslsmith_index_u32(arg_0.x, 1u)];
    global0 = func_3(global4[_wgslsmith_index_u32(~0u, 1u)]);
    let var_2 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>((arg_0.x & 53560u) & firstTrailingBit(arg_0.x), ~firstTrailingBit(261u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, 32339u, arg_0.x), vec3<u32>(1u, 0u, 14366u)) << (20719u % 32u)), min(abs(~vec3<u32>(arg_0.x, 0u, arg_0.x)), vec3<u32>(~4294967295u, 13507u, u_input.b | 49813u)), vec3<u32>(arg_0.x, 0u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, 1u, 1u)), ~vec3<u32>(51166u, 4294967295u, arg_2.b))));
    var var_3 = _wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(select(select(vec4<i32>(arg_2.c, u_input.c.x, 0i, 2147483647i), vec4<i32>(u_input.c.x, 1i, var_1.a, arg_2.c), var_0.x), vec4<i32>(33714i, var_1.a, 2147483647i, 23552i) << (vec4<u32>(73748u, arg_2.b, 59928u, var_1.b.x) % vec4<u32>(32u)), !vec4<bool>(arg_3.x, arg_3.x, true, false)), vec4<i32>(-2147483647i, 6116i, _wgslsmith_mod_i32(-47039i, var_1.a), -var_1.a), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.a, -18591i, var_1.a, -2147483647i) >> (vec4<u32>(u_input.b, 1u, arg_2.b, u_input.b) % vec4<u32>(32u)), reverseBits(vec4<i32>(arg_2.c, u_input.c.x, var_1.a, -2147483647i)))), _wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(u_input.c.x, u_input.c.x, -22442i, arg_2.c) & -vec4<i32>(2147483647i, 1i, var_1.a, 3946i)), -vec4<i32>(arg_2.c, _wgslsmith_mod_i32(var_1.a, var_1.a), abs(-34736i), -628i), vec4<i32>(~2147483647i, u_input.c.x, firstTrailingBit(u_input.c.x), -25690i)));
    return -1i;
}

fn func_1() -> bool {
    global0 = true;
    let var_0 = 3168u;
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, var_0), vec2<u32>(4294967295u, u_input.b));
    let var_2 = global1[_wgslsmith_index_u32(~abs(abs(~(~1u))), 18u)];
    let var_3 = max(_wgslsmith_div_i32(~u_input.c.x | (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -44711i, 2147483647i, 31419i), vec4<i32>(u_input.c.x, 1i, 1i, u_input.c.x)) >> (var_0 % 32u)), _wgslsmith_div_i32(5340i << (_wgslsmith_sub_u32(14723u, u_input.a) % 32u), func_2(~vec2<u32>(var_0, 1u), _wgslsmith_f_op_f32(f32(-1f) * -222f), Struct_2(false, u_input.b, -36805i), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 4294967295u), 18u)]))), u_input.c.x);
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_2;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(u_input.a, u_input.a);
    global1 = array<vec2<bool>, 18>();
    var var_1 = func_4(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b, var_0)) ^ select(vec2<u32>(var_0, var_0), vec2<u32>(4294967295u, var_0), vec2<bool>(true, true)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0, 0u) & vec2<u32>(u_input.a, 0u), ~vec2<u32>(1u, 0u))), 1u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1097f, -768f, -157f), vec3<f32>(-1000f, -1947f, -258f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-246f, 1298f, 687f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-850f, -1050f, -1103f))))), select(vec3<bool>(!any(vec3<bool>(true, true, false)), true, _wgslsmith_f_op_f32(step(1000f, -2160f)) < _wgslsmith_f_op_f32(1000f + -1359f)), vec3<bool>(true, func_1(), true), select(true, all(vec4<bool>(true, false, true, true)), true) | func_3(global4[_wgslsmith_index_u32(var_0, 1u)])));
    var var_2 = Struct_2(true, var_1.b.x << (~_wgslsmith_mod_u32(select(var_1.b.x, 46143u, false), var_1.b.x) % 32u), var_1.a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(374f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1085f)), 730f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-537f * 651f))))));
    global3 = _wgslsmith_sub_u32(var_2.b, var_1.b.x);
    var var_4 = 0i != _wgslsmith_div_i32(~abs(_wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.c.zz)), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(max(firstTrailingBit(4294967295u), var_2.b));
}

