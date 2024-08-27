struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: array<f32, 8>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, false, false), -143f, vec4<i32>(-1i, 2147483647i, 3164i, -20290i), vec2<i32>(-48363i, 18144i), vec3<i32>(0i, 63343i, 47060i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5) -> vec4<i32> {
    let var_0 = (u_input.c > 0i) || true;
    var var_1 = Struct_4(true, _wgslsmith_clamp_vec4_u32(select(vec4<u32>(18476u, 4294967295u, _wgslsmith_add_u32(0u, arg_0.a.b.x), ~15508u), ~(~vec4<u32>(0u, 0u, u_input.e.x, arg_0.a.b.x)), vec4<bool>(false, false, arg_0.a.a.a.x, !var_0)), ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0.a.b.x, arg_0.a.b.x, 4294967295u), vec4<u32>(arg_0.a.b.x, 82214u, u_input.e.x, u_input.e.x)), abs(vec4<u32>(arg_0.a.b.x, 1u, u_input.e.x, 53122u))), ~vec4<u32>(~1u, ~1544u, ~arg_0.a.b.x, arg_0.a.b.x)), vec3<u32>(~(u_input.e.x ^ arg_0.a.b.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(2669u, 107075u, 0u), arg_0.a.b), firstTrailingBit(u_input.e.x)) << (vec3<u32>(~u_input.e.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(22048u, arg_0.a.b.x), 1u), 3288u) % vec3<u32>(32u)), _wgslsmith_mult_vec2_i32(u_input.a.zy, global2.d));
    let var_2 = Struct_4(select(true, true == ((global1[_wgslsmith_index_u32(4294967295u, 8u)] != global1[_wgslsmith_index_u32(u_input.e.x, 8u)]) && var_1.a), any(select(arg_0.a.a.a, vec4<bool>(var_0, global2.a.x, var_0, false), global2.a.x)) && !select(global2.a.x, true, global2.a.x)), _wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.e.x, var_1.c.x, var_1.b.x, 2671u)) & var_1.b, vec4<u32>(~1u, ~72849u, _wgslsmith_div_u32(reverseBits(var_1.c.x), firstTrailingBit(arg_0.a.b.x)), 1u)), var_1.b.xzy, max(var_1.d, -vec2<i32>(_wgslsmith_sub_i32(-8639i, global2.d.x), arg_0.a.a.e.x)));
    let var_3 = Struct_3(arg_0.a.a);
    let var_4 = global2.b;
    return var_3.a.c;
}

