struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<Struct_2, 25>;

var<private> global2: Struct_3;

var<private> global3: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    let var_0 = global2.a;
    global2 = Struct_3(Struct_1(vec3<bool>(false, false, arg_0), vec3<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(var_0.b, global2.a.b), u_input.a & 40410u) ^ ~vec3<u32>(global2.a.c, 55794u, global2.c.x), 4294967295u, global2.a.d), -1i, abs(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b.x, global2.a.d.x), ~var_0.b.zx))), vec4<i32>(firstLeadingBit(1i), _wgslsmith_div_i32(~(u_input.b ^ global2.d.x), ~(-u_input.b)), _wgslsmith_mult_i32(max(global2.d.x, -11055i), _wgslsmith_mod_i32(-7858i, u_input.b)) | -1i, 2147483647i), select(vec3<bool>(true, true, arg_0 & false), !(!var_0.a), any(vec4<bool>(var_0.a.x, any(var_0.a), false, var_0.a.x))));
    let var_1 = global2.d.x;
    var var_2 = vec3<bool>(all(var_0.a.zy), true, var_0.a.x);
    let var_3 = _wgslsmith_clamp_i32(global2.b, ~u_input.b, -_wgslsmith_sub_i32(u_input.b, firstLeadingBit(global2.b)));
    return 15307u;
}

