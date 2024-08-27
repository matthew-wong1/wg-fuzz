struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 10>;

var<private> global2: f32;

var<private> global3: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = vec3<bool>(arg_0.c, !(!any(vec4<bool>(arg_2.c, false, false, arg_2.c)) || true), arg_3.c);
    global2 = 1000f;
    let var_1 = ~(firstTrailingBit(u_input.a) >> (u_input.a % vec4<u32>(32u))) ^ firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.d.x, u_input.a.x, u_input.a.x, arg_0.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.d.x, arg_3.d.x, u_input.a.x, 4294967295u), u_input.a)), ~(~u_input.a)));
    let var_2 = any(vec4<bool>(true, (_wgslsmith_f_op_f32(select(arg_1, arg_1, true)) <= _wgslsmith_f_op_f32(arg_3.b.x * 1000f)) != true, all(vec3<bool>(arg_3.c, -2147483647i >= arg_3.e, arg_0.c)), true));
    var var_3 = u_input.b;
    return arg_2.c;
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = u_input.a.wwx;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, 583f, 1355f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_2.b)) - _wgslsmith_f_op_vec3_f32(-arg_2.b))))), false, firstLeadingBit(_wgslsmith_mod_vec2_u32(u_input.a.yy, ~arg_2.d)), 2147483647i);
    let var_2 = ~arg_2.d.x;
    var var_3 = ~abs(vec4<i32>(-arg_1, _wgslsmith_sub_i32(global0.x, 10489i) & 13058i, -(i32(-1i) * -1i), _wgslsmith_sub_i32(firstTrailingBit(arg_2.e), -var_1.e)));
    var var_4 = var_1;
    return _wgslsmith_add_i32(global0.x, arg_2.e);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> i32 {
    global0 = ~vec3<i32>(~(~(0i << (0u % 32u))), _wgslsmith_add_i32(arg_0.x, func_3(_wgslsmith_div_vec3_f32(vec3<f32>(234f, -734f, 599f), vec3<f32>(-588f, arg_1.x, -975f)), reverseBits(arg_0.x), global1[_wgslsmith_index_u32(~11114u, 10u)])), i32(-1i) * -2147483647i);
    var var_0 = global1[_wgslsmith_index_u32(abs(arg_2), 10u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1296f), _wgslsmith_f_op_vec3_f32(step(var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b - var_0.b) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, 1000f) + vec3<f32>(var_0.a, 198f, -490f)))))), _wgslsmith_f_op_f32(-arg_1.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_0.b.x))))), min(u_input.a.zw, ~var_0.d ^ vec2<u32>(firstTrailingBit(4294967295u), _wgslsmith_mod_u32(u_input.a.x, 35643u))), i32(-1i) * -36759i);
    var var_2 = var_1;
    var var_3 = select(vec2<bool>(!(!arg_3), var_2.c), select(select(!(!vec2<bool>(var_0.c, false)), select(select(vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, var_1.c), false), !vec2<bool>(var_0.c, arg_3), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(var_0.c, false, true, var_1.c)), false)), vec2<bool>(!select(true, true, false), 1049f <= _wgslsmith_div_f32(var_2.a, arg_1.x)), any(vec2<bool>(!var_0.c, true))), arg_3);
    return ~2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(47331u, 10u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1196f + -1192f)), var_0.a, var_0.b.x, _wgslsmith_f_op_f32(trunc(-1133f)))));
    let var_2 = var_0.d;
    var_0 = Struct_1(_wgslsmith_f_op_f32(var_1.x + 625f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.xzw * vec3<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(470f - -1000f), _wgslsmith_div_f32(var_1.x, 702f)))), !any(vec3<bool>(func_1(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], var_0.b.x, Struct_1(1385f, var_0.b, true, vec2<u32>(u_input.a.x, 10150u), 7183i), Struct_1(var_0.a, vec3<f32>(318f, 1000f, 554f), false, vec2<u32>(0u, var_2.x), u_input.b.x)), false, true)), vec2<u32>(var_0.d.x, 4294967295u), select(func_2(vec4<i32>(-11203i, global0.x, -38664i, global0.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, -1000f))), var_0.d.x >> (u_input.a.x % 32u), true) | _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(52383i, global0.x)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, global0.x), vec2<i32>(u_input.b.x, var_0.e))), 1i, (40092u > u_input.a.x) || true));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, var_2.x ^ _wgslsmith_clamp_u32(var_0.d.x, ~abs(u_input.a.x), var_2.x << (43550u % 32u)), 4294967295u), 10u)];
    var_0 = global1[_wgslsmith_index_u32(var_3.d.x << (reverseBits(~(~firstTrailingBit(4294967295u))) % 32u), 10u)];
    global2 = -808f;
    var var_4 = vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(countOneBits(u_input.b.zz)), abs(global0.yz << (vec2<u32>(1010u, 1u) % vec2<u32>(32u)))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2630i, 1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, var_3.e, -2147483647i) << (vec4<u32>(4294967295u, var_3.d.x, 25958u, var_3.d.x) % vec4<u32>(32u)), -vec4<i32>(15346i, 1i, var_0.e, 1i))), -1948i, -u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.d.x, var_3.d.x, var_3.d.x), u_input.a.zwx), var_0.d.x), u_input.a.xyw) >> (u_input.a.xxz % vec3<u32>(32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(trunc(var_3.a)))), 814f)));
}

