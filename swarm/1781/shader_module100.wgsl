struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: array<vec2<u32>, 31>;

var<private> global3: array<Struct_2, 28>;

var<private> global4: vec4<i32> = vec4<i32>(2147483647i, 0i, 1i, -30552i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = vec3<u32>(select(78882u, ~73181u >> (~4294967295u % 32u), !any(vec4<bool>(global1.x, global1.x, global1.x, true))), _wgslsmith_mod_u32(~71852u, ~firstLeadingBit(abs(u_input.c))), 6118u);
    global4 = vec4<i32>(-2147483647i, 8270i, 2147483647i, _wgslsmith_add_i32(22582i, 1i << (1u % 32u)));
    var var_1 = all(!vec2<bool>(global1.x, global1.x));
    global2 = array<vec2<u32>, 31>();
    let var_2 = global0[_wgslsmith_index_u32(var_0.x, 31u)];
    return 233f;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: i32) -> i32 {
    global4 = countOneBits(vec4<i32>(arg_2.a.x, i32(-1i) * -55748i, 1i, select(~(-1392i), arg_3, true))) ^ vec4<i32>(firstTrailingBit(1i), 46305i, abs(firstTrailingBit(-2147483647i)), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global4.x, arg_2.b)), arg_2.a.zz));
    global4 = vec4<i32>(abs(41926i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, ~global4.x), countOneBits(-25898i), (~global4.x | global4.x) ^ -arg_3), -36962i, -abs(-1i));
    var var_0 = abs(0i);
    var var_1 = ~4294967295u;
    global4 = vec4<i32>(_wgslsmith_div_i32(1i, ~arg_3 & abs(arg_3)), (~reverseBits(global4.x) | arg_3) >> (u_input.b.x % 32u), global4.x, ~min(-2147483647i, _wgslsmith_mod_i32(6011i, global4.x) | arg_2.a.x));
    return _wgslsmith_sub_i32(global4.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(min(66692i, -2147483647i), global4.x, i32(-1i) * -1i, reverseBits(-4012i)), -vec4<i32>(global4.x, 31888i, -2147483647i, 13444i)), ~(1i | arg_3)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), -785f, _wgslsmith_f_op_f32(f32(-1f) * -512f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, -1000f, arg_1.x), vec3<f32>(-542f, 1013f, arg_1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(317f, -1142f, -984f, -1804f) - vec4<f32>(1808f, arg_1.x, -1796f, 1781f)) * vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(-579f, arg_1.x, arg_1.x, -323f), vec4<f32>(1366f, -842f, arg_1.x, arg_1.x))), Struct_1(vec3<i32>(min(arg_0.a, global4.x), -27267i, global4.x), 1i, ~vec4<u32>(4294967295u, u_input.a.x, 26400u, u_input.b.x), arg_1.x, _wgslsmith_f_op_f32(func_3(-arg_0.a))), arg_0.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-711f, -638f, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), vec4<bool>(global1.x, global1.x, true, false))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1716f, arg_1.x, 1103f, -381f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1930f, arg_1.x, arg_1.x), vec4<f32>(arg_1.x, 1706f, arg_1.x, -393f), global1.x)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))), _wgslsmith_f_op_f32(-1445f + 523f), 351f, -1631f) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), -306f, -234f, arg_1.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, -1284f, arg_1.x, arg_1.x))))))));
    global2 = array<vec2<u32>, 31>();
    let var_2 = vec3<i32>(-20313i, 1i, arg_0.a);
    let var_3 = arg_1.x;
    return Struct_1(global4.zwz, 0i, ~abs(vec4<u32>(0u, _wgslsmith_add_u32(20144u, u_input.a.x), 4294967295u, _wgslsmith_mult_u32(u_input.a.x, u_input.b.x))), 1000f, var_3);
}

fn func_1() -> Struct_1 {
    global2 = array<vec2<u32>, 31>();
    var var_0 = ~(~_wgslsmith_sub_u32(~(~u_input.a.x), ~(u_input.b.x >> (92982u % 32u))));
    var var_1 = -926f;
    var var_2 = Struct_1(_wgslsmith_div_vec3_i32(global4.xwz, global4.wxw), 9890i, vec4<u32>(u_input.a.x, 59876u, 40672u, ~_wgslsmith_add_u32(u_input.c, u_input.c) & 4294967295u), _wgslsmith_f_op_f32(round(-1838f)), 1127f);
    global0 = array<Struct_2, 31>();
    return func_2(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u << ((6770u & (u_input.b.x | var_2.c.x)) % 32u), ~53426u), 28u)], vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1236f))), -147f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.x;
    var var_1 = func_1();
    global1 = select(!select(!vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(var_1.e <= var_1.d, true, any(vec4<bool>(global1.x, global1.x, false, global1.x))), false), !vec3<bool>(global1.x, global1.x, all(!vec4<bool>(false, false, global1.x, true))), vec3<bool>(true, any(vec4<bool>(true, true, true, !global1.x)), global1.x));
    let var_2 = vec2<bool>(!any(!vec2<bool>(global1.x, true)), true);
    global4 = vec4<i32>(-40921i, ~(-(~(-global4.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_1.a.x, var_1.b, 19962i), vec4<i32>(-2147483647i, 3705i, 2147483647i, global4.x)), vec4<i32>(51110i, global4.x, -1i, -6280i)), ~global4.x ^ var_1.a.x, var_1.a.x, _wgslsmith_sub_i32(50513i, 1i)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(var_1.b, 6609i, global4.x, 30279i), countOneBits(vec4<i32>(var_1.b, 2147483647i, -21197i, -80780i))), vec4<i32>(_wgslsmith_div_i32(global4.x, global4.x), global4.x, -36507i, 1i))), ~_wgslsmith_add_i32(_wgslsmith_div_i32(global4.x, -39613i), var_1.b << (~10526u % 32u)));
    global2 = array<vec2<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(vec3<i32>(-1i) * -var_1.a)), _wgslsmith_f_op_f32(min(var_1.e, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -615f) + func_2(global3[_wgslsmith_index_u32(0u, 28u)], vec2<f32>(var_1.d, -641f)).d))))), u_input.b);
}

