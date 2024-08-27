struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: bool,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2;

var<private> global2: i32 = 2147483647i;

var<private> global3: array<u32, 18>;

var<private> global4: vec2<u32> = vec2<u32>(1u, 4294967295u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> vec2<u32> {
    let var_0 = -321f;
    global1 = Struct_2(!vec2<bool>(-1278f >= _wgslsmith_f_op_f32(var_0 - 588f), false), _wgslsmith_div_u32(~min(1u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), 1u));
    global1 = Struct_2(arg_0.xz, _wgslsmith_clamp_u32(global4.x | ~reverseBits(global4.x), global4.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 0u, global4.x, global1.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.b, 1u, global4.x, global1.b), vec4<u32>(u_input.b.x, 0u, 0u, 0u))), u_input.b.x)));
    var var_1 = abs(_wgslsmith_mod_vec3_u32(abs(u_input.b), ~(~(~vec3<u32>(0u, 0u, 0u)))));
    return vec2<u32>(~global4.x >> (~firstTrailingBit(firstLeadingBit(var_1.x)) % 32u), min(~_wgslsmith_mult_u32(global1.b, 1u), 1u) << ((1u >> (~global3[_wgslsmith_index_u32(var_1.x, 18u)] % 32u)) % 32u));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_3) -> i32 {
    var var_0 = !select(vec2<bool>(true, any(vec4<bool>(arg_1.x, false, true, arg_2.d.b.x))), global1.a, vec2<bool>(false, true));
    let var_1 = arg_2.c;
    global4 = _wgslsmith_div_vec2_u32(vec2<u32>(global1.b, _wgslsmith_clamp_u32(~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(arg_2.a.d.x, 18u)], u_input.b.x), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, arg_2.a.d.x, 13346u), global4.x), max(var_1.b, 4294967295u) >> (max(arg_2.a.d.x, 4294967295u) % 32u))), arg_2.a.d.xy);
    let var_2 = _wgslsmith_add_vec2_u32(~abs(min(arg_2.d.d.zx, vec2<u32>(global4.x, global4.x)) | ~u_input.b.xy), select(_wgslsmith_sub_vec2_u32(vec2<u32>(0u & u_input.b.x, 1u), vec2<u32>(~var_1.b, var_1.b)), _wgslsmith_div_vec2_u32(func_3(select(vec4<bool>(false, false, true, global1.a.x), vec4<bool>(false, var_0.x, true, true), true), true), vec2<u32>(abs(65289u), firstLeadingBit(u_input.b.x))), true));
    global2 = max(_wgslsmith_dot_vec2_i32(vec2<i32>(-15189i, arg_2.d.a.x | _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), arg_0), _wgslsmith_div_i32(-51350i, 48379i));
    return u_input.a.x;
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -202f)))) > 1916f, global1.a.x, !arg_1, arg_1);
    global2 = max(-u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(2147483647i), abs(func_2(vec2<i32>(u_input.a.x, 1i), vec2<bool>(true, false), Struct_3(Struct_1(vec3<i32>(arg_0, arg_0, 1i), var_0, var_0.x, u_input.b, vec2<f32>(802f, -136f)), vec4<bool>(false, var_0.x, true, global1.a.x), Struct_2(vec2<bool>(var_0.x, false), u_input.b.x), Struct_1(vec3<i32>(-69870i, arg_0, arg_0), vec4<bool>(global1.a.x, var_0.x, false, true), global1.a.x, vec3<u32>(1u, 1u, 1u), vec2<f32>(218f, 339f)), u_input.a.x))), -u_input.a.x), max(vec3<i32>(arg_0 >> (24734u % 32u), -2147483647i, ~21336i), (vec3<i32>(arg_0, u_input.a.x, -2147483647i) & vec3<i32>(u_input.a.x, u_input.a.x, arg_0)) & vec3<i32>(1i, 1i, 1i))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-184f, 1643f), -1460f, true)), 1000f)) - _wgslsmith_f_op_f32(select(166f, _wgslsmith_f_op_f32(f32(-1f) * -888f), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, arg_0), vec3<i32>(u_input.a.x, 45535i, u_input.a.x)) <= u_input.a.x))), _wgslsmith_f_op_f32(1964f - _wgslsmith_f_op_f32(abs(1587f))));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1608f * 329f), _wgslsmith_f_op_f32(f32(-1f) * -407f)), -1581f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(187f + -1112f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1202f), _wgslsmith_f_op_f32(select(1798f, 696f, var_2.x))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1081f, 1778f, 217f, _wgslsmith_f_op_f32(round(-1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1067f, -235f, 1279f, 1746f), vec4<f32>(1593f, -658f, 900f, 305f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-478f, -296f, -1315f, 352f), vec4<f32>(493f, 984f, 1453f, 1310f)))))));
    return Struct_1(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(select(-64309i, u_input.a.x, arg_1), _wgslsmith_div_i32(u_input.a.x, 37368i), abs(arg_0))), ~(-vec3<i32>(u_input.a.x, 2147483647i, 2147483647i))), vec4<bool>(!any(vec3<bool>(arg_1, var_2.x, true)), false, true, select(var_2.x, all(var_2.yxw), all(global1.a))), !var_2.x, _wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(reverseBits(28924u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global4.x, global1.b, 1u), vec4<u32>(37842u, global1.b, u_input.b.x, global1.b)), global4.x), vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(27196u, global4.x) ^ global4.x, 71788u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.xx) + vec2<f32>(var_3.x, var_3.x))) * var_3.yx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(0u);
    global3 = array<u32, 18>();
    global2 = min(30724i, abs(2147483647i));
    var var_1 = Struct_3(Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 2147483647i, 0i), abs(vec3<i32>(u_input.a.x, 28926i, u_input.a.x))), u_input.a.x, countOneBits(u_input.a.x)), vec4<bool>(select(global1.a.x, true, global1.a.x), all(select(vec3<bool>(global1.a.x, true, global1.a.x), vec3<bool>(true, global1.a.x, global1.a.x), global1.a.x)), global1.a.x, !global1.a.x & global1.a.x), global1.a.x, u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-704f, -791f), vec2<f32>(-965f, 1325f)))), !select(vec4<bool>(all(vec3<bool>(true, false, false)), global1.a.x, true, true), select(!vec4<bool>(false, true, global1.a.x, false), !vec4<bool>(global1.a.x, global1.a.x, false, false), u_input.a.x < -2147483647i), !select(vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(true, global1.a.x, global1.a.x, true), vec4<bool>(global1.a.x, false, false, global1.a.x))), Struct_2(vec2<bool>(any(vec3<bool>(global1.a.x, global1.a.x, global1.a.x)), all(vec3<bool>(true, true, true))), global1.b), func_1(u_input.a.x, true), 58719i);
    global3 = array<u32, 18>();
    var_0 = firstTrailingBit(~abs(_wgslsmith_mod_u32(~24993u, select(1u, 0u, var_1.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(989f, -1675f, -1000f, 346f), vec4<f32>(104f, 1086f, 740f, -1775f), var_1.b))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-501f, var_1.d.e.x, var_1.d.e.x, 583f), vec4<f32>(var_1.d.e.x, -937f, var_1.d.e.x, 1305f)))))), -4803i, vec4<f32>(1000f, var_1.d.e.x, var_1.d.e.x, var_1.a.e.x), 13748i);
}

