struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 16>;

var<private> global3: Struct_1 = Struct_1(false, 0i, vec3<u32>(59140u, 9526u, 50605u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global3 = arg_3;
    global0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), !(!vec2<bool>(global0.x, global0.x))));
    global2 = array<vec4<bool>, 16>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-625f, 2154f, -1015f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1412f * 1000f) - _wgslsmith_f_op_f32(max(-1432f, 1209f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f) + _wgslsmith_f_op_f32(sign(287f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - 405f)))))), !select(vec3<bool>(any(vec3<bool>(true, false, arg_2.a)), !global0.x, true), vec3<bool>(true | arg_2.a, false, true), true)));
    global0 = !select(select(vec2<bool>(false, all(global2[_wgslsmith_index_u32(1u, 16u)])), !(!vec2<bool>(global0.x, false)), false), select(!(!vec2<bool>(global0.x, false)), !select(vec2<bool>(true, true), vec2<bool>(arg_2.a, true), vec2<bool>(true, false)), true), all(!select(vec3<bool>(global1.a, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global1.a, arg_3.a, true))));
    return !select(!vec2<bool>(all(vec2<bool>(arg_2.a, false)), global0.x), !vec2<bool>(true, all(vec2<bool>(global1.a, true))), global3.a);
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = global3.c.x;
    var var_1 = ~(~(~u_input.a)) & max(countOneBits(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global3.c.x, 19589u, 4294967295u, u_input.b.x), u_input.a), u_input.a)), vec4<u32>(1u, _wgslsmith_div_u32(4294967295u, global1.c.x), 18898u, ~u_input.b.x));
    global0 = select(select(select(!select(vec2<bool>(global1.a, true), vec2<bool>(global1.a, true), vec2<bool>(true, false)), select(select(vec2<bool>(global3.a, false), vec2<bool>(true, global3.a), vec2<bool>(true, global1.a)), vec2<bool>(true, false), vec2<bool>(false, true)), true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, global0.x), vec2<bool>(global3.a, true)), select(!vec2<bool>(global3.a, false), select(vec2<bool>(false, global1.a), vec2<bool>(true, global3.a), global3.a), true), true)), select(!(!(!vec2<bool>(global0.x, global3.a))), !func_3(~40861u, global1.b, Struct_1(global3.a, 26880i, vec3<u32>(global3.c.x, 0u, 53563u)), Struct_1(true, -15279i, var_1.yzy)), true), !select(!(!vec2<bool>(global0.x, global1.a)), !select(vec2<bool>(global1.a, global3.a), vec2<bool>(false, true), vec2<bool>(true, global3.a)), select(global3.b <= global1.b, true, global1.a)));
    let var_2 = Struct_1(global0.x, arg_0.x, countOneBits(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~var_1.zwz, global1.c ^ vec3<u32>(4294967295u, u_input.b.x, 4294967295u)), firstLeadingBit(~vec3<u32>(31567u, var_1.x, global1.c.x)))));
    var var_3 = !(true | func_3(0u, ~firstTrailingBit(u_input.c), var_2, var_2).x);
    return var_2;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x | global1.c.x, arg_2.c.x, ~global1.c.x, abs(0u)), firstLeadingBit(~u_input.a & vec4<u32>(global3.c.x, global3.c.x, _wgslsmith_mult_u32(0u, arg_0.x), ~56290u)));
    global0 = func_3(30929u, i32(-1i) * -global3.b, arg_2, Struct_1(-1000f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1127f))), _wgslsmith_dot_vec2_i32(min(vec2<i32>(-1i, 0i), vec2<i32>(global3.b, arg_1)) | countOneBits(vec2<i32>(arg_1, 1i)), vec2<i32>(~1i, firstTrailingBit(-61163i))), _wgslsmith_clamp_vec3_u32(arg_2.c, vec3<u32>(u_input.b.x, 21566u, ~var_0), select(vec3<u32>(global3.c.x, arg_0.x, var_0), arg_2.c, !arg_2.a))));
    let var_1 = -max(abs(vec3<i32>(-2147483647i, 2147483647i, -31276i) | vec3<i32>(4907i, -7630i, arg_2.b)) ^ ~firstTrailingBit(vec3<i32>(global1.b, -1i, arg_2.b)), min(abs(vec3<i32>(-21683i, 0i, u_input.c) << (vec3<u32>(18445u, global3.c.x, 15199u) % vec3<u32>(32u))), select(~vec3<i32>(-9193i, global3.b, 59978i), max(vec3<i32>(u_input.c, -1i, 6121i), vec3<i32>(2147483647i, arg_2.b, 1i)), select(vec3<bool>(false, false, global0.x), vec3<bool>(true, global0.x, global1.a), vec3<bool>(true, global3.a, true)))));
    let var_2 = -(~_wgslsmith_sub_i32(firstLeadingBit(~(-1i)), arg_2.b));
    var var_3 = _wgslsmith_mod_vec2_i32(select(-(~var_1.zx), vec2<i32>(0i, -15571i), !select(vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(global3.a, global1.a), vec2<bool>(arg_2.a, arg_2.a))), _wgslsmith_clamp_vec2_i32(var_1.xz, var_1.yx, vec2<i32>(~0i, u_input.c))) << (~(~(~_wgslsmith_mod_vec2_u32(u_input.b.xy, vec2<u32>(global3.c.x, 0u)))) % vec2<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -846f) * _wgslsmith_f_op_f32(f32(-1f) * -688f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-354f + -136f) + _wgslsmith_f_op_f32(trunc(1067f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-583f)), _wgslsmith_f_op_f32(sign(216f))))) * vec3<f32>(425f, _wgslsmith_div_f32(1798f, _wgslsmith_f_op_f32(max(-740f, 812f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1984f)) + _wgslsmith_f_op_f32(sign(-425f))))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(global3.c.x, 1u), _wgslsmith_mod_i32(2692i, i32(-1i) * -58786i), func_2(~vec3<i32>(global3.b, u_input.c, 0i)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-387f, 1000f, 687f))))))), vec3<f32>(-535f, -601f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -444f)))));
    let var_1 = vec2<i32>(-10054i, ~abs(1i)) | (firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 0i)) << (~(~_wgslsmith_sub_vec2_u32(global1.c.xz, vec2<u32>(global3.c.x, 4294967295u))) % vec2<u32>(32u)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -934f, 252f) - vec3<f32>(var_0.x, var_0.x, var_0.x)) - vec3<f32>(-1273f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2479f, 1000f, -172f)))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))))));
    let var_2 = Struct_1(true, var_1.x, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, u_input.a), ~vec4<u32>(68255u, 0u, 56506u, u_input.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, global3.c.x, global3.c.x, global1.c.x), u_input.a), u_input.b.x), _wgslsmith_mult_vec3_u32(global3.c ^ u_input.a.ywx, u_input.a.xxy) << (vec3<u32>(func_2(vec3<i32>(global3.b, -51606i, global3.b)).c.x, min(8201u, 0u), 18827u) % vec3<u32>(32u))));
    var var_3 = func_2(~_wgslsmith_clamp_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.b, -2147483647i, global3.b), vec3<i32>(global1.b, -9834i, var_1.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(-49553i, 48862i, var_1.x), vec3<i32>(var_2.b, u_input.c, -13497i)) >> (var_2.c % vec3<u32>(32u)), vec3<i32>(var_2.b, firstLeadingBit(global1.b), _wgslsmith_sub_i32(u_input.c, 1i))));
    return Struct_1(var_3.a, ~11203i, vec3<u32>(global1.c.x, ~countOneBits(4294967295u), func_2(vec3<i32>(i32(-1i) * -28112i, 2147483647i, 0i)).c.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    let var_0 = vec3<bool>(arg_0.a, true, all(vec2<bool>(global1.a, false)));
    let var_1 = 28586u;
    let var_2 = countOneBits(_wgslsmith_clamp_vec4_i32(~(-(~vec4<i32>(-1i, global3.b, global1.b, arg_0.b))), _wgslsmith_add_vec4_i32(~(~vec4<i32>(u_input.c, 0i, 1i, global1.b)), ~vec4<i32>(-2147483647i, u_input.c, global3.b, 0i) ^ -vec4<i32>(u_input.c, -13888i, -1i, -2147483647i)), abs(~(-vec4<i32>(global1.b, 0i, global3.b, arg_0.b)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(var_1, global3.c.x), 0i, arg_0)).xy))))), vec2<f32>(-197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(949f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_0.xy));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_3.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_3.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-301f - 1072f) - _wgslsmith_f_op_f32(sign(var_3.x))), _wgslsmith_f_op_f32(max(-492f, var_3.x))));
    return max(~min(~_wgslsmith_div_u32(global1.c.x, u_input.b.x), arg_1.x), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec2<u32>(func_5(func_1(), select(~vec3<u32>(9382u, u_input.b.x, 16210u), func_1().c, !vec3<bool>(global1.a, global3.a, true))), global1.c.x), ~vec2<u32>(func_2(vec3<i32>(u_input.c, -1i, global3.b)).c.x, 47926u));
    global3 = func_1();
    let var_1 = !(!(!vec2<bool>(global1.a, global3.a)));
    var var_2 = vec2<u32>(global1.c.x, 1u >> ((firstLeadingBit(abs(global1.c.x)) ^ ~var_0.x) % 32u));
    var var_3 = func_1();
    var var_4 = Struct_1(false, countOneBits(abs(_wgslsmith_add_i32(global3.b, -global3.b))), ~vec3<u32>(~_wgslsmith_dot_vec2_u32(global1.c.xz, global1.c.yx), reverseBits(~var_2.x), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_0.x & 8420u, 4294967295u), ~vec4<i32>(~(var_4.b & 2147483647i), (global1.b & 2147483647i) >> (~1u % 32u), var_4.b, global1.b >> (~2245u % 32u)), ~_wgslsmith_add_vec2_u32(u_input.a.wz, _wgslsmith_clamp_vec2_u32(var_4.c.xx, global1.c.yy, vec2<u32>(var_0.x, var_4.c.x)) ^ _wgslsmith_mod_vec2_u32(u_input.b.yz, vec2<u32>(62372u, var_3.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(852f, 412f, -499f, -487f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1760f, 1234f, 1142f, 2112f))))))));
}

