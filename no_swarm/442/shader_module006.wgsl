struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
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

var<private> global0: array<Struct_2, 24>;

var<private> global1: vec4<bool>;

var<private> global2: array<i32, 8>;

var<private> global3: array<i32, 4> = array<i32, 4>(26481i, 40i, 6725i, 2147483647i);

var<private> global4: Struct_3;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> f32 {
    global2 = array<i32, 8>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -530f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1926f))))))));
    var var_1 = vec3<i32>(min(~u_input.a, 1i), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(15228i, -2147483647i, 10211i)) << (~arg_0.xxy % vec3<u32>(32u)), -vec3<i32>(global3[_wgslsmith_index_u32(0u, 4u)], 2147483647i, -6854i)) | ~arg_2, _wgslsmith_div_i32(~(~global2[_wgslsmith_index_u32(69501u, 8u)]) & -52939i, _wgslsmith_clamp_i32(abs(-1i), global3[_wgslsmith_index_u32(~abs(arg_0.x), 4u)], ~(global4.b << (arg_0.x % 32u)))));
    global1 = select(vec4<bool>(arg_1, true, false, select(true, true, true)), select(!vec4<bool>(any(global1.wxz), true, true || global1.x, 0u < u_input.d.x), !select(!vec4<bool>(global1.x, arg_1, true, arg_1), vec4<bool>(true, false, global1.x, global1.x), !vec4<bool>(true, false, global1.x, global1.x)), vec4<bool>(!arg_1, arg_1, any(select(global1.zw, vec2<bool>(true, global1.x), false)), all(select(global1.xy, global1.ww, true)))), vec4<bool>(!(!(!arg_1)), true, false, ((global4.a ^ u_input.d.x) >= 37493u) || (global4.a != _wgslsmith_clamp_u32(global4.a, global4.a, 21873u))));
    var var_2 = global4.a;
    return _wgslsmith_f_op_f32(f32(-1f) * -1777f);
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_2(Struct_1(arg_0.yzx, global4.b, vec2<f32>(_wgslsmith_f_op_f32(func_3(~u_input.d, true, _wgslsmith_sub_i32(2147483647i, global3[_wgslsmith_index_u32(u_input.d.x, 4u)]), Struct_3(8635u, 55374i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2308f))))));
    global3 = array<i32, 4>();
    let var_1 = !vec4<bool>(global1.x, true, true, true);
    return _wgslsmith_dot_vec4_i32(arg_0 >> ((vec4<u32>(70020u, 1u, global4.a << (4294967295u % 32u), 4294967295u) | ~(vec4<u32>(global4.a, u_input.d.x, global4.a, 15775u) >> (u_input.d % vec4<u32>(32u)))) % vec4<u32>(32u)), -(~_wgslsmith_div_vec4_i32(arg_0, -vec4<i32>(global4.b, u_input.b, var_0.a.b, 14469i))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_i32((((vec4<i32>(4043i, global4.b, global2[_wgslsmith_index_u32(4294967295u, 8u)], 18268i) >> (u_input.d % vec4<u32>(32u))) >> (vec4<u32>(u_input.d.x, 0u, global4.a, 0u) % vec4<u32>(32u))) & vec4<i32>(_wgslsmith_clamp_i32(arg_2.a.a.x, -27970i, 0i), 1i, func_2(vec4<i32>(-27271i, global4.b, -46837i, -8366i)), global2[_wgslsmith_index_u32(17043u >> (u_input.c.x % 32u), 8u)])) >> (_wgslsmith_mult_vec4_u32(select(~vec4<u32>(16183u, 1u, 38073u, u_input.d.x), _wgslsmith_mod_vec4_u32(vec4<u32>(42527u, u_input.d.x, global4.a, u_input.c.x), vec4<u32>(global4.a, u_input.c.x, u_input.c.x, u_input.c.x)), select(arg_0, arg_0, vec4<bool>(false, arg_0.x, true, arg_0.x))), select(u_input.d, ~u_input.d, vec4<bool>(true, arg_0.x, global1.x, false))) % vec4<u32>(32u)), reverseBits(~vec4<i32>(1i, 0i, u_input.a, 2147483647i) & _wgslsmith_sub_vec4_i32(vec4<i32>(23521i, 1111i, u_input.a, 41308i), vec4<i32>(-2147483647i, -1i, -1i, global2[_wgslsmith_index_u32(global4.a, 8u)]))) << (vec4<u32>(global4.a >> (countOneBits(global4.a) % 32u), u_input.d.x, _wgslsmith_sub_u32(u_input.d.x & global4.a, ~37176u), ~1u) % vec4<u32>(32u)));
    var var_1 = arg_2.a;
    global2 = array<i32, 8>();
    var_1 = Struct_1(arg_2.a.a << (min(u_input.d.www, reverseBits(vec3<u32>(global4.a, global4.a, 1u))) % vec3<u32>(32u)), i32(-1i) * -17428i, arg_1.yy);
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = arg_0.a.c.x;
    global0 = array<Struct_2, 24>();
    let var_1 = vec3<bool>(true, false, true);
    global3 = array<i32, 4>();
    global0 = array<Struct_2, 24>();
    return select(select(vec4<bool>(select(any(vec4<bool>(var_1.x, global1.x, false, global1.x)), var_1.x || true, false), true, false || all(vec2<bool>(true, global1.x)), u_input.d.x < _wgslsmith_clamp_u32(0u, 90682u, 1u)), vec4<bool>(global1.x, all(!var_1.xz), global1.x, !select(false, false, true)), _wgslsmith_sub_u32(78085u, ~u_input.d.x) < global4.a), select(!(!(!vec4<bool>(false, global1.x, var_1.x, global1.x))), vec4<bool>(!any(global1.xy), u_input.c.x <= min(4294967295u, 1u), _wgslsmith_mod_i32(global4.b, global2[_wgslsmith_index_u32(global4.a, 8u)]) >= abs(global2[_wgslsmith_index_u32(0u, 8u)]), global1.x), vec4<bool>(true, all(vec3<bool>(true, var_1.x, false)), var_1.x, !global1.x | true)), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(any(select(global1.xy, global1.zz, all(vec2<bool>(true, false)))), true, true);
    let var_1 = vec4<bool>(global1.x, true != (1u < u_input.c.x), false, true);
    var var_2 = -(~(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(global4.b, -12081i, 30780i, -1i), vec4<i32>(2147483647i, -38711i, global3[_wgslsmith_index_u32(u_input.c.x, 4u)], 7356i))));
    var_0 = vec3<bool>(true, !var_0.x, !all(func_4(func_1(vec4<bool>(var_0.x, false, true, true), vec3<f32>(491f, -1292f, -1083f), Struct_2(Struct_1(var_2.xyw, global3[_wgslsmith_index_u32(69652u, 4u)], vec2<f32>(531f, -774f))), vec3<f32>(-1464f, -648f, -1000f)), func_1(vec4<bool>(false, false, true, false), vec3<f32>(323f, -322f, 1015f), global0[_wgslsmith_index_u32(global4.a, 24u)], vec3<f32>(1667f, -981f, -519f)))));
    global3 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

