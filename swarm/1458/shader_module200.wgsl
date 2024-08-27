struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(15977u, 60566u);

var<private> global1: Struct_1 = Struct_1(vec2<u32>(0u, 88924u), vec4<bool>(true, false, false, false));

var<private> global2: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> bool {
    global2 = array<vec3<bool>, 31>();
    let var_0 = _wgslsmith_mod_i32(countOneBits(-48479i), -arg_0);
    let var_1 = Struct_1(_wgslsmith_add_vec2_u32(firstLeadingBit(reverseBits(u_input.d.yz)), u_input.d.zx), !vec4<bool>(false, all(vec2<bool>(global1.b.x, global1.b.x)) | !global1.b.x, select(arg_0 >= -458i, select(global1.b.x, global1.b.x, global1.b.x), all(vec2<bool>(false, false))), !global1.b.x));
    global1 = Struct_1(select(vec2<u32>(4294967295u, firstLeadingBit(_wgslsmith_sub_u32(global1.a.x, global1.a.x))), firstLeadingBit(_wgslsmith_sub_vec2_u32(u_input.d.yz, var_1.a)) ^ _wgslsmith_sub_vec2_u32(global1.a ^ vec2<u32>(0u, 1u), global1.a), any(select(var_1.b.wx, !global1.b.xx, !var_1.b.x))), !select(var_1.b, global1.b, !(!vec4<bool>(true, true, true, var_1.b.x))));
    let var_2 = Struct_2(vec4<bool>(var_1.b.x, global1.b.x, var_1.a.x <= abs(firstTrailingBit(global1.a.x)), var_1.b.x), Struct_1(vec2<u32>(abs(var_1.a.x), 26346u) ^ vec2<u32>(1u, ~4294967295u), !global1.b), _wgslsmith_f_op_f32(sign(-1443f)), u_input.d);
    return any(select(global1.b.xyw, var_1.b.yyz, global2[_wgslsmith_index_u32(var_1.a.x, 31u)]));
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = Struct_1(vec2<u32>(~countOneBits(60227u), 0u), select(vec4<bool>(false, all(global1.b.wzy), true, false), !select(!vec4<bool>(true, false, global1.b.x, true), global1.b, true || global1.b.x), vec4<bool>(!(false || global1.b.x), true, !func_3(arg_0), any(!vec3<bool>(false, global1.b.x, false)))));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-294f, 652f, global0.x < u_input.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1397f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-774f, _wgslsmith_f_op_f32(f32(-1f) * -657f)), -338f))))));
    return -1i;
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> bool {
    global2 = array<vec3<bool>, 31>();
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, ~_wgslsmith_mult_u32(arg_1.a.b.a.x, global0.x)) << (~(~vec2<u32>(global1.a.x, 13862u)) % vec2<u32>(32u)), global1.a);
    var var_0 = abs(_wgslsmith_clamp_vec2_i32(min(u_input.b.zz, -u_input.b.zz), u_input.b.zz, _wgslsmith_sub_vec2_i32(max(-u_input.b.yx, vec2<i32>(arg_0, 15287i)), vec2<i32>(abs(arg_0), -23270i))));
    var var_1 = 1i;
    let var_2 = -3171f;
    return false;
}

