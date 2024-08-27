struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 14>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> i32 {
    let var_0 = global0.c.x;
    var var_1 = Struct_1(reverseBits(global0.a), 1i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(global0.c)))));
    let var_2 = Struct_1(var_1.a, global0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c - vec4<f32>(-1119f, var_1.c.x, -565f, var_1.c.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_1.c))))));
    let var_3 = vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.d.x, 0u) >> (abs(u_input.d.x) % 32u)), u_input.d.x), 51502u, u_input.d.x);
    global0 = var_2;
    return -firstTrailingBit(_wgslsmith_dot_vec4_i32(min(vec4<i32>(global0.a.x, var_2.a.x, u_input.b, var_2.b), vec4<i32>(var_2.a.x, u_input.a.x, 0i, 0i)), vec4<i32>(31671i, 2147483647i, global0.a.x, var_1.a.x) >> (vec4<u32>(56302u, 70339u, var_3.x, var_3.x) % vec4<u32>(32u))) << (1u % 32u));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = all(vec4<bool>(-15533i == firstTrailingBit(global0.a.x), true, u_input.d.x < ~u_input.c, !(arg_0.c.x >= -1068f))) | true;
    global0 = arg_0;
    let var_1 = Struct_1(vec3<i32>(firstTrailingBit(func_3()), func_3(), _wgslsmith_add_i32(2147483647i & global0.a.x, ~1i)), -_wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 19876i, arg_0.b, u_input.a.x), vec4<i32>(1i, arg_0.b, -1i, 0i)), -(vec4<i32>(-18003i, 40277i, -23403i, 1i) << (vec4<u32>(u_input.d.x, u_input.c, 40996u, u_input.c) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.c, arg_0.c, vec4<bool>(false, true, false, false))))));
    global1 = array<Struct_2, 14>();
    let var_2 = global1[_wgslsmith_index_u32(0u, 14u)];
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~((var_2.b.x << (109330u % 32u)) | 29240u) & ~(~(~30655u)), u_input.d.x), 14u)];
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(Struct_1(global0.a, abs(23337i), global0.c));
    var_0 = func_2(Struct_1(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(-4349i, global0.b, var_0.a.a.x)), abs(_wgslsmith_div_vec3_i32(var_0.a.a, global0.a))), -13454i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1243f, -1523f, var_0.a.c.x, 1563f))))));
    let var_1 = Struct_1(_wgslsmith_mult_vec3_i32(global0.a, vec3<i32>(-1i) * -var_0.a.a), -11810i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.c))));
    var var_2 = !select(vec2<bool>(false, true), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), vec2<bool>(true, true));
    global0 = Struct_1(vec3<i32>(-16192i, var_0.a.a.x, -(i32(-1i) * -12020i)), select(_wgslsmith_add_i32(_wgslsmith_mult_i32(max(global0.b, 20825i), global0.a.x), _wgslsmith_sub_i32(21797i, u_input.b & u_input.a.x)), reverseBits(u_input.b), !any(!vec4<bool>(true, var_2.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, -2003f, -724f, global0.c.x)))));
    return func_2(Struct_1(-_wgslsmith_add_vec3_i32(var_0.a.a, vec3<i32>(0i, global0.b, var_1.b) ^ var_0.a.a), _wgslsmith_mod_i32(var_1.a.x, var_1.a.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(var_1.c.x, var_0.a.c.x), -268f, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-1360f + 807f)))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    global0 = func_1();
    global0 = func_2(Struct_1(select(-(vec3<i32>(-22132i, 1i, -2147483647i) | global0.a), vec3<i32>(_wgslsmith_add_i32(15618i, -1i), ~(-13268i), firstLeadingBit(global0.b)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), func_2(func_1()).a.b, vec4<f32>(global0.c.x, func_1().c.x, -639f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.c.x)))))).a;
    global1 = array<Struct_2, 14>();
    let var_1 = Struct_1(vec3<i32>(i32(-1i) * -u_input.b, ~(-2147483647i << (abs(var_0.x) % 32u)), global0.b), max(i32(-1i) * -2147483647i, _wgslsmith_div_i32(2147483647i, func_1().a.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -616f), _wgslsmith_f_op_f32(sign(global0.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, -779f, -1000f, global0.c.x)) - vec4<f32>(global0.c.x, 502f, global0.c.x, global0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1759f, 1000f, global0.c.x, 817f))))))));
    let var_2 = select(vec4<u32>(countOneBits(u_input.c), var_0.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.x, var_0.x), countOneBits(1626u)) >> (~263u % 32u), u_input.d.x), firstTrailingBit(~vec4<u32>(1460u, _wgslsmith_clamp_u32(0u, 20193u, var_0.x), u_input.c, u_input.d.x << (44563u % 32u))), !(!vec4<bool>(false, any(vec3<bool>(false, true, true)), u_input.b > -1i, true)));
    var var_3 = select(select(vec2<bool>(!all(vec3<bool>(true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), true))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), (35818u > _wgslsmith_mult_u32(4294967295u, var_2.x)) || (0i > func_1().a.x)), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, true, false))), vec2<bool>(false, true), vec2<bool>(true, all(vec4<bool>(false, true, false, false))))), (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, u_input.d.x) | var_2, func_2(Struct_1(vec3<i32>(var_1.b, 29974i, 10723i), global0.a.x, vec4<f32>(-520f, global0.c.x, 995f, 1858f))).b) != 1u) & true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.c, countOneBits(var_2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-771f, 1f)))));
}

