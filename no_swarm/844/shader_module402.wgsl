struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = 300f;
    var_0 = arg_0.a.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(arg_0.a)), vec3<i32>(~min(arg_0.d.x, 1i), ~(~_wgslsmith_mod_i32(14962i, arg_0.b.x)), -(~(~u_input.d))), ~countOneBits(vec3<u32>(abs(1u), _wgslsmith_dot_vec2_u32(arg_0.c.zx, arg_0.c.yx), 18690u)), ~(~(_wgslsmith_mod_vec2_i32(arg_0.d, arg_0.b.xz) << (~arg_0.c.zz % vec2<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_f32(ceil(384f));
    var_0 = _wgslsmith_f_op_f32(abs(116f));
    return _wgslsmith_sub_vec3_u32(arg_0.c, u_input.a.wwy);
}

fn func_2() -> Struct_1 {
    global0 = vec2<bool>(true, true);
    var var_0 = abs(-(~vec4<i32>(393i, u_input.d, -10173i, 37662i)) & ~abs(vec4<i32>(u_input.d, u_input.d, 2147483647i, 36110i)));
    global0 = vec2<bool>(global0.x, true);
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1531f, 914f)))), 273f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(982f)) - -1000f)))), -var_0.yzz, ~vec3<u32>(~(0u ^ u_input.a.x), u_input.c >> (~0u % 32u), 4294967295u), var_0.xz);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1462f - var_1.a.x))), -217f, _wgslsmith_f_op_f32(sign(901f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.a, var_1.a)))), reverseBits(~select(abs(var_0.xyw), vec3<i32>(u_input.d, u_input.d, var_1.b.x), true)), abs(min(_wgslsmith_clamp_vec3_u32(u_input.a.xww, u_input.a.xxw, var_1.c), func_3(Struct_1(vec3<f32>(var_1.a.x, var_1.a.x, 1000f), var_0.wzz, u_input.a.xwy, var_1.b.xy)))) | vec3<u32>(_wgslsmith_sub_u32(1u, countOneBits(u_input.c)), 1u, func_3(Struct_1(vec3<f32>(var_1.a.x, var_1.a.x, -324f), vec3<i32>(var_1.d.x, var_1.b.x, var_0.x), var_1.c, var_0.wy)).x), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-21268i, u_input.d) >> (firstLeadingBit(u_input.a.xx) % vec2<u32>(32u))), ~(~min(vec2<i32>(-1i, -13330i), var_0.xz))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(exp2(var_2.a.x)), var_1.a.x), var_1.a, false)), abs(vec3<i32>(select(abs(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, -5328i, -1i), vec4<i32>(var_2.d.x, var_1.b.x, -2147483647i, -2147483647i)), false), 48095i, ~_wgslsmith_clamp_i32(var_0.x, 46078i, 0i))), vec3<u32>(1u, ~(1u | u_input.a.x) ^ abs(1u), 1u), firstLeadingBit(abs(~var_2.b.xz & reverseBits(vec2<i32>(26480i, -1i)))));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> vec2<i32> {
    var var_0 = abs(select(vec2<u32>(firstTrailingBit(max(4294967295u, u_input.a.x)), 4294967295u), vec2<u32>(u_input.a.x, firstTrailingBit(u_input.a.x)), false));
    var var_1 = func_2();
    return min(vec2<i32>(var_1.d.x, -2147483647i), vec2<i32>(var_1.b.x, ~abs(_wgslsmith_div_i32(2147483647i, 3565i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = select(select(!vec2<bool>(global0.x || false, true), vec2<bool>(!global0.x || global0.x, select(any(vec2<bool>(true, global0.x)), true, true)), true), vec2<bool>(true, true), !(!(!vec2<bool>(false, global0.x))));
    var var_0 = abs(arg_1.b);
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f + arg_1.a.x), arg_0.a.x, _wgslsmith_div_f32(605f, _wgslsmith_f_op_f32(218f * arg_1.a.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -514f), arg_2.a.x, _wgslsmith_f_op_f32(-433f + -1207f)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0.a))))), arg_1.b, u_input.a.wzx, abs(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.b.x, 0i), arg_1.b.x), arg_2.b.x >> (_wgslsmith_dot_vec3_u32(arg_0.c, vec3<u32>(36906u, u_input.a.x, 58192u)) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = vec2<bool>(true, all(vec3<bool>((i32(-1i) * -13617i) < u_input.d, global0.x, true)));
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1407f, 1386f, 880f))))), vec3<i32>(max(i32(-1i) * -1i, u_input.d), 54641i >> (firstLeadingBit(27345u) % 32u), 1i), vec3<u32>(17552u, 4294967295u, _wgslsmith_mod_u32(u_input.b, u_input.b)), func_1(!all(vec4<bool>(false, false, global0.x, global0.x)), vec3<bool>(false, true, 4294967295u == u_input.c))), func_2(), func_2());
    var_1 = func_2();
    global0 = select(!vec2<bool>((var_1.a.x < var_1.a.x) != all(vec2<bool>(global0.x, global0.x)), var_1.c.x == 4294967295u), vec2<bool>(true, any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), !vec2<bool>(global0.x, global0.x), false))), any(vec3<bool>(!global0.x, true, all(!vec3<bool>(var_0, var_0, true)))));
    let var_2 = ~(1u >> (1u % 32u));
    global0 = vec2<bool>(!(!global0.x), select(var_0, all(select(select(vec3<bool>(true, true, global0.x), vec3<bool>(true, global0.x, true), true), select(vec3<bool>(global0.x, var_0, false), vec3<bool>(global0.x, global0.x, var_0), false), var_0)), var_0));
    let var_3 = -(~abs(~(~var_1.b)));
    var var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(var_1.c, max(var_1.c, firstLeadingBit(u_input.a.zzz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.zx) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.yy + vec2<f32>(var_1.a.x, var_1.a.x)), vec2<f32>(620f, -1637f)) * var_1.a.xz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1925f, var_1.a.x, var_1.a.x, var_1.a.x)))))), var_2, ~countOneBits(~vec3<i32>(59583i, -1i, var_1.d.x) ^ -vec3<i32>(var_3.x, var_1.d.x, -46488i)));
}

