struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
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

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true));

var<private> global1: u32;

var<private> global2: vec4<f32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>) -> u32 {
    global1 = countOneBits(arg_0.x);
    global2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(global2.x)), global2.x != -1313f)) * _wgslsmith_f_op_f32(ceil(280f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-638f + 937f), 191f))), -874f, global2.x);
    let var_0 = vec2<bool>(u_input.a > arg_0.x, !(!all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true))));
    var var_1 = Struct_2(var_0.x, _wgslsmith_mult_i32(-1i, -u_input.c));
    let var_2 = false;
    return _wgslsmith_sub_u32(0u, ~1u << (_wgslsmith_dot_vec3_u32(arg_0.yxy ^ arg_0.wwx, reverseBits(_wgslsmith_mod_vec3_u32(arg_0.wzy, arg_0.zxx))) % 32u));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = ~vec3<u32>(firstTrailingBit(1u), _wgslsmith_clamp_u32(~(55843u ^ arg_0.x), _wgslsmith_mult_u32(arg_0.x, 42696u), u_input.a), 1u);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1394f - global2.x) - global2.x), true))));
    let var_2 = !select(!(!(!vec3<bool>(arg_3.a, false, false))), !vec3<bool>(-1146f <= global2.x, all(vec4<bool>(false, arg_3.a, false, true)), true), true);
    global1 = func_3(~((_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 58290u, arg_0.x), vec4<u32>(arg_0.x, 42871u, arg_0.x, var_0.x)) >> (vec4<u32>(1u, 92449u, u_input.a, u_input.a) % vec4<u32>(32u))) & select(abs(vec4<u32>(97237u, 1u, arg_1, var_0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.x, 45301u, 1u), vec4<u32>(arg_1, 0u, u_input.a, arg_0.x)), select(vec4<bool>(true, arg_3.a, arg_2.a, arg_2.a), vec4<bool>(false, true, arg_3.a, true), vec4<bool>(false, arg_2.a, var_2.x, false)))), ~vec3<i32>(-countOneBits(-31688i), u_input.c | ~(-33717i), u_input.b.x));
    var var_3 = -2147483647i;
    return reverseBits(~vec2<i32>(-18188i, _wgslsmith_dot_vec3_i32(vec3<i32>(2676i, 17793i, u_input.c), u_input.b.wxz)));
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 11>();
    var var_0 = Struct_4(vec3<i32>(u_input.c, 2147483647i, _wgslsmith_add_i32(-1i, _wgslsmith_clamp_i32(u_input.b.x, 55374i, u_input.c)) ^ u_input.b.x), 1049u);
    global1 = u_input.a;
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.yz ^ var_0.a.zx, func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_0.b) >> (vec2<u32>(var_0.b, 81907u) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 455u)), 0u, Struct_3(all(vec4<bool>(true, true, false, true))), global0[_wgslsmith_index_u32(func_3(vec4<u32>(var_0.b, u_input.a, u_input.a, 4294967295u), -u_input.b.xxy), 11u)])), var_0.a.yx);
    return _wgslsmith_f_op_f32(round(-1966f));
}

fn func_1() -> bool {
    var var_0 = u_input.a;
    global2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, global2.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -826f)))), global2.x)));
    var_0 = countOneBits(~0u);
    var var_1 = Struct_3(true);
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 11u)];
    return _wgslsmith_add_i32(reverseBits(~(~u_input.c)), (-1i << (u_input.a % 32u)) & 13643i) == u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.zyw;
    let var_1 = select(!vec3<bool>(any(vec2<bool>(true, true)), true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false), select(vec3<bool>(!func_1(), true, false), vec3<bool>(true, false, true), vec3<bool>(any(vec2<bool>(false, true)), ~u_input.a >= u_input.a, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false)))));
    let var_2 = global0[_wgslsmith_index_u32(~u_input.a >> (u_input.a % 32u), 11u)];
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2140f - var_0.x) - var_0.x), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(698f + 267f), global2.x != global2.x)), var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -550f, -139f, var_0.x) - _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 1403f, global2.x, global2.x), vec4<f32>(159f, -916f, global2.x, global2.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global2.x)))), var_0.x, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    let var_3 = select(abs(vec2<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a) | (vec2<u32>(40493u, u_input.a) & vec2<u32>(1u, 1u))), select(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(3794u, 9620u)), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(31011u, 37868u), vec2<u32>(u_input.a, u_input.a)))), ~(~firstLeadingBit(vec2<u32>(374u, 0u))), select(var_1.zz, vec2<bool>(var_2.a, false), vec2<bool>(true, var_1.x == var_1.x))), false);
    let var_4 = abs(25703u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 30398u, var_3.x), firstTrailingBit(select(~vec3<u32>(var_3.x, var_3.x, 96608u), countOneBits(vec3<u32>(u_input.a, var_3.x, u_input.a)), true))) % 32u);
    let var_5 = Struct_3(true);
    let x = u_input.a;
    s_output = StorageBuffer(37029u);
}

