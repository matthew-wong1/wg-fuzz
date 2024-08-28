struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-760f, -699f, -1182f, -1000f, -1000f, -520f, 811f, 567f, 1921f, 446f, 264f, 523f, -1423f, 396f, -743f, 428f, 212f, 434f, -1641f, 452f, 1641f);

var<private> global1: vec2<i32> = vec2<i32>(0i, 5730i);

var<private> global2: bool;

var<private> global3: vec3<u32> = vec3<u32>(1u, 40045u, 1u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = -global1.x;
    global0 = array<f32, 21>();
    global1 = vec2<i32>(max(-abs(u_input.a.x), u_input.a.x), -(~(-abs(2147483647i))));
    let var_1 = 632f;
    let var_2 = Struct_3(max(global1.x, global1.x), min(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(2147483647i), var_0 | 31253i, global1.x), select(vec3<i32>(global1.x, u_input.a.x, var_0), u_input.a, true)), ~18659i), arg_0.d, !arg_0.b);
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c * arg_0.d.b))), _wgslsmith_f_op_f32(-900f + _wgslsmith_f_op_f32(min(-1000f, -507f)))))));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_4) -> vec3<u32> {
    return _wgslsmith_mult_vec3_u32(~(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(45585u, global3.x, global3.x), vec3<u32>(global3.x, 0u, global3.x)), global3.x & 47558u, global3.x << (142617u % 32u)) >> (_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(global3.x, global3.x, global3.x)), vec3<u32>(global3.x, global3.x, global3.x)) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, global3.x), ~26541u), _wgslsmith_clamp_u32(0u, ~_wgslsmith_mult_u32(global3.x, global3.x), reverseBits(abs(8071u))), select(~45321u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 11691u, 1u, 0u), vec4<u32>(14568u, global3.x, 50338u, 0u)), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 21u)])) < _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3.x, 21u)]))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.b)), -179f);
    global3 = func_4(i32(-1i) * -66714i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_0, -395f)), -333f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(arg_0.d.a, 21u)], arg_1.d.b)))) - _wgslsmith_f_op_vec2_f32(func_3(arg_1)))), Struct_4(!select(select(vec2<bool>(true, arg_0.a.x), vec2<bool>(false, arg_0.b.x), arg_0.a), vec2<bool>(true, arg_0.b.x), !arg_0.b), u_input.a.x ^ ~(-1i)));
    global3 = arg_1.d.c.xxy;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(220f, _wgslsmith_f_op_vec2_f32(func_3(arg_1)).x, _wgslsmith_f_op_f32(arg_1.c - arg_1.c), var_0)));
    global1 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.zz << (vec2<u32>(39216u, arg_0.d.a) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(u_input.a.yy, u_input.a.yx)), vec2<i32>(firstLeadingBit(-18802i), abs(-2147483647i))), global1.x), _wgslsmith_mod_i32(-1i, -4921i));
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_1.d.a, arg_1.d.c.x), _wgslsmith_mod_vec2_u32(vec2<u32>(36262u, global3.x), arg_0.d.c.xy)), global3.zz), arg_1.d.c.xx);
}

