struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<u32, 5>;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_2)))) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f)), -2510f, select(_wgslsmith_f_op_f32(1000f + arg_2) >= _wgslsmith_f_op_f32(520f + 529f), false, true)));
    let var_1 = Struct_2(76329u);
    var var_2 = Struct_2(countOneBits(~max(global0.x, countOneBits(arg_0.a.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, _wgslsmith_div_f32(arg_2, -744f), 1127f) - _wgslsmith_f_op_vec3_f32(select(arg_1, _wgslsmith_f_op_vec3_f32(trunc(arg_1)), select(false, true, true))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1768f) * _wgslsmith_div_f32(arg_2, arg_2)), _wgslsmith_f_op_f32(-arg_2)) * _wgslsmith_f_op_vec3_f32(arg_1 - arg_1)));
    global0 = min(~u_input.a, vec2<u32>(_wgslsmith_sub_u32(4294967295u, global0.x), 1u)) & vec2<u32>(abs(~1u), _wgslsmith_div_u32(var_2.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]));
    return reverseBits(firstTrailingBit(select(3318u, 0u, false)));
}

fn func_2() -> f32 {
    let var_0 = global2.a;
    global2 = Struct_2(~global2.a);
    global1 = array<u32, 5>();
    global2 = Struct_2(func_3(Struct_1(~vec2<u32>(global1[_wgslsmith_index_u32(global2.a, 5u)], global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), 968f));
    var var_1 = Struct_2(0u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -675f))) - -1015f)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1868f + -217f), _wgslsmith_f_op_f32(f32(-1f) * -1926f))), _wgslsmith_f_op_f32(min(-1047f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(func_2())))), -163f));
    global0 = ~_wgslsmith_add_vec2_u32(u_input.a, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(0u, global1[_wgslsmith_index_u32(0u, 5u)], global2.a), global0.x), ~u_input.a));
    var var_1 = vec3<bool>(true, u_input.c != 1i, true);
    let var_2 = i32(-1i) * -18317i;
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(13528u, global1[_wgslsmith_index_u32(15842u, 5u)], u_input.a.x, global2.a), vec4<u32>(16096u, u_input.a.x, 12856u, 0u)), 5u)], reverseBits(~global2.a)), ~select(~max(u_input.a, u_input.a), u_input.a << (vec2<u32>(60141u, 4294967295u) % vec2<u32>(32u)), vec2<bool>(!var_1.x, false)));
    return Struct_2(0u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    var var_0 = true;
    global2 = Struct_2(_wgslsmith_mult_u32(72771u, _wgslsmith_add_u32(1u, 1u)));
    let var_1 = ~(~func_3(Struct_1(u_input.a), vec3<f32>(2230f, _wgslsmith_f_op_f32(step(-209f, 262f)), _wgslsmith_f_op_f32(-594f - 1152f)), _wgslsmith_div_f32(-864f, 585f)));
    var_0 = arg_2.a > arg_2.a;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1365f))));
    return ~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.c, u_input.c)), ~(-firstLeadingBit(vec2<i32>(u_input.b, u_input.c))));
}

fn func_5(arg_0: i32) -> vec4<f32> {
    var var_0 = Struct_1(min(~vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a.x), vec3<u32>(4294967295u, 30178u, global2.a))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40865u, 5u)], 5u)], 4294967295u), vec2<u32>(u_input.a.x, 9860u) << (vec2<u32>(4294967295u, global2.a) % vec2<u32>(32u)))));
    global2 = func_1(44767i);
    var var_1 = countOneBits(~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global2.a, global2.a) & vec3<u32>(56560u, 4294967295u, 1u), reverseBits(vec3<u32>(5262u, global0.x, 0u))), vec3<u32>(_wgslsmith_div_u32(1u, u_input.a.x), select(13620u, global1[_wgslsmith_index_u32(1u, 5u)], true), ~58276u), vec3<u32>(firstTrailingBit(global1[_wgslsmith_index_u32(30836u, 5u)]), u_input.a.x << (global1[_wgslsmith_index_u32(0u, 5u)] % 32u), ~0u)));
    var_1 = _wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, 33333u, global1[_wgslsmith_index_u32(var_1.x, 5u)]) >> (vec3<u32>(4294967295u, global0.x, var_1.x) % vec3<u32>(32u))) << (~vec3<u32>(var_0.a.x, 1u, var_0.a.x) % vec3<u32>(32u)), vec3<u32>(~52366u << ((global2.a << (global2.a % 32u)) % 32u), 23717u, 3216u)) | ~firstLeadingBit(vec3<u32>(3165u, 1u, 30178u));
    var var_2 = vec4<i32>(i32(-1i) * -(~arg_0), _wgslsmith_mult_i32(arg_0, arg_0), arg_0, 1i);
    return vec4<f32>(_wgslsmith_f_op_f32(round(-767f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -870f), 187f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-105f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1771f + 1647f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f - 981f)))), 1273f);
}

fn func_6(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = u_input.a;
    var_0 = ~(~select(countOneBits(arg_2.a), abs(arg_2.a), true)) | arg_2.a;
    var var_1 = Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, global2.a, ~global0.x), ~vec3<u32>(0u, 1u, 23124u)), ~reverseBits(4294967295u & u_input.a.x)));
    var_1 = func_1(u_input.b);
    global1 = array<u32, 5>();
    return Struct_1(vec2<u32>(_wgslsmith_mult_u32(~global2.a, 103341u), global2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 5>();
    var var_0 = true;
    var var_1 = func_6(~_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, u_input.b) >> (~u_input.a % vec2<u32>(32u)), vec2<i32>(_wgslsmith_sub_i32(-20742i, u_input.c), u_input.b)), _wgslsmith_f_op_vec4_f32(func_5(func_4(Struct_2(4294967295u), Struct_1(u_input.a), Struct_2(0u), func_1(u_input.b)))), Struct_1(u_input.a));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(417f, -736f)), -2210f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2())))) + -1356f), _wgslsmith_f_op_f32(round(630f))));
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_div_i32(select(-29065i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.b, u_input.c, u_input.c), vec4<i32>(u_input.b, -2147483647i, 27786i, u_input.c)), _wgslsmith_f_op_f32(trunc(971f)) < _wgslsmith_f_op_f32(f32(-1f) * -999f)), i32(-1i) * -32667i), ~(~((-16318i ^ u_input.b) | min(u_input.c, 1i))));
    let var_4 = vec3<bool>(true, true | !any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true)), func_3(Struct_1(vec2<u32>(var_1.a.x, global2.a)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(122f, -275f, -494f))))), -1000f) > _wgslsmith_div_u32(reverseBits(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 5u)], u_input.a.x, 0u)), min(_wgslsmith_add_u32(var_1.a.x, 1u), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec4_f32(func_5(~2147483647i & var_3)).wy, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-806f, 509f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-972f, 1779f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(355f, -953f), vec2<f32>(1000f, 1000f))) + vec2<f32>(189f, 420f)))), vec2<bool>(any(var_4), any(vec4<bool>(var_4.x, false, var_4.x, true)) | true))), 47976i, _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(17144i, var_3, -11324i, 0i), select(vec4<i32>(1i, -25422i, var_3, var_3), vec4<i32>(u_input.b, 12554i, -2147483647i, -1i), vec4<bool>(var_4.x, true, false, var_4.x))), 1i, _wgslsmith_mult_i32(2147483647i, firstLeadingBit(var_3))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), abs(vec2<i32>(-28544i, var_3))), _wgslsmith_mult_i32(0i, 1919i), -8559i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1252f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1224f - 2342f)))));
}

