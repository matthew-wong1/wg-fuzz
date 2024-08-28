struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 46073u);

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_1, 10>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    let var_0 = vec4<u32>(10749u, 60553u, global1.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(global1.x, global1.x), select(global1.x, _wgslsmith_add_u32(global1.x, _wgslsmith_mult_u32(32892u, global1.x)), false)));
    let var_1 = firstTrailingBit(1i);
    global3 = array<Struct_1, 10>();
    let var_2 = var_0.yyx;
    var var_3 = -1i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) + _wgslsmith_f_op_f32(1710f + global2.x))) + global2.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -956f), _wgslsmith_div_f32(arg_1.a.a.c, -356f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * -1238f)))));
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(891f, _wgslsmith_f_op_f32(func_3())))), 962f));
    var var_1 = vec3<bool>(arg_2.x, any(vec2<bool>(!arg_2.x, 38307i < _wgslsmith_clamp_i32(arg_0.x, -44039i, arg_0.x))), global1.x >= _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.a.a.b, arg_1.a.a.b) ^ _wgslsmith_add_vec2_u32(vec2<u32>(32882u, arg_1.a.a.b), vec2<u32>(arg_1.a.a.b, arg_1.a.a.b)), vec2<u32>(min(global1.x, global1.x), global1.x)));
    let var_2 = arg_1.a;
    var var_3 = _wgslsmith_sub_vec4_u32((~vec4<u32>(arg_1.a.a.b, 0u, arg_1.a.a.b, 34930u) ^ vec4<u32>(global1.x, 0u, 4294967295u, 1u)) & min(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a.b, 92359u, arg_1.a.a.b, global1.x), vec4<u32>(var_2.a.b, global1.x, global1.x, var_2.a.b)), vec4<u32>(47118u, 15448u, 0u, 63617u) >> (vec4<u32>(28184u, 1863u, global1.x, 42279u) % vec4<u32>(32u))), vec4<u32>(arg_1.a.a.b, 9746u, ~(~global1.x), 0u)) >> (~select(~firstLeadingBit(vec4<u32>(57089u, global1.x, arg_1.a.a.b, var_2.a.b)), ~countOneBits(vec4<u32>(44045u, 55741u, 4294967295u, 24950u)), any(vec3<bool>(true, arg_2.x, var_2.a.e))) % vec4<u32>(32u));
    return arg_1.a;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: f32) -> Struct_3 {
    var var_0 = arg_1.a;
    var var_1 = global2.xy;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + 940f)), arg_0)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.c + -1000f) + _wgslsmith_div_f32(1831f, var_1.x))))) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, -619f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(467f * arg_2.x) * -1241f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1803f + global2.x)))));
    var_0 = arg_1.a;
    return Struct_3(Struct_2(arg_1.a, -1723i));
}

