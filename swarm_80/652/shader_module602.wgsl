struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(-17391i, 19760i), vec2<i32>(23940i, 30235i), vec2<i32>(22759i, 50556i), vec2<i32>(2147483647i, 631i), vec2<i32>(i32(-2147483648), 0i));

var<private> global1: Struct_2 = Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), false, Struct_1(25198u, false), vec2<u32>(42287u, 11374u), 303f);

var<private> global2: i32;

var<private> global3: vec3<f32> = vec3<f32>(862f, 682f, -472f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: bool) -> vec2<bool> {
    let var_0 = global1.c;
    var var_1 = ~firstTrailingBit(min(~max(vec4<i32>(1i, arg_0, 30886i, u_input.a.x), vec4<i32>(global1.a.x, 5275i, u_input.a.x, -33427i)), vec4<i32>(~u_input.a.x, arg_0, -54779i, ~26176i)));
    let var_2 = true;
    global0 = array<vec2<i32>, 9>();
    var var_3 = var_0.a;
    return vec2<bool>(!var_2, global1.b);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>) -> bool {
    global2 = _wgslsmith_mult_i32(arg_1.x, u_input.a.x);
    let var_0 = Struct_4(vec3<i32>(_wgslsmith_add_i32(u_input.a.x, max(_wgslsmith_sub_i32(-60298i, u_input.a.x), ~(-1i))), global1.a.x, u_input.a.x), global1.c);
    var var_1 = var_0.b;
    let var_2 = Struct_2((vec3<i32>(-1i) * -vec3<i32>(-1i, -4049i, -2147483647i)) | global1.a, false, Struct_1(4294967295u, true), u_input.b.yy, global3.x);
    let var_3 = func_3(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_add_i32(abs(u_input.a.x), ~var_0.a.x)), (firstLeadingBit(var_2.a.x) << (4294967295u % 32u)) & ~(-2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(trunc(-550f)), _wgslsmith_f_op_f32(f32(-1f) * -1475f)), !var_0.b.b);
    return false;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    let var_0 = global1.c.a;
    var var_1 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(global1.d.x, 60097u), 42305u, ~(~global1.d.x)), 42279u, u_input.c.x), !any(select(!arg_0.b, vec4<bool>(global1.c.b, false, false, global1.c.b), false | global1.b)));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(~countOneBits(global1.c.a), global1.c.a & 25595u, 44243u, abs(71436u)), abs(vec4<u32>(var_1.a, global1.c.a, global1.c.a, ~_wgslsmith_add_u32(u_input.c.x, 1u))));
    var_1 = global1.c;
    let var_3 = !(!select(vec2<bool>(true, true), arg_0.b.wy, arg_0.b.yy));
    return Struct_2(-global1.a, any(func_3(-(i32(-1i) * -18849i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.c.xx))), all(vec3<bool>(arg_0.b.x, arg_0.b.x, false)))), global1.c, vec2<u32>(~(~var_2.x), ~14104u), arg_0.d);
}

