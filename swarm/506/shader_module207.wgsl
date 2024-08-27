struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = vec4<f32>(-1241f, _wgslsmith_f_op_f32(trunc(global1.b)), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.b))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -203f), _wgslsmith_f_op_f32(-global1.b))))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(~abs(vec4<u32>(0u, global1.a, u_input.a, 4294967295u))), _wgslsmith_add_vec4_u32(~min(vec4<u32>(37918u, 3941u, 2428u, u_input.a), vec4<u32>(4294967295u, 4294967295u, 1u, global1.a)), abs(vec4<u32>(global1.a, global1.a, u_input.a, 1u)) >> (select(vec4<u32>(global1.a, 120180u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 44045u, global1.a), global1.c) % vec4<u32>(32u)))), vec4<u32>(4294967295u & select(4294967295u, 0u & global1.a, true), ~57514u, global1.a, 0u | u_input.a)), 31u)];
    var var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.a, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(2791u, u_input.a, 1u), vec3<u32>(1u, 17130u, 4294967295u)))), _wgslsmith_sub_vec2_u32(vec2<u32>(27368u, 80759u), (_wgslsmith_sub_vec2_u32(vec2<u32>(global1.a, 4294967295u), vec2<u32>(var_1.a, 14809u)) << (vec2<u32>(1u, 11636u) % vec2<u32>(32u))) | _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_1.a), vec2<u32>(0u, 4294967295u)), vec2<u32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a, u_input.a), vec2<u32>(4294967295u, 44481u)))));
    var var_3 = vec3<bool>(true, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-6889i, 4601i), _wgslsmith_div_i32(0i, -1i), 1i), -select(vec3<i32>(0i, 16379i, 0i), vec3<i32>(-4724i, 11077i, 2147483647i), global1.c.xxw)) <= -20458i, !all(!vec2<bool>(global1.c.x, false)));
    let var_4 = ~(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.a, 1u, global1.a, global1.a), vec4<u32>(76985u, var_1.a, 65494u, 4294967295u), !var_1.c.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(26356u, var_1.a, 40933u, 21738u), vec4<u32>(4294967295u, 4294967295u, 0u, var_1.a)), min(vec4<u32>(u_input.a, 0u, var_1.a, var_1.a), vec4<u32>(var_1.a, 1u, global1.a, var_1.a)), reverseBits(vec4<u32>(var_1.a, 21441u, 0u, var_1.a)))) | countOneBits(1u | ~var_1.a));
    return ~1u;
}

fn func_2() -> Struct_1 {
    var var_0 = -2147483647i;
    var_0 = 1i;
    var var_1 = global1.c.x;
    let var_2 = !(!vec4<bool>(true, all(global1.c.wz), global1.c.x, !global1.c.x));
    var_1 = all(vec2<bool>(var_2.x, 26241i >= (1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, 16108u), vec2<u32>(4294967295u, 1u)) % 32u))));
    return Struct_1(_wgslsmith_div_u32(func_3(), ~func_3()), -2762f, var_2);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 31>();
    var var_0 = vec2<bool>(!global1.c.x, !all(arg_1.c.zw) || all(vec3<bool>(arg_1.c.x | global1.c.x, all(global1.c.yxz), true)));
    global1 = Struct_1(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(9991u, arg_1.a, u_input.a), vec3<u32>(u_input.a, 1u, 41562u)) | ~56863u, ~arg_1.a | 1u)), global1.b, arg_1.c);
    var var_1 = func_2();
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.a, ~(~min(var_1.a, ~u_input.a))), 31u)];
    return Struct_1(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b))), global1.b))), arg_1.c);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    return func_4(!arg_0.c.x, func_2());
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    global1 = func_1(Struct_1(_wgslsmith_clamp_u32(1u, 32060u, ~(~global1.a)), -581f, !func_4(false, func_4(false, global0[_wgslsmith_index_u32(16319u, 31u)])).c));
    var var_0 = Struct_1(14983u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1407f - global1.b) - 860f))), !select(!func_4(arg_1.c.x, global0[_wgslsmith_index_u32(4294967295u, 31u)]).c, vec4<bool>(arg_1.c.x, !global1.c.x, global1.c.x && global1.c.x, true), global1.c));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1033f + arg_1.b))), -1566f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(194f, var_0.b))), _wgslsmith_f_op_f32(-var_0.b)), arg_1.b));
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(arg_1.b - var_1.x) < global1.b;
    return Struct_1(~(~(5433u >> (_wgslsmith_mult_u32(32754u, var_2.a) % 32u))), -1736f, vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(1u, 0u)) > max(28008u, _wgslsmith_mult_u32(global1.a, 8130u)), arg_1.c.x, global1.c.x, arg_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(37984i, 1i, 0i)), func_1(global0[_wgslsmith_index_u32(~(~(~46399u)), 31u)]), ~vec4<u32>(func_2().a << (~u_input.a % 32u), _wgslsmith_sub_u32(u_input.a, 1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global1.a, u_input.a), vec3<u32>(global1.a, u_input.a, 18891u)), ~(~4294967295u)));
    let var_1 = _wgslsmith_add_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 47569u, ~4294967295u), ~vec3<u32>(global1.a, 17577u, var_0.a) | max(vec3<u32>(global1.a, 4294967295u, 38203u), vec3<u32>(var_0.a, u_input.a, u_input.a))), _wgslsmith_mod_vec3_u32(select(~vec3<u32>(4294967295u, u_input.a, 0u), vec3<u32>(34672u, 0u, 1u), true), ~(vec3<u32>(1u, 4294967295u, 48705u) | vec3<u32>(4294967295u, global1.a, 46964u))), global1.c.x), ~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 88548u), vec3<u32>(58364u, 2113u, _wgslsmith_div_u32(4294967295u, 1u))));
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(step(global1.b, _wgslsmith_div_f32(496f, global1.b))), _wgslsmith_f_op_f32(min(var_2.b, _wgslsmith_f_op_f32(global1.b - -142f))), -342f) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-657f, var_0.b, var_2.b, 475f), vec4<f32>(677f, global1.b, -1000f, global1.b), true)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1047f, _wgslsmith_f_op_f32(-318f - global1.b), _wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_f_op_f32(-var_0.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, 285f, global1.b, -922f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(736f, var_2.b, var_0.b, var_2.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-174f, -431f, -236f, var_2.b) + vec4<f32>(113f, 1384f, global1.b, var_2.b)))))));
    let var_4 = firstTrailingBit(firstTrailingBit(max(1i, _wgslsmith_sub_i32(-2147483647i, -2147483647i) << (var_1.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_div_i32(-var_4, -var_4) | firstTrailingBit(-38090i), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(41039i, 3818i, 10381i)), vec3<i32>(-23267i, i32(-1i) * -1i, 0i))), global1.b, 1223f);
}

