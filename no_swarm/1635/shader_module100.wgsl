struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1438f, -1213f);

var<private> global1: Struct_2;

var<private> global2: array<vec2<f32>, 21>;

var<private> global3: i32 = 0i;

var<private> global4: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = arg_0;
    var var_1 = Struct_4(arg_1.a.b.x, arg_1.a.b.x, vec3<f32>(arg_0.a, -462f, _wgslsmith_f_op_f32(abs(arg_0.a))), !vec3<bool>(global4.a.b.x, true, any(select(global1.a.b.ww, global4.a.b.wx, true))), arg_1.a.b.x);
    global3 = 0i;
    let var_2 = arg_1.d.x;
    global2 = array<vec2<f32>, 21>();
    return _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u & global1.c, abs(35704u), 35892u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, global4.b, global4.c), vec3<u32>(global4.c, 4294967295u, u_input.a) >> (vec3<u32>(0u, 1u, 32246u) % vec3<u32>(32u)))) << (_wgslsmith_add_vec4_u32(reverseBits(min(vec4<u32>(0u, 4294967295u, 68654u, global4.c), vec4<u32>(global4.b, 4294967295u, arg_1.b, 24772u))), vec4<u32>(~4294967295u, 74794u, global4.c, 6814u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(max(~(~vec4<u32>(u_input.a, 28109u, 26315u, global4.c)), firstLeadingBit(countOneBits(vec4<u32>(global4.b, global1.b, 4880u, global4.c)))), ~select(vec4<u32>(1u, global1.c, arg_1.b, 1u), vec4<u32>(global1.b, global4.b, 1979u, u_input.a), arg_1.a.b) | select(vec4<u32>(global4.c, 0u, global1.b, 3952u), ~vec4<u32>(global1.b, 0u, 29292u, u_input.a), select(global1.a.b, global1.a.b, global1.a.b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    global0 = vec2<f32>(-1271f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(arg_0.a + 685f))))));
    global1 = Struct_2(arg_0, 56258u, u_input.a, vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(global1.d, global1.d & vec4<i32>(global4.d.x, -55609i, global4.d.x, global1.d.x)), 1i, -16312i) & -vec4<i32>(2147483647i, global1.d.x, global4.d.x, 0i));
    var var_0 = _wgslsmith_clamp_vec3_i32(global1.d.zxy, ~(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(9241i, global1.d.x, global1.d.x), global1.d.ywx), global4.d.wzx, global1.d.wyz) & (abs(global4.d.yxz) | _wgslsmith_mult_vec3_i32(vec3<i32>(global1.d.x, global4.d.x, 1i), vec3<i32>(global1.d.x, global1.d.x, global4.d.x)))), vec3<i32>(-2147483647i, global1.d.x, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(global4.d.zz, vec2<i32>(-2147483647i, -343i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, global1.d.x), global4.d.wy))));
    var var_1 = reverseBits(func_3(Struct_3(_wgslsmith_f_op_f32(trunc(global0.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-global4.a.a), select(vec4<bool>(arg_0.b.x, global1.a.b.x, arg_1.x, arg_1.x), global4.a.b, global4.a.b)), firstLeadingBit(41121u), 19265u, global4.d)));
    var var_2 = arg_0.b;
    return global4.a;
}

fn func_1() -> vec4<u32> {
    var var_0 = !(max(global4.d.x, -9586i) > ~(-1i));
    var var_1 = true;
    global1 = Struct_2(func_2(global4.a, global1.a.b.wz), _wgslsmith_add_u32(global4.c & _wgslsmith_add_u32(u_input.a, u_input.a ^ global4.c), 4294967295u), 62887u, global4.d);
    let var_2 = Struct_5(_wgslsmith_add_vec4_i32(vec4<i32>(-global4.d.x, 1i, 0i, global1.d.x), global1.d) >> (vec4<u32>(1u, _wgslsmith_add_u32(global1.c, 4497u), 1u, global4.b) % vec4<u32>(32u)), abs(-firstLeadingBit(-vec2<i32>(global1.d.x, -968i))), _wgslsmith_f_op_vec2_f32(trunc(global2[_wgslsmith_index_u32(8765u >> (0u % 32u), 21u)])));
    var var_3 = Struct_4(all(select(vec2<bool>(all(global4.a.b), true), !select(global4.a.b.xw, vec2<bool>(true, global4.a.b.x), vec2<bool>(global1.a.b.x, false)), all(!vec2<bool>(global1.a.b.x, global1.a.b.x)))), all(global1.a.b) | any(!vec3<bool>(global4.a.b.x, global1.a.b.x, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.a.a * 844f), _wgslsmith_f_op_f32(1043f * 1017f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) - 2106f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1873f, global1.a.a, 1090f)))))), select(!vec3<bool>(true, global1.a.b.x, any(vec4<bool>(global4.a.b.x, true, true, global1.a.b.x))), !global4.a.b.zwy, false), global1.a.b.x);
    return countOneBits(min(~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(1u, 7146u, u_input.a, global4.b)), ~vec4<u32>(29983u, 4294967295u, u_input.a, u_input.a)), countOneBits(vec4<u32>(~4294967295u, select(global1.c, global1.c, false), global4.b, ~14332u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_u32(reverseBits(min(vec4<u32>(11555u, global1.c, global4.c, global1.b), func_1())), reverseBits(~firstTrailingBit(~vec4<u32>(global1.c, global1.b, global1.b, u_input.a))));
    global3 = 51464i;
    let var_1 = func_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.a.a), 440f), vec4<bool>(_wgslsmith_mod_i32(global1.d.x, global1.d.x) >= -2571i, global1.a.b.x, false, global1.a.b.x)), global4.a.b.xz).b.zy;
    global2 = array<vec2<f32>, 21>();
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(firstLeadingBit(global4.d.x), -1i), _wgslsmith_mult_i32(~_wgslsmith_sub_i32(abs(global1.d.x), global4.d.x), ~(-45177i)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-global1.a.a));
    var var_4 = func_2(func_2(Struct_1(global1.a.a, !vec4<bool>(var_1.x, false, global4.a.b.x, var_1.x)), vec2<bool>(true, any(global1.a.b.zw))), func_2(func_2(func_2(global4.a, global1.a.b.zz), global1.a.b.wy), vec2<bool>(false, true)).b.xz);
    global0 = vec2<f32>(global1.a.a, global4.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_sub_i32(~_wgslsmith_mod_i32(var_2.x, global4.d.x), global4.d.x), _wgslsmith_dot_vec3_i32(select(global4.d.zwz, vec3<i32>(2147483647i, global1.d.x, var_2.x), var_1.x) >> (var_0.xzx % vec3<u32>(32u)), -global4.d.wyw)), var_0.zxx, reverseBits(-12448i));
}