fn func_1() -> Struct_2 {
    global1 = func_4(Struct_3(vec2<i32>(select(_wgslsmith_dot_vec3_i32(global1.a, global1.a), 1573i, true), global1.a.x), vec4<bool>(all(vec2<bool>(global1.c.b, global1.b)), true, reverseBits(u_input.b.x) == _wgslsmith_clamp_u32(u_input.b.x, u_input.c.x, u_input.c.x), func_2(vec3<u32>(u_input.b.x, 0u, global1.c.a) & u_input.c, global0[_wgslsmith_index_u32(global1.d.x, 9u)] >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(389f - global3.x), _wgslsmith_f_op_f32(floor(global3.x)), global1.e), _wgslsmith_f_op_f32(931f * -348f)), -1000f);
    let var_0 = Struct_4(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), firstLeadingBit(~(~1i)), ~min(global1.a.x, -9167i >> (0u % 32u))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(global1.d.x, global1.c.a)), ~_wgslsmith_add_u32(u_input.c.x, 52381u)), true));
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(56498u, 9u)] >> (~countOneBits(global1.d) % vec2<u32>(32u)), select(select(select(vec4<bool>(true, false, global1.b, var_0.b.b), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), var_0.b.b), any(vec3<bool>(true, true, true))), select(vec4<bool>(false, global1.b, true, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, var_0.b.b, false, false), !vec4<bool>(var_0.b.b, var_0.b.b, false, true), global1.e == global3.x)), vec4<bool>(true, all(!vec3<bool>(true, var_0.b.b, var_0.b.b)), false, false), select(vec4<bool>(var_0.b.b, !var_0.b.b, all(vec3<bool>(global1.c.b, global1.b, false)), !global1.b), select(vec4<bool>(var_0.b.b, false, var_0.b.b, var_0.b.b), !vec4<bool>(false, true, true, var_0.b.b), var_0.b.b), (43086i >> (u_input.b.x % 32u)) > u_input.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.e, global1.e, global1.e), vec3<f32>(-1157f, -1537f, global1.e), true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(653f, -980f, -1921f)))) * vec3<f32>(_wgslsmith_f_op_f32(global1.e * global3.x), _wgslsmith_f_op_f32(exp2(global1.e)), global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1221f));
    var var_2 = ~var_0.a.x;
    global3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(var_1.c, var_1.c)), _wgslsmith_div_vec3_f32(var_1.c, var_1.c))))), var_1.c)));
    return Struct_2(select(vec3<i32>(func_4(var_1, -1946f).a.x, _wgslsmith_mod_i32(-1i, -1i), abs(var_1.a.x) & var_1.a.x), vec3<i32>(u_input.a.x, 71871i, _wgslsmith_add_i32(max(-1i, var_0.a.x), var_1.a.x)), select(var_1.b.wyz, var_1.b.wyy, !select(vec3<bool>(var_0.b.b, true, var_0.b.b), vec3<bool>(var_1.b.x, true, var_1.b.x), var_1.b.yxx))), var_0.b.b, func_4(Struct_3(abs(var_0.a.xy), vec4<bool>(any(var_1.b.xzw), true, func_4(Struct_3(var_1.a, vec4<bool>(false, true, var_0.b.b, true), var_1.c, -1000f), global1.e).b, var_1.d > 932f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(-452f, -779f, global3.x) * vec3<f32>(118f, var_1.d, global3.x)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.e)) * global3.x)), -231f).c, _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.b.a, 104237u) ^ ~vec2<u32>(var_0.b.a, var_0.b.a), vec2<u32>(~(~var_0.b.a), reverseBits(~var_0.b.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(exp2(global3.x)), !select(true, global1.c.b, var_1.c.x > 1478f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.c;
    var_0 = Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_0.a.x, _wgslsmith_sub_i32(-49698i, -14118i)), _wgslsmith_add_vec3_i32(~global1.a, var_0.a), var_0.a << (vec3<u32>(4731u, 92048u, _wgslsmith_div_u32(var_1.a, var_0.c.a)) % vec3<u32>(32u))), global1.b, global1.c, ~(~global1.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(146f)) - _wgslsmith_f_op_f32(global1.e * -804f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.e), -1494f))));
    var var_2 = select(vec2<bool>(!(!var_1.b), all(vec4<bool>(true, true, true, var_1.b))), select(vec2<bool>(select(true, any(vec2<bool>(global1.c.b, var_1.b)), true), var_0.b | var_0.b), !func_3(reverseBits(global1.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, var_0.e)), false), var_0.b), select(vec2<bool>(global1.d.x != 44467u, true), select(vec2<bool>(true, true), vec2<bool>(global1.b, true), vec2<bool>(true, var_0.c.b)), !(!(!vec2<bool>(true, global1.b)))));
    global2 = global1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(17081u), global1.a.x, var_0.a.x << (~global1.c.a % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.e - global1.e), global3.x, _wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_f32(global3.x + var_0.e)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2764f, global1.e, global3.x, 342f))))), vec4<i32>(global1.a.x, var_0.a.x, 1i << (global1.d.x % 32u), ~(~(-1i))));
}

