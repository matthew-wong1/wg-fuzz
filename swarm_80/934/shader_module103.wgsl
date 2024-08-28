struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<f32>, 2>;

var<private> global2: vec2<u32> = vec2<u32>(50017u, 1u);

var<private> global3: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> bool {
    global3 = Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(min(vec4<i32>(global3.b, global0.c.a.x, global0.b, global3.b), _wgslsmith_div_vec4_i32(global3.a.a, global3.c.a)), -global3.c.a), global0.a.b), i32(-1i) * -1i, Struct_1(select(countOneBits(-vec4<i32>(global3.c.a.x, 1i, global3.b, -2147483647i)), ~(~vec4<i32>(-1i, global0.b, global3.b, global0.c.a.x)), vec4<bool>(arg_0, global3.c.a.x >= -31392i, select(arg_0, arg_0, arg_0), all(vec4<bool>(arg_0, arg_0, arg_0, true)))), vec3<u32>(reverseBits(global3.c.b.x ^ global0.d.x), global2.x ^ global2.x, min(_wgslsmith_mod_u32(global3.c.b.x, global2.x), global3.d.x))), reverseBits(global0.a.b));
    var var_0 = select(global3.b, -firstTrailingBit(global0.b), arg_0);
    var var_1 = _wgslsmith_add_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(-33548i, global0.b), _wgslsmith_mult_i32(global0.a.a.x, 0i)) ^ global3.c.a.yy, _wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(global0.c.a.yy, vec2<i32>(31128i, global3.c.a.x)), global0.c.a.yw), global3.a.a.wx));
    global0 = Struct_2(Struct_1(~global3.c.a, vec3<u32>(u_input.b, ~(~1u), ~(~global2.x))), global3.a.a.x, Struct_1(~select(global0.c.a, _wgslsmith_add_vec4_i32(global0.a.a, vec4<i32>(-14938i, -49256i, var_1.x, var_1.x)), arg_0), firstLeadingBit(u_input.d)), ~(~(~_wgslsmith_div_vec3_u32(global0.a.b, vec3<u32>(1u, 19583u, global0.c.b.x)))));
    global1 = array<vec2<f32>, 2>();
    return arg_0;
}

fn func_2() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -677f);
    var var_1 = true;
    var var_2 = Struct_3(global2.x > global3.c.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(203f, 3462f, 594f, -1782f)) - vec4<f32>(474f, -863f, 1395f, 491f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1522f, -608f, -250f, 260f), vec4<f32>(-2897f, 1000f, -1383f, -358f))))));
    let var_3 = Struct_2(global0.c, i32(-1i) * -_wgslsmith_dot_vec3_i32(global0.c.a.zxw, vec3<i32>(-2147483647i, global3.a.a.x, 51755i)), global3.c, global0.a.b);
    var var_4 = Struct_3(func_3(!(!all(vec2<bool>(var_2.a, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1000f - -267f), 878f, _wgslsmith_f_op_f32(round(-324f)), 577f)))));
    return _wgslsmith_clamp_vec2_i32(~global3.c.a.wy, global3.c.a.wz, global0.a.a.wz);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = max(~firstTrailingBit(vec2<i32>(min(arg_0.x, global0.c.a.x), -15254i)), select(vec2<i32>(select(global3.b, -global0.a.a.x, arg_1.a), _wgslsmith_mult_i32(func_2().x, -2147483647i)), global3.a.a.yx, !(!func_3(arg_1.a))));
    global2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, ~0u), global3.a.b.xy, vec2<u32>(~1u, u_input.d.x));
    let var_1 = arg_1;
    global2 = max(vec2<u32>(max(66032u, ~(u_input.c << (u_input.b % 32u))), countOneBits(_wgslsmith_dot_vec3_u32(u_input.d, global3.d) | select(global2.x, 0u, arg_1.a))), ~u_input.d.xy);
    let var_2 = Struct_2(global3.a, -(global3.b << (global3.c.b.x % 32u)) & var_0.x, global3.c, ~global3.d);
    return Struct_2(Struct_1(countOneBits(var_2.a.a), _wgslsmith_mod_vec3_u32(vec3<u32>(~831u, 42857u, var_2.c.b.x), _wgslsmith_sub_vec3_u32(~vec3<u32>(9754u, 41411u, 4294967295u), reverseBits(u_input.d)))), global3.c.a.x, Struct_1(var_2.c.a ^ vec4<i32>(firstTrailingBit(var_2.a.a.x), var_0.x, ~var_2.a.a.x, var_2.c.a.x), _wgslsmith_div_vec3_u32(~u_input.d >> (abs(vec3<u32>(21251u, global0.c.b.x, 1u)) % vec3<u32>(32u)), u_input.d)), countOneBits(u_input.d));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = select(select(vec2<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(false, true, true))), vec2<bool>(false, any(vec3<bool>(true, true, true)) && true), true), vec2<bool>(true, true), (false | any(vec2<bool>(true, true))) & any(vec2<bool>(true, true)));
    let var_1 = func_4(func_2(), Struct_3(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-168f, -1984f, 568f, 346f) * vec4<f32>(_wgslsmith_div_f32(-573f, -915f), 1618f, 1f, 204f))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1849f - -102f) * -1240f), _wgslsmith_f_op_f32(f32(-1f) * -723f)))), 173f);
    let var_3 = global0.b;
    var var_4 = _wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(~4294967295u, 2u)], global1[_wgslsmith_index_u32(global0.a.b.x, 2u)]);
    return _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1169f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1123f), var_4.x)))), var_4.x)));
}

