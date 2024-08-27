struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_3,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24>;

var<private> global1: array<u32, 19>;

var<private> global2: Struct_4;

var<private> global3: array<vec2<bool>, 28>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + global2.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(117f - global2.e.x) * _wgslsmith_f_op_f32(trunc(global2.b.x))));
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, u_input.c.x, -11655i, select(-1i, -19926i, false)), vec4<i32>(0i | -u_input.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c, u_input.c), ~vec3<i32>(0i, -27204i, -2147483647i)), abs(max(u_input.c.x, u_input.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i), firstTrailingBit(vec4<i32>(u_input.c.x, 0i, u_input.c.x, -18055i)))), countOneBits(countOneBits(abs(vec4<i32>(-70172i, 36374i, u_input.c.x, -39102i))))), vec4<i32>(0i, u_input.c.x, u_input.c.x, (0i & ~u_input.c.x) ^ min(~13167i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 0i), vec4<i32>(-6521i, u_input.c.x, 2147483647i, 2438i)))));
    let var_2 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(u_input.e & global1[_wgslsmith_index_u32(u_input.e, 19u)]), 1u, _wgslsmith_mult_u32(~u_input.e, select(global1[_wgslsmith_index_u32(34125u, 19u)], 0u, global2.c.a)), 27148u), ~countOneBits(min(vec4<u32>(u_input.d, u_input.b.x, global1[_wgslsmith_index_u32(5176u, 19u)], 0u), vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(8406u, 19u)], 0u, global1[_wgslsmith_index_u32(1u, 19u)])))), _wgslsmith_sub_vec2_u32(u_input.b.yy, _wgslsmith_sub_vec2_u32(vec2<u32>(~66441u, ~u_input.b.x), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.xx), 3188u))));
    var var_3 = Struct_1(41999u, ~vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(0u, 19u)], ~4294967295u), 19u)], 1669u));
    let var_4 = Struct_4(Struct_3(any(select(select(vec4<bool>(false, true, global2.c.a, true), vec4<bool>(true, global2.c.a, true, global2.a.a), vec4<bool>(true, global2.a.a, false, global2.c.a)), !vec4<bool>(global2.c.a, global2.a.a, global2.a.a, global2.a.a), !vec4<bool>(false, false, true, global2.a.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global2.b + global2.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)))), Struct_3(all(select(vec4<bool>(false, global2.c.a, true, true), vec4<bool>(true, global2.a.a, global2.c.a, false), global2.c.a)) || true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, global2.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.b.x, global2.d))))), vec2<f32>(-602f, _wgslsmith_f_op_f32(floor(-506f))));
    return firstTrailingBit(u_input.a.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> vec4<f32> {
    var var_0 = Struct_2(arg_1, firstTrailingBit(countOneBits(23064u)) << (abs(_wgslsmith_div_u32(arg_1.a, ~20072u)) % 32u), _wgslsmith_f_op_vec3_f32(sign(global2.b.wwy)), arg_1);
    global1 = array<u32, 19>();
    var var_1 = select(select(select(select(select(vec4<bool>(global2.a.a, global2.c.a, false, global2.c.a), vec4<bool>(true, true, true, false), vec4<bool>(true, global2.c.a, true, global2.c.a)), select(vec4<bool>(global2.c.a, true, false, false), vec4<bool>(false, global2.a.a, true, global2.c.a), false), true), !select(vec4<bool>(global2.c.a, false, true, true), vec4<bool>(true, global2.c.a, true, true), true), !(!vec4<bool>(global2.a.a, false, true, global2.a.a))), vec4<bool>(false, true, true, _wgslsmith_f_op_f32(3515f + -1909f) >= _wgslsmith_f_op_f32(trunc(var_0.c.x))), !any(select(vec2<bool>(false, global2.a.a), global3[_wgslsmith_index_u32(var_0.b, 28u)], global2.a.a))), select(select(!(!vec4<bool>(false, false, global2.c.a, true)), vec4<bool>(false, true, all(vec3<bool>(global2.c.a, false, false)), global2.a.a), vec4<bool>(!global2.a.a, global2.a.a, true, global2.c.a == false)), vec4<bool>(true, true, global2.c.a || !global2.c.a, global2.c.a), arg_3 != arg_0), vec4<bool>(all(vec2<bool>(global2.c.a, arg_3 == arg_3)), !global2.c.a, (-u_input.c.x ^ abs(arg_0)) != min(countOneBits(arg_0), arg_3), all(vec2<bool>(global2.a.a, any(vec3<bool>(false, true, true))))));
    global3 = array<vec2<bool>, 28>();
    var var_2 = select(firstLeadingBit(~u_input.c), select(-(~vec3<i32>(1i, arg_0, -20120i)), ~select(~u_input.c, vec3<i32>(arg_0, arg_3, u_input.c.x), var_1.x), select(vec3<bool>(var_1.x, global2.a.a, true), select(var_1.zxy, select(var_1.ywx, var_1.wzx, var_1.x), select(vec3<bool>(global2.a.a, true, true), vec3<bool>(global2.a.a, var_1.x, var_1.x), vec3<bool>(false, false, global2.c.a))), true)), global2.a.a);
    return global2.b;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<u32>) -> vec2<u32> {
    global2 = arg_0;
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_u32(arg_1.x, ~4294967295u | _wgslsmith_sub_u32(arg_1.x, 0u)), vec2<u32>(_wgslsmith_sub_u32(arg_1.x, 4294967295u), abs(u_input.e))), ~57170u, vec3<f32>(-996f, _wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1318f, arg_0.d))), -1000f), Struct_1(arg_1.x, min(vec2<u32>(_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(global1[_wgslsmith_index_u32(30676u, 19u)], global1[_wgslsmith_index_u32(22439u, 19u)], 89325u)), global1[_wgslsmith_index_u32(38728u, 19u)]), max(vec2<u32>(99874u, global1[_wgslsmith_index_u32(u_input.d, 19u)]), countOneBits(vec2<u32>(arg_1.x, global1[_wgslsmith_index_u32(arg_1.x, 19u)]))))));
    global2 = arg_0;
    global2 = Struct_4(arg_0.c, _wgslsmith_f_op_vec4_f32(func_4(1i, Struct_1(countOneBits(~global1[_wgslsmith_index_u32(71053u, 19u)]), vec2<u32>(0u, func_3())), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(111336u, global1[_wgslsmith_index_u32(arg_1.x, 19u)], var_0.a.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 19u)], 19u)]), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], arg_1.x, global1[_wgslsmith_index_u32(26809u, 19u)], u_input.d)), _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.c.x, u_input.c.x), firstTrailingBit(vec2<i32>(-2147483647i, u_input.c.x))), -abs(vec2<i32>(u_input.c.x, -27887i))))), arg_0.c, global2.e.x, vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-1f)));
    global2 = arg_0;
    return _wgslsmith_sub_vec2_u32(arg_1.zz >> (~(~vec2<u32>(1u, var_0.a.b.x)) % vec2<u32>(32u)), u_input.a.yz >> ((vec2<u32>(64166u, ~1u) ^ (_wgslsmith_mult_vec2_u32(u_input.b.yy, arg_1.zz) ^ arg_1.yy)) % vec2<u32>(32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = ~vec4<i32>(u_input.c.x ^ firstLeadingBit(reverseBits(u_input.c.x)), ~2147483647i, u_input.c.x, -2147483647i);
    global3 = array<vec2<bool>, 28>();
    global0 = array<Struct_4, 24>();
    let var_1 = ~19789i;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.b.wzz - vec3<f32>(global2.b.x, global2.d, 850f)))), vec3<f32>(_wgslsmith_f_op_f32(abs(global2.e.x)), -1490f, global2.d)));
    return Struct_1(~4294967295u, func_2(global0[_wgslsmith_index_u32(66848u, 24u)], vec3<u32>(max(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 19u)], 19u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 0u, 1u), vec3<u32>(1u, 25629u, global1[_wgslsmith_index_u32(u_input.e, 19u)])), 19u)]), _wgslsmith_mult_u32(u_input.e << (4294967295u % 32u), ~global1[_wgslsmith_index_u32(70928u, 19u)]), global1[_wgslsmith_index_u32(abs(1u), 19u)] & global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(24609u, 19u)]), 19u)])));
}

