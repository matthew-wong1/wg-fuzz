struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: Struct_2;

var<private> global2: array<f32, 31>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_sub_u32(abs(~_wgslsmith_clamp_u32(0u, 52725u | global1.a.x, ~global1.a.x)), global1.a.x);
    var_0 = _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(0u, global1.a.x, ~0u), 69505u);
    var_0 = _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32((vec3<u32>(10213u, 106242u, global1.a.x) | global1.a.xxw) << (global1.a.wyw % vec3<u32>(32u)), select(~vec3<u32>(36549u, 14649u, 50623u), vec3<u32>(global1.a.x, global1.a.x, 2161u) ^ global1.a.wzz, vec3<bool>(true, true, true)))), reverseBits(~global1.a.x));
    var var_1 = !vec4<bool>(any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1100f, 107f)))) != -2770f, !select(true, all(vec4<bool>(true, false, true, true)), true), true);
    var var_2 = global0[_wgslsmith_index_u32(~(~(~0u)), 25u)];
    return ~global1.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<i32>) -> Struct_2 {
    global2 = array<f32, 31>();
    var var_0 = arg_0.x;
    global1 = Struct_2(_wgslsmith_add_vec4_u32(select(global1.a, ~min(global1.a, global1.a), all(vec3<bool>(true, true, true))), abs(~vec4<u32>(arg_1, global1.a.x, 76125u, 0u)) << (_wgslsmith_div_vec4_u32(abs(global1.a), select(global1.a, vec4<u32>(global1.a.x, 4294967295u, 0u, 1u), true)) % vec4<u32>(32u))), global1.b);
    let var_1 = global1.b;
    var var_2 = global1.b.b;
    return Struct_2(_wgslsmith_add_vec4_u32(~global1.a << (_wgslsmith_clamp_vec4_u32(global1.a, vec4<u32>(0u, global1.a.x, global1.a.x, 4294967295u), vec4<u32>(4294967295u, 0u, arg_1, 6061u)) % vec4<u32>(32u)), func_3(_wgslsmith_div_vec3_i32(vec3<i32>(global1.b.a.x, 1i, arg_0.x), u_input.a.zzw))) ^ vec4<u32>(arg_1, ~_wgslsmith_div_u32(arg_1, arg_1), ~(~0u), global1.a.x), global1.b);
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = global1.a.x;
    let var_1 = ~max(vec4<u32>(~(~global1.a.x), 59195u, 48550u, global1.a.x), ~arg_0.a);
    let var_2 = func_2(_wgslsmith_mod_vec2_i32(firstLeadingBit(global1.b.a), vec2<i32>(2852i, abs(~(-1i)))), arg_0.a.x, global1.b.c.ywy);
    global0 = array<Struct_3, 25>();
    var_0 = func_2(vec2<i32>(global1.b.a.x, global1.b.c.x), 65133u, vec3<i32>(-arg_0.b.a.x, _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(global1.b.c.x, arg_0.b.a.x), global1.b.a.x, ~countOneBits(2147483647i)), abs(arg_0.b.a.x))).a.x;
    return global1.b.c;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = Struct_2(global1.a, Struct_1(vec2<i32>(arg_1.c.x, arg_2), 547f, select(vec4<i32>(-2147483647i, -1i, arg_2, arg_1.c.x) << (_wgslsmith_div_vec4_u32(global1.a, global1.a) % vec4<u32>(32u)), func_4(func_2(vec2<i32>(u_input.a.x, -1i), 0u, global1.b.c.yzw)), !vec4<bool>(arg_0.x, true, true, arg_0.x))));
    let var_1 = ~global1.a.zwz;
    let var_2 = any(!(!vec3<bool>(arg_0.x, true, false))) == true;
    global2 = array<f32, 31>();
    var var_3 = func_2(global1.b.c.wy ^ -vec2<i32>(_wgslsmith_div_i32(arg_1.a.x, u_input.a.x), -38663i), 4294967295u, abs(func_4(Struct_2(firstTrailingBit(vec4<u32>(global1.a.x, var_1.x, var_1.x, 68317u)), var_0.b)).xzz));
    return var_3.b.b;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = reverseBits(arg_2.c);
    global1 = func_2(~(vec2<i32>(-1i) * -vec2<i32>(global1.b.c.x, global1.b.c.x)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(func_2(vec2<i32>(u_input.a.x, global1.b.c.x), 4294967295u, vec3<i32>(1i, var_0.x, -16045i)).a.ywy, vec3<u32>(52140u, 109417u, 4294967295u)), ~vec3<u32>(global1.a.x, 1u, 4294967295u) ^ min(vec3<u32>(global1.a.x, global1.a.x, global1.a.x), vec3<u32>(global1.a.x, global1.a.x, 1u))), u_input.a.wwz);
    global2 = array<f32, 31>();
    let var_1 = !select(select(vec3<bool>(true, true, false), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), _wgslsmith_mult_i32(1i, global1.b.a.x) == -3810i), vec3<bool>(true || any(vec2<bool>(false, true)), all(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, false)) & (u_input.a.x != var_0.x)), global1.b.b <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    global1 = Struct_2(vec4<u32>(global1.a.x, _wgslsmith_div_u32(global1.a.x, 209u), _wgslsmith_mod_u32(global1.a.x, 2958u), min(0u, 6472u >> (_wgslsmith_mod_u32(global1.a.x, global1.a.x) % 32u))), Struct_1(abs(reverseBits(u_input.a.wx) | ~u_input.a.yz), 437f, select(abs(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(var_0.x, var_0.x, -2147483647i, var_0.x), var_0)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_1, -2147483647i, 1i), u_input.a), !vec4<bool>(true, var_1.x, var_1.x, var_1.x))));
    return _wgslsmith_f_op_f32(-arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), Struct_1(u_input.a.ww, -730f, global1.b.c), u_input.a.x))))), _wgslsmith_f_op_f32(trunc(func_2(global1.b.c.yx, global1.a.x, vec3<i32>(global1.b.a.x, -1i, -50036i) | vec3<i32>(u_input.a.x, global1.b.c.x, u_input.a.x)).b.b))), 2147483647i, func_2(vec2<i32>(-_wgslsmith_div_i32(global1.b.a.x, u_input.a.x), min(2147483647i, ~u_input.a.x)), ~global1.a.x, _wgslsmith_add_vec3_i32(~global1.b.c.yzx, -u_input.a.wyx)).b));
    global0 = array<Struct_3, 25>();
    let var_1 = -1000f;
    global1 = Struct_2(_wgslsmith_mod_vec4_u32(global1.a, ~firstTrailingBit(firstLeadingBit(vec4<u32>(18033u, global1.a.x, 0u, global1.a.x)))), global1.b);
    let var_2 = vec4<i32>(_wgslsmith_div_i32(~5647i, func_2(select(vec2<i32>(1i, -11811i), vec2<i32>(global1.b.a.x, u_input.a.x), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), 60011u >> (global1.a.x % 32u), u_input.a.xwy).b.c.x), -70511i, max(-2147483647i, 2147483647i), 1i);
    let var_3 = var_2.xwx;
    var var_4 = Struct_3(firstTrailingBit(global1.a.x), global1.b, -35260i, !(!vec3<bool>(true, global1.b.b > var_1, false)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, vec2<u32>(1u, abs(_wgslsmith_div_u32(var_4.a, _wgslsmith_dot_vec3_u32(global1.a.yzx, vec3<u32>(var_4.a, 2203u, global1.a.x))))), abs(vec3<i32>(-func_2(var_2.yw, global1.a.x, var_3).b.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, var_3.x, var_4.b.c.x), ~global1.b.c.yyy), var_3.x)), -(~u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -3370f));
}

