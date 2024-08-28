struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
    c: f32,
    d: vec3<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12>;

var<private> global1: Struct_2 = Struct_2(-278f);

var<private> global2: bool;

var<private> global3: array<Struct_3, 6>;

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    var var_0 = vec2<u32>(_wgslsmith_mod_u32(~(~arg_0.x), ~abs(u_input.a.x ^ arg_1.b)), ~7469u);
    var var_1 = vec2<u32>(~firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, arg_0.x)), max(countOneBits(4294967295u), reverseBits(_wgslsmith_clamp_u32(u_input.a.x, var_0.x, arg_0.x << (var_0.x % 32u)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.x, 639f, global1.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, arg_2.x, global1.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(304f, -702f, -961f) * vec3<f32>(arg_2.x, -384f, global1.a)))))));
    let var_3 = arg_1;
    return arg_2.x <= -550f;
}

fn func_2() -> vec2<bool> {
    global2 = global4.x;
    global2 = all(select(vec4<bool>(any(select(vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(true, true, global4.x))), func_3(min(u_input.a.wyx, vec3<u32>(6218u, 11509u, u_input.a.x)), Struct_1(u_input.a, u_input.a.x, global4.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1250f))), select(global4.x, true, true), false), select(vec4<bool>(true, global1.a != -694f, !global4.x, !global4.x), !(!vec4<bool>(global4.x, false, global4.x, true)), false), select(!vec4<bool>(global4.x, global4.x, global4.x, true), !select(vec4<bool>(false, global4.x, false, global4.x), vec4<bool>(global4.x, false, global4.x, global4.x), vec4<bool>(global4.x, true, true, global4.x)), global4.x)));
    let var_0 = 308f;
    return vec2<bool>(false, true);
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> Struct_5 {
    global1 = Struct_2(_wgslsmith_f_op_f32(-756f - -2155f));
    return Struct_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a)) - _wgslsmith_f_op_f32(-global1.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.x, -1927f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(769f, global1.a)), global4.x)), arg_0.zy, select(func_2(), vec2<bool>(false, false), select(vec2<bool>(false, global4.x), vec2<bool>(false, global4.x), global4.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, arg_0.x) * arg_0.yy))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), select(vec3<bool>(global4.x, !global4.x, false), vec3<bool>(true, true, global4.x), u_input.a.x != u_input.a.x), global3[_wgslsmith_index_u32(~abs(_wgslsmith_sub_u32(1u, 1u)), 6u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.a >= _wgslsmith_f_op_f32(min(-518f, -290f));
    var var_0 = -438f;
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-336f, 273f, -589f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(694f, global1.a, -502f))))))), -(_wgslsmith_sub_i32(firstLeadingBit(u_input.b), i32(-1i) * -1i) ^ u_input.b));
    var var_2 = u_input.c;
    var var_3 = ~(_wgslsmith_clamp_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.a.xw, vec2<u32>(4294967295u, u_input.a.x)), u_input.a.zw, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.ww, u_input.a.xz), vec2<u32>(33762u, u_input.a.x) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))) | ~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.yx, vec2<u32>(4294967295u, 1u)), min(u_input.a.ww, vec2<u32>(u_input.a.x, 81729u))));
    let var_4 = vec4<bool>(!(!(1f <= _wgslsmith_f_op_f32(sign(-1649f)))), var_1.e.a, _wgslsmith_sub_u32(_wgslsmith_mult_u32(63571u, u_input.a.x), u_input.a.x) >= reverseBits(u_input.a.x), var_1.d.x);
    var_2 = min(-u_input.b << (~_wgslsmith_clamp_u32(abs(u_input.a.x), firstLeadingBit(0u), abs(55467u)) % 32u), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(-abs(u_input.c), u_input.b), -1i & (u_input.b << (u_input.a.x % 32u)), _wgslsmith_add_i32(_wgslsmith_div_i32(0i, 2147483647i), -u_input.b) ^ firstLeadingBit(firstTrailingBit(u_input.b)), select(countOneBits(~(-36334i)), u_input.c, !var_1.e.a)));
}

