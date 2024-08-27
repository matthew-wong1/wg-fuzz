struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25>;

var<private> global1: vec2<u32>;

var<private> global2: array<bool, 21>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec4<bool> {
    var var_0 = firstTrailingBit(-(~(~vec2<i32>(u_input.a, -2147483647i))) ^ -(vec2<i32>(arg_0, arg_0) >> (~vec2<u32>(18385u, 1u) % vec2<u32>(32u))));
    var_0 = select(vec2<i32>(_wgslsmith_mult_i32(-u_input.a, -arg_0 & -var_0.x), -_wgslsmith_add_i32(-37084i, -29103i) >> (global1.x % 32u)), ~(-select(-vec2<i32>(30844i, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, 0i), vec2<i32>(0i, var_0.x), vec2<i32>(1i, var_0.x)), false)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(global1.x, 1u & global1.x), 16496u) & ~6835u, 21u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-241f, 245f, -585f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-481f, -1177f, -1000f), vec3<f32>(-1008f, 343f, -1066f)) + vec3<f32>(385f, 1011f, 557f))))));
    var var_2 = Struct_3(~(~reverseBits(reverseBits(vec3<u32>(global1.x, global1.x, 18610u)))));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(1u, 40447u)), ~_wgslsmith_add_vec2_u32(var_2.a.yx, vec2<u32>(global1.x, global1.x)), ~vec2<u32>(0u, global1.x)), abs(vec2<u32>(var_2.a.x, global1.x) << (var_2.a.yy % vec2<u32>(32u)))) & firstTrailingBit(_wgslsmith_clamp_u32(reverseBits(~49649u), var_2.a.x, _wgslsmith_sub_u32(22726u, var_2.a.x >> (49272u % 32u)))), 21u)];
    return select(vec4<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(global2[_wgslsmith_index_u32(125u, 21u)], true, true), vec3<bool>(global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(var_2.a.x, 21u)], global2[_wgslsmith_index_u32(global1.x, 21u)]), vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(var_2.a.x, 21u)])), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 21u)], false))), !(!all(vec4<bool>(true, false, global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(global1.x, 21u)]))), false, 17882u > (global1.x >> (1u % 32u))), !(!(!(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 21u)], false, global2[_wgslsmith_index_u32(global1.x, 21u)], false)))), true);
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> f32 {
    let var_0 = -max(-2147483647i, 2147483647i);
    var var_1 = Struct_4(arg_1.a, arg_1.b, arg_1.c);
    global2 = array<bool, 21>();
    let var_2 = arg_1.c.a;
    var var_3 = select(vec4<bool>(all(select(vec3<bool>(arg_1.b.b.x, var_1.c.a, true), vec3<bool>(false, var_1.b.b.x, global2[_wgslsmith_index_u32(22038u, 21u)]), arg_1.b.b)) & true, var_2, arg_2, true), select(vec4<bool>(!(global2[_wgslsmith_index_u32(arg_0, 21u)] && true), !(!global2[_wgslsmith_index_u32(1u, 21u)]), var_1.c.a, !all(vec2<bool>(true, true))), !vec4<bool>(arg_2 | var_1.c.a, true, !var_1.c.a, false), select(any(select(vec4<bool>(true, arg_2, arg_1.c.a, false), vec4<bool>(arg_1.c.a, var_2, false, true), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0, 21u)], false, true))), true, false)), func_3((var_1.b.a.x >> (68283u % 32u)) << (arg_1.a.x % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-185f + 260f) * -1022f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b))))), 1f)));
    global0 = array<vec2<u32>, 25>();
    return Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.x, i32(-1i) * -2147483647i, 0i), abs(~reverseBits(vec3<i32>(1i, 0i, -1i))), ~(-(~vec3<i32>(u_input.a, u_input.a, 1i)))), select(vec3<bool>(!(267f > arg_0.b), u_input.a >= _wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(-1i, 2147483647i)), any(!vec2<bool>(arg_0.a, arg_0.a))), select(func_3(~1i).wxz, !vec3<bool>(false, global2[_wgslsmith_index_u32(111709u, 21u)], true), func_3(u_input.a).yzx), true));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_4 {
    var var_0 = func_4(arg_1, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.b, -464f, -1329f, -711f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-972f, arg_1.b, arg_1.b, -294f)))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0, Struct_4(vec4<u32>(global1.x, 5370u, 31431u, arg_0), Struct_2(vec3<i32>(0i, u_input.a, u_input.a), vec3<bool>(false, arg_1.a, true)), arg_1), false)) - _wgslsmith_f_op_f32(floor(1595f))), _wgslsmith_f_op_f32(func_2(19532u, Struct_4(vec4<u32>(global1.x, global1.x, 1972u, global1.x), Struct_2(vec3<i32>(-1i, u_input.a, u_input.a), vec3<bool>(false, false, arg_1.a)), Struct_1(false, -2138f)), all(vec3<bool>(false, true, arg_1.a)))), _wgslsmith_f_op_f32(-938f - _wgslsmith_f_op_f32(step(arg_1.b, 1000f)))))), vec2<i32>(-(u_input.a | u_input.a) >> (global1.x % 32u), -8916i), Struct_3(~select(vec3<u32>(28594u, global1.x, arg_0) >> (vec3<u32>(global1.x, global1.x, arg_0) % vec3<u32>(32u)), ~vec3<u32>(global1.x, arg_0, global1.x), true)));
    var_0 = Struct_2(vec3<i32>(u_input.a << (arg_0 % 32u), max(u_input.a, _wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.a.zy), min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, 1i)))), select(-30166i | var_0.a.x, abs(var_0.a.x) >> (_wgslsmith_add_u32(20677u, 25707u) % 32u), var_0.b.x)), !(!func_3(-1i).wzz));
    var_0 = Struct_2(vec3<i32>(-34434i, _wgslsmith_dot_vec4_i32(~min(vec4<i32>(-42764i, u_input.a, u_input.a, var_0.a.x), vec4<i32>(0i, 1i, u_input.a, -2147483647i)), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, 1i, 44903i, 37121i), vec4<i32>(8208i, var_0.a.x, var_0.a.x, var_0.a.x), vec4<i32>(u_input.a, 1i, u_input.a, 17483i)))), -var_0.a.x), var_0.b);
    global0 = array<vec2<u32>, 25>();
    var var_1 = select(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(arg_0, 0u), ~0u, _wgslsmith_mult_u32(14252u, 0u)), vec3<u32>(global1.x, abs(global1.x), 1u)), abs(~firstTrailingBit(vec3<u32>(global1.x, 61376u, global1.x)))), reverseBits(select(abs(vec3<u32>(arg_0, arg_0, global1.x)), vec3<u32>(4294967295u, arg_0, 4294967295u), arg_1.a)) & vec3<u32>(~39619u & _wgslsmith_sub_u32(4294967295u, arg_0), min(arg_0, arg_0 ^ global1.x), select(_wgslsmith_mult_u32(global1.x, 82373u), global1.x, true)), var_0.b.x);
    return Struct_4(vec4<u32>(0u, _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, min(0u, global1.x)), _wgslsmith_dot_vec2_u32(min(vec2<u32>(9695u, var_1.x), vec2<u32>(global1.x, 91819u)), global0[_wgslsmith_index_u32(~global1.x, 25u)])), _wgslsmith_clamp_u32(4294967295u, min(54153u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 1u, 1u), vec3<u32>(global1.x, 0u, 14973u))), abs(~global1.x)), 49134u), Struct_2(reverseBits(var_0.a) | _wgslsmith_add_vec3_i32(vec3<i32>(-21060i, u_input.a, -2147483647i), select(vec3<i32>(u_input.a, -1i, 1i), vec3<i32>(u_input.a, 1i, 24281i), vec3<bool>(false, global2[_wgslsmith_index_u32(46361u, 21u)], false))), !vec3<bool>(!arg_1.a, global2[_wgslsmith_index_u32(arg_0, 21u)], !global2[_wgslsmith_index_u32(global1.x, 21u)])), Struct_1(true, _wgslsmith_f_op_f32(1502f * _wgslsmith_f_op_f32(f32(-1f) * -781f))));
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    global1 = ~(~_wgslsmith_add_vec2_u32(arg_2.a.xx, reverseBits(arg_1.a.yw)) | vec2<u32>(19283u, ~_wgslsmith_add_u32(0u, arg_2.a.x)));
    let var_0 = Struct_1(!(!(~arg_0 >= ~arg_0)), -1827f);
    global1 = ~vec2<u32>(min(global1.x, ~arg_1.a.x), ~arg_1.a.x | arg_1.a.x);
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, firstLeadingBit(4294967295u)), 25u)];
    let var_1 = ~global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~1u, ~_wgslsmith_add_u32(arg_0, 0u), 6159u), 25u)];
    return arg_1.b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> Struct_3 {
    let var_0 = arg_0.b;
    var var_1 = arg_1.a.xz & arg_1.a.xz;
    global2 = array<bool, 21>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-508f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 596f)), -2600f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -657f), -1000f, func_1(45367u, Struct_1(true, 2323f)).c.b))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, var_0, var_0)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0.b, arg_0.b) + vec3<f32>(-576f, arg_0.b, -1781f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(829f, arg_0.b, arg_0.b))))));
    global2 = array<bool, 21>();
    return Struct_3(~vec3<u32>(0u, 4294967295u, ~(~global1.x)));
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> vec2<u32> {
    global1 = vec2<u32>(~0u, ~0u) ^ max(~vec2<u32>(419u | arg_2.a.x, 1u), arg_3.a.zz);
    var var_0 = (_wgslsmith_dot_vec2_u32((arg_2.a.yz >> (arg_2.a.yy % vec2<u32>(32u))) | (arg_2.a.xy | arg_3.a.xy), ~vec2<u32>(global1.x, arg_3.a.x)) >> (~4294967295u % 32u)) >= 1u;
    let var_1 = arg_2.c;
    var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 21u)];
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.b))))));
    return arg_3.a.yy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec4<u32>(global1.x, global1.x, ~global1.x, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(15510u, global1.x), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), global0[_wgslsmith_index_u32(55593u, 25u)]), select(vec2<bool>(false, global2[_wgslsmith_index_u32(17762u, 21u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(8423u, 21u)]), true)), ~vec2<u32>(67102u, 14762u))), Struct_2(-(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(-51216i, u_input.a, 0i)) ^ abs(vec3<i32>(u_input.a, 38416i, 50934i))), vec3<bool>(true, !any(vec4<bool>(false, false, global2[_wgslsmith_index_u32(global1.x, 21u)], false)), global2[_wgslsmith_index_u32(global1.x, 21u)])), Struct_1(all(!select(vec2<bool>(global2[_wgslsmith_index_u32(28230u, 21u)], false), vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 21u)], global2[_wgslsmith_index_u32(global1.x, 21u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(52075u, 21u)]))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -238f)))));
    let var_1 = var_0.c.b;
    global1 = func_7(vec3<i32>(u_input.a, -49742i & firstTrailingBit(u_input.a), -9362i), func_6(Struct_1(true, _wgslsmith_f_op_f32(var_1 * var_1)), func_5(4294967295u ^ var_0.a.x, func_1(global1.x, var_0.c), Struct_4(vec4<u32>(6007u, 7079u, var_0.a.x, 1u), Struct_2(vec3<i32>(u_input.a, 2147483647i, -26030i), var_0.b.b), var_0.c))), var_0, Struct_3(var_0.a.wwz)) & min(~_wgslsmith_mod_vec2_u32(reverseBits(global0[_wgslsmith_index_u32(60228u, 25u)]), vec2<u32>(global1.x, var_0.a.x)), ~global0[_wgslsmith_index_u32(37297u << (var_0.a.x % 32u), 25u)] | reverseBits(func_6(var_0.c, Struct_2(vec3<i32>(0i, 0i, u_input.a), vec3<bool>(global2[_wgslsmith_index_u32(51500u, 21u)], var_0.b.b.x, false))).a.zx));
    let var_2 = var_0.b.a.x;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_1 - -759f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-527f - 1580f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.x - var_3.x), var_0.c.b, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_0.c.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1086f, -477f, var_1, -1673f), vec4<f32>(var_3.x, -246f, var_0.c.b, -635f)))), select(vec4<bool>(false, !global2[_wgslsmith_index_u32(73269u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)] || var_0.b.b.x, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 27u), 21u)]), select(!vec4<bool>(false, global2[_wgslsmith_index_u32(global1.x, 21u)], var_0.c.a, false), vec4<bool>(true, true, false, var_0.b.b.x), !global2[_wgslsmith_index_u32(var_0.a.x, 21u)]), !vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 21u)], var_0.c.a, true, global2[_wgslsmith_index_u32(0u, 21u)])))), (abs(abs(vec3<i32>(u_input.a, var_2, 1i))) ^ -(~vec3<i32>(var_2, u_input.a, 1i))) >> (var_0.a.ywz % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(676f, -333f, -1150f, -1085f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.b, 1269f, var_0.c.b, 627f), vec4<f32>(-290f, var_3.x, var_1, -1087f), vec4<bool>(var_0.b.b.x, true, false, true))), func_3(var_0.b.a.x))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.b), var_0.c.b, _wgslsmith_f_op_f32(-1090f + -595f), _wgslsmith_f_op_f32(func_2(4294967295u, Struct_4(vec4<u32>(var_0.a.x, 1u, 1u, 0u), Struct_2(var_0.b.a, vec3<bool>(true, global2[_wgslsmith_index_u32(global1.x, 21u)], global2[_wgslsmith_index_u32(var_0.a.x, 21u)])), var_0.c), false)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(790f + -1086f), var_1, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -715f), var_3.x)), _wgslsmith_f_op_f32(820f + 1807f), _wgslsmith_f_op_f32(f32(-1f) * -545f)))));
}

