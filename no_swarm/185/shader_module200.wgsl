struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -898f))));
    let var_1 = all(vec2<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))), (_wgslsmith_f_op_f32(-var_0) > -818f) | all(vec2<bool>(true, true))));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-5524i, u_input.e.x), vec2<i32>(-34471i, 2147483647i))), -64108i, max(reverseBits(16929i), _wgslsmith_div_i32(u_input.e.x, 0i)), 1i), vec4<i32>(~0i, u_input.e.x, _wgslsmith_sub_i32(-u_input.e.x, _wgslsmith_sub_i32(u_input.e.x, -2147483647i)), -firstLeadingBit(u_input.e.x))), _wgslsmith_mod_i32(countOneBits(-2147483647i) >> (_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c.x, u_input.d.x, 4294967295u)), u_input.d.zyy) % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 2147483647i, -1i), vec3<i32>(u_input.e.x, 2147483647i, -11661i)) >> (reverseBits(_wgslsmith_dot_vec3_u32(u_input.d.zyy, u_input.d.zwx)) % 32u)), u_input.e.x, ~1i);
    let var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(4294967295u), u_input.a, 49336u), vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(0u, u_input.c.x) << (_wgslsmith_sub_u32(u_input.a, 16674u) % 32u)), u_input.a, 55873u));
    var var_4 = var_3;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-131f)), -886f);
}

fn func_2(arg_0: u32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-720f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3())))) - -141f);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - 397f) - var_0), -1518f)), true), Struct_1(var_0, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(u_input.e.x, u_input.e.x), u_input.e.x) > u_input.e.x));
    var_1 = Struct_2(var_1.a, Struct_1(256f, false));
    var var_2 = vec3<u32>(1u, 4294967295u, 4294967295u);
    var_2 = vec3<u32>(var_2.x, 102497u, _wgslsmith_mult_u32(var_2.x, ~u_input.d.x));
    return Struct_5(Struct_3(4294967295u, Struct_1(var_1.b.a, false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0)), var_0)));
}

fn func_4(arg_0: Struct_5) -> u32 {
    var var_0 = -1059f;
    let var_1 = arg_0.a.b.b;
    var var_2 = arg_0.a.b;
    var_2 = func_2(4294967295u).a.b;
    var var_3 = arg_0;
    return 30596u;
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-268f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2387f + -881f) * _wgslsmith_f_op_f32(trunc(1520f)))))));
    let var_1 = func_4(func_2(~(_wgslsmith_mult_u32(25855u, u_input.d.x) & (u_input.a ^ u_input.d.x))));
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(293f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2150f - 612f))), true), vec2<bool>(true, _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.b), u_input.d.wxw)) == ~u_input.b), ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.e.x), u_input.e.xz) > (i32(-1i) * -8020i), Struct_2(Struct_1(_wgslsmith_div_f32(func_2(0u).a.c, -466f), any(vec2<bool>(false, true))), Struct_1(-270f, all(vec2<bool>(true, false)))));
    var var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(11453u, u_input.a, 54593u, ~0u), ~countOneBits(_wgslsmith_div_vec4_u32(u_input.d, u_input.d))), vec4<u32>(1u, 0u, ~(~0u), abs(u_input.a)));
    var var_4 = true;
    return Struct_4(Struct_1(var_2.a.a, !(!var_2.d.b.b) || (false || (var_2.c || false))), !vec2<bool>(any(!vec3<bool>(true, var_2.c, true)), var_2.b.x), !any(vec2<bool>(!var_2.d.a.b, any(vec4<bool>(false, true, var_2.c, true)))), var_2.d);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> Struct_3 {
    var var_0 = ~select(_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-39097i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, u_input.e.x, u_input.e.x), vec4<i32>(30033i, 1i, u_input.e.x, u_input.e.x)), 1i), u_input.e.x), ~max(_wgslsmith_add_i32(u_input.e.x, 2147483647i), ~u_input.e.x), all(!vec3<bool>(arg_0.d.b.b, arg_0.b.x, arg_1.b)) || false);
    var_0 = u_input.e.x;
    let var_1 = func_1().b;
    var_0 = abs(u_input.e.x);
    let var_2 = ~(~(-1i));
    return Struct_3(u_input.b, func_1().d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(step(arg_0.a.a, _wgslsmith_f_op_f32(ceil(268f))))))));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_5) -> Struct_2 {
    var var_0 = -1i;
    var_0 = abs(-117259i);
    var_0 = 32412i;
    let var_1 = (!(!(!arg_0.x)) & func_2(abs(~9394u)).a.b.b) | false;
    var var_2 = ~(~0u);
    return func_1().d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(select(vec2<bool>(all(vec3<bool>(false, true, true)), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), vec2<bool>(false, all(vec2<bool>(true, false))), false), Struct_5(func_5(func_1(), Struct_1(_wgslsmith_f_op_f32(max(-827f, -304f)), all(vec3<bool>(false, false, false))))));
    let var_1 = any(select(select(!select(vec3<bool>(var_0.a.b, var_0.a.b, var_0.b.b), vec3<bool>(var_0.b.b, var_0.b.b, var_0.b.b), true), vec3<bool>(true, all(vec4<bool>(var_0.b.b, var_0.b.b, true, false)), var_0.a.b), var_0.b.b), select(select(vec3<bool>(true, true, true), !vec3<bool>(true, var_0.b.b, false), func_1().c), vec3<bool>(all(vec3<bool>(var_0.b.b, false, true)), true, false), select(vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b), !vec3<bool>(var_0.a.b, var_0.b.b, true), vec3<bool>(var_0.b.b, false, var_0.a.b))), select(vec3<bool>(true, true, true), !select(vec3<bool>(var_0.a.b, false, var_0.a.b), vec3<bool>(var_0.b.b, var_0.a.b, var_0.a.b), vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b)), any(!vec2<bool>(false, var_0.a.b)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))) * -1569f);
    var var_3 = ~_wgslsmith_mult_i32(u_input.e.x, abs(~min(42434i, -20979i)));
    var_3 = firstTrailingBit(-u_input.e.x);
    let var_4 = firstTrailingBit(reverseBits(_wgslsmith_add_vec4_u32(reverseBits(u_input.d), min(u_input.d, u_input.d))) << (~max(abs(u_input.d), max(u_input.d, vec4<u32>(u_input.b, 60266u, u_input.a, 0u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(34100i, u_input.c.x, u_input.c.x);
}

