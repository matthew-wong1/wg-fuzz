struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<f32>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-914f, 1552f);

var<private> global1: Struct_2;

var<private> global2: array<bool, 17>;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_div_vec2_f32(arg_0.c.zy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c.xy + arg_1.c.zy) * vec2<f32>(global0.x, 775f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1039f, arg_1.e) * vec2<f32>(-507f, -764f))))));
    var var_1 = firstLeadingBit(firstTrailingBit(select(-(vec3<i32>(u_input.b.x, arg_0.b, arg_1.a) & vec3<i32>(arg_1.a, 0i, arg_0.b)), vec3<i32>(~20822i, 1923i, 1i), all(select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(84456u, 17u)]), vec3<bool>(global3.b, global3.b, global1.b), global3.b)))));
    var var_2 = Struct_3(vec4<u32>(_wgslsmith_clamp_u32(~4294967295u, u_input.a.x, u_input.a.x) & _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.d.x, arg_1.d.x, 1u), vec3<u32>(37163u, 30882u, 42798u), vec3<u32>(2840u, u_input.a.x, 13097u)), vec3<u32>(arg_1.d.x, 1u, 4294967295u)), u_input.a.x, ~arg_1.d.x, arg_0.d.x), select(!vec3<bool>(true || global2[_wgslsmith_index_u32(arg_1.d.x, 17u)], -656f >= var_0.x, true), select(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 17u)], true), vec3<bool>(true, global3.b, select(false, global2[_wgslsmith_index_u32(arg_1.d.x, 17u)], true)), all(vec2<bool>(true, false))), false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-914f - arg_0.c.x)), -1000f)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -260f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - var_2.c))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.zx))));
    var_2 = Struct_3(countOneBits(_wgslsmith_mod_vec4_u32(~(~var_2.a), u_input.a)), !vec3<bool>(global1.b, !all(vec4<bool>(var_2.b.x, false, true, true)), ~arg_0.d.x == 4294967295u), 512f);
    return select(true, 2147483647i != arg_1.a, any(select(!vec3<bool>(var_2.b.x, var_2.b.x, false), var_2.b, global1.b)) != global2[_wgslsmith_index_u32(~5343u, 17u)]);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(Struct_3(~(~(~u_input.a)), vec3<bool>((global1.b && true) & global3.b, false, true), -623f), Struct_2(global3.a, select(false, select(any(vec3<bool>(global3.b, true, false)), true, any(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 17u)], false, false, global1.b))), func_3(Struct_1(0i, global3.a, vec4<f32>(global0.x, global0.x, 125f, global0.x), u_input.a.zy, -1053f), Struct_1(u_input.c.x, global1.a, vec4<f32>(505f, -359f, global0.x, -1394f), u_input.a.zz, 494f), global3.a))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1466f, global0.x, -649f, -1601f), vec4<f32>(-1867f, 478f, global0.x, -1740f))), vec4<f32>(_wgslsmith_f_op_f32(round(global0.x)), global0.x, _wgslsmith_f_op_f32(-global0.x), -750f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), 407f, -1636f, _wgslsmith_f_op_f32(exp2(global0.x))))), !(71528i >= ~u_input.b.x), Struct_3(vec4<u32>(u_input.a.x, u_input.a.x, ~1u, _wgslsmith_mult_u32(reverseBits(0u), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 0u))), vec3<bool>(false, any(!vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 17u)], global1.b, global1.b)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-458f, _wgslsmith_f_op_f32(global0.x - global0.x))), _wgslsmith_f_op_f32(-global0.x))));
    global3 = Struct_2(global3.a, global1.b);
    global1 = Struct_2(1i | (~_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(global3.a, u_input.d.x, -1i, var_0.b.a)) & -26390i), true);
    global1 = Struct_2(global1.a, all(vec4<bool>(!select(global2[_wgslsmith_index_u32(448u, 17u)], false, false), global3.b, any(select(var_0.e.b.xy, vec2<bool>(true, false), vec2<bool>(false, false))), select(var_0.a.a.x, 4294967295u, var_0.e.b.x) != firstTrailingBit(var_0.a.a.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)) * _wgslsmith_f_op_f32(trunc(-690f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1398f)) * -908f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x))))));
    return Struct_2(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-1i) * -u_input.b.xxz, u_input.b.wyz), ~(~firstTrailingBit(vec3<i32>(global3.a, 0i, global3.a)))), false);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: f32, arg_3: vec3<bool>) -> Struct_4 {
    global3 = func_2();
    let var_0 = !(!(all(!arg_0.b.yy) & all(!vec4<bool>(arg_3.x, arg_0.b.x, true, true))));
    let var_1 = countOneBits(~_wgslsmith_mult_u32(42139u, u_input.a.x));
    var var_2 = Struct_4(Struct_3(max(~arg_0.a, u_input.a), select(!(!arg_0.b), arg_3, !any(arg_3.yx)), -309f), func_2(), vec4<f32>(-833f, arg_2, -800f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) - _wgslsmith_f_op_f32(trunc(global0.x))), -401f)), any(!select(vec4<bool>(false, arg_1.x, true, true), vec4<bool>(true, arg_0.b.x, true, false), false)), arg_0);
    let var_3 = min(-u_input.b.x, 1i);
    return Struct_4(arg_0, var_2.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_div_vec4_f32(var_2.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.c) * _wgslsmith_f_op_vec4_f32(exp2(var_2.c))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))) > -725f, var_2.a);
}

