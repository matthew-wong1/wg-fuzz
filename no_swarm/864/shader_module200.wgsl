struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, false, vec4<u32>(47915u, 1u, 5351u, 4294967295u), -545f, vec3<f32>(-805f, -1112f, 649f));

var<private> global1: vec2<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_2) -> i32 {
    let var_0 = arg_3.a;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-34159i, -4734i, 38034i, 17696i), vec4<i32>(0i, 54739i, -52214i, -2147483647i))) >> ((select(global0.c.x, 4294967295u, true) & global0.c.x) % 32u), ~1i & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -5203i, 1i), vec3<i32>(6209i, 2147483647i, -2147483647i)), ~(-1i), firstLeadingBit(1i)), ~vec4<i32>(select(_wgslsmith_add_i32(-1i, -2147483647i), abs(17088i), true), 2147483647i, firstTrailingBit(1i), min(-10210i >> (arg_1.x % 32u), select(-48284i, -2628i, var_0.x))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: u32, arg_3: f32) -> Struct_2 {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(i32(-1i) * -12648i, abs(-21704i)), _wgslsmith_div_i32(1i, i32(-1i) * -37864i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-14252i, i32(-1i) * -17410i, reverseBits(-5890i)), vec3<i32>(-3676i, abs(-1i), 1i)), vec3<i32>(-1i, firstTrailingBit(_wgslsmith_add_i32(-49961i, 17331i)), firstTrailingBit(-19030i))), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-2147483647i, 0i), vec2<i32>(1i, -23329i)), vec2<i32>(1i, 1i)), -countOneBits(2147483647i)), 1i & abs(func_3(Struct_2(vec3<bool>(true, true, false)), min(vec4<u32>(1u, u_input.a.x, 10313u, 0u), arg_1), any(vec3<bool>(false, false, arg_0)), Struct_2(vec3<bool>(global0.a, true, true)))));
    var_0 = max(vec4<i32>(45978i, _wgslsmith_mod_i32(2147483647i, -1i), var_0.x, -var_0.x), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(min(select(vec4<i32>(var_0.x, -747i, 0i, 32071i), vec4<i32>(var_0.x, var_0.x, var_0.x, 35806i), arg_0), vec4<i32>(47375i, var_0.x, -24103i, 1i)), select(abs(vec4<i32>(var_0.x, var_0.x, -2147483647i, var_0.x)), firstLeadingBit(vec4<i32>(var_0.x, var_0.x, 1194i, 1i)), vec4<bool>(false, false, global0.b, global1.x)), vec4<i32>(var_0.x, 1i >> (arg_1.x % 32u), -var_0.x, firstLeadingBit(var_0.x))), vec4<i32>(-1i, 1i, _wgslsmith_sub_i32(5038i, var_0.x), 12000i) >> (arg_1 % vec4<u32>(32u))));
    var var_1 = abs(arg_2 ^ _wgslsmith_mod_u32(~arg_2, u_input.a.x));
    global0 = Struct_1(any(!(!(!vec4<bool>(global0.a, true, true, global0.b)))), 2320f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(759f))), abs(select(global0.c, _wgslsmith_clamp_vec4_u32(~arg_1, arg_1 >> (arg_1 % vec4<u32>(32u)), ~global0.c), vec4<bool>(false, any(vec3<bool>(false, true, global0.a)), select(false, false, global0.a), false | global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-907f, -1236f, 207f) * vec3<f32>(global0.d, arg_3, 1109f)), global0.e)), global0.e))));
    var var_2 = global0.c.zx;
    return Struct_2(!(!select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global0.a, false, true), global1.x), vec3<bool>(global1.x, true, true), all(vec3<bool>(arg_0, global0.a, arg_0)))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> i32 {
    var var_0 = global0.c.yxx;
    global1 = !(!(!vec2<bool>(arg_0.a.x, !global1.x)));
    global1 = arg_0.a.xz;
    var var_1 = Struct_1(true, !(global0.e.x > _wgslsmith_f_op_f32(select(global0.d, 208f, global0.a))) || (abs(4294967295u) > var_0.x), global0.c, global0.d, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2006f, global0.d))), 431f), global0.e)));
    var_1 = Struct_1(any(vec2<bool>(all(!arg_0.a.xy), arg_1)), _wgslsmith_f_op_f32(floor(-1995f)) != -951f, ~vec4<u32>(~0u, 4294967295u, u_input.a.x, ~1u), 1109f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.e.x, global0.e.x, -196f))), var_1.e)))));
    return func_3(arg_2, vec4<u32>(u_input.a.x, ~(~var_1.c.x ^ ~43109u), var_1.c.x, max(1u, global0.c.x)), false, arg_2);
}

