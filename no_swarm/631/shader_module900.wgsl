struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 27> = array<bool, 27>(true, true, false, true, false, true, true, true, false, true, true, false, true, true, true, true, true, false, true, true, false, true, false, false, false, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-global0.a), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a * global0.a) * _wgslsmith_div_vec4_f32(global0.a, global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.a, vec4<f32>(global0.a.x, 2726f, arg_0, arg_0))))), 250f, !(!(!global0.d.xy)), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 27u)] && global0.e, !global0.e, false & global0.d.x), vec3<bool>(false, global1[_wgslsmith_index_u32(select(u_input.c, 0u, global1[_wgslsmith_index_u32(u_input.e.x, 27u)]), 27u)], true), global0.d.x), arg_0 != -1709f), Struct_2(~30702u, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-494f, -1780f, 807f, -694f), global0.a) - _wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(-352f, arg_0, global0.b, -1000f))), _wgslsmith_div_f32(-1239f, _wgslsmith_div_f32(arg_0, arg_0)), select(global0.d.yy, select(global0.c, vec2<bool>(global0.e, true), vec2<bool>(global1[_wgslsmith_index_u32(1u, 27u)], false)), global0.c), vec3<bool>(true, true, true), any(global0.d)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, 1000f, global0.b), vec4<f32>(-447f, 965f, global0.a.x, global0.a.x))), 1085f, global0.d.zz, vec3<bool>(-324f == global0.b, 4294967295u > u_input.e.x, global1[_wgslsmith_index_u32(41577u, 27u)] & true), select(arg_0 <= 204f, any(global0.d.yx), false))), Struct_2(_wgslsmith_add_u32(1u, 1u), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, -219f, global0.a.x, global0.a.x), global0.a))), 1451f, select(global0.c, !global0.c, true), !vec3<bool>(true, global0.c.x, global0.d.x), true == (-2147483647i > u_input.d)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b))), vec2<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(53313u, 27u)], false, global0.e, global0.d.x)), select(true, global1[_wgslsmith_index_u32(12458u, 27u)], global1[_wgslsmith_index_u32(1940u, 27u)])), vec3<bool>(true, global0.d.x | false, global1[_wgslsmith_index_u32(firstLeadingBit(881u), 27u)]), true)), Struct_3(u_input.e, _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 26757u, 4294967295u, u_input.e.x), vec4<u32>(u_input.e.x, 120132u, 4294967295u, u_input.c)) >> (reverseBits(reverseBits(vec4<u32>(39578u, u_input.c, 61007u, 37363u))) % vec4<u32>(32u))));
    let var_1 = 0i;
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(543f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1017f), _wgslsmith_f_op_f32(min(-426f, -1716f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0, var_0.d.c.a.x, _wgslsmith_f_op_f32(arg_0 * global0.b))), vec4<bool>(select(!global1[_wgslsmith_index_u32(u_input.e.x, 27u)], global1[_wgslsmith_index_u32(~u_input.e.x, 27u)], true), false, (var_1 << (var_0.e.b.x % 32u)) != (var_1 >> (27395u % 32u)), true))), var_0.d.b, var_0.d, Struct_2(~(~(~1u)), Struct_1(vec4<f32>(-179f, var_0.d.b.b, arg_0, _wgslsmith_f_op_f32(step(global0.a.x, arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(390f))), !(!global0.d.xz), vec3<bool>(true, true, var_0.c.c.e || false), true), var_0.b), var_0.e);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(round(-492f)), arg_0, 1342f, -550f))), _wgslsmith_f_op_f32(round(arg_0)), select(var_2.d.c.d.yy, select(vec2<bool>(any(var_2.d.c.d), var_0.e.a.x != 54379u), global0.d.xx, select(global0.c, select(global0.c, var_2.b.c, var_0.b.e), global0.c)), select(vec2<bool>(true, true), !vec2<bool>(global0.c.x, false), !select(vec2<bool>(var_2.d.c.c.x, false), var_0.c.c.d.xy, var_2.d.c.c))), select(!vec3<bool>(any(vec4<bool>(global0.e, false, true, var_0.d.b.e)), all(vec4<bool>(var_0.c.c.c.x, var_0.b.e, true, global1[_wgslsmith_index_u32(var_2.d.a, 27u)])), true), select(select(!var_0.b.d, global0.d, !global0.d), global0.d, all(var_0.d.b.d)), false), var_2.b.d.x);
    let var_3 = vec4<f32>(var_2.d.c.b, -1000f, -2057f, -1168f);
    return global1[_wgslsmith_index_u32(u_input.e.x, 27u)];
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_4) -> Struct_1 {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(162f - -988f)))) + arg_2.c.b), !arg_2.a.d.yz, !(!(!vec3<bool>(arg_2.a.d.x, false, true))), true);
    global1 = array<bool, 27>();
    return Struct_1(arg_1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(floor(422f)))), vec2<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1000f)))) >= _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-arg_1.c.a.x) >= -981f), global0.d, !func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * arg_1.b.b) * -822f)));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> vec2<bool> {
    var var_0 = func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(-u_input.a, u_input.b, 1i, -2147483647i), -abs(vec4<i32>(u_input.a, u_input.b, -33166i, 74666i))) ^ _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.d, u_input.a, u_input.a) & vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.b), vec4<i32>(2147483647i, 25877i, u_input.d, 1i)), ~(~vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.d))), Struct_2(u_input.c, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-826f - 142f), 1f, -180f, _wgslsmith_f_op_f32(933f + global0.a.x)), _wgslsmith_f_op_f32(global0.b - 679f), arg_0.a.c, select(vec3<bool>(true, arg_1, true), select(vec3<bool>(arg_0.a.c.x, false, global1[_wgslsmith_index_u32(43894u, 27u)]), vec3<bool>(arg_1, false, global1[_wgslsmith_index_u32(arg_0.b.b.x, 27u)]), vec3<bool>(arg_1, true, arg_1)), vec3<bool>(false, true, false)), all(arg_0.c.d)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.a.x, global0.b, 826f, -767f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b, -1440f, 1371f, -818f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1224f + -1000f))), select(vec2<bool>(true, true), !vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0.b.b.x, 27u)]), true), select(select(global0.d, vec3<bool>(arg_1, false, arg_0.a.d.x), global0.e), arg_0.a.d, arg_0.a.e), arg_1 | (u_input.a < u_input.a))), Struct_4(func_2(_wgslsmith_div_vec4_i32(vec4<i32>(24587i, -9208i, u_input.a, 10137i) << (vec4<u32>(4294967295u, 1u, arg_0.b.a.x, 1u) % vec4<u32>(32u)), vec4<i32>(2147483647i, -22982i, u_input.b, -48525i)), Struct_2(u_input.e.x, arg_0.a, Struct_1(global0.a, global0.a.x, global0.c, global0.d, global1[_wgslsmith_index_u32(u_input.c, 27u)])), Struct_4(func_2(vec4<i32>(-2147483647i, -2147483647i, u_input.b, 52040i), Struct_2(arg_0.b.b.x, arg_0.a, Struct_1(global0.a, 1164f, vec2<bool>(arg_1, global1[_wgslsmith_index_u32(57119u, 27u)]), arg_0.c.d, arg_0.c.c.x)), Struct_4(Struct_1(vec4<f32>(global0.a.x, -843f, 1114f, arg_0.a.a.x), global0.a.x, vec2<bool>(global1[_wgslsmith_index_u32(28304u, 27u)], false), vec3<bool>(false, false, true), arg_0.c.c.x), arg_0.b, Struct_1(arg_0.a.a, arg_0.c.a.x, arg_0.a.c, vec3<bool>(arg_0.a.d.x, arg_0.c.c.x, true), false))), arg_0.b, Struct_1(arg_0.c.a, 1000f, vec2<bool>(true, arg_0.c.c.x), vec3<bool>(arg_1, arg_0.a.e, true), true))), arg_0.b, func_2(vec4<i32>(_wgslsmith_sub_i32(u_input.a, -2147483647i), 2147483647i, u_input.d, 21733i), Struct_2(u_input.e.x, arg_0.c, arg_0.a), arg_0)));
    let var_1 = Struct_2(u_input.e.x, func_2(vec4<i32>(u_input.b, -1i, max(u_input.d, u_input.b), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(2147483647i, u_input.a, 20301i)), ~vec3<i32>(u_input.d, -14145i, 2147483647i))), Struct_2(~countOneBits(4294967295u), func_2(vec4<i32>(u_input.b, u_input.a, u_input.a, -1i), Struct_2(4294967295u, Struct_1(vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, global0.b, var_0.b), 405f, vec2<bool>(global1[_wgslsmith_index_u32(1u, 27u)], true), vec3<bool>(false, false, true), global0.d.x), Struct_1(var_0.a, -1944f, arg_0.a.c, var_0.d, global1[_wgslsmith_index_u32(arg_0.b.a.x, 27u)])), Struct_4(Struct_1(global0.a, 415f, arg_0.c.d.zx, vec3<bool>(false, arg_1, arg_0.c.d.x), true), arg_0.b, arg_0.c)), arg_0.a), arg_0), arg_0.c);
    global1 = array<bool, 27>();
    var var_2 = true != (global0.c.x | true);
    var var_3 = vec4<u32>(~(~(~arg_0.b.a.x)), reverseBits(24445u), 4294967295u, 4294967295u) | ~(~arg_0.b.b);
    return arg_0.c.d.zy;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(~(~(~u_input.c)), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0), arg_0.x, func_4(Struct_4(func_2(vec4<i32>(2981i, 71557i, 100807i, u_input.a), Struct_2(66448u, Struct_1(global0.a, global0.a.x, vec2<bool>(global0.c.x, true), global0.d, global1[_wgslsmith_index_u32(4294967295u, 27u)]), Struct_1(global0.a, 1000f, global0.d.xz, vec3<bool>(global0.c.x, false, global1[_wgslsmith_index_u32(u_input.c, 27u)]), true)), Struct_4(Struct_1(arg_0, 463f, vec2<bool>(global0.d.x, true), global0.d, true), Struct_3(u_input.e, vec4<u32>(u_input.e.x, u_input.c, 0u, 21801u)), Struct_1(vec4<f32>(arg_0.x, 128f, global0.a.x, -1475f), arg_0.x, vec2<bool>(true, global1[_wgslsmith_index_u32(53521u, 27u)]), global0.d, true))), Struct_3(u_input.e, vec4<u32>(31960u, 29924u, u_input.e.x, 10527u)), Struct_1(arg_0, 1000f, global0.c, vec3<bool>(false, global0.c.x, global0.c.x), global1[_wgslsmith_index_u32(0u, 27u)])), !(!global1[_wgslsmith_index_u32(u_input.c, 27u)])), vec3<bool>(all(func_2(vec4<i32>(u_input.b, 38751i, 2147483647i, -24723i), Struct_2(1u, Struct_1(vec4<f32>(748f, -466f, global0.b, 761f), arg_0.x, vec2<bool>(false, global0.e), vec3<bool>(global0.d.x, global1[_wgslsmith_index_u32(u_input.c, 27u)], true), global0.d.x), Struct_1(vec4<f32>(arg_0.x, 731f, -642f, -1076f), 457f, global0.c, global0.d, false)), Struct_4(Struct_1(arg_0, global0.b, global0.c, global0.d, true), Struct_3(vec2<u32>(u_input.c, 21597u), vec4<u32>(0u, 103740u, u_input.e.x, u_input.c)), Struct_1(vec4<f32>(arg_0.x, -967f, 2960f, -276f), -134f, global0.c, global0.d, true))).d), 1406f <= arg_0.x, func_4(Struct_4(Struct_1(vec4<f32>(1414f, 2470f, arg_0.x, -892f), -381f, global0.d.xz, vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(17712u, 27u)]), Struct_3(u_input.e, vec4<u32>(u_input.e.x, u_input.c, u_input.c, 0u)), Struct_1(arg_0, 1000f, vec2<bool>(global0.c.x, global1[_wgslsmith_index_u32(u_input.c, 27u)]), global0.d, true)), true).x), true), Struct_1(vec4<f32>(428f, arg_0.x, -558f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(421f)))), global0.d.zx, !(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 27u)], false))), global0.a.x > _wgslsmith_f_op_f32(-func_2(vec4<i32>(u_input.a, 1i, u_input.a, u_input.b), Struct_2(4294967295u, Struct_1(vec4<f32>(-1643f, -1063f, global0.b, 344f), arg_0.x, vec2<bool>(false, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 27u)], false, global0.e), true), Struct_1(global0.a, 478f, global0.d.yx, global0.d, global1[_wgslsmith_index_u32(26426u, 27u)])), Struct_4(Struct_1(global0.a, global0.a.x, global0.d.yz, vec3<bool>(true, true, false), false), Struct_3(vec2<u32>(0u, u_input.e.x), vec4<u32>(22771u, 4294967295u, 0u, 4294967295u)), Struct_1(global0.a, global0.a.x, vec2<bool>(false, global0.d.x), vec3<bool>(false, global1[_wgslsmith_index_u32(3197u, 27u)], false), global1[_wgslsmith_index_u32(68817u, 27u)]))).a.x)));
    var var_1 = true;
    var var_2 = min(countOneBits(~vec4<u32>(_wgslsmith_mult_u32(1u, 1u), ~u_input.e.x, firstTrailingBit(var_0.a), u_input.c >> (var_0.a % 32u))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 60534u, var_0.a), vec3<u32>(u_input.c, 22662u, 2750u)), ~u_input.c, 0u | u_input.c, ~u_input.c) & select(~_wgslsmith_sub_vec4_u32(vec4<u32>(19527u, u_input.e.x, u_input.e.x, 14606u), vec4<u32>(0u, 28655u, var_0.a, 1u)), vec4<u32>(u_input.c, var_0.a, ~u_input.c, u_input.c), !(var_0.a == 65984u)));
    let var_3 = max(vec4<i32>(-u_input.d, abs(u_input.b), -_wgslsmith_mult_i32(7498i, u_input.d), _wgslsmith_mod_i32(0i, ~(-64095i))) << ((vec4<u32>(_wgslsmith_mult_u32(35626u, u_input.e.x), min(var_0.a, 14350u), var_2.x, var_2.x) >> ((countOneBits(vec4<u32>(var_0.a, 1u, 1u, 1u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, u_input.e.x, var_0.a, 53078u), vec4<u32>(4294967295u, var_0.a, u_input.c, var_2.x)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, u_input.d, -18881i, -1i) | max(vec4<i32>(29421i, u_input.b, -29239i, -23677i), vec4<i32>(u_input.d, u_input.d, u_input.b, -38276i)), reverseBits(-vec4<i32>(-17859i, -1i, 9496i, 58838i))), vec4<i32>(-1i, min(1i, 0i), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.d, u_input.d, -18601i), vec4<i32>(u_input.b, -2147483647i, u_input.d, u_input.b)) | _wgslsmith_sub_i32(u_input.b, -16633i))));
    let var_4 = u_input.b;
    return func_2(var_3, Struct_2(min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e.x, u_input.e.x, 809u), ~vec4<u32>(var_0.a, u_input.e.x, u_input.e.x, var_0.a)), var_2.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c.a - vec4<f32>(517f, var_0.b.a.x, 319f, 284f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1338f)), func_2(vec4<i32>(u_input.d, var_3.x, -2147483647i, var_4) ^ var_3, var_0, Struct_4(var_0.c, Struct_3(vec2<u32>(25295u, 40136u), vec4<u32>(0u, var_0.a, 1u, 4294967295u)), Struct_1(vec4<f32>(var_0.b.a.x, 749f, -294f, -2150f), 983f, var_0.c.d.xx, var_0.b.d, var_0.c.c.x))).c, vec3<bool>(true, true, true), true), var_0.c), Struct_4(func_2(vec4<i32>(var_3.x, var_3.x, u_input.b, -u_input.d), var_0, Struct_4(var_0.c, Struct_3(vec2<u32>(var_2.x, var_0.a), vec4<u32>(var_0.a, u_input.c, 1u, 4294967295u)), func_2(var_3, Struct_2(0u, Struct_1(vec4<f32>(-137f, -154f, -349f, -323f), arg_0.x, var_0.c.c, vec3<bool>(global0.c.x, var_0.b.d.x, var_0.c.c.x), var_0.b.e), Struct_1(vec4<f32>(var_0.b.b, -421f, -1000f, 220f), var_0.c.b, vec2<bool>(global0.d.x, false), vec3<bool>(false, var_0.b.d.x, global0.d.x), var_0.c.d.x)), Struct_4(Struct_1(vec4<f32>(var_0.b.b, -402f, var_0.b.a.x, -504f), -556f, global0.c, vec3<bool>(true, global0.c.x, false), var_0.c.d.x), Struct_3(u_input.e, vec4<u32>(var_0.a, var_0.a, 4294967295u, var_0.a)), Struct_1(global0.a, 356f, vec2<bool>(global0.c.x, false), vec3<bool>(var_0.b.d.x, global1[_wgslsmith_index_u32(27182u, 27u)], true), global0.d.x))))), Struct_3(var_2.yx, abs(vec4<u32>(var_0.a, 107639u, var_0.a, 4294967295u))), func_2(vec4<i32>(var_3.x, countOneBits(21572i), _wgslsmith_sub_i32(-44893i, -80038i), _wgslsmith_dot_vec2_i32(var_3.zy, var_3.zy)), Struct_2(42867u, func_2(var_3, var_0, Struct_4(var_0.c, Struct_3(vec2<u32>(var_0.a, 1u), vec4<u32>(var_2.x, 45749u, var_2.x, var_2.x)), var_0.c)), Struct_1(var_0.b.a, arg_0.x, vec2<bool>(var_0.c.c.x, false), vec3<bool>(var_0.c.e, false, true), true)), Struct_4(func_2(var_3, var_0, Struct_4(var_0.b, Struct_3(var_2.xy, vec4<u32>(var_0.a, 1u, 4294967295u, 68019u)), var_0.c)), Struct_3(var_2.xx, vec4<u32>(var_0.a, 64374u, 4294967295u, var_2.x)), func_2(var_3, Struct_2(121051u, Struct_1(vec4<f32>(258f, 823f, 1000f, arg_0.x), 1605f, vec2<bool>(global0.d.x, var_0.b.e), vec3<bool>(true, var_0.c.e, global0.e), false), var_0.c), Struct_4(var_0.b, Struct_3(vec2<u32>(0u, 50803u), vec4<u32>(var_0.a, var_0.a, var_0.a, 1u)), Struct_1(global0.a, 979f, vec2<bool>(true, false), vec3<bool>(false, var_0.b.e, global1[_wgslsmith_index_u32(282u, 27u)]), global1[_wgslsmith_index_u32(4294967295u, 27u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 27>();
    global0 = func_1(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(global0.a.x, -542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), 2013f)));
    global1 = array<bool, 27>();
    let var_0 = vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e.x, 74193u, u_input.c) & vec4<u32>(0u, 48115u, u_input.c, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 9445u, u_input.c, 26665u), vec4<u32>(18628u, u_input.e.x, 2582u, u_input.c))), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.e.x, u_input.e.x, u_input.c, 0u)), abs(vec4<u32>(u_input.c, 57623u, u_input.e.x, u_input.e.x)))), 33384u);
    global1 = array<bool, 27>();
    var var_1 = vec2<i32>(_wgslsmith_div_i32(u_input.a, 2147483647i), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a - global0.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -302f, global0.b, global0.b))))), abs(1i), ~(~vec4<u32>(u_input.c ^ 0u, abs(var_0.x), 1u, ~57096u)), vec3<u32>(abs(~var_0.x & u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x ^ var_0.x, 1u, u_input.e.x << (u_input.e.x % 32u), var_0.x), abs(~vec4<u32>(var_0.x, var_0.x, 40325u, 4294967295u))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(countOneBits(var_0.x), var_0.x), u_input.c)), u_input.d);
}

