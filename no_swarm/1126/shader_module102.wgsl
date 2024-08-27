struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 24> = array<bool, 24>(true, true, true, true, true, false, true, true, false, true, false, true, true, false, true, false, false, false, true, true, false, false, true, true);

var<private> global2: vec3<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_mult_u32(~abs(firstTrailingBit(4294967295u)), select(1u, arg_0.c.b.x >> (arg_0.d % 32u), all(vec2<bool>(global1[_wgslsmith_index_u32(var_0.b, 24u)] & false, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 69174u), 24u)]))));
    return ~arg_0.d ^ ~80567u;
}

fn func_3() -> vec3<u32> {
    let var_0 = vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~(~15753u), max(~4294967295u, _wgslsmith_mult_u32(1u, 1u))), vec3<u32>(_wgslsmith_div_u32(1u, ~0u), select(~54650u, 85827u, false), _wgslsmith_add_u32(abs(1u), abs(27537u)))), min(1u, ~(~(~1u))), 25936u);
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, -805f, global0.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1330f, -938f, global0.x)))))))));
    var var_1 = ~58002i;
    var var_2 = Struct_2(-u_input.b, ~firstTrailingBit(18670u), Struct_1(vec4<f32>(global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -235f), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 649f, true)) * _wgslsmith_f_op_f32(-global0.x)), 1112f), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 104043u, 23047u), var_0.wyz))), var_0.x);
    var_2 = Struct_2(countOneBits(min(-var_2.a, _wgslsmith_clamp_vec4_i32(var_2.a, vec4<i32>(var_2.a.x, u_input.b.x, -3703i, 1i), var_2.a) ^ select(vec4<i32>(-19382i, global2.x, global2.x, var_2.a.x), u_input.b, global1[_wgslsmith_index_u32(2607u, 24u)]))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 22684u) << (vec2<u32>(var_2.c.b.x, var_2.b) % vec2<u32>(32u)), select(vec2<u32>(var_0.x, 41292u) | vec2<u32>(23331u, var_0.x), ~var_0.yw, global1[_wgslsmith_index_u32(28761u, 24u)] || global1[_wgslsmith_index_u32(var_0.x, 24u)])), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, var_2.b), ~vec2<u32>(0u, var_2.b))), var_2.c, _wgslsmith_dot_vec4_u32(max(~vec4<u32>(81419u, 0u, 10463u, var_2.c.b.x), var_0) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, var_2.c.b.x, var_2.d), var_0) ^ ~var_0) % vec4<u32>(32u)), vec4<u32>(var_2.b, _wgslsmith_mult_u32(select(var_2.d, var_0.x, false), var_0.x), max(1u, ~1u), 4294967295u)));
    return abs(~(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, var_2.b), vec3<u32>(var_0.x, 4294967295u, var_0.x)) & var_0.yzx) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.d, ~14889u, abs(var_0.x)), ~(var_2.c.b >> (var_2.c.b % vec3<u32>(32u)))) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    global2 = _wgslsmith_add_vec3_i32(vec3<i32>(~countOneBits(abs(-1i)), ~global2.x, global2.x), vec3<i32>(-1i) * -u_input.b.yzy);
    let var_0 = 17032i;
    let var_1 = u_input.a;
    global2 = vec3<i32>(reverseBits(_wgslsmith_add_i32(-firstLeadingBit(u_input.a), (var_0 >> (arg_0.b.x % 32u)) << (~8852u % 32u))), u_input.a, abs(16893i));
    var var_2 = arg_0;
    return u_input.b;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 1000f, global0.x, 1505f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -1734f, 818f, global0.x), vec4<f32>(-320f, global0.x, global0.x, global0.x), global1[_wgslsmith_index_u32(arg_0, 24u)])))), global1[_wgslsmith_index_u32(arg_0, 24u)])), func_3()));
    global2 = var_0.zww;
    global2 = abs(vec3<i32>(-min(-global2.x, -33629i >> (arg_0 % 32u)), min(6640i, _wgslsmith_div_i32(u_input.a, global2.x) << ((1u ^ arg_0) % 32u)), 0i));
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 913f, _wgslsmith_f_op_f32(2336f * global0.x)))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(global0.x, 1386f), _wgslsmith_f_op_f32(global0.x * 1215f), global0.x)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(round(global0.x)))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), -26192i < (_wgslsmith_add_i32(abs(-410i), abs(var_0.x)) | -9258i)));
    let var_1 = Struct_2(u_input.b, func_3().x, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, global0.x, -789f), vec4<f32>(916f, 1333f, global0.x, 1395f))))) + vec4<f32>(_wgslsmith_f_op_f32(-global0.x), 1000f, _wgslsmith_f_op_f32(-global0.x), -428f)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(31395u, 0u, 0u), ~vec3<u32>(0u, 0u, arg_0)), vec3<u32>(arg_0, arg_0, arg_0) ^ reverseBits(vec3<u32>(109280u, arg_0, 81658u)), ~(~vec3<u32>(77137u, 111596u, arg_0)))), arg_0);
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = -(~vec3<i32>(abs(0i), -1i, ~13548i) & (_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.x, -18855i, -30053i), vec3<i32>(arg_0.a.x, -26622i, -1i)) ^ (u_input.b.zyw << (abs(arg_1.b) % vec3<u32>(32u)))));
    let var_1 = select(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) <= _wgslsmith_f_op_f32(func_2(arg_1.b.x).c.a.x + _wgslsmith_f_op_f32(trunc(1028f))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, reverseBits(arg_0.c.b.x)), 24u)] || true), vec2<bool>(_wgslsmith_sub_i32(arg_0.a.x, 13541i) > reverseBits(~2147483647i), abs(~arg_1.b.x) > arg_1.b.x), global1[_wgslsmith_index_u32(abs(arg_0.b), 24u)]);
    let var_2 = _wgslsmith_dot_vec3_u32(arg_1.b, vec3<u32>(arg_1.b.x, 0u, func_2(arg_0.c.b.x).d));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c.a + arg_1.a), arg_0.c.a);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-var_3), func_2(abs(_wgslsmith_add_u32(_wgslsmith_div_u32(arg_0.b, 91027u), 35073u))).c.b);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> Struct_2 {
    global1 = array<bool, 24>();
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i >> ((70326u ^ (arg_0.b.x & arg_0.b.x)) % 32u), ~u_input.a), 2147483647i, ~(~u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-3004f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(arg_3.x * -548f)))));
    global2 = u_input.b.zzx;
    global2 = vec3<i32>(global2.x, 12230i, _wgslsmith_sub_i32(~global2.x, countOneBits(~_wgslsmith_div_i32(u_input.b.x, arg_2))));
    return func_2(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 24>();
    var var_0 = ~(~(~(firstLeadingBit(11332u) ^ func_1(Struct_2(u_input.b, 65646u, Struct_1(vec4<f32>(1086f, global0.x, 114f, 1225f), vec3<u32>(54521u, 5021u, 0u)), 4294967295u)))));
    global1 = array<bool, 24>();
    let var_1 = ~firstLeadingBit(reverseBits(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1491u, 1u))));
    var var_2 = func_6(func_5(func_2(var_1.x), func_2(_wgslsmith_mod_u32(abs(65231u), var_1.x)).c, select(vec2<bool>(any(vec4<bool>(false, global1[_wgslsmith_index_u32(var_1.x, 24u)], true, global1[_wgslsmith_index_u32(19904u, 24u)])), false & global1[_wgslsmith_index_u32(0u, 24u)]), select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(var_1.x, 24u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(121282u, 24u)]), vec2<bool>(true, true)), !vec2<bool>(false, global1[_wgslsmith_index_u32(var_1.x, 24u)]), global0.x < global0.x), vec2<bool>(true, all(vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 24u)], true, false))))), _wgslsmith_dot_vec4_u32(firstTrailingBit(~max(vec4<u32>(var_1.x, var_1.x, 54375u, var_1.x), vec4<u32>(4294967295u, var_1.x, 81147u, 1u))), ~vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x) | vec4<u32>(~12746u, 1u, _wgslsmith_dot_vec2_u32(var_1, vec2<u32>(var_1.x, 41288u)), 4294967295u)), firstTrailingBit(-1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1340f, -2202f))), 302f) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(-745f * global0.x))));
    let var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.wxy, -abs(var_2.a), global2.x, u_input.b.ywy, ~(-552i));
}

