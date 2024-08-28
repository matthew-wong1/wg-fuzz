struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19>;

var<private> global1: bool = false;

var<private> global2: vec2<f32> = vec2<f32>(-411f, -1000f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = true;
    global0 = array<vec2<bool>, 19>();
    let var_1 = Struct_2(arg_0.a, firstTrailingBit(~(~vec3<i32>(-6139i, u_input.a.x, 26277i))), arg_0.c);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global2.x)))))), _wgslsmith_f_op_f32(select(777f, var_1.c.a, true)), _wgslsmith_f_op_f32(975f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_1.c.a))))));
    return ~11535u;
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(12844u, 50465u >> (arg_0.x % 32u), 1u, arg_0.x << (arg_0.x % 32u)), vec4<u32>(58197u, _wgslsmith_mod_u32(40121u, 16973u) >> (1u % 32u), arg_0.x, max(func_3(Struct_2(vec2<bool>(false, false), u_input.a, Struct_1(294f, vec2<bool>(true, true), vec2<bool>(false, true)))), arg_0.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(min(arg_0.x, 4294967295u), arg_0.x), min(arg_0.x, firstTrailingBit(29586u)), arg_0.x, ~(~arg_0.x)), vec4<u32>(arg_0.x, arg_0.x, min(~arg_0.x, 0u), arg_0.x)));
    var_0 = vec4<u32>(~arg_0.x, var_0.x, ~4294967295u, ~(((arg_0.x << (var_0.x % 32u)) ^ (arg_0.x & 48249u)) | _wgslsmith_dot_vec3_u32(var_0.wyz, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0.x, 11966u), var_0.xxz))));
    global2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) + vec2<f32>(564f, global2.x)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1237f, global2.x))), vec2<f32>(_wgslsmith_f_op_f32(step(-1941f, 554f)), 554f)))));
    let var_1 = Struct_2(!select(global0[_wgslsmith_index_u32(4294967295u, 19u)], vec2<bool>(true, false), global0[_wgslsmith_index_u32(abs(firstLeadingBit(1u)), 19u)]), u_input.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -987f) - _wgslsmith_f_op_f32(f32(-1f) * -165f))), vec2<bool>(!all(global0[_wgslsmith_index_u32(arg_0.x, 19u)]), select(false, false, false) != true), select(vec2<bool>(true, u_input.a.x <= u_input.a.x), global0[_wgslsmith_index_u32(arg_0.x, 19u)], !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, arg_0.x), 19u)])));
    var var_2 = 1271f;
    return Struct_2(global0[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a, Struct_1(_wgslsmith_div_f32(247f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_1.c.a))))), vec2<bool>(var_1.a.x, !(!var_1.a.x)), select(vec2<bool>(var_0.x > 34253u, !var_1.c.c.x), global0[_wgslsmith_index_u32(~arg_0.x, 19u)], global0[_wgslsmith_index_u32(var_0.x, 19u)])));
}

