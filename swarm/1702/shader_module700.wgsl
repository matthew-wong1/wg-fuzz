struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(0u, 4294967295u), vec2<u32>(1114u, 58474u), vec2<u32>(0u, 1u), vec2<u32>(1u, 26901u), vec2<u32>(1u, 96432u), vec2<u32>(4978u, 4294967295u), vec2<u32>(25528u, 1u), vec2<u32>(4294967295u, 22087u), vec2<u32>(4294967295u, 34817u), vec2<u32>(22631u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(5905u, 1u), vec2<u32>(56610u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(1u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 53120u), vec2<u32>(41080u, 25198u), vec2<u32>(50359u, 53035u), vec2<u32>(60104u, 24847u), vec2<u32>(1u, 3969u));

var<private> global2: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(1045f, 508f), vec2<f32>(196f, -1000f), vec2<f32>(-2338f, -203f), vec2<f32>(101f, 352f), vec2<f32>(-817f, 423f), vec2<f32>(1890f, -1543f), vec2<f32>(-395f, 337f), vec2<f32>(473f, 1345f), vec2<f32>(2104f, 1231f), vec2<f32>(893f, 849f), vec2<f32>(-1000f, -304f), vec2<f32>(-1170f, 1000f), vec2<f32>(-1365f, -1998f), vec2<f32>(407f, 394f), vec2<f32>(1041f, 403f), vec2<f32>(209f, 442f), vec2<f32>(-1000f, -635f), vec2<f32>(780f, 763f), vec2<f32>(-142f, -1454f), vec2<f32>(-1135f, -495f), vec2<f32>(-181f, -1460f), vec2<f32>(-1000f, 113f), vec2<f32>(-146f, 1582f), vec2<f32>(-269f, 737f), vec2<f32>(-1635f, -659f), vec2<f32>(-536f, 789f), vec2<f32>(-1435f, 754f));

var<private> global3: array<vec2<f32>, 20>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    global2 = array<vec2<f32>, 27>();
    global3 = array<vec2<f32>, 20>();
    global1 = array<vec2<u32>, 21>();
    global3 = array<vec2<f32>, 20>();
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.b.x, abs(_wgslsmith_mult_i32(u_input.b.x, 15805i) >> (16326u % 32u)), -_wgslsmith_clamp_i32(-8989i, u_input.b.x, -u_input.b.x)), -u_input.b);
    return vec4<bool>(any(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), all(vec2<bool>(false, !any(vec4<bool>(true, false, true, false)))), true, all(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), false)) & false);
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-2035f)), _wgslsmith_div_f32(-544f, -2497f), -2216f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(463f, _wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(598f + -718f)))));
    global3 = array<vec2<f32>, 20>();
    global0 = !all(vec4<bool>(true, true, all(func_3()), false));
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    return _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, firstLeadingBit(~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x))), global1[_wgslsmith_index_u32(74524u, 21u)]);
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_add_vec2_u32(~(_wgslsmith_div_vec2_u32(u_input.c.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(19323u, 4294967295u), u_input.c.yy)) & _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), global1[_wgslsmith_index_u32(u_input.c.x, 21u)], vec2<u32>(29570u, u_input.c.x)), vec2<u32>(14713u, u_input.c.x))), func_2() & vec2<u32>(~_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], u_input.c.yz), firstLeadingBit(u_input.c.x)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(505f))));
    let var_2 = vec3<i32>(~(~max(_wgslsmith_mod_i32(1i, 17777i), _wgslsmith_sub_i32(u_input.a, -1i))), _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.d.x, u_input.d.x))), ~_wgslsmith_mult_i32(-u_input.a, ~25477i), 1i), -u_input.b.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -365f), _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1)), global2[_wgslsmith_index_u32(1u, 27u)]))))));
    let var_4 = Struct_1(1467f, ~(~vec2<u32>(var_0.x, var_0.x) ^ ~(global1[_wgslsmith_index_u32(41563u, 21u)] | u_input.c.xz)), select(countOneBits(max(vec2<u32>(0u, 0u) ^ vec2<u32>(u_input.c.x, u_input.c.x), ~u_input.c.zz)), global1[_wgslsmith_index_u32((u_input.c.x >> (_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], vec2<u32>(6423u, u_input.c.x)) % 32u)) | select(1u >> (var_0.x % 32u), 1u ^ u_input.c.x, func_3().x), 21u)], vec2<bool>(true, any(vec3<bool>(false, true, false)))));
    return _wgslsmith_mult_i32(i32(-1i) * -9791i, var_2.x) >= u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u >> (select(4547u, 24570u, !func_1()) % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(477f, 416f, _wgslsmith_f_op_f32(345f * -337f), _wgslsmith_f_op_f32(-423f - -695f))), any(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1221f - 204f), _wgslsmith_f_op_f32(f32(-1f) * -1062f), -934f, 1000f) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1085f, 1624f, -208f, -458f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1296f, 978f, -1256f, -1579f), vec4<f32>(775f, -1136f, 565f, -516f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1000f, -709f)), _wgslsmith_f_op_f32(select(-2014f, 707f, true)), 1f, _wgslsmith_f_op_f32(-101f + 2193f)))));
    var var_2 = u_input.a;
    global0 = !(!(!any(vec2<bool>(true, true))));
    var var_3 = 1u;
    let var_4 = Struct_1(1915f, vec2<u32>(1u, u_input.c.x), vec2<u32>(u_input.c.x, 31208u));
    global3 = array<vec2<f32>, 20>();
    global1 = array<vec2<u32>, 21>();
    let var_5 = abs(countOneBits(~vec4<u32>(reverseBits(var_4.c.x), _wgslsmith_sub_u32(u_input.c.x, var_4.c.x), abs(var_4.c.x), _wgslsmith_div_u32(var_4.c.x, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2498f, 1953f)) * global3[_wgslsmith_index_u32(27085u, 20u)]))), ~vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(0u), u_input.c.x), ~_wgslsmith_sub_u32(u_input.c.x, 24467u)), 0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zw + var_1.wz) + vec2<f32>(-137f, -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, -1000f), var_1.yy))))));
}

