struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

var<private> global1: f32;

var<private> global2: Struct_1;

var<private> global3: array<bool, 17> = array<bool, 17>(false, true, false, true, true, true, false, true, false, true, false, true, false, false, false, true, false);

var<private> global4: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_3(!all(!(!vec2<bool>(arg_0.a.d, global3[_wgslsmith_index_u32(1u, 17u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, arg_0.a.b.x)))), Struct_2(Struct_1(~(-arg_0.c.zy), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-242f, global2.b.x, global2.b.x, 1145f) * global2.b))), true, true), _wgslsmith_f_op_vec4_f32(-global2.b), select(_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_0.a.a.x, -23371i, arg_0.a.a.x), arg_0.c), arg_0.c, global2.c)));
    let var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_f32(abs(785f));
    var var_3 = ~countOneBits(vec4<u32>(_wgslsmith_sub_u32(~38198u, abs(26228u)), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, 3058u), 87816u), max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, 64291u)), _wgslsmith_div_u32(u_input.a, 1u)), u_input.a));
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1612f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1942f * var_1.b.x) + _wgslsmith_f_op_f32(floor(global2.b.x)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    let var_0 = arg_0;
    var var_1 = var_0.b.c;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b.a.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-561f, var_0.b.a.b.x)) + arg_0.b.a.b.x) - 583f)));
    var_1 = _wgslsmith_mult_vec3_i32(var_0.b.c, _wgslsmith_sub_vec3_i32(vec3<i32>(12587i | _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.c.x, var_0.b.a.a.x, var_1.x, -9556i), vec4<i32>(17242i, var_0.b.c.x, 2147483647i, global2.a.x)), -55042i, 0i), -(vec3<i32>(var_1.x, -24215i, arg_0.b.a.a.x) << (min(vec3<u32>(u_input.a, u_input.a, 3502u), vec3<u32>(u_input.a, 4294967295u, 2063u)) % vec3<u32>(32u)))));
    global4 = ~var_1.x & _wgslsmith_mult_i32(arg_0.b.a.a.x, firstLeadingBit(-arg_0.a));
    return ~abs(55915i);
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    global0 = array<vec4<bool>, 12>();
    global1 = _wgslsmith_f_op_f32(-global2.b.x);
    global2 = arg_3;
    global3 = array<bool, 17>();
    let var_0 = 59108u < u_input.a;
    return Struct_2(arg_3, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_3.b.x, arg_0, _wgslsmith_f_op_f32(567f + global2.b.x))), countOneBits(select(_wgslsmith_mult_vec3_i32(vec3<i32>(global2.a.x, -2147483647i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(-3337i, 0i, arg_3.a.x), arg_1.wxz)), -arg_1.wxx | vec3<i32>(arg_1.x, global2.a.x, -6681i), true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<i32>) -> Struct_1 {
    global3 = array<bool, 17>();
    global3 = array<bool, 17>();
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.b.x))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, 1588f) * _wgslsmith_f_op_f32(-171f + -208f))), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(24124i, arg_2.x), max(arg_0.a.x, global2.a.x), -36161i, i32(-1i) * -1i), ~arg_2)), false, Struct_1(global2.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(125f, arg_0.b.x)), _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(global2.a, vec4<f32>(arg_1.x, 1000f, -1085f, global2.b.x), false, global3[_wgslsmith_index_u32(u_input.a, 17u)]), arg_0.b, vec3<i32>(-14695i, 4198i, -2147483647i)))), _wgslsmith_f_op_f32(min(-1629f, 1764f)), 224f), func_3(Struct_4(arg_0.a.x, Struct_2(Struct_1(vec2<i32>(1i, -1i), vec4<f32>(global2.b.x, arg_1.x, 1069f, -798f), false, global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<f32>(global2.b.x, -570f, 1595f, 1260f), vec3<i32>(arg_2.x, -2147483647i, arg_2.x)))) > 31257i, global2.c));
    var var_1 = Struct_3(global2.d, _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1665f))))), func_4(_wgslsmith_f_op_f32(floor(-153f)), vec4<i32>(-1i) * -arg_2, true, Struct_1(~(var_0.a.a >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_0.b.x, var_0.a.b.x, global2.b.x))), arg_0.d, var_0.a.d)));
    global0 = array<vec4<bool>, 12>();
    return Struct_1(vec2<i32>(func_3(Struct_4(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_2.x, -1i), var_1.c.c), var_1.c)), ~26687i), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * _wgslsmith_f_op_f32(trunc(1730f))), 1f, global2.b.x, var_1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global2.b.x, -2491f)), _wgslsmith_f_op_f32(var_1.c.a.b.x + var_0.b.x), 2215f, arg_0.b.x) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b.x, 1160f, global2.b.x, -197f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-858f, global2.b.x, global2.b.x, arg_0.b.x) - vec4<f32>(-852f, arg_0.b.x, var_0.b.x, arg_0.b.x))))))), false, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a.x;
    var var_1 = Struct_3(~u_input.a >= ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 53676u, 1u), vec4<u32>(u_input.a, 1u, 84566u, u_input.a))), -692f, Struct_2(func_1(Struct_1(select(vec2<i32>(global2.a.x, global2.a.x), vec2<i32>(global2.a.x, global2.a.x), vec2<bool>(false, global3[_wgslsmith_index_u32(8197u, 17u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x)), global2.d, global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec2<f32>(_wgslsmith_div_f32(global2.b.x, 704f), _wgslsmith_div_f32(-1637f, 560f)), vec4<i32>(global2.a.x | global2.a.x, countOneBits(1i), 0i, countOneBits(-1i))), vec4<f32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x), vec3<i32>(~(-5965i) >> (~u_input.a % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, global2.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(667i, global2.a.x, -1i), vec3<i32>(-12408i, global2.a.x, global2.a.x))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(49968i, global2.a.x), reverseBits(2147483647i)))));
    let var_2 = !vec3<bool>(true, var_1.c.a.b.x < 498f, any(select(!vec3<bool>(false, global2.d, true), vec3<bool>(true, var_1.a, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(min(~vec4<i32>(-29980i, var_1.c.c.x, 1i, var_1.c.c.x), -vec4<i32>(global2.a.x, global2.a.x, var_1.c.c.x, var_1.c.a.a.x)), select(~vec4<i32>(global2.a.x, global2.a.x, 0i, global2.a.x), ~vec4<i32>(var_1.c.a.a.x, -41995i, var_1.c.a.a.x, 1i), !vec4<bool>(true, false, global3[_wgslsmith_index_u32(0u, 17u)], var_1.a))), vec4<i32>(-5426i & global2.a.x, _wgslsmith_dot_vec3_i32(var_1.c.c, vec3<i32>(global2.a.x, global2.a.x, global2.a.x)), abs(global2.a.x), countOneBits(global2.a.x)) >> (vec4<u32>(1u, ~1u, 0u, ~u_input.a) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(143f)) - func_1(var_1.c.a, global2.b.yx, vec4<i32>(1i, -2022i, -1i, 10224i)).b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)))), firstTrailingBit(-vec3<i32>(global2.a.x, var_1.c.a.a.x, 4410i << (u_input.a % 32u))));
}