fn func_1() -> i32 {
    let var_0 = 7956u;
    let var_1 = func_2(vec2<u32>(1u, firstTrailingBit(~var_0)));
    let var_2 = !var_1.c.c;
    var var_3 = -_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_div_i32(17271i, _wgslsmith_dot_vec2_i32(vec2<i32>(-5147i, u_input.a.x), vec2<i32>(-22922i, var_1.b.x))), ~1i, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b.x, ~0i, countOneBits(var_1.b.x), -1846i), -vec4<i32>(var_1.b.x, -2147483647i, -18107i, u_input.a.x)));
    var var_4 = reverseBits(~max(~vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(var_0, var_0, var_0)) >> (select(vec3<u32>(var_0, 27461u, 84382u), vec3<u32>(var_0, 45705u, 0u), vec3<bool>(true, false, true)) % vec3<u32>(32u))));
    return ~var_3.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<i32>, arg_3: i32) -> Struct_2 {
    let var_0 = abs(~(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, 0u, 78434u, 57535u), vec4<u32>(1u, 43161u, 42116u, 3354u), vec4<bool>(false, false, false, true)), vec4<u32>(1u, 1u, 1u, 1u))));
    global1 = (!func_2(var_0.xw >> (var_0.yw % vec2<u32>(32u))).a.x && all(vec3<bool>(global2.x > arg_0.x, true, true))) & (func_1() >= ~(firstTrailingBit(arg_1) << (_wgslsmith_dot_vec2_u32(var_0.xy, vec2<u32>(var_0.x, var_0.x)) % 32u)));
    let var_1 = var_0.xwz;
    let var_2 = select(true, false, false);
    global2 = arg_0.zw;
    return Struct_2(func_2(var_0.ww).c.c, firstLeadingBit(_wgslsmith_sub_vec3_i32(u_input.a, firstTrailingBit(~u_input.a))), func_2(var_1.yy).c);
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec2<f32>) -> vec2<i32> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 444f, 655f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-361f, arg_3.x, -387f, global2.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1155f, arg_3.x, arg_3.x, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(689f, arg_3.x, -382f, global2.x)), var_0 || arg_2.a.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-2289f, 501f)), _wgslsmith_f_op_f32(-arg_2.c.a), _wgslsmith_f_op_f32(round(arg_2.c.a)), arg_2.c.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-203f, arg_2.c.a, 1614f, arg_3.x) * vec4<f32>(arg_3.x, arg_3.x, arg_2.c.a, arg_3.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.x, 626f, 462f))));
    var var_2 = arg_2.c;
    let var_3 = func_2(~(_wgslsmith_add_vec2_u32(~vec2<u32>(arg_0, arg_0), ~vec2<u32>(4294967295u, arg_0)) | vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 42228u), vec2<u32>(0u, 1u)))));
    var var_4 = reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(19569u, ~_wgslsmith_add_u32(arg_0, arg_0)), abs(vec2<u32>(73532u, arg_0)), vec2<u32>(~_wgslsmith_sub_u32(arg_0, arg_0), max(arg_0, 37734u) >> (arg_0 % 32u))));
    return vec2<i32>(_wgslsmith_div_i32(func_2(vec2<u32>(1u, 1u)).b.x, 41026i), ~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(53379u, countOneBits(~(~0u)), 31326u, min(1u, _wgslsmith_mod_u32(~35627u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 2035u, 4294967295u, 52418u), vec4<u32>(22461u, 1u, 31330u, 0u)))));
    global0 = array<vec2<bool>, 19>();
    var var_1 = -u_input.a.zz;
    var_1 = _wgslsmith_mult_vec2_i32(func_5(var_0.x, u_input.a, func_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 453f, global2.x) * vec4<f32>(1022f, global2.x, 200f, -1000f)))), min(u_input.a.x ^ u_input.a.x, max(16404i, var_1.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-2147483647i, 51111i, var_1.x)), 2147483647i, func_1(), var_1.x), var_1.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) - vec2<f32>(-746f, global2.x)) - vec2<f32>(global2.x, -1046f))))), ~firstLeadingBit(select(vec2<i32>(var_1.x, var_1.x), vec2<i32>(20111i, var_1.x), true) ^ _wgslsmith_mod_vec2_i32(u_input.a.yy, vec2<i32>(2147483647i, -60301i))));
    var_1 = -_wgslsmith_sub_vec2_i32(u_input.a.yx, u_input.a.zz);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(global2.x * global2.x), vec2<bool>(true, true), global0[_wgslsmith_index_u32(~var_0.x & _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(1u, var_0.x))), 19u)]);
    let var_3 = vec2<u32>(var_0.x, _wgslsmith_div_u32(var_0.x | var_0.x, 1u));
    var_0 = select(~countOneBits(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(4294967295u, 23809u, 80133u, var_3.x)), reverseBits(vec4<u32>(var_3.x, 1u, 1u, 19499u)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 68771u, 25831u, var_3.x ^ 21188u), vec4<u32>(var_0.x, var_3.x, 4294967295u, var_0.x) << (~vec4<u32>(var_0.x, 30308u, var_3.x, var_3.x) % vec4<u32>(32u))), ~((vec4<u32>(0u, var_0.x, var_3.x, 32013u) << (vec4<u32>(4294967295u, var_3.x, var_0.x, 1773u) % vec4<u32>(32u))) ^ ~vec4<u32>(4294967295u, var_3.x, var_0.x, var_3.x)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.x, var_0.x, 28901u, 65991u), vec4<u32>(26185u, var_3.x, 69530u, var_3.x)), vec4<u32>(13281u, var_3.x, 0u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(45459u, 0u, var_0.x, var_0.x), vec4<u32>(4294967295u, 17955u, 1u, var_3.x)))), any(!vec4<bool>(false, var_2.c.x, var_2.c.x, var_2.c.x)));
    let var_4 = 81770u | _wgslsmith_sub_u32(_wgslsmith_mod_u32(~1u, 56726u ^ _wgslsmith_clamp_u32(3966u, 41643u, var_0.x)), ~var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global2.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(global2.x + -453f)))), vec3<i32>(_wgslsmith_sub_i32(func_5(0u, vec3<i32>(-1i, 34909i, var_1.x), func_2(vec2<u32>(var_0.x, var_4)), vec2<f32>(var_2.a, 1040f)).x, 0i), 0i, var_1.x), 847f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x)), -9638i);
}

