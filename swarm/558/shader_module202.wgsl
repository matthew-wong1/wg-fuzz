struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<i32>,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: vec3<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global1: bool = false;

var<private> global2: Struct_4;

var<private> global3: array<Struct_2, 4>;

var<private> global4: vec2<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5) -> u32 {
    let var_0 = Struct_2(global4.x, ~((firstTrailingBit(global4.x) & (41272u << (u_input.b % 32u))) >> (30007u % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c.c))), ~4294967295u);
    var var_1 = var_0;
    var var_2 = vec3<u32>(_wgslsmith_mult_u32(u_input.d, ~var_1.a), ~93885u, 1u);
    global0 = array<vec2<bool>, 3>();
    var var_3 = 3370u;
    return u_input.d;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(func_3(Struct_4(global2.a, 2173f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global2.a.e.x))))), Struct_5(all(global0[_wgslsmith_index_u32(0u ^ u_input.b, 3u)]) == false, select(select(select(global2.a.d.wwy, vec3<bool>(false, true, global2.a.d.x), vec3<bool>(global2.a.d.x, false, false)), !global2.a.d.xwy, !global2.a.d.xzy), global2.a.d.wxx, !global2.a.d.yxx), Struct_4(Struct_1(global2.a.a, false, ~vec3<i32>(global2.a.c.x, -29507i, 2082i), global2.a.d, _wgslsmith_f_op_vec3_f32(trunc(global2.a.a))), global2.a.e.x, _wgslsmith_f_op_f32(-global2.b)))), 4u)];
    global1 = true && any(!global2.a.d);
    let var_1 = select(~select(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 1u), vec2<u32>(global4.x, global4.x)), vec2<u32>(3069u, arg_0), !(!global2.a.d.x)), vec2<u32>(0u, 49014u) ^ select(~vec2<u32>(global4.x, 35082u), vec2<u32>(abs(37311u), ~var_0.b), !(u_input.c.x >= global2.a.c.x)), true);
    let var_2 = false;
    var var_3 = global2.a.c.xz;
    return _wgslsmith_div_u32(39838u, 13836u);
}

fn func_1() -> u32 {
    global4 = vec2<u32>(abs(func_2(reverseBits(global4.x))), u_input.b);
    global1 = global2.a.d.x;
    let var_0 = select(!select(!global2.a.d.xwz, global2.a.d.zwy, true), !(!vec3<bool>(true, true, 1902f != global2.a.e.x)), select(global2.a.d.yzy, vec3<bool>(all(vec3<bool>(global2.a.b, global2.a.b, true)), false, _wgslsmith_f_op_f32(step(1000f, 1000f)) <= -1154f), select(vec3<bool>(true, true | global2.a.d.x, true), select(global2.a.d.zyw, select(vec3<bool>(true, global2.a.d.x, global2.a.b), vec3<bool>(global2.a.b, true, false), global2.a.d.x), select(vec3<bool>(global2.a.b, global2.a.b, global2.a.d.x), vec3<bool>(true, true, global2.a.d.x), false)), !global2.a.d.yzz)));
    var var_1 = _wgslsmith_f_op_f32(round(-305f));
    let var_2 = any(select(vec4<bool>(any(vec2<bool>(false, global2.a.b)), !any(global2.a.d.yx), !(global2.a.e.x > global2.a.e.x), var_0.x), !global2.a.d, select(!var_0.x, global2.a.b, !(global4.x <= u_input.d))));
    return ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global4.x, 4294967295u), vec2<u32>(4294967295u, u_input.b), vec2<u32>(global4.x, global4.x)), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(10033u, global4.x)), countOneBits(vec2<u32>(global4.x, u_input.d)))), (34265u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 72291u, u_input.d), vec3<u32>(global4.x, 1u, global4.x)) % 32u)) | firstTrailingBit(u_input.d), (u_input.d >> (global4.x % 32u)) >> (~countOneBits(u_input.d) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-802f * _wgslsmith_div_f32(global2.a.a.x, 714f)) * _wgslsmith_f_op_f32(-global2.c))), 202f);
    let var_1 = -firstLeadingBit(i32(-1i) * -1i);
    var var_2 = (max(~(~global4.x), ~26331u) | u_input.d) > ~_wgslsmith_div_u32(1u, func_1());
    let var_3 = 1i;
    var_0 = Struct_4(var_0.a, var_0.a.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.e.x))));
    let var_4 = Struct_5(false, vec3<bool>(any(!vec2<bool>(true, var_0.a.d.x)), var_0.a.d.x, false), Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.c, global2.b, global2.a.a.x), vec3<f32>(global2.b, var_0.b, global2.c), var_0.a.d.xxy)) + _wgslsmith_f_op_vec3_f32(min(var_0.a.e, vec3<f32>(-148f, 957f, 691f)))), true, vec3<i32>(-58743i, _wgslsmith_div_i32(40594i, -2147483647i), var_1), vec4<bool>(true, true, false, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1775f, 583f, var_0.a.a.x))))), global2.c, _wgslsmith_f_op_f32(global2.a.e.x * 1251f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-860f)));
}

