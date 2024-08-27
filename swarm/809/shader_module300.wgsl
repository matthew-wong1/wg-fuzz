struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(4294967295u, 17563u, 44127u, 67914u), Struct_2(-1469f, vec4<u32>(43690u, 4294967295u, 12607u, 68057u), true), vec2<u32>(0u, 34681u));

var<private> global1: f32 = -1000f;

var<private> global2: array<Struct_4, 26>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_1) -> bool {
    global0 = Struct_3(_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(global0.a, global0.a) << ((_wgslsmith_sub_vec4_u32(global0.a, vec4<u32>(92917u, global0.c.x, global0.c.x, global0.c.x)) << (~global0.a % vec4<u32>(32u))) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(~28358u, ~global0.c.x, 0u, 4294967295u))), Struct_2(arg_3.c.x, vec4<u32>(_wgslsmith_mod_u32(global0.a.x, 1u), 31916u, global0.c.x, _wgslsmith_dot_vec2_u32(countOneBits(global0.c), ~vec2<u32>(global0.a.x, global0.a.x))), arg_3.a.x), _wgslsmith_sub_vec2_u32(global0.c, countOneBits(vec2<u32>(abs(13909u), 46549u))));
    var var_0 = -1000f;
    global2 = array<Struct_4, 26>();
    var var_1 = global0.b;
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~(global0.c | var_1.b.xy), vec2<u32>(~19509u, var_1.b.x & 9307u)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.b.x, 7460u), vec2<u32>(global0.b.b.x, 4294967295u)), vec2<u32>(global0.c.x, 66991u) & vec2<u32>(36573u, global0.a.x))), ~countOneBits(vec2<u32>(_wgslsmith_clamp_u32(0u, global0.b.b.x, 22223u), 0u)));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: vec2<bool>) -> u32 {
    let var_0 = all(!vec3<bool>(arg_0.b.x < _wgslsmith_clamp_u32(global0.b.b.x, arg_0.b.x, arg_0.b.x), (arg_1.x >= 53864i) & func_3(vec3<bool>(global0.b.c, arg_0.c, true), Struct_1(vec2<bool>(arg_0.c, true), arg_3.x, vec4<f32>(arg_0.a, -811f, global0.b.a, -652f)), Struct_4(vec2<i32>(u_input.a, u_input.b)), Struct_1(vec2<bool>(global0.b.c, global0.b.c), global0.b.c, vec4<f32>(arg_0.a, global0.b.a, -641f, 772f))), arg_3.x));
    global2 = array<Struct_4, 26>();
    let var_1 = firstLeadingBit(firstTrailingBit(-vec2<i32>(-2147483647i, 20487i)));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_1.x << (~_wgslsmith_mult_u32(0u, 48102u) % 32u), ~var_1.x), -(_wgslsmith_mult_i32(13613i, arg_1.x) << (4294967295u % 32u)));
    global0 = Struct_3(vec4<u32>(arg_0.b.x, ~1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(global0.a.x, ~global0.b.b.x), ~(~global0.a.x)), global0.b.b.x), Struct_2(-874f, arg_0.b, false), vec2<u32>(arg_2.x, 19984u));
    return ~_wgslsmith_mult_u32(global0.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, arg_2.x, 32351u, global0.a.x), _wgslsmith_add_vec4_u32(arg_0.b, global0.b.b)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(70819u, global0.a.x, global0.c.x, 48114u), vec4<u32>(79167u, 4294967295u, arg_0.b.x, global0.c.x))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(13191u), func_2(Struct_2(-521f, vec4<u32>(25496u, 10161u, global0.a.x, 0u), arg_1.a.x), vec3<i32>(0i, 17300i, -67536i), vec3<u32>(arg_0.b.x, global0.c.x, 1683u), select(arg_1.a, vec2<bool>(global0.b.c, arg_0.c), true))) << (vec2<u32>(_wgslsmith_add_u32(countOneBits(6800u), _wgslsmith_mult_u32(arg_0.b.x, 15795u)), 1u) % vec2<u32>(32u)), vec2<u32>(~32626u, countOneBits(2532u)));
    var var_1 = ~vec4<u32>(~(~reverseBits(1u)), 1u, ~global0.c.x | max(abs(0u), _wgslsmith_mod_u32(arg_0.b.x, 76403u)), 50757u);
    global2 = array<Struct_4, 26>();
    let var_2 = u_input.d;
    global1 = -1183f;
    return func_2(arg_0, vec3<i32>(firstLeadingBit(_wgslsmith_mult_i32(1i, ~u_input.b)), _wgslsmith_add_i32(1i, reverseBits(0i)) & u_input.a, -1i), vec3<u32>(~(~arg_0.b.x), global0.b.b.x, 4294967295u), !arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(27618u, 47540u, global0.c.x), func_1(global0.b, Struct_1(vec2<bool>(true, false), global0.b.c, vec4<f32>(global0.b.a, global0.b.a, global0.b.a, -2723f))), 61749u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 4294967295u, 4294967295u, 85012u), global0.b.b)), select(vec4<u32>(global0.b.b.x, 0u, 0u, global0.c.x), global0.b.b >> (global0.a % vec4<u32>(32u)), all(vec4<bool>(true, false, global0.b.c, false)))), global0.b, abs(countOneBits(vec2<u32>(reverseBits(0u), ~global0.b.b.x))));
    let var_0 = Struct_3(~(~global0.a) | (global0.b.b | min(~vec4<u32>(global0.b.b.x, 35515u, 1u, 4864u), _wgslsmith_add_vec4_u32(vec4<u32>(global0.a.x, global0.b.b.x, 15275u, global0.b.b.x), vec4<u32>(global0.b.b.x, 44233u, 1u, global0.b.b.x)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b.a))), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 40302u, global0.b.b.x, 11109u) >> (global0.a % vec4<u32>(32u)), global0.a) << (_wgslsmith_sub_vec4_u32(firstTrailingBit(global0.a), _wgslsmith_sub_vec4_u32(global0.a, global0.b.b)) % vec4<u32>(32u)), all(!vec2<bool>(global0.b.c, global0.b.c))), vec2<u32>(global0.c.x >> (~(~88473u) % 32u), ~global0.a.x));
    global2 = array<Struct_4, 26>();
    var var_1 = _wgslsmith_f_op_f32(global0.b.a + 885f);
    let var_2 = Struct_2(var_0.b.a, ~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(13636u, 85289u, 0u, 161u), vec4<u32>(69220u, 1u, global0.b.b.x, 69969u)) & firstLeadingBit(global0.b.b))), func_3(vec3<bool>(true, true, true), Struct_1(vec2<bool>(global0.b.c, global0.b.c | false), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(3776f, var_0.b.a, 842f, -1211f)))), global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(13548u, 37015u, 0u, 1u)), global0.a), var_0.a.x, _wgslsmith_add_u32(var_0.a.x, var_0.b.b.x) < var_0.b.b.x), 26u)], Struct_1(vec2<bool>(all(vec2<bool>(true, false)), global0.b.c), func_3(select(vec3<bool>(true, true, global0.b.c), vec3<bool>(global0.b.c, global0.b.c, true), false), Struct_1(vec2<bool>(false, global0.b.c), global0.b.c, vec4<f32>(-999f, var_0.b.a, var_0.b.a, 166f)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.a.x, 1u), 26u)], Struct_1(vec2<bool>(global0.b.c, var_0.b.c), var_0.b.c, vec4<f32>(-196f, 585f, 441f, -1972f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-723f, -2321f, global0.b.a, global0.b.a), vec4<f32>(global0.b.a, -383f, var_0.b.a, var_0.b.a)) + vec4<f32>(115f, -482f, var_0.b.a, global0.b.a)))));
    global2 = array<Struct_4, 26>();
    var var_3 = ~_wgslsmith_div_u32(0u, global0.c.x);
    var_1 = -375f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.a, var_2.a))), _wgslsmith_f_op_f32(min(-845f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1461f * 1373f)))))), min(1i, _wgslsmith_dot_vec3_i32(~select(vec3<i32>(u_input.d, u_input.c, -1i), vec3<i32>(u_input.a, u_input.b, 1i), vec3<bool>(false, global0.b.c, false)), _wgslsmith_div_vec3_i32(-vec3<i32>(-11166i, -19672i, -2147483647i), abs(vec3<i32>(1i, 37484i, u_input.c))))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(global0.b.b.wyz, var_0.a.wwy), max(global0.a.x, 1u), _wgslsmith_div_u32(0u, var_0.a.x), global0.c.x) >> (global0.a % vec4<u32>(32u)), var_2.b), -2147483647i);
}