fn func_2() -> i32 {
    global2 = Struct_1(select(!(!global2.a), !select(global2.a, select(global2.a, vec4<bool>(false, global2.a.x, true, true), false), vec4<bool>(true, true, true, true)), global2.a.x), 1f, func_3(Struct_5(Struct_2(Struct_1(global2.a, 376f, vec4<i32>(-2147483647i, global2.d.x, 2147483647i, global0[_wgslsmith_index_u32(u_input.e.x, 17u)]), vec2<i32>(-2147483647i, 47489i), global2.c.wwz), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e.x, 17576u, 1728u), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x))))), _wgslsmith_mult_vec2_i32(u_input.a.xy, ~(~reverseBits(vec2<i32>(15659i, 0i)))), min(max(-global2.e, ~u_input.a.wzz ^ -vec3<i32>(2147483647i, global2.e.x, global0[_wgslsmith_index_u32(0u, 17u)])), -select(select(u_input.a.xzw, u_input.a.xzy, global2.a.x), u_input.a.xzz, any(global2.a))));
    global0 = array<i32, 17>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -381f))), _wgslsmith_f_op_f32(round(global2.b)))));
    global2 = Struct_1(global2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.e.x, 8u)] - 1000f))))))), vec4<i32>(max(-(~10336i), 2147483647i), global0[_wgslsmith_index_u32(u_input.e.x, 17u)], global2.e.x, abs(u_input.b.x | global0[_wgslsmith_index_u32(5710u, 17u)])), vec2<i32>(-(~global2.c.x), _wgslsmith_mult_i32(-1i << (u_input.e.x % 32u), i32(-1i) * -26284i) & _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, -1565i, 57230i), global2.e)), reverseBits(~(-global2.e)));
    let var_1 = Struct_2(Struct_1(select(vec4<bool>(false, true, true, false), !(!vec4<bool>(false, false, false, global2.a.x)), any(vec4<bool>(global2.a.x, global2.a.x, false, true))), _wgslsmith_f_op_f32(f32(-1f) * -944f), vec4<i32>(-1i, 4594i, -27518i, ~_wgslsmith_add_i32(8226i, 21441i)), u_input.b, _wgslsmith_mod_vec3_i32(global2.e, -u_input.a.yzx)), vec3<u32>(u_input.e.x, ~_wgslsmith_add_u32(~u_input.e.x, u_input.e.x), u_input.e.x | ~u_input.e.x));
    return global0[_wgslsmith_index_u32(~(~0u), 17u)];
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> Struct_5 {
    let var_0 = func_2();
    global1 = array<f32, 8>();
    global2 = Struct_1(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.b))) - _wgslsmith_f_op_f32(1308f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_3(Struct_5(Struct_2(Struct_1(vec4<bool>(global2.a.x, false, false, global2.a.x), arg_0, vec4<i32>(arg_1.x, 2147483647i, 2147483647i, -1i), vec2<i32>(19760i, 1i), global2.c.yxw), ~u_input.e))), vec2<i32>(~abs(-18106i), _wgslsmith_mod_i32(1i, ~(-global0[_wgslsmith_index_u32(u_input.e.x, 17u)]))), min(global2.c.zxy >> (vec3<u32>(u_input.e.x, u_input.e.x, countOneBits(27882u)) % vec3<u32>(32u)), func_3(Struct_5(Struct_2(Struct_1(global2.a, 916f, u_input.a, global2.d, u_input.a.yxz), vec3<u32>(4294967295u, u_input.e.x, u_input.e.x)))).zxw));
    var var_1 = _wgslsmith_div_f32(1642f, 506f);
    var var_2 = -(select(~vec4<i32>(14090i, global0[_wgslsmith_index_u32(12053u, 17u)], u_input.a.x, arg_1.x), vec4<i32>(2147483647i, global2.d.x, var_0, -38929i) ^ reverseBits(vec4<i32>(-22667i, var_0, arg_1.x, global2.d.x)), false) | (vec4<i32>(-1i) * -abs(u_input.a)));
    return Struct_5(Struct_2(Struct_1(select(select(vec4<bool>(false, global2.a.x, true, global2.a.x), vec4<bool>(global2.a.x, false, false, global2.a.x), global2.a), global2.a, any(vec2<bool>(global2.a.x, global2.a.x))), -2121f, func_3(Struct_5(Struct_2(Struct_1(vec4<bool>(false, global2.a.x, true, false), 706f, vec4<i32>(-2147483647i, 0i, 1i, var_0), vec2<i32>(arg_1.x, -17550i), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(89863u, 17u)], global2.e.x)), u_input.e))), select(~global2.c.yw, u_input.a.wz, vec2<bool>(true, false)), global2.e), reverseBits(~(u_input.e & vec3<u32>(u_input.e.x, u_input.e.x, 0u)))));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = func_1(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + arg_2.x) * 2440f) - arg_2.x)), vec2<i32>(_wgslsmith_add_i32(-57277i, -1i), firstTrailingBit(-1i)));
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(~(~_wgslsmith_clamp_i32(arg_1.a.a.d.x, -11233i, 0i)), ~2147483647i), 27285i);
    return Struct_1(func_1(global2.b, var_0.a.a.c.yy).a.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-685f - -819f) + global1[_wgslsmith_index_u32(countOneBits(~arg_1.a.b.x), 8u)])), vec4<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global2.c, vec4<i32>(-7636i, u_input.b.x, -29460i, u_input.c)), -u_input.a), select(u_input.c, -914i, arg_1.a.a.a.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(func_3(arg_1).x, countOneBits(global2.c.x)), ~u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i >> (u_input.e.x % 32u), 3101i), var_0.a.a.d.x)), vec2<i32>(u_input.d, _wgslsmith_clamp_i32(var_0.a.a.e.x, _wgslsmith_clamp_i32(u_input.d, 1i, func_3(arg_1).x), var_0.a.a.c.x)), max(abs(countOneBits(max(var_0.a.a.e, arg_1.a.a.c.wxy))), arg_1.a.a.c.zyw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_sub_vec2_i32(vec2<i32>(12214i, 2147483647i), global2.d);
    global1 = array<f32, 8>();
    global2 = func_4(1u, func_1(_wgslsmith_f_op_f32(f32(-1f) * -189f), global2.c.xw), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.b, 733f, 570f, -531f), vec4<f32>(global2.b, 1460f, 1444f, 2050f)))) * vec4<f32>(global2.b, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e.x, 8u)]), _wgslsmith_f_op_f32(333f * 650f), -451f)) - vec4<f32>(global1[_wgslsmith_index_u32(~(~0u), 8u)], -413f, _wgslsmith_f_op_f32(-global2.b), global1[_wgslsmith_index_u32(u_input.e.x, 8u)])));
    global0 = array<i32, 17>();
    var var_1 = vec2<u32>(u_input.e.x, ~u_input.e.x) | u_input.e.zz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x | 62411u, -609f);
}

