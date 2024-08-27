struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<Struct_1, 13>;

var<private> global2: bool;

var<private> global3: vec4<u32>;

var<private> global4: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(4294967295u, 0u, 0u, 47475u), vec4<u32>(4294967295u, 55356u, 87991u, 1400u), vec4<u32>(32525u, 4294967295u, 540u, 69143u), vec4<u32>(17181u, 1u, 4294967295u, 1u), vec4<u32>(1298u, 574u, 5496u, 1u), vec4<u32>(0u, 4294967295u, 63341u, 1u), vec4<u32>(44536u, 4294967295u, 6332u, 109354u), vec4<u32>(11301u, 36396u, 17271u, 4294967295u), vec4<u32>(16719u, 4294967295u, 44628u, 4294967295u), vec4<u32>(0u, 39496u, 1u, 4294967295u), vec4<u32>(14520u, 4550u, 4294967295u, 1u), vec4<u32>(15237u, 37238u, 33182u, 99644u), vec4<u32>(45096u, 14601u, 0u, 1u), vec4<u32>(26867u, 0u, 41583u, 37694u), vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<u32>(1u, 57594u, 1u, 31093u), vec4<u32>(21552u, 135640u, 4294967295u, 4294967295u), vec4<u32>(50219u, 1u, 31326u, 51061u), vec4<u32>(0u, 1u, 574u, 4294967295u), vec4<u32>(24810u, 56743u, 47178u, 4294967295u), vec4<u32>(20506u, 13925u, 8604u, 0u), vec4<u32>(34646u, 30033u, 0u, 0u), vec4<u32>(15312u, 27778u, 21783u, 4294967295u), vec4<u32>(1u, 3397u, 29646u, 0u), vec4<u32>(68395u, 31306u, 1u, 26241u), vec4<u32>(10545u, 1u, 46125u, 3521u), vec4<u32>(4294967295u, 4294967295u, 19832u, 0u), vec4<u32>(4294967295u, 9912u, 0u, 4294967295u), vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(0u, 105072u, 6319u, 58898u), vec4<u32>(4294967295u, 1u, 13960u, 21115u), vec4<u32>(0u, 20695u, 12231u, 15305u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(2236u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 1u, 3955u, 1u), vec4<u32>(global3.x, global3.x, global3.x, global3.x)), 35399u), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 4294967295u, global3.x, global3.x), vec4<u32>(39019u, global3.x, global3.x, global3.x)), global3.x, abs(global3.x), global3.x)), 13u)];
    let var_1 = global3.xwx;
    global0 = array<f32, 21>();
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(38631u, _wgslsmith_div_u32(~0u, ~0u)), 13u)];
    let var_3 = vec4<bool>(all(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true))), (_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1456f, -1000f), -640f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(var_0.b.x, 21u)])))) & all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true)), any(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true), vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))))), false);
    return vec4<bool>(false, true, false, var_3.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 402f, global0[_wgslsmith_index_u32(4294967295u, 21u)], 1429f), vec4<f32>(arg_0, 418f, -883f, -1271f), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1981f, 566f, -1385f, global0[_wgslsmith_index_u32(arg_1.b.x, 21u)]) * vec4<f32>(global0[_wgslsmith_index_u32(44080u, 21u)], -184f, 412f, -1577f)))), select(vec4<bool>(true, true, true, true), func_3(), true))))));
    let var_1 = arg_1;
    var var_2 = select(vec2<bool>(1i > _wgslsmith_mult_i32(-9886i, abs(arg_1.a)), false), func_3().zy, false);
    var var_3 = ~firstTrailingBit(~reverseBits(arg_1.b.wz));
    var var_4 = vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0, 1439f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global3.x, 21u)])))))), _wgslsmith_f_op_f32(round(744f))), _wgslsmith_f_op_f32(ceil(1679f)));
    return _wgslsmith_add_u32(46974u, ~52253u);
}

fn func_1() -> bool {
    global0 = array<f32, 21>();
    global1 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_mod_u32(func_2(global0[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(1u, 13u)]) & global3.x, max(firstTrailingBit(global3.x), select(50474u, global3.x, true)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(68495u, global3.x), ~_wgslsmith_div_vec2_u32(firstTrailingBit(global3.yw), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), global3.zz))), abs(global3.xz)), 13u)];
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(63217u, 0u, var_1.b.x, var_1.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.x, global3.x, global3.x, var_1.b.x), var_1.b)), min(1u & global3.x, reverseBits(var_1.b.x))), _wgslsmith_mod_u32(var_1.b.x, firstLeadingBit(abs(var_1.b.x)) << (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(5219u, global3.x, var_1.b.x, 1u)), ~vec4<u32>(78114u, 21481u, var_1.b.x, 4294967295u)) % 32u))), 13u)];
    return firstLeadingBit(-var_1.a >> (~select(52838u, global3.x, true) % 32u)) >= _wgslsmith_clamp_i32(2147483647i, var_2.a, abs(0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(select(true, func_1(), true), false, func_1(), !any(vec2<bool>(true, true))), !vec4<bool>(true, func_1(), true, true), select(func_3(), select(vec4<bool>(all(vec2<bool>(false, true)), all(vec2<bool>(true, true)), select(true, false, true), true), !func_3(), all(func_3().yy)), false));
    var var_1 = ~vec3<i32>(29547i, -_wgslsmith_clamp_i32(u_input.a, i32(-1i) * -2147483647i, ~u_input.b), u_input.a);
    var var_2 = !var_0.zy;
    global0 = array<f32, 21>();
    var_1 = _wgslsmith_mult_vec3_i32((vec3<i32>(~(-20386i), var_1.x, ~var_1.x) >> (global3.xxz % vec3<u32>(32u))) >> ((~vec3<u32>(global3.x, 26444u, 79583u) | global3.yzz) % vec3<u32>(32u)), -select(vec3<i32>(_wgslsmith_add_i32(u_input.a, -2147483647i), ~(-1i), var_1.x), firstLeadingBit(vec3<i32>(var_1.x, u_input.a, 1i)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, var_1.x, 2147483647i), vec3<i32>(var_1.x, 1i, 28503i)), !var_0.wxx));
    global1 = array<Struct_1, 13>();
    let var_3 = _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(0u, global3.x, global3.x)) | (global3.zwy | countOneBits(vec3<u32>(51992u, global3.x, global3.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(~0u, _wgslsmith_mult_u32(29115u, global3.x), global3.x), _wgslsmith_mult_vec3_u32(~global3.yxw, vec3<u32>(70761u, global3.x, global3.x)))) >> (func_2(-1000f, global1[_wgslsmith_index_u32(global3.x, 13u)]) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(global3.x, 21u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(var_3), 21u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(32193u, global3.x), var_3), 21u)])));
}

