struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 31>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 18633u, 50172u, 1u);

var<private> global3: bool;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> bool {
    global4 = Struct_2(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(624f * 304f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(607f))))));
    var var_0 = Struct_1(arg_1.a | true, 1u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4.a.c.x, -1629f, arg_1.c.x), vec3<f32>(global4.a.c.x, arg_1.c.x, global4.a.c.x)))) * vec3<f32>(_wgslsmith_f_op_f32(step(arg_1.c.x, 1000f)), _wgslsmith_f_op_f32(ceil(-675f)), _wgslsmith_f_op_f32(-global4.b))))));
    global1 = array<Struct_2, 31>();
    global3 = true;
    var var_1 = global2.xxz;
    return all(vec3<bool>(false, false, !(!all(vec2<bool>(arg_1.a, var_0.a)))));
}

fn func_2() -> Struct_1 {
    global4 = Struct_2(global4.a, -389f);
    var var_0 = all(select(vec4<bool>(true, true, true, true), !vec4<bool>(!global4.a.a, global4.a.a, true, func_3(-8949i, global4.a, global2.x)), !vec4<bool>(true, global4.a.a, true, global4.a.a)));
    let var_1 = select(!select(vec3<bool>(global4.a.a, true, !global4.a.a), select(select(vec3<bool>(false, global4.a.a, false), vec3<bool>(false, true, global4.a.a), false), vec3<bool>(true, true, true), global4.a.a), global4.a.a), select(!select(vec3<bool>(global4.a.a, true, false), select(vec3<bool>(global4.a.a, global4.a.a, false), vec3<bool>(global4.a.a, false, false), false), true), select(vec3<bool>(any(vec2<bool>(global4.a.a, false)), !global4.a.a, true), !select(vec3<bool>(false, false, false), vec3<bool>(global4.a.a, false, false), global4.a.a), !vec3<bool>(true, true, global4.a.a)), global4.a.a), !select(vec3<bool>(true, false, global4.a.a), vec3<bool>(!global4.a.a, global4.a.a, -830f < global4.a.c.x), !(!global4.a.a)));
    var var_2 = (_wgslsmith_add_i32(~20903i >> (_wgslsmith_div_u32(1u, global2.x) % 32u), 1i) << (u_input.a.x % 32u)) << (~(~u_input.a.x) % 32u);
    global1 = array<Struct_2, 31>();
    return global4.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = !arg_2.a.a || all(select(vec4<bool>(func_2().a, !arg_2.a.a, arg_2.a.a, any(vec3<bool>(arg_0.a, false, false))), !select(vec4<bool>(false, arg_2.a.a, global4.a.a, false), vec4<bool>(arg_0.a, false, false, false), vec4<bool>(false, arg_2.a.a, true, false)), !(!arg_2.a.a)));
    let var_1 = global1[_wgslsmith_index_u32(select(~u_input.a.x, max(34851u, ~arg_0.b << (1u % 32u)), true) | 1u, 31u)];
    global1 = array<Struct_2, 31>();
    var var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(select(_wgslsmith_mult_vec3_u32(global2.xwz, global2.zwy), vec3<u32>(u_input.a.x, 0u, 1u) & global2.yyx, vec3<bool>(true, true, true)), reverseBits(global2.ywy)), global2.xwz & global2.www), global2.zww);
    var var_3 = ~arg_1;
    return Struct_1(var_1.a.a, 11638u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.a.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.a.c) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1151f, global4.b, -506f) - global4.a.c)), !vec3<bool>(var_1.a.a, true, true)))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(func_2(), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-1i, 1i, -34423i) << (~global2.x % 32u), countOneBits(_wgslsmith_div_i32(-2147483647i, 2147483647i))), vec2<i32>(_wgslsmith_div_i32(-1i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-44391i, -1i), vec2<i32>(-2147483647i, -1i))) << (firstTrailingBit(u_input.a) % vec2<u32>(32u))), Struct_2(func_2(), global4.a.c.x));
    global4 = global1[_wgslsmith_index_u32(~1u, 31u)];
    global0 = u_input.a.x == firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(66281u, 1u), vec2<u32>(u_input.a.x, 82665u) ^ vec2<u32>(18964u, global2.x)), max(~vec2<u32>(1u, var_0.b), ~vec2<u32>(46381u, 0u))));
    let var_1 = Struct_1(!(!global4.a.a), 24606u, global4.a.c);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -1936f, var_0.c.x, 1525f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, global4.b, global4.a.c.x, 618f))))))));
    return global1[_wgslsmith_index_u32(firstTrailingBit(~10874u), 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global3 = global4.a.a;
    let var_1 = _wgslsmith_dot_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(global2.x, 1u), ~1u, abs(66678u)), vec3<u32>(max(global4.a.b, 4294967295u), global2.x, ~u_input.a.x)), firstTrailingBit(vec3<u32>(global4.a.b, 4294967295u, 0u))), countOneBits(global2.zxw));
    global4 = func_1();
    var var_2 = true;
    let var_3 = any(!vec4<bool>(select(func_3(-1i, var_0.a, 1u), true, true), var_1 > _wgslsmith_mult_u32(var_1, var_0.a.b), global4.a.a, ~27366u >= _wgslsmith_div_u32(u_input.a.x, u_input.a.x)));
    var_2 = var_0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec3_i32(~vec3<i32>(49497i, 24348i, 1i), abs(vec3<i32>(1i, -1i, 2147483647i))) >> ((vec3<u32>(~49607u, ~global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(67703u, 92728u), global2.zz)) | (global2.xwx & (global2.wwx | vec3<u32>(global4.a.b, global2.x, global2.x)))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c.x * global4.a.c.x) * -1121f)) * var_0.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(284f, -182f)) + var_0.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -812f) * _wgslsmith_f_op_f32(-1000f - var_0.a.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.c.x), _wgslsmith_f_op_f32(-var_0.b))))));
}

