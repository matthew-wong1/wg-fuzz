struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, true, 794f, 1i);

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_2, 26>;

var<private> global3: array<Struct_1, 12>;

var<private> global4: array<bool, 27> = array<bool, 27>(true, true, false, false, false, false, false, true, false, false, true, true, false, true, false, false, false, false, true, true, false, true, true, true, true, true, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: bool) -> bool {
    global4 = array<bool, 27>();
    return !any(arg_0.wxz);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3, arg_3: vec3<u32>) -> vec2<u32> {
    global2 = array<Struct_2, 26>();
    let var_0 = ~global0.d;
    let var_1 = Struct_2(Struct_1(func_1(select(vec4<bool>(arg_0.x, arg_2.a, arg_0.x, global4[_wgslsmith_index_u32(0u, 27u)]), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(global0.a, arg_0.x, true, arg_2.a), vec4<bool>(true, arg_0.x, true, global0.a)), vec4<bool>(global4[_wgslsmith_index_u32(arg_2.d.x, 27u)], true, true, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, global0.c, -1000f, arg_2.c)), select(false, arg_0.x, false) | !arg_0.x), !any(select(vec4<bool>(arg_0.x, arg_2.a, true, false), vec4<bool>(true, arg_2.a, false, global0.b), false)), global0.c, arg_1), arg_3, max(u_input.a, u_input.a), vec4<bool>(arg_2.a, false, _wgslsmith_sub_u32(min(4294967295u, 1u), 0u) <= abs(arg_2.b), true));
    global1 = vec3<i32>(firstLeadingBit(global0.d), u_input.a.x ^ arg_1, -27349i);
    global2 = array<Struct_2, 26>();
    return ~var_1.b.zz;
}

