struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1078f, 1349f, 753f);

var<private> global1: i32 = 1i;

var<private> global2: Struct_1;

var<private> global3: array<Struct_3, 16>;

var<private> global4: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: bool) -> u32 {
    return 1u;
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_2(select(vec2<bool>(true | any(vec4<bool>(global2.c, false, global2.c, global2.c)), global2.c), select(select(select(vec2<bool>(false, global2.c), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, global2.c), vec2<bool>(false, global2.c), vec2<bool>(global2.c, global2.c)), global2.c), select(!vec2<bool>(false, global2.c), select(vec2<bool>(true, true), vec2<bool>(global2.c, global2.c), vec2<bool>(true, true)), 2147483647i >= u_input.a.x), true), select(!select(vec2<bool>(global2.c, global2.c), vec2<bool>(global2.c, global2.c), vec2<bool>(false, global2.c)), select(!vec2<bool>(global2.c, true), select(vec2<bool>(global2.c, global2.c), vec2<bool>(false, global2.c), vec2<bool>(false, true)), vec2<bool>(false, global2.c)), vec2<bool>(true, select(false, global2.c, global2.c)))), global2.b, vec3<bool>(true, !all(vec2<bool>(global2.c, global2.c)) & select(!global2.c, any(vec2<bool>(global2.c, true)), global2.c), true), _wgslsmith_f_op_f32(global0.x - -799f), Struct_1(global2.a, 1u, u_input.b.x <= ~(20473u | global2.b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1000f, var_0.e.a)), _wgslsmith_f_op_f32(843f + -274f), _wgslsmith_f_op_f32(-1955f - global0.x), global2.a)))));
    global2 = Struct_1(_wgslsmith_f_op_f32(sign(var_0.e.a)), ~global2.b, true);
    var_0 = Struct_2(vec2<bool>(!all(select(var_0.c, var_0.c, var_0.c.x)), true), 1u, !(!(!var_0.c)), 1848f, var_0.e);
    let var_2 = vec3<bool>(true, any(vec2<bool>(true, all(vec2<bool>(false, global2.c)))), var_0.c.x);
    return vec4<i32>(-u_input.a.x, abs(_wgslsmith_sub_i32(4153i, -23328i)), (max(u_input.a.x, firstTrailingBit(65822i)) | u_input.a.x) ^ -max(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 15565i, u_input.a.x))), -firstTrailingBit(~u_input.a.x ^ countOneBits(u_input.a.x)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = countOneBits(vec4<i32>(select(u_input.a.x, -firstLeadingBit(u_input.a.x), global2.c), u_input.a.x, 1i, i32(-1i) * -u_input.a.x));
    var_0 = _wgslsmith_sub_vec4_i32(func_3(), vec4<i32>(_wgslsmith_mod_i32(reverseBits(_wgslsmith_sub_i32(1i, u_input.a.x)), 21596i << (_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, arg_0, global2.b, 44524u), vec4<u32>(43998u, global2.b, 4294967295u, arg_0)) % 32u)), -var_0.x, abs(var_0.x) << (~1u % 32u), func_3().x));
    let var_1 = Struct_3(Struct_1(-1945f, arg_0, !all(!vec4<bool>(true, global2.c, false, global2.c))), _wgslsmith_f_op_f32(-global2.a), !(!(!select(vec3<bool>(false, global2.c, false), vec3<bool>(global2.c, global2.c, false), global2.c))), true);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1024f, global0.x, 488f) + vec3<f32>(global2.a, -562f, global2.a)) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.a, 1501f, var_1.a.a), vec3<f32>(var_1.b, var_1.a.a, -888f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a, 2099f, 3952f), vec3<f32>(global0.x, global2.a, global0.x), false))))), vec3<f32>(913f, _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(var_1.b + -395f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * 2341f)), var_1.c)));
    var var_2 = vec4<u32>(0u, 46422u, select(u_input.b.x & arg_0, _wgslsmith_mult_u32(u_input.b.x | var_1.a.b, 1u), all(!vec2<bool>(var_1.a.c, true))), ~4294967295u << (~_wgslsmith_mod_u32(firstLeadingBit(var_1.a.b), 1u) % 32u));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a.x;
    let var_0 = (4294967295u & min(1u & u_input.b.x, u_input.b.x ^ u_input.b.x)) & global2.b;
    global2 = func_2(_wgslsmith_div_u32(func_1(Struct_2(vec2<bool>(global2.c, true), ~0u, !vec3<bool>(global2.c, false, global2.c), _wgslsmith_f_op_f32(-global0.x), Struct_1(global2.a, u_input.b.x, false)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * -1592f), global2.c | any(vec4<bool>(false, true, global2.c, global2.c))), ~countOneBits(1u)));
    var var_1 = Struct_2(vec2<bool>(global2.c, 20297u < _wgslsmith_mod_u32(var_0, global2.b)), _wgslsmith_mod_u32(~max(~0u, 42201u), _wgslsmith_clamp_u32(~global2.b, ~_wgslsmith_mod_u32(4294967295u, u_input.b.x), global2.b)), !(!(!select(vec3<bool>(false, false, global2.c), vec3<bool>(global2.c, false, true), false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 799f, false)))), global0.x)), func_2(firstLeadingBit(~4294967295u << (max(1u, u_input.b.x) % 32u))));
    let var_2 = func_3().yzz;
    let var_3 = reverseBits(max(max(vec4<i32>(~(-2147483647i), u_input.a.x, 0i, ~u_input.a.x), vec4<i32>(firstLeadingBit(var_2.x), -5519i, 0i, _wgslsmith_mod_i32(-13699i, u_input.a.x))), ((vec4<i32>(u_input.a.x, 3540i, 0i, 20168i) << (vec4<u32>(var_1.b, var_0, global2.b, var_1.e.b) % vec4<u32>(32u))) >> (~vec4<u32>(4294967295u, var_1.b, global2.b, 4294967295u) % vec4<u32>(32u))) | -vec4<i32>(u_input.a.x, var_2.x, var_2.x, -2147483647i)));
    let var_4 = select(var_1.c, vec3<bool>(var_1.c.x, !var_1.c.x, true), vec3<bool>(all(select(!vec2<bool>(var_1.e.c, false), !vec2<bool>(global2.c, false), global2.c || var_1.a.x)), !any(!vec2<bool>(var_1.e.c, global2.c)), var_1.a.x));
    var var_5 = u_input.a.x;
    var var_6 = global3[_wgslsmith_index_u32(1u, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wzy, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(132f)), 152f, global0.x, -2272f))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, var_6.b, _wgslsmith_f_op_f32(-var_6.a.a), _wgslsmith_f_op_f32(-var_6.b)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_6.b, var_1.d, -694f, -339f), vec4<f32>(-180f, global2.a, var_1.d, 432f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-821f, var_1.e.a, -789f, var_6.b))))), true)), u_input.b.yw, ~(~vec2<u32>(global2.b, 4294967295u)));
}

