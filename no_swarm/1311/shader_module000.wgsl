struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, false), vec3<f32>(-1000f, -1973f, 124f), true, vec2<i32>(2147483647i, 525i));

var<private> global1: array<vec3<bool>, 6>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: bool, arg_3: i32) -> vec2<i32> {
    var var_0 = ~67098u;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, 1842f), arg_1, global0.a.zx)), _wgslsmith_f_op_vec2_f32(max(global0.b.yx, arg_1)))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, _wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -290f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.b.yz * vec2<f32>(-786f, -1070f)))))), arg_2));
    let var_2 = Struct_1(vec3<bool>(any(select(select(global0.a.zx, vec2<bool>(arg_2, global0.c), vec2<bool>(true, global0.c)), select(global0.a.zy, vec2<bool>(true, global0.a.x), vec2<bool>(false, arg_2)), any(global0.a.yy))), select(u_input.b.x, i32(-1i) * -1489i, true) > (max(u_input.b.x, 30441i) << (~4294967295u % 32u)), select((u_input.a.x ^ 0u) > u_input.a.x, arg_2, false)), _wgslsmith_f_op_vec3_f32(global0.b + global0.b), arg_2, firstLeadingBit(select(global0.d, u_input.b << (select(vec2<u32>(94187u, 4294967295u), u_input.a.zx, global0.c) % vec2<u32>(32u)), true)));
    var var_3 = ~(19008i & firstLeadingBit(~(var_2.d.x >> (u_input.a.x % 32u))));
    var var_4 = firstLeadingBit(u_input.a);
    return ~_wgslsmith_mod_vec2_i32(~global0.d, ~(vec2<i32>(global0.d.x, global0.d.x) << (~vec2<u32>(var_4.x, 1u) % vec2<u32>(32u))));
}

