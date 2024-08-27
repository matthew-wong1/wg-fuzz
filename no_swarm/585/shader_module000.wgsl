struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: f32 = -100f;

var<private> global2: Struct_2 = Struct_2(true, 1u);

var<private> global3: vec3<f32> = vec3<f32>(870f, 368f, -864f);

var<private> global4: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(933f, 1291f, 256f), vec3<f32>(-837f, -1042f, -1847f), vec3<f32>(909f, -677f, -271f), vec3<f32>(1707f, 1585f, -890f), vec3<f32>(105f, -580f, 427f), vec3<f32>(-401f, -1113f, -835f), vec3<f32>(1000f, 846f, -864f), vec3<f32>(-948f, 2054f, -1000f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<i32>) -> vec2<f32> {
    let var_0 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(36538u, 34631u), min(global2.b, 4294967295u)), vec2<u32>(1u, global2.b) ^ abs(vec2<u32>(1u, global2.b))), _wgslsmith_mod_u32(40924u, global2.b), 64388u, global2.b);
    let var_1 = -u_input.a.x;
    global2 = Struct_2(_wgslsmith_f_op_f32(-global3.x) != _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(sign(1350f))))), _wgslsmith_clamp_u32(~(~_wgslsmith_dot_vec3_u32(var_0.zww, var_0.wwy)), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(50594u, _wgslsmith_add_u32(var_0.x, global2.b)), vec2<u32>(4294967295u, global2.b))));
    var var_2 = global3.x;
    global4 = array<vec3<f32>, 8>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -142f)), global3.zy)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(global3.xy))))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_div_f32(-534f, global3.x))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = Struct_2(true, _wgslsmith_clamp_u32(1u, ~min(41296u, ~25372u), (firstLeadingBit(global2.b) & _wgslsmith_div_u32(107695u, 4294967295u)) & 32934u));
    let var_1 = ~_wgslsmith_mod_vec4_i32(~(min(vec4<i32>(u_input.b, -50749i, 1884i, -2147483647i), vec4<i32>(-33847i, global0.x, u_input.a.x, 25350i)) << (abs(vec4<u32>(4294967295u, arg_3.b, 16944u, arg_2.x)) % vec4<u32>(32u))), reverseBits(vec4<i32>(arg_1.x, 0i, 1i, arg_1.x) << (vec4<u32>(global2.b, 1u, global2.b, arg_2.x) % vec4<u32>(32u))) ^ min(select(vec4<i32>(1i, u_input.a.x, u_input.a.x, arg_1.x), vec4<i32>(global0.x, global0.x, arg_1.x, arg_1.x), vec4<bool>(var_0.a, arg_3.a, true, global2.a)), abs(vec4<i32>(2147483647i, -55706i, 0i, -2147483647i))));
    let var_2 = arg_2.x;
    global2 = arg_3;
    let var_3 = -262f;
    return !(!select(!select(vec4<bool>(false, false, var_0.a, global2.a), vec4<bool>(var_0.a, global2.a, global2.a, arg_3.a), vec4<bool>(false, false, var_0.a, true)), vec4<bool>(true, arg_3.a, arg_3.a, !var_0.a), vec4<bool>(false, true, true, false && var_0.a)));
}

fn func_2() -> i32 {
    let var_0 = -global0.x << (~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(20704u, 16179u)) >> (reverseBits(global2.b) % 32u))) % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - 568f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -786f))));
    var var_2 = -8009i;
    let var_3 = Struct_2(global2.a, global2.b);
    let var_4 = func_4(_wgslsmith_f_op_vec2_f32(func_3(global0.yzz)), vec2<i32>(-24740i, var_0), _wgslsmith_mod_vec3_u32(countOneBits((vec3<u32>(var_3.b, 1u, 4294967295u) | vec3<u32>(var_3.b, var_3.b, 1u)) & ~vec3<u32>(var_3.b, 1u, global2.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u | global2.b, 1u, firstLeadingBit(13544u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 27301u, var_3.b), vec3<u32>(global2.b, global2.b, global2.b), vec3<u32>(12694u, 0u, 11628u)))), Struct_2(true, 4294967295u));
    return firstLeadingBit(_wgslsmith_mod_i32(abs(-44840i) | -(1551i >> (var_3.b % 32u)), abs(u_input.a.x)));
}

