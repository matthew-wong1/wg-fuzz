struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14>;

var<private> global1: array<vec4<f32>, 1>;

var<private> global2: array<vec2<f32>, 14>;

var<private> global3: Struct_2 = Struct_2(91929u, Struct_1(-2803i, vec4<u32>(0u, 4715u, 109632u, 17890u), true));

var<private> global4: array<u32, 31> = array<u32, 31>(59043u, 4294967295u, 1u, 14354u, 1u, 4294967295u, 4294967295u, 8108u, 4294967295u, 0u, 8016u, 46522u, 61483u, 25239u, 4294967295u, 0u, 0u, 7939u, 20706u, 1u, 0u, 60262u, 1u, 33631u, 52774u, 1u, 48021u, 1u, 57802u, 4294967295u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_4 {
    let var_0 = _wgslsmith_add_vec4_i32(abs(~((vec4<i32>(1i, arg_0, arg_1, -1i) << (vec4<u32>(0u, 0u, global4[_wgslsmith_index_u32(3687u, 31u)], global4[_wgslsmith_index_u32(15175u, 31u)]) % vec4<u32>(32u))) >> (~global3.b.b % vec4<u32>(32u)))), abs(vec4<i32>(-1i) * -vec4<i32>(0i, 35155i, arg_1, 23990i)));
    let var_1 = false;
    var var_2 = select(global4[_wgslsmith_index_u32(1u, 31u)], 1u, global3.b.b.x > ~u_input.a);
    let var_3 = global3.a;
    var_2 = 1u;
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 650f) * _wgslsmith_f_op_f32(-461f + 381f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f - -544f))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> bool {
    let var_0 = func_2(_wgslsmith_add_i32(arg_3, ~(i32(-1i) * -38134i)), countOneBits(1i));
    global3 = Struct_2(global4[_wgslsmith_index_u32(~(firstLeadingBit(min(1720u, 68738u)) | (1u >> (global4[_wgslsmith_index_u32(1u, 31u)] % 32u))), 31u)], arg_1.b);
    global3 = Struct_2(global3.a, Struct_1(arg_1.b.a, ~(~vec4<u32>(arg_1.a, 11073u, 23274u, 4294967295u)), true));
    var var_1 = select(vec4<bool>(true, all(vec2<bool>(global3.b.c, true)), true, any(!arg_0)), !(!(!vec4<bool>(false, global3.b.c, true, arg_0.x))), true);
    let var_2 = Struct_3(arg_1, arg_0.x, var_0.a, Struct_1(1i, ~arg_1.b.b, any(arg_0.xx) || true), abs(-42822i));
    return arg_2 != false;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(52830u, 1u), _wgslsmith_mult_u32(1u, 30910u));
    let var_1 = vec2<i32>(_wgslsmith_div_i32(arg_0.a.b.a, max(~2147483647i, -34797i)), 21030i);
    var var_2 = Struct_2(101234u, Struct_1(-2147483647i, global3.b.b, arg_0.b));
    let var_3 = countOneBits(44711i) | ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.e, -1i, var_1.x, arg_1.b.a), global0[_wgslsmith_index_u32(var_2.b.b.x, 14u)], global0[_wgslsmith_index_u32(arg_0.a.a, 14u)]), select(vec4<i32>(arg_0.e, arg_0.d.a, -5699i, arg_0.e), vec4<i32>(-2862i, arg_1.b.a, 2147483647i, var_2.b.a), arg_1.b.c)), global0[_wgslsmith_index_u32(firstTrailingBit(88936u << (u_input.a % 32u)), 14u)]);
    let var_4 = ~global3.a != min(global3.a, 1u);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(38802u, 1u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.c, arg_0.c, 1825f, 1019f))), global1[_wgslsmith_index_u32(33829u >> (global3.b.b.x % 32u), 1u)])))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, 1732f, 435f, arg_0.c)), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.a, 1u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-111f, _wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_f_op_f32(-arg_0.c), func_2(arg_1.b.a, global3.b.a).a) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(global3.a, 1u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(-vec3<i32>(-2147483647i, -1i, max(8887i, -14750i)));
    global1 = array<vec4<f32>, 1>();
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-718f + 1047f), -716f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1419f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-281f + -741f)))))) > _wgslsmith_div_f32(1308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(~(u_input.a << (global3.b.b.x % 32u)), Struct_1(30983i, global3.b.b, func_1(vec3<bool>(var_1, false, false), Struct_2(6334u, global3.b), global3.b.c, 0i))), false, -438f, Struct_1(-36i, ~global3.b.b ^ ~global3.b.b, true), global3.b.a), Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~(~global3.b.b.x)), 31u)], global3.b)));
    let var_3 = !vec3<bool>(false, all(select(!vec2<bool>(var_1, var_1), vec2<bool>(false, true), var_2.x > 581f)), !(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(1u, 31u)], 1u) < (4294967295u >> (1u % 32u))));
    global4 = array<u32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.zyx), var_2.wxw, var_1)), _wgslsmith_f_op_f32(f32(-1f) * -2595f), global3.b.b.x, _wgslsmith_f_op_vec3_f32(ceil(var_2.yzx)));
}