fn func_5(arg_0: u32, arg_1: f32) -> Struct_2 {
    global2 = countOneBits(vec2<u32>(1u, ~(global3.d.x << (countOneBits(1u) % 32u))));
    var var_0 = 481f;
    global0 = Struct_2(Struct_1(global3.c.a, _wgslsmith_add_vec3_u32(~vec3<u32>(63871u, arg_0, global2.x), global0.c.b)), firstLeadingBit(2147483647i) >> (1u % 32u), func_4(global0.c.a.yx, Struct_3(all(vec2<bool>(true, true)), vec4<f32>(_wgslsmith_f_op_f32(select(arg_1, arg_1, true)), arg_1, arg_1, 235f))).a, firstLeadingBit(vec3<u32>(select(global2.x, reverseBits(arg_0), arg_1 >= arg_1), 27624u, 1u)));
    let var_1 = func_4(~abs(_wgslsmith_add_vec2_i32(select(vec2<i32>(1i, 29916i), vec2<i32>(0i, global0.b), false), global3.a.a.zy)), Struct_3(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1709f, _wgslsmith_f_op_f32(trunc(1184f)), _wgslsmith_f_op_f32(arg_1 * arg_1), -282f))));
    var var_2 = var_1.c;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 2>();
    global2 = ~global3.d.xz;
    global3 = Struct_2(global0.c, _wgslsmith_add_i32(-firstTrailingBit(_wgslsmith_add_i32(global3.b, -1i)), -68045i), Struct_1(global0.a.a, vec3<u32>(global2.x, 11626u, global3.d.x)), _wgslsmith_div_vec3_u32(vec3<u32>(25651u, 68791u, ~(global0.d.x ^ global2.x)), vec3<u32>(min(~u_input.d.x, 8637u), reverseBits(global0.a.b.x), 42406u)));
    global1 = array<vec2<f32>, 2>();
    let var_0 = func_5(global0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~vec4<u32>(20604u, 25938u, 25409u, global0.c.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-466f, -149f, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.d.zz, _wgslsmith_dot_vec4_u32(max(~firstTrailingBit(vec4<u32>(14784u, global0.d.x, global2.x, global3.d.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(global2.x, global3.a.b.x, 70658u, 1u), vec4<u32>(31784u, 1u, 4294967295u, 0u))), vec4<u32>(1u, 0u, ~1u, max(14111u, 4294967295u))), vec2<u32>(min(~var_0.c.b.x, func_5(global2.x, -732f).a.b.x), global3.a.b.x) & firstLeadingBit(func_4(vec2<i32>(1i, var_0.a.a.x), Struct_3(false, vec4<f32>(710f, 374f, 1299f, 508f))).d.zy & global3.a.b.yz));
}

