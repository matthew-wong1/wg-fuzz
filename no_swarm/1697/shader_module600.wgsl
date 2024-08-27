struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: Struct_2,
    d: vec3<bool>,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<f32>;

var<private> global2: array<bool, 16> = array<bool, 16>(true, false, true, false, true, false, true, false, true, true, false, false, false, true, true, true);

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5) -> bool {
    global0 = Struct_1(arg_0.b.c.a);
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(abs(~global0.a), arg_0.b.c.a << (~vec2<u32>(arg_0.b.b.a.x, global0.a.x) % vec2<u32>(32u)))), Struct_1(_wgslsmith_mult_vec2_u32(firstLeadingBit(global0.a), _wgslsmith_div_vec2_u32(vec2<u32>(66577u, 4294967295u) ^ vec2<u32>(55420u, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.x, u_input.b), vec2<u32>(global0.a.x, 0u), arg_0.b.c.a)))), Struct_1(_wgslsmith_add_vec2_u32(~(~arg_0.b.b.a), vec2<u32>(~u_input.b, _wgslsmith_div_u32(u_input.a, 45234u)))));
    global3 = select(vec4<bool>(false, !(!all(vec4<bool>(false, false, global3.x, global3.x))), false, true), select(select(vec4<bool>(global3.x, true | global2[_wgslsmith_index_u32(0u, 16u)], false, global3.x), !(!vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 16u)], true, false)), select(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_1.b.b.a.x, 16u)], true, false, true), vec4<bool>(global2[_wgslsmith_index_u32(global0.a.x, 16u)], global2[_wgslsmith_index_u32(arg_0.a, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)], global3.x), vec4<bool>(true, false, global2[_wgslsmith_index_u32(65785u, 16u)], false)), !vec4<bool>(global3.x, false, global3.x, true), !vec4<bool>(global3.x, true, global2[_wgslsmith_index_u32(arg_0.b.c.a.x, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)]))), select(select(!vec4<bool>(global3.x, true, global2[_wgslsmith_index_u32(0u, 16u)], true), vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b, 16u)], global3.x), select(vec4<bool>(global3.x, global2[_wgslsmith_index_u32(17478u, 16u)], false, global3.x), vec4<bool>(false, global2[_wgslsmith_index_u32(global0.a.x, 16u)], global2[_wgslsmith_index_u32(u_input.b, 16u)], true), false)), select(select(vec4<bool>(global3.x, false, false, true), vec4<bool>(false, false, false, true), global2[_wgslsmith_index_u32(1u, 16u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.b.a.x, 16u)], global3.x, true), select(vec4<bool>(global2[_wgslsmith_index_u32(23851u, 16u)], true, global2[_wgslsmith_index_u32(arg_1.b.a.a.x, 16u)], true), vec4<bool>(true, true, false, global3.x), false)), !select(vec4<bool>(global3.x, global3.x, global2[_wgslsmith_index_u32(global0.a.x, 16u)], true), vec4<bool>(true, global3.x, false, global2[_wgslsmith_index_u32(arg_0.b.a.a.x, 16u)]), global3.x)), !vec4<bool>(global3.x, !global3.x, true, false & global2[_wgslsmith_index_u32(65199u, 16u)])), all(!vec2<bool>(false, global3.x)));
    global2 = array<bool, 16>();
    var var_1 = Struct_4(~10849i, ~_wgslsmith_mult_vec2_u32(arg_0.b.b.a, abs(global0.a)), Struct_2(Struct_1(~global0.a), var_0.b, arg_1.b.b), !select(!vec3<bool>(false, global3.x, global3.x), global3.wyw, global2[_wgslsmith_index_u32(min(~4294967295u, select(var_0.b.a.x, global0.a.x, global3.x)), 16u)]), _wgslsmith_dot_vec3_i32(min(_wgslsmith_sub_vec3_i32(select(u_input.d.xyz, vec3<i32>(u_input.c, u_input.d.x, -2147483647i), global3.wzy), u_input.d.yyy), -vec3<i32>(u_input.d.x, u_input.c, u_input.d.x)), -(~u_input.d.zyz)));
    return !var_1.d.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global3 = select(!select(select(select(vec4<bool>(global3.x, false, arg_0, true), vec4<bool>(true, global3.x, true, false), vec4<bool>(global3.x, arg_0, true, global3.x)), vec4<bool>(arg_0, true, false, false), select(vec4<bool>(global3.x, true, global2[_wgslsmith_index_u32(global0.a.x, 16u)], false), vec4<bool>(false, global3.x, false, false), vec4<bool>(arg_0, global3.x, false, true))), vec4<bool>(any(vec4<bool>(false, arg_0, global2[_wgslsmith_index_u32(27098u, 16u)], false)), true, arg_0, false), !any(vec4<bool>(global2[_wgslsmith_index_u32(56302u, 16u)], false, global2[_wgslsmith_index_u32(67923u, 16u)], false))), select(!vec4<bool>(!arg_0, global2[_wgslsmith_index_u32(u_input.a, 16u)], func_3(Struct_5(global0.a.x, Struct_2(Struct_1(global0.a), Struct_1(global0.a), Struct_1(vec2<u32>(0u, 88960u))), global1.x, vec4<f32>(global1.x, global1.x, global1.x, 1004f)), Struct_5(70886u, Struct_2(Struct_1(global0.a), Struct_1(global0.a), Struct_1(vec2<u32>(u_input.b, global0.a.x))), 143f, vec4<f32>(561f, 884f, -530f, -688f))), true), vec4<bool>(arg_0, all(vec4<bool>(arg_0, true, arg_0, true)), all(!vec4<bool>(false, true, global3.x, global3.x)), false), false), select(select(!(!vec4<bool>(global3.x, true, arg_0, true)), !(!vec4<bool>(arg_0, global3.x, true, arg_0)), vec4<bool>(!arg_0, arg_0, arg_0, arg_0)), !vec4<bool>(true, false, select(true, false, true), global3.x), select(select(!vec4<bool>(global3.x, arg_0, false, true), vec4<bool>(false, false, false, false), true), !(!vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 16u)], false, global3.x)), select(!vec4<bool>(true, true, global3.x, false), !vec4<bool>(arg_0, true, false, arg_0), !vec4<bool>(global2[_wgslsmith_index_u32(110569u, 16u)], global3.x, global3.x, false)))));
    var var_0 = 2147483647i << (u_input.a % 32u);
    global0 = Struct_1(_wgslsmith_sub_vec2_u32(global0.a, vec2<u32>(1u, global0.a.x) & (max(global0.a, vec2<u32>(global0.a.x, u_input.b)) & abs(vec2<u32>(u_input.a, 1u)))));
    let var_1 = ~(~global0.a.x);
    var var_2 = Struct_5(~global0.a.x, Struct_2(Struct_1(vec2<u32>(u_input.b ^ 35751u, ~19677u)), Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(global0.a.x, 30354u), vec2<u32>(var_1, global0.a.x))), Struct_1(global0.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1603f, _wgslsmith_f_op_f32(min(global1.x, global1.x)), global2[_wgslsmith_index_u32(~global0.a.x, 16u)])), _wgslsmith_f_op_f32(f32(-1f) * -270f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -634f) - -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x - -1643f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(global1.x - global1.x)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)))), global1.x, 705f, global1.x));
    return Struct_1(vec2<u32>(global0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, u_input.a, 80003u) << (vec3<u32>(53672u, var_1, 9749u) % vec3<u32>(32u)), vec3<u32>(51404u, 46069u, 8707u)) | 1u));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> vec2<f32> {
    global0 = func_2(true);
    let var_0 = Struct_4(reverseBits(~(~firstTrailingBit(u_input.c))), global0.a ^ reverseBits(vec2<u32>(_wgslsmith_clamp_u32(15742u, u_input.b, 0u), func_2(arg_0.x).a.x)), Struct_2(func_2(!all(arg_0)), Struct_1(~vec2<u32>(7303u, u_input.a)), Struct_1(vec2<u32>(8215u | global0.a.x, countOneBits(12386u)))), global3.wyy, abs(firstTrailingBit(1i)));
    var var_1 = Struct_3(Struct_2(var_0.c.a, var_0.c.c, Struct_1(global0.a << (_wgslsmith_mod_vec2_u32(var_0.c.c.a, global0.a) % vec2<u32>(32u)))));
    let var_2 = global1.x != global1.x;
    let var_3 = _wgslsmith_dot_vec4_i32(~select(vec4<i32>(var_0.e, u_input.d.x, 2147483647i, u_input.d.x), _wgslsmith_sub_vec4_i32(vec4<i32>(24715i, -2147483647i, 3210i, u_input.d.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, -45366i, u_input.d.x, -39742i), vec4<i32>(-1i, 0i, 55062i, 0i))), arg_0), u_input.d);
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 577f) - global1.x), -1000f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(105f, 205f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, global1.x))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(global3.x, false, false, false), u_input.a))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(f32(-1f) * -132f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1.x) - vec2<f32>(-740f, 324f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, global1.x), vec2<f32>(-271f, global1.x), global2[_wgslsmith_index_u32(global0.a.x, 16u)]))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-614f, 949f) * vec2<f32>(global1.x, global1.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-758f, global1.x) - vec2<f32>(806f, 543f))))));
    global2 = array<bool, 16>();
    global3 = select(!vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 16u)], _wgslsmith_f_op_f32(max(1510f, 162f)) != _wgslsmith_f_op_f32(-1833f + global1.x), any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(u_input.b, 16u)], global3.x))), !(!select(!vec4<bool>(false, false, global3.x, true), vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(u_input.b, 16u)]), vec4<bool>(true, true, true, false))), !(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 16u)], false, global2[_wgslsmith_index_u32(1u, 16u)], global3.x), vec4<bool>(true, false, true, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(step(-145f, -1793f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, -402f))))));
}

