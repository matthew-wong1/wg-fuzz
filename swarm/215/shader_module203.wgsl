struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: bool = false;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    let var_1 = max(-(~arg_2.b.zx), firstLeadingBit(-vec2<i32>(_wgslsmith_add_i32(-1i, arg_1.a.x), firstLeadingBit(1i))));
    var var_2 = 0u;
    let var_3 = global0[_wgslsmith_index_u32(reverseBits(8577u), 25u)];
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-477f)))), 1000f, -123f, _wgslsmith_f_op_f32(max(-1455f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1811f * -410f) * _wgslsmith_div_f32(536f, 599f))))));
    return _wgslsmith_f_op_f32(-var_4.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>) -> f32 {
    global0 = array<Struct_1, 25>();
    var var_0 = -1268f >= arg_1.x;
    let var_1 = abs(firstTrailingBit(vec4<u32>(abs(u_input.b >> (global2.d.x % 32u)), 1u, global2.c, ~global2.d.x << (~global2.c % 32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(~vec2<u32>(0u, global2.d.x), Struct_2(vec2<i32>(u_input.d.x, u_input.a)), global0[_wgslsmith_index_u32(u_input.b, 25u)])), arg_1.x)));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: f32, arg_3: f32) -> Struct_2 {
    var var_0 = vec2<bool>(!(((u_input.a <= global2.a) || false) | any(!vec2<bool>(arg_0, true))), 0u <= u_input.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-452f, _wgslsmith_f_op_f32(min(818f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3)) + -322f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_2)))))));
    global0 = array<Struct_1, 25>();
    global1 = false;
    var var_2 = vec4<i32>(countOneBits(-global2.b.x) & u_input.d.x, _wgslsmith_add_i32(abs(u_input.d.x), 29119i) | (_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c.x), vec2<i32>(-33240i, -22141i)) ^ select(u_input.a, u_input.a, var_0.x)), -449i, _wgslsmith_dot_vec3_i32(firstLeadingBit(global2.b >> (vec3<u32>(89794u, u_input.b, u_input.b) % vec3<u32>(32u))), global2.b)) & _wgslsmith_mult_vec4_i32(~abs(vec4<i32>(global2.b.x, -62147i, global2.a, global2.a)), vec4<i32>(-2147483647i, abs(45553i), -2147483647i, global2.a));
    return Struct_2(-(~vec2<i32>(~2069i, u_input.c.x)));
}

fn func_1() -> Struct_2 {
    global1 = false;
    let var_0 = global2.d;
    let var_1 = Struct_1(1i, global2.b, ~16608u, ~(~(select(global2.d, vec4<u32>(var_0.x, u_input.b, var_0.x, 62414u), vec4<bool>(true, true, false, false)) >> (~vec4<u32>(global2.c, u_input.b, 1u, 19837u) % vec4<u32>(32u)))));
    global1 = false;
    let var_2 = 0u;
    return func_4(false, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -401f), -1766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-777f, -792f, false))), _wgslsmith_f_op_f32(-972f * _wgslsmith_f_op_f32(f32(-1f) * -537f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(257f - 259f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(238f, -1171f, -1115f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-278f, -577f, -722f))))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> vec2<u32> {
    var var_0 = Struct_1(~(~u_input.a), u_input.d, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.c, 0u, u_input.b), global2.d.zww) << (vec3<u32>(~8314u, 0u, 14177u) % vec3<u32>(32u)), (~vec3<u32>(1u, global2.c, global2.c) | ~vec3<u32>(global2.c, 5501u, global2.d.x)) << (countOneBits(select(global2.d.wwz, vec3<u32>(80736u, global2.d.x, 22594u), false)) % vec3<u32>(32u))), ~_wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(global2.d, vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u))), abs(global2.d) >> (~vec4<u32>(u_input.b, u_input.b, 4294967295u, global2.c) % vec4<u32>(32u))));
    var_0 = global0[_wgslsmith_index_u32(max(91661u, 0u), 25u)];
    var_0 = global0[_wgslsmith_index_u32(max(u_input.b, ~u_input.b), 25u)];
    let var_1 = _wgslsmith_add_vec4_i32(-select(vec4<i32>(abs(global2.a), global2.b.x & var_0.b.x, 2147483647i ^ arg_0.a.x, 1i), ~(~vec4<i32>(15390i, 0i, -2147483647i, global2.b.x)), any(select(arg_1, vec3<bool>(arg_1.x, false, false), arg_1))), -firstTrailingBit((vec4<i32>(arg_0.a.x, global2.a, 1i, 2147483647i) >> (vec4<u32>(1u, 1367u, 1u, 4294967295u) % vec4<u32>(32u))) >> (abs(vec4<u32>(u_input.b, u_input.b, 49303u, global2.d.x)) % vec4<u32>(32u))));
    var_0 = global0[_wgslsmith_index_u32(global2.d.x, 25u)];
    return countOneBits(vec2<u32>(4294967295u, 1u & _wgslsmith_dot_vec4_u32(firstLeadingBit(var_0.d), vec4<u32>(u_input.b, 122662u, 4294967295u, global2.c))));
}

fn func_6(arg_0: vec2<u32>) -> Struct_2 {
    global2 = global0[_wgslsmith_index_u32(~arg_0.x & countOneBits(~(~(~1u))), 25u)];
    let var_0 = Struct_2(vec2<i32>(-2147483647i, u_input.d.x | u_input.c.x));
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(216f * 248f))))))));
    var var_3 = !(!(_wgslsmith_clamp_i32(1i, -43135i, var_1.a.x & u_input.d.x) <= var_0.a.x));
    return Struct_2(~u_input.d.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-1i) * -vec2<i32>(u_input.c.x, -34750i);
    global1 = !(!(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-761f)))) > _wgslsmith_f_op_f32(trunc(-197f))));
    var var_1 = global0[_wgslsmith_index_u32(20855u, 25u)];
    var var_2 = func_6(func_5(func_1(), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)));
    global0 = array<Struct_1, 25>();
    let var_3 = Struct_2(firstTrailingBit(firstTrailingBit(vec2<i32>(u_input.a << (var_1.c % 32u), var_1.b.x))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-352f, 1025f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1195f, 221f)))) + -530f));
    var var_5 = global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_mult_u32(17321u, 1u ^ var_1.d.x)), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(-971f, var_2.a.x, vec3<f32>(1222f, _wgslsmith_f_op_f32(var_4 + _wgslsmith_f_op_f32(var_4 + var_4)), 757f));
}

