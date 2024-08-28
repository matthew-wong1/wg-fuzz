struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
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

var<private> global0: array<u32, 19> = array<u32, 19>(1u, 4294967295u, 1u, 1u, 33368u, 1u, 85933u, 0u, 26396u, 63518u, 1u, 4294967295u, 4294967295u, 0u, 28913u, 1u, 0u, 1u, 4294967295u);

var<private> global1: array<bool, 13>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = countOneBits(-76038i);
    global1 = array<bool, 13>();
    let var_1 = ~arg_0.a;
    var var_2 = _wgslsmith_f_op_f32(abs(-532f));
    var var_3 = arg_0;
    return vec4<bool>(global1[_wgslsmith_index_u32(min(u_input.b, ~(~(~u_input.a.x))), 13u)], true & any(select(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 19u)], 13u)], false, false, global1[_wgslsmith_index_u32(1u, 13u)]), !vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20275u, 19u)], 19u)], 19u)], 13u)], false, global1[_wgslsmith_index_u32(91808u, 13u)], true), true)), true, true);
}

fn func_4(arg_0: vec4<bool>) -> vec2<bool> {
    global0 = array<u32, 19>();
    let var_0 = vec2<bool>(false, false);
    let var_1 = u_input.a;
    global0 = array<u32, 19>();
    var var_2 = Struct_1(reverseBits(_wgslsmith_div_i32(-13287i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-27604i, 2147483647i, 5458i, 12667i), vec4<i32>(-1682i, -2147483647i, 7021i, 2147483647i)))));
    return var_0;
}

fn func_2(arg_0: f32, arg_1: f32) -> u32 {
    global0 = array<u32, 19>();
    let var_0 = func_4(func_3(Struct_1(reverseBits(_wgslsmith_div_i32(55975i, 2147483647i)))));
    var var_1 = Struct_1(-332i);
    var var_2 = Struct_1(var_1.a);
    var var_3 = min(_wgslsmith_sub_u32(26072u, _wgslsmith_mod_u32(~u_input.a.x >> (global0[_wgslsmith_index_u32(4294967295u, 19u)] % 32u), select(_wgslsmith_sub_u32(50822u, u_input.a.x), 9479u, all(vec4<bool>(var_0.x, true, false, true))))), 4294967295u);
    return u_input.b;
}

fn func_1(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = min(u_input.a, ~vec2<u32>(_wgslsmith_sub_u32(~u_input.a.x, ~59749u), func_2(471f, 324f) & ~53582u));
    var var_1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.x, ~global0[_wgslsmith_index_u32(59762u, 19u)]) ^ ~u_input.a, vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_div_u32(1u, 30838u), firstTrailingBit(firstTrailingBit(global0[_wgslsmith_index_u32(var_0.x, 19u)]))), 19u)], u_input.b));
    var var_2 = vec2<u32>(firstTrailingBit(1u), ~3699u);
    let var_3 = Struct_1(-15671i >> (func_2(378f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) % 32u));
    var_2 = max(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.a.x) << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))), firstLeadingBit(~u_input.a)) | _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(25762u, u_input.a.x), var_0), _wgslsmith_add_vec2_u32(var_0, vec2<u32>(4294967295u, 0u))), ~u_input.a), ~vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1141u, 19u)], 15978u, 1u), vec3<u32>(var_0.x, 0u, 58626u))) | u_input.a);
    return vec3<u32>(53456u, _wgslsmith_mult_u32(27529u, countOneBits(55449u)), ~(~var_2.x));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec2<bool>) -> StorageBuffer {
    global0 = array<u32, 19>();
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>((0i << (firstTrailingBit(arg_0.x) % 32u)) & 29820i, ~(~(-4591i))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, _wgslsmith_mult_i32(-15126i, 13947i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(7882i, -2147483647i)), vec2<i32>(1i, 1i), vec2<i32>(1i, 1i))), ~vec2<i32>(-24667i, 1i)));
    let var_1 = all(func_3(Struct_1(var_0.x >> (arg_0.x % 32u))));
    global0 = array<u32, 19>();
    let var_2 = !(!(arg_1.x != 1012f)) || true;
    return StorageBuffer(arg_0.x >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(select(func_1(vec3<f32>(1000f, -1254f, -1381f)), _wgslsmith_mult_vec3_u32(vec3<u32>(func_1(vec3<f32>(-1006f, -2425f, -1000f)).x, u_input.b & 15483u, min(global0[_wgslsmith_index_u32(47599u, 19u)], u_input.b)), select(~vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66142u, 19u)], 19u)], 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(54140u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<u32>(1u, 36513u, 1u)), select(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 13u)], global1[_wgslsmith_index_u32(1334u, 13u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(61233u, 13u)], true), vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 13u)])))), select(!(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)])), func_3(Struct_1(-1i)).yyy, select(!vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11804u, 19u)], 13u)], true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34738u, 19u)], 13u)]), !vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 13u)], false, false), func_3(Struct_1(17480i)).zzw))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1054f, 203f, global1[_wgslsmith_index_u32(u_input.b, 13u)]))), _wgslsmith_f_op_f32(ceil(2873f)), -2045f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -321f), _wgslsmith_f_op_f32(trunc(-159f)), 442f)))), true, func_3(Struct_1(61370i)).zx);
}

