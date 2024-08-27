struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(136f, 515f, 740f, -223f), 0u);

var<private> global1: array<bool, 5>;

var<private> global2: vec4<i32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    return ~(-25373i & global2.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> Struct_1 {
    global1 = array<bool, 5>();
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1526f, -1280f, -168f, -930f)) + global0.a)) + _wgslsmith_f_op_vec4_f32(-global0.a)), ~(~0u));
    global2 = vec4<i32>(~_wgslsmith_mod_i32(func_3(), global2.x), firstTrailingBit(-global2.x), -max(_wgslsmith_clamp_i32(arg_1.a, arg_1.a, arg_1.a), arg_1.a | -11022i) << (~(~15184u) % 32u), 8813i);
    var var_0 = true;
    global1 = array<bool, 5>();
    return Struct_1(vec4<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -355f))), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1579f, _wgslsmith_f_op_f32(-global0.a.x))))), _wgslsmith_sub_u32(~1u, arg_3));
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-66553i, 13194i, 1i, global2.x) | (_wgslsmith_div_vec4_i32(vec4<i32>(1i, -30290i, global2.x, 0i), vec4<i32>(-2147483647i, global2.x, global2.x, -14624i)) << (vec4<u32>(4294967295u, 0u, 42688u, global0.b) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(-vec4<i32>(global2.x, global2.x, -1i, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(20462i, global2.x, -1i, global2.x), vec4<i32>(-12864i, global2.x, global2.x, global2.x), vec4<i32>(global2.x, global2.x, global2.x, global2.x))) ^ _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, global2.x, -1637i, -1i), vec4<i32>(global2.x, -7434i, -4408i, global2.x), vec4<i32>(41386i, global2.x, 17974i, -2147483647i)), vec4<i32>(global2.x, 30483i, -15805i, -19511i)), vec4<i32>(max(global2.x, 2147483647i), -(i32(-1i) * -2147483647i), abs(2147483647i ^ global2.x), firstLeadingBit(global2.x))), func_2(~firstTrailingBit(vec4<u32>(71477u, global0.b, global0.b, 11175u)), Struct_3(abs(1i)), 1060f, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, 1u) ^ vec4<u32>(u_input.a, u_input.a, 67789u, u_input.a), vec4<u32>(0u, global0.b, 4294967295u, 23112u)), u_input.a)));
    let var_1 = Struct_3(~var_0.a.x);
    global1 = array<bool, 5>();
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(10417i, var_1.a), _wgslsmith_dot_vec3_i32(global2.wxx, vec3<i32>(var_0.a.x, 1i, var_1.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.a.x, 2147483647i, var_1.a), ~var_0.a)), ~var_0.a.ywy), 57797i);
    var var_3 = select(!(!select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 5u)], global1[_wgslsmith_index_u32(var_0.b.b, 5u)]), !vec3<bool>(true, global1[_wgslsmith_index_u32(35842u, 5u)], true), vec3<bool>(false, global1[_wgslsmith_index_u32(38657u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)]))), !vec3<bool>(true, !all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], true, true)), true), select(vec3<bool>(false, any(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 5u)], true, true)), (global1[_wgslsmith_index_u32(var_0.b.b, 5u)] && true) & global1[_wgslsmith_index_u32(global0.b, 5u)]), !select(vec3<bool>(global1[_wgslsmith_index_u32(43840u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(global0.b, 5u)]), vec3<bool>(global1[_wgslsmith_index_u32(106869u, 5u)], false, true), false & global1[_wgslsmith_index_u32(u_input.a, 5u)]), !(!(var_0.b.b >= 10960u))));
    return vec3<i32>(~firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, var_1.a), vec2<i32>(2147483647i, -23601i))) >> (global0.b % 32u), 11370i, firstLeadingBit(max(var_2, 13368i) ^ (var_2 >> ((var_0.b.b & 32388u) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(global0.b, 5u)], true)), global1[_wgslsmith_index_u32(u_input.a, 5u)]);
    global2 = _wgslsmith_mod_vec4_i32(~max(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, -1i, global2.x, global2.x), vec4<i32>(54988i, -37435i, global2.x, -1i))), abs(vec4<i32>(-6765i, global2.x, global2.x, global2.x))), vec4<i32>(4887i, ~(i32(-1i) * -60202i), _wgslsmith_add_i32(~_wgslsmith_add_i32(45359i, global2.x), global2.x), _wgslsmith_dot_vec3_i32(func_1(), _wgslsmith_clamp_vec3_i32(~global2.yzx, global2.wwx, -vec3<i32>(1i, 14161i, 3773i)))));
    let var_1 = Struct_1(global0.a, 1u);
    global2 = min(min(vec4<i32>(_wgslsmith_dot_vec2_i32(global2.zx, vec2<i32>(global2.x, global2.x) & global2.wy), abs(abs(global2.x)), global2.x, 0i), vec4<i32>(abs(select(0i, global2.x, true)), -1i, -2147483647i, global2.x)), vec4<i32>(global2.x, ~0i, abs(0i), 1i & global2.x) ^ ~vec4<i32>(global2.x, _wgslsmith_dot_vec3_i32(global2.zww, vec3<i32>(global2.x, global2.x, 1i)), abs(global2.x), 20384i >> (1u % 32u)));
    global0 = func_2(vec4<u32>(global0.b ^ ~min(15517u, u_input.a), ~firstLeadingBit(global0.b), 19363u, 58295u), Struct_3(2147483647i), var_1.a.x, var_1.b);
    let var_2 = func_2(~vec4<u32>(var_1.b, 0u, ~16841u, reverseBits(1u)) & select(firstTrailingBit(vec4<u32>(u_input.a, global0.b, 7076u, u_input.a)), ~select(vec4<u32>(4294967295u, 0u, var_1.b, 99368u), vec4<u32>(15794u, var_1.b, global0.b, u_input.a), vec4<bool>(global1[_wgslsmith_index_u32(var_1.b, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], false, false)), select(!vec4<bool>(var_0.x, false, global1[_wgslsmith_index_u32(u_input.a, 5u)], global1[_wgslsmith_index_u32(9391u, 5u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(var_1.b, 5u)], false, false), select(vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(4062u, 5u)], false, var_0.x), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(global0.b, 5u)]), vec4<bool>(var_0.x, true, true, var_0.x)))), Struct_3(global2.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(11430u, var_1.b, 29857u, 29392u), vec4<u32>(77417u, 22483u, 9998u, global0.b)), Struct_3(global2.x), -348f, u_input.a ^ 34415u).a.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(27743u, 67548u, global0.b, u_input.a), vec4<u32>(u_input.a, global0.b, global0.b, global0.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global0.b, 32370u, var_1.b), vec4<u32>(u_input.a, 4160u, 4294967295u, 0u)) | vec4<u32>(52460u, 7631u, 0u, 14464u)), abs(vec4<u32>(0u | global0.b, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(48367u, global0.b), vec2<u32>(0u, global0.b)), ~u_input.a))));
    global0 = func_2(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(select(82407u, 66642u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, var_1.b)), abs(0u), func_2(vec4<u32>(u_input.a, u_input.a, var_1.b, 1u), Struct_3(1i), -179f, 0u).b), _wgslsmith_div_vec4_u32(~vec4<u32>(var_1.b, 18495u, 42669u, var_2.b), ~vec4<u32>(4294967295u, u_input.a, 4294967295u, 1u)))), Struct_3(~global2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(f32(-1f) * -720f))), 1163f), ~60976u);
    let var_3 = Struct_2(vec4<i32>(0i, -4333i, ~45905i, _wgslsmith_add_i32(global2.x, ~(-2147483647i))), func_2(vec4<u32>(reverseBits(reverseBits(var_1.b)), 4294967295u, 28047u, _wgslsmith_mod_u32(~u_input.a, var_2.b)), Struct_3(~(-global2.x)), 411f, 26495u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(15675u, 0u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, -980f)), -1000f)), _wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(72287u, 0u, var_2.b, var_1.b)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b, 26513u, var_3.b.b, var_1.b) >> (vec4<u32>(1u, global0.b, 0u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(0u, var_3.b.b, var_1.b, 37053u) | vec4<u32>(var_1.b, var_1.b, u_input.a, var_2.b)))), ~select(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.b, u_input.a, global0.b), firstLeadingBit(vec3<u32>(0u, 22724u, var_3.b.b))), ~vec3<u32>(68520u, 15954u, var_3.b.b) >> (vec3<u32>(var_3.b.b, 36692u, global0.b) % vec3<u32>(32u)), select(!vec3<bool>(global1[_wgslsmith_index_u32(var_2.b, 5u)], var_0.x, var_0.x), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], var_0.x, global1[_wgslsmith_index_u32(14218u, 5u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.b, 5u)], global1[_wgslsmith_index_u32(var_1.b, 5u)], true), vec3<bool>(global1[_wgslsmith_index_u32(24539u, 5u)], global1[_wgslsmith_index_u32(var_3.b.b, 5u)], false), vec3<bool>(var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.zwy)));
}