fn func_4(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = Struct_1(1i, u_input.c.x, arg_0.c, _wgslsmith_clamp_vec2_u32(~u_input.a.yz, arg_0.e.a.wz, vec2<u32>(23593u, 26770u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * -1488f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * arg_0.a.c) + -813f), _wgslsmith_f_op_f32(-global0.x), reverseBits(arg_0.a.a.x) > 29321u))));
    let var_1 = arg_0.b;
    var var_2 = var_1.a;
    global0 = _wgslsmith_f_op_vec2_f32(var_0.c.yy - arg_0.c.xz);
    let var_3 = Struct_1(global1.a, -2147483647i, _wgslsmith_f_op_vec4_f32(-var_0.c), max(~(~vec2<u32>(var_0.d.x, 5734u)), ~(var_0.d & vec2<u32>(arg_0.a.a.x, 40619u))) | _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_0.d.x, 4294967295u), 11515u), vec2<u32>(~u_input.a.x, _wgslsmith_add_u32(37976u, 1u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(62494u, 1u), u_input.a.wz)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.e)))));
    return select(vec4<bool>(false, false, true, global1.b), select(vec4<bool>((global3.b || global3.b) || true, !(global3.a != 2147483647i), all(select(vec4<bool>(false, arg_0.d, true, global3.b), vec4<bool>(global3.b, global1.b, true, arg_0.a.b.x), vec4<bool>(arg_0.a.b.x, false, global2[_wgslsmith_index_u32(arg_0.a.a.x, 17u)], true))), any(select(vec4<bool>(arg_0.a.b.x, var_1.b, global3.b, false), vec4<bool>(true, true, true, arg_0.a.b.x), vec4<bool>(global3.b, true, var_1.b, true)))), select(vec4<bool>(true, global2[_wgslsmith_index_u32(~35226u, 17u)], arg_0.e.b.x, !global1.b), !(!vec4<bool>(arg_0.d, global1.b, arg_0.e.b.x, global2[_wgslsmith_index_u32(var_3.d.x, 17u)])), select(!vec4<bool>(arg_0.a.b.x, var_1.b, true, arg_0.e.b.x), vec4<bool>(true, true, global1.b, global2[_wgslsmith_index_u32(var_3.d.x, 17u)]), func_2().b)), any(!vec3<bool>(var_1.b, true, false)) && (1023f != arg_0.a.c)), !(u_input.c.x >= -25519i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 17>();
    let var_0 = !(!select(select(select(vec2<bool>(global3.b, global3.b), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(global1.b, true), select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(16105u, 17u)]), true)), select(select(vec2<bool>(true, false), vec2<bool>(false, global3.b), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(global3.b, false), vec2<bool>(false, global3.b)), any(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 17u)]))), !select(vec2<bool>(global3.b, global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec2<bool>(true, true), true)));
    var var_1 = select(func_4(func_1(Struct_3(u_input.a, !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], true, var_0.x), -762f), var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(157f, 1154f)), select(select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, true, true), vec3<bool>(global1.b, false, global3.b)), vec3<bool>(true, var_0.x, true), global0.x <= global0.x))), vec4<bool>(true, var_0.x, true, global0.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(448f)))), vec4<bool>(true, !(!any(var_0)), global3.b, all(!(!vec2<bool>(var_0.x, global2[_wgslsmith_index_u32(8797u, 17u)])))));
    var var_2 = vec3<u32>(~4294967295u, 4294967295u, u_input.a.x);
    var var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -u_input.b.yw, ~firstTrailingBit(vec2<i32>(1i, global1.a)) << (vec2<u32>(~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 71697u)) % vec2<u32>(32u))) ^ u_input.c.xz;
    var_1 = vec4<bool>(true, var_1.x, true, any(func_4(Struct_4(Struct_3(u_input.a, var_1.xwz, global0.x), Struct_2(u_input.d.x, var_0.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, global0.x, 285f), vec4<f32>(global0.x, global0.x, -742f, global0.x), true)), any(var_1.yzw), Struct_3(vec4<u32>(4294967295u, 4294967295u, var_2.x, 62230u), vec3<bool>(var_1.x, global3.b, var_1.x), global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-14053i, vec4<u32>(30609u, select(1u, u_input.a.x, global3.b), ~_wgslsmith_add_u32(1u, 1u), 1u) << (abs(u_input.a) % vec4<u32>(32u)), max(_wgslsmith_div_u32(0u, ~46981u), reverseBits(38848u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), func_1(Struct_3(vec4<u32>(var_2.x, var_2.x, 61273u, 4294967295u), var_1.zxw, global0.x), var_1.ww, -1189f, vec3<bool>(false, global1.b, true)).e.b.zy)) * vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.x, 55579u, 0u) << (firstTrailingBit(vec3<u32>(38445u, 47061u, u_input.a.x)) % vec3<u32>(32u)), vec3<u32>(var_2.x, u_input.a.x, u_input.a.x)));
}

