struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(1i, -71506i, 43477i), vec2<f32>(520f, 769f), vec2<i32>(2147483647i, -19677i), vec4<bool>(false, true, true, true));

var<private> global1: array<u32, 7>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.b);
    return -_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(1i, arg_0.c.x), global0.c.x), min(global0.a.xx, arg_0.a.yx)), -min(global0.c, reverseBits(arg_0.a.xy)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global0 = Struct_1(~(-_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(0i, global0.c.x, 1i)), ~arg_0.a, vec3<i32>(arg_1.c.x, 1i, -2147483647i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0.b, global0.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.b, arg_0.b, global0.d.x)))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1058f * -1648f))), _wgslsmith_f_op_f32(-arg_0.b.x))), abs(~_wgslsmith_clamp_vec2_i32(func_3(Struct_1(vec3<i32>(global0.c.x, 0i, 2147483647i), vec2<f32>(arg_1.b.x, arg_1.b.x), vec2<i32>(global0.c.x, 38410i), vec4<bool>(false, arg_1.d.x, false, true))), ~global0.a.zz, _wgslsmith_mult_vec2_i32(arg_1.a.yx, arg_1.a.xx))), vec4<bool>(u_input.e.x <= ~_wgslsmith_sub_u32(u_input.d, 36045u), true, any(!arg_1.d.yw), true));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(785f + arg_1.b.x) * _wgslsmith_div_f32(-1000f, 2062f)), -1002f, true | arg_0.d.x)))), arg_1.b.x);
    var var_1 = arg_0;
    let var_2 = min(1u, u_input.e.x) ^ _wgslsmith_sub_u32(~(~(~13776u)), u_input.e.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(405f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-249f * global0.b.x)) + _wgslsmith_f_op_f32(sign(230f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yz - _wgslsmith_f_op_vec2_f32(-arg_0.b)), arg_0.b))), select(vec2<bool>(any(select(vec3<bool>(arg_1.d.x, true, false), vec3<bool>(global0.d.x, true, global0.d.x), vec3<bool>(true, global0.d.x, false))), false), select(arg_0.d.zw, vec2<bool>(false, !var_1.d.x), !vec2<bool>(arg_0.d.x, var_1.d.x)), !(var_2 > reverseBits(0u)))));
    return u_input.c.x >= global1[_wgslsmith_index_u32(1u, 7u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = !(!vec3<bool>(func_2(Struct_1(u_input.a, arg_0.b, u_input.a.yz, vec4<bool>(arg_0.d.x, global0.d.x, false, arg_0.d.x)), Struct_1(vec3<i32>(0i, 0i, global0.c.x), global0.b, u_input.a.zy, vec4<bool>(true, arg_1.x, global0.d.x, global0.d.x))) | (u_input.d >= global1[_wgslsmith_index_u32(7552u, 7u)]), !arg_1.x, arg_0.d.x));
    let var_1 = ~u_input.e;
    var var_2 = Struct_1(vec3<i32>(_wgslsmith_add_i32(~7352i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.x, 1i), vec2<i32>(arg_3.x, u_input.b))) & _wgslsmith_dot_vec3_i32(global0.a, vec3<i32>(global0.c.x, 0i, u_input.a.x)), ~select(-global0.c.x, arg_0.c.x >> (79989u % 32u), any(var_0.zz)), _wgslsmith_sub_i32(-u_input.a.x, 18476i) & max(i32(-1i) * -71314i, global0.c.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(arg_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0.b.x))))), firstTrailingBit(vec2<i32>(countOneBits(25125i), 1427i)), global0.d);
    var var_3 = Struct_1(var_2.a, vec2<f32>(-208f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), -201f))), -arg_3, !arg_0.d);
    global0 = Struct_1(vec3<i32>(arg_0.c.x, global0.c.x << (~global1[_wgslsmith_index_u32(~0u, 7u)] % 32u), _wgslsmith_clamp_i32(max(_wgslsmith_clamp_i32(arg_3.x, var_2.a.x, 35141i), -20081i), _wgslsmith_clamp_i32(2147483647i, -1i, _wgslsmith_sub_i32(global0.a.x, -2147483647i)), -var_2.a.x)), vec2<f32>(arg_0.b.x, arg_0.b.x), func_3(Struct_1(countOneBits(-arg_0.a), arg_0.b, select(~arg_3, ~arg_0.c, select(true, arg_1.x, var_2.d.x)), global0.d)), !select(!select(vec4<bool>(var_0.x, false, false, false), arg_1, global0.d), arg_1, true && any(arg_1)));
    return Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b.x, 1082f), vec2<f32>(1778f, 516f), var_2.d.yz)))))), vec2<i32>(_wgslsmith_dot_vec3_i32(var_2.a, abs(vec3<i32>(-1i, 0i, -1i))), ~(~var_3.a.x) & -arg_0.c.x), !var_2.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = func_1(func_1(arg_1, arg_0.d, !all(arg_0.d.zyw), vec2<i32>(select(arg_1.c.x, 2147483647i, arg_0.d.x), func_3(func_1(arg_0, arg_0.d, true, vec2<i32>(arg_0.c.x, global0.a.x))).x)), func_1(arg_1, func_1(Struct_1(-arg_0.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.b.x, global0.b.x))), _wgslsmith_clamp_vec2_i32(u_input.a.zx, vec2<i32>(-12536i, 82797i), global0.c), arg_1.d), select(vec4<bool>(false, true, true, arg_0.d.x), vec4<bool>(true, false, false, arg_1.d.x), !arg_0.d), arg_1.d.x & any(arg_1.d.yz), ~vec2<i32>(-19575i, 18318i)).d, !(arg_1.b.x > arg_1.b.x), firstLeadingBit(~(arg_1.c >> (vec2<u32>(1u, 47079u) % vec2<u32>(32u))))).d, true, vec2<i32>(arg_0.a.x, 2147483647i));
    global0 = arg_1;
    global1 = array<u32, 7>();
    global1 = array<u32, 7>();
    let var_0 = u_input.c;
    return Struct_1(countOneBits(vec3<i32>(reverseBits(~arg_0.c.x), _wgslsmith_dot_vec2_i32(arg_0.a.zy, ~arg_0.c), abs(-22825i))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_1.b + vec2<f32>(-315f, 799f)))), ~vec2<i32>(-(~arg_1.a.x), arg_0.a.x), vec4<bool>(true, all(vec3<bool>(true, arg_1.d.x, false)) && func_1(func_1(Struct_1(vec3<i32>(-1i, arg_1.c.x, u_input.b), global0.b, vec2<i32>(arg_1.c.x, 1i), vec4<bool>(false, false, arg_1.d.x, global0.d.x)), arg_0.d, true, arg_1.a.xx), arg_0.d, arg_1.b.x < arg_1.b.x, vec2<i32>(1i, -6379i)).d.x, arg_0.d.x, arg_0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~countOneBits(vec3<i32>(-u_input.b, global0.c.x, -global0.c.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-290f, global0.b.x))))), vec2<i32>(global0.c.x, -global0.a.x), global0.d);
    global0 = Struct_1(-reverseBits(vec3<i32>(var_0.a.x, u_input.a.x, _wgslsmith_add_i32(-2147483647i, var_0.a.x))), _wgslsmith_f_op_vec2_f32(exp2(var_0.b)), -u_input.a.yz ^ var_0.a.zy, select(global0.d, var_0.d, !vec4<bool>(global0.d.x, all(vec2<bool>(global0.d.x, false)), global0.d.x, true)));
    var_0 = func_4(Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, global0.c.x, var_0.a.x), var_0.a), vec3<i32>(var_0.c.x, 21612i, global0.a.x) ^ global0.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, 287f) - vec2<f32>(var_0.b.x, var_0.b.x)), var_0.b), countOneBits(vec2<i32>(abs(0i), -u_input.a.x)), select(vec4<bool>(var_0.b.x <= var_0.b.x, any(vec3<bool>(false, global0.d.x, true)), global0.d.x, true), !vec4<bool>(true, global0.d.x, false, false), vec4<bool>(true, var_0.d.x, true, var_0.d.x))), func_1(Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1006f, 1394f)))), vec2<i32>(u_input.b, 1i), global0.d), !(!vec4<bool>(var_0.d.x, true, var_0.d.x, false)), var_0.d.x, select(~vec2<i32>(global0.c.x, u_input.a.x), ~vec2<i32>(var_0.a.x, 1i), global0.d.ww)));
    global1 = array<u32, 7>();
    var_0 = Struct_1(vec3<i32>(abs(max(~1i, -2147483647i)), -min(firstLeadingBit(-5719i), 7911i << (global1[_wgslsmith_index_u32(1u, 7u)] % 32u)), min(-select(-44088i, u_input.b, false), -30583i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b * var_0.b)), var_0.a.xx, vec4<bool>(true, !global0.d.x, global0.d.x, any(!vec2<bool>(global0.d.x, var_0.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, global1[_wgslsmith_index_u32(~select(u_input.e.x, min(abs(44964u), u_input.e.x), true), 7u)]);
}

