struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 22>;

var<private> global1: u32;

var<private> global2: array<f32, 9>;

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = global3.a >= abs(~1u);
    var var_1 = _wgslsmith_dot_vec3_u32(firstTrailingBit(select(~vec3<u32>(global3.a, 19701u, 6964u), reverseBits(vec3<u32>(24923u, 7844u, 92120u)) & ~vec3<u32>(109216u, 42671u, global4.a), vec3<bool>(all(vec3<bool>(true, true, false)), u_input.b < 1i, arg_0))), select(firstLeadingBit(vec3<u32>(global3.a, ~global4.a, _wgslsmith_add_u32(u_input.a, 1u))), countOneBits(reverseBits(max(vec3<u32>(u_input.a, 1u, global3.a), vec3<u32>(u_input.a, 47136u, 108487u)))), select(!vec3<bool>(false, false, arg_0), !vec3<bool>(arg_0, arg_0, true), !arg_0)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2183f)));
    let var_3 = arg_0;
    let var_4 = -888f;
    return 111577u;
}

fn func_2(arg_0: vec2<bool>) -> Struct_4 {
    var var_0 = ~vec3<u32>(~(func_3(true) >> (~55922u % 32u)), select(max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global4.a), vec2<u32>(global4.a, 26005u)), 1u | global4.a), max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global3.a, 0u), vec3<u32>(4294967295u, u_input.a, 30802u)), ~u_input.a), arg_0.x), _wgslsmith_sub_u32(countOneBits(_wgslsmith_mod_u32(global4.a, 44154u)), ~u_input.c));
    var var_1 = select(abs(vec4<i32>(u_input.d.x ^ u_input.e, 21099i, _wgslsmith_clamp_i32(-56746i, u_input.e, -2147483647i), _wgslsmith_dot_vec3_i32(u_input.d, u_input.d))) & (vec4<i32>(_wgslsmith_sub_i32(1781i, u_input.b), _wgslsmith_mod_i32(u_input.d.x, u_input.e), firstLeadingBit(1i), u_input.e) ^ (vec4<i32>(-1i) * -vec4<i32>(u_input.e, u_input.b, -1i, u_input.e))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-7508i, _wgslsmith_add_i32(18148i, u_input.e)), -52278i, -2147483647i, abs(-28901i)), vec4<i32>((-2147483647i ^ u_input.e) & firstTrailingBit(1i), -(u_input.d.x >> (global4.a % 32u)), 0i, 2147483647i)), arg_0.x);
    var_0 = _wgslsmith_add_vec3_u32(abs(abs(min(vec3<u32>(1u, global3.a, 4294967295u), vec3<u32>(u_input.c, 1u, 38525u) ^ vec3<u32>(0u, 2986u, 0u)))), vec3<u32>(u_input.a, abs(~5164u), var_0.x) >> (_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(global4.a, var_0.x, 6356u)) | select(vec3<u32>(0u, 1u, global3.a), vec3<u32>(1741u, u_input.a, var_0.x), vec3<bool>(arg_0.x, false, arg_0.x)), abs(~vec3<u32>(u_input.a, 24659u, 42205u)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(global4.a, u_input.c, global3.a), vec3<u32>(var_0.x, global3.a, global3.a)), ~vec3<u32>(u_input.a, 0u, u_input.a), true)) % vec3<u32>(32u)));
    var var_2 = Struct_2(!vec4<bool>(!arg_0.x || (true & arg_0.x), false, true, false), true);
    let var_3 = _wgslsmith_mult_u32(global3.a, _wgslsmith_div_u32(_wgslsmith_add_u32(~func_3(true), 0u), _wgslsmith_dot_vec2_u32(reverseBits(~vec2<u32>(1u, 1u)), vec2<u32>(54859u, var_0.x))));
    return Struct_4(any(select(select(vec2<bool>(arg_0.x, arg_0.x), select(var_2.a.xy, var_2.a.zw, arg_0), !var_2.a.yw), vec2<bool>(1i >= var_1.x, true), arg_0)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(131f - -440f);
    global3 = Struct_1(79141u, _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(arg_1.d.x, 9u)])));
    var_0 = _wgslsmith_f_op_f32(global3.b + 257f);
    let var_1 = arg_1.b.a.yxx;
    global4 = Struct_1(u_input.a, _wgslsmith_f_op_f32(trunc(1265f)));
    return arg_1.b;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(func_2(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))), Struct_3(_wgslsmith_sub_vec2_u32(~(vec2<u32>(global3.a, 0u) ^ vec2<u32>(51864u, u_input.c)), min(~vec2<u32>(u_input.c, global3.a), abs(vec2<u32>(u_input.c, global4.a)))), Struct_2(vec4<bool>(true, true, true, any(vec2<bool>(true, false))), any(vec2<bool>(true, true))), global4.b, ~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(83081u, 1u), vec2<u32>(global3.a, 35215u), vec2<u32>(global4.a, u_input.a)), firstLeadingBit(vec2<u32>(global3.a, u_input.a)), vec2<bool>(true, true))), true);
    let var_1 = Struct_1(u_input.c << (59933u % 32u), global4.b);
    let var_2 = var_1;
    global0 = array<Struct_5, 22>();
    var var_3 = select(-32877i, u_input.e, !any(vec2<bool>(true, true)));
    return Struct_1(firstTrailingBit(func_3(all(vec4<bool>(false, false, var_0.a.x, var_0.b)))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_2.a, 9u)] + 273f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = firstLeadingBit(select(~(~vec4<u32>(4294967295u, 28664u, global3.a, 43505u)), countOneBits(~vec4<u32>(19523u, 18900u, 16450u, u_input.c)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), any(vec2<bool>(false, true)))) >> (reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(62071u, global3.a, 0u, global3.a), ~vec4<u32>(var_0.a, 3530u, global4.a, 27095u))) % vec4<u32>(32u)));
    global4 = Struct_1(var_1.x << (var_1.x % 32u), global4.b);
    var var_2 = ~_wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b, -2147483647i), 44394i)), ~(~u_input.d.x >> (firstTrailingBit(var_0.a) % 32u)));
    var var_3 = firstLeadingBit(1i);
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b, 1144f, -662f, 882f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1239f, 455f, var_0.b, 274f))) * vec4<f32>(-348f, global3.b, -588f, global4.b))), global4.a);
}

