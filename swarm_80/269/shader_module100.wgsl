struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: u32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(false, Struct_2(19391u, 2355f, 7593u, vec3<i32>(-11807i, -24178i, 1i)), vec4<bool>(true, false, false, false), Struct_2(1u, -1000f, 4294967295u, vec3<i32>(-2384i, -9499i, 0i)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    global1 = Struct_3(global1.c.x, Struct_2(global0.a, _wgslsmith_f_op_f32(select(585f, global1.b.b, false)), max(26475u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 44432u, global0.a, 56304u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, global1.b.a, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 95594u, 30314u)))), countOneBits(global0.b)), select(select(select(global1.c, select(global1.c, global1.c, arg_0), arg_0), global1.c, any(select(vec4<bool>(global1.a, false, arg_0, arg_0), global1.c, vec4<bool>(true, false, global1.c.x, arg_0)))), !global1.c, false), global1.b);
    let var_0 = u_input.a.zz;
    let var_1 = Struct_1(global0.a, vec3<i32>(3961i, ~_wgslsmith_sub_i32(global0.b.x, firstTrailingBit(-1i)), 0i));
    var var_2 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(~global0.a, max(u_input.a.x, global0.a) << (~4294967295u % 32u), ~(global1.d.a << (global1.b.c % 32u))), var_1.a ^ global1.b.c) >> (~firstTrailingBit(_wgslsmith_mult_u32(u_input.b, reverseBits(0u))) % 32u);
    return !vec4<bool>(all(!select(global1.c, global1.c, arg_0)), arg_0, !(0i > abs(global1.b.d.x)), true);
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_3(global1.c.x, Struct_2(4294967295u << (~_wgslsmith_dot_vec3_u32(u_input.a.wxx, u_input.a.wyw) % 32u), -890f, ~(~global1.b.a), vec3<i32>(1384i, global0.b.x, _wgslsmith_div_i32(global0.b.x ^ arg_2, arg_2))), select(!select(func_3(global1.c.x), !vec4<bool>(global1.a, true, false, true), all(vec2<bool>(false, global1.c.x))), !vec4<bool>(true, !global1.a, global1.a, false), !func_3(true & global1.a)), Struct_2(select(global1.b.a, global1.d.c, any(global1.c.zx) & global1.a), global1.b.b, ~1u, vec3<i32>(-1i, -global1.b.d.x, ~firstTrailingBit(global0.b.x))));
    var var_1 = Struct_1(abs(global1.d.a), vec3<i32>(_wgslsmith_dot_vec4_i32((vec4<i32>(41965i, global0.b.x, var_0.b.d.x, 1i) >> (u_input.a % vec4<u32>(32u))) << (u_input.a % vec4<u32>(32u)), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global0.b.x, -1i, arg_2), vec4<i32>(-2147483647i, 1i, global1.b.d.x, arg_0)))), arg_2, abs(global1.d.d.x)));
    var var_2 = min(~2147483647i, arg_0 << ((max(_wgslsmith_dot_vec3_u32(u_input.a.zwz, u_input.a.zwx), 34753u) & ~(~1u)) % 32u));
    var var_3 = Struct_1(_wgslsmith_mod_u32(arg_1.x, 1u), vec3<i32>(min(-arg_2 | -var_1.b.x, abs(global1.d.d.x)), _wgslsmith_clamp_i32(-global0.b.x, -2147483647i, ~65118i), 1i));
    var var_4 = func_3(!global1.c.x).x;
    return Struct_1(~(abs(5510u & global0.a) >> (var_1.a % 32u)), firstLeadingBit(_wgslsmith_mult_vec3_i32(abs(select(vec3<i32>(11640i, arg_2, 0i), vec3<i32>(8806i, global1.d.d.x, global0.b.x), vec3<bool>(false, global1.a, false))), -(~var_1.b))));
}

fn func_1(arg_0: bool) -> Struct_5 {
    let var_0 = func_2(0i, reverseBits(~(~u_input.a.yzz) & u_input.a.xwx), global1.b.d.x, _wgslsmith_f_op_f32(global1.d.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global1.b.b, -1000f)))))));
    let var_1 = Struct_4(global1.b.d.x, true, var_0.a, true, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b.b, 513f), vec2<f32>(global1.d.b, -1142f), global1.c.xw)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.b, -400f)), global1.c.xw)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-863f, global1.d.b))), vec2<f32>(-1025f, global1.d.b), arg_0)), all(vec4<bool>(arg_0, false, true, global1.c.x)))), vec2<f32>(1465f, _wgslsmith_f_op_f32(166f - _wgslsmith_f_op_f32(global1.b.b * 1085f))))));
    global0 = var_0;
    let var_2 = vec2<i32>(2147483647i, _wgslsmith_mult_i32(~abs(var_0.b.x) & _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.d.x, global0.b.x, global1.b.d.x, var_1.a), firstTrailingBit(vec4<i32>(8453i, -1i, 15787i, 0i))), 0i));
    return Struct_5(select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, ~var_1.c, ~1u), vec3<u32>(min(var_1.c, var_1.c), 30553u, 4294967295u)), vec3<u32>(var_1.c, _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.zx), u_input.a.zx), min(4294967295u, ~var_0.a)), global1.d.b == global1.b.b), _wgslsmith_dot_vec3_i32(min(min(var_0.b, vec3<i32>(global1.b.d.x, var_2.x, global0.b.x)), global0.b), vec3<i32>(firstLeadingBit(-1i), global1.b.d.x, _wgslsmith_sub_i32(var_0.b.x, global0.b.x))) ^ var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(false);
    let var_1 = !(true && func_3(select(all(vec3<bool>(false, global1.c.x, true)), global1.c.x, false == global1.c.x)).x);
    var var_2 = ~_wgslsmith_mult_vec3_u32(~abs(vec3<u32>(1656u, global1.b.c, global1.d.a)), var_0.a);
    let var_3 = var_1;
    var var_4 = vec3<bool>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(func_2(global1.b.d.x, vec3<u32>(49903u, 2257u, 0u), global1.b.d.x, 1465f).a, u_input.a.x), var_2.x) <= 4294967295u, false, global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(min(u_input.a, vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(var_2.zz, u_input.a.yz), _wgslsmith_mult_u32(u_input.a.x, var_0.a.x), 1u | u_input.b)), ~firstTrailingBit(vec4<u32>(var_0.a.x, 4294967295u, 35063u, u_input.b))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(363f, global1.b.b, global1.b.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.d.b, global1.b.b, 958f), vec3<f32>(1121f, global1.b.b, global1.d.b))))))), 1000f, vec2<u32>(~u_input.b, ~(~(~var_2.x))), vec2<i32>(~0i, -16736i));
}