fn func_1() -> Struct_1 {
    global0 = ~u_input.d.xz;
    let var_0 = vec4<bool>(global1.b.x, !(_wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)) >= (i32(-1i) * -u_input.b.x)), true, !func_4(func_2(-u_input.b.x), Struct_3(Struct_2(global1.b, Struct_1(vec2<u32>(1u, 1u), global1.b), 1000f, vec3<u32>(1u, 4294967295u, 51423u)))));
    var var_1 = Struct_1(~u_input.d.xx, vec4<bool>(!global1.b.x, _wgslsmith_div_f32(1301f, -533f) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1105f)), _wgslsmith_f_op_f32(step(-944f, -809f)), func_3(u_input.b.x))), var_0.x, all(select(!vec4<bool>(false, global1.b.x, global1.b.x, var_0.x), var_0, true))));
    var_1 = Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(global0.x, u_input.d.x), vec2<u32>(u_input.d.x, abs(0u)), ~u_input.d.yz << (vec2<u32>(var_1.a.x, global1.a.x) % vec2<u32>(32u))), vec2<u32>(u_input.d.x, global0.x)), select(vec4<bool>(_wgslsmith_f_op_f32(sign(-2412f)) < -634f, all(global1.b), false | !var_0.x, var_0.x), select(select(select(var_1.b, vec4<bool>(true, var_1.b.x, false, global1.b.x), false), select(var_0, var_0, var_0.x), select(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, global1.b.x), vec4<bool>(var_0.x, var_1.b.x, global1.b.x, false), var_1.b)), global1.b, vec4<bool>(select(global1.b.x, true, false), true, !var_0.x, true)), true));
    let var_2 = -reverseBits(-((vec3<i32>(36699i, 1i, 27875i) | u_input.b) << (u_input.d % vec3<u32>(32u))));
    return Struct_1(vec2<u32>(global1.a.x, _wgslsmith_dot_vec3_u32(u_input.d << (u_input.d % vec3<u32>(32u)), vec3<u32>(u_input.a, var_1.a.x, u_input.a))) | var_1.a, vec4<bool>(true, func_3(var_2.x), global1.b.x, any(!vec2<bool>(var_1.b.x, false))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = firstTrailingBit(~vec2<u32>((global1.a.x << (0u % 32u)) & ~arg_2.a.x, 10725u));
    var var_1 = vec3<i32>(~u_input.b.x, arg_1, arg_1);
    global2 = array<vec3<bool>, 31>();
    global1 = Struct_1(vec2<u32>(_wgslsmith_add_u32(var_0.x & ~4294967295u, countOneBits(~0u)), max(u_input.a << (36855u % 32u), 0u)), select(global1.b, vec4<bool>((true || global1.b.x) != arg_3.b.x, true, global1.b.x, arg_3.b.x), select(vec4<bool>(global1.b.x, func_1().b.x, arg_3.b.x | arg_3.b.x, global1.b.x != false), vec4<bool>(arg_3.b.x, any(arg_2.b), all(vec2<bool>(arg_2.b.x, arg_0.b.x)), func_3(17314i)), all(vec3<bool>(false, false, arg_2.b.x)))));
    global0 = u_input.d.zz;
    return Struct_1(global1.a, arg_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b << (_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.a, u_input.d.x, global1.a.x) & vec3<u32>(38352u, u_input.a, 4294967295u)), countOneBits(vec3<u32>(u_input.a, u_input.d.x, u_input.d.x)) >> (~u_input.d % vec3<u32>(32u)), u_input.d) % vec3<u32>(32u));
    global0 = u_input.d.yz;
    let var_1 = Struct_2(select(global1.b, !(!select(vec4<bool>(true, false, global1.b.x, global1.b.x), vec4<bool>(global1.b.x, true, false, global1.b.x), true)), true != !(global1.b.x || false)), func_5(func_1(), -72539i, func_1(), Struct_1(vec2<u32>(1u, firstTrailingBit(1u)), vec4<bool>(!global1.b.x, true, true | global1.b.x, true))), 106f, min(vec3<u32>(~1u, min(72361u | global0.x, _wgslsmith_add_u32(7661u, 86616u)), ~firstLeadingBit(global0.x)), countOneBits(_wgslsmith_mult_vec3_u32(u_input.d, u_input.d) ^ _wgslsmith_mod_vec3_u32(u_input.d, u_input.d))));
    let var_2 = reverseBits(vec3<u32>(~(min(1u, global0.x) & 35020u), ~global1.a.x, firstLeadingBit(_wgslsmith_sub_u32(67532u, 0u)) << (global0.x % 32u)));
    let var_3 = var_1.b;
    global0 = vec2<u32>(global0.x, abs(select(u_input.a, ~(~global0.x), var_1.b.b.x)));
    let var_4 = Struct_3(Struct_2(vec4<bool>(global1.b.x, any(global2[_wgslsmith_index_u32(global0.x, 31u)]), func_1().b.x, all(select(vec2<bool>(true, global1.b.x), var_3.b.xx, var_1.a.x))), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_1.b.a.x), _wgslsmith_add_vec2_u32(var_2.yz, vec2<u32>(22724u, global0.x))), var_1.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-117f - _wgslsmith_f_op_f32(f32(-1f) * -351f)))), ~(~vec3<u32>(u_input.d.x, var_2.x, global1.a.x)) << (~_wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(4294967295u, global1.a.x, 13438u)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(u_input.a, 1u, ~_wgslsmith_sub_u32(3491u, var_4.a.d.x)), u_input.d), _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, global1.a.x, 6046u), var_2), ~vec3<u32>(global0.x, 4294967295u, var_1.b.a.x))), ~max(_wgslsmith_sub_u32(19021u, global0.x), var_4.a.b.a.x), firstLeadingBit(abs(1u))), u_input.d.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1578f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-559f * var_1.c)))), vec3<u32>(~(_wgslsmith_mod_u32(1u, global0.x) & _wgslsmith_dot_vec3_u32(u_input.d, var_1.d)), _wgslsmith_dot_vec2_u32(~abs(global1.a), global1.a), global0.x));
}