fn func_2(arg_0: f32, arg_1: u32) -> vec4<u32> {
    let var_0 = Struct_3(any(!select(vec4<bool>(true, global0.a, global4[_wgslsmith_index_u32(arg_1, 27u)], false), vec4<bool>(false, false, global0.b, false), select(vec4<bool>(global0.b, true, global0.b, true), vec4<bool>(global0.a, true, false, global4[_wgslsmith_index_u32(1u, 27u)]), vec4<bool>(global0.a, true, false, global0.b)))), 7632u, _wgslsmith_f_op_f32(-2891f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global0.c, global0.c))))))), select(vec2<u32>(arg_1, arg_1), ~func_3(vec3<bool>(false, global4[_wgslsmith_index_u32(2705u, 27u)], global0.b), 1i & global1.x, Struct_3(global4[_wgslsmith_index_u32(arg_1, 27u)], arg_1, global0.c, vec2<u32>(arg_1, 20497u)), vec3<u32>(36410u, arg_1, arg_1)), func_1(!vec4<bool>(global0.b, true, false, global4[_wgslsmith_index_u32(26666u, 27u)]), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, -1899f, arg_0, global0.c), vec4<f32>(arg_0, arg_0, arg_0, global0.c))), any(!vec4<bool>(false, true, global0.b, true)))));
    var var_1 = ~_wgslsmith_add_u32(reverseBits(var_0.b), ~_wgslsmith_sub_u32(~23301u, min(var_0.d.x, 69555u)));
    var var_2 = Struct_2(Struct_1(func_1(select(!vec4<bool>(false, false, global0.a, global4[_wgslsmith_index_u32(var_0.b, 27u)]), vec4<bool>(true, false, true, true), global4[_wgslsmith_index_u32(arg_1, 27u)]), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -133f, var_0.c, -599f)))), true), true, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_div_f32(-289f, _wgslsmith_f_op_f32(min(1102f, arg_0)))), ~firstTrailingBit(~global0.d)), select(vec3<u32>(1u, var_0.d.x, ~reverseBits(4294967295u)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(1u, arg_1, var_0.b), vec3<u32>(arg_1, var_0.d.x, 1u)), vec3<u32>(125868u, var_0.b, 1u)), max(vec3<u32>(4294967295u, 4294967295u, var_0.b), vec3<u32>(arg_1, 0u, arg_1)) << ((vec3<u32>(24529u, 68009u, 19979u) << (vec3<u32>(arg_1, arg_1, arg_1) % vec3<u32>(32u))) % vec3<u32>(32u))), !select(!vec3<bool>(global4[_wgslsmith_index_u32(var_0.b, 27u)], global4[_wgslsmith_index_u32(arg_1, 27u)], var_0.a), vec3<bool>(global0.b, var_0.a, var_0.a), select(vec3<bool>(global0.a, var_0.a, true), vec3<bool>(global0.b, var_0.a, global0.b), true))), _wgslsmith_mult_vec3_i32(u_input.a, ~_wgslsmith_sub_vec3_i32(u_input.a, ~vec3<i32>(global1.x, 24931i, -35758i))), select(vec4<bool>(true, !(var_0.a | global4[_wgslsmith_index_u32(10492u, 27u)]), global4[_wgslsmith_index_u32(var_0.d.x, 27u)], true & all(vec2<bool>(true, true))), !(!vec4<bool>(true, global4[_wgslsmith_index_u32(1u, 27u)], false, var_0.a)), select(!vec4<bool>(true, global0.a, false, true), vec4<bool>(true, any(vec3<bool>(true, global0.a, false)), true, func_1(vec4<bool>(true, false, var_0.a, global0.a), vec4<f32>(arg_0, var_0.c, 1000f, 597f), true)), var_0.a)));
    let var_3 = (var_2.a.d >= _wgslsmith_dot_vec2_i32(~(-global1.xz), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(14971i, global1.x), vec2<i32>(global1.x, global1.x)), _wgslsmith_add_vec2_i32(u_input.a.xz, u_input.a.yx)))) | ((_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(global1.x, 420i, 7221i)), -var_2.c.x) != global1.x) & select(!(global4[_wgslsmith_index_u32(0u, 27u)] | true), var_0.a, true));
    let var_4 = vec2<i32>(-18230i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.d, _wgslsmith_mod_i32(var_2.c.x, -30691i), firstLeadingBit(-36065i), -global1.x), -_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, -2147483647i, -2147483647i, -1i), vec4<i32>(var_2.c.x, -1i, 33954i, var_2.a.d))), ~vec4<i32>(2147483647i, ~(-6369i), _wgslsmith_mult_i32(31379i, -9871i), firstTrailingBit(global1.x))));
    return ~(~countOneBits(~vec4<u32>(var_2.b.x, 16355u, arg_1, 35709u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 63372u, 64965u, 0u), vec4<u32>(13349u, var_2.b.x, 4294967295u, arg_1)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_div_i32(u_input.a.x, 18890i);
    var var_2 = Struct_3(func_1(!select(vec4<bool>(true, false, global0.b, global0.a), select(vec4<bool>(global0.b, true, global0.a, true), vec4<bool>(false, var_0.x, global0.a, global0.b), vec4<bool>(global0.a, global0.b, var_0.x, var_0.x)), !global4[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(921f, -551f, global0.c, -294f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.c, -1000f, 1000f, global0.c), vec4<f32>(global0.c, -1107f, global0.c, global0.c)))))), any(vec3<bool>(any(vec2<bool>(false, global0.a)), global0.c >= global0.c, true))), _wgslsmith_clamp_u32(abs(4294967295u), 17241u, ~(~_wgslsmith_div_u32(100574u, 29171u))), global0.c, vec2<u32>(4294967295u, ~(~(~7371u))));
    let var_3 = func_2(-1346f, ~var_2.d.x);
    global0 = global3[_wgslsmith_index_u32(~(4294967295u & (var_3.x >> (var_2.d.x % 32u))), 12u)];
    let var_4 = vec3<bool>(var_2.a, false, (_wgslsmith_dot_vec4_i32(-vec4<i32>(15254i, 33698i, 1i, global0.d), firstTrailingBit(vec4<i32>(global0.d, global1.x, -2147483647i, global1.x))) < ~_wgslsmith_dot_vec2_i32(global1.yz, global1.zy)) && !all(vec4<bool>(global0.b, var_0.x, var_0.x, global4[_wgslsmith_index_u32(5696u, 27u)])));
    var_2 = Struct_3(any(select(!select(vec2<bool>(var_0.x, var_0.x), var_0, var_0), select(!var_0, vec2<bool>(true, false), vec2<bool>(var_0.x, false)), !select(var_4.xx, var_4.zz, var_0))), var_3.x, _wgslsmith_f_op_f32(-var_2.c), select(vec2<u32>(var_2.b, 18188u), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_2.b), vec2<u32>(4294967295u, var_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c))) <= _wgslsmith_f_op_f32(-var_2.c)));
    global3 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.c, global0.c)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.c, global0.c, -1789f)))))) + vec3<f32>(-557f, global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.c, -977f)) * _wgslsmith_f_op_f32(541f * -618f)))), countOneBits(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, global1.x, global1.x) ^ ~29436i, min(_wgslsmith_sub_i32(28025i, 1i), u_input.a.x >> (var_2.d.x % 32u)))), var_2.d);
}

