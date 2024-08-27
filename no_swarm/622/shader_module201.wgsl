struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, false, true), false, 31549i);

var<private> global1: array<vec4<f32>, 14>;

var<private> global2: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false));

var<private> global3: array<u32, 14> = array<u32, 14>(4294967295u, 44109u, 8003u, 0u, 40640u, 51774u, 4294967295u, 1u, 857u, 97537u, 7130u, 115311u, 44419u, 1u);

var<private> global4: vec4<f32> = vec4<f32>(286f, 688f, 372f, -909f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_0.b.x, 379f), arg_0.b.x, -1008f, _wgslsmith_f_op_f32(f32(-1f) * -792f)))));
    var var_0 = Struct_1(vec4<bool>(all(global0.a.wzw), !all(arg_0.a), arg_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global3[_wgslsmith_index_u32(42319u, 14u)], global3[_wgslsmith_index_u32(u_input.a, 14u)]) >> (vec3<u32>(u_input.a, 1u, global3[_wgslsmith_index_u32(u_input.a, 14u)]) % vec3<u32>(32u)), abs(vec3<u32>(u_input.b, u_input.a, 1u))) != firstTrailingBit(1u)), any(vec3<bool>(global0.b, false, global0.b)), ~(-arg_0.c.x));
    global2 = array<vec4<bool>, 4>();
    var var_1 = any(!vec2<bool>(false, arg_0.a.x));
    let var_2 = firstTrailingBit(min(vec4<i32>(-7601i, ~global0.c, ~var_0.c, _wgslsmith_clamp_i32(global0.c, 49782i, arg_0.c.x)) << (vec4<u32>(firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 14u)], 14u)]), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31468u, 14u)], 14u)], u_input.a, select(global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(9746u, 14u)], global0.b)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.c.wwy, arg_0.c.zwy), ~u_input.d, global0.c, var_0.c), arg_0.c)));
    return -arg_0.c;
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_2 {
    global4 = global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)];
    var var_0 = Struct_2(!global0.a.zz, _wgslsmith_f_op_vec3_f32(global4.xzz * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1077f, -568f, global4.x))), -func_3(Struct_2(!vec2<bool>(global0.b, true), vec3<f32>(global4.x, 413f, -1279f), select(vec4<i32>(global0.c, global0.c, u_input.d, u_input.c.x), vec4<i32>(global0.c, u_input.c.x, -15659i, u_input.c.x), true))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.x))), -1000f));
    var var_2 = Struct_2(!(!(!global0.a.zz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4.x, 344f, var_1))) * _wgslsmith_f_op_vec3_f32(global4.zyy * vec3<f32>(var_1, -935f, global4.x))))), var_0.c);
    var_2 = Struct_2(vec2<bool>(!any(select(vec3<bool>(var_2.a.x, true, true), global0.a.zwz, vec3<bool>(var_2.a.x, global0.a.x, arg_0))), all(global0.a.wx)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-424f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1011f, -939f))), 1271f, global0.a.x)), global4.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.x, 47827i, _wgslsmith_dot_vec4_i32(vec4<i32>(61003i, 1i, global0.c, var_2.c.x), select(vec4<i32>(1i, var_2.c.x, -2147483647i, u_input.d), vec4<i32>(-23753i, 1i, var_2.c.x, 1i), global0.a)), var_0.c.x), ~(vec4<i32>(1i, 0i, var_2.c.x, -30754i) >> (~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], arg_1, u_input.a) % vec4<u32>(32u)))));
    return Struct_2(!select(!global0.a.wx, vec2<bool>(!var_0.a.x, false), all(!global2[_wgslsmith_index_u32(21459u, 4u)])), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global4.wzy), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(var_0.b, _wgslsmith_f_op_vec3_f32(var_0.b + var_0.b))))), var_2.a.x)), var_2.c);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = arg_1.c.x;
    global0 = Struct_1(!select(vec4<bool>(true, !arg_1.a.x, !arg_1.a.x, true), !vec4<bool>(false, arg_0, arg_1.a.x, global0.b), select(vec4<bool>(arg_0, false, arg_1.a.x, false), global0.a, !vec4<bool>(arg_1.a.x, arg_0, arg_1.a.x, arg_0))), any(!vec4<bool>(false, all(global0.a.wwz), all(vec3<bool>(true, true, arg_0)), global0.a.x)), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d, global0.c, 64665i, 26192i), ~arg_1.c) >> (1u % 32u));
    var var_1 = arg_1.c.zx;
    global4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-341f, _wgslsmith_f_op_f32(arg_1.b.x - 1855f), _wgslsmith_f_op_f32(floor(-1872f)), _wgslsmith_f_op_f32(max(583f, global4.x)))))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.x, 1416f, _wgslsmith_f_op_f32(select(arg_1.b.x, _wgslsmith_f_op_f32(ceil(-1262f)), arg_1.b.x != 740f)), arg_1.b.x), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(11565u, u_input.a, ~54165u), 14u)]));
    var var_2 = vec4<i32>(abs(reverseBits(~(global0.c << (u_input.a % 32u)))), -32884i, ~2147483647i, var_0);
    return _wgslsmith_sub_vec3_u32(vec3<u32>(1u, max(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(1u, 14u)], global3[_wgslsmith_index_u32(~u_input.a, 14u)]), 4294967295u), u_input.b ^ 0u), _wgslsmith_add_vec3_u32(abs(vec3<u32>(30125u, global3[_wgslsmith_index_u32(0u, 14u)], u_input.b)), ~(vec3<u32>(1u, u_input.a, u_input.b) & vec3<u32>(1u, u_input.b, global3[_wgslsmith_index_u32(4294967295u, 14u)]))) | min(~reverseBits(vec3<u32>(22019u, global3[_wgslsmith_index_u32(u_input.b, 14u)], 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], 4294967295u, 79669u) << (vec3<u32>(global3[_wgslsmith_index_u32(73059u, 14u)], 19856u, 0u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 14u)], 1u, u_input.b), vec3<u32>(1u, 0u, u_input.b)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_1 {
    return Struct_1(select(vec4<bool>(arg_0.x, func_2(global0.a.x, _wgslsmith_dot_vec3_u32(arg_1, arg_1)).a.x, !global0.b, arg_0.x), !global2[_wgslsmith_index_u32(countOneBits(0u), 4u)], select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.x, !arg_0.x, arg_0.x, arg_0.x), arg_0)), _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(max(-570f, -2552f))) >= global4.x, global0.c);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> StorageBuffer {
    var var_0 = 0i;
    let var_1 = select(!(!global0.a), vec4<bool>(true, all(select(global0.a.zw, vec2<bool>(global0.a.x, true), !vec2<bool>(global0.a.x, global0.a.x))), global0.a.x, global0.b), global0.b);
    var var_2 = func_5(var_1, func_4(true, func_2(global0.a.x, ~0u)) << (_wgslsmith_div_vec3_u32(vec3<u32>(~1u, ~global3[_wgslsmith_index_u32(4294967295u, 14u)], _wgslsmith_clamp_u32(u_input.a, 91796u, global3[_wgslsmith_index_u32(62277u, 14u)])), ~max(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(1u, 108404u, 4294967295u))) % vec3<u32>(32u)));
    var var_3 = func_2(global0.b, 42423u);
    var var_4 = ~(global3[_wgslsmith_index_u32(48122u, 14u)] | _wgslsmith_sub_u32((global3[_wgslsmith_index_u32(66451u, 14u)] ^ u_input.b) & ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(65479u, 14u)], 14u)], 14u)], 41162u));
    return StorageBuffer(vec3<i32>(0i, _wgslsmith_add_i32(_wgslsmith_add_i32(countOneBits(-14052i), global0.c), var_3.c.x), u_input.c.x << (global3[_wgslsmith_index_u32(~(~12383u), 14u)] % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~u_input.c, global0.c);
}

