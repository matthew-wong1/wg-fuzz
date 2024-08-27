struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 22>;

var<private> global2: vec2<i32> = vec2<i32>(9476i, -1i);

var<private> global3: array<vec4<bool>, 19>;

var<private> global4: vec2<u32> = vec2<u32>(34076u, 2366u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * global0.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -941f)))));
    global1 = array<u32, 22>();
    let var_1 = vec3<i32>(2147483647i, u_input.c, ~_wgslsmith_mult_i32(global2.x ^ -6058i, min(14707i, -global2.x)));
    global0 = Struct_3(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1155f * global0.b) * -292f) + -363f)), true, min(24736u ^ _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(10432u, 26586u, u_input.a.x), u_input.b), ~u_input.a.ywx), 0u), Struct_1(select(global0.e.a, vec2<u32>(global4.x, select(global0.e.a.x, global4.x, arg_3)), false), global2.x, u_input.c << (~select(1u, 4294967295u, arg_3) % 32u)));
    let var_2 = arg_2.x && true;
    return global0.d;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    var var_0 = true;
    global4 = _wgslsmith_mod_vec2_u32(vec2<u32>(firstLeadingBit(8009u), 4294967295u), vec2<u32>(func_3(~global4.x | 1u, vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), 211f, -1000f, -1000f), vec3<bool>(any(vec2<bool>(false, true)), global1[_wgslsmith_index_u32(arg_0, 22u)] >= 26519u, !global0.c), global0.c), 11670u));
    let var_1 = Struct_4(global0.c, global0.a.a, arg_2.x);
    var var_2 = vec3<u32>(var_1.b.x, ~func_3(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60566u, 22u)] << (arg_1.a.x % 32u), 22u)], vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-var_1.c), -753f, _wgslsmith_div_f32(1129f, var_1.c)), !vec3<bool>(global0.c, global0.c, true), select(any(vec4<bool>(false, false, false, global0.c)), true, global0.c)), reverseBits(global0.e.a.x));
    let var_3 = Struct_3(Struct_1(~_wgslsmith_sub_vec2_u32(var_2.yz, vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], 22u)], 22u)])) ^ vec2<u32>(var_1.b.x, global0.e.a.x >> (var_1.b.x % 32u)), global0.e.c, 4164i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + 671f)), all(select(vec2<bool>(!global0.c, true), !select(vec2<bool>(false, var_1.a), vec2<bool>(var_1.a, true), vec2<bool>(true, global0.c)), vec2<bool>(true, true))), 0u, Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, global0.d), vec2<u32>(global0.e.a.x, 4785u)), abs(u_input.b.zx), arg_1.a) << (~(vec2<u32>(55859u, global1[_wgslsmith_index_u32(1u, 22u)]) << (vec2<u32>(arg_0, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)), -global2.x, firstLeadingBit(firstLeadingBit(-arg_1.c))));
    return _wgslsmith_add_i32(1425i, u_input.c);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: i32, arg_3: vec4<i32>) -> vec2<i32> {
    global2 = min(arg_3.zx, ~(~arg_3.ww));
    global2 = abs(~vec2<i32>(reverseBits(~global0.e.c), -min(-34793i, 34179i)));
    global1 = array<u32, 22>();
    var var_0 = vec2<u32>(0u, _wgslsmith_add_u32(countOneBits(_wgslsmith_add_u32(arg_1, 42263u)), u_input.a.x | ~firstLeadingBit(arg_0.a.a.x)));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b)));
    return _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(~(~vec2<i32>(u_input.c, -2147483647i) >> (vec2<u32>(1u, 51945u) % vec2<u32>(32u))), arg_3.yx), arg_3.yy);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    global1 = array<u32, 22>();
    global1 = array<u32, 22>();
    var var_0 = Struct_4(!(_wgslsmith_mod_i32(-2147483647i ^ global0.a.b, global2.x >> (global1[_wgslsmith_index_u32(arg_3.d, 22u)] % 32u)) <= _wgslsmith_dot_vec3_i32(arg_0.wzw, arg_0.yyy)), _wgslsmith_sub_vec2_u32(arg_3.a.a, select(arg_3.e.a, select(global0.e.a, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.e.a.x, 22u)], 22u)], global4.x), vec2<bool>(arg_2, arg_3.c)) ^ abs(vec2<u32>(global0.a.a.x, global0.a.a.x)), !vec2<bool>(false, arg_2))), global0.b);
    let var_1 = Struct_3(arg_3.a, 605f, false, ~(~89452u), Struct_1(_wgslsmith_sub_vec2_u32(var_0.b, vec2<u32>(10000u, func_3(17496u, vec4<f32>(arg_3.b, -131f, 561f, -362f), vec3<bool>(false, global0.c, true), true))), -2147483647i, -_wgslsmith_dot_vec2_i32(arg_0.xw, _wgslsmith_div_vec2_i32(arg_1, vec2<i32>(-2147483647i, -2147483647i)))));
    var_0 = Struct_4(true, vec2<u32>(~43584u, ~(~(~1u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.b, global0.b) * global0.b), 837f)))));
    return Struct_1(vec2<u32>(select(reverseBits(_wgslsmith_div_u32(4294967295u, 12224u)), 12069u, _wgslsmith_f_op_f32(max(arg_3.b, global0.b)) >= 1000f), global4.x), global0.e.b, arg_0.x);
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: u32) -> i32 {
    var var_0 = -829f;
    let var_1 = func_5(-((max(vec4<i32>(1i, -38608i, 20720i, 14846i), vec4<i32>(u_input.c, -2147483647i, -1i, u_input.c)) | ~vec4<i32>(0i, u_input.c, u_input.c, -60173i)) & ~_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.c, 28320i, global0.a.b), vec4<i32>(global0.e.c, -50524i, -49700i, -1i))), (_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(u_input.c, -89501i) & vec2<i32>(0i, 0i)) | _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, global0.a.b) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), abs(vec2<i32>(-1i, 1i)))) ^ func_4(Struct_3(Struct_1(vec2<u32>(global4.x, global4.x), global0.a.c, u_input.c), _wgslsmith_f_op_f32(ceil(-409f)), arg_0.a || arg_0.a, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, arg_0.b.x), 22u)], global0.a), u_input.b.x, ~(u_input.c ^ -22339i), vec4<i32>(func_2(60753u, global0.a, vec3<f32>(arg_0.c, global0.b, arg_0.c)), _wgslsmith_mult_i32(global2.x, global2.x), 66042i >> (global1[_wgslsmith_index_u32(arg_0.b.x, 22u)] % 32u), global2.x)), all(vec4<bool>(!(global0.c || arg_0.a), false, global0.c, false)), Struct_3(global0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(107f)) + _wgslsmith_f_op_f32(ceil(global0.b))), !((global2.x == global2.x) & (arg_0.c != global0.b)), 1u, global0.e));
    global3 = array<vec4<bool>, 19>();
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -326f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)))));
    let var_2 = Struct_1(_wgslsmith_clamp_vec2_u32(select(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.x, 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(global4.x, 22u)], global4.x), vec2<u32>(arg_2, 52633u)), ~vec2<u32>(4294967295u, var_1.a.x)), vec2<u32>(26319u, 30120u), vec2<bool>(all(global3[_wgslsmith_index_u32(4294967295u, 19u)]), global0.c)), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 27151u), u_input.a.yx), _wgslsmith_div_u32(1u, 108563u)), min(_wgslsmith_add_u32(40329u, 1u), 1u)), reverseBits(_wgslsmith_add_vec2_u32(~vec2<u32>(0u, arg_2), _wgslsmith_sub_vec2_u32(vec2<u32>(63540u, global1[_wgslsmith_index_u32(32291u, 22u)]), u_input.a.zy)))), 19486i, u_input.c);
    return select(var_2.c, -2147483647i, global0.c) | ~(-(~(global2.x >> (4294967295u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(global0.c, global0.c, global0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1767f), _wgslsmith_f_op_f32(ceil(650f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1970f * global0.b) + _wgslsmith_f_op_f32(global0.b * global0.b)));
    let var_1 = 1180f;
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -11816i, global2.x, -10523i), vec4<i32>(global2.x, u_input.c, u_input.c, u_input.c), vec4<i32>(global2.x, u_input.c, u_input.c, -76714i)), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(global2.x, global2.x), i32(-1i) * -32727i, 0i, 50499i), reverseBits(-vec4<i32>(global0.e.c, global2.x, u_input.c, -36075i)))), _wgslsmith_add_i32((~0i >> (_wgslsmith_mod_u32(4294967295u, global0.a.a.x) % 32u)) | 10272i, i32(-1i) * -88779i), -1i, _wgslsmith_sub_i32(firstLeadingBit(u_input.c), -2147483647i));
    var var_3 = ~vec2<i32>(max(func_1(Struct_4(var_0.x, vec2<u32>(45842u, global1[_wgslsmith_index_u32(0u, 22u)]), var_1), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 12990u, 10537u), u_input.a), 9411u), i32(-1i) * -global2.x), -48568i);
    global2 = vec2<i32>(_wgslsmith_sub_i32(countOneBits(~0i), _wgslsmith_dot_vec2_i32(~(vec2<i32>(11888i, 12491i) >> (u_input.b.zz % vec2<u32>(32u))), var_2.wz)), max(global0.e.c, 1i));
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f), 985f)));
    var var_5 = -2147483647i;
    let var_6 = Struct_1(global0.e.a, countOneBits(var_3.x), var_2.x);
    var var_7 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wwy, -12874i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, var_1, global0.b), vec3<f32>(global0.b, 1132f, -633f), vec3<bool>(true, global0.c, global0.c)))))), _wgslsmith_mod_vec4_i32(abs(abs(var_2)), vec4<i32>(-global0.e.c, func_5(vec4<i32>(global2.x, 2147483647i, global2.x, global2.x), vec2<i32>(u_input.c, var_6.c), var_0.x, Struct_3(Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(var_6.a.x, 22u)], 33377u), global2.x, 1i), var_1, global0.c, 4294967295u, Struct_1(vec2<u32>(global0.a.a.x, 112304u), var_2.x, 1i))).b, -2147483647i, var_2.x)) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(var_6.a.x, 22u)], global0.e.a.x, 1u, global1[_wgslsmith_index_u32(global0.a.a.x, 22u)]), vec4<u32>(var_6.a.x, 45687u, global0.d, global0.a.a.x))), u_input.a), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~u_input.a, u_input.a), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b.x, 6823u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(global4.x, 22u)], 21625u, 0u, global0.d), u_input.a), ~u_input.a))));
}

