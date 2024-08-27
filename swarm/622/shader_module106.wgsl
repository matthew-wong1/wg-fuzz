struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(i32(-2147483648), 1i, -4613i, 0i, 1i);

var<private> global1: vec2<i32> = vec2<i32>(77897i, -24700i);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<i32>(0i, -19871i, 1i, 1i)), Struct_1(vec4<i32>(i32(-2147483648), 27807i, -1i, -4852i)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -31769i, 0i)), Struct_1(vec4<i32>(21423i, 3942i, 0i, 25013i)), Struct_1(vec4<i32>(10259i, 1i, 0i, 2147483647i)), Struct_1(vec4<i32>(45481i, 51583i, i32(-2147483648), 9533i)), Struct_1(vec4<i32>(2147483647i, 59923i, 36389i, 32550i)), Struct_1(vec4<i32>(1i, 0i, 21354i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, -13255i, 2147483647i, 16027i)), Struct_1(vec4<i32>(2147483647i, 0i, 0i, -21707i)), Struct_1(vec4<i32>(i32(-2147483648), -1i, 5300i, -305i)), Struct_1(vec4<i32>(-46988i, -20726i, 68907i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), -34615i, -1i, -56554i)), Struct_1(vec4<i32>(0i, 0i, 0i, -1941i)), Struct_1(vec4<i32>(-12621i, -21593i, 9869i, -7543i)), Struct_1(vec4<i32>(36048i, 26234i, 1483i, 40854i)), Struct_1(vec4<i32>(1i, 2147483647i, 0i, 1i)), Struct_1(vec4<i32>(-45923i, 2147483647i, -44267i, i32(-2147483648))), Struct_1(vec4<i32>(-58124i, -61919i, -47365i, 0i)), Struct_1(vec4<i32>(-10432i, -1i, i32(-2147483648), 2147483647i)), Struct_1(vec4<i32>(6716i, 1i, 1i, 1i)), Struct_1(vec4<i32>(2147483647i, 0i, 0i, 0i)), Struct_1(vec4<i32>(0i, -1i, 25354i, 63333i)), Struct_1(vec4<i32>(-52622i, -1i, 14345i, 11278i)), Struct_1(vec4<i32>(14479i, 21249i, 1i, -4456i)), Struct_1(vec4<i32>(-1i, 1562i, 2147483647i, -1i)), Struct_1(vec4<i32>(-11148i, -1i, 0i, -10211i)), Struct_1(vec4<i32>(-1i, 31312i, -15900i, -23660i)), Struct_1(vec4<i32>(i32(-2147483648), -45211i, -36665i, -9501i)), Struct_1(vec4<i32>(i32(-2147483648), -22252i, 0i, 4366i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>, arg_3: vec3<i32>) -> i32 {
    var var_0 = vec4<bool>(select(arg_1, !all(select(vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, true, false), arg_1)), false), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-159f, -683f))), _wgslsmith_f_op_f32(trunc(-1767f)))) == _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -609f)))), false, select(!(!any(vec2<bool>(arg_1, true))), arg_1, !(true && (1i <= u_input.b.x))));
    global1 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_3.xz, vec2<i32>(34617i, 37700i)), vec2<i32>(-33089i, global1.x)), global0[_wgslsmith_index_u32(~u_input.a.x, 5u)]), vec2<i32>(0i, ~(~(-18045i)))) >> ((~firstLeadingBit(~vec2<u32>(34003u, 10929u)) >> ((u_input.c & vec2<u32>(~63236u, _wgslsmith_clamp_u32(62541u, u_input.c.x, u_input.c.x))) % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = array<i32, 5>();
    global1 = reverseBits(_wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_3.x, global1.x), ~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, arg_0.a.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(58187i, -2147483647i), arg_0.a.zw, arg_0.a.zx)), select(-countOneBits(arg_0.a.yz), select(~vec2<i32>(1i, 55346i), -arg_0.a.zz, var_0.wz), !(false && var_0.x))));
    return global1.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(select(i32(-1i) * -1i, max(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]), true), global0[_wgslsmith_index_u32(0u, 5u)], func_3(global2[_wgslsmith_index_u32(~4294967295u, 30u)], 2134f >= arg_0.x, countOneBits(vec4<i32>(2147483647i, -51970i, 9936i, 33587i)), ~vec3<i32>(-1i, global0[_wgslsmith_index_u32(u_input.c.x, 5u)], u_input.b.x)), abs(0i)), abs(reverseBits(vec4<i32>(29440i, global0[_wgslsmith_index_u32(24419u, 5u)], -2147483647i, global1.x))) & ~vec4<i32>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)], -17075i, 26112i)));
    global2 = array<Struct_1, 30>();
    let var_1 = _wgslsmith_mult_vec4_i32(var_0.a, ~(~vec4<i32>(-2147483647i, firstTrailingBit(u_input.b.x), var_0.a.x, 0i)));
    let var_2 = false;
    global2 = array<Struct_1, 30>();
    return var_0;
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-353f + -1000f);
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(firstTrailingBit(80503u), 5u)], reverseBits(global0[_wgslsmith_index_u32(u_input.c.x, 5u)])) << ((4294967295u | ~u_input.a.x) % 32u), global1.x), vec2<i32>(0i, _wgslsmith_clamp_i32(select(~u_input.b.x, _wgslsmith_mult_i32(-53920i, global1.x), true), 39751i, u_input.b.x)));
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1145f, _wgslsmith_f_op_f32(f32(-1f) * -2473f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-433f, 138f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 611f) * vec2<f32>(1135f, 839f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1713f, _wgslsmith_f_op_f32(ceil(-1098f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1626f - 2275f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-467f, -323f)))), false)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(888f)) + -219f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2488f - -350f))))));
    var var_3 = Struct_1(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, ~global1.x, global1.x, 1i | global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), vec4<i32>(-1i, _wgslsmith_clamp_i32(-5712i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(58195u, 5u)], u_input.b.x, -27158i), var_2.a), -53509i), global1.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b.x, -1i), 2147483647i & global1.x))));
    return vec2<u32>(~u_input.c.x, 148u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x ^ ~u_input.c.x, u_input.c.x), min(vec2<u32>(69907u, 1u), func_1())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(336f, -159f) - vec2<f32>(162f, 999f))))));
}