fn func_5(arg_0: Struct_3) -> u32 {
    global3 = array<Struct_1, 10>();
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.a) * arg_0.a.a.a), _wgslsmith_f_op_f32(-1f)), 1u, _wgslsmith_f_op_f32(select(891f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-680f * -922f)), func_4(true, arg_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 357f) - vec2<f32>(global2.x, arg_0.a.a.c)), _wgslsmith_f_op_f32(arg_0.a.a.c + global2.x)).a.a.e | (48276u <= firstTrailingBit(arg_0.a.a.b)))), -vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, arg_0.a.a.d.x, u_input.a), vec4<i32>(-1i, -2147483647i, -2147483647i, -9095i)), max(arg_0.a.a.d.x, -23318i)), func_4(arg_0.a.a.e, arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2.yy, global2.xx, vec2<bool>(false, true)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global2.xz)))), _wgslsmith_f_op_f32(trunc(global2.x))).a.a.e);
    var var_1 = abs(vec4<u32>(select(var_0.b, global1.x, !all(vec3<bool>(false, var_0.e, false))), func_2(firstLeadingBit(~vec4<i32>(u_input.a, 0i, -2147483647i, var_0.d.x)), Struct_3(Struct_2(Struct_1(-1512f, global1.x, 1171f, vec2<i32>(u_input.a, -19707i), var_0.e), -165i)), vec4<bool>(arg_0.a.a.e, var_0.e, true, func_4(arg_0.a.a.e, arg_0.a, global2.yx, 3345f).a.a.e)).a.b, ~max(_wgslsmith_mult_u32(arg_0.a.a.b, 1u), _wgslsmith_clamp_u32(arg_0.a.a.b, 4294967295u, 4294967295u)), 1u));
    var var_2 = var_1.x;
    var var_3 = (vec4<i32>(reverseBits(arg_0.a.a.d.x << (9261u % 32u)), func_2(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.d.x, 10395i, -1i, -2147483647i), vec4<i32>(var_0.d.x, var_0.d.x, u_input.a, var_0.d.x)), Struct_3(Struct_2(var_0, -1i)), select(vec4<bool>(false, arg_0.a.a.e, false, true), vec4<bool>(true, true, arg_0.a.a.e, false), vec4<bool>(false, true, arg_0.a.a.e, false))).a.d.x, -var_0.d.x & _wgslsmith_mult_i32(var_0.d.x, arg_0.a.b), _wgslsmith_mod_i32(~arg_0.a.a.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, arg_0.a.b, arg_0.a.b), vec4<i32>(var_0.d.x, u_input.a, u_input.a, arg_0.a.a.d.x)))) ^ firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_0.d.x, arg_0.a.a.d.x, -2147483647i), ~vec4<i32>(u_input.a, var_0.d.x, var_0.d.x, 1i)))) << (firstTrailingBit(select(min(select(vec4<u32>(31308u, var_1.x, 4294967295u, 35409u), vec4<u32>(0u, arg_0.a.a.b, var_1.x, 29203u), vec4<bool>(true, false, arg_0.a.a.e, arg_0.a.a.e)), ~vec4<u32>(global1.x, 37964u, var_0.b, 4294967295u)), ~(~vec4<u32>(global1.x, var_0.b, 25568u, 4294967295u)), select(select(vec4<bool>(var_0.e, false, arg_0.a.a.e, false), vec4<bool>(true, false, var_0.e, false), vec4<bool>(var_0.e, var_0.e, false, false)), !vec4<bool>(arg_0.a.a.e, var_0.e, arg_0.a.a.e, false), var_0.e))) % vec4<u32>(32u));
    return 0u;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = u_input.a << (global1.x % 32u);
    let var_1 = ~_wgslsmith_div_i32(2147483647i, var_0) << (~func_5(func_4(false, func_2(vec4<i32>(u_input.a, -12227i, -1i, 1i), Struct_3(Struct_2(global3[_wgslsmith_index_u32(global1.x, 10u)], 0i)), vec4<bool>(false, true, true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + vec2<f32>(arg_0.x, 1839f)), -848f)) % 32u);
    global1 = _wgslsmith_mod_vec2_u32(~abs(vec2<u32>(23081u, 1u)), _wgslsmith_add_vec2_u32(min(~vec2<u32>(1u, 0u) << ((vec2<u32>(4294967295u, 17680u) ^ vec2<u32>(global1.x, global1.x)) % vec2<u32>(32u)), vec2<u32>(1u, global1.x)), vec2<u32>(~(~global1.x), _wgslsmith_div_u32(max(global1.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(43212u, global1.x, 14788u, 1u), vec4<u32>(0u, 34922u, 18637u, global1.x))))));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), func_4(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), Struct_2(global3[_wgslsmith_index_u32(~(~1u), 10u)], -11364i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(global2.zz)), global2.zz, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))))).a.a.c, 1f);
    var var_2 = func_4(all(vec3<bool>(all(vec3<bool>(true, true, true)), false, false)), Struct_2(global3[_wgslsmith_index_u32(abs(global1.x), 10u)], _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(0i), -var_1), vec2<i32>(-41162i, ~(-27285i)))), vec2<f32>(326f, global2.x), 533f);
    return global3[_wgslsmith_index_u32((global1.x & ~(~(1u | var_2.a.a.b))) >> (var_2.a.a.b % 32u), 10u)];
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> vec2<i32> {
    var var_0 = 36188u;
    var_0 = max(global1.x >> (436u % 32u), 4294967295u << ((_wgslsmith_add_u32(abs(arg_0.x), arg_0.x << (global1.x % 32u)) | arg_0.x) % 32u));
    var var_1 = vec2<bool>(any(select(!vec4<bool>(false, false, false, arg_3), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, arg_1.e, arg_3, arg_1.e), vec4<bool>(true, true, arg_1.e, false), true), arg_1.e), !vec4<bool>(arg_1.e, arg_3, true, arg_3))), !(_wgslsmith_f_op_f32(f32(-1f) * -902f) > arg_1.a) == ((arg_1.e && !arg_1.e) || (false || all(vec2<bool>(false, false)))));
    var var_2 = Struct_3(Struct_2(global3[_wgslsmith_index_u32(arg_1.b, 10u)], countOneBits(select(arg_1.d.x, -27212i, false))));
    var var_3 = Struct_2(func_4(arg_3, func_2(select(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 57990i, 11374i, 1i), vec4<i32>(u_input.a, arg_1.d.x, u_input.a, u_input.a)), vec4<i32>(-10882i, 1i, var_2.a.b, var_2.a.b) | vec4<i32>(-50803i, var_2.a.b, u_input.a, var_2.a.b), all(vec3<bool>(false, false, false))), func_4(any(vec3<bool>(true, false, var_1.x)), Struct_2(Struct_1(-501f, global1.x, arg_1.c, vec2<i32>(u_input.a, -5430i), arg_1.e), u_input.a), global2.zx, 107f), vec4<bool>(var_1.x, arg_1.e, select(var_1.x, var_2.a.a.e, arg_3), true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, arg_1.a) - 578f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1743f)))), arg_2).a.a, _wgslsmith_mod_i32(-13475i, _wgslsmith_mod_i32(var_2.a.a.d.x, -select(var_2.a.b, 2147483647i, var_2.a.a.e))));
    return var_3.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(~func_6(~vec2<u32>(0u, 0u), func_1(vec2<f32>(global2.x, global2.x)), func_1(vec2<f32>(899f, global2.x)).a, u_input.a == -1i), func_2(~vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a) & vec4<i32>(u_input.a, u_input.a, -54081i, 1i), func_4(true, func_2(vec4<i32>(5411i, -1i, -2147483647i, u_input.a), Struct_3(Struct_2(Struct_1(global2.x, global1.x, -843f, vec2<i32>(u_input.a, -41602i), true), -1i)), vec4<bool>(true, false, false, true)), _wgslsmith_f_op_vec2_f32(global2.zy * global2.yx), -1533f), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), 385f > global2.x)).a.d), select(vec4<u32>(global1.x, 1u, global1.x, ~8465u), vec4<u32>(_wgslsmith_sub_u32(func_4(false, Struct_2(global3[_wgslsmith_index_u32(global1.x, 10u)], u_input.a), global2.zy, -342f).a.a.b, global1.x), global1.x, abs(abs(4294967295u)), ~_wgslsmith_div_u32(global1.x, global1.x)), true), firstLeadingBit(vec3<u32>(global1.x, firstLeadingBit(0u), 0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) * vec3<f32>(global2.x, global2.x, global2.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-722f - global2.x), -935f))), ~(~_wgslsmith_add_vec2_i32(vec2<i32>(1i, -52054i) >> (vec2<u32>(global1.x, 53806u) % vec2<u32>(32u)), func_4(false, Struct_2(Struct_1(-922f, global1.x, global2.x, vec2<i32>(1717i, u_input.a), true), -15807i), vec2<f32>(global2.x, global2.x), -856f).a.a.d)));
}

