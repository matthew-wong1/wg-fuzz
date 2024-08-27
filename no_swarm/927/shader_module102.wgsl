struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 132571u), vec2<u32>(1u, 38728u), vec2<u32>(0u, 1u), vec2<u32>(0u, 31891u), vec2<u32>(40151u, 25383u), vec2<u32>(1u, 0u), vec2<u32>(0u, 1u), vec2<u32>(47772u, 77067u), vec2<u32>(1u, 7840u), vec2<u32>(1u, 70190u), vec2<u32>(71588u, 108519u), vec2<u32>(0u, 34509u), vec2<u32>(17610u, 0u), vec2<u32>(51249u, 18650u), vec2<u32>(2618u, 1u), vec2<u32>(1u, 13178u), vec2<u32>(0u, 4294967295u), vec2<u32>(72229u, 0u), vec2<u32>(74536u, 84458u), vec2<u32>(0u, 38758u));

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, false, false), 28103i);

var<private> global3: vec3<u32> = vec3<u32>(74417u, 1u, 0u);

var<private> global4: array<Struct_2, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_f32(2285f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-864f - _wgslsmith_f_op_f32(f32(-1f) * -639f)) * 657f))));
    return _wgslsmith_add_i32(-421i, 0i);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(select(vec3<bool>((u_input.c & -26805i) == u_input.b.x, !global2.a.x, global2.a.x), select(!global2.a, global2.a, all(vec3<bool>(global2.a.x, global2.a.x, global2.a.x))), !global2.a), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~2147483647i, firstTrailingBit(global2.b)), u_input.b), 35823i, (func_3(u_input.a.x, Struct_1(global2.a, 25317i), u_input.a.x, Struct_1(global2.a, 1i)) ^ _wgslsmith_div_i32(10418i, u_input.c)) & _wgslsmith_mod_i32(firstLeadingBit(53456i), -global2.b)));
    global0 = array<vec2<bool>, 25>();
    global2 = Struct_1(select(var_0.a, select(vec3<bool>(true, true, true), !global2.a, !select(vec3<bool>(true, var_0.a.x, true), var_0.a, var_0.a)), select(global2.a, vec3<bool>(true, true, global2.a.x), all(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), 25u)]))), ~var_0.b);
    global1 = array<vec2<u32>, 21>();
    global4 = array<Struct_2, 16>();
    return Struct_1(select(var_0.a, vec3<bool>(global2.a.x, all(vec2<bool>(var_0.a.x, var_0.a.x)), u_input.a.x > ~global3.x), global2.a.x | (~global2.b >= (17017i & var_0.b))), min(var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.b, global2.b), firstLeadingBit(u_input.e))) << (~(~23282u) % 32u));
}

fn func_1(arg_0: i32) -> vec3<u32> {
    var var_0 = vec4<bool>(global2.a.x, !global2.a.x, !global2.a.x, global2.a.x);
    let var_1 = ~(~(abs(~vec4<u32>(global3.x, 0u, global3.x, 28732u)) << ((~vec4<u32>(1u, u_input.a.x, 65613u, u_input.a.x) | vec4<u32>(global3.x, global3.x, 4294967295u, u_input.a.x)) % vec4<u32>(32u))));
    global2 = func_2();
    let var_2 = u_input.e;
    var_0 = vec4<bool>(!var_0.x && ((~4294967295u ^ ~global3.x) >= firstLeadingBit(u_input.a.x)), true, false, !var_0.x);
    return var_1.yzx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 25>();
    global3 = _wgslsmith_clamp_vec3_u32((_wgslsmith_div_vec3_u32(~vec3<u32>(global3.x, u_input.a.x, 23200u), func_1(global2.b)) >> (vec3<u32>(global3.x, ~global3.x, 61063u | global3.x) % vec3<u32>(32u))) ^ ~(~func_1(-2147483647i)), countOneBits(_wgslsmith_sub_vec3_u32(firstTrailingBit(reverseBits(vec3<u32>(30650u, 8438u, global3.x))), vec3<u32>(u_input.a.x & global3.x, global3.x, global3.x))), vec3<u32>(global3.x, firstTrailingBit(0u), select(firstTrailingBit(firstLeadingBit(42632u)), u_input.a.x | ~23908u, global2.a.x)));
    global4 = array<Struct_2, 16>();
    var var_0 = global4[_wgslsmith_index_u32(~global3.x, 16u)];
    global3 = vec3<u32>(firstLeadingBit(global3.x >> (global3.x % 32u)), min(~27860u, _wgslsmith_dot_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, global3.x, 0u), vec3<u32>(global3.x, 4294967295u, 72342u)), reverseBits(vec3<u32>(u_input.a.x, 0u, 1u)), func_2().a), vec3<u32>(_wgslsmith_div_u32(80846u, global3.x), 1u, 67790u))), u_input.a.x);
    global1 = array<vec2<u32>, 21>();
    let var_1 = Struct_2(func_2(), !global2.a);
    global0 = array<vec2<bool>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-306f, 638f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-175f, -268f) - vec2<f32>(-1950f, 428f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1715f, -796f) - vec2<f32>(110f, -595f))))), 189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1084f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(367f, 266f)), _wgslsmith_f_op_f32(max(143f, 714f)))), 1487f, 328f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(167f, -596f, -1000f) - vec3<f32>(-1018f, -1090f, -1362f)))))));
}

