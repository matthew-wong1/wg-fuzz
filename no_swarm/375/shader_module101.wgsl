struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
    c: vec2<bool>,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32> = vec2<i32>(0i, -5666i);

var<private> global2: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(314f, -1487f, -246f), vec3<f32>(-253f, -580f, -504f), vec3<f32>(729f, -233f, -1000f), vec3<f32>(1000f, -1784f, 1287f), vec3<f32>(-1141f, 345f, -487f), vec3<f32>(-2020f, -206f, -860f), vec3<f32>(-1000f, 750f, -1039f), vec3<f32>(-123f, 805f, -812f), vec3<f32>(-1733f, -1000f, 565f), vec3<f32>(-801f, -218f, 934f), vec3<f32>(197f, -1559f, -627f), vec3<f32>(977f, 281f, -1154f), vec3<f32>(1100f, -488f, 1470f), vec3<f32>(1000f, 157f, -581f), vec3<f32>(-1299f, -506f, -1833f));

var<private> global3: array<Struct_5, 24>;

var<private> global4: u32 = 29489u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.b), _wgslsmith_sub_i32(reverseBits(u_input.b), arg_1.x), 2147483647i, global1.x), select(-_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -14285i, 3809i), vec4<i32>(arg_1.x, 2147483647i, global1.x, 2147483647i)), vec4<i32>(~arg_1.x, abs(-38004i), -1i, ~u_input.a), !(!vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x)))) != select(max(firstTrailingBit(global1.x), ~(-2147483647i)) << (4294967295u % 32u), firstLeadingBit(select(-18560i, arg_1.x, arg_0.b.a > 938f)), false);
    let var_1 = global3[_wgslsmith_index_u32(1u, 24u)];
    var var_2 = Struct_3(arg_0, select(select(select(vec4<bool>(true, true, arg_0.a.x, var_0), vec4<bool>(true, var_1.c.x, true, false), vec4<bool>(arg_0.a.x, true, var_1.c.x, var_1.c.x)), !(!vec4<bool>(true, var_1.c.x, true, var_0)), vec4<bool>(!var_1.c.x, false, any(vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.c.x)), any(vec3<bool>(var_0, var_1.c.x, var_1.c.x)))), !(!vec4<bool>(var_0, false, var_1.c.x, false)), !vec4<bool>(select(false, var_0, false), !var_1.c.x, any(var_1.c), !arg_0.a.x)), ~var_1.b.a.c);
    global1 = (-arg_1.zz ^ ~var_1.a) << (~(~max(select(global0.d, vec2<u32>(arg_0.c.x, var_2.a.c.x), arg_0.a.zy), arg_0.b.e.yz)) % vec2<u32>(32u));
    let var_3 = Struct_3(Struct_2(!select(select(var_2.a.a, vec3<bool>(var_2.a.a.x, var_0, var_0), arg_0.a.x), select(arg_0.a, arg_0.a, false), var_2.a.a), var_2.a.b, vec2<u32>(_wgslsmith_add_u32(u_input.c, 1u << (var_1.d.a.e.x % 32u)), _wgslsmith_add_u32(arg_0.c.x, 31692u))), vec4<bool>(!any(var_2.b), (_wgslsmith_div_f32(375f, global0.a) == 502f) || any(arg_0.a), !(!var_2.a.a.x || false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(534f - global0.a))) < -805f), var_2.a.b.e.x);
    return var_2.b.x;
}

