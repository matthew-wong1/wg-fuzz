struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 19773u;

var<private> global1: vec3<u32> = vec3<u32>(6239u, 47496u, 18910u);

var<private> global2: u32 = 21251u;

var<private> global3: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(0u, 27308u), vec2<u32>(17685u, 73914u), vec2<u32>(7768u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(15452u, 4294967295u), vec2<u32>(5783u, 62981u), vec2<u32>(0u, 77770u), vec2<u32>(1u, 1u), vec2<u32>(87571u, 18603u), vec2<u32>(0u, 80034u), vec2<u32>(36398u, 4294967295u), vec2<u32>(4294967295u, 11597u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 47850u), vec2<u32>(36115u, 0u), vec2<u32>(38462u, 4294967295u), vec2<u32>(43455u, 1u), vec2<u32>(0u, 0u));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_1(!(!vec3<bool>(true, true, -2431i <= u_input.c)), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), !any(vec4<bool>(true, true, true, true)));
    global3 = array<vec2<u32>, 18>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1214f, _wgslsmith_f_op_f32(f32(-1f) * -722f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(618f)) + _wgslsmith_f_op_f32(-1525f + 791f))), var_0.a.x)));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(849f)))) * 1000f)));
    let var_2 = var_0.c;
    return vec3<bool>(select(false, select(all(!vec2<bool>(var_2, var_2)), _wgslsmith_f_op_f32(953f * -838f) > _wgslsmith_f_op_f32(floor(339f)), true), !(_wgslsmith_add_i32(16461i, u_input.c) >= 1i)), true, any(vec3<bool>(all(select(vec4<bool>(var_0.b, false, var_2, true), vec4<bool>(var_0.c, var_2, var_2, var_2), vec4<bool>(true, var_2, var_2, false))), select(false, false, var_2), !(!var_0.a.x))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> u32 {
    global0 = 4123u;
    global3 = array<vec2<u32>, 18>();
    let var_0 = Struct_1(!select(vec3<bool>(arg_1 == -955f, false, any(vec2<bool>(false, true))), vec3<bool>(false, false, true), func_1()), all(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(false, false)), u_input.c < u_input.c), vec2<bool>(true, true))), true);
    let var_1 = firstLeadingBit(vec3<u32>(abs(_wgslsmith_div_u32(global1.x, u_input.b)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 4294967295u, global1.x), vec4<u32>(global1.x, 4294967295u, 4294967295u, 6886u))), ~(~40422u)));
    let var_2 = -_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c) >> (var_1 % vec3<u32>(32u)), vec3<i32>(u_input.c, u_input.c, -1i)), ~vec3<i32>(-57108i, u_input.c, -27266i)) ^ ~vec3<i32>(u_input.c, ~22298i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c, -1i), vec3<i32>(u_input.c, u_input.c, u_input.c))));
    return ~(36144u >> (max(abs(select(0u, u_input.a.x, var_0.c)), u_input.b) % 32u));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<u32>(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-395f, 1000f))))), 670f), global1.x, 0u);
    var var_1 = Struct_1(func_1(), arg_0.c | false, !(!(any(arg_0.a) || true)));
    var var_2 = Struct_1(var_1.a, all(!func_1()), all(select(select(vec2<bool>(true, true), select(vec2<bool>(arg_0.a.x, false), vec2<bool>(false, false), true), vec2<bool>(arg_0.a.x, var_1.a.x)), !select(vec2<bool>(true, var_1.b), vec2<bool>(var_1.a.x, var_1.c), arg_0.c), var_1.a.zx)));
    let var_3 = vec4<u32>((global1.x << (34232u % 32u)) << (~var_0.x % 32u), _wgslsmith_sub_u32(4294967295u, u_input.b), global1.x, global1.x);
    let var_4 = global1.yy;
    return Struct_1(vec3<bool>(all(!vec4<bool>(false, true, true, var_2.b)), arg_0.c, all(select(var_1.a.zy, var_2.a.xx, select(var_1.a.xz, arg_0.a.zz, vec2<bool>(true, var_2.c))))), arg_0.c, !(!var_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_1(!select(func_1(), vec3<bool>(false, true, false), func_1()), false, true));
    var var_1 = (firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(u_input.b, global1.x, 84018u), 0u, 1u, max(u_input.d.x, 10108u))) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(42012u, global1.x, 0u, global1.x) ^ vec4<u32>(99864u, u_input.d.x, global1.x, 0u), vec4<u32>(0u, 1u, 0u, 29114u)), 4429u, 24151u, global1.x) % vec4<u32>(32u))) >> (min(countOneBits(~(~vec4<u32>(58200u, 27984u, u_input.b, 0u))), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(61889u, global1.x, u_input.d.x, 23269u), vec4<u32>(global1.x, 4294967295u, 36474u, 0u)) | ~vec4<u32>(4828u, 29084u, 830u, u_input.d.x))) % vec4<u32>(32u));
    var_0 = Struct_1(vec3<bool>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.c, u_input.c, 1i), vec4<i32>(1i, u_input.c, u_input.c, 66755i)), -vec4<i32>(26736i, -23294i, u_input.c, -1i)) == u_input.c, !var_0.a.x != true, (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 8314u), vec2<u32>(18240u, var_1.x)) <= ~var_1.x) && (~var_1.x <= global1.x)), true, func_2(Struct_1(vec3<bool>(true, true, all(vec2<bool>(false, false))), true, !var_0.c)).a.x);
    let var_2 = Struct_1(select(var_0.a, !vec3<bool>(true, true, u_input.c < 0i), select(func_2(func_2(Struct_1(var_0.a, var_0.a.x, false))).a, var_0.a, !vec3<bool>(var_0.a.x, true, var_0.c))), !((u_input.c > u_input.c) | var_0.a.x), any(var_0.a));
    global0 = 2163u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, u_input.d.x, 1u), vec4<u32>(14346u, 29688u, 0u, u_input.a.x), vec4<u32>(78097u, 4294967295u, 1u, u_input.d.x))), _wgslsmith_sub_vec4_u32(min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, global1.x, 55453u, var_1.x), vec4<u32>(var_1.x, u_input.a.x, 1u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, u_input.b, var_1.x, 4294967295u), vec4<u32>(var_1.x, global1.x, 538u, var_1.x))), ~max(vec4<u32>(u_input.b, 1u, 4294967295u, var_1.x), vec4<u32>(19079u, 4294967295u, global1.x, 48567u)))));
}

