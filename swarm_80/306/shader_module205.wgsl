struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(0i, 72758i), vec2<i32>(-1i, 27778i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(-6898i, -1i), vec2<i32>(-1i, -6691i), vec2<i32>(2147483647i, -28186i), vec2<i32>(-1i, -14582i), vec2<i32>(-14206i, -1i), vec2<i32>(58265i, -32773i), vec2<i32>(11843i, 2147483647i), vec2<i32>(0i, 58928i), vec2<i32>(-8869i, 2147483647i), vec2<i32>(-29800i, 2147483647i), vec2<i32>(5631i, 50524i), vec2<i32>(24576i, -26741i), vec2<i32>(-51023i, i32(-2147483648)), vec2<i32>(274i, 59i), vec2<i32>(-11792i, 1i));

var<private> global1: i32 = 39100i;

var<private> global2: vec2<f32> = vec2<f32>(1000f, -137f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = min(vec4<u32>(11489u, firstLeadingBit(1u), ~1u, arg_0.x), ~vec4<u32>(42335u, firstTrailingBit(abs(0u)), max(1u, min(1u, u_input.d)), arg_0.x));
    global2 = _wgslsmith_f_op_vec2_f32(min(arg_1.b.zz, vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b.x + _wgslsmith_f_op_f32(-288f + global2.x))))));
    var var_1 = Struct_3(u_input.a, arg_1);
    var var_2 = ~24202u;
    var_2 = var_1.a.x;
    return !select(vec3<bool>(all(vec4<bool>(true, false, false, true)), true, max(u_input.d, 14630u) > reverseBits(u_input.a.x)), vec3<bool>(true, !any(vec4<bool>(false, true, false, false)), ~4294967295u <= u_input.a.x), !vec3<bool>(true, true, 30990u > var_1.a.x));
}

fn func_2(arg_0: vec3<i32>) -> vec2<f32> {
    let var_0 = select(!select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), !func_3(u_input.a, Struct_2(Struct_1(1000f, vec4<f32>(-1811f, global2.x, 1104f, global2.x)), vec3<f32>(-871f, global2.x, global2.x)), vec4<i32>(arg_0.x, u_input.b, arg_0.x, -2147483647i)), vec3<bool>(true, true, true)), select(select(func_3(firstLeadingBit(vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(global2.x, vec4<f32>(global2.x, global2.x, global2.x, global2.x)), vec3<f32>(global2.x, -531f, global2.x)), vec4<i32>(1i, 36974i, arg_0.x, u_input.c) >> (vec4<u32>(61709u, 1u, 16832u, 15204u) % vec4<u32>(32u))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true), vec3<bool>(!any(vec4<bool>(true, true, false, false)), _wgslsmith_f_op_f32(1292f * global2.x) < -896f, true), any(vec2<bool>(true, true))), vec3<bool>(true, true, all(select(vec2<bool>(true, true), func_3(vec2<u32>(u_input.d, 14902u), Struct_2(Struct_1(-1281f, vec4<f32>(global2.x, global2.x, global2.x, -2076f)), vec3<f32>(global2.x, 1221f, global2.x)), vec4<i32>(u_input.b, arg_0.x, -3743i, u_input.c)).zz, vec2<bool>(true, true)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x - -1000f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, global2.x))) + _wgslsmith_f_op_f32(f32(-1f) * -539f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global2.x, global2.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x - -238f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(700f - global2.x) - global2.x), var_0.x)), 893f));
    var var_2 = 91961u;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(895f, 513f)))), var_1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.b.xww)) + vec3<f32>(-1222f, 1000f, -934f)) * _wgslsmith_f_op_vec3_f32(var_1.b.yzx * _wgslsmith_f_op_vec3_f32(var_1.b.wxw + vec3<f32>(-665f, 188f, 370f))))));
    var_3 = Struct_2(Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.a.b - var_3.a.b))))), var_3.a.b.zyx);
    return vec2<f32>(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(max(-1194f, global2.x)), true)), _wgslsmith_f_op_f32(floor(1718f)));
}

fn func_1() -> Struct_3 {
    global1 = u_input.b;
    var var_0 = Struct_4(Struct_2(Struct_1(173f, vec4<f32>(_wgslsmith_f_op_f32(global2.x - 1000f), _wgslsmith_f_op_f32(trunc(global2.x)), 316f, 229f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global2.x, 1000f)), vec3<f32>(global2.x, global2.x, 339f))))), !vec4<bool>(any(vec2<bool>(true, true)), true, true, false));
    global0 = array<vec2<i32>, 19>();
    global1 = countOneBits(_wgslsmith_clamp_i32(2147483647i, u_input.b, _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 0i, u_input.b), vec3<i32>(u_input.c, 1i, u_input.b)), vec3<i32>(~u_input.c, -64703i, _wgslsmith_add_i32(-1i, 24586i)))));
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(u_input.b, 46450i, -371i)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(var_0.a.b.yx)), var_0.a.a.b.yy))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(var_0.a.a.b.zw, var_0.a.a.b.xw)), vec2<f32>(-1413f, 1804f), func_3(vec2<u32>(69476u, 9037u), var_0.a, vec4<i32>(-7184i, u_input.b, -7339i, 1i)).xz)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2527f)), global2.x))), _wgslsmith_f_op_f32(-global2.x)));
    return Struct_3(vec2<u32>(1u, ~1u), Struct_2(var_0.a.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(302f, var_0.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -707f)), vec3<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(min(-1000f, 540f)), global2.x), any(vec2<bool>(false, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<f32>(-1197f, global2.x);
    let var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-468f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(814f))));
    var var_2 = func_1();
    var var_3 = !select(!vec3<bool>(true, all(vec2<bool>(false, false)), true), vec3<bool>(all(func_3(u_input.a, Struct_2(var_2.b.a, vec3<f32>(1327f, -520f, -275f)), vec4<i32>(-4181i, u_input.b, u_input.b, -10074i)).yy), true, true), all(vec3<bool>(true, true, true)));
    var var_4 = ~max(vec3<u32>(~(4294967295u | var_2.a.x), reverseBits(1u), 58036u << (u_input.d % 32u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.a.x, 47144u, 4294967295u), vec3<u32>(16308u, 1u, var_0)), vec3<u32>(var_0, 52202u, 1u)), ~vec3<u32>(28071u, 1u, 45337u) ^ ~vec3<u32>(57747u, 1u, var_2.a.x), vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 13859u, u_input.d), vec3<u32>(35871u, 42312u, var_0)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 1u, u_input.d), vec4<u32>(var_0, 4294967295u, 52847u, var_0)))));
    var_2 = Struct_3(vec2<u32>(47963u, var_2.a.x), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_2.b.a.a))))), reverseBits(select(~(vec2<u32>(u_input.a.x, var_2.a.x) | vec2<u32>(7555u, 15917u)), var_2.a, !(!var_3.x))), ~_wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -2147483647i, -44991i, -9398i), vec4<i32>(-30075i, -2147483647i, -1i, 1i))), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.c), vec4<i32>(-2147483647i, u_input.b, -37156i, u_input.b)))), _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.c, u_input.c), -vec2<i32>(0i, 1i), var_3.zy), vec2<i32>(i32(-1i) * -15851i, 28667i | u_input.c)) & vec2<i32>(-1i, u_input.c), ~vec3<i32>(u_input.c, _wgslsmith_add_i32(_wgslsmith_add_i32(4836i, u_input.b), ~(-2147483647i)), u_input.c << (_wgslsmith_clamp_u32(var_4.x, var_0, var_0) % 32u)));
}

