struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: u32,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<Struct_5, 8>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> Struct_5 {
    global1 = array<Struct_5, 8>();
    var var_0 = arg_1;
    return Struct_5(arg_0.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~abs(u_input.b.x), select(1u, _wgslsmith_div_u32(u_input.a.x, 1u), !(!arg_0.x))), 25u)], firstLeadingBit(abs(countOneBits(u_input.c ^ u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1998f - 262f), _wgslsmith_f_op_f32(min(-188f, 1065f)))) - _wgslsmith_f_op_f32(trunc(-850f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(831f - _wgslsmith_f_op_f32(2266f - 1373f)) + 108f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(586f, 1381f)))) * vec2<f32>(_wgslsmith_f_op_f32(abs(224f)), -1359f))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: bool, arg_3: vec2<i32>) -> i32 {
    global1 = array<Struct_5, 8>();
    let var_0 = Struct_4(Struct_3(!arg_1.a.a, Struct_2(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(0u, arg_1.d.b.a.x), vec2<u32>(71827u, 1u), vec2<bool>(false, true)), ~arg_1.a.b.a, ~vec2<u32>(34363u, arg_0.x))), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(firstLeadingBit(4294967295u), arg_1.c)), 25u)], arg_1.d.d), arg_1.d, max(abs(arg_1.c) >> (u_input.b.x % 32u), u_input.b.x << (arg_0.x % 32u)), arg_1.d, ~(~36518u));
    var var_1 = -314f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1121f) + var_0.d.d);
    let var_3 = u_input.c;
    return _wgslsmith_sub_i32(~(-32212i), u_input.c);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: Struct_5) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1486f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.e.x - arg_3.d) * 1687f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.e.x), -269f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.d, arg_2.e.x, arg_3.e.x) - vec3<f32>(arg_2.e.x, arg_2.d, arg_3.d)), vec3<f32>(arg_3.d, -581f, arg_3.e.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.e.x, 893f, 3035f) - vec3<f32>(-586f, arg_3.e.x, 1199f)))))))));
    global0 = array<Struct_1, 25>();
    var var_1 = func_1(vec3<bool>(func_1(select(arg_0, arg_0, arg_2.a), arg_2.b.c.x).a, !any(!vec3<bool>(arg_0.x, false, arg_0.x)), false), func_3(reverseBits(~(vec4<u32>(26360u, u_input.b.x, 14607u, u_input.b.x) & vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 68751u))), Struct_4(Struct_3(arg_0, Struct_2(u_input.b), Struct_1(arg_2.b.a, arg_2.b.b, arg_2.b.c), _wgslsmith_div_f32(var_0.x, -877f)), Struct_3(select(arg_0, arg_0, true), Struct_2(u_input.b), arg_3.b, _wgslsmith_f_op_f32(step(arg_2.e.x, arg_2.d))), countOneBits(1u), Struct_3(vec3<bool>(arg_3.b.a, arg_2.b.a, arg_0.x), Struct_2(vec2<u32>(u_input.a.x, 1u)), arg_2.b, arg_3.e.x), u_input.a.x), arg_0.x, arg_2.b.c.xx));
    global1 = array<Struct_5, 8>();
    let var_2 = 2147483647i;
    return select(vec3<i32>(arg_3.c, -12386i, func_1(select(vec3<bool>(arg_2.b.a, arg_0.x, true), vec3<bool>(false, arg_0.x, false), vec3<bool>(false, arg_2.a, arg_0.x)), abs(~1i)).c), arg_2.b.b.wwz, all(select(!(!arg_0), select(arg_0, arg_0, var_1.a), !vec3<bool>(true, true, var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 8>();
    global0 = array<Struct_1, 25>();
    var var_0 = reverseBits(func_2(vec3<bool>(true, true, true), vec2<i32>(u_input.c, u_input.c) | vec2<i32>(-10687i, u_input.c), func_1(vec3<bool>(false, false, false), -18672i), Struct_5(true, Struct_1(false, vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i), vec3<i32>(u_input.c, u_input.c, u_input.c)), u_input.c, 1419f, vec2<f32>(148f, 584f))) >> (~vec3<u32>(101665u, 4570u, u_input.b.x) % vec3<u32>(32u))) | vec3<i32>(func_3(vec4<u32>(~1u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), 0u), Struct_4(Struct_3(vec3<bool>(true, false, true), Struct_2(vec2<u32>(4294967295u, u_input.a.x)), global0[_wgslsmith_index_u32(31572u, 25u)], -331f), Struct_3(vec3<bool>(false, true, true), Struct_2(u_input.a), global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 1903f), ~u_input.a.x, Struct_3(vec3<bool>(false, false, true), Struct_2(u_input.a), global0[_wgslsmith_index_u32(42495u, 25u)], 484f), ~1u), abs(u_input.c) <= -1i, -(~vec2<i32>(2846i, u_input.c))), u_input.c, firstTrailingBit(min(u_input.c, -26335i)));
    global1 = array<Struct_5, 8>();
    var var_1 = Struct_5(!(!any(vec4<bool>(true, true, false, false)) & true), func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), _wgslsmith_mod_i32(8725i, max(u_input.c << (u_input.a.x % 32u), _wgslsmith_sub_i32(u_input.c, 0i)))).b, 1i, 1289f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1809f, 282f) - vec2<f32>(-1000f, -469f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1112f, -133f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1289f, 779f) - vec2<f32>(-1024f, 1000f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-973f, -413f))))))));
    var var_2 = vec4<bool>(true, var_1.a, !select(all(vec4<bool>(false, false, var_1.b.a, var_1.b.a)) || true, true, false), false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(~vec4<i32>(11550i, var_0.x, 53460i, u_input.c))));
}

