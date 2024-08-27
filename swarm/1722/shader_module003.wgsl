struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_2,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

var<private> global1: f32 = 1268f;

var<private> global2: vec4<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<f32> {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(~select(~vec2<u32>(17005u, 0u), vec2<u32>(u_input.a, 0u) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), vec2<bool>(true, true)), vec2<u32>(_wgslsmith_clamp_u32(u_input.a, 6688u, u_input.a & u_input.a), u_input.a)), ~firstLeadingBit(1u), ~_wgslsmith_mult_u32(~_wgslsmith_add_u32(u_input.a, u_input.a), 2262u), ~(~u_input.a | max(_wgslsmith_dot_vec2_u32(vec2<u32>(17397u, 13769u), vec2<u32>(u_input.a, 1u)), 3412u)));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(max(~var_0.xzy, abs(var_0.wzw)), var_0.zww), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.xy) * vec2<f32>(_wgslsmith_f_op_f32(sign(1235f)), global2.x)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(false, true, true)), select(false, true, false)), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(false, true, true)))), global2.x);
    var var_2 = Struct_3(Struct_1(4682u, _wgslsmith_f_op_vec2_f32(global2.xw * vec2<f32>(_wgslsmith_div_f32(var_1.d, 471f), -887f)), any(!(!vec2<bool>(true, var_1.c))), -1139f), Struct_1(select(0u, ~firstTrailingBit(48574u), !var_1.c), _wgslsmith_f_op_vec2_f32(abs(global2.wz)), true, var_1.d), Struct_1(countOneBits(~var_0.x) & _wgslsmith_dot_vec3_u32(~var_0.zwx, _wgslsmith_clamp_vec3_u32(var_0.wwy, vec3<u32>(59973u, u_input.a, var_1.a), vec3<u32>(616u, 12381u, 30764u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(-var_1.b.x))), false, global2.x), Struct_2(Struct_1(~var_1.a, vec2<f32>(var_1.d, _wgslsmith_f_op_f32(-global2.x)), select(u_input.b.x < u_input.b.x, var_1.a == 1u, true & var_1.c), _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1260f)))), u_input.b), Struct_2(Struct_1(44766u >> (_wgslsmith_add_u32(u_input.a, var_1.a) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.ww, vec2<f32>(var_1.b.x, var_1.d))), 1u > u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b.x)) - 1000f)), vec4<i32>(_wgslsmith_add_i32(~u_input.b.x, select(u_input.b.x, -20210i, true)), _wgslsmith_div_i32(8149i, ~65258i), -1712i, ~u_input.b.x)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_mult_u32(25578u, var_2.e.a.a), vec2<f32>(882f, _wgslsmith_div_f32(-889f, _wgslsmith_f_op_f32(var_2.e.a.b.x - 1351f))), !select(var_1.c, true, any(vec3<bool>(var_1.c, var_2.c.c, var_1.c))), -1000f), _wgslsmith_mult_vec4_i32(max(firstLeadingBit(vec4<i32>(21566i, var_2.d.b.x, var_2.e.b.x, var_2.d.b.x)), -(vec4<i32>(var_2.e.b.x, 0i, u_input.b.x, u_input.b.x) >> (vec4<u32>(30455u, u_input.a, 19259u, var_0.x) % vec4<u32>(32u)))), ~((vec4<i32>(var_2.d.b.x, var_2.e.b.x, u_input.b.x, u_input.b.x) & var_2.e.b) ^ _wgslsmith_div_vec4_i32(var_2.e.b, vec4<i32>(-2147483647i, 22466i, var_2.e.b.x, var_2.e.b.x)))));
    let var_4 = Struct_4(1u, vec2<u32>(~reverseBits(_wgslsmith_dot_vec2_u32(var_0.yx, var_0.wy)), ~var_0.x), !var_2.a.c, var_2.d);
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f), 2410f), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.d.a.d), _wgslsmith_f_op_f32(var_3.a.d * var_1.b.x))), 503f)))));
}

