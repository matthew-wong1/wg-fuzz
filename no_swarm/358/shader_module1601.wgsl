struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12>;

var<private> global1: vec2<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: u32) -> bool {
    return all(vec3<bool>(true, false, false)) | false;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    var var_0 = -global0[_wgslsmith_index_u32(~0u, 12u)];
    let var_1 = all(vec3<bool>(!func_2(0u), true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var_0 = ~(-firstTrailingBit(global0[_wgslsmith_index_u32(10503u, 12u)]));
    let var_2 = vec2<i32>(1i, abs(min(-3457i, 11360i)));
    let var_3 = countOneBits(global0[_wgslsmith_index_u32(8625u, 12u)]);
    return ~(global1.x >> (~(~_wgslsmith_dot_vec2_u32(arg_2.yy, vec2<u32>(4294967295u, 83674u))) % 32u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> f32 {
    let var_0 = Struct_2(select(vec2<bool>(all(!arg_0.a), all(vec3<bool>(true, arg_2, arg_0.b)) | arg_0.b), select(arg_0.a, select(!arg_1.a, vec2<bool>(true, true), all(vec4<bool>(arg_0.b, arg_2, arg_0.a.x, arg_2))), true), all(select(vec4<bool>(true, arg_2, true, false), select(vec4<bool>(true, true, arg_2, false), vec4<bool>(false, arg_1.b, arg_0.a.x, false), arg_2), true))), arg_1.a.x, -24569i);
    let var_1 = _wgslsmith_dot_vec4_u32(~(~(~max(vec4<u32>(32287u, 4294967295u, 12444u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u)))), select(select(vec4<u32>(4294967295u, u_input.c.x, 52299u, u_input.c.x) | vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x), ~(~vec4<u32>(u_input.c.x, 54832u, u_input.c.x, 1u)), arg_1.b), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, 0u) ^ vec4<u32>(2702u, 49870u, 0u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, 10291u, u_input.c.x)), select(!vec4<bool>(true, var_0.b, arg_2, arg_2), vec4<bool>(arg_2, true, all(vec2<bool>(arg_2, true)), !arg_2), select(select(vec4<bool>(arg_2, true, arg_1.a.x, var_0.b), vec4<bool>(false, true, false, false), vec4<bool>(arg_0.a.x, true, true, arg_2)), select(vec4<bool>(arg_0.b, arg_1.a.x, arg_0.a.x, false), vec4<bool>(true, false, false, arg_1.b), arg_0.b), true))));
    let var_2 = vec3<bool>(false, false, false);
    global1 = select(vec2<i32>(~(-1i), ~var_0.c) & (-(vec2<i32>(2147483647i, 1i) << (vec2<u32>(var_1, 1u) % vec2<u32>(32u))) & (vec2<i32>(-1i) * -vec2<i32>(u_input.b, -1i))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-16165i, -1i, 2147483647i), global0[_wgslsmith_index_u32(4294967295u, 12u)]), ~1i), global1.x), abs(-vec2<i32>(1i, 1i))), var_2.zx);
    let var_3 = abs(max(vec4<u32>((u_input.c.x & u_input.c.x) ^ min(u_input.c.x, u_input.c.x), min(_wgslsmith_dot_vec2_u32(vec2<u32>(34475u, u_input.c.x), u_input.c.xx), 6220u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 12764u, var_1) ^ vec3<u32>(1u, 61186u, var_1), u_input.c), ~83637u), _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(1u, 0u, 4294967295u, u_input.c.x)), (vec4<u32>(0u, u_input.c.x, 21830u, var_1) >> (vec4<u32>(u_input.c.x, u_input.c.x, var_1, u_input.c.x) % vec4<u32>(32u))) >> (~vec4<u32>(4294967295u, var_1, 4294967295u, 1353u) % vec4<u32>(32u)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -802f);
}

fn func_4(arg_0: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-676f - 211f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 728f))) + _wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(true, true), true, global1.x), Struct_2(!vec2<bool>(false, arg_0), !arg_0, global1.x), arg_0 && arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), vec2<bool>(false, true)), all(vec2<bool>(true, arg_0)), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 0i, global1.x, u_input.b), vec4<i32>(global1.x, 1i, 1i, 0i))), Struct_2(!vec2<bool>(false, arg_0), any(vec3<bool>(true, arg_0, false)), -2147483647i), arg_0)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -422f))))));
    var var_1 = Struct_2(!(!(!(!vec2<bool>(arg_0, true)))), true, _wgslsmith_mult_i32(27151i, u_input.a));
    var var_2 = u_input.c.x;
    var var_3 = true && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(min(var_0, var_0))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1213f)));
    var_1 = Struct_2(select(vec2<bool>(!arg_0, true), select(select(vec2<bool>(arg_0, arg_0), !var_1.a, select(var_1.a, vec2<bool>(false, var_1.b), vec2<bool>(var_1.b, true))), select(!vec2<bool>(var_1.b, arg_0), select(var_1.a, vec2<bool>(arg_0, true), arg_0), !var_1.a), vec2<bool>(true & var_1.b, any(vec4<bool>(true, false, var_1.b, var_1.b)))), true), all(!select(vec2<bool>(true, true), select(vec2<bool>(var_1.b, true), var_1.a, vec2<bool>(false, false)), var_1.b)), ~select(1i, abs(var_1.c), false));
    return ~(-2147483647i) >> (~(~((u_input.c.x | 0u) ^ u_input.c.x)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(-_wgslsmith_div_vec2_i32(~vec2<i32>(25231i, -1i), vec2<i32>(global1.x, global1.x)), vec2<i32>(-(~0i), _wgslsmith_dot_vec4_i32(vec4<i32>(-52957i, global1.x, 20715i, global1.x), vec4<i32>(u_input.b, global1.x, global1.x, u_input.a)))), vec2<i32>(2147483647i, func_1(~select(u_input.c.x, u_input.c.x, false), Struct_1(46834u, _wgslsmith_div_vec3_f32(vec3<f32>(-811f, -1617f, 382f), vec3<f32>(-981f, -126f, -643f))), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u) | ~vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x))));
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1220f)) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(false, false), false, u_input.a), Struct_2(vec2<bool>(true, false), false, -21596i), false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1238f - 243f))))));
    let var_1 = Struct_1(u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(540f, 1226f, -1156f) * vec3<f32>(1000f, 776f, -1149f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(770f, -1000f, -868f))), true)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1183f, -1113f, -243f))))))));
    var var_2 = any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), var_0 > -1i), vec2<bool>(true, any(vec3<bool>(false, false, true))))));
    var var_3 = var_1;
    global1 = vec2<i32>(var_0 << (var_3.a % 32u), 32753i);
    let var_4 = _wgslsmith_div_i32(global1.x, u_input.a);
    var var_5 = ~0i;
    var var_6 = Struct_2(vec2<bool>(true, 382f <= _wgslsmith_f_op_f32(-130f + _wgslsmith_f_op_f32(var_3.b.x - var_1.b.x))), any(select(vec4<bool>(false, true, func_2(1u), true), vec4<bool>(false, true, true, 2147483647i == var_0), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false)))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, ~1i), vec2<i32>(-1i) * -vec2<i32>(-1i, var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(~(firstLeadingBit(abs(60090u)) ^ _wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, u_input.c))), var_3.b.xy, vec4<f32>(-1077f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(-var_3.b.x))), var_3.b.x, -719f), -1305f);
}

