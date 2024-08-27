struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_3,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<bool>, 25>;

var<private> global2: array<bool, 16>;

var<private> global3: array<Struct_5, 3>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = 10820i;
    global2 = array<bool, 16>();
    global2 = array<bool, 16>();
    let var_1 = Struct_2(u_input.c.yx);
    let var_2 = u_input.b.x;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + 498f), arg_0.x, vec3<i32>(abs(1i), _wgslsmith_add_i32(abs(~u_input.b.x), -1i), -26718i), global1[_wgslsmith_index_u32(var_1.a.x, 25u)], _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-449f + arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> Struct_1 {
    let var_0 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u << (u_input.c.x % 32u), ~u_input.c.x, ~u_input.c.x, ~u_input.c.x), ~(~vec4<u32>(u_input.c.x, 76012u, u_input.c.x, u_input.c.x))), ~firstTrailingBit(~vec4<u32>(17975u, 88864u, 1353u, 5071u)));
    global1 = array<vec3<bool>, 25>();
    global1 = array<vec3<bool>, 25>();
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.x, -1429f))) + vec2<f32>(arg_3, arg_3)) - _wgslsmith_f_op_vec2_f32(step(arg_0.xy, arg_0.xz))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(arg_0.yx)), _wgslsmith_f_op_vec2_f32(select(arg_0.zx, vec2<f32>(684f, arg_1.e), vec2<bool>(true, false))))))));
    let var_2 = Struct_4(countOneBits(vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 37118u, var_0.x, var_0.x), var_0), ~var_0.x, 1751u) | var_0), true, func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_0.yy + _wgslsmith_f_op_vec2_f32(max(arg_0.yy, arg_0.zz)))))), -vec4<i32>(select(-6075i >> (u_input.c.x % 32u), arg_1.c.x, arg_2), 35606i, arg_1.c.x, ~_wgslsmith_sub_i32(var_1.c.x, var_1.c.x)));
    return Struct_1(-1000f, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_add_vec3_i32(var_2.c.c, vec3<i32>(~abs(-11388i), var_1.c.x, 1i)), !(!global1[_wgslsmith_index_u32(~(~u_input.c.x), 25u)]), _wgslsmith_f_op_f32(1970f - var_2.c.a));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_5(vec3<bool>(!(!any(vec2<bool>(true, arg_1.c.d.x))), func_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(211f, 1331f, arg_1.c.a, -232f))), vec4<f32>(1190f, 504f, 640f, arg_0.e.a))), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1564f, -1325f) * vec2<f32>(-279f, arg_3.a))), global2[_wgslsmith_index_u32(arg_1.a.x, 16u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_1.c.a))))).d.x, func_3(vec4<f32>(_wgslsmith_div_f32(arg_1.c.b, -886f), _wgslsmith_div_f32(arg_0.e.a, 700f), _wgslsmith_f_op_f32(step(arg_3.a, 1000f)), _wgslsmith_f_op_f32(sign(394f))), arg_3, false, arg_3.a).d.x), Struct_3(vec4<bool>(!(!global2[_wgslsmith_index_u32(0u, 16u)]), arg_1.a.x == reverseBits(arg_1.a.x), -1i > func_3(vec4<f32>(arg_0.e.a, arg_0.e.e, arg_0.e.b, -594f), arg_3, arg_3.d.x, -1174f).c.x, true)), 1i, !all(vec3<bool>(select(false, arg_3.d.x, arg_3.d.x), all(vec2<bool>(arg_0.b.a.x, arg_1.b)), false || arg_0.e.d.x)), Struct_1(814f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_3.a)), -412f))), (arg_1.d.zyw << ((u_input.c & u_input.c) % vec3<u32>(32u))) >> (firstTrailingBit(arg_1.a.xxw & u_input.c) % vec3<u32>(32u)), select(!global1[_wgslsmith_index_u32(abs(0u), 25u)], !func_3(vec4<f32>(146f, arg_3.e, 408f, arg_0.e.b), arg_0.e, true, arg_3.e).d, global2[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_f_op_f32(max(arg_0.e.e, _wgslsmith_f_op_f32(arg_1.c.a + _wgslsmith_f_op_f32(abs(arg_3.e)))))));
    global1 = array<vec3<bool>, 25>();
    var var_1 = ~_wgslsmith_clamp_vec3_i32(arg_0.e.c, ~arg_3.c, _wgslsmith_clamp_vec3_i32(arg_3.c, vec3<i32>(arg_3.c.x, arg_0.c, firstTrailingBit(var_0.e.c.x)), u_input.a));
    let var_2 = ~(~(~u_input.c));
    global3 = array<Struct_5, 3>();
    return var_0.e.e;
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(func_4(global3[_wgslsmith_index_u32(~(~abs(74779u)), 3u)], Struct_4(firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u) & vec4<u32>(1u, u_input.c.x, 1u, u_input.c.x))), u_input.b.x != u_input.b.x, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-878f, 389f, 1685f, 1403f))), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1521f, -458f))), any(!global1[_wgslsmith_index_u32(34144u, 25u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-362f)) - _wgslsmith_f_op_f32(sign(-1000f)))), -abs(-vec4<i32>(u_input.b.x, 18519i, u_input.a.x, u_input.b.x))), Struct_3(!select(select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(38536u, 16u)]), vec4<bool>(global2[_wgslsmith_index_u32(16777u, 16u)], false, false, global2[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)])), select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(116856u, 16u)], global2[_wgslsmith_index_u32(78260u, 16u)]), vec4<bool>(global2[_wgslsmith_index_u32(33430u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], false, true), false), -31085i <= u_input.b.x)), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(431f, 1743f, 1000f, -108f), _wgslsmith_div_vec4_f32(vec4<f32>(750f, -915f, -106f, -1371f), vec4<f32>(488f, 1000f, 315f, -627f))))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-217f, 655f)))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, u_input.c.x), 0u), 16u)] & any(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(3111u, 16u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(187f + -1336f))))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0);
    var var_2 = Struct_3(!vec4<bool>(!global2[_wgslsmith_index_u32(35384u, 16u)] && true, global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(~u_input.c.x, 16u)], false));
    var var_3 = vec4<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 10652u), vec4<u32>(u_input.c.x, 25644u, u_input.c.x, 57297u))) >> (~(~vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(25925u, 1u, 1u, 1u) >> (vec4<u32>(6827u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) & vec4<u32>(~1u, 73830u, reverseBits(4294967295u), 53418u)), _wgslsmith_sub_u32(24509u, u_input.c.x), select(u_input.c.x, u_input.c.x, 4294967295u >= ~u_input.c.x));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(592f, -2458f, var_1)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-389f, var_1, var_0))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1000f, -2605f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 767f, var_0), vec3<f32>(var_0, var_0, var_0), true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, -604f, -1490f)))))));
    return StorageBuffer(u_input.a.x, abs(vec4<u32>(abs(firstLeadingBit(u_input.c.x)), var_3.x, ~(~u_input.c.x), ~(~18149u))), abs(u_input.a.yx), vec2<i32>(-u_input.a.x, u_input.b.x ^ _wgslsmith_mod_i32(countOneBits(2147483647i), select(u_input.a.x, -10031i, global2[_wgslsmith_index_u32(u_input.c.x, 16u)]))), vec4<i32>(firstLeadingBit(-35723i), _wgslsmith_mult_i32(u_input.b.x, min(u_input.a.x << (var_3.x % 32u), 1i)), 1i, _wgslsmith_mod_i32(u_input.b.x, abs(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_5, 3>();
    let x = u_input.a;
    s_output = func_1();
}