fn func_2() -> vec3<bool> {
    global0 = Struct_1(vec3<bool>(global0.a.x, true, false), global0.b, all(vec3<bool>(any(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 6u)]), all(vec2<bool>(false, false)), false)), _wgslsmith_mod_vec2_i32(u_input.b, -func_3(_wgslsmith_f_op_f32(step(-212f, -918f)), vec2<f32>(1857f, global0.b.x), false, _wgslsmith_add_i32(u_input.b.x, u_input.b.x))));
    global0 = Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(-229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b.x))), -1000f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.b, global0.b, vec3<bool>(global0.a.x, global0.c, false)))))), false, _wgslsmith_clamp_vec2_i32(firstLeadingBit(abs(global0.d)), -u_input.b, countOneBits(vec2<i32>(-2147483647i, 1i))) & vec2<i32>(-1i, 0i));
    let var_0 = Struct_1(select(select(select(global0.a, vec3<bool>(global0.c, true, false), select(vec3<bool>(global0.a.x, true, global0.c), vec3<bool>(true, global0.c, true), vec3<bool>(global0.c, global0.a.x, global0.a.x))), vec3<bool>(true, global0.c, any(global0.a.yx)), select(global1[_wgslsmith_index_u32(63060u, 6u)], global1[_wgslsmith_index_u32(abs(13958u), 6u)], select(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], vec3<bool>(true, global0.c, global0.c), vec3<bool>(false, global0.c, global0.c)))), select(select(vec3<bool>(global0.c, global0.a.x, global0.c), global0.a, vec3<bool>(false, false, global0.a.x)), !(!global1[_wgslsmith_index_u32(41151u, 6u)]), global0.a.x), !(!(global0.c || global0.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_div_f32(global0.b.x, -472f), _wgslsmith_f_op_f32(global0.b.x * global0.b.x)))), (-45107i & (global0.d.x | u_input.b.x)) <= ~(~1i), reverseBits(vec2<i32>(u_input.b.x, 1i)));
    let var_1 = var_0;
    let var_2 = var_0;
    return vec3<bool>(global0.a.x, true, global0.c);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(select(select(!global0.a, func_2(), vec3<bool>(false, global0.c, global0.c)), global1[_wgslsmith_index_u32(arg_1.x, 6u)], !global1[_wgslsmith_index_u32(~arg_2.x, 6u)]), _wgslsmith_f_op_vec3_f32(max(global0.b, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(global0.b.x, global0.b.x, 451f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, -370f, global0.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, -1000f, global0.b.x) * _wgslsmith_div_vec3_f32(global0.b, global0.b))))), false, func_3(566f, global0.b.xy, false, max(~arg_0, 2147483647i)));
    var var_1 = !select(vec4<bool>(!global0.c, true, true, ~6875u >= u_input.a.x), vec4<bool>(false, !any(vec4<bool>(false, var_0.c, false, false)), (1000f <= var_0.b.x) & (false | var_0.c), true), false);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1480f), _wgslsmith_f_op_f32(-var_0.b.x), global0.b.x)))));
    let var_3 = (vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.d.x, u_input.b.x), vec3<i32>(var_0.d.x, u_input.b.x, var_0.d.x)) >> (max(3270u, u_input.a.x) % 32u), -global0.d.x, ~(i32(-1i) * -26259i), 0i & arg_0) & _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -43338i), var_0.d), global0.d.x << (0u % 32u), countOneBits(-35633i), var_0.d.x), ~countOneBits(vec4<i32>(u_input.b.x, -35077i, arg_0, 28588i)))) >> (_wgslsmith_add_vec4_u32(u_input.a, ~vec4<u32>(arg_2.x, 0u, ~4294967295u, 4294967295u)) % vec4<u32>(32u));
    var var_4 = firstTrailingBit(vec4<u32>(u_input.a.x, 26952u, 0u, _wgslsmith_dot_vec2_u32(arg_2.zx << (~vec2<u32>(arg_1.x, 60709u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(6059u, arg_2.x), vec2<u32>(u_input.a.x, arg_2.x)) & vec2<u32>(arg_1.x, 19295u))));
    return Struct_1(var_1.wzy, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.b.x, var_2.x), global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1069f - 601f) + _wgslsmith_div_f32(global0.b.x, 1396f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))))), global0.c, vec2<i32>(0i, reverseBits(11423i)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_0;
    let var_0 = vec4<bool>(reverseBits(max(global0.d.x, ~arg_0.d.x)) < (i32(-1i) * -8632i), !(!all(vec3<bool>(true, global0.c, arg_1.c))), true, true);
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(-func_1(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(global0.d.x, arg_1.d.x, global0.d.x, 2147483647i)), select(vec4<i32>(-66460i, global0.d.x, u_input.b.x, 0i), -vec4<i32>(1i, u_input.b.x, -2147483647i, arg_1.d.x), var_0)), abs(u_input.a.yw), u_input.a.zyx).b.x);
    var var_3 = select(u_input.a.x, ~u_input.a.x | _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, u_input.a.x, 3313u, 36901u), ~vec4<u32>(9534u, u_input.a.x, 0u, 0u), arg_1.a.x), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.zx), ~u_input.a.x, ~u_input.a.x, 1u)), false);
    return Struct_1(select(select(global0.a, vec3<bool>(select(arg_1.a.x, var_1, true), !var_1, !var_1), global0.a.x), arg_0.a, true), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1147f * -1342f), _wgslsmith_f_op_f32(1047f * -283f), -1960f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.b), arg_1.b, func_1(2596i, u_input.a.yz, u_input.a.zyx).a))))), true, vec2<i32>(~1i, 43395i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = func_4(func_1(global0.d.x, u_input.a.yy, ~u_input.a.wxy), func_1(global0.d.x, u_input.a.zw | _wgslsmith_div_vec2_u32(~u_input.a.xy, u_input.a.xw), _wgslsmith_sub_vec3_u32(reverseBits(u_input.a.yyw), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 32680u), ~u_input.a.xzw))));
    let var_1 = Struct_1(select(select(!global0.a, !(!vec3<bool>(var_0, global0.c, false)), true), global0.a, vec3<bool>(var_0 || (global0.a.x || false), global0.a.x, all(!vec2<bool>(var_0, false)))), _wgslsmith_f_op_vec3_f32(exp2(global0.b)), false, ~global0.d);
    global1 = array<vec3<bool>, 6>();
    let var_2 = u_input.a;
    var var_3 = var_1;
    var var_4 = !(!select(var_3.a, !select(global1[_wgslsmith_index_u32(var_2.x, 6u)], vec3<bool>(true, true, true), vec3<bool>(true, var_0, var_0)), !(var_1.d.x > global0.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~18823i, -(-1i << (var_2.x % 32u))));
}

