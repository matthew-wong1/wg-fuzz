struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec2<u32>(24584u, 4294967295u), false, vec4<i32>(-38570i, 0i, -1i, -29970i)), Struct_3(0i, -147f, Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec2<u32>(62345u, 0u), true, vec4<i32>(i32(-2147483648), 2147483647i, 0i, i32(-2147483648))), Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec2<u32>(126314u, 48727u), false, vec4<i32>(2147483647i, -1i, 9620i, 25046i)))));

var<private> global1: Struct_3;

var<private> global2: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_2) -> i32 {
    global0 = Struct_4(Struct_1(select(vec4<bool>(false, global1.c.b.d, true, all(global1.c.b.a)), select(arg_2.b.b, select(vec4<bool>(true, global1.c.a.d, global1.c.b.a.x, false), vec4<bool>(true, true, arg_2.a.d, global1.c.b.b.x), false), global0.a.b.x), vec4<bool>(true, true, global0.a.b.x, any(vec2<bool>(global1.c.a.b.x, true)))), !vec4<bool>(true, arg_2.a.d, global1.c.a.d, global0.b.c.a.b.x), u_input.a.zx, all(select(vec4<bool>(false, global1.c.b.b.x, arg_2.a.a.x, true), vec4<bool>(false, global0.b.c.b.d, global0.a.d, global1.c.a.d), vec4<bool>(arg_2.a.b.x, global0.b.c.a.a.x, true, global0.a.a.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(8621i >> (1u % 32u), -12103i, _wgslsmith_sub_i32(56889i, global1.a), global0.b.c.b.e.x), vec4<i32>(-arg_0.x, 0i, global1.a, _wgslsmith_mod_i32(13162i, global0.b.c.b.e.x)))), global0.b);
    global0 = Struct_4(Struct_1(global0.b.c.b.a, select(vec4<bool>(arg_2.b.d & true, global1.c.b.b.x, true | arg_2.b.a.x, true), arg_2.a.a, false), min(_wgslsmith_clamp_vec2_u32(~vec2<u32>(19758u, global0.b.c.a.c.x), min(arg_2.a.c, global0.a.c), vec2<u32>(4294967295u, 20724u)), ~max(vec2<u32>(4294967295u, arg_2.a.c.x), global1.c.b.c)), firstTrailingBit(~global1.a) != -abs(arg_0.x), global0.a.e), Struct_3(u_input.b, global1.b, global0.b.c));
    let var_0 = arg_2.a.b.x;
    let var_1 = any(vec2<bool>(arg_2.b.b.x, !global1.c.b.d));
    global2 = _wgslsmith_sub_i32(1i, ~((global0.a.e.x << (firstTrailingBit(49494u) % 32u)) << ((1u | _wgslsmith_div_u32(u_input.a.x, global1.c.a.c.x)) % 32u)));
    return countOneBits(-_wgslsmith_clamp_i32(0i, 2147483647i, -13019i));
}

fn func_2() -> Struct_3 {
    global2 = select(func_3(global1.c.a.e.wyx, _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.b, _wgslsmith_div_f32(1197f, 1375f), -361f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, 1104f, -827f))), global0.b.c), ~(_wgslsmith_mod_i32(1i, global0.a.e.x) ^ global0.a.e.x), global1.b > _wgslsmith_f_op_f32(f32(-1f) * -1032f));
    var var_0 = -vec4<i32>(-select(u_input.b, _wgslsmith_mod_i32(global0.a.e.x, -7088i), false), u_input.c, ~global1.a, 0i);
    var var_1 = vec2<i32>(global1.a, global1.c.b.e.x);
    global0 = Struct_4(Struct_1(global0.b.c.a.a, global0.a.b, abs(u_input.a.yx), !all(select(vec4<bool>(false, false, global0.b.c.a.d, global1.c.b.a.x), vec4<bool>(global1.c.b.a.x, false, false, global0.b.c.a.d), global0.b.c.b.a.x)), reverseBits(global1.c.a.e)), Struct_3(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-593f)), -1320f))), Struct_2(Struct_1(global1.c.b.a, global1.c.b.b, vec2<u32>(44030u, 0u), false | global1.c.a.d, vec4<i32>(-2147483647i, 1i, u_input.d, -25901i)), global0.b.c.b)));
    var var_2 = Struct_4(global0.a, Struct_3(_wgslsmith_add_i32(~reverseBits(33758i), -13982i), _wgslsmith_f_op_f32(f32(-1f) * -132f), global1.c));
    return Struct_3(-var_0.x, _wgslsmith_f_op_f32(-var_2.b.b), var_2.b.c);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    global1 = func_2();
    var var_0 = func_2().c.b;
    var_0 = Struct_1(global1.c.b.a, !vec4<bool>(arg_2.x, ~1995u != arg_0.x, false, select(true, true, true)), ~(~var_0.c), (select(firstTrailingBit(4294967295u), _wgslsmith_clamp_u32(3045u, var_0.c.x, global0.b.c.b.c.x), !var_0.b.x) < 1u) != arg_2.x, vec4<i32>(1i, ((u_input.c | 0i) << (19615u % 32u)) >> (57617u % 32u), global1.c.a.e.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(-11032i, global0.b.c.b.e.x, 65788i), ~vec3<i32>(0i, -38437i, global1.c.b.e.x)), reverseBits(vec3<i32>(global1.c.b.e.x, -14363i, var_0.e.x)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.b)) * global1.b))), _wgslsmith_f_op_f32(global1.b + global1.b)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(143f, global0.b.b) + vec2<f32>(-671f, -1173f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(749f, global1.b) + vec2<f32>(global1.b, global1.b)))))));
    var var_2 = var_0.c.x;
    return Struct_1(select(vec4<bool>(true, global0.a.b.x, global1.c.a.d, global1.b == _wgslsmith_f_op_f32(f32(-1f) * -221f)), func_2().c.b.a, any(func_2().c.a.a.yyx)), !select(!global1.c.a.a, select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.a.x, arg_2.x, true, true), !vec4<bool>(true, true, global1.c.a.b.x, global1.c.a.b.x)), var_0.b), u_input.a.xy, var_0.b.x != (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 601f) + _wgslsmith_f_op_f32(var_1.x * -106f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f))), select(global1.c.b.e, global1.c.b.e, global0.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.b.x;
    let var_1 = -1015f;
    let var_2 = func_1(reverseBits(vec2<u32>(28054u, 4294967295u)) & global0.b.c.a.c, ~_wgslsmith_mult_u32(firstTrailingBit(max(0u, global1.c.a.c.x)), _wgslsmith_div_u32(global0.b.c.b.c.x, global0.a.c.x << (1u % 32u))), vec3<bool>(any(vec2<bool>(true, global1.c.b.a.x)) & (global0.a.e.x > global0.a.e.x), all(global1.c.a.b), true), _wgslsmith_clamp_u32(~8590u, 1u, 52066u) | 41506u);
    var var_3 = ~u_input.a.x;
    let var_4 = -u_input.b;
    let var_5 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1415f, global1.b))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1225f, -1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 521f) - vec2<f32>(856f, global1.b)))))));
    global2 = abs(-39087i);
    global2 = _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(~2147483647i, var_4)), firstLeadingBit(vec2<i32>(_wgslsmith_add_i32(var_4, global1.a), -(~(-1i)))));
    var_0 = any(global0.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(max(u_input.a >> (vec3<u32>(4294967295u, 87363u, 49190u) % vec3<u32>(32u)), u_input.a >> (u_input.a % vec3<u32>(32u))), firstTrailingBit(~u_input.a)), ~u_input.a, _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(global1.c.a.c.x, var_2.c.x, 79177u)) << (~vec3<u32>(global0.a.c.x, 4764u, 16318u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(83263u, global0.b.c.b.c.x, u_input.a.x), vec3<u32>(global1.c.b.c.x, global1.c.a.c.x, global0.b.c.a.c.x)))), var_2.c.x);
}

