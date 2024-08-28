struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: f32 = -516f;

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(false, Struct_1(vec3<bool>(true, false, false), 9993i, 22986u, 0u, false), 0u), Struct_2(true, Struct_1(vec3<bool>(true, false, false), 2147483647i, 72033u, 46223u, false), 0u), Struct_2(false, Struct_1(vec3<bool>(false, true, true), 2147483647i, 642u, 0u, true), 4294967295u), Struct_2(false, Struct_1(vec3<bool>(true, true, true), -18591i, 48977u, 0u, true), 58580u), Struct_2(false, Struct_1(vec3<bool>(false, false, false), 46242i, 1u, 23338u, true), 4294967295u), Struct_2(false, Struct_1(vec3<bool>(false, false, false), i32(-2147483648), 1u, 1u, false), 40920u), Struct_2(true, Struct_1(vec3<bool>(false, false, false), 0i, 30976u, 26238u, false), 59289u));

var<private> global3: vec4<i32> = vec4<i32>(2710i, i32(-2147483648), -1i, 59511i);

var<private> global4: array<vec4<i32>, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_2, arg_3: vec3<bool>) -> f32 {
    global2 = array<Struct_2, 7>();
    global1 = arg_0.x;
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 7u)];
    var var_1 = global2[_wgslsmith_index_u32(194u, 7u)];
    var var_2 = arg_2.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -516f), arg_0.x)) + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-104f * _wgslsmith_f_op_f32(abs(arg_0.x)))))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1152f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1008f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(786f + 2084f) * -584f), all(global0.zz))), 446f, _wgslsmith_f_op_f32(-246f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(468f, -908f, -217f, 1518f), 96004u, Struct_2(true, Struct_1(vec3<bool>(true, false, true), 2147483647i, 1u, 84116u, global0.x), 39215u), vec3<bool>(true, global0.x, false))) * _wgslsmith_f_op_f32(f32(-1f) * -158f))))));
    var var_1 = Struct_1(select(!select(vec3<bool>(true, global0.x, arg_0), !vec3<bool>(true, global0.x, global0.x), false), !vec3<bool>(global0.x, true, true), !(!select(vec3<bool>(true, global0.x, arg_0), vec3<bool>(true, global0.x, arg_0), vec3<bool>(arg_0, global0.x, false)))), 39893i, 1u, ~(~0u), true);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1687f, -1116f, 162f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 705f, var_0.x, var_0.x))))));
    global0 = !select(vec3<bool>(true, true, all(global0.xy)), var_1.a, true);
    var var_2 = _wgslsmith_add_i32(var_1.b, _wgslsmith_sub_i32(~31799i, abs(_wgslsmith_div_i32(global3.x & -2147483647i, firstLeadingBit(2147483647i)))));
    return Struct_1(!select(var_1.a, select(!var_1.a, select(vec3<bool>(true, false, false), vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, true, true)), true), true), ~(~max(~u_input.a, reverseBits(var_1.b))), ~99851u >> (~var_1.d % 32u), var_1.d, true);
}

fn func_1() -> u32 {
    global2 = array<Struct_2, 7>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(245f)));
    var var_1 = func_2(true != global0.x);
    var var_2 = reverseBits(~(vec3<u32>(var_1.d, 4294967295u, _wgslsmith_clamp_u32(5474u, var_1.d, 0u)) << (min(min(vec3<u32>(var_1.d, var_1.d, 33953u), vec3<u32>(var_1.d, 52975u, var_1.d)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.d, var_1.c, 7891u), vec3<u32>(var_1.c, var_1.c, var_1.c), vec3<u32>(var_1.c, var_1.d, var_1.c))) % vec3<u32>(32u))));
    let var_3 = global2[_wgslsmith_index_u32(~func_2(true | var_1.e).c, 7u)];
    return abs(~(~_wgslsmith_mod_u32(var_2.x, var_3.b.d))) | ~var_1.d;
}

fn func_4(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = Struct_2(!(!global0.x), func_2(false), _wgslsmith_clamp_u32(arg_0, func_1() << (_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0, arg_0), vec2<u32>(81210u, 4294967295u), global0.x), vec2<u32>(179379u, arg_0) >> (vec2<u32>(arg_0, 81918u) % vec2<u32>(32u))) % 32u), ~_wgslsmith_add_u32(~43045u, 1u)));
    var var_1 = (711f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-731f))))) & !(!global0.x);
    let var_2 = arg_0;
    let var_3 = Struct_2(all(func_2(any(vec3<bool>(global0.x, true, false))).a.yz) & false, Struct_1(var_0.b.a, 0i, ~var_0.c, 4294967295u, !(!all(var_0.b.a.xz))), var_0.c);
    let var_4 = Struct_2(all(!(!var_3.b.a)) & all(!global0.xz), Struct_1(vec3<bool>(true, var_3.a, var_0.a || global0.x), (i32(-1i) * -arg_1) ^ 0i, 66497u, arg_0, false), ~(_wgslsmith_add_u32(0u, var_3.c) ^ (1u << (1u % 32u))));
    return _wgslsmith_f_op_f32(abs(-352f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(func_1(), u_input.a)), 365f));
    let var_0 = global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(1u, 4294967295u)), vec2<u32>(0u, 68484u)) >> (~_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(18434u, 1093u)) % 32u)), 7u)];
    var var_1 = 2147483647i;
    let var_2 = Struct_1(var_0.b.a, -var_0.b.b, ~var_0.b.d, ~1u, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(892f, 1390f, -1000f, -832f))), 1u, global2[_wgslsmith_index_u32(~var_0.c >> (~90373u % 32u), 7u)], vec3<bool>(var_0.b.a.x || global0.x, true, true))) > 643f);
    let var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-24760i, -_wgslsmith_mult_i32(-51742i, reverseBits(u_input.a))), 17179i, var_2.d);
}

