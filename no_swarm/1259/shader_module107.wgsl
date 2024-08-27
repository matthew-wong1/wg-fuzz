struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> bool {
    let var_0 = arg_1.b.b;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_0.x, 28u)])))) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(83576u, 28u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 28u)]))) * _wgslsmith_f_op_f32(f32(-1f) * -605f))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(round(177f)), _wgslsmith_mod_vec3_i32(var_0, abs(select(vec3<i32>(15803i, 21082i, -2147483647i), var_0, true))) >> (u_input.b.xxx % vec3<u32>(32u)), abs(4294967295u), countOneBits(_wgslsmith_mult_vec2_u32(arg_0 << (vec2<u32>(arg_0.x, 4294967295u) % vec2<u32>(32u)), arg_1.b.d)));
    let var_3 = vec2<bool>(true, true);
    let var_4 = !any(var_3);
    return var_4;
}

fn func_2() -> Struct_2 {
    let var_0 = select(!vec2<bool>(select(true, true, true), select(any(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, false)), true)), !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), true)), !select(func_3(u_input.a.xz, Struct_3(vec3<i32>(0i, 1i, -72667i), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], vec3<i32>(0i, 1i, -2147483647i), 74608u, u_input.a.zz))), true, u_input.b.x == u_input.a.x));
    var var_1 = select(vec3<bool>(false, !all(!vec4<bool>(false, var_0.x, var_0.x, false)), !select(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x, !var_0.x)), !vec3<bool>(false, var_0.x, (var_0.x | var_0.x) && (true | var_0.x)), select(vec3<bool>(func_3(~u_input.b.yz, Struct_3(vec3<i32>(-2147483647i, 1i, -1i), Struct_2(-1419f, vec3<i32>(-24293i, -52177i, -11569i), 4294967295u, u_input.b.wz))), !var_0.x | true, true), !vec3<bool>(!var_0.x, true, all(vec4<bool>(false, var_0.x, true, var_0.x))), any(select(!vec4<bool>(false, var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, var_0.x, false, false), vec4<bool>(false, var_0.x, true, true)), !vec4<bool>(var_0.x, true, var_0.x, var_0.x)))));
    var_1 = select(select(!(!vec3<bool>(true, false, var_1.x)), vec3<bool>(true, true | var_0.x, var_1.x), select(!(!vec3<bool>(false, var_1.x, var_0.x)), select(select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_1.x, false, var_0.x)), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, false, var_0.x), vec3<bool>(false, var_1.x, var_0.x)), false), func_3(~u_input.b.wy, Struct_3(vec3<i32>(1673i, 73742i, 18966i), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], vec3<i32>(-2147483647i, 1i, -12220i), 4294967295u, vec2<u32>(4294967295u, 4294967295u)))))), !select(!select(vec3<bool>(var_0.x, var_1.x, var_1.x), vec3<bool>(false, true, var_1.x), var_0.x), vec3<bool>(true, false, !var_0.x), select(!vec3<bool>(var_0.x, var_1.x, var_1.x), !vec3<bool>(false, false, var_1.x), !vec3<bool>(true, var_0.x, false))), var_0.x);
    var_1 = vec3<bool>(true, !all(var_0), true);
    let var_2 = var_1.zz;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(390f, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a.x), 28u)]) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(73672u, 28u)])) + _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.b.x, 28u)]))))), select(~(-vec3<i32>(-19840i, 11095i, -19980i) >> (vec3<u32>(0u, 14073u, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(32993i, 0i), vec2<i32>(0i, -694i)), vec2<i32>(2147483647i, -1i)), -7328i), var_1.x), u_input.b.x | _wgslsmith_dot_vec2_u32(~(~u_input.a.xy), vec2<u32>(~u_input.b.x, ~u_input.b.x)), min(_wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.b.x, 0u), vec2<u32>(42861u, 0u)), ~u_input.a.xx) ^ vec2<u32>(_wgslsmith_mult_u32(1u, 74922u), _wgslsmith_dot_vec3_u32(u_input.a, u_input.b.wyx)), _wgslsmith_div_vec2_u32(u_input.b.wx, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.a.x), vec3<u32>(42866u, 4294967295u, u_input.b.x)), countOneBits(1u)))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-323f - -1326f));
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    var var_1 = Struct_3(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(~arg_0.b, arg_0.b) & vec3<i32>(~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, arg_0.b.x), arg_0.b.yx), 13750i << (arg_3 % 32u)), ~vec3<i32>(abs(-10603i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, -2057i), arg_0.b), _wgslsmith_div_i32(-32807i, arg_0.b.x))), func_2());
    return Struct_3(vec3<i32>(var_1.b.b.x, _wgslsmith_dot_vec3_i32((vec3<i32>(var_1.a.x, var_1.a.x, 30146i) >> (vec3<u32>(29457u, 25099u, arg_0.c) % vec3<u32>(32u))) << (vec3<u32>(157801u, u_input.a.x, 4294967295u) % vec3<u32>(32u)), -arg_0.b), var_1.b.b.x), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a + global0[_wgslsmith_index_u32(52199u, 28u)]), _wgslsmith_f_op_f32(ceil(356f)))), _wgslsmith_clamp_vec3_i32(var_1.b.b, select(arg_0.b, vec3<i32>(1i, arg_0.b.x, -7116i) | vec3<i32>(32369i, -43843i, 13999i), true), vec3<i32>(-44265i, arg_0.b.x, min(var_1.b.b.x, var_1.a.x))), 695u, arg_0.d ^ vec2<u32>(~23881u, 0u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec2<i32>) -> i32 {
    var var_0 = func_4(func_2(), true, (true && arg_1.x) || false, arg_2.d.x);
    var_0 = func_4(arg_2, !arg_1.x, false, var_0.b.d.x);
    global0 = array<f32, 28>();
    var_0 = func_4(func_2(), !arg_1.x, arg_1.x, abs(0u));
    global0 = array<f32, 28>();
    return var_0.a.x;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.b.b.x, -arg_2.b.b.x, 0i), firstLeadingBit(func_2().b));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-591f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.a * -1712f), global0[_wgslsmith_index_u32(countOneBits(78212u), 28u)])))), -494f);
    var var_2 = Struct_3(vec3<i32>(-1i) * -(~(~vec3<i32>(arg_3.b.x, arg_0.x, var_0.x))), arg_2.b);
    global0 = array<f32, 28>();
    var var_3 = arg_3;
    return StorageBuffer(firstLeadingBit(var_3.c ^ abs(u_input.b.x)), var_2.b.d, u_input.b.ywy, _wgslsmith_div_vec4_i32(firstLeadingBit(~vec4<i32>(-1i, arg_2.a.x, var_0.x, 1i)), vec4<i32>(~746i, -75438i, arg_1.b.b.b.x, 0i)) >> (~u_input.b % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_add_vec3_i32(vec3<i32>(~(i32(-1i) * -2147483647i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-3508i, -24363i, 2147483647i, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 23424i, -21371i, -2147483647i), vec4<i32>(-11303i, 41475i, 32694i, 1i))), 1i), abs(vec3<i32>(_wgslsmith_div_i32(2147483647i, -1i), _wgslsmith_clamp_i32(-16282i, -2147483647i, -99i), func_1(vec4<f32>(-1073f, 702f, global0[_wgslsmith_index_u32(0u, 28u)], -560f), vec4<bool>(true, true, true, true), Struct_2(-163f, vec3<i32>(-2147483647i, -8431i, -60764i), 4294967295u, u_input.a.yz), vec2<i32>(58540i, 18502i))))), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(func_2().d.x, 28u)] * _wgslsmith_f_op_f32(-1455f - global0[_wgslsmith_index_u32(1u, 28u)])), 483f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1858f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-805f + global0[_wgslsmith_index_u32(1u, 28u)]))), func_4(Struct_2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<i32>(68774i, -2147483647i, -2147483647i), u_input.b.x, u_input.b.zw), select(u_input.a.x <= 9562u, any(vec4<bool>(true, false, true, true)), true), _wgslsmith_clamp_i32(-289i, -59499i, -8123i) == 1i, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(19022u, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), _wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(-521f - global0[_wgslsmith_index_u32(3383u, 28u)]), 1851f)), func_2(), func_2()), func_4(func_4(Struct_2(-675f, vec3<i32>(2256i, 25707i, -1i), abs(u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.x < min(u_input.a.x, u_input.b.x), true, 61806u).b, true, false, _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(14600u, u_input.b.x, u_input.a.x), ~_wgslsmith_add_u32(21270u, 0u))), Struct_2(global0[_wgslsmith_index_u32(((4294967295u & u_input.b.x) << (26698u % 32u)) >> (~(4979u ^ u_input.a.x) % 32u), 28u)], min(vec3<i32>(1i, func_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 279f, -685f, -504f), vec4<bool>(true, true, true, false), Struct_2(global0[_wgslsmith_index_u32(6496u, 28u)], vec3<i32>(0i, -1i, -2147483647i), 35187u, u_input.b.xy), vec2<i32>(-2147483647i, -23316i)), i32(-1i) * -12105i), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, 0i), vec3<i32>(-23851i, -53319i, 1i)), vec3<i32>(73788i, -76985i, 12358i) >> (vec3<u32>(u_input.a.x, 57543u, u_input.b.x) % vec3<u32>(32u)))), _wgslsmith_sub_u32(~4294967295u << (u_input.a.x % 32u), max(~u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(21463u, u_input.a.x, 0u)))), abs(select(u_input.a.xy, vec2<u32>(13881u, 0u), vec2<bool>(true, true)) >> ((u_input.a.xy ^ u_input.b.zx) % vec2<u32>(32u)))));
}

