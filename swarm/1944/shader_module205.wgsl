struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 583f;

var<private> global1: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(20669u, 0u), vec2<u32>(17070u, 60567u), vec2<u32>(0u, 0u), vec2<u32>(0u, 22923u), vec2<u32>(4294967295u, 6100u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(803u, 50230u), vec2<u32>(1u, 52590u), vec2<u32>(13569u, 13129u));

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-10231i, -24284i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_5) -> i32 {
    var var_0 = global2.a;
    global2 = Struct_1(u_input.a.yw);
    var var_1 = -select(u_input.c.zzx, -vec3<i32>(arg_1.a, max(-2147483647i, 3062i), i32(-1i) * -45015i), arg_1.c.x);
    var var_2 = 2147483647i;
    global1 = array<vec2<u32>, 10>();
    return -(_wgslsmith_add_i32(_wgslsmith_div_i32(var_1.x << (36727u % 32u), -25626i), countOneBits(reverseBits(global2.a.x))) << (u_input.b % 32u));
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    let var_0 = u_input.a;
    global2 = Struct_1(var_0.yx);
    let var_1 = Struct_3(arg_0.c.a, vec2<i32>(_wgslsmith_clamp_i32(global2.a.x ^ -18622i, arg_2.a.x, func_3(true, Struct_5(var_0.x, vec4<f32>(-934f, 935f, arg_3.x, arg_3.x), vec2<bool>(arg_0.c.a, true)))) ^ 2147483647i, -_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(-42216i, arg_0.c.b.x)) & firstTrailingBit(global2.a.x)));
    let var_2 = -(~func_3(all(select(vec3<bool>(false, true, true), vec3<bool>(true, arg_0.c.a, false), vec3<bool>(true, true, var_1.a))), Struct_5(countOneBits(-23974i), vec4<f32>(1746f, -510f, -1000f, -639f), select(vec2<bool>(true, true), vec2<bool>(var_1.a, arg_0.c.a), var_1.a))));
    var var_3 = Struct_5(firstTrailingBit(-_wgslsmith_sub_i32(reverseBits(u_input.c.x), countOneBits(u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.x, arg_3.x, false)) * arg_3.x) + _wgslsmith_f_op_f32(max(-1131f, _wgslsmith_f_op_f32(-arg_3.x)))), _wgslsmith_f_op_f32(-1847f + -562f), 235f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1080f - arg_3.x), 506f))), select(select(select(!vec2<bool>(var_1.a, false), !vec2<bool>(var_1.a, arg_0.c.a), !vec2<bool>(arg_0.c.a, arg_0.c.a)), select(select(vec2<bool>(var_1.a, false), vec2<bool>(false, var_1.a), vec2<bool>(arg_0.c.a, var_1.a)), vec2<bool>(arg_0.c.a, false), arg_0.c.a | false), !(arg_3.x == -825f)), !select(vec2<bool>(var_1.a, false), vec2<bool>(true, true), arg_0.c.a), select(vec2<bool>(true, true), vec2<bool>(true, true), 0u <= abs(arg_1))));
    return _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(~(-vec2<i32>(var_2, 19633i)), _wgslsmith_mult_vec2_i32(~arg_2.a, -arg_0.c.b)), 4512i);
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_5(global2.a.x << ((49203u & u_input.b) % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1593f, 1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(-1514f * arg_1.x))), arg_1.x)), !vec2<bool>(-1337f > _wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(22102u, 0u, u_input.b)) > ~67838u));
    var var_1 = arg_1;
    global1 = array<vec2<u32>, 10>();
    var var_2 = ~(u_input.b | 4294967295u);
    var_2 = _wgslsmith_add_u32(155109u, abs(u_input.b));
    return Struct_1(~vec2<i32>(1i, -1i));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> Struct_1 {
    return func_4(any(!vec4<bool>(true, any(vec3<bool>(false, false, true)), false, all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1509f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(376f))), 427f), !all(vec4<bool>(true, true, true, true)))), vec4<i32>(abs(func_2(Struct_4(vec2<u32>(arg_1, 4294967295u), global1[_wgslsmith_index_u32(0u, 10u)], Struct_3(true, arg_0.xy)), _wgslsmith_div_u32(28537u, 36844u), Struct_1(u_input.a.yw), vec2<f32>(492f, -497f))), global2.a.x >> (min(~51375u, 0u) % 32u), ~(i32(-1i) * -14897i), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<i32>(countOneBits(~global2.a.x), _wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 14557i, 2457i, 1i), u_input.a) & firstTrailingBit(u_input.a)), -2147483647i), 55566u);
    let var_1 = Struct_3(_wgslsmith_dot_vec3_i32(u_input.c.xyx, ~u_input.a.xyz) <= firstTrailingBit(~(-14061i)), ~max(u_input.c.yx, -u_input.a.xz));
    global1 = array<vec2<u32>, 10>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(961f - -222f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-2101f, -512f, var_1.a)), _wgslsmith_f_op_f32(abs(808f)), var_1.a))))));
    let var_3 = !var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, -_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, global2.a.x, 4629i), vec3<i32>(-1i) * -vec3<i32>(-1i, 0i, global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(389f - -831f)), _wgslsmith_mod_i32(var_0.a.x, -1i));
}

