struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

var<private> global1: vec4<u32> = vec4<u32>(9236u, 10787u, 4294967295u, 25363u);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<u32>(1u, 7515u, 4294967295u)), Struct_1(vec3<u32>(62895u, 1u, 13571u)), true, vec2<f32>(-524f, -196f));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    var var_0 = any(!select(vec3<bool>(true, !global2.c, true), select(!vec3<bool>(true, global2.c, global2.c), select(vec3<bool>(true, false, false), vec3<bool>(global2.c, global2.c, global2.c), false), !global2.c), !select(vec3<bool>(true, false, global2.c), vec3<bool>(false, false, false), vec3<bool>(global2.c, global2.c, global2.c))));
    var var_1 = -212f;
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(1i, -(abs(arg_0.x) >> ((1u << (u_input.a % 32u)) % 32u))), max(abs(19957i) & min(arg_0.x, 19679i), _wgslsmith_add_i32(21891i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.x, 11717i), arg_0)))), 5388i, i32(-1i) * -2147483647i);
    global1 = ~vec4<u32>(1u, global2.b.a.x, ~(~global1.x), global2.a.a.x) << (vec4<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 2364u, 65896u), vec3<u32>(global1.x, u_input.a, 4294967295u)))), ~select(0u, min(global1.x, 4294967295u), global2.c), global1.x, ~global1.x) % vec4<u32>(32u));
    var var_3 = firstLeadingBit(vec3<u32>(u_input.a, firstTrailingBit(_wgslsmith_clamp_u32(40797u, 1u, global2.b.a.x)) | global2.b.a.x, 4294967295u));
    return !global2.c;
}

fn func_2() -> Struct_1 {
    global2 = Struct_2(global2.b, Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(global2.a.a, _wgslsmith_clamp_vec3_u32(global2.a.a, vec3<u32>(global2.b.a.x, 28073u, 0u), vec3<u32>(global1.x, 4294967295u, 1u))), _wgslsmith_add_u32(0u, 31008u), _wgslsmith_add_u32(u_input.a, 0u))), !func_3(vec3<i32>(_wgslsmith_div_i32(4165i, -20216i), min(25668i, 10668i), -1435i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, _wgslsmith_f_op_f32(-global2.d.x)), global2.d, global2.c))));
    let var_0 = !vec2<bool>(false, global2.c);
    let var_1 = _wgslsmith_f_op_f32(exp2(global2.d.x));
    global2 = Struct_2(Struct_1(global2.b.a), Struct_1(_wgslsmith_div_vec3_u32(~(vec3<u32>(global1.x, 0u, global2.a.a.x) << (vec3<u32>(7448u, 44236u, global2.a.a.x) % vec3<u32>(32u))), ~(~global1.yxw))), !global2.c, _wgslsmith_f_op_vec2_f32(global2.d * vec2<f32>(1f, 1f)));
    global2 = Struct_2(global2.a, Struct_1(global2.b.a), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.x, global2.d.x) + global2.d), global2.d, true)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(658f, -1547f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, global2.d.x), vec2<f32>(var_1, -1000f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global2.d), global2.d, all(var_0))))));
    return global2.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0.b;
    global0 = array<Struct_3, 21>();
    var var_1 = Struct_1(~(~firstLeadingBit(var_0.a)));
    let var_2 = abs(33395i);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - _wgslsmith_f_op_f32(trunc(-148f)));
    return arg_1.b;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<i32>) -> Struct_1 {
    global2 = Struct_2(func_4(global0[_wgslsmith_index_u32(~9288u, 21u)], Struct_2(func_2(), global2.a, global2.c & true, vec2<f32>(-332f, global2.d.x)), func_2()), Struct_1(select(global1.zxx, global2.a.a, vec3<bool>(global2.c, 0u >= arg_1.x, true))), any(vec4<bool>(true, func_3(arg_2.zxw), !global2.c, !global2.c)) | any(!vec3<bool>(global2.c, false, global2.c)), _wgslsmith_f_op_vec2_f32(-global2.d));
    let var_0 = 151299u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1709f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d.x, global2.d.x))))));
    let var_2 = Struct_4(firstTrailingBit(abs(-23581i)));
    var var_3 = Struct_1(vec3<u32>(~(~36836u), firstLeadingBit(~select(10173u, 22574u, global2.c)), firstLeadingBit(global2.a.a.x)));
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    let var_0 = Struct_2(func_1(firstTrailingBit(global1.x), global2.a.a, _wgslsmith_sub_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(~vec4<i32>(6471i, 0i, 2147483647i, 7726i)))), func_2(), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-484f, -1468f) * global2.d))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-670f, 1861f, var_0.d.x) - vec3<f32>(var_0.d.x, global2.d.x, var_0.d.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.x, 1000f, 562f) * vec3<f32>(571f, var_0.d.x, -1231f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.x, var_0.d.x, var_0.d.x) + vec3<f32>(global2.d.x, -195f, var_0.d.x)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(global2.d.x)), _wgslsmith_f_op_f32(sign(var_0.d.x)), _wgslsmith_f_op_f32(-global2.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, 1149f, 477f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, var_0.d.x, 456f))), select(false, true, global2.d.x >= var_0.d.x))))));
    var var_2 = func_3(firstLeadingBit(_wgslsmith_div_vec3_i32(~min(vec3<i32>(-2147483647i, 19380i, -1i), vec3<i32>(-36002i, 56460i, 35786i)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 48597i, -50918i), vec3<i32>(-16129i, -17615i, -1i)) << ((vec3<u32>(var_0.a.a.x, u_input.a, u_input.a) | global2.b.a) % vec3<u32>(32u)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -360f)))) * var_0.d) - _wgslsmith_f_op_vec2_f32(-var_0.d))));
    var_2 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(global2.d);
}