fn func_1() -> i32 {
    var var_0 = -func_4(func_2(false, vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -757f)), global1.x, Struct_2(func_2(false, global0.c, 1u, global0.d).a)) ^ 0i;
    let var_1 = _wgslsmith_sub_i32(-_wgslsmith_mult_i32(_wgslsmith_clamp_i32(i32(-1i) * -1i, ~7588i, firstTrailingBit(1i)), abs(1i)), -24250i);
    var var_2 = ~vec3<i32>(var_1, -(~1i), var_1);
    let var_3 = Struct_1(true && global1.x, all(select(vec4<bool>(!global1.x, global1.x, global0.b, !global1.x), select(select(vec4<bool>(false, false, true, global0.a), vec4<bool>(global1.x, false, true, true), global1.x), vec4<bool>(false, global0.b, false, global0.b), select(vec4<bool>(global1.x, global0.a, global0.a, global0.a), vec4<bool>(false, false, global1.x, false), vec4<bool>(false, true, global0.b, global0.a))), !(!vec4<bool>(global1.x, global0.b, global0.a, false)))), vec4<u32>(firstTrailingBit(52652u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a.x, ~36542u), ~u_input.a.x, _wgslsmith_sub_u32(~79875u, global0.c.x)), 67730u, u_input.a.x), 203f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, 1458f, global0.d)), global0.e)) * _wgslsmith_div_vec3_f32(vec3<f32>(1559f, _wgslsmith_f_op_f32(abs(global0.d)), global0.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.e.x, 1042f, global0.d), vec3<f32>(global0.d, 2122f, global0.e.x))), global0.e))));
    let var_4 = var_3;
    return max(func_3(Struct_2(!vec3<bool>(false, global0.b, var_3.b)), vec4<u32>(firstLeadingBit(1u), global0.c.x, 4294967295u, ~(~93641u)), !global1.x, func_2(true, ~(~var_3.c), reverseBits(~44907u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.e.x * -604f) - _wgslsmith_f_op_f32(select(var_3.d, 176f, false))))), min(select(~(0i | var_2.x), (i32(-1i) * -2147483647i) << (~var_3.c.x % 32u), all(vec3<bool>(false, global0.a, false))), -11957i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.x;
    var var_1 = vec3<i32>(-2147483647i, ~_wgslsmith_mod_i32(func_1(), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 3325i, -30305i, -2147483647i), vec4<i32>(8933i, 2147483647i, 32540i, 0i)))), ~(-1i));
    var_1 = vec3<i32>(1i, var_1.x, -1i);
    global0 = Struct_1(!global1.x, !(!(!global0.b)), global0.c, -1000f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.e))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.e.x + 1373f), _wgslsmith_f_op_f32(abs(global0.e.x)), _wgslsmith_f_op_f32(-1424f * global0.d)) * global0.e), vec3<bool>(any(vec3<bool>(true, true, true)), 85797u == _wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.xy), global1.x))));
    let var_2 = global0.e.x;
    global0 = Struct_1(global0.b, (select(33597u, 22070u, global1.x | global0.a) >> ((_wgslsmith_dot_vec4_u32(global0.c, global0.c) & _wgslsmith_mod_u32(var_0, 0u)) % 32u)) > var_0, vec4<u32>(~var_0 & var_0, ~1u, 1u >> (~select(4294967295u, 61108u, global0.a) % 32u), ~_wgslsmith_mod_u32(global0.c.x, u_input.a.x) | ~(~u_input.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) - global0.d), global0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x * global0.e.x))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global0.e - _wgslsmith_f_op_vec3_f32(vec3<f32>(-926f, global0.e.x, -2182f) - vec3<f32>(global0.e.x, global0.d, 712f))))))));
    global1 = select(select(select(select(select(vec2<bool>(global0.b, true), vec2<bool>(global1.x, true), vec2<bool>(true, false)), func_2(global1.x, global0.c, global0.c.x, global0.d).a.xy, !vec2<bool>(global1.x, false)), vec2<bool>(!global1.x, true), vec2<bool>(global1.x, true)), select(!vec2<bool>(global0.b, global1.x), func_2(-27291i >= var_1.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, 53711u, 6887u), global0.c, global0.c), _wgslsmith_div_u32(1450u, 1u), _wgslsmith_f_op_f32(max(global0.d, 361f))).a.yz, all(vec4<bool>(global0.a, false, true, global1.x))), all(!select(vec2<bool>(global0.b, false), vec2<bool>(global1.x, true), vec2<bool>(global1.x, false)))), select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(global0.b, false), vec2<bool>(false, false)), true), select(!vec2<bool>(global0.b, true), !vec2<bool>(global1.x, global1.x), !vec2<bool>(global1.x, global0.b)), global0.a), vec2<bool>(true, true), !global1.x), vec2<bool>(true, false));
    var var_3 = Struct_1(all(!(!vec2<bool>(false, global0.b))), global0.b | false, _wgslsmith_clamp_vec4_u32(~select(~vec4<u32>(13128u, u_input.a.x, 0u, global0.c.x), vec4<u32>(4100u, 1u, 4294967295u, var_0) ^ global0.c, true), firstTrailingBit(~global0.c) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 6323u, var_0, 77060u), vec4<u32>(u_input.a.x, global0.c.x, global0.c.x, 4294967295u)), vec4<u32>(16279u, 0u, reverseBits(var_0 << (global0.c.x % 32u)), 1u)), _wgslsmith_f_op_f32(step(global0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-514f, _wgslsmith_f_op_f32(round(global0.e.x)))) + _wgslsmith_f_op_f32(step(global0.d, global0.e.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.x, global0.d, global0.e.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.e)) - _wgslsmith_f_op_vec3_f32(global0.e * vec3<f32>(403f, 503f, global0.e.x)))), global0.e, select(!(!vec3<bool>(true, global0.b, global1.x)), func_2(func_2(global1.x, vec4<u32>(1u, 14626u, global0.c.x, var_0), global0.c.x, global0.e.x).a.x, global0.c, firstTrailingBit(1u), global0.e.x).a, !(global1.x || false)))));
    var var_4 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(global0.e.x, 1u);
}

