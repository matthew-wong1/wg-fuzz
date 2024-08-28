struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(0i, -14025i, 10783i, 16790i), vec4<i32>(20741i, -20493i, 2147483647i, 0i), vec4<i32>(-7332i, i32(-2147483648), 23656i, 13522i), vec4<i32>(-1i, 7708i, -25923i, 10497i), vec4<i32>(-8547i, -26392i, -1i, 49584i), vec4<i32>(-55733i, -34001i, 21037i, -17903i), vec4<i32>(39366i, 18460i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, 1i, 1i), vec4<i32>(i32(-2147483648), 27500i, -20813i, 17397i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 1i), vec4<i32>(1i, -10378i, -1i, 2147483647i), vec4<i32>(10171i, i32(-2147483648), -1i, 0i), vec4<i32>(2147483647i, -33749i, -25960i, 2147483647i), vec4<i32>(-17569i, -1i, 0i, 2147483647i), vec4<i32>(43293i, 1i, 2147483647i, -1i), vec4<i32>(0i, 0i, 0i, 1i), vec4<i32>(-1i, 6030i, i32(-2147483648), -42648i), vec4<i32>(28693i, 75957i, -7264i, -25247i), vec4<i32>(-1693i, 1i, 1i, 17124i), vec4<i32>(-19733i, 2147483647i, i32(-2147483648), 0i), vec4<i32>(29684i, 1i, -12422i, i32(-2147483648)), vec4<i32>(15648i, 44483i, 1i, 0i), vec4<i32>(i32(-2147483648), 0i, 1i, 25476i));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1019f, _wgslsmith_f_op_f32(-2416f + global0.b)))), global0.a), vec4<bool>(true, false, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true))), !(!any(vec2<bool>(true, false)))), Struct_1(global0.a, 485f));
    var_0 = Struct_2(var_0.c, select(var_0.b, var_0.b, any(var_0.b)), var_0.c);
    let var_1 = ~max(716i, -49778i);
    var_0 = Struct_2(var_0.c, select(select(var_0.b, select(select(var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b.x, false, false, var_0.b.x), select(var_0.b.x, var_0.b.x, false)), true), select(vec4<bool>(true, true, any(vec3<bool>(true, true, var_0.b.x)), var_0.b.x), vec4<bool>(any(vec2<bool>(var_0.b.x, var_0.b.x)), all(vec3<bool>(true, true, var_0.b.x)), !var_0.b.x, true), vec4<bool>(true, !var_0.b.x, false, all(var_0.b))), true), var_0.a);
    var_0 = Struct_2(var_0.c, !vec4<bool>(!(!var_0.b.x), var_0.b.x | false, any(vec2<bool>(var_0.b.x, true)), !var_0.b.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + global0.a)), _wgslsmith_f_op_f32(trunc(626f))));
    return var_0.b.zw;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = arg_1.a;
    let var_1 = func_3(u_input.b.x);
    let var_2 = -173f;
    global0 = Struct_1(_wgslsmith_f_op_f32(min(arg_1.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a, 358f)) * var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a)) * _wgslsmith_f_op_f32(var_2 + arg_1.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(740f, global0.a)) + _wgslsmith_div_f32(-423f, global0.b)))));
    global1 = array<vec4<i32>, 23>();
    return ~vec2<u32>(25653u, ~(~1u));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    var var_0 = (~countOneBits(vec4<u32>(arg_1.x, 0u, arg_1.x, 4294967295u) | vec4<u32>(u_input.a, 4065u, 4294967295u, arg_1.x)) >> (abs(~(~vec4<u32>(arg_1.x, u_input.a, 0u, arg_1.x))) % vec4<u32>(32u))) << (vec4<u32>(arg_1.x, ~arg_1.x, u_input.a, ~arg_1.x) % vec4<u32>(32u));
    global0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -483f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a + -490f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-314f + 459f))));
    var var_1 = arg_2.b;
    global0 = Struct_1(2036f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a)));
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(0u, arg_1.x), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, 30692u, 10401u, arg_1.x) ^ vec4<u32>(u_input.b.x, var_0.x, 1u, 4294967295u), abs(vec4<u32>(46287u, arg_1.x, 76530u, u_input.a) | vec4<u32>(var_0.x, arg_1.x, 54771u, 0u))), _wgslsmith_div_vec4_u32(vec4<u32>(abs(u_input.a), u_input.a, 2545u, countOneBits(4294967295u)), vec4<u32>(4294967295u, var_0.x, var_0.x, arg_1.x) | max(vec4<u32>(34349u, arg_1.x, u_input.b.x, 0u), vec4<u32>(var_0.x, arg_1.x, 1u, 4294967295u)))), arg_1.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(8392u, u_input.a, var_0.x, u_input.a)), reverseBits(vec4<u32>(4692u, 4294967295u, u_input.b.x, 4294967295u))), vec4<u32>(var_0.x, 22671u, u_input.b.x, u_input.b.x) | vec4<u32>(u_input.a, 44695u, 1u, var_0.x)), ~(~(~vec4<u32>(1u, arg_1.x, 9676u, var_0.x)))));
    return true;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>) -> vec2<i32> {
    global1 = array<vec4<i32>, 23>();
    global1 = array<vec4<i32>, 23>();
    global1 = array<vec4<i32>, 23>();
    let var_0 = any(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), vec2<bool>(true, true)));
    var var_1 = select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, (global0.a > 1357f) && func_4(vec3<i32>(arg_0.x, arg_0.x, 29595i), func_2(vec4<bool>(true, true, true, var_0), Struct_2(Struct_1(global0.b, global0.a), vec4<bool>(false, true, var_0, var_0), Struct_1(-923f, 1165f))), Struct_2(Struct_1(global0.a, global0.a), vec4<bool>(false, var_0, true, false), Struct_1(-1000f, global0.a))), true, true), vec4<bool>(var_0, any(select(!vec2<bool>(var_0, false), vec2<bool>(true, false), vec2<bool>(true, false))), true, var_0));
    return ~arg_0.zw;
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = !(!vec4<bool>((i32(-1i) * -2147483647i) < select(arg_1, 2147483647i, false), func_3(u_input.b.x >> (u_input.a % 32u)).x, false, true));
    global1 = array<vec4<i32>, 23>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(-1164f)), _wgslsmith_f_op_f32(round(-1000f)));
    return Struct_2(var_1, var_0, Struct_1(-495f, _wgslsmith_f_op_f32(-282f * 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + 366f) * global0.b), global0.a)) + 217f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - global0.b);
    let var_1 = func_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -1790f)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.a))))))), ~(~(-(~(-1i)))), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), select(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-11666i, 886i)), vec2<i32>(7005i, 0i)), func_1(-global1[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_mod_vec2_u32(u_input.b.yx, u_input.b.yz)), var_0)));
    var var_2 = !vec3<bool>(all(!var_1.b), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~global1[_wgslsmith_index_u32(u_input.b.x, 23u)]), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.b.x, 67140u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a, u_input.b.x, 4294967295u, 0u) >> (vec4<u32>(25156u, 4294967295u, u_input.b.x, 13891u) % vec4<u32>(32u)), !var_2.x), ~(~vec4<u32>(u_input.a, 59354u, u_input.a, u_input.b.x)), vec4<u32>(abs(u_input.b.x), _wgslsmith_clamp_u32(4294967295u, 1u, 122965u), ~4604u, _wgslsmith_mod_u32(u_input.a, 2163u))), ~vec4<u32>(u_input.b.x, func_2(vec4<bool>(var_1.b.x, var_2.x, var_0, false), Struct_2(var_1.a, var_1.b, Struct_1(var_1.a.b, var_1.c.b))).x, u_input.b.x >> (u_input.a % 32u), u_input.a << (u_input.a % 32u))));
}

