struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false));

var<private> global1: Struct_3 = Struct_3(Struct_2(false, Struct_1(vec3<u32>(0u, 8386u, 1u), vec4<f32>(-1453f, 602f, 205f, 2191f)), vec4<u32>(12902u, 0u, 0u, 34628u), false), Struct_1(vec3<u32>(55207u, 0u, 27522u), vec4<f32>(-1287f, -171f, -1266f, 422f)), Struct_2(false, Struct_1(vec3<u32>(48135u, 0u, 16906u), vec4<f32>(1495f, -253f, -757f, -1374f)), vec4<u32>(1u, 4759u, 115381u, 0u), true), vec2<i32>(0i, 71372i));

var<private> global2: vec3<u32>;

var<private> global3: u32;

var<private> global4: Struct_3 = Struct_3(Struct_2(false, Struct_1(vec3<u32>(32614u, 16948u, 24379u), vec4<f32>(766f, 1009f, 646f, -228f)), vec4<u32>(4294967295u, 0u, 3630u, 129604u), false), Struct_1(vec3<u32>(38139u, 93516u, 4294967295u), vec4<f32>(-1613f, 562f, -906f, 1000f)), Struct_2(false, Struct_1(vec3<u32>(0u, 1u, 52629u), vec4<f32>(-132f, -169f, 353f, 416f)), vec4<u32>(3675u, 23659u, 1u, 22783u), false), vec2<i32>(-57988i, 1i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = Struct_2(global4.a.d, global4.a.b, global1.a.c, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-852f * global1.a.b.b.x), 1000f))) <= global1.b.b.x);
    let var_1 = Struct_1(~(~vec3<u32>(_wgslsmith_add_u32(1444u, global2.x), max(u_input.a, 24150u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 86641u), vec3<u32>(var_0.c.x, 21154u, global2.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.b.x))), 1000f, global4.c.b.b.x, _wgslsmith_f_op_f32(-var_0.b.b.x)));
    let var_2 = Struct_3(global4.a, var_1, var_0, ~global4.d);
    var var_3 = var_2;
    let var_4 = ~(~vec4<u32>(_wgslsmith_mod_u32(3364u, var_1.a.x) | u_input.a, 4294967295u ^ min(1419u, global4.b.a.x), 0u, 0u));
    return !(~(~min(var_0.b.a.x, var_1.a.x)) <= u_input.a);
}

