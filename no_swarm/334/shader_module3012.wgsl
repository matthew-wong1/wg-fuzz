struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<i32> = vec3<i32>(0i, -1i, 30467i);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<i32>(-1i, -60368i, -1i), i32(-2147483648), vec3<u32>(4294967295u, 4294967295u, 1u)), vec4<bool>(true, false, true, false), 2880i);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<i32>) -> f32 {
    var var_0 = Struct_5(Struct_4(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1688f)), arg_0.x))), all(global2.b.yw), countOneBits(24264i), -vec2<i32>(firstLeadingBit(~global2.c), -3876i), arg_0.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec3_i32(select(abs(vec3<i32>(1i, 2147483647i, global1.x)), vec3<i32>(global2.a.a.x, -2147483647i, -29906i) | var_0.a.a.a, vec3<bool>(true, global2.b.x, global2.b.x)), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c, arg_2.x, -1i), firstLeadingBit(var_0.a.a.a))), 1677i, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.a.c.x, 37601u, 1u), global2.a.c, var_0.a.a.c) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.a.c.x, 1u, 1u), vec3<u32>(var_0.a.a.c.x, var_0.a.a.c.x, 28863u), vec3<u32>(u_input.a.x, 0u, 1u))), global2.b, global0.x);
    let var_2 = vec3<u32>(1u, var_1.a.c.x | u_input.a.x, global2.a.c.x);
    var var_3 = select(127774u >> (1u % 32u), var_0.a.a.c.x, true);
    let var_4 = Struct_3(~_wgslsmith_mult_vec2_u32(var_2.xy, _wgslsmith_div_vec2_u32(global2.a.c.xx, u_input.a)) | var_2.zz, ~_wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global0.x, global1.x), vec3<i32>(global1.x, global0.x, var_1.a.b), vec3<i32>(global0.x, -2147483647i, var_0.a.a.a.x)), vec3<i32>(15689i, 1i, u_input.c)));
    return _wgslsmith_f_op_f32(exp2(var_0.e));
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_4(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(956f, _wgslsmith_f_op_f32(488f + -163f), any(vec3<bool>(true, true, global2.b.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(1666f, -384f, -1371f, -1096f), false, global2.a.a.yz)), _wgslsmith_f_op_f32(f32(-1f) * -1805f))) * -168f));
    var_0 = Struct_4(Struct_1(vec3<i32>(global2.c, 1i, _wgslsmith_mult_i32(-2147483647i, -global2.c)), 10674i, ~(~vec3<u32>(var_0.a.c.x, 0u, u_input.a.x))), var_0.b);
    var var_1 = any(global2.b.wwz);
    var_0 = Struct_4(Struct_1(abs(_wgslsmith_sub_vec3_i32(-global2.a.a, var_0.a.a)), _wgslsmith_sub_i32(-1i, reverseBits(abs(global2.c))), firstLeadingBit(vec3<u32>(abs(97756u), ~var_0.a.c.x, countOneBits(global2.a.c.x)))), -101f);
    var_0 = Struct_4(Struct_1(global2.a.a, 922i ^ min(-2147483647i, global1.x), vec3<u32>(0u, ~1u, _wgslsmith_clamp_u32(~u_input.b, ~41516u, ~13113u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -627f))))));
    return Struct_5(Struct_4(var_0.a, var_0.b), !(!global2.b.x), global0.x, select(_wgslsmith_clamp_vec2_i32(firstLeadingBit(firstLeadingBit(var_0.a.a.xz)), -vec2<i32>(global1.x, global1.x), global2.a.a.zx), max(_wgslsmith_mod_vec2_i32(global1.zx >> (u_input.a % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.a.x, -2147483647i), var_0.a.a.yx)), -vec2<i32>(global0.x, u_input.c)), !(!global2.b.x) & true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b))), 1473f));
}

fn func_1() -> bool {
    let var_0 = func_2();
    var var_1 = vec4<u32>(~(~var_0.a.a.c.x), countOneBits(u_input.b), var_0.a.a.c.x, 0u);
    let var_2 = select(!select(!global2.b.xy, vec2<bool>(global2.b.x, any(global2.b.wy)), var_0.b), select(vec2<bool>(true, true), select(!(!global2.b.zy), select(!global2.b.wz, vec2<bool>(true, false), select(global2.b.wy, vec2<bool>(var_0.b, true), global2.b.yw)), (u_input.c & 21234i) >= global2.a.a.x), !vec2<bool>(!global2.b.x, true)), false | (_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.b * var_0.e), _wgslsmith_f_op_f32(-var_0.e)) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.b, var_0.e))));
    return select(var_2.x & (var_2.x && var_2.x), var_0.b, _wgslsmith_mod_u32(var_0.a.a.c.x, global2.a.c.x) >= (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, global2.a.c.x), vec2<u32>(1u, var_1.x)) | var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!(!global2.b.zwx), global2.b.ywz, false), select(vec3<bool>(!(!global2.b.x), false, all(vec2<bool>(global2.b.x, true))), select(global2.b.xzw, !vec3<bool>(false, false, global2.b.x), true), vec3<bool>(func_1(), any(vec4<bool>(global2.b.x, true, false, false)), true)), any(global2.b.wz));
    let var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(max(u_input.a, vec2<u32>(global2.a.c.x, 4294967295u)), vec2<u32>(24279u, 50355u)) >> (~u_input.a % vec2<u32>(32u)), u_input.a ^ (~vec2<u32>(u_input.a.x, global2.a.c.x) ^ func_2().a.a.c.xy)) >> (global2.a.c.yz % vec2<u32>(32u));
    let var_2 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, ~36300u, var_1.x >> (u_input.b % 32u), ~11943u), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b, 1u, 48581u), vec4<u32>(var_1.x, var_1.x, var_1.x, 29745u)), vec4<u32>(4294967295u, u_input.b, global2.a.c.x, 1u))), vec4<u32>(select(35221u, 4294967295u, func_1()), ~u_input.b, ~(17069u & var_1.x), ~44701u));
    global0 = vec2<i32>(global0.x, countOneBits(global1.x) ^ global2.a.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-163f, 272f, -1000f, 340f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2570f, -1469f, -1000f, -832f)), false & var_0.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-109f, 131f, 287f, -275f))))))))));
    let var_4 = countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-_wgslsmith_sub_i32(-43812i, global2.c), -(~(-1i)), global1.x), vec3<i32>(global1.x, max(-38884i, -1i), -27657i), global2.a.a));
    var var_5 = select(var_0.xx, vec2<bool>(1i <= firstLeadingBit(global2.a.a.x), select(global2.b.x, any(!vec4<bool>(true, var_0.x, global2.b.x, false)), ~global2.a.a.x <= u_input.c)), !var_0.x);
    global1 = ~global2.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(33383u, _wgslsmith_dot_vec2_u32(global2.a.c.xy, var_2.wz));
}

