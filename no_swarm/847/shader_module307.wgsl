struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<f32, 1>;

var<private> global3: f32 = -1271f;

var<private> global4: i32 = 13296i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_1 {
    global2 = array<f32, 1>();
    global3 = global2[_wgslsmith_index_u32(1u, 1u)];
    global0 = array<Struct_4, 24>();
    global2 = array<f32, 1>();
    var var_0 = vec3<bool>(global1.x, any(!(!(!vec3<bool>(true, true, global1.x)))), !(!global1.x));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(~60057u, 1u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 1u)] * global2[_wgslsmith_index_u32(48873u, 1u)]), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(4294967295u, 1u)])), 1000f))) - vec4<f32>(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(23876u, 362u, 139136u, 31601u), vec4<u32>(17491u, 26149u, 63841u, 1u)), 1u)], _wgslsmith_f_op_f32(trunc(475f)), global2[_wgslsmith_index_u32(1336u, 1u)], global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(34771u, 4294967295u)), 1u)])));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<u32>) -> vec2<bool> {
    var var_0 = 0i;
    global2 = array<f32, 1>();
    var var_1 = vec4<u32>(~max(arg_3.x, abs(arg_1.x)), 0u, 58480u, 137943u ^ (_wgslsmith_div_u32(arg_1.x, _wgslsmith_add_u32(arg_1.x, arg_3.x)) & arg_3.x));
    let var_2 = false;
    var var_3 = Struct_4(false, true, 0i, firstTrailingBit(~u_input.b.zx));
    return vec2<bool>(arg_0 <= min(_wgslsmith_add_i32(~arg_0, var_3.c), reverseBits(0i & arg_0)), all(vec4<bool>(!(global1.x | global1.x), false, var_1.x > _wgslsmith_dot_vec3_u32(var_1.xzy, vec3<u32>(arg_3.x, arg_3.x, 29306u)), !(u_input.c <= arg_2.e))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(56254u, 1u)] + 2270f)))));
    let var_1 = Struct_2(func_2(), select(vec2<bool>(true, true), func_3(arg_2.d.x, vec2<u32>(1u, 1u), Struct_2(Struct_1(arg_0.a.a), arg_1.xy, arg_0.a, func_2(), -2147483647i), min(vec2<u32>(60896u, 51993u), vec2<u32>(1u, 1u))), true), func_2(), arg_0.a, arg_0.b.x >> (_wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 6420u), vec2<u32>(59847u, 1u)), vec2<u32>(1u, 1u), true), abs(vec2<u32>(12395u, 36227u))) % 32u));
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    var var_2 = u_input.b.wyx;
    let var_3 = select(vec2<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(67999u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 21015u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 13482u), vec3<u32>(31492u, 36546u, 67010u))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(11401u, 46619u, 1303u), 29703u)) | abs(vec2<u32>(1u, 1u)), abs(vec2<u32>(~firstLeadingBit(45958u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(42496u, 1u), vec2<u32>(0u, 4294967295u)))), !(!arg_1.xz));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2().a.x + global2[_wgslsmith_index_u32(var_3.x & 1u, 1u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(var_3.x, 1u)])))), func_2().a.x, -577f, 291f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_4 {
    var var_0 = arg_1.c;
    let var_1 = countOneBits(~(vec3<u32>(_wgslsmith_mult_u32(56335u, 45483u), ~56007u, ~4294967295u) >> (~firstTrailingBit(vec3<u32>(4294967295u, 1u, 57196u)) % vec3<u32>(32u))));
    global0 = array<Struct_4, 24>();
    var var_2 = global0[_wgslsmith_index_u32(max(var_1.x, firstTrailingBit(var_1.x)), 24u)];
    var var_3 = ~max(_wgslsmith_mult_u32(var_1.x, abs(25125u)) ^ 0u, ~countOneBits(~54869u));
    return Struct_4((-2147483647i >> ((41263u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(48453u, var_1.x))) % 32u)) < -2147483647i, true, _wgslsmith_dot_vec4_i32(select(u_input.b, _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(var_2.d.x, 236i, 2147483647i, 1i)), vec4<i32>(u_input.a, -794i, u_input.a, var_2.d.x)), !any(vec4<bool>(global1.x, true, arg_1.b.x, true))), vec4<i32>(1i, var_2.c, u_input.a >> (var_1.x % 32u), ~u_input.b.x) & (~vec4<i32>(-2147483647i, -56655i, var_2.c, u_input.a) >> (~vec4<u32>(2146u, 4294967295u, var_1.x, 1u) % vec4<u32>(32u)))), vec2<i32>(arg_1.e, arg_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 24>();
    var var_0 = ~u_input.b;
    var var_1 = func_4(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(Struct_3(Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(124637u, 1u)], global2[_wgslsmith_index_u32(37248u, 1u)], -735f, global2[_wgslsmith_index_u32(66321u, 1u)])), vec2<i32>(var_0.x, -43660i)), vec3<bool>(true, true, global1.x), Struct_4(global1.x, global1.x, -1i, u_input.b.yy))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(45283u, 1u)], global2[_wgslsmith_index_u32(4951u, 1u)], global2[_wgslsmith_index_u32(48111u, 1u)]), vec4<f32>(global2[_wgslsmith_index_u32(82830u, 1u)], global2[_wgslsmith_index_u32(30445u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], -2152f))), true)), vec4<f32>(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(4294967295u, 1u)], 755f)), _wgslsmith_f_op_f32(f32(-1f) * -305f), global2[_wgslsmith_index_u32(~1u, 1u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 1u)] - global2[_wgslsmith_index_u32(33151u, 1u)])))), Struct_2(func_2(), func_3(var_0.x, vec2<u32>(~1u, 77971u), Struct_2(func_2(), vec2<bool>(true, global1.x), Struct_1(vec4<f32>(-848f, global2[_wgslsmith_index_u32(22747u, 1u)], 333f, global2[_wgslsmith_index_u32(0u, 1u)])), Struct_1(vec4<f32>(1638f, global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(8449u, 1u)], 1229f)), u_input.b.x), vec2<u32>(1u, 1u)), func_2(), func_2(), max(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, u_input.a), vec3<i32>(u_input.a, u_input.c, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(37104i, 2147483647i, var_0.x, -2560i), vec4<i32>(var_0.x, u_input.b.x, u_input.b.x, u_input.c)))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(14277u, 1u)]), _wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(4294967295u, 1u)])), global2[_wgslsmith_index_u32(1u, 1u)]) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(629f, global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], 1081f) - vec4<f32>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(21715u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)])), vec4<f32>(784f, global2[_wgslsmith_index_u32(20767u, 1u)], global2[_wgslsmith_index_u32(45237u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)])))), var_0.yx | vec2<i32>(var_0.x, -var_0.x));
    var var_3 = vec2<f32>(2334f, var_2.a.a.x);
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a.zx);
}