fn func_2(arg_0: Struct_5, arg_1: bool) -> bool {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) + 278f), -1000f, global2.x, -2621f) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, arg_0.c.a.d, -151f), vec4<f32>(1000f, 1000f, 1000f, 1109f))))))));
    var var_0 = arg_0.e.x;
    let var_1 = global2.wxz;
    var var_2 = Struct_4(47234u, min(~_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(52678u, 4294967295u), vec2<u32>(27012u, u_input.a), vec2<u32>(arg_0.c.a.a, 26153u)), ~vec2<u32>(0u, 45647u)), firstTrailingBit(vec2<u32>(~u_input.a, u_input.a))), _wgslsmith_f_op_f32(exp2(1f)) != global2.x, arg_0.b.d);
    var var_3 = var_2.d.a;
    return select(any(!select(vec4<bool>(false, false, var_2.c, true), !global0[_wgslsmith_index_u32(40731u, 31u)], arg_1)), all(!(!arg_0.a.wzy)), !(!select(642f < var_2.d.a.d, all(vec4<bool>(true, var_2.d.a.c, true, false)), select(false, arg_0.b.a.c, var_3.c))));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = select(vec4<bool>(true, all(vec2<bool>(true, true)), !func_2(Struct_5(vec4<bool>(true, false, false, false), Struct_3(Struct_1(85896u, global2.xz, true, 140f), Struct_1(u_input.a, vec2<f32>(-161f, global2.x), false, -1000f), Struct_1(u_input.a, global2.zx, false, -1211f), Struct_2(Struct_1(9266u, vec2<f32>(-616f, -175f), true, 396f), u_input.b), Struct_2(Struct_1(9045u, vec2<f32>(global2.x, -2450f), true, global2.x), u_input.b)), Struct_2(Struct_1(u_input.a, global2.wy, true, global2.x), arg_1), 1000f, arg_1.zyw), true), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, false), select(!select(global0[_wgslsmith_index_u32(u_input.a, 31u)], vec4<bool>(true, true, true, true), true), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, reverseBits(u_input.a)) | ((1u << (u_input.a % 32u)) >> (u_input.a % 32u)), 31u)], vec4<bool>(global2.x > _wgslsmith_f_op_f32(global2.x - 237f), true, !func_2(Struct_5(vec4<bool>(false, true, true, true), Struct_3(Struct_1(58646u, vec2<f32>(-976f, global2.x), true, global2.x), Struct_1(4294967295u, global2.wy, false, global2.x), Struct_1(0u, vec2<f32>(global2.x, global2.x), true, global2.x), Struct_2(Struct_1(u_input.a, vec2<f32>(915f, 180f), true, global2.x), u_input.b), Struct_2(Struct_1(7471u, vec2<f32>(1000f, 411f), false, -621f), vec4<i32>(-2147483647i, 1i, arg_1.x, arg_1.x))), Struct_2(Struct_1(0u, vec2<f32>(global2.x, global2.x), true, global2.x), vec4<i32>(-2147483647i, 1i, u_input.b.x, 1i)), -157f, arg_1.yxx), true), true || any(vec2<bool>(true, true)))));
    var var_1 = Struct_2(Struct_1(u_input.a, global2.zw, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-763f + global2.x) + 1695f))), (arg_1 | vec4<i32>(6320i, ~2147483647i, arg_0, -arg_0)) ^ (arg_1 & arg_1));
    global0 = array<vec4<bool>, 31>();
    var_0 = !global0[_wgslsmith_index_u32(select(88690u, var_1.a.a, var_1.a.c) | 1u, 31u)];
    let var_2 = _wgslsmith_mult_vec4_u32(select(~vec4<u32>(_wgslsmith_div_u32(var_1.a.a, var_1.a.a), 1u, 0u, 1u), ~(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) << (max(vec4<u32>(var_1.a.a, var_1.a.a, var_1.a.a, u_input.a), vec4<u32>(var_1.a.a, 1u, 52962u, u_input.a)) % vec4<u32>(32u))), func_2(Struct_5(global0[_wgslsmith_index_u32(1u, 31u)], Struct_3(Struct_1(4294967295u, var_1.a.b, var_0.x, global2.x), var_1.a, var_1.a, Struct_2(var_1.a, var_1.b), Struct_2(Struct_1(var_1.a.a, vec2<f32>(var_1.a.b.x, var_1.a.d), true, var_1.a.d), vec4<i32>(41906i, 4699i, 30880i, arg_0))), Struct_2(var_1.a, u_input.b), _wgslsmith_f_op_f32(-var_1.a.d), ~var_1.b.xxx), false)), ~_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a, abs(54721u), _wgslsmith_mod_u32(4294967295u, u_input.a), ~1u), vec4<u32>(u_input.a & 20929u, 18049u, var_1.a.a, 52010u)));
    return Struct_4(abs(var_1.a.a), (var_2.zz & var_2.zw) & var_2.yw, all(var_0.zy), Struct_2(Struct_1(1u, global2.xz, true && (true & var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(788f)), var_1.a.b.x))), ~arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(0u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) * global2.x), 908f), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -u_input.b);
    var var_1 = reverseBits(min(0i, abs(firstTrailingBit(var_0.b.x >> (u_input.a % 32u)))));
    var var_2 = var_0.a.a ^ min(var_0.a.a, ~select(42511u ^ u_input.a, 2814u, true));
    var_1 = var_0.b.x;
    var var_3 = func_1(firstTrailingBit(u_input.b.x), var_0.b);
    var_2 = _wgslsmith_sub_u32(u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(global2.zxx)), max(_wgslsmith_add_i32(countOneBits(var_0.b.x) | (var_0.b.x << (18603u % 32u)), var_3.d.b.x), var_0.b.x), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.b.x, 2147483647i, var_0.b.x) ^ vec3<i32>(6331i, u_input.b.x, var_0.b.x)), vec3<i32>(_wgslsmith_div_i32(-22489i, 45170i), countOneBits(2147483647i), -1i)) | vec3<i32>(var_3.d.b.x, countOneBits(-23538i), -1901i), 30760u);
}

