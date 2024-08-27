struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(50945i, 20088i, -39488i, i32(-2147483648));

var<private> global1: f32 = -1386f;

var<private> global2: array<u32, 25>;

var<private> global3: Struct_1 = Struct_1(true, vec3<f32>(-728f, -733f, 839f), -748f);

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> bool {
    global2 = array<u32, 25>();
    var var_0 = vec3<bool>(true, true, true);
    global0 = _wgslsmith_mult_vec4_i32(u_input.b, -vec4<i32>(select(global4.a, -2147483647i, false), global0.x, -17847i, global0.x) | countOneBits(_wgslsmith_mult_vec4_i32(select(u_input.b, u_input.b, var_0.x), vec4<i32>(global0.x, 6245i, 0i, -34053i))));
    var var_1 = -global0.yx & global0.yw;
    var var_2 = u_input.b.yx;
    return true;
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec2<u32>, arg_3: vec2<f32>) -> Struct_4 {
    let var_0 = (vec4<u32>(15476u, ~_wgslsmith_clamp_u32(u_input.a, 0u, 47751u), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 147850u, 0u), ~vec3<u32>(53282u, u_input.a, 0u)), global4.c.x) ^ (vec4<u32>(u_input.a, u_input.a, 68759u, arg_2.x & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54156u, 25u)], 25u)]) | max(abs(vec4<u32>(global4.c.x, global4.c.x, global4.c.x, global2[_wgslsmith_index_u32(global4.c.x, 25u)])), ~vec4<u32>(20421u, 16528u, arg_2.x, 26230u)))) & min(vec4<u32>(countOneBits(~1u), _wgslsmith_mult_u32(29142u, min(70758u, u_input.a)), _wgslsmith_div_u32(1u, u_input.a | 31019u), min(abs(90196u), global4.c.x << (0u % 32u))), vec4<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_2.x, 30088u, arg_2.x), vec4<u32>(arg_2.x, 1u, u_input.a, 62668u))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), arg_2), _wgslsmith_mult_u32(37835u, 0u)), ~_wgslsmith_div_u32(global4.c.x, u_input.a), 4294967295u));
    let var_1 = Struct_5(-1000f, !(!all(vec3<bool>(true, arg_1, global3.a))));
    global4 = Struct_2(~abs(global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)))))), min(global4.c, vec2<u32>(0u >> (1u % 32u), u_input.a) | vec2<u32>(~63314u, 16311u & arg_2.x)), Struct_1(!((global4.c.x >> (32486u % 32u)) == ~global4.c.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global4.d.b * _wgslsmith_f_op_vec3_f32(vec3<f32>(1129f, var_1.a, global4.d.b.x) + vec3<f32>(global4.b, global3.c, 631f))), vec3<f32>(_wgslsmith_f_op_f32(max(global3.c, 577f)), _wgslsmith_f_op_f32(arg_3.x - 1267f), _wgslsmith_f_op_f32(global3.b.x * global4.d.b.x)), global3.a)), 1515f));
    return Struct_4(1u);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec3<f32>) -> u32 {
    var var_0 = max(arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(~global2[_wgslsmith_index_u32(arg_1.x, 25u)]), ~_wgslsmith_clamp_u32(4294967295u, 97091u, global2[_wgslsmith_index_u32(arg_0.x, 25u)]), ~15775u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.a, arg_0.x), arg_0)), ~(~vec4<u32>(29059u, arg_0.x, global4.c.x, 5105u) << (vec4<u32>(global4.c.x, global2[_wgslsmith_index_u32(37007u, 25u)], u_input.a, 44546u) % vec4<u32>(32u)))));
    let var_1 = func_3((!(global3.a || global4.d.a) | global4.d.a) == !(!func_2()), !global3.a, arg_1, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(abs(arg_2.x)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.x, global4.d.b.x))))));
    let var_2 = u_input.b;
    global3 = Struct_1(all(vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) * _wgslsmith_f_op_vec3_f32(max(arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global4.d.b, global4.d.b, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global4.d.c)))) * _wgslsmith_f_op_f32(floor(global3.b.x)))));
    var_0 = abs(arg_0.x);
    return firstLeadingBit(~(~max(global2[_wgslsmith_index_u32(global4.c.x, 25u)], ~var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec3<u32>(global2[_wgslsmith_index_u32(1u << (1u % 32u), 25u)], ~(global4.c.x & u_input.a), global2[_wgslsmith_index_u32(~(u_input.a | 1u), 25u)]) << (vec3<u32>(4294967295u, func_1(vec3<u32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 25u)]), max(global4.c, global4.c), _wgslsmith_f_op_vec3_f32(-global3.b)), u_input.a) % vec3<u32>(32u)));
    global4 = Struct_2(~(~global4.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d.c) * -777f)) + global4.b), global4.c, Struct_1(any(!vec4<bool>(global4.d.a, false, false, global3.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.b * vec3<f32>(global3.b.x, global4.d.b.x, global3.c)), _wgslsmith_f_op_vec3_f32(-global4.d.b))), 1131f));
    var var_1 = global4.c;
    var var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(75625u, 25u)], 44736u, firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 25u)]), var_0.x), select(firstLeadingBit(vec4<u32>(var_0.x, 1u, 4294967295u, 33963u) | vec4<u32>(var_1.x, 27095u, u_input.a, 0u)), ~(~vec4<u32>(var_1.x, var_1.x, var_0.x, 5829u)), true)), 7303u << (reverseBits(global2[_wgslsmith_index_u32(48398u, 25u)]) % 32u), var_1.x, var_1.x);
    var_1 = ~_wgslsmith_div_vec2_u32(~(var_0.xx & vec2<u32>(46140u, var_1.x)) | (global4.c << (_wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), var_2.xx) % vec2<u32>(32u))), reverseBits(_wgslsmith_mult_vec2_u32(~global4.c, vec2<u32>(41180u, var_0.x))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -410f);
    global0 = _wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b), ~u_input.b), -u_input.b);
    let var_4 = !(!select(!select(vec2<bool>(global3.a, false), vec2<bool>(false, true), vec2<bool>(true, global4.d.a)), vec2<bool>(true, true), vec2<bool>(!global4.d.a, !global4.d.a)));
    let var_5 = _wgslsmith_mod_u32(var_0.x & _wgslsmith_dot_vec2_u32(global4.c, vec2<u32>(var_2.x ^ global4.c.x, var_1.x)), reverseBits(_wgslsmith_clamp_u32(62082u, countOneBits(1u) & global4.c.x, ~u_input.a >> (abs(var_1.x) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(151f - global4.d.b.x) * _wgslsmith_f_op_f32(min(global4.b, -1535f))), -165f)), -582f)), 296f, vec3<f32>(_wgslsmith_f_op_f32(-2059f - global4.b), 371f, global4.b));
}

