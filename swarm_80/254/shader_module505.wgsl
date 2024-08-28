struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 10571u, 18048u, 72852u);

var<private> global1: u32;

var<private> global2: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(0u, 4294967295u, 70119u), vec3<u32>(1u, 1u, 50288u), vec3<u32>(33001u, 95411u, 1u), vec3<u32>(0u, 1u, 14425u), vec3<u32>(39747u, 1u, 71475u), vec3<u32>(81870u, 47879u, 0u), vec3<u32>(86065u, 4294967295u, 4294967295u), vec3<u32>(9080u, 27352u, 26586u), vec3<u32>(15886u, 449u, 1u), vec3<u32>(29195u, 0u, 32461u), vec3<u32>(109075u, 0u, 31191u), vec3<u32>(44264u, 0u, 4294967295u), vec3<u32>(10147u, 33200u, 34404u), vec3<u32>(0u, 10066u, 20225u), vec3<u32>(1u, 62991u, 104513u), vec3<u32>(20237u, 56430u, 59831u), vec3<u32>(0u, 65676u, 24050u), vec3<u32>(0u, 4294967295u, 25078u), vec3<u32>(26994u, 28047u, 0u), vec3<u32>(1u, 4294967295u, 60863u), vec3<u32>(0u, 14027u, 18821u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_sub_vec4_i32(arg_0, select(~vec4<i32>(~arg_0.x, arg_0.x | -25386i, arg_0.x, ~3311i), vec4<i32>(arg_0.x, u_input.d.x, select(max(arg_0.x, -24680i), 2147483647i, all(vec4<bool>(true, true, true, false))), ~_wgslsmith_sub_i32(-1i, 14036i)), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), true != all(vec3<bool>(true, false, false)))));
    let var_1 = ~_wgslsmith_clamp_vec3_u32(u_input.a.zyx | ~(~global0.yww), _wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(countOneBits(global0.x), 21u)], ~global2[_wgslsmith_index_u32(103896u, 21u)] >> (vec3<u32>(global0.x, 1u, u_input.a.x) % vec3<u32>(32u))), countOneBits(~vec3<u32>(15939u, 51549u, 1u)) >> (vec3<u32>(u_input.e, _wgslsmith_dot_vec2_u32(global0.xw, vec2<u32>(u_input.a.x, 4294967295u)), _wgslsmith_add_u32(global0.x, 1u)) % vec3<u32>(32u)));
    var var_2 = ~(~vec3<i32>(var_0.x, u_input.d.x, 1i));
    var_2 = arg_0.ywx;
    global0 = ~(reverseBits(u_input.a) ^ ~select(max(vec4<u32>(14059u, 4294967295u, u_input.a.x, 59147u), u_input.a), u_input.a, true));
    return 4294967295u;
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    global0 = ~select(_wgslsmith_add_vec4_u32(~(~u_input.a), vec4<u32>(4294967295u, _wgslsmith_div_u32(u_input.e, global0.x), 1251u << (u_input.a.x % 32u), func_3(vec4<i32>(arg_0.x, arg_0.x, -9898i, -1i)))), firstTrailingBit(u_input.a), true);
    global1 = ~_wgslsmith_mod_u32(u_input.e, 45314u);
    let var_0 = vec2<u32>(~global0.x, ~0u) >> (~(~u_input.a.wz) % vec2<u32>(32u));
    global2 = array<vec3<u32>, 21>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-640f - -509f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(480f, -1061f))))));
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2330f + _wgslsmith_f_op_f32(min(var_1.a, var_1.a))) * 1f)), u_input.a.xx << (u_input.a.ww % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(step(1227f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.a, var_1.a, false)), _wgslsmith_f_op_f32(-var_1.a))))), max(vec2<i32>(firstLeadingBit(u_input.b.x), ~(-arg_0.x)), vec2<i32>(u_input.d.x, u_input.d.x)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    global2 = array<vec3<u32>, 21>();
    global0 = ~u_input.a;
    let var_0 = func_2(vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, -1i) << (1u % 32u), abs(u_input.d.x), -u_input.c.x, u_input.b.x << (reverseBits(arg_2.x) % 32u)) & u_input.d);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(var_0.c.a, 248f)));
    let var_2 = vec4<bool>(arg_1, true, arg_1, _wgslsmith_clamp_u32(8873u, 1u, _wgslsmith_div_u32(0u ^ global0.x, ~34761u)) > min(u_input.e, 68507u));
    return Struct_1(_wgslsmith_f_op_f32(var_0.a.a + _wgslsmith_f_op_f32(-var_0.a.a)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = ~vec4<u32>(25909u, _wgslsmith_div_u32(_wgslsmith_sub_u32(~17710u, global0.x), 4294967295u | (global0.x & global0.x)), 6876u, global0.x);
    global1 = u_input.e;
    global2 = array<vec3<u32>, 21>();
    global2 = array<vec3<u32>, 21>();
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(arg_0.a * arg_1.a), 1f)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(func_1(global0.x, false, global0.zy), Struct_1(-1019f))))), -374f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1282f, _wgslsmith_f_op_f32(abs(-632f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-428f))))))));
    var var_1 = u_input.d.x;
    var var_2 = 1u;
    global2 = array<vec3<u32>, 21>();
    let var_3 = _wgslsmith_mod_i32(~reverseBits(12439i), _wgslsmith_mult_i32(-45582i, ~max(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), -u_input.b.x)));
    global0 = ~max(~(~_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(global0.x, u_input.a.x, u_input.e, 76173u))), ~(~u_input.a << (~u_input.a % vec4<u32>(32u))));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer((reverseBits(~u_input.e) >> (u_input.e % 32u)) | global0.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(~u_input.e, global0.x, 36282u), vec3<u32>(global0.x, firstLeadingBit(reverseBits(1u)), 1u)), firstTrailingBit(-(~vec4<i32>(var_3, u_input.b.x, -1i, -2147483647i)) >> (abs(~vec4<u32>(35850u, 4665u, 4294967295u, global0.x)) % vec4<u32>(32u))), _wgslsmith_clamp_vec3_u32(global0.wzw, vec3<u32>(u_input.e, 2413u | global0.x, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, global0.x, global0.x), _wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(global0.x, 21u)], vec3<u32>(4294967295u, 10546u, global0.x)))) & global0.yyy, select(~(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(global0.x, u_input.a.x, global0.x, global0.x)) << (firstTrailingBit(u_input.a) % vec4<u32>(32u))), u_input.a >> (vec4<u32>(4294967295u, 2321u ^ global0.x, 4294967295u | u_input.e, global0.x) % vec4<u32>(32u)), vec4<bool>(all(vec3<bool>(false, true, true)), all(vec4<bool>(true, true, true, true)), true, var_3 >= _wgslsmith_div_i32(-2147483647i, -1i))));
}

