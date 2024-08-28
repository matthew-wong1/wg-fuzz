struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(13064u, 4294967295u), Struct_1(12409u, 60690u), Struct_1(10748u, 0u), Struct_1(18755u, 0u), Struct_1(0u, 2517u), Struct_1(1u, 0u), Struct_1(28533u, 22081u), Struct_1(1u, 5554u), Struct_1(56448u, 4294967295u), Struct_1(29332u, 4294967295u), Struct_1(1u, 5374u), Struct_1(1u, 42545u), Struct_1(98010u, 41957u), Struct_1(2412u, 1u));

var<private> global1: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false));

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_1, 4>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: i32) -> bool {
    return all(global1[_wgslsmith_index_u32(u_input.b, 29u)]);
}

fn func_3(arg_0: i32) -> u32 {
    global0 = array<Struct_1, 14>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_1 = false;
    var var_2 = Struct_1(select(reverseBits(4294967295u), _wgslsmith_mod_u32(18597u, _wgslsmith_sub_u32(u_input.b & u_input.b, u_input.b)), all(vec2<bool>(true, true))), u_input.b);
    let var_3 = !(!(!vec2<bool>(true, -478f > var_0.x)));
    return 86293u;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>((all(vec2<bool>(true, true)) | true) || func_2(select(~43194i, -2147483647i, true)), true, false);
    var var_1 = Struct_1(~1u, ~u_input.b);
    let var_2 = Struct_1(u_input.b, firstLeadingBit(_wgslsmith_div_u32(u_input.b, 5024u)));
    global1 = array<vec4<bool>, 29>();
    let var_3 = Struct_1(var_2.b, u_input.b);
    return Struct_1(0u, select(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 4294967295u, 7944u, 0u)), ~vec4<u32>(var_3.b, 331u, arg_0.a, 1892u)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_2.b, func_3(-228i)), ~_wgslsmith_add_u32(0u, 81818u), var_3.b), var_0.x));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = vec2<bool>(arg_1.b == _wgslsmith_dot_vec3_u32(min(abs(vec3<u32>(89278u, 1u, u_input.b)), vec3<u32>(4294967295u, 100250u, 1u)), ~vec3<u32>(4294967295u, 1u, u_input.b) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, arg_1.b, arg_1.a), vec3<u32>(u_input.b, 0u, arg_1.b))), true);
    let var_1 = func_1(arg_1);
    let var_2 = var_1;
    global3 = array<Struct_1, 4>();
    var_0 = !select(vec2<bool>(select(!var_0.x, !var_0.x, true), !var_0.x), select(vec2<bool>(true, true), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(false, false)), vec2<bool>(!var_0.x, true)), select(select(!vec2<bool>(false, var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x)), true), select(vec2<bool>(true, false), !vec2<bool>(false, var_0.x), vec2<bool>(true, true)), all(vec2<bool>(var_0.x, true)) & false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-734f, -318f)) - 995f) * 211f), -708f, var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1064f + 771f)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = arg_1.x;
    let var_1 = global0[_wgslsmith_index_u32(u_input.b, 14u)];
    var var_2 = _wgslsmith_f_op_f32(trunc(arg_1.x));
    global2 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 17973i, 21212i, 2147483647i), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -27548i) & vec4<i32>(-1i, 1i, u_input.a.x, -global2.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-firstTrailingBit(global2.x), u_input.c.x, ~1i, _wgslsmith_div_i32(u_input.a.x, global2.x)), select(-_wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, u_input.a.x, 0i, u_input.a.x), vec4<i32>(0i, 0i, -58280i, global2.x)), abs(vec4<i32>(global2.x, global2.x, 20646i, u_input.a.x)), true)));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x)), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-arg_1.x)))) * _wgslsmith_f_op_f32(abs(-1227f)));
    return global3[_wgslsmith_index_u32(0u, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 29>();
    global2 = vec4<i32>(u_input.a.x, firstTrailingBit(u_input.c.x), -27117i, -18275i) & _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(62576i, u_input.c.x, -2147483647i, 1i), countOneBits(vec4<i32>(1i, u_input.c.x, u_input.c.x, 2147483647i))), vec4<i32>(-1i) * -vec4<i32>(global2.x, 45022i, global2.x, u_input.c.x)), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, u_input.c.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-32896i, u_input.a.x, -2147483647i, -2147483647i), vec4<i32>(global2.x, u_input.a.x, u_input.c.x, global2.x))) & _wgslsmith_div_vec4_i32(select(vec4<i32>(global2.x, global2.x, u_input.c.x, 1i), vec4<i32>(-3014i, global2.x, -2147483647i, u_input.c.x), vec4<bool>(true, false, true, true)), vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, 2147483647i) ^ vec4<i32>(u_input.a.x, 49267i, u_input.a.x, 25049i)));
    global1 = array<vec4<bool>, 29>();
    let var_0 = func_5(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b << (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 44445u, 49569u, 11338u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, 0u, u_input.b), vec4<u32>(18910u, u_input.b, 0u, u_input.b))) % 32u), ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, u_input.b)))), 4u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(select(61745i, global2.x, false), func_1(global0[_wgslsmith_index_u32(31094u, 14u)]))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-126f, -896f)))), -2022f)));
    let var_1 = (_wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(-2147483647i, -28301i, u_input.c.x)), abs(_wgslsmith_div_vec3_i32(global2.zzz, global2.zwx))) | u_input.a) & vec3<i32>(max(1i, global2.x & -2147483647i) | global2.x, _wgslsmith_mod_i32(global2.x, min(-20932i, -1i)) & ~_wgslsmith_dot_vec2_i32(vec2<i32>(211i, -1i), vec2<i32>(global2.x, global2.x)), -1651i);
    global1 = array<vec4<bool>, 29>();
    var var_2 = _wgslsmith_dot_vec3_i32(var_1, ~_wgslsmith_mod_vec3_i32(select(var_1, vec3<i32>(global2.x, -12651i, u_input.a.x), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), vec3<i32>(-u_input.a.x, var_1.x, _wgslsmith_mult_i32(global2.x, var_1.x))));
    let var_3 = _wgslsmith_clamp_vec2_i32(u_input.a.yz, u_input.a.xy, u_input.a.yz);
    var var_4 = global0[_wgslsmith_index_u32(~var_0.b & var_0.b, 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1492f, -195f) * vec2<f32>(-1000f, -318f)))))));
}

