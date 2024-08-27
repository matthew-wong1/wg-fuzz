struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_3,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<Struct_2, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-580f)), arg_0.d)));
    let var_1 = vec2<bool>(global0.x, false);
    var var_2 = arg_0.c.x;
    let var_3 = true;
    global0 = !(!vec2<bool>(!all(var_1), global0.x));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a)))) - arg_0.a)));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(14683u, 1u)])), vec3<bool>(all(vec4<bool>(global0.x, global0.x, true, false)), !(1i == u_input.a), any(vec3<bool>(global0.x, global0.x, false))), abs(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(trunc(-1000f))), u_input.a, Struct_3(countOneBits(select(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 68389u)), firstTrailingBit(vec2<u32>(4294967295u, 91484u)), vec2<bool>(false, global0.x)))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u))) ^ _wgslsmith_mod_vec2_u32(~firstTrailingBit(vec2<u32>(1u, 4294967295u)), vec2<u32>(~103781u, _wgslsmith_clamp_u32(4294967295u, 1u, 74893u))));
    global0 = vec2<bool>(var_0.a.a > _wgslsmith_f_op_f32(var_0.a.d + var_0.a.d), global0.x);
    let var_1 = var_0.a.b.xz;
    global0 = select(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-352f)), var_0.a.d), true), select(var_1, vec2<bool>(true, false), var_1.x), vec2<bool>(true, true));
    return Struct_4(Struct_2(_wgslsmith_div_f32(1102f, var_0.a.d), vec3<bool>((u_input.a ^ var_0.b) != 45335i, false, any(var_1)), reverseBits(abs(var_0.a.c)), -699f), var_0.b, var_0.c, countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, 40705u), var_0.c.a), 0u) >> ((~vec2<u32>(0u, var_0.a.c.x) & var_0.a.c.wx) % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_4) -> bool {
    let var_0 = arg_0.a.a;
    let var_1 = Struct_1(u_input.a, arg_0.a.b.x, arg_0.c.a.x);
    var var_2 = func_2().a;
    var var_3 = Struct_4(arg_0.a, _wgslsmith_div_i32(_wgslsmith_div_i32(0i, var_1.a), firstLeadingBit(-arg_0.b)), arg_0.c, _wgslsmith_clamp_vec2_u32(select(vec2<u32>(_wgslsmith_mod_u32(var_1.c, var_1.c), ~277u), ~_wgslsmith_add_vec2_u32(var_2.c.xz, arg_0.c.a), func_2().a.b.zz), abs(_wgslsmith_clamp_vec2_u32(var_2.c.zx, vec2<u32>(arg_0.a.c.x, 72501u), vec2<u32>(132229u, 41271u) << (vec2<u32>(var_2.c.x, arg_0.a.c.x) % vec2<u32>(32u)))), vec2<u32>(~var_2.c.x, var_2.c.x)));
    global0 = func_2().a.b.xz;
    return !global0.x;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(~72389u, min(1u, 4294967295u)), abs(~4294967295u), 1u, 23852u), ~_wgslsmith_clamp_vec4_u32(min(vec4<u32>(4294967295u, 5813u, 57356u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(34105u, 102645u, 19747u, 4294967295u), vec4<u32>(0u, 7798u, 0u, 0u))), ~vec4<u32>(1u, 1u, 7736u, 66488u), vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = Struct_3(vec2<u32>(50222u, 0u));
    let var_2 = ~(~(~(~vec4<u32>(9432u, 4294967295u, 4294967295u, 0u))));
    var_0 = var_2.x;
    var var_3 = vec4<i32>(~(-18163i), -_wgslsmith_add_i32(max(arg_1.x, -30883i), min(0i, firstTrailingBit(arg_1.x))), 1i, 39615i);
    return Struct_4(global1[_wgslsmith_index_u32(51008u, 1u)], ~max(~reverseBits(10138i), u_input.a), var_1, vec2<u32>(var_2.x, min(_wgslsmith_div_u32(4294967295u, var_2.x), countOneBits(1u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = func_5(vec3<bool>(!(!(global0.x != global0.x)), func_4(func_2()), global0.x), vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -6470i, -1i) ^ (u_input.a | u_input.a), u_input.a, _wgslsmith_sub_i32(~38803i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-31782i, 2147483647i, 1i)), vec3<i32>(0i, 1i, 52894i) << (vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x) % vec3<u32>(32u)))), ~2147483647i));
    var var_1 = ~(1u | (func_5(var_0.a.b, vec4<i32>(-8962i, u_input.a, u_input.a, 13891i)).d.x | ~abs(var_0.c.a.x)));
    var_0 = func_5(vec3<bool>(func_2().a.b.x == false, false, var_0.a.b.x), vec4<i32>(2323i, var_0.b >> ((_wgslsmith_mod_u32(var_0.d.x, arg_1.a.x) >> (var_0.d.x % 32u)) % 32u), -((-17537i >> (var_0.d.x % 32u)) | 1i), _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.b, var_0.b), vec3<i32>(-35721i, var_0.b, u_input.a)), ~u_input.a), _wgslsmith_clamp_i32(u_input.a, -1i, -2147483647i))));
    var_0 = func_5(!var_0.a.b, abs(vec4<i32>(max(countOneBits(-1i), -18434i >> (var_0.c.a.x % 32u)), -1i | reverseBits(var_0.b), ~firstLeadingBit(2147483647i), 5549i)));
    let var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(var_0.a.d + _wgslsmith_f_op_f32(func_3(func_2().a))), var_0.a.b, ~vec4<u32>(78679u, arg_1.a.x, var_0.c.a.x, var_0.c.a.x & 54769u), _wgslsmith_f_op_f32(step(-448f, _wgslsmith_f_op_f32(var_0.a.d * _wgslsmith_f_op_f32(-211f * arg_0.x))))), u_input.a, Struct_3(reverseBits(arg_1.a)), firstTrailingBit(~(~_wgslsmith_mult_vec2_u32(arg_1.a, vec2<u32>(47081u, 32272u)))));
    return !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(var_0.d.x, 1u)])) + 1189f) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.d, var_0.a.d) + var_0.a.d), func_2().a.b.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1943f, 312f) * vec2<f32>(355f, -344f)))), Struct_3(vec2<u32>(0u, ~4294967295u))));
    global1 = array<Struct_2, 1>();
    global1 = array<Struct_2, 1>();
    let var_1 = !(!(!(!select(vec3<bool>(global0.x, var_0, false), vec3<bool>(global0.x, var_0, global0.x), global0.x))));
    global0 = func_2().a.b.zz;
    global0 = var_1.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-943f, -935f, -2057f) * vec3<f32>(-3351f, -1000f, -2075f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 736f, 1005f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(104f, 592f, -130f))))))));
}

