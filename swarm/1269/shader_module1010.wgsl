struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = any(vec3<bool>(all(select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(false, arg_0.x, true, true), vec4<bool>(arg_0.x, false, true, arg_0.x)), false)), arg_2.a >= (i32(-1i) * -2147483647i), any(vec2<bool>(arg_0.x | true, true))));
    let var_1 = ~reverseBits(vec3<i32>(arg_2.a, arg_2.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a, arg_2.a, arg_2.a, 2147483647i) << (vec4<u32>(16937u, 1489u, 84961u, u_input.a) % vec4<u32>(32u)), vec4<i32>(arg_2.a, arg_2.a, 36938i, arg_2.a))));
    var_0 = !(!arg_0.x);
    var_0 = any(select(!select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), !vec4<bool>(false, arg_0.x, false, true), arg_0.x), vec4<bool>(any(vec3<bool>(true, arg_0.x, arg_0.x)), true, all(select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, true, true), arg_0.x)), !(!arg_0.x)), select(false, any(!vec4<bool>(arg_0.x, false, arg_0.x, false)), arg_0.x)));
    var var_2 = -3978i;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), 1649f, _wgslsmith_f_op_f32(-arg_2.b))))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1095f, 861f))), arg_2.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.b + 2349f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-109f + arg_2.b)))), 722f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = reverseBits(_wgslsmith_clamp_vec3_u32(~(~(vec3<u32>(arg_3.d.x, 1u, u_input.a) & vec3<u32>(60415u, 4294967295u, 4294967295u))), ~vec3<u32>(104029u, 0u, u_input.a), ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.d.x, arg_3.d.x, 59645u), vec3<u32>(arg_3.d.x, arg_3.d.x, 42480u)) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 0u, 1u), ~vec3<u32>(u_input.a, u_input.a, 290u)) % vec3<u32>(32u))));
    var_0 = _wgslsmith_sub_vec3_u32(firstTrailingBit(select(vec3<u32>(u_input.a, var_0.x, arg_3.d.x), ~vec3<u32>(u_input.a, u_input.a, 50044u), true)), vec3<u32>(1u, 1u, var_0.x) & _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, var_0.x), ~vec3<u32>(49838u, arg_3.d.x, u_input.a))) >> (vec3<u32>(countOneBits(min(~4294967295u, 0u)), ~arg_3.d.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, 68492u), u_input.a)) % vec3<u32>(32u));
    let var_1 = Struct_4(max(arg_3.c.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(abs(-14520i), ~arg_3.c.x), ~(~7075i))));
    return select(select(vec4<bool>(true, true, false, arg_2 | true), select(vec4<bool>(false, false, !arg_2, arg_2), vec4<bool>(!arg_2, true, false || arg_2, !arg_2), true), 17266u > var_0.x), !vec4<bool>(false, arg_2, true, !(arg_3.d.x <= 5238u)), true);
}

fn func_2() -> StorageBuffer {
    var var_0 = ~4294967295u;
    var var_1 = vec4<bool>((_wgslsmith_f_op_f32(f32(-1f) * -204f) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(907f + 123f)))) || false, true, false, false);
    let var_2 = u_input.a;
    var_1 = select(!vec4<bool>(any(!vec4<bool>(var_1.x, false, var_1.x, var_1.x)), false, !(!var_1.x), var_1.x & true), vec4<bool>(var_1.x, firstTrailingBit(var_2 << (u_input.a % 32u)) >= ~(var_2 >> (4294967295u % 32u)), all(select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false), true), var_1.xwz, vec3<bool>(var_1.x, false, true))), var_1.x), !select(vec4<bool>(false, var_1.x, var_1.x, true), select(select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, false), false), select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, false, true, var_1.x)), !var_1.x), ~52881u <= ~u_input.a));
    var_1 = select(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-255f, -931f) - vec2<f32>(_wgslsmith_div_f32(-648f, 649f), _wgslsmith_f_op_f32(max(320f, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(true, var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1009f, 312f, -1542f) - vec3<f32>(1506f, 520f, -1454f)), Struct_1(25136i, 289f)))), var_1.x, Struct_3(Struct_1(_wgslsmith_div_i32(0i, -50603i), _wgslsmith_div_f32(224f, 1192f)), vec2<i32>(~(-10606i), -1i), -_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(25776i, 2147483647i)), firstLeadingBit(vec2<u32>(var_2, 1u)))), select(vec4<bool>(_wgslsmith_f_op_f32(sign(508f)) <= _wgslsmith_f_op_f32(ceil(447f)), any(!var_1.yzx), select(0u, 1516u, false) == ~0u, var_1.x), select(vec4<bool>(false, true, any(vec3<bool>(false, true, var_1.x)), var_1.x), !(!vec4<bool>(false, false, var_1.x, var_1.x)), !(!vec4<bool>(true, var_1.x, var_1.x, false))), !var_1.x), false);
    return StorageBuffer(abs(vec2<u32>(abs(u_input.a), abs(~110933u))), countOneBits(~select(vec3<u32>(0u, u_input.a, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 52499u, u_input.a), vec3<u32>(11159u, 4294967295u, var_2), vec3<u32>(11070u, var_2, u_input.a)), all(vec4<bool>(var_1.x, var_1.x, var_1.x, false)))));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-914f - -552f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(648f - 977f) - _wgslsmith_f_op_f32(trunc(310f))))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(false, ~(~reverseBits(abs(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)))));
}

