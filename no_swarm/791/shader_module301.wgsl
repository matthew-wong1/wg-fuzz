struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(12016i, 0i), vec2<i32>(-55544i, -36189i), vec2<i32>(6950i, -2000i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, 65734i));

var<private> global1: Struct_3;

var<private> global2: f32 = -1224f;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<u32>(1u, 85337u, 4294967295u, 0u)), Struct_1(vec4<u32>(4294967295u, 0u, 32357u, 7680u)), Struct_1(vec4<u32>(9179u, 6131u, 1u, 87270u)), Struct_1(vec4<u32>(19214u, 1u, 0u, 4294967295u)), Struct_1(vec4<u32>(40282u, 14629u, 0u, 53856u)), Struct_1(vec4<u32>(48423u, 4294967295u, 4294967295u, 0u)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 1u)), Struct_1(vec4<u32>(4294967295u, 79853u, 0u, 4294967295u)), Struct_1(vec4<u32>(74924u, 12645u, 4294967295u, 82163u)), Struct_1(vec4<u32>(1u, 4294967295u, 26852u, 26693u)), Struct_1(vec4<u32>(0u, 1u, 0u, 4294967295u)), Struct_1(vec4<u32>(69537u, 2288u, 1u, 51725u)), Struct_1(vec4<u32>(15843u, 45618u, 0u, 41654u)), Struct_1(vec4<u32>(4294967295u, 53009u, 4294967295u, 25496u)), Struct_1(vec4<u32>(4294967295u, 4765u, 1u, 44895u)), Struct_1(vec4<u32>(64333u, 4294967295u, 16795u, 102101u)), Struct_1(vec4<u32>(59781u, 65385u, 1u, 7029u)), Struct_1(vec4<u32>(0u, 47884u, 45500u, 4294967295u)), Struct_1(vec4<u32>(2715u, 108213u, 7527u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 20480u)), Struct_1(vec4<u32>(6122u, 36129u, 17255u, 35968u)), Struct_1(vec4<u32>(79760u, 1u, 6274u, 35280u)), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 1u)));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~arg_0.a.a.x), arg_0.a.a.zx), u_input.b), 5u)];
    let var_1 = Struct_3(arg_0.a, reverseBits(global1.b));
    var var_2 = _wgslsmith_add_vec4_i32(~abs(firstTrailingBit(select(vec4<i32>(var_0.x, var_1.b, var_0.x, var_1.b), vec4<i32>(-2147483647i, var_1.b, var_1.b, var_0.x), true))), vec4<i32>(-(48105i >> ((var_1.a.a.x ^ 0u) % 32u)), 39802i, -(~global1.b >> (46852u % 32u)), abs(reverseBits(var_0.x))));
    let var_3 = abs(vec2<i32>(~(-abs(2147483647i)), global1.b));
    var var_4 = !(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec3<bool>(true, true, true))), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true));
    return _wgslsmith_f_op_f32(f32(-1f) * -737f);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(~arg_2.a.a);
    let var_1 = _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.a ^ (var_0.a.xzw >> (var_0.a.zwx % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.x, arg_2.a.a.x, 57982u), ~arg_2.a.a.zxz)), abs(vec3<u32>(abs(_wgslsmith_mult_u32(global1.a.a.x, u_input.a.x)), ~_wgslsmith_div_u32(21667u, 4294967295u), 43390u)));
    global1 = Struct_3(global3[_wgslsmith_index_u32(var_1 >> (0u % 32u), 23u)], i32(-1i) * -_wgslsmith_clamp_i32(-26215i, firstLeadingBit(163i), 0i));
    let var_2 = Struct_2(Struct_1(min(arg_2.a.a & ~global1.a.a, vec4<u32>(var_0.a.x, ~4294967295u, var_0.a.x, max(global1.a.a.x, global1.a.a.x)))));
    global1 = Struct_3(Struct_1(~(~vec4<u32>(u_input.b, 4294967295u, 1u, 25609u)) | ~var_2.a.a), (_wgslsmith_mod_i32(global1.b, 11350i) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 15332u, u_input.b), min(arg_2.a.a.zxz, vec3<u32>(38923u, var_1, 16552u))) % 32u)) << (_wgslsmith_add_u32(~min(var_2.a.a.x, var_2.a.a.x), u_input.b) % 32u));
    return var_2;
}

fn func_1() -> Struct_3 {
    let var_0 = -abs(vec3<i32>(-min(32685i, -67864i), 1i, global1.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    let var_2 = func_3(!any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false))), _wgslsmith_f_op_f32(func_2(Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.a.a.zw, ~u_input.a.yz), 23u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * -1401f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(select(var_1.x, 1624f, false)), 1620f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-665f, 1580f, var_1.x, -282f)))))), Struct_2(global3[_wgslsmith_index_u32(~(~(~global1.a.a.x)), 23u)]), vec2<i32>(select(-2147483647i, _wgslsmith_clamp_i32(global1.b, ~var_0.x, global1.b), false), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_0.xx, global0[_wgslsmith_index_u32(4294967295u, 5u)]), -1i), -24954i)));
    var var_3 = 0u << (~(~1u) % 32u);
    let var_4 = ~(-min(select(select(vec3<i32>(var_0.x, -6011i, global1.b), vec3<i32>(0i, 0i, -52584i), vec3<bool>(true, false, true)), vec3<i32>(-2147483647i, global1.b, var_0.x), -10961i > var_0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-43211i, global1.b, 2147483647i), vec3<i32>(-1i, -10536i, -2147483647i))));
    return Struct_3(Struct_1(firstTrailingBit(~(global1.a.a | global1.a.a))), -25426i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(all(vec3<bool>(true, true, false)), all(vec3<bool>(true, false, true)), true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), true);
    var var_1 = ~(49207u ^ min(1u, select(global1.a.a.x, 73012u, false))) != global1.a.a.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1323f, 375f, -441f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1212f, 521f, -400f)), vec3<bool>(false, true, false))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(466f, -603f, -1427f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(730f, -875f, 184f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 835f, -1659f))))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f)))));
    var var_3 = select((-global0[_wgslsmith_index_u32(global1.a.a.x, 5u)] | global0[_wgslsmith_index_u32(~global1.a.a.x, 5u)]) >> (u_input.a.yx % vec2<u32>(32u)), vec2<i32>((global1.b & -35378i) << (~0u % 32u), -global1.b), !select(vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, false), true)) | (vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(global1.b, -17792i) & global0[_wgslsmith_index_u32(54206u, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)]));
    global1 = func_1();
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u << (0u % 32u), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, i32(-1i) * -1i, var_3.x & 2944i), -firstLeadingBit(vec3<i32>(3709i, -25343i, 41916i)))), u_input.b);
}

