struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<i32, 21>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 4294967295u);

var<private> global4: f32 = -1123f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> i32 {
    let var_0 = !global0.a;
    global0 = Struct_5(vec3<bool>(true, any(vec3<bool>(all(vec4<bool>(global0.a.x, global0.a.x, true, false)), !global2.x, global0.a.x)), false), min(_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, -13768i, -19524i), vec3<i32>(global0.b.x, global1[_wgslsmith_index_u32(global3.x, 21u)], 22334i)) >> (~(vec3<u32>(1u, 1u, global3.x) ^ vec3<u32>(global3.x, 68884u, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(~(-global0.b.x), -2147483647i, ~2147483647i)));
    global2 = select(global0.a, select(vec3<bool>(true, global2.x, any(!var_0.yx)), !vec3<bool>(global2.x | true, true, global0.a.x), true), var_0.x);
    let var_1 = Struct_2(true, Struct_1(~min(global3.x, global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(280f, 2655f)), _wgslsmith_f_op_f32(round(-1218f)))))));
    global1 = array<i32, 21>();
    return abs(-u_input.a.x);
}

fn func_2() -> Struct_5 {
    let var_0 = reverseBits(-_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 21u)], 42457i, global1[_wgslsmith_index_u32(global3.x, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]), vec4<i32>(-20031i, global0.b.x, global1[_wgslsmith_index_u32(global3.x, 21u)], -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, global0.b.x, global0.b.x, global0.b.x), vec4<i32>(-70221i, 1i, -23951i, u_input.a.x)))) << (vec4<u32>(2695u, 31194u, global3.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(40590u, global3.x, global3.x, global3.x) | vec4<u32>(global3.x, global3.x, 7114u, global3.x), ~vec4<u32>(global3.x, global3.x, 97280u, 60338u)), ~reverseBits(vec4<u32>(global3.x, global3.x, 0u, global3.x)))) % vec4<u32>(32u));
    var var_1 = ~max(4294967295u, abs(_wgslsmith_dot_vec2_u32(global3.yz, abs(vec2<u32>(global3.x, 1u)))));
    global2 = select(!global0.a, vec3<bool>(any(!vec4<bool>(global2.x, true, global0.a.x, global2.x)), !(_wgslsmith_div_u32(9817u, global3.x) > ~global3.x), true), true);
    var var_2 = func_3();
    var_2 = abs(abs(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mult_i32(1i, -u_input.a.x))));
    return Struct_5(!(!select(select(global0.a, vec3<bool>(true, global2.x, true), false), !vec3<bool>(false, false, global0.a.x), select(vec3<bool>(false, true, global0.a.x), vec3<bool>(false, global0.a.x, false), true))), vec3<i32>(~51965i, _wgslsmith_dot_vec3_i32(vec3<i32>(1816i, -2147483647i, _wgslsmith_div_i32(-2147483647i, global0.b.x)), vec3<i32>(97727i, _wgslsmith_sub_i32(1i, var_0.x), global1[_wgslsmith_index_u32(global3.x, 21u)])), global0.b.x));
}

fn func_1() -> f32 {
    let var_0 = func_2();
    global2 = global0.a;
    var var_1 = true;
    global3 = max(vec3<u32>(_wgslsmith_clamp_u32(~max(54942u, global3.x), ~(global3.x >> (global3.x % 32u)), 32374u), _wgslsmith_div_u32(global3.x, 28865u), ~0u), firstLeadingBit(reverseBits(firstLeadingBit(vec3<u32>(global3.x, 0u, global3.x)))));
    var var_2 = !(!(!global0.a.zy));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-104f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1635f), _wgslsmith_f_op_f32(round(136f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -146f)))), Struct_2(false, Struct_1(global3.x, -736f)), all(!(!vec3<bool>(true, global0.a.x, global0.a.x))));
    global2 = !global0.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.b, -640f, -470f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_0.a, -624f), vec3<f32>(var_0.b.b.b, var_0.a, var_0.a)))) * vec3<f32>(var_0.b.b.b, var_0.a, 1665f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.a, -1207f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.b, var_0.a, var_0.b.b.b) * vec3<f32>(-681f, var_0.b.b.b, 1666f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.b, var_0.a, -120f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.b.b.b, var_0.b.b.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.b.b.b, var_0.b.b.b) * vec3<f32>(var_0.b.b.b, 1573f, 230f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a, var_0.b.b.b, var_0.b.b.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1.xz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(548f, -1000f, 119f, var_0.b.b.b) - vec4<f32>(var_1.x, 1998f, var_0.a, 1173f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.b.b, var_0.a, var_1.x, -1539f))), var_0.b.a & global0.a.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1385f, var_0.b.b.b, 576f, -876f) * _wgslsmith_div_vec4_f32(vec4<f32>(239f, -750f, var_0.b.b.b, -1469f), vec4<f32>(var_1.x, var_0.b.b.b, var_0.b.b.b, 1231f))))), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -11943i, 28168i << (~var_0.b.b.a % 32u), u_input.a.x), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 39950i, -18795i, global0.b.x), abs(vec4<i32>(global1[_wgslsmith_index_u32(var_0.b.b.a, 21u)], global1[_wgslsmith_index_u32(22331u, 21u)], global1[_wgslsmith_index_u32(global3.x, 21u)], 2147483647i)), vec4<i32>(global0.b.x, -1i, u_input.a.x, 1i))), -reverseBits(2147483647i));
}

