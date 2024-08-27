struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1>;

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: Struct_1;

var<private> global4: array<vec3<u32>, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> vec4<u32> {
    global3 = Struct_1(reverseBits(vec3<u32>(_wgslsmith_mult_u32(u_input.a, global1.a.x), 1u, global1.c.x)) >> (~(~(global1.a ^ vec3<u32>(45231u, global3.c.x, global1.a.x))) % vec3<u32>(32u)), !(!select(!global3.b, global3.b, true)), min(min(global1.a.yy, _wgslsmith_div_vec2_u32(global1.c, global1.c)), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(global3.a.x, global3.c.x), vec2<u32>(global1.a.x, u_input.a) >> (global1.c % vec2<u32>(32u))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x - 924f)))), _wgslsmith_f_op_f32(-617f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -765f)))));
    global4 = array<vec3<u32>, 19>();
    let var_0 = u_input.c;
    var var_1 = abs(28645u);
    global2 = 1u;
    return vec4<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 19922u, u_input.a), vec3<u32>(1u, global3.a.x, 19457u)), vec3<u32>(4294967295u, 0u, global3.a.x)), firstTrailingBit(u_input.b), u_input.b, abs(global1.c.x));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>) -> vec2<f32> {
    let var_0 = countOneBits(~vec3<u32>(_wgslsmith_clamp_u32(0u, 0u, global3.a.x), 0u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(global1.a.x, u_input.a), u_input.a)));
    let var_1 = Struct_1(global1.a, vec3<bool>(u_input.c < reverseBits(abs(u_input.c)), (any(vec4<bool>(false, true, global3.b.x, global1.b.x)) | true) & (~88998u < _wgslsmith_dot_vec2_u32(global3.a.xz, vec2<u32>(1u, 33623u))), any(!(!vec3<bool>(true, true, global3.b.x)))), vec2<u32>(~global3.c.x, global3.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-669f, arg_0.x) * arg_0) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, global1.d.x) * vec2<f32>(780f, 1316f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.d.x, 1000f) * vec2<f32>(1000f, arg_0.x)))))));
    global2 = _wgslsmith_mult_u32(~global3.c.x, _wgslsmith_dot_vec4_u32(max(~(~global0[_wgslsmith_index_u32(arg_1.x, 1u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(37323u, var_1.c.x, 4294967295u, 0u), arg_1)), vec4<u32>(_wgslsmith_sub_u32(var_0.x, 4294967295u), ~1u, u_input.a, global1.a.x)));
    var var_2 = 0u;
    var var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(arg_1, reverseBits(vec4<u32>(~global1.c.x, var_1.a.x ^ var_0.x, ~u_input.b, global1.a.x ^ var_0.x))), var_1.c.x, var_1.c.x & arg_1.x);
    return global3.d;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: u32) -> vec3<u32> {
    global3 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.b, _wgslsmith_sub_u32(reverseBits(4294967295u), 1u), _wgslsmith_dot_vec4_u32(~global0[_wgslsmith_index_u32(14574u, 1u)], select(global0[_wgslsmith_index_u32(u_input.b, 1u)], global0[_wgslsmith_index_u32(4075u, 1u)], vec4<bool>(true, arg_2.x, false, true)))), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, arg_3) | global4[_wgslsmith_index_u32(4294967295u, 19u)], ~global1.a))), global1.b, ~vec2<u32>(global3.a.x, 70015u), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1104f, global3.d.x) * arg_0.xx))), ~(~func_2()))));
    let var_0 = Struct_1(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~((global3.c & vec2<u32>(49181u, 4294967295u)) | vec2<u32>(2264u, arg_3)), ~vec2<u32>(56091u, _wgslsmith_add_u32(arg_3, global3.a.x))), 19u)], !(!vec3<bool>(true, arg_2.x, false)), vec2<u32>(_wgslsmith_sub_u32(u_input.a, global1.a.x), _wgslsmith_div_u32(global1.a.x, _wgslsmith_clamp_u32(abs(arg_3), 0u, _wgslsmith_clamp_u32(u_input.a, 93132u, arg_3)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(1120f, -351f), ~vec4<u32>(global1.c.x, 1u, u_input.b, 48609u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global1.d.x)), _wgslsmith_f_op_f32(global1.d.x - -1432f)))));
    let var_1 = !((all(global3.b.xy) | false) && global3.b.x);
    var var_2 = Struct_1(global3.a, global1.b, global1.c, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(-var_0.d), select(abs(firstTrailingBit(vec4<u32>(41287u, var_0.c.x, 0u, 51370u))), vec4<u32>(firstTrailingBit(global3.c.x), 0u, 1240u, u_input.a ^ 0u), global1.b.x))));
    var var_3 = Struct_1(~var_0.a, !vec3<bool>(arg_2.x, false, !(true && var_0.b.x)), firstTrailingBit(vec2<u32>(firstLeadingBit(~1u), 0u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, -401f)));
    return vec3<u32>(~0u, 18537u, _wgslsmith_clamp_u32(0u, 1u, var_0.a.x));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(~max(u_input.b, arg_0.c.x | 36697u), 4294967295u & (~u_input.a >> (u_input.a % 32u)), 0u), _wgslsmith_div_u32(4294967295u, ~1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(~global1.a.x, func_1(vec4<f32>(global3.d.x, global1.d.x, arg_0.d.x, -2204f), vec2<i32>(u_input.c, 5002i), vec4<bool>(true, false, global3.b.x, global1.b.x), 1u).x, ~u_input.a), _wgslsmith_div_vec3_u32(min(global3.a, arg_0.a), ~vec3<u32>(u_input.a, 1u, global3.c.x))), firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_add_u32(global3.c.x, 18707u), 0u)));
    global3 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.d.x), global3.d.x)), 1000f, 1000f, 893f)));
    var var_2 = !vec4<bool>(true, false, global3.b.x & global1.b.x, global3.b.x);
    global0 = array<vec4<u32>, 1>();
    return Struct_1(arg_0.a, vec3<bool>(select(37778u, 44817u, arg_0.b.x) < _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(~86362u, 19u)], ~vec3<u32>(u_input.a, var_0.x, 4294967295u)), all(!arg_0.b), true), var_0.yy, vec2<f32>(-602f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + _wgslsmith_f_op_f32(-var_1.x))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    var var_0 = vec4<bool>(true, arg_0.b.x, false, true);
    let var_1 = arg_0;
    return var_1;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<f32>) -> StorageBuffer {
    var var_0 = firstLeadingBit(905u >> (arg_0.c.x % 32u)) >> ((~4294967295u | (min(~69146u, global1.a.x) ^ ~13323u)) % 32u);
    var var_1 = vec2<i32>(1i, reverseBits(_wgslsmith_add_i32(select(-15086i, arg_1.x, true), -5043i))) ^ select(abs(abs(vec2<i32>(24055i, arg_1.x))), vec2<i32>(arg_1.x, i32(-1i) * -33511i), func_5(Struct_1(arg_0.a, arg_0.b, func_5(Struct_1(vec3<u32>(u_input.a, 110682u, 4294967295u), vec3<bool>(true, true, false), arg_2.a.yz, vec2<f32>(-274f, 588f)), vec4<bool>(true, global3.b.x, global3.b.x, true), 2147483647i).a.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, global1.d.x))), select(vec4<bool>(true, true, true, arg_0.b.x), !vec4<bool>(false, true, global1.b.x, global1.b.x), !vec4<bool>(arg_2.b.x, true, global3.b.x, arg_2.b.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 9548i, arg_1.x), _wgslsmith_mod_vec3_i32(arg_1.zwy, vec3<i32>(-63845i, -20055i, u_input.c)))).b.zx);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1399f, 180f, global3.d.x, arg_0.d.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.d.x, global1.d.x, arg_3.x, -1297f)))))), vec4<f32>(_wgslsmith_f_op_f32(-global3.d.x), arg_3.x, _wgslsmith_f_op_f32(global3.d.x - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-394f + global3.d.x)))));
    global0 = array<vec4<u32>, 1>();
    return StorageBuffer(_wgslsmith_div_u32(~max(func_1(vec4<f32>(-332f, -162f, -429f, arg_2.d.x), vec2<i32>(u_input.c, 123604i), vec4<bool>(true, arg_2.b.x, global3.b.x, true), 4294967295u).x, global3.c.x), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(arg_2.a.x, 1u)], firstTrailingBit(global0[_wgslsmith_index_u32(0u << (global3.c.x % 32u), 1u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.x) + 727f))), _wgslsmith_div_u32(global1.c.x, abs(u_input.b)), _wgslsmith_sub_vec3_i32(-firstLeadingBit(arg_1.zyz) | ~vec3<i32>(2147483647i, var_1.x, var_1.x), arg_1.zyy | _wgslsmith_mod_vec3_i32(arg_1.yyw & arg_1.zyw, arg_1.ywy)), ~((arg_1.x << (abs(61538u) % 32u)) >> (_wgslsmith_mult_u32(min(43141u, 80753u), 28232u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec3<u32>(8233u, countOneBits(4294967295u), 44454u), vec3<bool>(global1.b.x & global1.b.x, true, true), global1.a.zy, global3.d);
    var var_0 = true;
    global4 = array<vec3<u32>, 19>();
    global2 = ~countOneBits(~_wgslsmith_div_u32(global1.a.x >> (0u % 32u), _wgslsmith_clamp_u32(u_input.a, global1.a.x, u_input.b)));
    var var_1 = !global1.b.xy;
    let var_2 = -(vec2<i32>(0i, i32(-1i) * -12351i) & select(vec2<i32>(-1i) * -vec2<i32>(-12525i, -1i), abs(vec2<i32>(9040i, u_input.c)), var_1.x));
    let x = u_input.a;
    s_output = func_6(func_5(func_4(Struct_1(func_1(vec4<f32>(global1.d.x, global3.d.x, global1.d.x, -620f), vec2<i32>(u_input.c, u_input.c), vec4<bool>(global1.b.x, true, var_1.x, false), u_input.a), select(global1.b, global3.b, vec3<bool>(true, global3.b.x, global1.b.x)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 22712u), global3.c), _wgslsmith_div_vec2_f32(vec2<f32>(443f, global3.d.x), global1.d))), vec4<bool>(reverseBits(0u) != (global1.c.x & global1.c.x), true, true, global3.b.x), abs(reverseBits(u_input.c)) << (_wgslsmith_sub_u32(abs(4025u), global3.a.x) % 32u)), ~(-vec4<i32>(~(-15127i), -var_2.x, u_input.c, u_input.c)), func_5(Struct_1(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-424f, -804f, global3.d.x, -289f) - vec4<f32>(1168f, global3.d.x, 792f, -570f)), var_2, !vec4<bool>(true, global3.b.x, global3.b.x, false), max(19845u, global3.c.x)), !(!vec3<bool>(false, global1.b.x, global3.b.x)), func_4(Struct_1(global1.a, vec3<bool>(global3.b.x, false, true), global1.c, global3.d)).c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, -1483f))), vec4<bool>(-1i >= _wgslsmith_add_i32(-10720i, var_2.x), true, false, global1.b.x), _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, 23948i, u_input.c), vec3<i32>(u_input.c, -69658i, u_input.c)), max(firstTrailingBit(vec3<i32>(1i, var_2.x, u_input.c)), vec3<i32>(-2147483647i, var_2.x, 107625i) ^ vec3<i32>(u_input.c, var_2.x, var_2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(379f, 1272f) + global1.d)))));
}

