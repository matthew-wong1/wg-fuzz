struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<i32, 14>;

var<private> global2: array<f32, 1> = array<f32, 1>(-816f);

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 8>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = ~arg_2;
    let var_1 = _wgslsmith_add_i32(0i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(arg_3.b, -2707i)), arg_3.e.wx & arg_1.e.xy) & 15999i) | (_wgslsmith_clamp_i32(reverseBits(i32(-1i) * -1i), ~(-2147483647i), arg_0.e.x) << (_wgslsmith_mult_u32(select(~u_input.a.x, u_input.b.x, !arg_0.d), 1u) % 32u));
    global0 = !arg_0.c;
    let var_2 = global4[_wgslsmith_index_u32(31503u, 8u)];
    var var_3 = min(~(-vec4<i32>(_wgslsmith_mod_i32(-71641i, -2147483647i), _wgslsmith_add_i32(global3.b, arg_3.e.x), countOneBits(51442i), reverseBits(-1i))), arg_1.e);
    return global3.e;
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    global2 = array<f32, 1>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(-311f, 280f)), _wgslsmith_dot_vec3_i32(global3.e.wxy >> (abs(~vec3<u32>(u_input.a.x, 1u, u_input.a.x)) % vec3<u32>(32u)), vec3<i32>(~(-global1[_wgslsmith_index_u32(4294967295u, 14u)]), global3.e.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(46120i, global3.b)), global3.e.yx))), global3.c, !(global3.c.x || !any(global3.c)), ~(-func_3(global4[_wgslsmith_index_u32(u_input.b.x | u_input.b.x, 8u)], Struct_1(1447f, global3.e.x, vec3<bool>(global3.d, global3.d, arg_1), false, vec4<i32>(-5336i, -30942i, global3.b, 2147483647i)), ~1u, global4[_wgslsmith_index_u32(1u, 8u)])));
    var var_1 = u_input.a.x;
    var var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 + -1069f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -944f)))), -48656i, !var_2.c, _wgslsmith_dot_vec3_i32(abs(global3.e.xzx), _wgslsmith_mod_vec3_i32(select(vec3<i32>(var_0.e.x, 0i, global1[_wgslsmith_index_u32(u_input.b.x, 14u)]), global3.e.xxw, false), _wgslsmith_div_vec3_i32(global3.e.xxx, var_0.e.wxw))) == (((var_2.b >> (u_input.b.x % 32u)) >> (~32603u % 32u)) << (min(~u_input.a.x, 1u & u_input.b.x) % 32u)), vec4<i32>(global1[_wgslsmith_index_u32(~u_input.a.x >> (5781u % 32u), 14u)], _wgslsmith_mult_i32(firstTrailingBit(firstTrailingBit(global3.b)), global1[_wgslsmith_index_u32(countOneBits(10174u), 14u)]), -_wgslsmith_div_i32(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], 2147483647i), var_2.e.x), 2147483647i));
    return Struct_1(-979f, 26778i, vec3<bool>(arg_1, global0.x, !all(var_3.c)), true, var_2.e ^ vec4<i32>(~(~2878i), -1i, var_0.b, _wgslsmith_sub_i32(-65295i, var_3.b | global1[_wgslsmith_index_u32(49190u, 14u)])));
}

fn func_1() -> bool {
    global4 = array<Struct_1, 8>();
    let var_0 = func_2(global3.a, false || any(global3.c.xx));
    let var_1 = global3.a;
    return _wgslsmith_mult_u32(~u_input.b.x, u_input.b.x ^ 27u) == u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(global3.c.x | !(global3.c.x & global0.x), func_1());
    global1 = array<i32, 14>();
    let var_1 = global4[_wgslsmith_index_u32(abs(~reverseBits(u_input.a.x)), 8u)];
    let var_2 = min(select(reverseBits(vec4<i32>(30996i, var_1.b, global1[_wgslsmith_index_u32(20680u, 14u)], -50971i)), var_1.e ^ var_1.e, vec4<bool>(true, true, true, var_0.x)) << (~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(2945u, 12552u, u_input.b.x, u_input.a.x)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)), var_1.e);
    let var_3 = global4[_wgslsmith_index_u32(abs(4294967295u), 8u)];
    var var_4 = global4[_wgslsmith_index_u32(u_input.b.x, 8u)];
    var var_5 = !(!select(!var_1.c, select(var_1.c, vec3<bool>(false, false, var_3.d), var_4.c), true));
    let var_6 = func_3(global4[_wgslsmith_index_u32(0u, 8u)], Struct_1(global3.a, _wgslsmith_dot_vec2_i32(var_3.e.wz ^ _wgslsmith_mod_vec2_i32(vec2<i32>(21097i, var_4.b), var_1.e.wz), vec2<i32>(i32(-1i) * -11299i, var_2.x)), vec3<bool>(var_4.d, true, global0.x), var_0.x, -var_2), _wgslsmith_mult_u32(u_input.b.x, u_input.a.x), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(60202u, u_input.a.x, u_input.a.x), abs(vec3<u32>(4294967295u, u_input.b.x, 11267u))), abs(vec3<u32>(_wgslsmith_add_u32(15593u, 36170u), _wgslsmith_mult_u32(1u, u_input.a.x), 0u))), 8u)]).x;
    let var_7 = func_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-244f, global3.a, true)) - -133f) + var_3.a), global3.d).a, !(!var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(-(~0i), -2147483647i), _wgslsmith_mod_vec2_i32(var_7.e.zz, reverseBits(func_2(var_1.a, true).e.zx))), reverseBits(vec3<i32>(_wgslsmith_clamp_i32(-25544i, 0i, 1i), 1i, var_4.e.x)) | countOneBits(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.e.zxz, vec3<i32>(54190i, -2147483647i, global3.e.x)), firstLeadingBit(var_1.e.zwx))), select(max(select(select(vec4<u32>(34793u, 36382u, u_input.b.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, 49583u, u_input.b.x), vec4<bool>(true, var_0.x, global3.c.x, var_4.d)), vec4<u32>(28606u, 49893u, u_input.b.x, u_input.b.x), false), vec4<u32>(abs(u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(20105u, u_input.b.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.b.x, 0u)), u_input.b.x | 6039u, u_input.b.x)), ~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(11884u, u_input.a.x, 4294967295u, 91149u)), vec4<u32>(4294967295u, 35111u, u_input.b.x, u_input.a.x)), false));
}

