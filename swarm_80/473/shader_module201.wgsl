struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(651f, -1000f, vec2<u32>(12928u, 55369u), false);

var<private> global1: array<i32, 1>;

var<private> global2: vec2<bool>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> u32 {
    global2 = vec2<bool>(!select(any(vec4<bool>(false, global0.d, false, global0.d)) | global0.d, any(select(vec3<bool>(true, false, false), vec3<bool>(false, arg_1.c.d, true), arg_1.a.d)), _wgslsmith_f_op_f32(ceil(1463f)) > -1101f), true);
    global2 = select(!(!vec2<bool>(global0.d, arg_1.a.d)), !vec2<bool>(!global2.x, true), !any(!vec4<bool>(arg_1.a.d, false, true, false)));
    global1 = array<i32, 1>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1083f - -311f), _wgslsmith_f_op_f32(f32(-1f) * -349f), global0.c, (true | (arg_1.a.d || arg_1.c.d)) || false), ~(~(~arg_1.b)), Struct_1(_wgslsmith_f_op_f32(-global0.b), -508f, vec2<u32>(1u, 0u), arg_1.c.d));
    global0 = var_0.c;
    return _wgslsmith_sub_u32(arg_1.b.x, 49640u);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = array<i32, 1>();
    var var_0 = 1000f;
    var var_1 = Struct_2(Struct_1(arg_0, 1403f, vec2<u32>(~_wgslsmith_clamp_u32(global0.c.x, global0.c.x, 0u), func_3(~global0.c, Struct_2(Struct_1(global0.b, 192f, global0.c, global2.x), vec3<u32>(37156u, 4294967295u, 4294967295u), Struct_1(1781f, global0.b, vec2<u32>(global0.c.x, global0.c.x), true)))), global2.x), max(reverseBits(vec3<u32>(global0.c.x, 1u, abs(4294967295u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 114806u, global0.c.x), vec3<u32>(global0.c.x, 7931u, 4294967295u)), select(vec3<u32>(1u, global0.c.x, 4294967295u), vec3<u32>(25590u, global0.c.x, 28163u), vec3<bool>(global2.x, global2.x, global0.d)), vec3<u32>(global0.c.x, 14786u, global0.c.x)) | ~(~vec3<u32>(global0.c.x, 0u, global0.c.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1370f, _wgslsmith_f_op_f32(f32(-1f) * -2137f))), global0.a, global0.c, !((global1[_wgslsmith_index_u32(25691u, 1u)] <= 1i) & true)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(f32(-1f) * -928f));
    global2 = !select(select(vec2<bool>(select(true, true, true), true), vec2<bool>(true, global2.x), !vec2<bool>(var_1.c.d, true)), select(!(!vec2<bool>(true, var_1.a.d)), vec2<bool>(true, !global0.d), vec2<bool>(all(vec2<bool>(true, false)), true)), true);
    return var_1.c;
}

fn func_1(arg_0: vec2<bool>) -> vec3<i32> {
    var var_0 = func_2(_wgslsmith_f_op_f32(floor(633f)));
    let var_1 = vec2<u32>(6885u, ~_wgslsmith_sub_u32(~1u, global0.c.x));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global0.b))));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-957f + -243f))))), ~(~((var_1 | vec2<u32>(1u, 0u)) << (select(vec2<u32>(var_0.c.x, 33572u), var_0.c, arg_0) % vec2<u32>(32u)))), true);
    let var_3 = func_2(-529f);
    return -_wgslsmith_sub_vec3_i32(u_input.a.zyx, _wgslsmith_add_vec3_i32(u_input.a.xwx, reverseBits(u_input.a.yxz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_vec3_i32(u_input.a.zzy, firstTrailingBit(func_1(!vec2<bool>(true, global0.d))));
    global2 = !select(!vec2<bool>(false, global2.x), select(select(select(vec2<bool>(true, false), vec2<bool>(global0.d, global2.x), global0.d), select(vec2<bool>(global2.x, false), vec2<bool>(global0.d, global2.x), vec2<bool>(global0.d, global2.x)), !vec2<bool>(global2.x, global2.x)), !(!vec2<bool>(global0.d, global0.d)), vec2<bool>(!global0.d, !global0.d)), !global2.x);
    var var_1 = -(~vec3<i32>(1i, 5866i, 27890i));
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(global0.c.x, ~(~_wgslsmith_mod_u32(global0.c.x, 45882u))), 4294967295u);
    global2 = !select(select(select(!vec2<bool>(global2.x, true), vec2<bool>(false, global2.x), !vec2<bool>(true, global0.d)), vec2<bool>(true, any(vec4<bool>(global0.d, false, true, false))), !select(vec2<bool>(global0.d, true), vec2<bool>(false, global2.x), false)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, global0.d), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(global0.d, global0.d), vec2<bool>(global2.x, true))), !(!vec2<bool>(false, global2.x)), !global0.d), true & global2.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.b)) - 362f)))));
    let var_4 = countOneBits(_wgslsmith_add_u32(firstLeadingBit(global0.c.x), abs(global0.c.x)));
    var var_5 = Struct_2(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1554f - -241f)))))), ~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(48125u, var_4, global0.c.x)))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3 - 1000f), _wgslsmith_f_op_f32(var_3 + global0.b))))));
    var var_6 = var_5.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-325f, var_5.c.a, -563f)))))));
}

