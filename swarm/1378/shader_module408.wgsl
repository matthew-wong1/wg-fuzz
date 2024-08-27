struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24>;

var<private> global1: array<Struct_1, 14>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(1u, 32127u, 0u, 11320u), vec3<u32>(0u, 33033u, 30870u), vec3<u32>(46976u, 0u, 4294967295u), vec2<bool>(true, true), 16112i);

var<private> global3: i32 = i32(-2147483648);

var<private> global4: array<Struct_1, 18>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> vec3<i32> {
    let var_0 = global4[_wgslsmith_index_u32(u_input.a, 18u)];
    return vec3<i32>(-2147483647i, 1i, 20913i);
}

fn func_3() -> bool {
    let var_0 = vec2<bool>(global2.d.x, !select(global2.d.x, global2.d.x || true, global2.d.x || global2.d.x) && global2.d.x);
    global4 = array<Struct_1, 18>();
    var var_1 = Struct_1(~global2.a, reverseBits(vec3<u32>(4294967295u, ~_wgslsmith_clamp_u32(1u, 36907u, global2.b.x), 144219u)), ~firstLeadingBit(vec3<u32>(select(0u, u_input.a, var_0.x), 4294967295u, max(99964u, 21424u))), select(select(select(select(vec2<bool>(global2.d.x, var_0.x), var_0, var_0.x), !global2.d, !global2.d), !global2.d, vec2<bool>(true, var_0.x)), select(select(!var_0, !global2.d, select(vec2<bool>(false, true), global2.d, true)), vec2<bool>(true, true), !(!vec2<bool>(global2.d.x, global2.d.x))), any(vec2<bool>(u_input.a > global2.a.x, var_0.x))), ~(-56747i));
    var var_2 = global4[_wgslsmith_index_u32(~_wgslsmith_add_u32((74336u & _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, u_input.a, var_1.b.x, 1u), var_1.a)) ^ _wgslsmith_clamp_u32(30652u, u_input.a, firstTrailingBit(global2.b.x)), abs(10329u)), 18u)];
    let var_3 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_u32(global2.a, _wgslsmith_div_vec4_u32(~vec4<u32>(global2.a.x, 56990u, u_input.a, 37466u), ~var_2.a))), vec3<u32>(abs(1u) | select(16849u >> (u_input.a % 32u), var_1.c.x, any(vec3<bool>(false, false, var_1.d.x))), countOneBits(global2.c.x), select(77680u, 4294967295u, var_2.d.x) & u_input.a), ~_wgslsmith_add_vec3_u32(var_1.a.xxz & firstLeadingBit(vec3<u32>(var_2.c.x, var_1.b.x, 0u)), var_1.b), var_1.d, ~(~(~max(-1i, -2147483647i))));
    return func_1().x >= countOneBits(max(var_3.e, var_2.e));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    let var_0 = global4[_wgslsmith_index_u32(u_input.a, 18u)];
    let var_1 = Struct_1(vec4<u32>(~1u, arg_0.b.x, var_0.a.x, 922u), global2.b, arg_0.a.yxz, select(vec2<bool>(var_0.d.x, !func_3()), !(!var_0.d), select(!(!var_0.d), !arg_0.d, global2.d)), func_1().x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(~17716u, 24u)])));
    global3 = var_1.e;
    var var_3 = vec3<i32>(-firstLeadingBit(0i), -50821i, ~(-1i));
    return _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-var_0.e, var_1.e), _wgslsmith_clamp_i32(var_3.x, reverseBits(-49073i), var_0.e)), ~9606i, ~arg_1), ~_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -31023i, 9096i) << (vec3<u32>(arg_0.a.x, 59418u, u_input.a) % vec3<u32>(32u)), ~vec3<i32>(-35133i, -2147483647i, -1i)), vec3<i32>(arg_1 & arg_0.e, -1i, arg_0.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 14>();
    global2 = global4[_wgslsmith_index_u32(4294967295u, 18u)];
    let var_0 = countOneBits(global2.e ^ (-5155i & _wgslsmith_mod_i32(countOneBits(0i), global2.e)));
    var var_1 = abs(~(func_1() ^ func_2(Struct_1(vec4<u32>(0u, global2.a.x, u_input.a, u_input.a), vec3<u32>(34390u, u_input.a, 57988u), vec3<u32>(u_input.a, 4294967295u, global2.a.x), vec2<bool>(false, global2.d.x), global2.e), ~global2.e)));
    var_1 = vec3<i32>(var_0, _wgslsmith_clamp_i32(func_2(Struct_1(global2.a, vec3<u32>(0u, 4294967295u, 1510u), ~vec3<u32>(global2.a.x, global2.a.x, 1u), global2.d, ~var_1.x), func_1().x).x, min(-40916i, 0i), _wgslsmith_mult_i32(-(~1i), var_1.x)), 11390i);
    let var_2 = ~(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.a.x), vec2<u32>(u_input.a, 1u))) & u_input.a);
    global2 = Struct_1(countOneBits(reverseBits(global2.a)), ~_wgslsmith_div_vec3_u32(firstTrailingBit(~global2.a.xyz), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 46043u, var_2), vec3<u32>(global2.a.x, u_input.a, u_input.a) | vec3<u32>(global2.b.x, u_input.a, 0u))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(firstLeadingBit(var_2), u_input.a | 4294967295u), 0u, u_input.a), abs(~vec3<u32>(u_input.a, var_2, 1u))), vec2<bool>(global2.d.x, global2.d.x), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(184f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-490f, 993f) + vec2<f32>(1019f, -345f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-169f, -1771f) + vec2<f32>(2035f, -1000f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2426f, -1672f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1281f, 379f))))))));
}

