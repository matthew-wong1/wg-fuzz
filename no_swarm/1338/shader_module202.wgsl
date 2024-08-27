struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<i32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<u32> {
    global1 = arg_3;
    let var_0 = u_input.d.x;
    global1 = -arg_2.a;
    let var_1 = _wgslsmith_add_i32(abs(~(~(-1i))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0, _wgslsmith_mult_i32(7563i, _wgslsmith_mod_i32(16318i, arg_3.x))), _wgslsmith_sub_i32(global1.x | -1i, firstTrailingBit(1i)), u_input.c));
    let var_2 = u_input.e ^ arg_1.x;
    return _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, arg_2.b.x, arg_2.e.x), ~arg_2.e, countOneBits(arg_2.e)), abs(arg_2.e) >> ((arg_2.e | arg_2.e) % vec3<u32>(32u))), vec3<u32>(~(~4294967295u), 1u, min(abs(arg_2.b.x), 0u))) ^ ~vec3<u32>(~(~1u), select(~u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, arg_1.x, var_2, arg_2.e.x), vec4<u32>(0u, 59709u, 0u, u_input.e)), all(vec2<bool>(false, true))), 102897u);
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_2(u_input.d.x, !select(select(select(vec2<bool>(false, arg_0.x), vec2<bool>(true, true), arg_0.x), vec2<bool>(arg_0.x, arg_0.x), arg_0.yz), arg_0.zy, true), Struct_1(-vec4<i32>(reverseBits(global1.x), 1i, u_input.c, -u_input.b), _wgslsmith_clamp_vec3_u32(max(func_3(-1584f, vec2<u32>(u_input.e, 4294967295u), Struct_1(vec4<i32>(21607i, global1.x, 10248i, 0i), vec3<u32>(22878u, global0.x, 4294967295u), 1152f, 1000f, vec3<u32>(global0.x, global0.x, 46344u)), vec4<i32>(u_input.d.x, -1i, 38191i, 29098i)), vec3<u32>(u_input.e, u_input.e, global0.x)), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(75885u, global0.x, global0.x)), firstTrailingBit(vec3<u32>(global0.x, u_input.e, global0.x))), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.e, u_input.e, 46852u)), vec3<u32>(18067u, 1u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(3703u, global0.x, global0.x), vec3<u32>(global0.x, global0.x, 44965u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 770f)) * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(541f, -1306f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 659f)))), vec3<u32>(func_3(1257f, global0.yy, Struct_1(vec4<i32>(global1.x, global1.x, u_input.c, -1i), vec3<u32>(global0.x, 70436u, 1u), 1699f, -1558f, vec3<u32>(global0.x, 4294967295u, 0u)), vec4<i32>(global1.x, 4877i, 8040i, u_input.a)).x, ~u_input.e, 1u) ^ max(vec3<u32>(global0.x, 14744u, 31100u), ~vec3<u32>(u_input.e, global0.x, global0.x))));
    global1 = var_0.c.a;
    let var_1 = var_0.c;
    var var_2 = Struct_3(-274f, 43201i, var_1.d);
    global1 = _wgslsmith_sub_vec4_i32(-(var_1.a | var_1.a), abs(vec4<i32>(global1.x, global1.x, u_input.c, global1.x)));
    return var_0;
}

fn func_1() -> u32 {
    var var_0 = func_2(vec3<bool>(true, !(true && all(vec2<bool>(false, false))), select(select(true, true, true), true, true)));
    let var_1 = !vec2<bool>(any(func_2(select(vec3<bool>(false, true, var_0.b.x), vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, true))).b), true);
    var var_2 = Struct_3(func_2(!select(select(vec3<bool>(var_0.b.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, true, true)), !vec3<bool>(true, var_0.b.x, true), vec3<bool>(var_1.x, false, var_0.b.x))).c.d, 1i, _wgslsmith_f_op_f32(-var_0.c.c));
    let var_3 = u_input.d;
    var_0 = func_2(!vec3<bool>(true, !var_1.x, !var_0.b.x));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(min(var_0.c.b, var_0.c.e), ~var_0.c.b ^ firstTrailingBit(var_0.c.b)), var_0.c.e);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(global1.x, _wgslsmith_clamp_i32(-40876i, 9751i, 1i) << (firstLeadingBit(1u) % 32u), global1.x, -594i << (_wgslsmith_sub_u32(global0.x, 4294967295u) % 32u)), vec4<i32>(u_input.b, global1.x, ~(-1i << (func_1() % 32u)), firstLeadingBit(-2147483647i)), -func_2(vec3<bool>(true, true, true)).c.a);
    var var_0 = select(vec4<bool>(true, true, true, true), !vec4<bool>(all(vec4<bool>(false, true, true, false)) != all(vec2<bool>(false, true)), true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true));
    let var_1 = vec4<i32>(min(firstTrailingBit(-2147483647i), _wgslsmith_clamp_i32(u_input.c, abs(u_input.a), _wgslsmith_mod_i32(global1.x, global1.x))) ^ -_wgslsmith_mod_i32(func_2(var_0.zwz).a, global1.x), u_input.a >> (62424u % 32u), ~(~global1.x & ~0i), select(u_input.d.x, _wgslsmith_dot_vec4_i32(select(-vec4<i32>(u_input.b, u_input.d.x, u_input.a, 52461i), vec4<i32>(global1.x, -51012i, u_input.c, 0i), !var_0.x), vec4<i32>(_wgslsmith_div_i32(global1.x, global1.x), ~2147483647i, _wgslsmith_div_i32(-31047i, global1.x), abs(u_input.b))), !var_0.x));
    let var_2 = var_1;
    var var_3 = select(vec4<bool>(var_0.x, ~_wgslsmith_clamp_u32(global0.x, global0.x, global0.x) > (78592u >> (u_input.e % 32u)), func_2(!(!vec3<bool>(false, var_0.x, var_0.x))).b.x, !var_0.x), select(!select(!vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), vec4<bool>(false, true, all(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true))), var_0.x), !(!(!vec4<bool>(true, true, var_0.x, var_0.x)))), select(!vec4<bool>(true, false | var_0.x, global1.x == 2303i, true), !vec4<bool>(any(var_0.wz), false && var_0.x, false, any(vec4<bool>(false, var_0.x, var_0.x, false))), var_0.x));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1574f - _wgslsmith_f_op_f32(-1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1655f - var_4)), var_4, 669f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, 569f, 312f)))))));
}

