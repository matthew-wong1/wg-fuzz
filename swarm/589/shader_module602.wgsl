struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec3<f32>;

var<private> global2: vec3<f32> = vec3<f32>(-1157f, 1224f, 452f);

var<private> global3: i32;

var<private> global4: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(-358f, 1407f, -1642f, -1865f), vec4<f32>(1700f, -281f, 387f, -1000f), vec4<f32>(-1920f, -1164f, -393f, 1160f), vec4<f32>(205f, -1572f, 454f, 1000f), vec4<f32>(515f, 1605f, -135f, -1096f), vec4<f32>(-726f, -1000f, -1415f, 2061f), vec4<f32>(1000f, -540f, -1456f, 1415f), vec4<f32>(-2283f, 1336f, 1200f, 1277f), vec4<f32>(-698f, -927f, -864f, -1035f), vec4<f32>(-106f, 263f, -1274f, -954f), vec4<f32>(-1453f, 305f, -252f, -219f), vec4<f32>(312f, -1066f, -1112f, 536f), vec4<f32>(-1538f, 828f, -170f, -1055f), vec4<f32>(-1453f, -155f, -218f, 153f), vec4<f32>(-1000f, 1266f, 2167f, -462f), vec4<f32>(-1025f, -837f, -466f, 951f), vec4<f32>(1000f, 585f, -459f, 1000f), vec4<f32>(-548f, 320f, 291f, 805f), vec4<f32>(1545f, 337f, 572f, -971f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<u32>) -> vec3<u32> {
    return ~arg_2.xzz >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 0u, arg_2.x & (u_input.c.x << (arg_2.x % 32u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.x, u_input.a.x, arg_2.x), arg_2.xwx), vec3<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.d, arg_2.x), vec2<bool>(false, false)), arg_2.yw), 23279u)) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<bool>) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.a, func_3(vec4<f32>(-1048f, arg_1.x, global0.x, arg_1.x), -1i, reverseBits(vec4<u32>(arg_0.b.a, 0u, 31494u, u_input.c.x))) | vec3<u32>(u_input.a.x, 4294967295u, 0u)), ~vec2<i32>(u_input.b, arg_0.b.b.x), _wgslsmith_f_op_vec3_f32(arg_0.b.c - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.x, global1.x)) * arg_0.b.c))));
    var var_1 = select(select(!vec3<bool>(arg_2.x, true, !arg_2.x), select(vec3<bool>(all(vec3<bool>(true, arg_2.x, arg_2.x)), true, false), vec3<bool>(false, true, true), vec3<bool>(all(arg_2), true, !arg_2.x)), select(!(!vec3<bool>(true, arg_2.x, true)), vec3<bool>(true, arg_2.x || arg_2.x, true), all(!vec4<bool>(arg_2.x, arg_2.x, false, false)))), vec3<bool>(arg_2.x, true, false), arg_2.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(max(-712f, _wgslsmith_f_op_f32(ceil(global1.x)))))), 702f, global2.x));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global0.x, 168f), 426f, -1277f) - vec3<f32>(-269f, 701f, _wgslsmith_f_op_f32(var_0.c.x - 930f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_0.c.x, -800f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1433f, var_0.c.x, -504f) + vec3<f32>(785f, 567f, -279f)) - _wgslsmith_f_op_vec3_f32(floor(arg_0.b.c))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, 288f, -1455f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, global2.x, var_2.x), vec3<f32>(arg_0.b.c.x, global2.x, 215f))))))));
    var_2 = var_0.c;
    return arg_0.b.b >> ((u_input.c | _wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.a.xz, vec2<u32>(var_0.a, arg_0.b.a)), ~reverseBits(u_input.a.xz), _wgslsmith_div_vec2_u32(u_input.a.zz << (vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u)), u_input.c >> (vec2<u32>(4948u, 8910u) % vec2<u32>(32u))))) % vec2<u32>(32u));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    return Struct_1(u_input.a.x & select(~arg_0.x & (arg_0.x ^ 45767u), _wgslsmith_mult_u32(arg_0.x, firstLeadingBit(16475u)), ~0u >= (u_input.a.x << (u_input.c.x % 32u))), min(firstTrailingBit(func_2(Struct_2(vec3<i32>(u_input.b, 2147483647i, 1i), Struct_1(0u, vec2<i32>(0i, -49742i), vec3<f32>(global2.x, -1000f, -131f))), global4[_wgslsmith_index_u32(arg_0.x, 19u)], vec2<bool>(true, true)) ^ -vec2<i32>(u_input.b, u_input.b)), _wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.b, u_input.b) & vec2<i32>(0i, u_input.b), -vec2<i32>(u_input.b, -52991i), select(true, true, false)), -_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, 18213i)))), vec3<f32>(-2422f, _wgslsmith_f_op_f32(f32(-1f) * -333f), 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = abs(firstTrailingBit(15770i));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + global2.x), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(383f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1105f))))));
    var var_0 = ~_wgslsmith_mult_u32(~min(~0u, 4294967295u), ~u_input.a.x);
    let var_1 = _wgslsmith_clamp_i32(u_input.b, ~(u_input.b << (_wgslsmith_sub_u32(reverseBits(u_input.c.x), 39126u) % 32u)), i32(-1i) * -2147483647i);
    var var_2 = Struct_1(u_input.a.x, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, var_1) >> (_wgslsmith_div_vec2_u32(u_input.c, u_input.a.yx) % vec2<u32>(32u)), vec2<i32>(var_1, _wgslsmith_clamp_i32(-19899i, u_input.b, -40452i)), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(var_1, var_1)))) ^ -reverseBits(~vec2<i32>(u_input.b, 46572i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(305f, global1.x, 549f)) + vec3<f32>(global1.x, global0.x, 560f)))));
    let var_3 = func_1(u_input.a);
    let var_4 = vec2<bool>(!(var_2.a > _wgslsmith_sub_u32(min(4294967295u, u_input.d), u_input.d)), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), -var_2.b.x <= _wgslsmith_div_i32(u_input.b, -2147483647i))));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~0u);
}

