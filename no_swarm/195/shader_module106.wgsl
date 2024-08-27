struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec2<i32>(2147483647i, -1i), vec4<f32>(-1579f, -1239f, 175f, 504f));

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 22>;

var<private> global3: bool;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec4<f32> {
    global2 = array<vec3<u32>, 22>();
    let var_0 = ~1u;
    var var_1 = var_0 ^ ~abs(~select(21371u, var_0, true));
    let var_2 = vec2<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(699f, 705f)))), -569f)));
    global3 = all(vec4<bool>(!any(!vec2<bool>(false, global1.a)), false, arg_1.a, true));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1192f, 239f, -125f, 1499f), vec4<f32>(global0.c.x, 1645f, global1.c.x, global0.c.x), false)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1857f, global1.c.x, 284f, arg_1.c.x), global0.c)))))) + vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.c.x + arg_3.c.x))), arg_1.c.x, -317f)) * _wgslsmith_f_op_vec4_f32(min(arg_3.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, 198f, -1888f, -859f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(494f, -251f, 772f, 776f))))))));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = Struct_1((-1000f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1635f * global1.c.x)))) || true, -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, global1.b.x), _wgslsmith_div_vec2_i32(global0.b, min(global1.b, vec2<i32>(global0.b.x, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, global1.c.x, global1.c.x, -254f)), _wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(global0.b.x, global1.b.x), Struct_1(global0.a, vec2<i32>(-36783i, u_input.a.x), global0.c), _wgslsmith_mod_vec2_i32(u_input.a.yx, global0.b), Struct_1(true, vec2<i32>(-2147483647i, u_input.a.x), vec4<f32>(global1.c.x, global1.c.x, 965f, global1.c.x)))))));
    let var_1 = var_0.c.x;
    let var_2 = abs(vec2<u32>(~arg_0 << (~6979u % 32u), arg_0 << (94243u % 32u)) | _wgslsmith_mult_vec2_u32((vec2<u32>(arg_0, 0u) & vec2<u32>(4294967295u, arg_0)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(4294967295u, 14666u), vec2<u32>(4294967295u, arg_0)), abs(~vec2<u32>(arg_0, arg_0))));
    global0 = Struct_1(global0.a, -(~var_0.b), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.c.x)), global1.c.x, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -664f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-501f, var_0.c.x, global0.c.x, global0.c.x), var_0.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global1.c)) + vec4<f32>(-1585f, -295f, -327f, -1077f))))));
    var_0 = Struct_1(all(select(!(!vec3<bool>(false, var_0.a, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec4<bool>(true, true, global1.a, var_0.a))), !(global0.a || false))), ~_wgslsmith_mod_vec2_i32(-select(global0.b, vec2<i32>(u_input.a.x, 2147483647i), vec2<bool>(global0.a, false)), reverseBits(~global1.b)), _wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(-global0.c)));
    return global1.c.x;
}

fn func_1(arg_0: vec2<i32>) -> vec3<f32> {
    global1 = Struct_1(global0.a, arg_0, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(0u)))), global1.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(0u)), _wgslsmith_f_op_vec4_f32(func_3(arg_0, Struct_1(global0.a, global0.b, global1.c), vec2<i32>(-2147483647i, global0.b.x), Struct_1(true, vec2<i32>(global0.b.x, -14018i), global1.c))).x)), global0.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.c, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.c.x, global1.c.x, 1232f, -148f)))))));
    let var_0 = ~global1.b;
    global1 = Struct_1(!(!(!global0.a)), global0.b, _wgslsmith_div_vec4_f32(vec4<f32>(340f, _wgslsmith_f_op_f32(f32(-1f) * -738f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c.x)) - global0.c.x), -1000f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1.c), _wgslsmith_f_op_vec4_f32(-global0.c), vec4<bool>(any(vec3<bool>(true, global1.a, global1.a)), global1.a, true, true)))));
    let var_1 = -507f;
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global0.b.x, -1i, global1.b.x, global1.b.x)), vec4<i32>(_wgslsmith_add_i32(arg_0.x, arg_0.x), -23796i, select(26690i, 54404i, true), -29601i)) > u_input.a.x, min(-global1.b, -(~(vec2<i32>(-22966i, global1.b.x) ^ vec2<i32>(var_0.x, arg_0.x)))), global1.c);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-311f, -983f, var_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, global1.c.x, global1.c.x))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global1.c.x, 679f)), _wgslsmith_div_vec3_f32(vec3<f32>(109f, -230f, var_1), global1.c.yzx))), _wgslsmith_f_op_vec3_f32(-var_2.c.wyy))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(any(select(select(select(vec3<bool>(global0.a, true, global1.a), vec3<bool>(true, global1.a, global0.a), global1.a), select(vec3<bool>(global1.a, false, global0.a), vec3<bool>(false, false, false), true), select(vec3<bool>(global0.a, global1.a, global0.a), vec3<bool>(global0.a, true, false), global0.a)), vec3<bool>(true, true, false), true)), ~u_input.a.yx, global0.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_1(var_0.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, 1937f, global0.c.x) * vec3<f32>(-460f, 838f, global1.c.x))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.c.www)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -490f, var_0.c.x) + global0.c.wyy)))));
    let var_2 = global1.b.x;
    var var_3 = global0.a;
    global3 = select(global1.a, true, var_0.a);
    var var_4 = var_0;
    let var_5 = Struct_1(select(false, all(select(vec2<bool>(var_4.a, var_4.a), select(vec2<bool>(global1.a, var_0.a), vec2<bool>(global0.a, false), true), select(vec2<bool>(false, false), vec2<bool>(global0.a, true), true))), false | !all(vec3<bool>(true, global0.a, true))), firstTrailingBit(-select(global0.b, vec2<i32>(var_4.b.x, u_input.a.x), vec2<bool>(true, var_0.a)) ^ var_4.b), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 348f, 1000f, var_4.c.x)))))));
    var var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-817f, var_5.c.x))), _wgslsmith_f_op_f32(func_2(258u)), _wgslsmith_div_vec3_u32(abs(reverseBits(vec3<u32>(4294967295u, 0u, 4294967295u)) & ~global2[_wgslsmith_index_u32(2201u, 22u)]), ~reverseBits(~global2[_wgslsmith_index_u32(4294967295u, 22u)])));
}

