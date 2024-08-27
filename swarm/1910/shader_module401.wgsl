struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: u32 = 6458u;

var<private> global2: array<u32, 31>;

var<private> global3: vec4<i32>;

var<private> global4: Struct_1 = Struct_1(vec3<u32>(78267u, 131029u, 84857u), vec3<i32>(-16235i, -777i, 13527i), -2140f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> vec3<i32> {
    var var_0 = 24865u;
    global0 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, global4.c, arg_1), vec3<f32>(376f, arg_1, arg_1)) - vec3<f32>(1148f, arg_1, 1348f)) - vec3<f32>(1312f, 929f, 928f)))));
    var_0 = reverseBits(~select(global2[_wgslsmith_index_u32(countOneBits(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12879u, 31u)], 31u)], 31u)])), 31u)], u_input.a | 51849u, !select(true, false, true)));
    var var_2 = _wgslsmith_dot_vec3_i32(global4.b & reverseBits(select(vec3<i32>(7665i, 1i, 0i), arg_0.xwx, vec3<bool>(false, false, false)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(global4.a.x, global4.a.x, 0u), global4.a) % vec3<u32>(32u))), max(_wgslsmith_clamp_vec3_i32(~arg_0.yyw, vec3<i32>(_wgslsmith_sub_i32(30131i, -18096i), -1i | global3.x, _wgslsmith_dot_vec3_i32(global3.yzx, vec3<i32>(global3.x, -2147483647i, arg_0.x))), arg_0.wxy), abs(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(8126i, arg_0.x, 67824i)), vec3<i32>(global3.x, global3.x, 1i)))));
    return ~_wgslsmith_mult_vec3_i32(~(~arg_0.zyx), firstLeadingBit(~global4.b)) & reverseBits(firstLeadingBit(abs(vec3<i32>(global3.x, 40805i, global4.b.x))));
}

fn func_2() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 5u)];
    global0 = array<Struct_1, 5>();
    global4 = global0[_wgslsmith_index_u32(47721u, 5u)];
    var var_1 = Struct_1(vec3<u32>(global4.a.x, _wgslsmith_div_u32(var_0.a.x, ~18581u), ~var_0.a.x), func_3(reverseBits(-vec4<i32>(var_0.b.x, -48205i, 58667i, 21241i)), -2841f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global4.c, global4.c)))));
    let var_2 = false;
    return global0[_wgslsmith_index_u32(countOneBits(20543u), 5u)];
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 5>();
    global2 = array<u32, 31>();
    let var_0 = Struct_1(~global4.a, vec3<i32>(arg_0.b.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0.b.x, 0i) >> (26909u % 32u), global3.x), ~2147483647i), 342f);
    global0 = array<Struct_1, 5>();
    var var_1 = Struct_1(~vec3<u32>(abs(~var_0.a.x), _wgslsmith_clamp_u32(var_0.a.x, var_0.a.x, global2[_wgslsmith_index_u32(~var_0.a.x, 31u)]), select(firstLeadingBit(var_0.a.x), 38581u, true)), var_0.b, -435f);
    return Struct_1(abs(var_1.a) ^ abs(~var_0.a), global4.b, _wgslsmith_div_f32(var_0.c, 117f));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> vec3<u32> {
    let var_0 = func_4(func_2());
    let var_1 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(false, true, true)), true, true), false), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), select(false, true, false)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false)), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), all(vec3<bool>(true, false, false)))), vec4<bool>(var_0.c < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -318f))), true, any(vec3<bool>(false, false, true)) == true, all(vec2<bool>(true, true))));
    global2 = array<u32, 31>();
    let var_2 = !vec4<bool>(var_1.x, var_1.x, false, select(var_1.x, false, !any(var_1.wz)));
    var var_3 = !vec3<bool>(var_1.x, var_2.x, any(!vec3<bool>(var_2.x, false, false)));
    return reverseBits(~(~_wgslsmith_clamp_vec3_u32(firstTrailingBit(var_0.a), abs(global4.a), func_2().a)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 31>();
    global4 = Struct_1(func_1(Struct_1(_wgslsmith_add_vec3_u32(global4.a, global4.a), global3.xyw, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global4.c, 496f), _wgslsmith_f_op_f32(max(global4.c, global4.c))))), vec4<f32>(global4.c, global4.c, _wgslsmith_f_op_f32(-528f - -472f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.c)) * global4.c)), global3.x), global4.b, 1543f);
    global0 = array<Struct_1, 5>();
    let var_0 = func_2();
    global2 = array<u32, 31>();
    let var_1 = -973f;
    global4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(global4.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(205f, -891f, var_0.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c, global4.c, var_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c, 1019f, -682f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global4.c, 607f, 518f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(734f, -354f, 380f) + vec3<f32>(global4.c, global4.c, 486f))))), _wgslsmith_f_op_f32(-var_1));
}

