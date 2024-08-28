struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5>;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 231i);

var<private> global2: Struct_3;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(40555u, 5u)];
    let var_1 = Struct_5(var_0.a);
    return global2.a;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(floor(476f));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-560f, 1f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-615f, _wgslsmith_f_op_f32(-297f - -186f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-299f, -1328f), vec2<f32>(874f, 625f))), vec2<f32>(-474f, 399f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-244f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), var_1.x)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))))));
    let var_2 = Struct_4(select(select(!(!vec2<bool>(true, global2.d)), select(vec2<bool>(false, global2.d), vec2<bool>(global2.d, false), select(vec2<bool>(global2.d, false), vec2<bool>(global2.d, global2.d), vec2<bool>(global2.d, global2.d))), ~2147483647i == (global2.b.a >> (u_input.b % 32u))), vec2<bool>(global2.d && true, true), select(vec2<bool>(global2.d, true), vec2<bool>(true, true), select(vec2<bool>(global2.d, true), vec2<bool>(true, true), select(vec2<bool>(false, global2.d), vec2<bool>(global2.d, global2.d), vec2<bool>(true, global2.d))))), ~_wgslsmith_div_i32(~countOneBits(-2147483647i), -15048i), -13510i, ~(reverseBits(-1i << (u_input.b % 32u)) ^ -countOneBits(-28684i)));
    var var_3 = firstTrailingBit(abs(1i));
    return Struct_3(global2.b, func_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_div_f32(1971f, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1174f) + var_1.x), 932f, _wgslsmith_f_op_f32(step(var_1.x, -1023f)))), firstLeadingBit(u_input.d) ^ u_input.d, false);
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = _wgslsmith_mult_vec3_u32(max(~firstLeadingBit(~vec3<u32>(u_input.b, 4294967295u, 4294967295u)), ~vec3<u32>(countOneBits(arg_0), reverseBits(1u), ~31265u)), ~(~firstTrailingBit(~vec3<u32>(u_input.b, 55672u, u_input.b))));
    var var_1 = global0[_wgslsmith_index_u32(arg_0, 5u)];
    let var_2 = func_3(_wgslsmith_mod_i32(-2147483647i, u_input.a), func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1229f, -980f, -682f, 1510f) - vec4<f32>(-1254f, -1000f, 862f, -266f)))))));
    var var_3 = Struct_2(any(select(!(!var_1.a), var_1.a, select(!var_1.a, select(vec2<bool>(global2.d, false), var_1.a, var_1.a.x), !var_1.a.x))), arg_1.b, select(select(!select(vec4<bool>(global2.d, var_1.a.x, var_2.d, true), vec4<bool>(global2.d, false, var_2.d, var_2.d), vec4<bool>(true, var_2.d, true, var_2.d)), select(vec4<bool>(true, global2.d, var_1.a.x, true), select(vec4<bool>(global2.d, false, var_2.d, var_2.d), vec4<bool>(arg_1.d, arg_1.d, true, var_1.a.x), vec4<bool>(false, global2.d, false, global2.d)), true), select(!vec4<bool>(false, var_1.a.x, false, var_2.d), vec4<bool>(false, true, var_2.d, true), func_3(global2.c.x, var_2.a).d)), vec4<bool>(!all(vec3<bool>(false, global2.d, true)), !any(vec3<bool>(false, var_2.d, false)), !all(vec4<bool>(false, global2.d, var_2.d, false)), !all(vec4<bool>(var_1.a.x, true, var_2.d, var_1.a.x))), var_2.d && global2.d));
    global1 = func_3(min(_wgslsmith_dot_vec2_i32(var_2.c, vec2<i32>(firstLeadingBit(var_3.b.a), 1i)), var_2.b.a), var_2.b).c;
    return var_0.yx;
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-752f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f))), -525f, -913f, -448f));
    let var_1 = 4294967295u;
    global2 = Struct_3(Struct_1(_wgslsmith_mod_i32(u_input.d.x, -1i) >> (66698u % 32u)), func_3(-(~_wgslsmith_mod_i32(global1.x, -24613i)), Struct_1(-37311i << ((var_1 >> (arg_0.x % 32u)) % 32u))).b, vec2<i32>((_wgslsmith_mult_i32(u_input.a, -1i) & _wgslsmith_add_i32(var_0.a, -2147483647i)) & var_0.a, ~firstLeadingBit(func_2(vec4<f32>(493f, -571f, 1013f, -628f)).a)), false);
    var var_2 = !(~1i <= u_input.d.x);
    var var_3 = select(reverseBits(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(28015i, 1001i)))) | -global2.c, ~vec2<i32>(_wgslsmith_mult_i32(u_input.c, var_0.a) ^ abs(u_input.c), func_3(~global2.a.a, var_0).c.x), !select(vec2<bool>(select(true, global2.d, global2.d), var_1 <= arg_0.x), select(select(vec2<bool>(global2.d, true), vec2<bool>(global2.d, global2.d), vec2<bool>(global2.d, true)), vec2<bool>(true, true), global2.d || global2.d), select(vec2<bool>(true, global2.d), select(vec2<bool>(false, global2.d), vec2<bool>(true, true), vec2<bool>(false, global2.d)), select(vec2<bool>(global2.d, true), vec2<bool>(global2.d, false), false))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(func_4(~(~func_1(u_input.b, Struct_3(Struct_1(global2.a.a), Struct_1(-1i), vec2<i32>(0i, global1.x), false)))), Struct_1(~(~global1.x)), vec2<i32>(44275i << (~(~1u) % 32u), global1.x), all(vec4<bool>(any(vec4<bool>(global2.d, global2.d, global2.d, global2.d)), false, false, false)));
    global2 = Struct_3(func_4(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(55799u, 1u), abs(vec2<u32>(32495u, u_input.b))), (vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.b, u_input.b)) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, 66695u)) % vec2<u32>(32u)))), global2.a, u_input.d, true);
    global2 = func_3(_wgslsmith_add_i32(~(-46343i), 6120i), global2.b);
    global2 = func_3(global2.a.a, global2.a);
    var var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1014f), 332f), 1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-307f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-416f, 666f), _wgslsmith_f_op_f32(-504f + 765f), true)))), abs(_wgslsmith_add_vec2_i32(-global2.c, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(0i, 18805i))) ^ firstLeadingBit(-vec2<i32>(46539i, 0i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-903f, -1784f, -1275f)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_clamp_i32(u_input.d.x, global1.x, u_input.d.x), ~37637i, u_input.a), vec4<i32>(-u_input.a, global2.b.a, _wgslsmith_mod_i32(u_input.a, u_input.d.x), 0i)), global1.x << (u_input.b % 32u)));
}

