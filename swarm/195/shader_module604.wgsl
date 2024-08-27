struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: Struct_1 = Struct_1(86091u, vec3<i32>(675i, 11815i, 0i));

var<private> global2: vec2<i32> = vec2<i32>(1i, 3178i);

var<private> global3: vec2<u32>;

var<private> global4: array<i32, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> vec3<u32> {
    var var_0 = arg_0.b.x;
    var var_1 = arg_0;
    global0 = array<Struct_2, 9>();
    var_1 = Struct_2(var_1.a, select(select(vec2<bool>(true, all(var_1.b)), vec2<bool>(all(vec4<bool>(true, var_1.c, false, true)), false & arg_0.b.x), select(select(arg_0.b, arg_0.b, var_1.b.x), select(arg_0.b, vec2<bool>(arg_0.b.x, true), vec2<bool>(var_1.c, var_1.c)), false)), !select(select(var_1.b, arg_0.b, arg_0.b), !arg_0.b, true), all(select(!vec3<bool>(true, var_1.c, arg_0.c), select(vec3<bool>(false, true, var_1.b.x), vec3<bool>(true, var_1.c, var_1.b.x), false), vec3<bool>(false, false, false)))), arg_0.c);
    var var_2 = arg_0;
    return countOneBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~firstLeadingBit(vec3<u32>(var_2.a.a, 11617u, arg_0.a.a)), vec3<u32>(var_2.a.a, ~1u, global3.x), _wgslsmith_div_vec3_u32(vec3<u32>(global1.a, 17687u, arg_1.a), vec3<u32>(11045u, arg_1.a, 89928u)) ^ reverseBits(vec3<u32>(arg_0.a.a, global3.x, global3.x))), vec3<u32>(arg_0.a.a, arg_0.a.a, 0u | arg_1.a) << (_wgslsmith_sub_vec3_u32(vec3<u32>(56845u, 13778u, arg_1.a), vec3<u32>(1u, 4859u, arg_1.a) & vec3<u32>(global1.a, 1u, 0u)) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_2, var_2.a.a), abs(vec3<u32>(arg_0.a.a, 0u, 38689u)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec2<i32> {
    return arg_1.b.xx;
}

fn func_2() -> bool {
    var var_0 = Struct_1(_wgslsmith_div_u32(1u, global3.x), ~global1.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-293f, 1364f, 279f), vec3<f32>(-1543f, 636f, 816f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(602f)), _wgslsmith_f_op_f32(-436f * 349f), _wgslsmith_f_op_f32(round(-1536f)))))));
    var var_2 = func_4(Struct_2(Struct_1(~(global3.x & var_0.a), vec3<i32>(firstTrailingBit(19371i), _wgslsmith_sub_i32(global1.b.x, -19618i), -8516i)), select(vec2<bool>(true, any(vec2<bool>(false, false))), vec2<bool>(true, true), true), global1.b.x <= -8801i), Struct_1(~_wgslsmith_dot_vec3_u32(func_3(global0[_wgslsmith_index_u32(0u, 9u)], Struct_1(1u, var_0.b), 11951u), vec3<u32>(global1.a, 4294967295u, 16413u) | vec3<u32>(0u, 0u, global3.x)), max(u_input.b | (u_input.b << (vec3<u32>(75870u, global1.a, 37000u) % vec3<u32>(32u))), firstLeadingBit(vec3<i32>(global1.b.x, 18479i, 2147483647i)))));
    let var_3 = ~var_0.a;
    global0 = array<Struct_2, 9>();
    return (((true | all(vec4<bool>(true, true, false, true))) | all(vec3<bool>(true, true, true))) | (25877u == var_3)) & !(true || any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))));
}

fn func_1() -> f32 {
    let var_0 = u_input.b.x;
    var var_1 = func_2();
    let var_2 = vec2<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))));
    let var_3 = func_2();
    let var_4 = vec3<u32>(_wgslsmith_sub_u32(4294967295u, 17523u) << (abs(global3.x) % 32u), _wgslsmith_clamp_u32(~countOneBits(global1.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(global3.x, 1u, 35135u), vec3<u32>(1u, 1u, 0u)), global3.x), global3.x) << (~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(0u, global3.x, global3.x), vec3<u32>(global3.x, global3.x, global1.a)), vec3<u32>(45726u, 4294967295u, 0u)), vec3<u32>(4294967295u, firstTrailingBit(58083u), 15253u)) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(floor(1f));
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec4<f32>) -> StorageBuffer {
    global2 = global1.b.yy;
    global0 = array<Struct_2, 9>();
    global3 = ~_wgslsmith_add_vec2_u32(countOneBits(select(vec2<u32>(global1.a, 77184u), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.a, 4294967295u), vec2<u32>(4294967295u, arg_2.a.a), vec2<u32>(1u, 41590u)), !arg_2.b)), ~_wgslsmith_add_vec2_u32(vec2<u32>(global3.x, global1.a), abs(vec2<u32>(0u, 1u))));
    var var_0 = vec4<i32>(1i, 30641i, _wgslsmith_mult_i32(-_wgslsmith_mult_i32(global2.x & global1.b.x, global4[_wgslsmith_index_u32(global1.a, 16u)] | u_input.a), 1i), ~(~_wgslsmith_div_i32(arg_2.a.b.x, global1.b.x)));
    var var_1 = -17407i;
    return StorageBuffer(vec4<u32>(0u | arg_2.a.a, 1u, 48407u, 81416u) | ~countOneBits(~vec4<u32>(global3.x, 6143u, global3.x, 1u)), ~(vec4<u32>(firstTrailingBit(1u), ~50441u, abs(global1.a), ~global3.x) ^ ~(vec4<u32>(arg_2.a.a, 0u, arg_2.a.a, 4294967295u) | vec4<u32>(arg_2.a.a, arg_2.a.a, global3.x, global3.x))), reverseBits(abs(countOneBits(vec2<u32>(4294967295u, global3.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(ceil(681f)), _wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_sub_vec3_i32(var_0.xyy, ~select(min(arg_2.a.b, arg_2.a.b), arg_2.a.b, all(arg_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 9>();
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(305f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-279f)))))), vec3<f32>(_wgslsmith_div_f32(-524f, -1276f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f))), Struct_2(Struct_1(1u, u_input.b), !select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, true))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), select(false, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(486f, -840f, -321f, -2142f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(557f, 959f, -990f, -635f), vec4<f32>(647f, -1853f, -624f, -273f))))))));
}

