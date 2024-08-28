struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> bool {
    let var_0 = -400f;
    var var_1 = ~(~u_input.a);
    var var_2 = Struct_1(-_wgslsmith_add_i32(27400i, select(u_input.b.x, 2147483647i, false) >> (firstLeadingBit(42347u) % 32u)), false, vec3<i32>(_wgslsmith_div_i32(1i, -2147483647i), -2147483647i, -1i) >> (vec3<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, abs(65897u)), u_input.a & ~u_input.a) % vec3<u32>(32u)), -1633f);
    var_1 = ~36289u;
    var_2 = Struct_1(-(55717i << (u_input.a % 32u)), any(!(!select(vec3<bool>(false, var_2.b, false), vec3<bool>(true, true, var_2.b), vec3<bool>(false, true, var_2.b)))), u_input.b, var_0);
    return var_2.b;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = ~(-2147483647i);
    var_0 = firstTrailingBit(-(abs(u_input.c.x << (27528u % 32u)) | u_input.b.x));
    let var_1 = vec3<bool>(!all(vec2<bool>(true, true)), true, !any(vec2<bool>(true, true)) && (false || !all(vec4<bool>(false, true, true, false))));
    var_0 = 46420i;
    var_0 = ~_wgslsmith_clamp_i32(-_wgslsmith_div_i32(min(u_input.b.x, u_input.d), -1i), select(~(~u_input.b.x), min(-27332i, _wgslsmith_add_i32(u_input.d, 1i)), func_3()), _wgslsmith_div_i32(~(~2147483647i), -5125i));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-arg_0), Struct_1(0i, true, ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, -4466i), u_input.b)), arg_0.x), Struct_1(u_input.c.x, any(vec2<bool>(any(var_1.yz), select(false, var_1.x, var_1.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 20890i, ~(-28455i)), vec3<i32>(1i, u_input.d << (u_input.a % 32u), 1i)), -1000f), u_input.a, select(countOneBits(select(vec4<u32>(24338u, 1u, 103300u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), false) ^ ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u), ~vec4<u32>(u_input.a, 35138u, u_input.a, 4294967295u))), func_3()));
}

fn func_1() -> u32 {
    let var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(504f * 1010f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(306f)))));
    var var_1 = !(!func_3());
    var var_2 = Struct_1(u_input.d, true, var_0.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2650f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + var_0.c.d)) + var_0.c.d));
    var var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d, var_2.d))), _wgslsmith_f_op_f32(trunc(1000f))), Struct_1(var_2.a, true, countOneBits(select(min(vec3<i32>(-7050i, 46523i, 8390i), var_0.b.c), firstTrailingBit(var_2.c), true)), _wgslsmith_f_op_f32(max(373f, var_2.d))), var_0.b, 0u, ~(~(vec4<u32>(u_input.a, 18144u, 1u, u_input.a) & var_0.e)));
    var var_4 = -reverseBits(12100i);
    return countOneBits(var_3.e.x);
}

fn func_4(arg_0: u32, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-994f + _wgslsmith_f_op_f32(-1069f * -1165f)), _wgslsmith_f_op_f32(min(-433f, _wgslsmith_f_op_f32(f32(-1f) * -924f)))))));
    var var_1 = vec3<bool>(!(1000f > var_0.x), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, any(vec4<bool>(false, false, true, true))), vec3<bool>(true, true, true))), false);
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(199f, var_0.x), var_0, var_1.xy)))) * var_0));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1178f);
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~40800u, reverseBits(1u), ~(~11567u)), min(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, 1u) >> (vec3<u32>(24995u, 13098u, u_input.a) % vec3<u32>(32u)), select(vec3<u32>(41169u, 19387u, 1u), vec3<u32>(u_input.a, 80789u, 48465u), vec3<bool>(false, true, false))) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a)) % vec3<u32>(32u)), abs(~vec3<u32>(u_input.a, 9578u, 0u) | (vec3<u32>(u_input.a, u_input.a, 0u) | vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    var var_2 = func_4(~(_wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 1u, u_input.a), vec3<u32>(1u, u_input.a, 15398u)), ~vec3<u32>(u_input.a, u_input.a, 1u)) << (func_1() % 32u)), u_input.a);
    var_2 = func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.d, _wgslsmith_f_op_f32(f32(-1f) * -725f))))).b;
    var_1 = u_input.a;
    var var_3 = !select(!select(select(vec4<bool>(var_2.b, var_2.b, var_2.b, true), vec4<bool>(false, var_2.b, var_2.b, var_2.b), var_2.b), select(vec4<bool>(true, false, var_2.b, true), vec4<bool>(false, false, var_2.b, var_2.b), true), var_2.b), !select(select(vec4<bool>(false, true, var_2.b, var_2.b), vec4<bool>(false, var_2.b, var_2.b, var_2.b), vec4<bool>(var_2.b, var_2.b, false, true)), vec4<bool>(true, true, var_2.b, true), var_2.b), func_3());
    var_2 = Struct_1(_wgslsmith_sub_i32(abs(firstTrailingBit(var_2.c.x & u_input.b.x)), max(u_input.c.x, u_input.d)), var_3.x, firstLeadingBit(select(vec3<i32>(u_input.b.x, var_2.a, max(42359i, var_2.c.x)), ~var_2.c & vec3<i32>(14096i, var_2.c.x, -42015i), select(vec3<bool>(var_2.b, false, var_2.b), var_3.xyw, var_3.wwx))), 429f);
    var var_4 = func_4(~0u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) - var_4.d)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 731f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d, -134f))))));
}