fn func_2(arg_0: f32, arg_1: u32) -> vec3<f32> {
    let var_0 = Struct_1(vec3<bool>(true, ~(u_input.b ^ global2.b) >= _wgslsmith_div_i32(reverseBits(13313i), global2.d.x), global2.a.a.x), ~global2.a.d.yyw, firstTrailingBit(1u), vec4<u32>(~17295u, 82863u, arg_1 ^ func_3(!global2.e.x, !vec2<bool>(global2.e.x, true)), firstLeadingBit(u_input.a)));
    var var_1 = global2.a.b >> (_wgslsmith_add_vec3_u32(abs(_wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.a, 48311u, 1u), vec3<u32>(4294967295u, arg_1, arg_1)), min(vec3<u32>(0u, 39165u, 72261u), var_0.b))), abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, var_0.c, 1u), global2.a.b))) % vec3<u32>(32u));
    let var_2 = select(abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, var_1.x, var_0.c, 1u), vec4<u32>(global2.a.d.x, arg_1, var_0.b.x, arg_1)) & abs(global2.a.d)), global2.a.d, !vec4<bool>(var_0.a.x, all(vec3<bool>(false, global2.e.x, false)), any(!global2.a.a.yz), -450f <= global0[_wgslsmith_index_u32(var_1.x, 21u)]));
    var_1 = firstTrailingBit(var_2.yzz);
    var var_3 = select(var_2, max(~(~vec4<u32>(20718u, var_1.x, var_2.x, 51021u)), abs(global2.a.d)), true);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(min(480f, _wgslsmith_f_op_f32(arg_0 + 773f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 21u)])), _wgslsmith_f_op_f32(trunc(942f))) * 656f)) * vec3<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -266f))), global0[_wgslsmith_index_u32(reverseBits(1u), 21u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-532f))))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<f32>) -> u32 {
    global1 = array<Struct_2, 25>();
    let var_0 = true;
    let var_1 = 715f;
    global0 = array<f32, 21>();
    global2 = arg_1;
    return min(1u, _wgslsmith_sub_u32(4294967295u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(16049u, arg_1.c.x), vec2<u32>(59042u, arg_1.a.c)))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), global2.c), u_input.a), _wgslsmith_div_u32(~6630u, countOneBits(u_input.a)) ^ func_4(vec2<bool>(global2.e.x, global2.a.a.x), Struct_3(global2.a, global2.b, global2.a.b.zz, vec4<i32>(0i, -1i, -22876i, global2.d.x), global2.e), _wgslsmith_f_op_vec3_f32(func_2(global0[_wgslsmith_index_u32(global2.a.c, 21u)], global2.a.d.x)))), 21u)], global0[_wgslsmith_index_u32(~(~u_input.a) >> (1u % 32u), 21u)], _wgslsmith_f_op_f32(-410f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~4294967295u, 21u)] + _wgslsmith_f_op_f32(abs(813f))), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(global2.a.d.wyz, global2.a.d.wxz)), 21u)], global2.e.x))), global0[_wgslsmith_index_u32(~(~74972u), 21u)]);
    global1 = array<Struct_2, 25>();
    global1 = array<Struct_2, 25>();
    global2 = Struct_3(Struct_1(global2.e, global2.a.d.wyz, func_3(global2.a.a.x, vec2<bool>(global2.a.a.x, true)), ~vec4<u32>(~23955u, 0u, global2.a.b.x, firstLeadingBit(16542u))), 11019i, reverseBits(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.d.x, 0u, 4294967295u), global2.a.d.zwx), 0u)) & ~(~global2.a.b.xz), max(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.b, 2147483647i, global2.d.x, 2147483647i)), min(global2.d, global2.d)), vec4<i32>(global2.b, 60413i, _wgslsmith_dot_vec4_i32(global2.d, global2.d), _wgslsmith_mod_i32(global2.b, 0i))) & vec4<i32>(-2147483647i, _wgslsmith_div_i32(0i, global2.b), -59333i, _wgslsmith_mod_i32(0i, abs(1i))), vec3<bool>(any(select(select(vec4<bool>(global2.e.x, global2.e.x, true, global2.a.a.x), vec4<bool>(false, global2.e.x, global2.e.x, false), vec4<bool>(true, true, global2.a.a.x, global2.e.x)), select(vec4<bool>(global2.e.x, global2.e.x, false, global2.e.x), vec4<bool>(global2.e.x, global2.e.x, global2.e.x, global2.e.x), vec4<bool>(true, true, global2.e.x, false)), true)), any(!vec4<bool>(true, false, global2.e.x, global2.e.x)), true));
    let var_1 = Struct_3(Struct_1(vec3<bool>(any(select(vec3<bool>(false, true, false), global2.a.a, global2.e.x)), !(var_0.x >= 1163f), all(vec2<bool>(global2.a.a.x, global2.a.a.x)) == any(vec3<bool>(false, false, global2.e.x))), global2.a.d.zzy, firstLeadingBit(~global2.a.d.x), ~(~(~global2.a.d))), ~2147483647i, abs(_wgslsmith_mod_vec2_u32(~vec2<u32>(7147u, global2.a.c) ^ global2.a.d.wy, firstTrailingBit(global2.a.b.zz))), vec4<i32>(countOneBits(abs(_wgslsmith_mod_i32(1i, u_input.b))), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, 2147483647i)), abs(select(global2.d.zw, vec2<i32>(0i, 15417i), global2.a.a.x))), select(-u_input.b, -min(global2.d.x, global2.b), true), -(~2147483647i) >> (_wgslsmith_add_u32(~u_input.a, u_input.a << (global2.c.x % 32u)) % 32u)), select(select(vec3<bool>(false, global2.e.x, !global2.e.x), !global2.a.a, global2.a.a.x || true), vec3<bool>(!(global2.c.x < 4294967295u), global2.a.a.x, false && (true && global2.e.x)), true));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.b;
    let var_0 = func_1();
    var var_1 = _wgslsmith_dot_vec2_i32(reverseBits(firstTrailingBit(global2.d.wx)), reverseBits(global2.d.zz));
    var_1 = global2.b;
    global1 = array<Struct_2, 25>();
    var var_2 = func_1();
    global1 = array<Struct_2, 25>();
    global0 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(191f, 128f, global0[_wgslsmith_index_u32(var_0.b.x, 21u)], -402f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_2.c, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], -650f, 459f) - vec4<f32>(global0[_wgslsmith_index_u32(var_2.c, 21u)], global0[_wgslsmith_index_u32(var_2.b.x, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(var_0.c, 21u)])), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(var_0.d.x, 21u)], global0[_wgslsmith_index_u32(var_0.b.x, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], 183f))))), global2.e.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-309f, global0[_wgslsmith_index_u32(var_0.b.x, 21u)], global0[_wgslsmith_index_u32(var_0.b.x, 21u)], -874f), vec4<f32>(global0[_wgslsmith_index_u32(13122u, 21u)], 762f, global0[_wgslsmith_index_u32(49501u, 21u)], global0[_wgslsmith_index_u32(global2.c.x, 21u)]))))))))), vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.b.x, global2.a.d.x, 7828u), ~vec3<u32>(var_0.b.x, var_0.d.x, 12519u)), 21u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(26047u, 21u)] * -816f), global0[_wgslsmith_index_u32(4294967295u, 21u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -988f), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 21u)])))))), _wgslsmith_mult_vec4_i32(select(select(vec4<i32>(-27117i, global2.d.x, u_input.b, u_input.b), global2.d, vec4<bool>(var_2.a.x, false, global2.e.x, var_0.a.x)), vec4<i32>(u_input.b, 16695i, -8554i, 21020i), !vec4<bool>(global2.a.a.x, false, var_0.a.x, false)) & vec4<i32>(~global2.b, global2.b, firstLeadingBit(-2147483647i), -global2.d.x), global2.d), vec3<i32>(i32(-1i) * -1i, -reverseBits(16i) >> (1u % 32u), _wgslsmith_dot_vec2_i32(~global2.d.yw & abs(vec2<i32>(0i, -2147483647i)), global2.d.wz)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(31123u, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.c.x, 86896u), 21u)], global0[_wgslsmith_index_u32(~24772u, 21u)]), vec3<f32>(global0[_wgslsmith_index_u32(func_1().b.x, 21u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(71155u, 21u)]), _wgslsmith_f_op_f32(sign(1189f))), select(global2.a.c, var_0.b.x, global2.a.a.x) <= (u_input.a & u_input.a))))));
}