fn func_2() -> Struct_4 {
    global1 = ~countOneBits(vec2<i32>(~global1.x >> (~global0.b % 32u), 2171i));
    global0 = Struct_1(-1000f, ~firstLeadingBit(~4294967295u), 22439u, countOneBits(global0.e.zz), _wgslsmith_mod_vec3_u32(abs(global0.e), global0.e));
    var var_0 = select(!vec3<bool>(true, select(false, false, true) || true, global1.x < u_input.b), vec3<bool>(!select(true, func_3(Struct_2(vec3<bool>(true, true, true), Struct_1(-298f, global0.c, u_input.c, global0.e.yz, vec3<u32>(3618u, global0.c, u_input.c)), vec2<u32>(global0.d.x, 4294967295u)), vec3<i32>(u_input.a, 6623i, global1.x)), true), all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(false, !(1u > global0.d.x), all(vec3<bool>(true, false, false)) & true), all(vec3<bool>(true, true, false))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_mod_u32(28550u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.c, 4294967295u), ~global0.e.yx), _wgslsmith_clamp_u32(u_input.c, u_input.c, firstTrailingBit(global0.d.x)))), ~firstTrailingBit(4294967295u), ~(~(~(~global0.d))), vec3<u32>(~u_input.c & (countOneBits(global0.b) >> (u_input.c % 32u)), 0u, ~(~_wgslsmith_mod_u32(u_input.c, global0.e.x))));
    let var_2 = 4294967295u;
    return Struct_4(var_1, global2[_wgslsmith_index_u32(~abs(global0.c), 15u)], _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1518f, global0.a, 420f, 433f) + vec4<f32>(global0.a, var_1.a, -1043f, 1758f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(518f, 256f, var_1.a, -676f) * vec4<f32>(global0.a, var_1.a, -427f, var_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -200f, global0.a, var_1.a))))))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_1.b, ~46488u, _wgslsmith_div_u32(var_2, ~u_input.c)), 15u)]);
}

fn func_1() -> vec4<f32> {
    let var_0 = func_2();
    let var_1 = ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.c, 0u, 30206u, 8208u)), vec4<u32>(u_input.c, global0.d.x, global0.d.x, global0.e.x)), firstTrailingBit(vec4<u32>(32639u, global0.e.x, 36756u, 5878u) | vec4<u32>(global0.c, global0.d.x, 8340u, 0u))));
    global2 = array<vec3<f32>, 15>();
    var var_2 = Struct_3(Struct_2(vec3<bool>(true, true, true), var_0.a, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(var_0.a.e.xz << (global0.e.zz % vec2<u32>(32u)), select(var_0.a.e.yz, vec2<u32>(4294967295u, global0.b), true)), vec2<u32>(u_input.c, global0.d.x), ~(var_1.yw << (vec2<u32>(var_0.a.c, var_0.a.c) % vec2<u32>(32u))))), select(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(false, true, true, true), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, select(true, true, false), true)), vec4<bool>(!select(false, false, false), firstLeadingBit(1u) >= _wgslsmith_mult_u32(0u, u_input.c), any(vec2<bool>(true, false)), true), vec4<bool>(_wgslsmith_f_op_f32(var_0.c.x * var_0.d.x) < -1000f, true, select(all(vec3<bool>(true, true, false)), true, true), !all(vec4<bool>(false, false, false, true)))), 1u >> (~(_wgslsmith_mod_u32(var_0.a.c, 9747u) >> (45031u % 32u)) % 32u));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -519f), var_2.a.b.a, -534f);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-952f, _wgslsmith_f_op_f32(floor(var_0.c.x)), 1396f, _wgslsmith_f_op_f32(-var_2.a.b.a)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.c, var_0.c), vec4<f32>(550f, 207f, var_0.b.x, 304f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_div_vec4_f32(var_0.c, vec4<f32>(var_3.x, var_3.x, -1324f, -1000f)))), _wgslsmith_f_op_vec4_f32(step(var_0.c, vec4<f32>(-1073f, 1705f, var_3.x, -100f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    var var_1 = ~1u;
    let var_2 = Struct_4(Struct_1(-361f, u_input.c, global0.d.x, global0.e.yx, vec3<u32>(select(global0.e.x, 0u, true), global0.c, _wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, u_input.c), global0.d)))), global2[_wgslsmith_index_u32(~firstLeadingBit(abs(_wgslsmith_dot_vec2_u32(global0.d, global0.d))), 15u)], _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -1142f, var_0.x, global0.a))))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.wyy), var_0.zxx)));
    global2 = array<vec3<f32>, 15>();
    var var_3 = var_0.wx;
    global3 = array<Struct_5, 24>();
    let var_4 = -vec4<i32>(max(~u_input.a, -_wgslsmith_mult_i32(0i, 2642i)), firstLeadingBit(reverseBits(global1.x)), firstLeadingBit(reverseBits(~2147483647i)), i32(-1i) * -63883i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(select(var_2.a.e.x, u_input.c, false), 45161u)));
}