fn func_1() -> Struct_4 {
    global3 = min(~(~vec3<u32>(global3.x >> (global3.x % 32u), firstLeadingBit(27269u), ~global3.x)), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(global3.x, countOneBits(global3.x)), select(19092u, _wgslsmith_add_u32(28829u, global3.x), any(vec4<bool>(false, true, false, true))), func_2(Struct_2(vec2<bool>(false, false), vec2<bool>(false, false), global0[_wgslsmith_index_u32(global3.x, 21u)], Struct_1(global3.x, 1000f, vec4<u32>(2694u, 0u, global3.x, global3.x))), Struct_2(vec2<bool>(false, true), vec2<bool>(true, true), 1525f, Struct_1(1u, global0[_wgslsmith_index_u32(1u, 21u)], vec4<u32>(148048u, 21827u, 4294967295u, 75797u))))), firstTrailingBit(firstTrailingBit(vec3<u32>(global3.x, 63125u, global3.x)) | vec3<u32>(3444u, global3.x, global3.x))));
    let var_0 = Struct_2(vec2<bool>((global0[_wgslsmith_index_u32(global3.x, 21u)] <= _wgslsmith_div_f32(global0[_wgslsmith_index_u32(5586u, 21u)], 571f)) == any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), select(vec2<bool>(false, -332f != _wgslsmith_f_op_f32(-800f - global0[_wgslsmith_index_u32(global3.x, 21u)])), !vec2<bool>(any(vec2<bool>(false, false)), true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_f_op_f32(f32(-1f) * -1584f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1382f)))))), Struct_1(_wgslsmith_div_u32(~func_4(u_input.a.x, vec2<f32>(global0[_wgslsmith_index_u32(global3.x, 21u)], 990f), Struct_4(vec2<bool>(true, true), 36479i)).x, 43556u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-947f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f) - global0[_wgslsmith_index_u32(44660u, 21u)]), true)), ~(~abs(vec4<u32>(global3.x, 72019u, global3.x, 1u)))));
    var var_1 = var_0.d.c;
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + var_0.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.b - var_0.d.b))) + 1000f)));
    global2 = var_0.b.x;
    return Struct_4(select(!var_0.a, vec2<bool>(true, true), var_0.a), -7944i);
}

fn func_5(arg_0: Struct_4, arg_1: bool) -> Struct_5 {
    let var_0 = select(~vec3<u32>(global3.x, ~firstTrailingBit(11831u), _wgslsmith_sub_u32(global3.x, 32639u)), vec3<u32>(47047u, ~(_wgslsmith_mult_u32(global3.x, 0u) >> ((global3.x & 51279u) % 32u)), ~1u), !(arg_1 || !func_1().a.x));
    global1 = u_input.a.zy;
    global2 = !any(select(vec4<bool>(true, arg_0.a.x, true, true), select(select(vec4<bool>(arg_0.a.x, false, true, false), vec4<bool>(arg_0.a.x, false, false, false), true), vec4<bool>(true, false, false, true), true), !vec4<bool>(arg_1, arg_1, arg_0.a.x, false)));
    global0 = array<f32, 21>();
    let var_1 = func_1();
    return Struct_5(Struct_3(0i ^ -global1.x, firstLeadingBit(arg_0.b & (var_1.b | global1.x)), Struct_1(min(_wgslsmith_add_u32(80321u, var_0.x), 0u), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 21u)]), ~(~vec4<u32>(26693u, var_0.x, global3.x, global3.x))), vec2<bool>(arg_1, false)), Struct_3(-(-37085i ^ ~u_input.a.x), ~(-35765i) & _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(11979i, -2147483647i, -11861i, u_input.a.x), vec4<i32>(arg_0.b, -15445i, u_input.a.x, 0i)), vec4<i32>(5158i, arg_0.b, u_input.a.x, arg_0.b)), Struct_1(var_0.x, global0[_wgslsmith_index_u32(select(global3.x << (var_0.x % 32u), _wgslsmith_mod_u32(global3.x, 58567u), arg_1), 21u)], vec4<u32>(global3.x | var_0.x, var_0.x, ~global3.x, global3.x)), select(var_1.a, vec2<bool>(!arg_0.a.x, true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), !any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false))));
    var var_1 = Struct_2(!func_5(Struct_4(vec2<bool>(false, var_0.b.d.x), -2147483647i), var_0.a.d.x).a.d, vec2<bool>(var_0.b.d.x, true), _wgslsmith_f_op_f32(abs(1710f)), var_0.b.c);
    global3 = var_0.a.c.c.zxz;
    var var_2 = 0i;
    global0 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(var_0.b.d, vec2<bool>(var_0.a.d.x, var_1.a.x), 751f, Struct_1(14319u, -276f, vec4<u32>(32958u, 64121u, global3.x, var_1.d.c.x))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1212f, 403f) - vec2<f32>(var_0.b.c.b, -1000f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(var_1.a, var_0.a.d, -1000f, Struct_1(var_0.b.c.a, var_0.b.c.b, vec4<u32>(0u, 1u, var_1.d.a, var_0.a.c.c.x))))), vec2<f32>(150f, _wgslsmith_f_op_f32(864f + 750f)))), -621f, var_1.d.b, var_1.d.a & 1u);
}

