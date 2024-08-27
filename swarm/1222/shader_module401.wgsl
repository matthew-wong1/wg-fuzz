struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(any(!vec4<bool>(all(vec3<bool>(false, true, true)), true, true, true)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1941f, -852f)), _wgslsmith_f_op_f32(-269f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -874f))))), -1978f));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_2(reverseBits(countOneBits((6262i >> (u_input.d.x % 32u)) & ~arg_0.a)), Struct_1(any(vec3<bool>(true, true, true))), (-2147483647i > _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-9123i, u_input.c.x, arg_0.a, arg_0.a), vec4<i32>(2147483647i, 12453i, -2147483647i, u_input.c.x)), -vec4<i32>(arg_0.a, -3751i, 0i, u_input.c.x))) || ((true || arg_0.b.a) & !all(vec4<bool>(arg_1.a, true, true, arg_1.a))));
    let var_1 = arg_0;
    var var_2 = vec3<f32>(519f, -1127f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(916f, -1000f, var_0.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(615f)), 1f))));
    var_2 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -358f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    let var_3 = var_0.b;
    return arg_0.a;
}

fn func_1() -> Struct_1 {
    let var_0 = ~vec4<u32>(u_input.d.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u) | vec2<u32>(u_input.d.x, 4294967295u), ~u_input.d.zz), 4294967295u, countOneBits(0u) & _wgslsmith_add_u32(~u_input.b.x, u_input.b.x));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(623f)));
    let var_3 = false;
    let var_4 = select(i32(-1i) * -11537i, func_2(Struct_2(_wgslsmith_add_i32(_wgslsmith_mod_i32(31221i, var_1.x), var_1.x), Struct_1(!var_3), true), Struct_1(true)), true);
    return Struct_1(false);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(-20645i, ~u_input.a.x), ~min(-(~u_input.a.x), u_input.c.x), _wgslsmith_div_i32(abs(u_input.c.x), u_input.a.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c, u_input.c), vec3<i32>(1i, u_input.a.x, u_input.a.x)) & ~select(vec3<i32>(-2147483647i, 0i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.a.x, 1i), vec3<bool>(true, true, arg_0.a)), _wgslsmith_mult_vec3_i32(min(~vec3<i32>(u_input.c.x, u_input.a.x, -2147483647i), -vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x)), firstTrailingBit(u_input.c >> (u_input.b % vec3<u32>(32u))))));
    var_0 = abs(abs(vec4<i32>(min(1i, -32721i), 46888i, ~u_input.a.x, var_0.x)));
    var_0 = vec4<i32>(u_input.c.x, var_0.x, u_input.c.x, -_wgslsmith_div_i32(firstLeadingBit(-1i), ~var_0.x) & 2147483647i);
    let var_1 = Struct_2(0i, Struct_1(_wgslsmith_f_op_f32(-330f - _wgslsmith_f_op_f32(floor(-116f))) < _wgslsmith_f_op_f32(-1595f + _wgslsmith_f_op_f32(209f + 1000f))), -(var_0.x << (4294967295u % 32u)) != 0i);
    var var_2 = false;
    return Struct_3(select(~4596i, -(~2147483647i), any(vec2<bool>(true, arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(-560f, -384f, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(839f, _wgslsmith_f_op_f32(f32(-1f) * -907f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f + 1000f)))));
    var_0 = Struct_3(i32(-1i) * -_wgslsmith_clamp_i32(var_0.a, 1i, -u_input.c.x));
    var_0 = func_4(func_1());
    let var_2 = ~vec3<i32>(-(~0i), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.a, -2147483647i, -1i, u_input.c.x)), vec4<i32>(-1i, var_0.a, 17567i, 1i)), ~var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.x, u_input.c.x) ^ vec2<i32>(1i, var_2.x), vec2<i32>(u_input.c.x, 0i)), -firstLeadingBit(vec2<i32>(u_input.a.x, 7002i))), select((var_2.zx & var_2.yx) | u_input.a.xx, var_2.xx, true) | reverseBits(vec2<i32>(func_4(Struct_1(false)).a, 1i)), func_2(Struct_2(u_input.a.x, func_1(), true), func_1()), u_input.d.xww);
}

