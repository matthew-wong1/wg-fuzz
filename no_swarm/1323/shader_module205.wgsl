struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1000f, 169f, 808f);

var<private> global1: i32;

var<private> global2: u32;

var<private> global3: vec3<u32> = vec3<u32>(60026u, 0u, 10515u);

var<private> global4: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    global1 = arg_1;
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(-875f, _wgslsmith_f_op_f32(global0.x * arg_2.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global0.zz))));
    global2 = ~_wgslsmith_sub_u32(global3.x, 1u);
    global1 = (~(~arg_0) ^ -1i) >> (0u % 32u);
    let var_1 = global3.x;
    return vec4<u32>(~(~(4294967295u ^ global4.c)), ~(~3059u), ~10429u, 4294967295u);
}

fn func_2() -> vec3<u32> {
    let var_0 = firstLeadingBit(select(~vec4<u32>(~global3.x, 19122u, 1u, ~global4.c), func_3(_wgslsmith_add_i32(-20379i, ~(-12812i)), i32(-1i) * -41427i, Struct_1(global4.b != true, select(false, false, global4.a), global3.x, global4.b, _wgslsmith_f_op_f32(-global0.x))), global0.x >= global4.e));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(~(~_wgslsmith_mod_i32(u_input.a, -3770i)), -2147483647i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a, reverseBits(-19553i), -12824i, -2147483647i << (0u % 32u)), vec4<i32>(u_input.a, min(u_input.a, -914i), u_input.a >> (4294967295u % 32u), u_input.a)));
    let var_2 = _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(~vec2<i32>(-23149i, u_input.a), abs(vec2<i32>(49042i, u_input.a))), firstLeadingBit(max(~(-vec2<i32>(49246i, -2147483647i)), vec2<i32>(firstLeadingBit(-39364i), 0i))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(-605f, global4.e), _wgslsmith_f_op_f32(abs(global4.e)), global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-639f, global4.e, global4.e) + vec3<f32>(290f, -899f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -401f, -498f)), select(vec3<bool>(true, global4.a, true), vec3<bool>(global4.a, global4.b, false), false)))), global4.a)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-965f))) - _wgslsmith_div_f32(-403f, _wgslsmith_f_op_f32(round(-1158f)))), global4.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2034f - 497f), global4.e))))));
    global1 = ~(u_input.a ^ _wgslsmith_div_i32(var_2, abs(u_input.a) ^ 4937i));
    return firstTrailingBit(vec3<u32>(1u, var_0.x & _wgslsmith_mult_u32(global3.x, 0u), ~62222u | firstLeadingBit(global3.x)));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<u32>) -> vec3<bool> {
    global3 = func_2();
    var var_0 = global4.c;
    let var_1 = Struct_1(false, global4.d, 1u, false || all(vec4<bool>(!arg_0, false, all(vec4<bool>(global4.a, arg_0, global4.d, false)), !arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + 345f)));
    let var_2 = countOneBits(~func_3(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -14503i, 53905i), vec3<i32>(u_input.a, -2147483647i, 9605i)), Struct_1(!global4.a, true, 1u, var_1.a & arg_0, global0.x)).x);
    var var_3 = countOneBits(u_input.a);
    return select(select(vec3<bool>(any(!vec3<bool>(global4.d, true, arg_0)), !all(vec2<bool>(var_1.a, false)), (true & arg_0) && (-2147483647i <= u_input.a)), !select(select(vec3<bool>(var_1.b, true, true), vec3<bool>(arg_0, true, global4.b), arg_0), select(vec3<bool>(false, arg_0, false), vec3<bool>(var_1.a, true, var_1.b), vec3<bool>(false, false, true)), false), true), select(vec3<bool>(var_1.b, false, true), vec3<bool>(false || (global4.c > 1u), all(vec4<bool>(true, global4.a, global4.d, var_1.d)), !(!var_1.d)), select(countOneBits(u_input.a) <= u_input.a, !any(vec3<bool>(global4.d, var_1.a, true)), arg_0)), (u_input.a <= abs(-25104i ^ u_input.a)) & all(!(!vec4<bool>(true, global4.b, var_1.b, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~global3.x);
    var var_0 = select(!vec3<bool>(false, _wgslsmith_f_op_f32(global4.e * 358f) >= _wgslsmith_f_op_f32(814f * -273f), true | (49815i < u_input.a)), vec3<bool>(global4.a, any(func_1(!global4.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(191f, global0.x, global0.x)), vec2<u32>(global4.c, 16683u))), false), vec3<bool>(true, all(select(!vec4<bool>(global4.d, global4.a, global4.d, true), vec4<bool>(global4.a, global4.d, true, true), vec4<bool>(false, global4.a, true, global4.d))), false));
    let var_1 = Struct_1(var_0.x, var_0.x, func_2().x, global4.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) + -1061f));
    let var_2 = var_1;
    global3 = select(vec3<u32>(~(~global3.x), _wgslsmith_add_u32(4294967295u, global4.c), _wgslsmith_sub_u32(29397u, min(~global4.c, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, global4.c, global3.x), vec3<u32>(0u, var_1.c, 0u))))), ~_wgslsmith_add_vec3_u32(~(~vec3<u32>(var_2.c, global3.x, global3.x)), ~vec3<u32>(68004u, global3.x, global4.c)), true);
    var var_3 = var_1;
    var var_4 = vec3<u32>(min(~var_2.c, ~var_1.c) >> (~4294967295u % 32u), _wgslsmith_dot_vec3_u32(func_3(u_input.a, 2147483647i, Struct_1(true, var_1.a, var_3.c, true, global4.e)).xzw, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1624u, 1u, global3.x, 78893u), vec4<u32>(global3.x, var_3.c, global3.x, 4294967295u)), reverseBits(global3.x), 0u)) >> (~global4.c % 32u), var_3.c);
    let var_5 = ~select(select(vec4<u32>(var_4.x, 4294967295u, global4.c, 1u), vec4<u32>(var_1.c, 4294967295u, 27551u, 0u), global4.d), ~vec4<u32>(43871u, 0u, var_3.c, 29369u), any(var_0.xz)) & vec4<u32>(~var_3.c, global4.c, func_2().x, ~func_3(_wgslsmith_mult_i32(-65554i, u_input.a), 1i, var_1).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(-(~24852i), ~countOneBits(u_input.a)), _wgslsmith_sub_vec2_i32(select(~vec2<i32>(2147483647i, 4998i), abs(vec2<i32>(10838i, -29776i)), var_0.x), select(vec2<i32>(u_input.a, -16572i), select(vec2<i32>(28837i, u_input.a), vec2<i32>(2147483647i, u_input.a), var_1.d), true)), _wgslsmith_mod_vec2_i32(vec2<i32>(min(-14706i, -2147483647i), _wgslsmith_mult_i32(0i, u_input.a)), min(abs(vec2<i32>(-19971i, u_input.a)), abs(vec2<i32>(u_input.a, -2147483647i))))), -_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, u_input.a, u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a) >> (var_5.zxw % vec3<u32>(32u)), -vec3<i32>(u_input.a, u_input.a, u_input.a), countOneBits(vec3<i32>(u_input.a, 0i, u_input.a)))), _wgslsmith_f_op_f32(round(-580f)), 39963u);
}