fn func_5(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_clamp_u32(arg_0.a, ~0u, ~_wgslsmith_mult_u32(4294967295u, 1u));
    global3 = array<vec2<bool>, 28>();
    global1 = array<u32, 19>();
    global2 = global0[_wgslsmith_index_u32(~min(~(1u | _wgslsmith_add_u32(u_input.d, 15617u)), ~4294967295u), 24u)];
    var var_1 = false;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(global2.b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -499f), global2.b.x, _wgslsmith_f_op_vec4_f32(func_4(u_input.c.x, Struct_1(4294967295u, u_input.b.zx), vec4<u32>(1660u, arg_0.b.x, global1[_wgslsmith_index_u32(4294967295u, 19u)], 44576u), abs(-7590i))).x, global2.e.x), global2.c.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~u_input.a.x >> (u_input.b.x % 32u), u_input.b.x, ~u_input.d << (94505u % 32u), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(func_1())), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.e.x, global2.d, global2.b.x, 276f))), _wgslsmith_f_op_vec4_f32(global2.b * vec4<f32>(global2.b.x, global2.e.x, 1944f, global2.e.x)))))), select(vec2<i32>(1i, ~u_input.c.x) | u_input.c.xy, -vec2<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), u_input.c.x >> (0u % 32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.d - global2.d), _wgslsmith_f_op_f32(global2.b.x * global2.b.x))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b.x - global2.e.x), _wgslsmith_f_op_f32(step(global2.e.x, -1000f)))), -785f);
}