fn func_1(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = true && global2.a;
    global4 = array<vec3<f32>, 8>();
    global0 = vec4<i32>(_wgslsmith_add_i32(~(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.b, global0.x, -51497i), vec4<i32>(global0.x, u_input.a.x, u_input.a.x, -3802i)) << (~global2.b % 32u)), abs(global0.x)), _wgslsmith_mod_i32(-1i, ~u_input.a.x), _wgslsmith_mult_i32(abs(func_2()), -14531i), reverseBits(-_wgslsmith_dot_vec2_i32(global0.zz, _wgslsmith_div_vec2_i32(vec2<i32>(-11493i, 19664i), global0.xy))));
    global2 = Struct_2(any(!vec3<bool>(var_0, false, true)) || true, _wgslsmith_dot_vec2_u32((~vec2<u32>(410u, global2.b) ^ arg_0.yy) & arg_0.yy, ~arg_0.zz));
    let var_1 = ~(~((4294967295u ^ arg_0.x) | _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(arg_0.x, 0u, arg_0.x, global2.b))) >> (0u % 32u));
    return func_4(vec2<f32>(-2339f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global3.x))))), global0.zz, _wgslsmith_sub_vec3_u32(reverseBits(abs(firstTrailingBit(arg_0.yzy))), vec3<u32>(countOneBits(countOneBits(32635u)), global2.b ^ ~4294967295u, ~_wgslsmith_mult_u32(var_1, 25999u))), Struct_2(!all(select(vec2<bool>(var_0, global2.a), vec2<bool>(false, true), var_0)), 1u)).wz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(885f, 1702f, 1000f, 1254f))), select(vec3<bool>(_wgslsmith_f_op_f32(global3.x - -724f) >= _wgslsmith_f_op_f32(global3.x + global3.x), false, any(func_1(vec4<u32>(1u, 0u, 45931u, global2.b)))), !select(select(vec3<bool>(false, true, global2.a), vec3<bool>(global2.a, true, true), vec3<bool>(true, global2.a, global2.a)), func_4(global3.yz, u_input.a.xy, vec3<u32>(23882u, global2.b, 4294967295u), Struct_2(false, global2.b)).ywy, vec3<bool>(global2.a, global2.a, false)), !(!(global2.a == true))));
    let var_1 = vec4<bool>(func_1(~(~(vec4<u32>(global2.b, global2.b, 1u, global2.b) >> (vec4<u32>(global2.b, global2.b, global2.b, global2.b) % vec4<u32>(32u))))).x, false, false, var_0.c.x);
    var var_2 = Struct_2(true, ~1u);
    global2 = Struct_2(select(all(func_4(vec2<f32>(373f, global3.x), u_input.a.yx, max(vec3<u32>(global2.b, 4294967295u, var_2.b), vec3<u32>(41083u, 83808u, global2.b)), Struct_2(false, global2.b)).zy), any(vec2<bool>(var_0.c.x, func_1(vec4<u32>(global2.b, var_2.b, var_2.b, global2.b)).x)), select(_wgslsmith_div_f32(368f, var_0.b.x) != _wgslsmith_f_op_f32(f32(-1f) * -1675f), -163f <= _wgslsmith_f_op_f32(trunc(197f)), var_1.x)), abs(var_2.b >> (var_2.b % 32u)));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4[_wgslsmith_index_u32(0u, 8u)] + global4[_wgslsmith_index_u32(var_2.b, 8u)]));
    var var_3 = global2.b;
    global3 = _wgslsmith_f_op_vec3_f32(ceil(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_mult_u32(var_2.b, ~global2.b)), max(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, global2.b), vec2<u32>(global2.b, 89776u)), ~3289u) >> (_wgslsmith_mod_u32(~global2.b, 33590u) % 32u)), 8u)]));
    var var_4 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-1489i, global0.x, global0.x, u_input.a.x), vec4<i32>(-1i, global0.x, 0i, global0.x)), select(-2147483647i, 1461i, global2.a)), firstLeadingBit(countOneBits(u_input.a))), vec3<i32>(func_2(), 2147483647i, global0.x)) | vec3<i32>(-1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -5806i, -2147483647i, -2147483647i) ^ vec4<i32>(2998i, global0.x, 0i, u_input.b), vec4<i32>(u_input.a.x, 1i, 1i, u_input.b) | vec4<i32>(u_input.a.x, 6018i, 2147483647i, -2147483647i)), -18604i), _wgslsmith_clamp_i32(~(-1i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, u_input.a.x, global0.x, global0.x), vec4<i32>(3069i, global0.x, -1i, 49937i)), vec4<i32>(60729i, global0.x, 2147483647i, -16875i)), _wgslsmith_div_i32(u_input.a.x, -global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(var_2.b, global2.b))), vec2<u32>(~var_2.b, global2.b)), var_0.b, select(~vec2<u32>(~global2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.b, 0u), vec3<u32>(var_2.b, 4294967295u, 1u))), abs(vec2<u32>(_wgslsmith_mod_u32(global2.b, 1123u), var_2.b & 3570u)), true));
}

