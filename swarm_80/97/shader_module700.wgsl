struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(7146u, -18776i, Struct_1(vec2<u32>(4294967295u, 52922u), vec3<bool>(false, false, true)));

var<private> global1: f32;

var<private> global2: array<i32, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-653f - _wgslsmith_f_op_f32(ceil(1476f)))) + 511f);
    global2 = array<i32, 21>();
    var var_1 = select(select(!vec2<bool>(global0.c.b.x, !global0.c.b.x), arg_2.c.b.xx, (arg_2.c.b.x == true) | (all(vec4<bool>(true, true, false, arg_2.c.b.x)) && select(true, global0.c.b.x, false))), global0.c.b.yy, !((true & arg_2.c.b.x) && (_wgslsmith_div_i32(1i, arg_1.x) == 6941i)));
    let var_2 = global0.c.b.xz;
    var var_3 = vec2<u32>(arg_2.a, _wgslsmith_div_u32(arg_2.c.a.x, u_input.a.x));
    return ~1409u;
}

fn func_2() -> Struct_2 {
    let var_0 = 1i >> (~(u_input.d.x << (~global0.c.a.x % 32u)) % 32u);
    let var_1 = Struct_5(Struct_2(global0.c, max(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-11596i, 1i), vec2<i32>(global0.b, global0.b))), _wgslsmith_mod_vec2_i32(min(vec2<i32>(global0.b, 0i), vec2<i32>(-26139i, global0.b)), ~vec2<i32>(5063i, 3723i)))), vec2<u32>(~(1u ^ ~global0.c.a.x), global0.c.a.x));
    var var_2 = global0.c.b;
    let var_3 = vec4<u32>(global0.a, (76786u >> (0u % 32u)) >> (max(reverseBits(1u), func_3(!var_2.x, vec2<i32>(global0.b, var_0), Struct_3(4294967295u, -1i, var_1.a.a))) % 32u), global0.a >> ((9898u << (max(countOneBits(u_input.d.x), 68709u) % 32u)) % 32u), countOneBits(1u));
    var_2 = vec3<bool>(var_2.x != global0.c.b.x, !(true | var_1.a.a.b.x), var_2.x);
    return Struct_2(var_1.a.a, select((-vec2<i32>(-16996i, 44954i) >> (vec2<u32>(global0.a, 1u) % vec2<u32>(32u))) >> (abs(u_input.d) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_div_i32(2147483647i, global0.b) << (u_input.d.x % 32u), var_0), any(global0.c.b)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    global0 = Struct_3(80743u, ~(_wgslsmith_mod_i32(2147483647i, 1i) & (_wgslsmith_mult_i32(-18146i, global0.b) & _wgslsmith_dot_vec2_i32(var_0.b, vec2<i32>(37997i, global0.b)))), Struct_1(~_wgslsmith_mod_vec2_u32(var_0.a.a ^ global0.c.a, global0.c.a), global0.c.b));
    let var_1 = 1i;
    global2 = array<i32, 21>();
    let var_2 = Struct_3(firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.a.a.x, 30315u), 96394u, ~0u)) | _wgslsmith_mod_u32(24542u, ~(~global0.a)), 0i, func_2().a);
    return Struct_1(_wgslsmith_clamp_vec2_u32(var_2.c.a, vec2<u32>(~var_2.a, _wgslsmith_mod_u32(func_2().a.a.x, ~var_2.c.a.x)), ~(~vec2<u32>(u_input.c.x, 0u))), var_2.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_2(func_1(), ~_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b, global0.b), vec2<i32>(global0.b, -2147483647i), vec2<i32>(0i, -1i)), vec2<i32>(-20090i, global0.b))), ~vec2<u32>(u_input.d.x, global0.a));
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(541f + 218f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(708f))))));
    var var_1 = Struct_5(func_2(), vec2<u32>(~(_wgslsmith_mult_u32(2582u, u_input.c.x) << (var_0.b.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a.a.x, global0.c.a.x, u_input.b.x), vec3<u32>(global0.a, 0u, 0u)) & 92145u));
    global0 = Struct_3(_wgslsmith_div_u32(17390u, 50149u), -30570i, Struct_1(var_0.a.a.a, var_1.a.a.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-624f, -1151f)), _wgslsmith_f_op_f32(round(-1339f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2950f + -1066f))), _wgslsmith_f_op_f32(max(-252f, _wgslsmith_f_op_f32(f32(-1f) * -147f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2160f - -940f), -260f, _wgslsmith_f_op_f32(f32(-1f) * -299f), _wgslsmith_f_op_f32(abs(1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-169f, -163f, global0.c.b.x)))), 219f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2749f + -1007f), _wgslsmith_f_op_f32(2060f * 498f))), 1269f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-446f, -1219f, 261f, -1807f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1036f, 615f, 297f, -350f) + vec4<f32>(1210f, 204f, 1609f, 780f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1107f, -856f, 695f, -1003f), vec4<f32>(1177f, 582f, -1000f, -216f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1100f, 1000f, 824f, -708f), vec4<f32>(1209f, 1008f, 1101f, 1746f)))), !(true & var_0.a.a.b.x))))));
    var var_3 = var_2;
    let var_4 = vec4<i32>(2147483647i, -1i, _wgslsmith_mod_i32(45490i, var_1.a.b.x), global2[_wgslsmith_index_u32(~var_1.a.a.a.x, 21u)]);
    global2 = array<i32, 21>();
    global2 = array<i32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-951f, var_2.x, var_3.x), var_3.wwx))))))), 758f, _wgslsmith_clamp_i32(_wgslsmith_div_i32(~(-14380i), var_4.x), var_0.a.b.x, -25273i), var_4.x, _wgslsmith_f_op_f32(-var_3.x));
}

