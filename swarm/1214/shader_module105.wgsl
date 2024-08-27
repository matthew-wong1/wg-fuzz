struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3>;

var<private> global1: vec3<i32> = vec3<i32>(1i, -1i, 2147483647i);

var<private> global2: array<vec3<u32>, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global1 = _wgslsmith_clamp_vec3_i32(max(reverseBits(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 33804i, 0i), vec3<i32>(global1.x, global1.x, global1.x)))), ~(~(vec3<i32>(global1.x, global1.x, global1.x) ^ vec3<i32>(global1.x, 36680i, -1i)))), ~_wgslsmith_add_vec3_i32(~firstLeadingBit(vec3<i32>(global1.x, global1.x, global1.x)), -vec3<i32>(global1.x, global1.x, global1.x) & ~vec3<i32>(global1.x, global1.x, -1i)), ~firstLeadingBit((vec3<i32>(global1.x, -36327i, 0i) ^ vec3<i32>(-21811i, 30290i, global1.x)) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(14362i, global1.x, global1.x), vec3<i32>(-2147483647i, -40766i, global1.x))));
    let var_0 = all(select(arg_0.xzz, vec3<bool>(all(vec2<bool>(true, arg_0.x)), any(arg_0), true), !arg_0.x)) & !(arg_0.x | true);
    let var_1 = global1.x;
    global2 = array<vec3<u32>, 22>();
    global2 = array<vec3<u32>, 22>();
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32) -> u32 {
    global2 = array<vec3<u32>, 22>();
    global2 = array<vec3<u32>, 22>();
    let var_0 = u_input.b;
    var var_1 = vec4<u32>(var_0.x, firstTrailingBit(4294967295u), _wgslsmith_div_u32(0u, 108160u), firstTrailingBit(min(u_input.b.x, _wgslsmith_div_u32(reverseBits(1u), var_0.x >> (4502u % 32u)))));
    var var_2 = func_3(!(!vec4<bool>(arg_0.x > arg_2, false | arg_1.b.x, arg_1.b.x & false, select(arg_1.b.x, false, arg_1.b.x))));
    return ~var_1.x;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: vec3<bool>) -> Struct_4 {
    global2 = array<vec3<u32>, 22>();
    global0 = array<vec3<f32>, 3>();
    global0 = array<vec3<f32>, 3>();
    let var_0 = arg_3.x;
    global2 = array<vec3<u32>, 22>();
    return Struct_4(~((select(vec4<u32>(u_input.a, arg_1.x, arg_1.x, arg_0), vec4<u32>(arg_1.x, arg_0, 4294967295u, 37720u), vec4<bool>(true, var_0, arg_3.x, arg_3.x)) & reverseBits(vec4<u32>(31445u, u_input.c, arg_1.x, arg_0))) & vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(arg_1.x, 1u)), abs(u_input.c), max(0u, arg_1.x), func_2(vec4<i32>(global1.x, -1i, 1i, 2147483647i), Struct_2(vec4<f32>(arg_2.x, -108f, arg_2.x, arg_2.x), arg_3.xy, arg_3.x), global1.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<f32>) -> vec3<i32> {
    global2 = array<vec3<u32>, 22>();
    var var_0 = all(vec2<bool>(arg_2.x < _wgslsmith_f_op_f32(arg_2.x + -896f), true));
    var var_1 = global0[_wgslsmith_index_u32(~(4294967295u ^ func_1(~u_input.c, ~vec3<u32>(u_input.a, 4786u, 1u), _wgslsmith_f_op_vec2_f32(-arg_2.yy), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))).a.x) | _wgslsmith_div_u32(74821u, arg_1.a.x), 3u)];
    let var_2 = false;
    let var_3 = Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -1407f, -758f) * vec3<f32>(arg_2.x, 671f, -1184f)) * arg_2) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2, vec3<f32>(-1718f, var_1.x, 508f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_2, vec3<f32>(arg_2.x, 743f, arg_2.x), var_2)), vec3<f32>(var_1.x, -1384f, 344f)))), any(vec3<bool>(true, !var_2, var_2)))), ~(~reverseBits(u_input.c) >> (arg_1.a.x % 32u)), var_1.x);
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(~2147483647i, (_wgslsmith_dot_vec2_i32(arg_0.wz, global1.xy) >> (~arg_1.a.x % 32u)) | global1.x, arg_0.x), (_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.zww, vec3<i32>(global1.x, 2147483647i, global1.x)), arg_0.wzw << (vec3<u32>(1u, 0u, u_input.c) % vec3<u32>(32u))) ^ -vec3<i32>(-1i, global1.x, -7468i)) & _wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(arg_0.ywy, arg_0.xww)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, arg_0.x, global1.x), vec3<i32>(global1.x, global1.x, arg_0.x)) << (vec3<u32>(var_3.a, var_3.c, 0u) % vec3<u32>(32u))), max((vec3<i32>(1i, arg_0.x, arg_0.x) | (vec3<i32>(global1.x, global1.x, arg_0.x) ^ vec3<i32>(global1.x, -80694i, arg_0.x))) & (max(arg_0.zxx, vec3<i32>(-2147483647i, -15512i, 28581i)) | (vec3<i32>(global1.x, -25762i, -1i) << (arg_1.a.yyy % vec3<u32>(32u)))), select(abs(arg_0.wwz), -vec3<i32>(global1.x, global1.x, -54640i), vec3<bool>(all(vec2<bool>(false, false)), true, var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(-1i) * -func_4(_wgslsmith_add_vec4_i32(-vec4<i32>(-48198i, -7837i, 1i, 3089i), min(vec4<i32>(global1.x, global1.x, 9800i, global1.x), vec4<i32>(global1.x, global1.x, global1.x, 1i))), func_1(~u_input.c, vec3<u32>(26377u, u_input.b.x, u_input.c), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(893f, 537f), vec2<f32>(-2074f, 369f))), vec3<bool>(true, true, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(u_input.c, 3u)])) - _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a, 3u)])));
    global0 = array<vec3<f32>, 3>();
    let var_0 = -(-global1.x ^ -34601i);
    global0 = array<vec3<f32>, 3>();
    let var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~abs(vec4<u32>(4294967295u, u_input.a, u_input.c, u_input.a)) | select(select(vec4<u32>(19266u, 1u, 45936u, 1u), vec4<u32>(u_input.a, u_input.a, 5856u, u_input.b.x), true), vec4<u32>(u_input.b.x, u_input.a, 43545u, u_input.c) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 129073u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), vec4<u32>(~1u, u_input.a, u_input.c, ~u_input.c)), max(~(~vec4<u32>(5530u, u_input.b.x, u_input.b.x, u_input.b.x)), abs(~(vec4<u32>(0u, u_input.a, 4294967295u, 38530u) << (vec4<u32>(u_input.c, 5220u, 4294967295u, 9537u) % vec4<u32>(32u))))), vec4<u32>(0u, _wgslsmith_add_u32(~(~u_input.c), func_1(4294967295u, vec3<u32>(1u, u_input.b.x, 6456u) << (global2[_wgslsmith_index_u32(0u, 22u)] % vec3<u32>(32u)), vec2<f32>(-472f, 847f), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)).a.x), abs(_wgslsmith_sub_u32(~u_input.c, select(120561u, u_input.c, true))), u_input.b.x | 6064u));
    let var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -185f) * _wgslsmith_f_op_f32(floor(-2946f)))))), u_input.b, global1.x, u_input.c);
}

