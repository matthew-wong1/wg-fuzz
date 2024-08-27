struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    return -594f;
}

fn func_2() -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(select(-393f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-457f, -949f, false))))) + _wgslsmith_f_op_f32(func_3())), true));
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)));
    let var_1 = any(vec2<bool>(!any(vec3<bool>(true, true, true)), false));
    var var_2 = vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(0i, 1527i), abs(-1i))), vec2<i32>(-4536i << (u_input.a.x % 32u), ~(-2147483647i)) | (~vec2<i32>(1i, 21665i) & select(vec2<i32>(-1i, 1i), vec2<i32>(-32092i, 2147483647i), vec2<bool>(true, false)))), 58709i);
    let var_3 = Struct_2(Struct_1(!vec3<bool>(var_1, false, true), -1000f), Struct_1(!select(select(vec3<bool>(true, var_1, var_1), vec3<bool>(true, true, false), vec3<bool>(var_1, var_1, true)), !vec3<bool>(var_1, var_1, var_1), select(vec3<bool>(true, var_1, true), vec3<bool>(var_1, var_1, true), true)), _wgslsmith_div_f32(-1067f, var_0)), Struct_1(vec3<bool>(var_1, 1i == select(var_2.x, 52465i, var_1), !var_1), var_0));
    return select(!vec4<bool>(!var_1, var_3.c.a.x, !var_3.b.a.x & (u_input.a.x >= u_input.b), var_1), vec4<bool>(all(vec4<bool>(-1i >= var_2.x, var_3.a.a.x, true, all(var_3.a.a))), var_3.b.a.x, all(select(!vec4<bool>(var_1, var_3.a.a.x, false, var_3.b.a.x), vec4<bool>(false, true, false, true), true)), var_3.a.a.x), vec4<bool>(var_3.b.a.x, true, any(!var_3.c.a.xz), true || !(!var_3.b.a.x)));
}

fn func_1(arg_0: f32, arg_1: i32) -> vec2<u32> {
    let var_0 = func_2();
    let var_1 = Struct_2(Struct_1(select(vec3<bool>(func_2().x, false, var_0.x & var_0.x), vec3<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), all(var_0), any(vec4<bool>(true, false, true, var_0.x))), var_0.wyz), arg_0), Struct_1(vec3<bool>(select(!var_0.x, true, false), !any(var_0.zzx), true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_0))))))), Struct_1(var_0.xww, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, 705f))) * _wgslsmith_f_op_f32(1626f - _wgslsmith_f_op_f32(select(arg_0, -616f, var_0.x))))));
    var var_2 = Struct_1(vec3<bool>(min(firstTrailingBit(u_input.a.x), ~72785u) != reverseBits(~u_input.a.x), !all(vec3<bool>(true, true, true)) | (false & all(var_1.a.a.xy)), any(func_2().yyz)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(655f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1297f + arg_0)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, arg_0), 827f)), true)), !all(vec3<bool>(var_0.x, var_0.x, false)) || all(vec2<bool>(var_1.b.a.x, var_1.a.a.x)))));
    let var_3 = Struct_3(any(!var_2.a), var_1, var_2.b, ~(vec2<i32>(select(arg_1, -25455i, var_0.x), _wgslsmith_sub_i32(2147483647i, arg_1)) << (vec2<u32>(~u_input.a.x, abs(u_input.b)) % vec2<u32>(32u))));
    global0 = arg_0;
    return firstLeadingBit(vec2<u32>(~(~u_input.a.x), _wgslsmith_div_u32(u_input.a.x, ~4294967295u) | firstLeadingBit(u_input.a.x >> (1u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<u32>(~(~8159u), min(1u, abs(0u))), select(firstTrailingBit(~vec2<u32>(u_input.a.x, u_input.b)), vec2<u32>(1u, ~u_input.b), true), vec2<bool>(false, all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true))))), ~func_1(_wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -2147483647i, 0i), -vec3<i32>(10717i, -31917i, 42117i))), vec2<bool>(true, true));
    global0 = -223f;
    let var_1 = Struct_2(Struct_1(vec3<bool>(func_2().x, !(var_0.x < var_0.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -293f)))), Struct_1(vec3<bool>(all(vec2<bool>(true, true)), true, !(u_input.b > 4294967295u)), 1495f), Struct_1(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), 1f));
    let var_2 = -(-2147483647i ^ _wgslsmith_dot_vec4_i32(select(min(vec4<i32>(-64256i, 2147483647i, -12065i, 13083i), vec4<i32>(76359i, -1i, -2147483647i, 0i)), vec4<i32>(9722i, -2147483647i, -56824i, 2147483647i), !var_1.b.a.x), ~vec4<i32>(0i, 61521i, -28100i, -67805i) << (vec4<u32>(4294967295u, u_input.b, 1u, u_input.a.x) % vec4<u32>(32u))));
    let var_3 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -4716i, var_2), min(vec3<i32>(var_2, 2147483647i, 2147483647i) & vec3<i32>(-28958i, -1i, 35030i), vec3<i32>(-2147483647i, -1981i, var_2) | vec3<i32>(var_2, var_2, var_2)) & _wgslsmith_add_vec3_i32(-vec3<i32>(0i, 16096i, var_2), reverseBits(vec3<i32>(-9827i, -46959i, var_2))), vec3<i32>(49271i, firstLeadingBit(var_2), 34893i));
    var var_4 = u_input.a.x;
    let var_5 = Struct_2(Struct_1(var_1.b.a, -1000f), Struct_1(var_1.c.a, _wgslsmith_f_op_f32(-var_1.a.b)), var_1.c);
    var var_6 = vec3<u32>(var_0.x, var_0.x, ~(_wgslsmith_div_u32(3110u, var_0.x) >> (100463u % 32u)));
    var var_7 = Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -157f))), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_1.a.b)))), _wgslsmith_f_op_f32(min(var_5.b.b, _wgslsmith_f_op_f32(-var_1.b.b))))), var_1.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(-select(vec4<i32>(_wgslsmith_mod_i32(var_3.x, var_7.b), 19388i, ~(-18172i), 2147483647i), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_7.b, -17480i, 0i, -2147483647i), vec4<i32>(0i, 52847i, 2147483647i, var_2))), vec4<bool>(true, any(vec3<bool>(false, var_5.c.a.x, false)), var_5.c.a.x, var_0.x == 35046u)), 1u, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(-1046i, var_3.x >> (0u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_7.b, var_2), abs(vec2<i32>(var_2, var_7.b)))), 0i), var_2);
}

