struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_5, 9> = array<Struct_5, 9>(Struct_5(0u), Struct_5(1u), Struct_5(1u), Struct_5(0u), Struct_5(4294967295u), Struct_5(12451u), Struct_5(80737u), Struct_5(1u), Struct_5(14374u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: vec3<i32>) -> u32 {
    return min(0u ^ countOneBits(u_input.a.x), arg_1.a);
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1249f), _wgslsmith_f_op_f32(arg_0 * global0.a.c)))));
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_5, 9>();
    let var_0 = Struct_2(global0.a, global0.b);
    global1 = array<Struct_5, 9>();
    let var_1 = Struct_4(Struct_1(_wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(sign(-1468f))), var_0.a.b, _wgslsmith_f_op_f32(-var_0.a.a)), ~(~_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, global0.a.b, var_0.a.b), reverseBits(vec3<i32>(global0.a.b, var_0.a.b, -28495i)))), countOneBits(_wgslsmith_mod_i32(var_0.a.b, ~(-1i) >> ((117322u & u_input.a.x) % 32u))), vec2<f32>(1216f, _wgslsmith_f_op_f32(func_4(897f, vec3<u32>(4294967295u >> (u_input.a.x % 32u), 31754u, 30333u), select(vec3<i32>(global0.a.b, 2147483647i, -2147483647i), vec3<i32>(var_0.a.b, 1i, 1i), vec3<bool>(true, false, true)) << ((vec3<u32>(4294967295u, 0u, u_input.a.x) >> (vec3<u32>(u_input.a.x, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(1u) << (func_3(1i, Struct_5(u_input.a.x), vec3<i32>(-1i, -1i, 28101i)) % 32u)))), select(!vec4<bool>(true, true, select(false, false, false), true), vec4<bool>(false, _wgslsmith_sub_i32(var_0.a.b, -4448i) == 0i, true, any(vec4<bool>(true, true, true, true))), true));
    global1 = array<Struct_5, 9>();
    return Struct_1(var_0.b.x, var_0.a.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(424f * 854f))), var_1.d.x)));
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_5, 9>();
    let var_0 = vec2<i32>(countOneBits(~_wgslsmith_mult_i32(firstTrailingBit(40347i), 21068i)), 0i | ~_wgslsmith_mult_i32(~(-28599i), _wgslsmith_mod_i32(-1i, global0.a.b)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c, 532f, global0.b.x, 691f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, global0.b.x, -611f, global0.b.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.x, 680f, -393f, 600f), vec4<f32>(global0.b.x, -321f, global0.a.a, -1045f), vec4<bool>(false, true, false, false))))))));
    return Struct_2(func_2(), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(1u);
    global0 = func_1();
    let var_1 = select(select(!vec3<bool>(true, select(true, true, true), any(vec2<bool>(true, true))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(global0.a.a * global0.a.c) <= _wgslsmith_f_op_f32(global0.a.a * -754f)), vec3<bool>(select(true, any(vec4<bool>(true, true, true, true)), !all(vec2<bool>(false, false))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), true)), any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false), false))), select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, false)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), vec3<bool>(false, true, !all(vec4<bool>(true, false, false, true))), vec3<bool>(true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), all(vec2<bool>(true, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a.c), -1000f))), global0.a.c, -2162f));
    let var_3 = ~_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_mult_u32(max(u_input.a.x, var_0), select(func_3(-17534i, global1[_wgslsmith_index_u32(16768u, 9u)], vec3<i32>(global0.a.b, -2147483647i, 0i)), ~114469u, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(global0.b)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.zx), var_2.zx)), _wgslsmith_f_op_vec2_f32(step(var_2.wx, vec2<f32>(_wgslsmith_f_op_f32(-global0.a.c), _wgslsmith_f_op_f32(f32(-1f) * -265f))))), var_2.www, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x * -1942f), var_2.x)))), select(_wgslsmith_clamp_i32(func_1().a.b, _wgslsmith_clamp_i32(10216i, global0.a.b, 6056i) | 34051i, global0.a.b), global0.a.b, var_1.x), vec4<i32>(min(firstLeadingBit(func_2().b), ~global0.a.b), global0.a.b, 0i, 2364i));
}

