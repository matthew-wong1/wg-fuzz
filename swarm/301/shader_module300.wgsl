struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    global0 = u_input.c >> (_wgslsmith_clamp_u32(24799u, 16112u, ~(~23809u)) % 32u);
    let var_0 = ~select(vec3<u32>(u_input.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, 39150u), vec3<u32>(17796u, 18284u, u_input.c)), u_input.b), vec3<u32>(u_input.b, ~(~11136u), ~(4294967295u << (u_input.b % 32u))), vec3<bool>(true, any(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(522f * global1.x) < _wgslsmith_f_op_f32(170f * global1.x)));
    global0 = ~1u;
    var var_1 = !select(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), !all(vec2<bool>(true, false)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)), select(any(vec3<bool>(true, false, false)), select(false, true, false), true)), select(vec4<bool>(true, true, select(true, true, true), u_input.b != var_0.x), vec4<bool>(all(vec3<bool>(false, true, false)), true, all(vec4<bool>(true, true, false, false)), true), vec4<bool>(true, true, false, all(vec2<bool>(true, false)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true), 1u != u_input.c), ~6497u >= ~u_input.b));
    let var_2 = vec3<u32>(select(_wgslsmith_sub_u32(~6401u, var_0.x), 0u, true), ~(~u_input.c), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(1u, 12599u, u_input.c), vec3<u32>(var_0.x, 4294967295u, 7991u), var_1.x), abs(var_0)), vec3<u32>(u_input.c, _wgslsmith_sub_u32(4294967295u, u_input.b), ~0u))) | var_0;
    return all(var_1.xzw);
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_2(Struct_1(global1.yx, vec4<f32>(global1.x, 1204f, global1.x, _wgslsmith_div_f32(-1500f, _wgslsmith_f_op_f32(f32(-1f) * -558f))), u_input.a.xz), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, global1.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 454f, 513f, global1.x) + vec4<f32>(global1.x, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1593f, -1000f, global1.x)), vec4<bool>(func_3(global1.xx), select(true, false, true), all(vec4<bool>(false, false, false, false)), true))), u_input.a.zx), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, -506f), vec2<f32>(-2079f, 1000f), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-global1.xy)))), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(floor(global1.zy)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-647f, global1.x), -1000f, -488f, _wgslsmith_f_op_f32(308f * 1477f)), vec4<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -782f), _wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(f32(-1f) * -510f))), vec2<i32>(-firstTrailingBit(u_input.a.x), ~_wgslsmith_mult_i32(-1i, 2147483647i))));
    return Struct_5(Struct_3(false, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.b.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(280f, 732f, global1.x, -875f) + vec4<f32>(global1.x, -709f, -492f, 116f))), u_input.a.zx)), _wgslsmith_mod_u32(firstTrailingBit(u_input.c), ~(~select(u_input.b, u_input.b, true))), vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.b, 0u), _wgslsmith_mult_u32(u_input.c, u_input.c), u_input.c), ~vec4<u32>(4294967295u, u_input.c >> (15955u % 32u), firstLeadingBit(u_input.b), max(_wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 8072u, u_input.c, u_input.c), vec4<u32>(1u, 31592u, u_input.b, 0u)))), all(select(vec2<bool>(select(false, true, false), false), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), (-1i >> (u_input.b % 32u)) < ~2147483647i)));
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = func_2();
    global0 = 4294967295u;
    var var_1 = Struct_2(func_2().a.b, var_0.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1.yy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1080f, -423f) + global1.xx))))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, -1088f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0.a.b.b))))), -var_0.a.b.c));
    global0 = ~4294967295u;
    let var_2 = ~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32((u_input.a.yy << (vec2<u32>(70229u, 48150u) % vec2<u32>(32u))) >> (arg_0.wx % vec2<u32>(32u)), var_1.d.c), ~(~u_input.a.x));
    return select(select(select(vec3<bool>(1i < var_0.a.b.c.x, var_0.a.b.c.x >= var_0.a.b.c.x, var_0.e), vec3<bool>(true, var_0.a.a, !var_0.e), vec3<bool>(var_0.e, true, true)), !vec3<bool>(var_0.e, true, all(vec3<bool>(var_0.e, false, false))), vec3<bool>(var_0.e, all(select(vec2<bool>(false, var_0.e), vec2<bool>(true, true), vec2<bool>(var_0.e, false))), !(!var_0.a.a))), !select(select(!vec3<bool>(false, var_0.a.a, true), vec3<bool>(false, var_0.e, false), select(vec3<bool>(false, var_0.a.a, true), vec3<bool>(var_0.a.a, var_0.a.a, true), false)), vec3<bool>(true, true, true), _wgslsmith_dot_vec2_u32(arg_0.yz, vec2<u32>(arg_0.x, u_input.b)) >= (arg_0.x ^ var_0.b)), !var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b >> ((firstTrailingBit(u_input.c) ^ u_input.b) % 32u), _wgslsmith_mod_u32(78301u, min(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(123257u, u_input.c, 1u), vec3<u32>(1u, 7368u, u_input.b))))), vec3<u32>(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b, 53031u, u_input.b), vec4<u32>(48892u, u_input.b, 4294967295u, u_input.c)), vec4<u32>(9205u, u_input.b, u_input.b, 66686u)), abs(select(u_input.b, 60748u, false))) >> (~vec3<u32>(u_input.b, u_input.c, 1u >> (u_input.b % 32u)) % vec3<u32>(32u)));
    var var_1 = Struct_5(Struct_3(false, Struct_1(global1.zz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, global1.x, -522f, global1.x))), vec2<i32>(u_input.a.x, u_input.a.x) | u_input.a.yx)), ~_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(64366u, var_0.x), 30654u, _wgslsmith_mult_u32(11913u, _wgslsmith_mult_u32(45211u, 0u))), countOneBits(~vec3<u32>(~4294967295u, u_input.b, u_input.c)), ~max(~abs(vec4<u32>(u_input.c, var_0.x, u_input.b, 0u)), ~(~vec4<u32>(49211u, 4294967295u, 4294967295u, 4294967295u))), true);
    var var_2 = !select(select(func_1(vec4<u32>(u_input.c, u_input.c, var_0.x, 0u)), !(!vec3<bool>(false, var_1.e, var_1.a.a)), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(true, true)), false, !func_2().a.a), var_1.e);
    var var_3 = ~(-u_input.a.x);
    var var_4 = Struct_3(var_1.a.b.b.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global1.x))))), var_1.a.b);
    let var_5 = ~abs(~_wgslsmith_dot_vec2_i32(-vec2<i32>(25658i, var_4.b.c.x), var_4.b.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b.b.x, -906f) + vec2<f32>(var_1.a.b.b.x, -295f))), vec2<f32>(-184f, -640f), !select(vec2<bool>(var_2.x, true), var_2.xz, vec2<bool>(var_1.e, var_2.x)))))), reverseBits(var_4.b.c.x), _wgslsmith_div_vec2_i32(~u_input.a.yx, firstLeadingBit(_wgslsmith_mult_vec2_i32(var_1.a.b.c, -var_1.a.b.c))));
}