fn func_2() -> u32 {
    let var_0 = Struct_3(global1.a, global1.b, Struct_2(true, Struct_1(abs(global4.c.b.a), _wgslsmith_f_op_vec4_f32(-global4.b.b)), global1.a.c ^ global1.c.c, func_3()), reverseBits(reverseBits(vec2<i32>(-46274i, 68618i | global4.d.x))));
    return _wgslsmith_sub_u32(abs(_wgslsmith_add_u32(1u, ~firstTrailingBit(global2.x))), _wgslsmith_dot_vec3_u32(abs(max(~var_0.b.a, vec3<u32>(4294967295u, global1.b.a.x, global4.b.a.x))), global4.c.b.a));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: bool) -> vec3<f32> {
    global0 = array<vec4<bool>, 11>();
    var var_0 = Struct_1(select(vec3<u32>(50138u, arg_0.b.a.x, ~u_input.a | ~70595u), abs(global1.b.a & _wgslsmith_mult_vec3_u32(arg_0.c.c.yzx, arg_0.a.c.zzx)), select(!(!vec3<bool>(true, false, global1.a.d)), select(select(vec3<bool>(global1.a.d, arg_3, true), vec3<bool>(arg_0.a.d, global4.a.d, false), false), select(vec3<bool>(false, arg_0.a.a, global1.a.a), vec3<bool>(global4.c.d, false, arg_3), vec3<bool>(global4.a.a, false, false)), arg_3), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)) * _wgslsmith_div_f32(-1138f, 2217f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, global4.b.b.x))), 696f, global4.a.b.b.x)));
    global0 = array<vec4<bool>, 11>();
    let var_1 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 1u, max(1u, 6325u)), vec3<u32>(~arg_0.b.a.x, ~global1.b.a.x, global1.c.c.x)), ~(~_wgslsmith_clamp_u32(53236u, var_0.a.x, 1u))), _wgslsmith_div_u32(_wgslsmith_mult_u32(abs(37968u), ~var_0.a.x) << ((1u & _wgslsmith_dot_vec2_u32(vec2<u32>(61361u, global4.c.c.x), vec2<u32>(0u, u_input.a))) % 32u), _wgslsmith_div_u32((u_input.a << (0u % 32u)) << (func_2() % 32u), 0u)));
    var var_2 = Struct_1(min(~vec3<u32>(firstTrailingBit(0u), 0u, arg_0.c.b.a.x), ~(~vec3<u32>(4294967295u, 4294967295u, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0.a.b.b)) - _wgslsmith_f_op_vec4_f32(global1.a.b.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(-475f, global1.c.b.b.x, global1.c.b.b.x, var_0.b.x) + vec4<f32>(var_0.b.x, 2407f, global1.a.b.b.x, -663f))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_2.b.xzz)) + _wgslsmith_f_op_vec3_f32(-arg_0.b.b.yyy)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> vec4<f32> {
    global3 = 4294967295u;
    var var_0 = vec4<f32>(-1699f, arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_3(global4.a, Struct_1(global4.b.a, vec4<f32>(global4.b.b.x, -128f, global4.b.b.x, -436f)), Struct_2(true, Struct_1(global4.a.c.yxw, global1.c.b.b), global4.a.c, false), global4.d), vec3<i32>(global1.d.x, global1.d.x, 7453i), vec2<f32>(-1505f, -216f), arg_1)).x) + arg_2.x)), _wgslsmith_f_op_f32(-global1.c.b.b.x));
    let var_1 = ~_wgslsmith_mult_i32(-global4.d.x, -2147483647i);
    let var_2 = firstTrailingBit(vec3<i32>(-global4.d.x, -var_1, abs(12597i)));
    let var_3 = select(!vec4<bool>(global4.c.d, any(!vec2<bool>(global4.a.a, true)), any(vec4<bool>(global1.c.a, false, global4.a.d, global4.a.d)), !(arg_1 && false)), global0[_wgslsmith_index_u32(0u, 11u)], -459f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1336f - global4.b.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x + 320f)))));
    return global4.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.b.a.x;
    global0 = array<vec4<bool>, 11>();
    global0 = array<vec4<bool>, 11>();
    global4 = Struct_3(global4.a, Struct_1(global1.b.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(global4.a.b.a.x ^ u_input.a, true, _wgslsmith_f_op_vec3_f32(func_1(Struct_3(Struct_2(global4.c.a, Struct_1(vec3<u32>(global1.c.c.x, global1.a.b.a.x, 1u), global1.c.b.b), global4.c.c, true), Struct_1(global1.a.b.a, global1.b.b), Struct_2(global4.a.d, global4.a.b, vec4<u32>(u_input.a, global1.c.c.x, u_input.a, 0u), global1.c.a), global1.d), vec3<i32>(global4.d.x, 1577i, -8586i), global1.c.b.b.ww, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.b.b.x, -477f, 168f, global1.c.b.b.x))))), global4.c, (-_wgslsmith_add_vec2_i32(global4.d, vec2<i32>(global4.d.x, global4.d.x)) | vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global4.d.x, global4.d.x), global1.d), firstTrailingBit(0i))) << (vec2<u32>(global1.c.b.a.x, 4294967295u) % vec2<u32>(32u)));
    let var_1 = global4.d.x;
    global1 = Struct_3(global1.a, Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(global4.c.c.xyx, global1.a.b.a), ~24043u), vec3<u32>(4294967295u, 23504u, u_input.a)), global1.b.b), global1.c, global4.d);
    global4 = Struct_3(Struct_2(global4.c.d, global1.b, ~firstTrailingBit(~vec4<u32>(24138u, u_input.a, global2.x, 229u)), !all(vec3<bool>(global1.c.d, global1.a.a, true))), global1.c.b, Struct_2(3444i >= global4.d.x, global1.b, abs(global4.a.c), global1.a.d | true), _wgslsmith_mod_vec2_i32(max(_wgslsmith_mod_vec2_i32(global4.d, vec2<i32>(-20539i, global1.d.x)), global4.d), _wgslsmith_add_vec2_i32(global4.d, global4.d)));
    let var_2 = 1i;
    global4 = Struct_3(global1.a, Struct_1(~(~vec3<u32>(49669u, u_input.a, global4.b.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.b.b * global1.c.b.b)) - vec4<f32>(_wgslsmith_f_op_f32(-global1.c.b.b.x), _wgslsmith_f_op_f32(-global4.a.b.b.x), global1.a.b.b.x, _wgslsmith_f_op_f32(ceil(-1200f))))), Struct_2(true, Struct_1(firstLeadingBit(vec3<u32>(1u, global2.x, 4294967295u)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global4.b.b.x, global4.c.b.b.x, -143f, global1.a.b.b.x), vec4<f32>(global1.c.b.b.x, global1.c.b.b.x, -521f, global4.b.b.x)), _wgslsmith_f_op_vec4_f32(abs(global1.b.b)))), _wgslsmith_add_vec4_u32(~vec4<u32>(13278u, 48102u, global4.a.b.a.x, global4.c.c.x), global4.a.c), global4.b.b.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.b.b.x + global1.a.b.b.x) * _wgslsmith_f_op_f32(-993f + 1000f))), vec2<i32>(-2147483647i, abs(global4.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(global1.b.a.x & global2.x, ~(~32253u), ~4294967295u >> (_wgslsmith_div_u32(global2.x, u_input.a) % 32u)), _wgslsmith_mod_vec2_i32(min(vec2<i32>(1i, ~global4.d.x), _wgslsmith_clamp_vec2_i32(global4.d << (vec2<u32>(global2.x, global2.x) % vec2<u32>(32u)), countOneBits(vec2<i32>(12741i, global1.d.x)), global1.d ^ global1.d)), global1.d), 0u, abs(global1.a.c.x));
}

