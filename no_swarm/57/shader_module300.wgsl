struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<u32>(23378u, 0u, 5613u, 19522u), vec4<f32>(521f, 598f, 1124f, 293f));

var<private> global1: Struct_2;

var<private> global2: array<bool, 8>;

var<private> global3: vec2<f32> = vec2<f32>(-1236f, -408f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> vec4<u32> {
    var var_0 = Struct_2(~select(~abs(global1.a), ~vec4<i32>(-1i, -15370i, arg_1.x, -26076i) >> ((vec4<u32>(1u, 0u, global1.e, arg_0.b.b.x) >> (global0.b % vec4<u32>(32u))) % vec4<u32>(32u)), !(826f >= global1.d.c.x)), arg_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.c + -973f), global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1260f, _wgslsmith_f_op_f32(-global3.x))))), global1.d, abs((_wgslsmith_add_u32(18937u, global0.b.x) ^ min(global1.b.b.x, arg_0.e)) | ~u_input.a));
    var var_1 = Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.a.x, var_0.a.x, arg_0.a.x, var_0.a.x), arg_0.a), max(arg_0.a, countOneBits(vec4<i32>(var_0.a.x, global1.a.x, 0i, arg_1.x)))), 9818i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.a.x, -32078i), var_0.a.wx) ^ -global1.a.wx, vec2<i32>(100i, var_0.a.x ^ -39716i)), ~(u_input.b >> (u_input.a % 32u))), global1.b, global0.c.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c.x)) > global0.c.x, _wgslsmith_mult_vec4_u32(reverseBits(global0.b), reverseBits(~vec4<u32>(23220u, var_0.b.b.x, global1.b.b.x, arg_0.b.b.x))), arg_0.b.c), 4294967295u);
    let var_2 = Struct_2((vec4<i32>(-1i) * -countOneBits(global1.a)) | vec4<i32>(u_input.c, _wgslsmith_clamp_i32(0i | var_0.a.x, firstTrailingBit(global1.a.x), u_input.b & -29358i), -1i, arg_0.a.x), Struct_1(true, ~vec4<u32>(0u, u_input.a, u_input.a, u_input.a) & _wgslsmith_mult_vec4_u32(~vec4<u32>(46268u, var_1.e, var_1.b.b.x, arg_0.b.b.x), ~var_1.b.b), _wgslsmith_div_vec4_f32(var_1.b.c, global1.d.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.d.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.x)) - _wgslsmith_f_op_f32(sign(266f))), 4294967295u < global1.e)) - arg_0.c), global1.b, ~_wgslsmith_mult_u32(~(~1u), u_input.a));
    var var_3 = global1.d.a;
    var var_4 = var_0.d;
    return arg_0.b.b;
}

fn func_2() -> Struct_2 {
    global2 = array<bool, 8>();
    var var_0 = ~vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(~global1.b.b.zy, global0.b.yz)), ~_wgslsmith_dot_vec2_u32(global1.d.b.yz, vec2<u32>(global1.e, 0u) ^ global1.b.b.wx));
    global1 = Struct_2(vec4<i32>(u_input.b, global1.a.x, global1.a.x, global1.a.x), Struct_1(global0.a, firstLeadingBit(func_3(Struct_2(global1.a, Struct_1(true, global0.b, global0.c), 319f, Struct_1(global1.b.a, vec4<u32>(global1.d.b.x, 4294967295u, 53043u, 35989u), global0.c), u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -2747i), global1.a.yw))), global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-859f))), global1.b, ~(~_wgslsmith_add_u32(7112u, global0.b.x >> (0u % 32u))));
    let var_1 = abs(-35342i);
    global2 = array<bool, 8>();
    return Struct_2(abs(_wgslsmith_clamp_vec4_i32(select(global1.a, global1.a, vec4<bool>(false, true, global0.a, global1.d.a)) ^ global1.a, vec4<i32>(_wgslsmith_clamp_i32(1i, u_input.b, var_1), ~2147483647i, var_1 ^ u_input.c, ~var_1), vec4<i32>(_wgslsmith_div_i32(u_input.b, u_input.b), ~51079i, ~global1.a.x, 15544i))), Struct_1(false, ~(vec4<u32>(var_0.x, 22322u, var_0.x, 5944u) >> (abs(vec4<u32>(var_0.x, global0.b.x, global0.b.x, u_input.a)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-global0.c)), _wgslsmith_f_op_f32(abs(-766f)), Struct_1(true, firstLeadingBit((vec4<u32>(var_0.x, global0.b.x, 4294967295u, 47121u) | global1.b.b) << (global0.b % vec4<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-859f, global1.c, global3.x, global1.b.c.x), vec4<f32>(276f, 930f, global1.b.c.x, global1.c)))))), var_0.x);
}

fn func_1() -> vec4<i32> {
    global1 = func_2();
    let var_0 = Struct_2(global1.a, Struct_1(any(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 8u)], true, true, global2[_wgslsmith_index_u32(global0.b.x, 8u)])), vec4<u32>(~func_2().e, _wgslsmith_dot_vec3_u32(global1.d.b.zzw, global0.b.wxy), _wgslsmith_mod_u32(1u, 1u << (global0.b.x % 32u)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(57805u, 8751u, global1.e), ~3369u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global0.c, global1.b.c))), _wgslsmith_div_vec4_f32(vec4<f32>(255f, -666f, global0.c.x, 568f), global0.c)))), -288f, Struct_1(true, global0.b, global0.c), _wgslsmith_mult_u32(31048u | firstTrailingBit(0u), ~(~33646u)));
    var var_1 = vec2<f32>(586f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global3.x, -748f, var_0.d.a)), -1144f)))));
    global2 = array<bool, 8>();
    global1 = func_2();
    return vec4<i32>(u_input.c << (1u % 32u), ~(global1.a.x ^ 0i), _wgslsmith_mod_i32(global1.a.x, 2147483647i), _wgslsmith_mod_i32(u_input.b, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_u32(~u_input.a, global0.b.x);
    var var_1 = global3.x;
    global1 = Struct_2(_wgslsmith_div_vec4_i32(global1.a ^ vec4<i32>(global1.a.x, 1i, global1.a.x, ~u_input.c), max(~func_1(), vec4<i32>(global1.a.x ^ global1.a.x, u_input.b, u_input.b, -2147483647i))), func_2().d, global3.x, func_2().b, global0.b.x);
    let var_2 = -1i;
    var_1 = global1.d.c.x;
    let var_3 = _wgslsmith_div_i32(global1.a.x, countOneBits(~func_1().x));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-865f, global1.c, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f)), global1.b.a))) + -349f);
    var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2284f)) - _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c.x)))), global2[_wgslsmith_index_u32(select(~_wgslsmith_sub_u32(global1.d.b.x, 4294967295u), ~115458u, func_2().b.a != global0.a), 8u)])));
    var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.c.x * 1f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-global0.c.xzz), global0.b.xz, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x)))), vec3<f32>(_wgslsmith_div_f32(-250f, -938f), 531f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1039f, global1.d.c.x, global0.a)))))), vec4<i32>(~(-52180i), -33992i, var_2, _wgslsmith_sub_i32(max(-2147483647i, 7342i), abs(-45127i))) << (vec4<u32>(global0.b.x << (55450u % 32u), 4294967295u, global0.b.x, ~u_input.a) % vec4<u32>(32u)));
}

