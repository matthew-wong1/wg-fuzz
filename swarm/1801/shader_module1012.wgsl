struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: array<vec2<bool>, 16>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    global1 = array<vec2<bool>, 16>();
    var var_0 = arg_0.a > _wgslsmith_mult_u32(0u ^ arg_0.a, 23988u);
    var_0 = -977f <= _wgslsmith_div_f32(1984f, global0[_wgslsmith_index_u32(26069u, 22u)]);
    global1 = array<vec2<bool>, 16>();
    var var_1 = Struct_1(_wgslsmith_div_u32(~(~0u), 1u), vec2<i32>(u_input.a, -_wgslsmith_add_i32(u_input.a, u_input.a)));
    return -var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> vec2<i32> {
    global1 = array<vec2<bool>, 16>();
    var var_0 = Struct_2(101087u);
    let var_1 = Struct_2(arg_0.a << (abs(abs(4294967295u)) % 32u));
    var var_2 = _wgslsmith_sub_i32(1i, select(-2147483647i, 17372i, true));
    let var_3 = Struct_2(~(~0u));
    return select(~vec2<i32>(arg_0.b.x, _wgslsmith_mod_i32(arg_0.b.x, _wgslsmith_mult_i32(0i, arg_2))), arg_0.b, false);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_u32(abs(arg_1.yyy), vec3<u32>(22058u, 45900u, arg_1.x)) & arg_0.x), _wgslsmith_mod_vec2_i32(func_4(Struct_1(_wgslsmith_mod_u32(arg_1.x, arg_1.x), func_3(Struct_2(32669u))), Struct_2(_wgslsmith_div_u32(1u, arg_1.x)), -1i), vec2<i32>(~(u_input.a | 2147483647i), -countOneBits(u_input.a))));
    let var_1 = 6354u;
    var_0 = Struct_1(0u, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(i32(-1i) * -3518i, 7317i), var_0.b.x), var_0.b));
    var var_2 = Struct_2((var_1 | var_1) | _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, var_0.a), arg_1.yx)), ~4294967295u >> (arg_1.x % 32u)));
    return _wgslsmith_mod_vec3_i32(vec3<i32>(-u_input.a, countOneBits(u_input.a), -abs(min(var_0.b.x, 1i))), vec3<i32>(-1i) * -vec3<i32>(u_input.a, ~(-22139i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, var_0.b.x, -52569i), vec3<i32>(-1i, 1i, -12387i))));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = ~(func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.a, arg_3.a), vec2<u32>(1u, arg_3.a)) & _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 36962u), vec2<u32>(arg_3.a, arg_3.a)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(19014u, arg_3.a, arg_3.a, 1u), vec4<u32>(arg_3.a, 85201u, 18609u, 11167u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1658f, -1291f, global0[_wgslsmith_index_u32(arg_3.a, 22u)], global0[_wgslsmith_index_u32(44868u, 22u)])))) << (_wgslsmith_div_vec3_u32(vec3<u32>(arg_3.a, 4294967295u, arg_3.a), ~(~vec3<u32>(arg_3.a, arg_3.a, 4294967295u))) % vec3<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(countOneBits(abs(abs(vec4<u32>(arg_3.a, 49883u, arg_3.a, 1u)))), (~vec4<u32>(19560u, 25364u, 98528u, 48269u) & max(vec4<u32>(arg_3.a, 39379u, arg_3.a, 1u), vec4<u32>(26102u, 4294967295u, arg_3.a, arg_3.a))) << (vec4<u32>(arg_3.a, _wgslsmith_div_u32(0u, arg_3.a), arg_3.a, abs(arg_3.a)) % vec4<u32>(32u))), -(var_0.zx | select(var_0.xz, var_0.yy, select(global1[_wgslsmith_index_u32(arg_3.a, 16u)], vec2<bool>(true, arg_1.x), vec2<bool>(false, false)))));
    var var_2 = Struct_2(var_1.a << (abs(max(arg_3.a, 0u)) % 32u));
    let var_3 = arg_3;
    global0 = array<f32, 22>();
    return ~vec4<u32>(var_2.a | (var_2.a >> (firstLeadingBit(var_3.a) % 32u)), select(~abs(var_1.a), _wgslsmith_mod_u32(arg_3.a, var_3.a) | reverseBits(var_3.a), true), _wgslsmith_div_u32(~arg_3.a, _wgslsmith_clamp_u32(var_2.a, var_3.a, 9675u)) ^ var_3.a, ~(countOneBits(1u) >> (_wgslsmith_add_u32(0u, arg_3.a) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(max(1u, 37518u));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(853f, -232f, true))))), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_1(1297f, global1[_wgslsmith_index_u32(var_0.a, 16u)], false, Struct_2(7574u)) ^ firstLeadingBit(vec4<u32>(4457u, var_0.a, 6185u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, var_0.a, 0u, 336u), ~vec4<u32>(0u, 1u, 24813u, 46834u))), 22u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(max(vec3<i32>(u_input.a, -1i, u_input.a) ^ vec3<i32>(u_input.a, 1i, 46429i), abs(vec3<i32>(u_input.a, -1i, -1i))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(var_0.a, 22u)], -1000f, 1629f, 1013f)))))));
}

