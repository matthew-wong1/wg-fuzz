struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: i32;

var<private> global2: array<vec2<f32>, 9>;

var<private> global3: array<vec2<i32>, 11>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    let var_0 = -arg_1.a & ~(-arg_2.a);
    global0 = ~abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(35346u, 1u, 0u, global0.x), vec4<u32>(global0.x, global0.x, 53365u, 4294967295u)), min(1u, 70186u), global0.x));
    global3 = array<vec2<i32>, 11>();
    global0 = abs(_wgslsmith_div_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global0.x, 1u), vec3<u32>(105104u, global0.x, global0.x), vec3<u32>(global0.x, global0.x, global0.x)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 1u, global0.x), vec3<u32>(global0.x, global0.x, global0.x)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, global0.x, 46100u), vec3<u32>(0u, global0.x, global0.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(63401u, 1u, 78357u), reverseBits(vec3<u32>(global0.x, 1u, global0.x))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1118f, 807f) - -729f)))) - -874f);
    return _wgslsmith_sub_i32(~arg_0, u_input.b.x);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(~arg_1, ~global0.x)), 9u)]);
    global1 = _wgslsmith_mod_i32(-(_wgslsmith_dot_vec3_i32(u_input.b.yxx, u_input.b.wxz) ^ firstLeadingBit(_wgslsmith_clamp_i32(u_input.a, arg_2, 0i))), min(func_3(-1i, Struct_2(_wgslsmith_mult_i32(arg_2, -2147483647i)), Struct_2(arg_2)), arg_2));
    global1 = _wgslsmith_dot_vec3_i32(reverseBits(-u_input.b.xwx), ~vec3<i32>(-_wgslsmith_sub_i32(u_input.a, arg_2), arg_2, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.a, 0i, 1i, u_input.a))));
    global1 = ~arg_2 & max(18544i, (arg_2 << (0u % 32u)) ^ reverseBits(2147483647i >> (arg_1 % 32u)));
    var var_1 = Struct_3(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true), Struct_2(_wgslsmith_div_i32(arg_2, ~(-14257i) & arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - arg_0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-320f - _wgslsmith_f_op_f32(step(1745f, arg_0))) - 178f)));
    return ~(~abs(global0.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = ~firstTrailingBit(global0.x);
    var_0 = global0.x;
    var var_1 = Struct_1(true, vec4<u32>(func_2(1000f, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global0.x, 4294967295u, 34682u), vec4<u32>(56742u, 1u, global0.x, 66885u)), -u_input.b.x), (global0.x ^ ~global0.x) << (((global0.x ^ global0.x) >> ((37953u << (global0.x % 32u)) % 32u)) % 32u), 53947u, func_2(arg_0.x, abs(global0.x), u_input.b.x)));
    let var_2 = ~1u;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(691f, arg_0.x, -1060f, arg_0.x) * vec4<f32>(971f, -1365f, -388f, -1220f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-811f, -138f, -1215f, arg_0.x))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-295f, 508f, arg_0.x, arg_0.x)))), !(!vec4<bool>(var_1.a, false, var_1.a, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(450f, arg_0.x, arg_0.x, -249f) - vec4<f32>(arg_0.x, 667f, arg_0.x, 671f)))))));
    return Struct_1(var_1.a, select(firstLeadingBit(vec4<u32>(1u, 0u & var_2, 1u & global0.x, var_1.b.x)), _wgslsmith_add_vec4_u32(var_1.b, ~var_1.b), !select(true, all(vec4<bool>(var_1.a, false, true, var_1.a)), true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    global0 = ~min(~(~firstLeadingBit(arg_0.b.yzz)), vec3<u32>(1u, 18890u, firstLeadingBit(arg_0.b.x >> (37498u % 32u))));
    global3 = array<vec2<i32>, 11>();
    var var_0 = arg_0.a;
    global0 = abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.b.zwy, ~(vec3<u32>(global0.x, 104707u, arg_0.b.x) ^ vec3<u32>(87927u, 22120u, 4294967295u))), arg_0.b.zxw, (firstTrailingBit(vec3<u32>(0u, arg_0.b.x, global0.x)) | (vec3<u32>(arg_0.b.x, 4294967295u, arg_0.b.x) | vec3<u32>(7571u, 36742u, 10108u))) ^ arg_0.b.wxz));
    let var_1 = Struct_2(-11917i);
    return _wgslsmith_f_op_f32(ceil(-691f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-401f, -410f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(vec2<f32>(-184f, -982f), Struct_2(u_input.b.x), vec4<i32>(u_input.a, u_input.a, 1i, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(707f, 155f)))))), -2044f);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(1000f - 2022f), -411f, var_0.x, _wgslsmith_f_op_f32(select(603f, 319f, true)));
    var var_1 = ~vec4<i32>(countOneBits(_wgslsmith_dot_vec4_i32(u_input.b, firstTrailingBit(vec4<i32>(u_input.b.x, u_input.a, -1i, u_input.a)))), u_input.a, _wgslsmith_add_i32(25265i, _wgslsmith_add_i32(u_input.b.x ^ -19890i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x))), _wgslsmith_clamp_i32(min(u_input.b.x, 18027i), ~u_input.a, u_input.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 63317u, 10878u, global0.x) ^ vec4<u32>(0u, global0.x, 16328u, global0.x), vec4<u32>(0u, 0u, global0.x, 65u) ^ vec4<u32>(global0.x, global0.x, 4294967295u, 3675u)) % 32u));
    var var_2 = var_0.x;
    let var_3 = 0i;
    let var_4 = select(!select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), false), vec2<bool>(true, true), func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(global2[_wgslsmith_index_u32(17422u, 9u)])), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(9779u, 9u)]), vec2<bool>(true, true))), Struct_2(_wgslsmith_dot_vec2_i32(u_input.b.zw, vec2<i32>(var_3, u_input.a))), u_input.b).a && !(!func_1(global2[_wgslsmith_index_u32(global0.x, 9u)], Struct_2(var_1.x), u_input.b).a));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-834f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(33612u, -2147483647i);
}

